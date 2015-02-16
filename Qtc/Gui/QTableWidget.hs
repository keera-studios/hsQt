{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTableWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTableWidget (
  QqTableWidget(..)
  ,cellWidget
  ,clearContents
  ,removeCellWidget
  ,selectedRanges
  ,setCellWidget
  ,setCurrentCell
  ,setRangeSelected
  ,visualColumn
  ,visualRow
  ,qTableWidget_delete
  ,qTableWidget_deleteLater
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

instance QuserMethod (QTableWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTableWidget_userMethod" qtc_QTableWidget_userMethod :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QuserMethod (QTableWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTableWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTableWidget_userMethodVariant" qtc_QTableWidget_userMethodVariant :: Ptr (TQTableWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTableWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTableWidget x1 where
  qTableWidget :: x1 -> IO (QTableWidget ())

instance QqTableWidget (()) where
 qTableWidget ()
  = withQTableWidgetResult $
    qtc_QTableWidget

foreign import ccall "qtc_QTableWidget" qtc_QTableWidget :: IO (Ptr (TQTableWidget ()))

instance QqTableWidget ((QWidget t1)) where
 qTableWidget (x1)
  = withQTableWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget1 cobj_x1

foreign import ccall "qtc_QTableWidget1" qtc_QTableWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTableWidget ()))

instance QqTableWidget ((Int, Int)) where
 qTableWidget (x1, x2)
  = withQTableWidgetResult $
    qtc_QTableWidget2 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget2" qtc_QTableWidget2 :: CInt -> CInt -> IO (Ptr (TQTableWidget ()))

instance QqTableWidget ((Int, Int, QWidget t3)) where
 qTableWidget (x1, x2, x3)
  = withQTableWidgetResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget3 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QTableWidget3" qtc_QTableWidget3 :: CInt -> CInt -> Ptr (TQWidget t3) -> IO (Ptr (TQTableWidget ()))

cellWidget :: QTableWidget a -> ((Int, Int)) -> IO (QWidget ())
cellWidget x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_cellWidget cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_cellWidget" qtc_QTableWidget_cellWidget :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQWidget ()))

instance Qclear (QTableWidget a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_clear cobj_x0

foreign import ccall "qtc_QTableWidget_clear" qtc_QTableWidget_clear :: Ptr (TQTableWidget a) -> IO ()

clearContents :: QTableWidget a -> (()) -> IO ()
clearContents x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_clearContents cobj_x0

foreign import ccall "qtc_QTableWidget_clearContents" qtc_QTableWidget_clearContents :: Ptr (TQTableWidget a) -> IO ()

instance QclosePersistentEditor (QTableWidget a) ((QTableWidgetItem t1)) where
 closePersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_closePersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_closePersistentEditor" qtc_QTableWidget_closePersistentEditor :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

instance Qcolumn (QTableWidget a) ((QTableWidgetItem t1)) where
 column x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_column cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_column" qtc_QTableWidget_column :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO CInt

instance QcolumnCount (QTableWidget a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnCount cobj_x0

foreign import ccall "qtc_QTableWidget_columnCount" qtc_QTableWidget_columnCount :: Ptr (TQTableWidget a) -> IO CInt

instance QcurrentColumn (QTableWidget a) (()) where
 currentColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_currentColumn cobj_x0

foreign import ccall "qtc_QTableWidget_currentColumn" qtc_QTableWidget_currentColumn :: Ptr (TQTableWidget a) -> IO CInt

instance QcurrentItem (QTableWidget a) (()) (IO (QTableWidgetItem ())) where
 currentItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_currentItem cobj_x0

foreign import ccall "qtc_QTableWidget_currentItem" qtc_QTableWidget_currentItem :: Ptr (TQTableWidget a) -> IO (Ptr (TQTableWidgetItem ()))

instance QcurrentRow (QTableWidget a) (()) where
 currentRow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_currentRow cobj_x0

foreign import ccall "qtc_QTableWidget_currentRow" qtc_QTableWidget_currentRow :: Ptr (TQTableWidget a) -> IO CInt

instance QdropEvent (QTableWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_dropEvent_h" qtc_QTableWidget_dropEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTableWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dropEvent_h cobj_x0 cobj_x1

instance QdropMimeData (QTableWidget ()) ((Int, Int, QMimeData t3, DropAction)) where
 dropMimeData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_dropMimeData cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QTableWidget_dropMimeData" qtc_QTableWidget_dropMimeData :: Ptr (TQTableWidget a) -> CInt -> CInt -> Ptr (TQMimeData t3) -> CLong -> IO CBool

instance QdropMimeData (QTableWidgetSc a) ((Int, Int, QMimeData t3, DropAction)) where
 dropMimeData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_dropMimeData cobj_x0 (toCInt x1) (toCInt x2) cobj_x3 (toCLong $ qEnum_toInt x4)

instance QeditItem (QTableWidget a) ((QTableWidgetItem t1)) where
 editItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_editItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_editItem" qtc_QTableWidget_editItem :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

instance Qevent (QTableWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_event_h" qtc_QTableWidget_event_h :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTableWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_event_h cobj_x0 cobj_x1

instance QfindItems (QTableWidget a) ((String, MatchFlags)) (IO ([QTableWidgetItem ()])) where
 findItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_findItems cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QTableWidget_findItems" qtc_QTableWidget_findItems :: Ptr (TQTableWidget a) -> CWString -> CLong -> Ptr (Ptr (TQTableWidgetItem ())) -> IO CInt

instance QhorizontalHeaderItem (QTableWidget a) ((Int)) (IO (QTableWidgetItem ())) where
 horizontalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_horizontalHeaderItem" qtc_QTableWidget_horizontalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QindexFromItem (QTableWidget ()) ((QTableWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_indexFromItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_indexFromItem" qtc_QTableWidget_indexFromItem :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO (Ptr (TQModelIndex ()))

instance QindexFromItem (QTableWidgetSc a) ((QTableWidgetItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_indexFromItem cobj_x0 cobj_x1

instance QinsertColumn (QTableWidget ()) ((Int)) (IO ()) where
 insertColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_insertColumn" qtc_QTableWidget_insertColumn :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QinsertColumn (QTableWidgetSc a) ((Int)) (IO ()) where
 insertColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_insertColumn cobj_x0 (toCInt x1)

instance QinsertRow (QTableWidget ()) ((Int)) (IO ()) where
 insertRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_insertRow" qtc_QTableWidget_insertRow :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QinsertRow (QTableWidgetSc a) ((Int)) (IO ()) where
 insertRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_insertRow cobj_x0 (toCInt x1)

instance QisItemSelected (QTableWidget a) ((QTableWidgetItem t1)) where
 isItemSelected x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_isItemSelected cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_isItemSelected" qtc_QTableWidget_isItemSelected :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO CBool

instance QisSortingEnabled (QTableWidget ()) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_isSortingEnabled cobj_x0

foreign import ccall "qtc_QTableWidget_isSortingEnabled" qtc_QTableWidget_isSortingEnabled :: Ptr (TQTableWidget a) -> IO CBool

instance QisSortingEnabled (QTableWidgetSc a) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_isSortingEnabled cobj_x0

instance Qitem (QTableWidget a) ((Int, Int)) (IO (QTableWidgetItem ())) where
 item x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_item cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_item" qtc_QTableWidget_item :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QitemAt (QTableWidget a) ((Int, Int)) (IO (QTableWidgetItem ())) where
 itemAt x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_itemAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_itemAt1" qtc_QTableWidget_itemAt1 :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QitemAt (QTableWidget a) ((Point)) (IO (QTableWidgetItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableWidget_itemAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableWidget_itemAt_qth" qtc_QTableWidget_itemAt_qth :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QqitemAt (QTableWidget a) ((QPoint t1)) (IO (QTableWidgetItem ())) where
 qitemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_itemAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_itemAt" qtc_QTableWidget_itemAt :: Ptr (TQTableWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQTableWidgetItem ()))

instance QitemFromIndex (QTableWidget ()) ((QModelIndex t1)) (IO (QTableWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_itemFromIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_itemFromIndex" qtc_QTableWidget_itemFromIndex :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQTableWidgetItem ()))

instance QitemFromIndex (QTableWidgetSc a) ((QModelIndex t1)) (IO (QTableWidgetItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_itemFromIndex cobj_x0 cobj_x1

instance QitemPrototype (QTableWidget a) (()) (IO (QTableWidgetItem ())) where
 itemPrototype x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_itemPrototype cobj_x0

foreign import ccall "qtc_QTableWidget_itemPrototype" qtc_QTableWidget_itemPrototype :: Ptr (TQTableWidget a) -> IO (Ptr (TQTableWidgetItem ()))

instance Qitems (QTableWidget ()) ((QMimeData t1)) (IO ([QTableWidgetItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_items cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QTableWidget_items" qtc_QTableWidget_items :: Ptr (TQTableWidget a) -> Ptr (TQMimeData t1) -> Ptr (Ptr (TQTableWidgetItem ())) -> IO CInt

instance Qitems (QTableWidgetSc a) ((QMimeData t1)) (IO ([QTableWidgetItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_items cobj_x0 cobj_x1 arr

instance QopenPersistentEditor (QTableWidget a) ((QTableWidgetItem t1)) where
 openPersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_openPersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_openPersistentEditor" qtc_QTableWidget_openPersistentEditor :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

removeCellWidget :: QTableWidget a -> ((Int, Int)) -> IO ()
removeCellWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_removeCellWidget cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_removeCellWidget" qtc_QTableWidget_removeCellWidget :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QremoveColumn (QTableWidget a) ((Int)) (IO ()) where
 removeColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_removeColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_removeColumn" qtc_QTableWidget_removeColumn :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QremoveRow (QTableWidget a) ((Int)) (IO ()) where
 removeRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_removeRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_removeRow" qtc_QTableWidget_removeRow :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance Qrow (QTableWidget a) ((QTableWidgetItem t1)) where
 row x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_row cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_row" qtc_QTableWidget_row :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO CInt

instance QrowCount (QTableWidget a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowCount cobj_x0

foreign import ccall "qtc_QTableWidget_rowCount" qtc_QTableWidget_rowCount :: Ptr (TQTableWidget a) -> IO CInt

instance QscrollToItem (QTableWidget a) ((QTableWidgetItem t1)) where
 scrollToItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_scrollToItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_scrollToItem" qtc_QTableWidget_scrollToItem :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

instance QscrollToItem (QTableWidget a) ((QTableWidgetItem t1, ScrollHint)) where
 scrollToItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_scrollToItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableWidget_scrollToItem1" qtc_QTableWidget_scrollToItem1 :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> CLong -> IO ()

instance QselectedItems (QTableWidget a) (()) (IO ([QTableWidgetItem ()])) where
 selectedItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectedItems cobj_x0 arr

foreign import ccall "qtc_QTableWidget_selectedItems" qtc_QTableWidget_selectedItems :: Ptr (TQTableWidget a) -> Ptr (Ptr (TQTableWidgetItem ())) -> IO CInt

selectedRanges :: QTableWidget a -> (()) -> IO ([QTableWidgetSelectionRange ()])
selectedRanges x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectedRanges cobj_x0 arr

foreign import ccall "qtc_QTableWidget_selectedRanges" qtc_QTableWidget_selectedRanges :: Ptr (TQTableWidget a) -> Ptr (Ptr (TQTableWidgetSelectionRange ())) -> IO CInt

setCellWidget :: QTableWidget a -> ((Int, Int, QWidget t3)) -> IO ()
setCellWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_setCellWidget cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QTableWidget_setCellWidget" qtc_QTableWidget_setCellWidget :: Ptr (TQTableWidget a) -> CInt -> CInt -> Ptr (TQWidget t3) -> IO ()

instance QsetColumnCount (QTableWidget a) ((Int)) where
 setColumnCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setColumnCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_setColumnCount" qtc_QTableWidget_setColumnCount :: Ptr (TQTableWidget a) -> CInt -> IO ()

setCurrentCell :: QTableWidget a -> ((Int, Int)) -> IO ()
setCurrentCell x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setCurrentCell cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_setCurrentCell" qtc_QTableWidget_setCurrentCell :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QsetCurrentItem (QTableWidget a) ((QTableWidgetItem t1)) where
 setCurrentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setCurrentItem cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setCurrentItem" qtc_QTableWidget_setCurrentItem :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

instance QsetHorizontalHeaderItem (QTableWidget a) ((Int, QTableWidgetItem t2)) where
 setHorizontalHeaderItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_setHorizontalHeaderItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTableWidget_setHorizontalHeaderItem" qtc_QTableWidget_setHorizontalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> Ptr (TQTableWidgetItem t2) -> IO ()

instance QsetHorizontalHeaderLabels (QTableWidget a) (([String])) where
 setHorizontalHeaderLabels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTableWidget_setHorizontalHeaderLabels cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTableWidget_setHorizontalHeaderLabels" qtc_QTableWidget_setHorizontalHeaderLabels :: Ptr (TQTableWidget a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetItem (QTableWidget a) ((Int, Int, QTableWidgetItem t3)) where
 setItem x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_setItem cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QTableWidget_setItem" qtc_QTableWidget_setItem :: Ptr (TQTableWidget a) -> CInt -> CInt -> Ptr (TQTableWidgetItem t3) -> IO ()

instance QsetItemPrototype (QTableWidget a) ((QTableWidgetItem t1)) where
 setItemPrototype x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setItemPrototype cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setItemPrototype" qtc_QTableWidget_setItemPrototype :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO ()

instance QsetItemSelected (QTableWidget a) ((QTableWidgetItem t1, Bool)) where
 setItemSelected x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setItemSelected cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTableWidget_setItemSelected" qtc_QTableWidget_setItemSelected :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> CBool -> IO ()

setRangeSelected :: QTableWidget a -> ((QTableWidgetSelectionRange t1, Bool)) -> IO ()
setRangeSelected x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setRangeSelected cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTableWidget_setRangeSelected" qtc_QTableWidget_setRangeSelected :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetSelectionRange t1) -> CBool -> IO ()

instance QsetRowCount (QTableWidget a) ((Int)) where
 setRowCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setRowCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_setRowCount" qtc_QTableWidget_setRowCount :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QsetSortingEnabled (QTableWidget ()) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setSortingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_setSortingEnabled" qtc_QTableWidget_setSortingEnabled :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance QsetSortingEnabled (QTableWidgetSc a) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setSortingEnabled cobj_x0 (toCBool x1)

instance QsetVerticalHeaderItem (QTableWidget a) ((Int, QTableWidgetItem t2)) where
 setVerticalHeaderItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_setVerticalHeaderItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTableWidget_setVerticalHeaderItem" qtc_QTableWidget_setVerticalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> Ptr (TQTableWidgetItem t2) -> IO ()

instance QsetVerticalHeaderLabels (QTableWidget a) (([String])) where
 setVerticalHeaderLabels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTableWidget_setVerticalHeaderLabels cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTableWidget_setVerticalHeaderLabels" qtc_QTableWidget_setVerticalHeaderLabels :: Ptr (TQTableWidget a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsortItems (QTableWidget a) ((Int)) where
 sortItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sortItems cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_sortItems" qtc_QTableWidget_sortItems :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QsortItems (QTableWidget a) ((Int, SortOrder)) where
 sortItems x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sortItems1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableWidget_sortItems1" qtc_QTableWidget_sortItems1 :: Ptr (TQTableWidget a) -> CInt -> CLong -> IO ()

instance QsupportedDropActions (QTableWidget ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_supportedDropActions cobj_x0

foreign import ccall "qtc_QTableWidget_supportedDropActions" qtc_QTableWidget_supportedDropActions :: Ptr (TQTableWidget a) -> IO CLong

instance QsupportedDropActions (QTableWidgetSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_supportedDropActions cobj_x0

instance QtakeHorizontalHeaderItem (QTableWidget a) ((Int)) (IO (QTableWidgetItem ())) where
 takeHorizontalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_takeHorizontalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_takeHorizontalHeaderItem" qtc_QTableWidget_takeHorizontalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QtakeItem (QTableWidget a) ((Int, Int)) (IO (QTableWidgetItem ())) where
 takeItem x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_takeItem cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_takeItem" qtc_QTableWidget_takeItem :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QtakeVerticalHeaderItem (QTableWidget a) ((Int)) (IO (QTableWidgetItem ())) where
 takeVerticalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_takeVerticalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_takeVerticalHeaderItem" qtc_QTableWidget_takeVerticalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QverticalHeaderItem (QTableWidget a) ((Int)) (IO (QTableWidgetItem ())) where
 verticalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_verticalHeaderItem" qtc_QTableWidget_verticalHeaderItem :: Ptr (TQTableWidget a) -> CInt -> IO (Ptr (TQTableWidgetItem ()))

visualColumn :: QTableWidget a -> ((Int)) -> IO (Int)
visualColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_visualColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_visualColumn" qtc_QTableWidget_visualColumn :: Ptr (TQTableWidget a) -> CInt -> IO CInt

instance QqvisualItemRect (QTableWidget a) ((QTableWidgetItem t1)) where
 qvisualItemRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualItemRect cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_visualItemRect" qtc_QTableWidget_visualItemRect :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> IO (Ptr (TQRect ()))

instance QvisualItemRect (QTableWidget a) ((QTableWidgetItem t1)) where
 visualItemRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualItemRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTableWidget_visualItemRect_qth" qtc_QTableWidget_visualItemRect_qth :: Ptr (TQTableWidget a) -> Ptr (TQTableWidgetItem t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

visualRow :: QTableWidget a -> ((Int)) -> IO (Int)
visualRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_visualRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_visualRow" qtc_QTableWidget_visualRow :: Ptr (TQTableWidget a) -> CInt -> IO CInt

qTableWidget_delete :: QTableWidget a -> IO ()
qTableWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_delete cobj_x0

foreign import ccall "qtc_QTableWidget_delete" qtc_QTableWidget_delete :: Ptr (TQTableWidget a) -> IO ()

qTableWidget_deleteLater :: QTableWidget a -> IO ()
qTableWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_deleteLater cobj_x0

foreign import ccall "qtc_QTableWidget_deleteLater" qtc_QTableWidget_deleteLater :: Ptr (TQTableWidget a) -> IO ()

instance QcolumnCountChanged (QTableWidget ()) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_columnCountChanged" qtc_QTableWidget_columnCountChanged :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QcolumnCountChanged (QTableWidgetSc a) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QcolumnMoved (QTableWidget ()) ((Int, Int, Int)) where
 columnMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_columnMoved" qtc_QTableWidget_columnMoved :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnMoved (QTableWidgetSc a) ((Int, Int, Int)) where
 columnMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcolumnResized (QTableWidget ()) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_columnResized" qtc_QTableWidget_columnResized :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnResized (QTableWidgetSc a) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcurrentChanged (QTableWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableWidget_currentChanged" qtc_QTableWidget_currentChanged :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QTableWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QhorizontalOffset (QTableWidget ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalOffset cobj_x0

foreign import ccall "qtc_QTableWidget_horizontalOffset" qtc_QTableWidget_horizontalOffset :: Ptr (TQTableWidget a) -> IO CInt

instance QhorizontalOffset (QTableWidgetSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalOffset cobj_x0

instance QhorizontalScrollbarAction (QTableWidget ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_horizontalScrollbarAction" qtc_QTableWidget_horizontalScrollbarAction :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QTableWidgetSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QindexAt (QTableWidget ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableWidget_indexAt_qth_h" qtc_QTableWidget_indexAt_qth_h :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QTableWidgetSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableWidget_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QTableWidget ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_indexAt_h" qtc_QTableWidget_indexAt_h :: Ptr (TQTableWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QTableWidgetSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_indexAt_h cobj_x0 cobj_x1

instance QisIndexHidden (QTableWidget ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_isIndexHidden" qtc_QTableWidget_isIndexHidden :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QTableWidgetSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_isIndexHidden cobj_x0 cobj_x1

instance QmoveCursor (QTableWidget ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableWidget_moveCursor" qtc_QTableWidget_moveCursor :: Ptr (TQTableWidget a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QTableWidgetSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QTableWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_paintEvent_h" qtc_QTableWidget_paintEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTableWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_paintEvent_h cobj_x0 cobj_x1

instance QrowCountChanged (QTableWidget ()) ((Int, Int)) where
 rowCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_rowCountChanged" qtc_QTableWidget_rowCountChanged :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QrowCountChanged (QTableWidgetSc a) ((Int, Int)) where
 rowCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QrowMoved (QTableWidget ()) ((Int, Int, Int)) where
 rowMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_rowMoved" qtc_QTableWidget_rowMoved :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> IO ()

instance QrowMoved (QTableWidgetSc a) ((Int, Int, Int)) where
 rowMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QrowResized (QTableWidget ()) ((Int, Int, Int)) where
 rowResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_rowResized" qtc_QTableWidget_rowResized :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> IO ()

instance QrowResized (QTableWidgetSc a) ((Int, Int, Int)) where
 rowResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_rowResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QTableWidget ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_scrollContentsBy_h" qtc_QTableWidget_scrollContentsBy_h :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTableWidgetSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QTableWidget ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableWidget_scrollTo_h" qtc_QTableWidget_scrollTo_h :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QTableWidgetSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectedIndexes (QTableWidget ()) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QTableWidget_selectedIndexes" qtc_QTableWidget_selectedIndexes :: Ptr (TQTableWidget a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QTableWidgetSc a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectedIndexes cobj_x0 arr

instance QselectionChanged (QTableWidget ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableWidget_selectionChanged" qtc_QTableWidget_selectionChanged :: Ptr (TQTableWidget a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QTableWidgetSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QsetModel (QTableWidget ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setModel_h" qtc_QTableWidget_setModel_h :: Ptr (TQTableWidget a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QTableWidgetSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setModel_h cobj_x0 cobj_x1

instance QsetRootIndex (QTableWidget ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setRootIndex_h" qtc_QTableWidget_setRootIndex_h :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QTableWidgetSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setRootIndex_h cobj_x0 cobj_x1

instance QqsetSelection (QTableWidget ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableWidget_setSelection" qtc_QTableWidget_setSelection :: Ptr (TQTableWidget a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QTableWidgetSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QTableWidget ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableWidget_setSelection_qth" qtc_QTableWidget_setSelection_qth :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QTableWidgetSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableWidget_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel (QTableWidget ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setSelectionModel_h" qtc_QTableWidget_setSelectionModel_h :: Ptr (TQTableWidget a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QTableWidgetSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setSelectionModel_h cobj_x0 cobj_x1

instance QsizeHintForColumn (QTableWidget ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHintForColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_sizeHintForColumn" qtc_QTableWidget_sizeHintForColumn :: Ptr (TQTableWidget a) -> CInt -> IO CInt

instance QsizeHintForColumn (QTableWidgetSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHintForColumn cobj_x0 (toCInt x1)

instance QsizeHintForRow (QTableWidget ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHintForRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_sizeHintForRow" qtc_QTableWidget_sizeHintForRow :: Ptr (TQTableWidget a) -> CInt -> IO CInt

instance QsizeHintForRow (QTableWidgetSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHintForRow cobj_x0 (toCInt x1)

instance QtimerEvent (QTableWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_timerEvent" qtc_QTableWidget_timerEvent :: Ptr (TQTableWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTableWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_timerEvent cobj_x0 cobj_x1

instance QupdateGeometries (QTableWidget ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateGeometries cobj_x0

foreign import ccall "qtc_QTableWidget_updateGeometries" qtc_QTableWidget_updateGeometries :: Ptr (TQTableWidget a) -> IO ()

instance QupdateGeometries (QTableWidgetSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateGeometries cobj_x0

instance QverticalOffset (QTableWidget ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalOffset cobj_x0

foreign import ccall "qtc_QTableWidget_verticalOffset" qtc_QTableWidget_verticalOffset :: Ptr (TQTableWidget a) -> IO CInt

instance QverticalOffset (QTableWidgetSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalOffset cobj_x0

instance QverticalScrollbarAction (QTableWidget ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_verticalScrollbarAction" qtc_QTableWidget_verticalScrollbarAction :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QverticalScrollbarAction (QTableWidgetSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QviewOptions (QTableWidget ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_viewOptions cobj_x0

foreign import ccall "qtc_QTableWidget_viewOptions" qtc_QTableWidget_viewOptions :: Ptr (TQTableWidget a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QTableWidgetSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_viewOptions cobj_x0

instance QqvisualRect (QTableWidget ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_visualRect_h" qtc_QTableWidget_visualRect_h :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QTableWidgetSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QTableWidget ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTableWidget_visualRect_qth_h" qtc_QTableWidget_visualRect_qth_h :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QTableWidgetSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QTableWidget ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_visualRegionForSelection" qtc_QTableWidget_visualRegionForSelection :: Ptr (TQTableWidget a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QTableWidgetSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_visualRegionForSelection cobj_x0 cobj_x1

instance QcloseEditor (QTableWidget ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableWidget_closeEditor" qtc_QTableWidget_closeEditor :: Ptr (TQTableWidget a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QTableWidgetSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QTableWidget ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_commitData" qtc_QTableWidget_commitData :: Ptr (TQTableWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QTableWidgetSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_commitData cobj_x0 cobj_x1

instance QdataChanged (QTableWidget ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableWidget_dataChanged" qtc_QTableWidget_dataChanged :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QTableWidgetSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdirtyRegionOffset (QTableWidget ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTableWidget_dirtyRegionOffset_qth" qtc_QTableWidget_dirtyRegionOffset_qth :: Ptr (TQTableWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QTableWidgetSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QTableWidget ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QTableWidget_dirtyRegionOffset" qtc_QTableWidget_dirtyRegionOffset :: Ptr (TQTableWidget a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QTableWidgetSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QTableWidget ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_doAutoScroll cobj_x0

foreign import ccall "qtc_QTableWidget_doAutoScroll" qtc_QTableWidget_doAutoScroll :: Ptr (TQTableWidget a) -> IO ()

instance QdoAutoScroll (QTableWidgetSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_doAutoScroll cobj_x0

instance QdoItemsLayout (QTableWidget ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QTableWidget_doItemsLayout_h" qtc_QTableWidget_doItemsLayout_h :: Ptr (TQTableWidget a) -> IO ()

instance QdoItemsLayout (QTableWidgetSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_doItemsLayout_h cobj_x0

instance QdragEnterEvent (QTableWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_dragEnterEvent_h" qtc_QTableWidget_dragEnterEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTableWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTableWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_dragLeaveEvent_h" qtc_QTableWidget_dragLeaveEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTableWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTableWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_dragMoveEvent_h" qtc_QTableWidget_dragMoveEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTableWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QTableWidget ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QTableWidget_dropIndicatorPosition" qtc_QTableWidget_dropIndicatorPosition :: Ptr (TQTableWidget a) -> IO CLong

instance QdropIndicatorPosition (QTableWidgetSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_dropIndicatorPosition cobj_x0

instance Qedit (QTableWidget ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QTableWidget_edit" qtc_QTableWidget_edit :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QTableWidgetSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableWidget_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QTableWidget ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_editorDestroyed" qtc_QTableWidget_editorDestroyed :: Ptr (TQTableWidget a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QTableWidgetSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QTableWidget ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTableWidget_executeDelayedItemsLayout" qtc_QTableWidget_executeDelayedItemsLayout :: Ptr (TQTableWidget a) -> IO ()

instance QexecuteDelayedItemsLayout (QTableWidgetSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QTableWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_focusInEvent_h" qtc_QTableWidget_focusInEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTableWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTableWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_focusNextPrevChild" qtc_QTableWidget_focusNextPrevChild :: Ptr (TQTableWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTableWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTableWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_focusOutEvent_h" qtc_QTableWidget_focusOutEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTableWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarValueChanged (QTableWidget ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_horizontalScrollbarValueChanged" qtc_QTableWidget_horizontalScrollbarValueChanged :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QTableWidgetSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QTableWidget ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QTableWidget_horizontalStepsPerItem" qtc_QTableWidget_horizontalStepsPerItem :: Ptr (TQTableWidget a) -> IO CInt

instance QhorizontalStepsPerItem (QTableWidgetSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QTableWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_inputMethodEvent" qtc_QTableWidget_inputMethodEvent :: Ptr (TQTableWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTableWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTableWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableWidget_inputMethodQuery_h" qtc_QTableWidget_inputMethodQuery_h :: Ptr (TQTableWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTableWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QTableWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_keyPressEvent_h" qtc_QTableWidget_keyPressEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTableWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QTableWidget ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidget_keyboardSearch_h" qtc_QTableWidget_keyboardSearch_h :: Ptr (TQTableWidget a) -> CWString -> IO ()

instance QkeyboardSearch (QTableWidgetSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QTableWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_mouseDoubleClickEvent_h" qtc_QTableWidget_mouseDoubleClickEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTableWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTableWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_mouseMoveEvent_h" qtc_QTableWidget_mouseMoveEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTableWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTableWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_mousePressEvent_h" qtc_QTableWidget_mousePressEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTableWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTableWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_mouseReleaseEvent_h" qtc_QTableWidget_mouseReleaseEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTableWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qreset (QTableWidget ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_reset_h cobj_x0

foreign import ccall "qtc_QTableWidget_reset_h" qtc_QTableWidget_reset_h :: Ptr (TQTableWidget a) -> IO ()

instance Qreset (QTableWidgetSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_reset_h cobj_x0

instance QresizeEvent (QTableWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_resizeEvent_h" qtc_QTableWidget_resizeEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTableWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_resizeEvent_h cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QTableWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_rowsAboutToBeRemoved" qtc_QTableWidget_rowsAboutToBeRemoved :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QTableWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QTableWidget ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableWidget_rowsInserted" qtc_QTableWidget_rowsInserted :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QTableWidgetSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscheduleDelayedItemsLayout (QTableWidget ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTableWidget_scheduleDelayedItemsLayout" qtc_QTableWidget_scheduleDelayedItemsLayout :: Ptr (TQTableWidget a) -> IO ()

instance QscheduleDelayedItemsLayout (QTableWidgetSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QTableWidget ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_scrollDirtyRegion" qtc_QTableWidget_scrollDirtyRegion :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QTableWidgetSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QTableWidget ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectAll_h cobj_x0

foreign import ccall "qtc_QTableWidget_selectAll_h" qtc_QTableWidget_selectAll_h :: Ptr (TQTableWidget a) -> IO ()

instance QselectAll (QTableWidgetSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_selectAll_h cobj_x0

instance QselectionCommand (QTableWidget ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_selectionCommand" qtc_QTableWidget_selectionCommand :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QTableWidgetSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QTableWidget ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableWidget_selectionCommand1" qtc_QTableWidget_selectionCommand1 :: Ptr (TQTableWidget a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QTableWidgetSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QTableWidget ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setDirtyRegion" qtc_QTableWidget_setDirtyRegion :: Ptr (TQTableWidget a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QTableWidgetSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QTableWidget ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_setHorizontalStepsPerItem" qtc_QTableWidget_setHorizontalStepsPerItem :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QTableWidgetSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetState (QTableWidget ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableWidget_setState" qtc_QTableWidget_setState :: Ptr (TQTableWidget a) -> CLong -> IO ()

instance QsetState (QTableWidgetSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QTableWidget ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_setVerticalStepsPerItem" qtc_QTableWidget_setVerticalStepsPerItem :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QTableWidgetSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QstartAutoScroll (QTableWidget ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_startAutoScroll cobj_x0

foreign import ccall "qtc_QTableWidget_startAutoScroll" qtc_QTableWidget_startAutoScroll :: Ptr (TQTableWidget a) -> IO ()

instance QstartAutoScroll (QTableWidgetSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_startAutoScroll cobj_x0

instance QstartDrag (QTableWidget ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTableWidget_startDrag" qtc_QTableWidget_startDrag :: Ptr (TQTableWidget a) -> CLong -> IO ()

instance QstartDrag (QTableWidgetSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QTableWidget ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_state cobj_x0

foreign import ccall "qtc_QTableWidget_state" qtc_QTableWidget_state :: Ptr (TQTableWidget a) -> IO CLong

instance Qstate (QTableWidgetSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_state cobj_x0

instance QstopAutoScroll (QTableWidget ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_stopAutoScroll cobj_x0

foreign import ccall "qtc_QTableWidget_stopAutoScroll" qtc_QTableWidget_stopAutoScroll :: Ptr (TQTableWidget a) -> IO ()

instance QstopAutoScroll (QTableWidgetSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_stopAutoScroll cobj_x0

instance QupdateEditorData (QTableWidget ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateEditorData cobj_x0

foreign import ccall "qtc_QTableWidget_updateEditorData" qtc_QTableWidget_updateEditorData :: Ptr (TQTableWidget a) -> IO ()

instance QupdateEditorData (QTableWidgetSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateEditorData cobj_x0

instance QupdateEditorGeometries (QTableWidget ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QTableWidget_updateEditorGeometries" qtc_QTableWidget_updateEditorGeometries :: Ptr (TQTableWidget a) -> IO ()

instance QupdateEditorGeometries (QTableWidgetSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateEditorGeometries cobj_x0

instance QverticalScrollbarValueChanged (QTableWidget ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_verticalScrollbarValueChanged" qtc_QTableWidget_verticalScrollbarValueChanged :: Ptr (TQTableWidget a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QTableWidgetSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QTableWidget ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QTableWidget_verticalStepsPerItem" qtc_QTableWidget_verticalStepsPerItem :: Ptr (TQTableWidget a) -> IO CInt

instance QverticalStepsPerItem (QTableWidgetSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_verticalStepsPerItem cobj_x0

instance QviewportEvent (QTableWidget ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_viewportEvent_h" qtc_QTableWidget_viewportEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTableWidgetSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_viewportEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTableWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_contextMenuEvent_h" qtc_QTableWidget_contextMenuEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTableWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTableWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTableWidget_minimumSizeHint_h" qtc_QTableWidget_minimumSizeHint_h :: Ptr (TQTableWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTableWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTableWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableWidget_minimumSizeHint_qth_h" qtc_QTableWidget_minimumSizeHint_qth_h :: Ptr (TQTableWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTableWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTableWidget ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableWidget_setViewportMargins" qtc_QTableWidget_setViewportMargins :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTableWidgetSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTableWidget ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setupViewport" qtc_QTableWidget_setupViewport :: Ptr (TQTableWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTableWidgetSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTableWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QTableWidget_sizeHint_h" qtc_QTableWidget_sizeHint_h :: Ptr (TQTableWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTableWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHint_h cobj_x0

instance QsizeHint (QTableWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableWidget_sizeHint_qth_h" qtc_QTableWidget_sizeHint_qth_h :: Ptr (TQTableWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTableWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QTableWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_wheelEvent_h" qtc_QTableWidget_wheelEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTableWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QTableWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_changeEvent_h" qtc_QTableWidget_changeEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTableWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTableWidget ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_drawFrame" qtc_QTableWidget_drawFrame :: Ptr (TQTableWidget a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTableWidgetSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTableWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_actionEvent_h" qtc_QTableWidget_actionEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTableWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTableWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_addAction" qtc_QTableWidget_addAction :: Ptr (TQTableWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTableWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTableWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_closeEvent_h" qtc_QTableWidget_closeEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTableWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTableWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_create cobj_x0

foreign import ccall "qtc_QTableWidget_create" qtc_QTableWidget_create :: Ptr (TQTableWidget a) -> IO ()

instance Qcreate (QTableWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_create cobj_x0

instance Qcreate (QTableWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_create1" qtc_QTableWidget_create1 :: Ptr (TQTableWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTableWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QTableWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTableWidget_create2" qtc_QTableWidget_create2 :: Ptr (TQTableWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTableWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTableWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTableWidget_create3" qtc_QTableWidget_create3 :: Ptr (TQTableWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTableWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTableWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy cobj_x0

foreign import ccall "qtc_QTableWidget_destroy" qtc_QTableWidget_destroy :: Ptr (TQTableWidget a) -> IO ()

instance Qdestroy (QTableWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy cobj_x0

instance Qdestroy (QTableWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_destroy1" qtc_QTableWidget_destroy1 :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance Qdestroy (QTableWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTableWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTableWidget_destroy2" qtc_QTableWidget_destroy2 :: Ptr (TQTableWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTableWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTableWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_devType_h cobj_x0

foreign import ccall "qtc_QTableWidget_devType_h" qtc_QTableWidget_devType_h :: Ptr (TQTableWidget a) -> IO CInt

instance QdevType (QTableWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_devType_h cobj_x0

instance QenabledChange (QTableWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_enabledChange" qtc_QTableWidget_enabledChange :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance QenabledChange (QTableWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTableWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_enterEvent_h" qtc_QTableWidget_enterEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTableWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTableWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QTableWidget_focusNextChild" qtc_QTableWidget_focusNextChild :: Ptr (TQTableWidget a) -> IO CBool

instance QfocusNextChild (QTableWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusNextChild cobj_x0

instance QfocusPreviousChild (QTableWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTableWidget_focusPreviousChild" qtc_QTableWidget_focusPreviousChild :: Ptr (TQTableWidget a) -> IO CBool

instance QfocusPreviousChild (QTableWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_focusPreviousChild cobj_x0

instance QfontChange (QTableWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_fontChange" qtc_QTableWidget_fontChange :: Ptr (TQTableWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTableWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTableWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidget_heightForWidth_h" qtc_QTableWidget_heightForWidth_h :: Ptr (TQTableWidget a) -> CInt -> IO CInt

instance QheightForWidth (QTableWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTableWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_hideEvent_h" qtc_QTableWidget_hideEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTableWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTableWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_keyReleaseEvent_h" qtc_QTableWidget_keyReleaseEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTableWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTableWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_languageChange cobj_x0

foreign import ccall "qtc_QTableWidget_languageChange" qtc_QTableWidget_languageChange :: Ptr (TQTableWidget a) -> IO ()

instance QlanguageChange (QTableWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_languageChange cobj_x0

instance QleaveEvent (QTableWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_leaveEvent_h" qtc_QTableWidget_leaveEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTableWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTableWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableWidget_metric" qtc_QTableWidget_metric :: Ptr (TQTableWidget a) -> CLong -> IO CInt

instance Qmetric (QTableWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTableWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_move1" qtc_QTableWidget_move1 :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTableWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTableWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableWidget_move_qth" qtc_QTableWidget_move_qth :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTableWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTableWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_move" qtc_QTableWidget_move :: Ptr (TQTableWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTableWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QTableWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_moveEvent_h" qtc_QTableWidget_moveEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTableWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTableWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QTableWidget_paintEngine_h" qtc_QTableWidget_paintEngine_h :: Ptr (TQTableWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTableWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_paintEngine_h cobj_x0

instance QpaletteChange (QTableWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_paletteChange" qtc_QTableWidget_paletteChange :: Ptr (TQTableWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTableWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTableWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_repaint cobj_x0

foreign import ccall "qtc_QTableWidget_repaint" qtc_QTableWidget_repaint :: Ptr (TQTableWidget a) -> IO ()

instance Qrepaint (QTableWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_repaint cobj_x0

instance Qrepaint (QTableWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableWidget_repaint2" qtc_QTableWidget_repaint2 :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTableWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTableWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_repaint1" qtc_QTableWidget_repaint1 :: Ptr (TQTableWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTableWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTableWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QTableWidget_resetInputContext" qtc_QTableWidget_resetInputContext :: Ptr (TQTableWidget a) -> IO ()

instance QresetInputContext (QTableWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_resetInputContext cobj_x0

instance Qresize (QTableWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableWidget_resize1" qtc_QTableWidget_resize1 :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTableWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTableWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_resize" qtc_QTableWidget_resize :: Ptr (TQTableWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTableWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_resize cobj_x0 cobj_x1

instance Qresize (QTableWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTableWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTableWidget_resize_qth" qtc_QTableWidget_resize_qth :: Ptr (TQTableWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTableWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTableWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTableWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableWidget_setGeometry1" qtc_QTableWidget_setGeometry1 :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTableWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTableWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_setGeometry" qtc_QTableWidget_setGeometry :: Ptr (TQTableWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTableWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTableWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTableWidget_setGeometry_qth" qtc_QTableWidget_setGeometry_qth :: Ptr (TQTableWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTableWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTableWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_setMouseTracking" qtc_QTableWidget_setMouseTracking :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QTableWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTableWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_setVisible_h" qtc_QTableWidget_setVisible_h :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance QsetVisible (QTableWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QTableWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_showEvent_h" qtc_QTableWidget_showEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTableWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QTableWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_tabletEvent_h" qtc_QTableWidget_tabletEvent_h :: Ptr (TQTableWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTableWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTableWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTableWidget_updateMicroFocus" qtc_QTableWidget_updateMicroFocus :: Ptr (TQTableWidget a) -> IO ()

instance QupdateMicroFocus (QTableWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTableWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidget_windowActivationChange" qtc_QTableWidget_windowActivationChange :: Ptr (TQTableWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QTableWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTableWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_childEvent" qtc_QTableWidget_childEvent :: Ptr (TQTableWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTableWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTableWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidget_connectNotify" qtc_QTableWidget_connectNotify :: Ptr (TQTableWidget a) -> CWString -> IO ()

instance QconnectNotify (QTableWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTableWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidget_customEvent" qtc_QTableWidget_customEvent :: Ptr (TQTableWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTableWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTableWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidget_disconnectNotify" qtc_QTableWidget_disconnectNotify :: Ptr (TQTableWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QTableWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTableWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableWidget_eventFilter_h" qtc_QTableWidget_eventFilter_h :: Ptr (TQTableWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTableWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTableWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidget_receivers" qtc_QTableWidget_receivers :: Ptr (TQTableWidget a) -> CWString -> IO CInt

instance Qreceivers (QTableWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidget_receivers cobj_x0 cstr_x1

instance Qsender (QTableWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sender cobj_x0

foreign import ccall "qtc_QTableWidget_sender" qtc_QTableWidget_sender :: Ptr (TQTableWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QTableWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidget_sender cobj_x0

