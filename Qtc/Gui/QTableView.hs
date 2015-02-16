{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTableView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTableView (
  QqTableView(..)
  ,gridStyle
  ,hideRow
  ,horizontalHeader
  ,isCornerButtonEnabled
  ,resizeColumnsToContents
  ,resizeRowToContents
  ,resizeRowsToContents
  ,rowAt
  ,rowViewportPosition
  ,selectColumn
  ,selectRow
  ,setCornerButtonEnabled
  ,setGridStyle
  ,setHorizontalHeader
  ,setRowHeight
  ,setShowGrid
  ,setSpan
  ,setVerticalHeader
  ,showGrid
  ,showRow
  ,verticalHeader
  ,qTableView_delete
  ,qTableView_deleteLater
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

instance QuserMethod (QTableView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTableView_userMethod" qtc_QTableView_userMethod :: Ptr (TQTableView a) -> CInt -> IO ()

instance QuserMethod (QTableViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTableView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTableView_userMethodVariant" qtc_QTableView_userMethodVariant :: Ptr (TQTableView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTableViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTableView x1 where
  qTableView :: x1 -> IO (QTableView ())

instance QqTableView (()) where
 qTableView ()
  = withQTableViewResult $
    qtc_QTableView

foreign import ccall "qtc_QTableView" qtc_QTableView :: IO (Ptr (TQTableView ()))

instance QqTableView ((QWidget t1)) where
 qTableView (x1)
  = withQTableViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView1 cobj_x1

foreign import ccall "qtc_QTableView1" qtc_QTableView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTableView ()))

instance QcolumnAt (QTableView a) ((Int)) where
 columnAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_columnAt" qtc_QTableView_columnAt :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QcolumnCountChanged (QTableView ()) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_columnCountChanged" qtc_QTableView_columnCountChanged :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QcolumnCountChanged (QTableViewSc a) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QcolumnMoved (QTableView ()) ((Int, Int, Int)) where
 columnMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_columnMoved" qtc_QTableView_columnMoved :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnMoved (QTableViewSc a) ((Int, Int, Int)) where
 columnMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcolumnResized (QTableView ()) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_columnResized" qtc_QTableView_columnResized :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnResized (QTableViewSc a) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcolumnSpan (QTableView a) ((Int, Int)) where
 columnSpan x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnSpan cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_columnSpan" qtc_QTableView_columnSpan :: Ptr (TQTableView a) -> CInt -> CInt -> IO CInt

instance QcolumnViewportPosition (QTableView a) ((Int)) where
 columnViewportPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnViewportPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_columnViewportPosition" qtc_QTableView_columnViewportPosition :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QcolumnWidth (QTableView a) ((Int)) where
 columnWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_columnWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_columnWidth" qtc_QTableView_columnWidth :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QcurrentChanged (QTableView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_currentChanged" qtc_QTableView_currentChanged :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QTableViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_currentChanged cobj_x0 cobj_x1 cobj_x2

gridStyle :: QTableView a -> (()) -> IO (PenStyle)
gridStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_gridStyle cobj_x0

foreign import ccall "qtc_QTableView_gridStyle" qtc_QTableView_gridStyle :: Ptr (TQTableView a) -> IO CLong

instance QhideColumn (QTableView a) ((Int)) where
 hideColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_hideColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_hideColumn" qtc_QTableView_hideColumn :: Ptr (TQTableView a) -> CInt -> IO ()

hideRow :: QTableView a -> ((Int)) -> IO ()
hideRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_hideRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_hideRow" qtc_QTableView_hideRow :: Ptr (TQTableView a) -> CInt -> IO ()

horizontalHeader :: QTableView a -> (()) -> IO (QHeaderView ())
horizontalHeader x0 ()
  = withQHeaderViewResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalHeader cobj_x0

foreign import ccall "qtc_QTableView_horizontalHeader" qtc_QTableView_horizontalHeader :: Ptr (TQTableView a) -> IO (Ptr (TQHeaderView ()))

instance QhorizontalOffset (QTableView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalOffset cobj_x0

foreign import ccall "qtc_QTableView_horizontalOffset" qtc_QTableView_horizontalOffset :: Ptr (TQTableView a) -> IO CInt

instance QhorizontalOffset (QTableViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalOffset cobj_x0

instance QhorizontalScrollbarAction (QTableView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_horizontalScrollbarAction" qtc_QTableView_horizontalScrollbarAction :: Ptr (TQTableView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QTableViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QindexAt (QTableView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableView_indexAt_qth_h" qtc_QTableView_indexAt_qth_h :: Ptr (TQTableView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QTableViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QTableView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_indexAt_h" qtc_QTableView_indexAt_h :: Ptr (TQTableView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QTableViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_indexAt_h cobj_x0 cobj_x1

instance QisColumnHidden (QTableView a) ((Int)) where
 isColumnHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_isColumnHidden cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_isColumnHidden" qtc_QTableView_isColumnHidden :: Ptr (TQTableView a) -> CInt -> IO CBool

isCornerButtonEnabled :: QTableView a -> (()) -> IO (Bool)
isCornerButtonEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_isCornerButtonEnabled cobj_x0

foreign import ccall "qtc_QTableView_isCornerButtonEnabled" qtc_QTableView_isCornerButtonEnabled :: Ptr (TQTableView a) -> IO CBool

instance QisIndexHidden (QTableView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_isIndexHidden" qtc_QTableView_isIndexHidden :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QTableViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_isIndexHidden cobj_x0 cobj_x1

instance QisRowHidden (QTableView a) ((Int)) where
 isRowHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_isRowHidden cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_isRowHidden" qtc_QTableView_isRowHidden :: Ptr (TQTableView a) -> CInt -> IO CBool

instance QisSortingEnabled (QTableView ()) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_isSortingEnabled cobj_x0

foreign import ccall "qtc_QTableView_isSortingEnabled" qtc_QTableView_isSortingEnabled :: Ptr (TQTableView a) -> IO CBool

instance QisSortingEnabled (QTableViewSc a) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_isSortingEnabled cobj_x0

instance QmoveCursor (QTableView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableView_moveCursor" qtc_QTableView_moveCursor :: Ptr (TQTableView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QTableViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QTableView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_paintEvent_h" qtc_QTableView_paintEvent_h :: Ptr (TQTableView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTableViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paintEvent_h cobj_x0 cobj_x1

instance QresizeColumnToContents (QTableView a) ((Int)) where
 resizeColumnToContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resizeColumnToContents cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_resizeColumnToContents" qtc_QTableView_resizeColumnToContents :: Ptr (TQTableView a) -> CInt -> IO ()

resizeColumnsToContents :: QTableView a -> (()) -> IO ()
resizeColumnsToContents x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resizeColumnsToContents cobj_x0

foreign import ccall "qtc_QTableView_resizeColumnsToContents" qtc_QTableView_resizeColumnsToContents :: Ptr (TQTableView a) -> IO ()

resizeRowToContents :: QTableView a -> ((Int)) -> IO ()
resizeRowToContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resizeRowToContents cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_resizeRowToContents" qtc_QTableView_resizeRowToContents :: Ptr (TQTableView a) -> CInt -> IO ()

resizeRowsToContents :: QTableView a -> (()) -> IO ()
resizeRowsToContents x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resizeRowsToContents cobj_x0

foreign import ccall "qtc_QTableView_resizeRowsToContents" qtc_QTableView_resizeRowsToContents :: Ptr (TQTableView a) -> IO ()

rowAt :: QTableView a -> ((Int)) -> IO (Int)
rowAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_rowAt" qtc_QTableView_rowAt :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QrowCountChanged (QTableView ()) ((Int, Int)) where
 rowCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_rowCountChanged" qtc_QTableView_rowCountChanged :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QrowCountChanged (QTableViewSc a) ((Int, Int)) where
 rowCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QrowHeight (QTableView a) ((Int)) where
 rowHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_rowHeight" qtc_QTableView_rowHeight :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QrowMoved (QTableView ()) ((Int, Int, Int)) where
 rowMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_rowMoved" qtc_QTableView_rowMoved :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> IO ()

instance QrowMoved (QTableViewSc a) ((Int, Int, Int)) where
 rowMoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowMoved cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QrowResized (QTableView ()) ((Int, Int, Int)) where
 rowResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_rowResized" qtc_QTableView_rowResized :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> IO ()

instance QrowResized (QTableViewSc a) ((Int, Int, Int)) where
 rowResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QrowSpan (QTableView a) ((Int, Int)) where
 rowSpan x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowSpan cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_rowSpan" qtc_QTableView_rowSpan :: Ptr (TQTableView a) -> CInt -> CInt -> IO CInt

rowViewportPosition :: QTableView a -> ((Int)) -> IO (Int)
rowViewportPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_rowViewportPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_rowViewportPosition" qtc_QTableView_rowViewportPosition :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QscrollContentsBy (QTableView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_scrollContentsBy_h" qtc_QTableView_scrollContentsBy_h :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTableViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QTableView a) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_scrollTo cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_scrollTo" qtc_QTableView_scrollTo :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo (QTableView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableView_scrollTo1_h" qtc_QTableView_scrollTo1_h :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QTableViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

selectColumn :: QTableView a -> ((Int)) -> IO ()
selectColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_selectColumn" qtc_QTableView_selectColumn :: Ptr (TQTableView a) -> CInt -> IO ()

selectRow :: QTableView a -> ((Int)) -> IO ()
selectRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_selectRow" qtc_QTableView_selectRow :: Ptr (TQTableView a) -> CInt -> IO ()

instance QselectedIndexes (QTableView ()) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QTableView_selectedIndexes" qtc_QTableView_selectedIndexes :: Ptr (TQTableView a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QTableViewSc a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectedIndexes cobj_x0 arr

instance QselectionChanged (QTableView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_selectionChanged" qtc_QTableView_selectionChanged :: Ptr (TQTableView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QTableViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QsetColumnHidden (QTableView a) ((Int, Bool)) where
 setColumnHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setColumnHidden cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QTableView_setColumnHidden" qtc_QTableView_setColumnHidden :: Ptr (TQTableView a) -> CInt -> CBool -> IO ()

instance QsetColumnWidth (QTableView a) ((Int, Int)) where
 setColumnWidth x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setColumnWidth cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_setColumnWidth" qtc_QTableView_setColumnWidth :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

setCornerButtonEnabled :: QTableView a -> ((Bool)) -> IO ()
setCornerButtonEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setCornerButtonEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setCornerButtonEnabled" qtc_QTableView_setCornerButtonEnabled :: Ptr (TQTableView a) -> CBool -> IO ()

setGridStyle :: QTableView a -> ((PenStyle)) -> IO ()
setGridStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setGridStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableView_setGridStyle" qtc_QTableView_setGridStyle :: Ptr (TQTableView a) -> CLong -> IO ()

setHorizontalHeader :: QTableView a -> ((QHeaderView t1)) -> IO ()
setHorizontalHeader x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setHorizontalHeader cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setHorizontalHeader" qtc_QTableView_setHorizontalHeader :: Ptr (TQTableView a) -> Ptr (TQHeaderView t1) -> IO ()

instance QsetModel (QTableView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setModel_h" qtc_QTableView_setModel_h :: Ptr (TQTableView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QTableViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setModel_h cobj_x0 cobj_x1

instance QsetRootIndex (QTableView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setRootIndex_h" qtc_QTableView_setRootIndex_h :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QTableViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setRootIndex_h cobj_x0 cobj_x1

setRowHeight :: QTableView a -> ((Int, Int)) -> IO ()
setRowHeight x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setRowHeight cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_setRowHeight" qtc_QTableView_setRowHeight :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QsetRowHidden (QTableView a) ((Int, Bool)) where
 setRowHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setRowHidden cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QTableView_setRowHidden" qtc_QTableView_setRowHidden :: Ptr (TQTableView a) -> CInt -> CBool -> IO ()

instance QqsetSelection (QTableView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableView_setSelection" qtc_QTableView_setSelection :: Ptr (TQTableView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QTableViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QTableView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTableView_setSelection_qth" qtc_QTableView_setSelection_qth :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QTableViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel (QTableView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setSelectionModel_h" qtc_QTableView_setSelectionModel_h :: Ptr (TQTableView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QTableViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setSelectionModel_h cobj_x0 cobj_x1

setShowGrid :: QTableView a -> ((Bool)) -> IO ()
setShowGrid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setShowGrid cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setShowGrid" qtc_QTableView_setShowGrid :: Ptr (TQTableView a) -> CBool -> IO ()

instance QsetSortingEnabled (QTableView ()) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setSortingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setSortingEnabled" qtc_QTableView_setSortingEnabled :: Ptr (TQTableView a) -> CBool -> IO ()

instance QsetSortingEnabled (QTableViewSc a) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setSortingEnabled cobj_x0 (toCBool x1)

setSpan :: QTableView a -> ((Int, Int, Int, Int)) -> IO ()
setSpan x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setSpan cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableView_setSpan" qtc_QTableView_setSpan :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

setVerticalHeader :: QTableView a -> ((QHeaderView t1)) -> IO ()
setVerticalHeader x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setVerticalHeader cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setVerticalHeader" qtc_QTableView_setVerticalHeader :: Ptr (TQTableView a) -> Ptr (TQHeaderView t1) -> IO ()

instance QsetWordWrap (QTableView a) ((Bool)) where
 setWordWrap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setWordWrap cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setWordWrap" qtc_QTableView_setWordWrap :: Ptr (TQTableView a) -> CBool -> IO ()

instance QshowColumn (QTableView a) ((Int)) where
 showColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_showColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_showColumn" qtc_QTableView_showColumn :: Ptr (TQTableView a) -> CInt -> IO ()

showGrid :: QTableView a -> (()) -> IO (Bool)
showGrid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_showGrid cobj_x0

foreign import ccall "qtc_QTableView_showGrid" qtc_QTableView_showGrid :: Ptr (TQTableView a) -> IO CBool

showRow :: QTableView a -> ((Int)) -> IO ()
showRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_showRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_showRow" qtc_QTableView_showRow :: Ptr (TQTableView a) -> CInt -> IO ()

instance QsizeHintForColumn (QTableView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHintForColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_sizeHintForColumn" qtc_QTableView_sizeHintForColumn :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QTableViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHintForColumn cobj_x0 (toCInt x1)

instance QsizeHintForRow (QTableView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHintForRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_sizeHintForRow" qtc_QTableView_sizeHintForRow :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QsizeHintForRow (QTableViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHintForRow cobj_x0 (toCInt x1)

instance QsortByColumn (QTableView a) ((Int)) where
 sortByColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sortByColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_sortByColumn" qtc_QTableView_sortByColumn :: Ptr (TQTableView a) -> CInt -> IO ()

instance QsortByColumn (QTableView a) ((Int, SortOrder)) where
 sortByColumn x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sortByColumn1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableView_sortByColumn1" qtc_QTableView_sortByColumn1 :: Ptr (TQTableView a) -> CInt -> CLong -> IO ()

instance QtimerEvent (QTableView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_timerEvent" qtc_QTableView_timerEvent :: Ptr (TQTableView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTableViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_timerEvent cobj_x0 cobj_x1

instance QupdateGeometries (QTableView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateGeometries cobj_x0

foreign import ccall "qtc_QTableView_updateGeometries" qtc_QTableView_updateGeometries :: Ptr (TQTableView a) -> IO ()

instance QupdateGeometries (QTableViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateGeometries cobj_x0

verticalHeader :: QTableView a -> (()) -> IO (QHeaderView ())
verticalHeader x0 ()
  = withQHeaderViewResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalHeader cobj_x0

foreign import ccall "qtc_QTableView_verticalHeader" qtc_QTableView_verticalHeader :: Ptr (TQTableView a) -> IO (Ptr (TQHeaderView ()))

instance QverticalOffset (QTableView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalOffset cobj_x0

foreign import ccall "qtc_QTableView_verticalOffset" qtc_QTableView_verticalOffset :: Ptr (TQTableView a) -> IO CInt

instance QverticalOffset (QTableViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalOffset cobj_x0

instance QverticalScrollbarAction (QTableView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_verticalScrollbarAction" qtc_QTableView_verticalScrollbarAction :: Ptr (TQTableView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QTableViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QviewOptions (QTableView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_viewOptions cobj_x0

foreign import ccall "qtc_QTableView_viewOptions" qtc_QTableView_viewOptions :: Ptr (TQTableView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QTableViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_viewOptions cobj_x0

instance QqvisualRect (QTableView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_visualRect_h" qtc_QTableView_visualRect_h :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QTableViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QTableView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTableView_visualRect_qth_h" qtc_QTableView_visualRect_qth_h :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QTableViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QTableView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_visualRegionForSelection" qtc_QTableView_visualRegionForSelection :: Ptr (TQTableView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QTableViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_visualRegionForSelection cobj_x0 cobj_x1

instance QwordWrap (QTableView a) (()) where
 wordWrap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_wordWrap cobj_x0

foreign import ccall "qtc_QTableView_wordWrap" qtc_QTableView_wordWrap :: Ptr (TQTableView a) -> IO CBool

qTableView_delete :: QTableView a -> IO ()
qTableView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_delete cobj_x0

foreign import ccall "qtc_QTableView_delete" qtc_QTableView_delete :: Ptr (TQTableView a) -> IO ()

qTableView_deleteLater :: QTableView a -> IO ()
qTableView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_deleteLater cobj_x0

foreign import ccall "qtc_QTableView_deleteLater" qtc_QTableView_deleteLater :: Ptr (TQTableView a) -> IO ()

instance QcloseEditor (QTableView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTableView_closeEditor" qtc_QTableView_closeEditor :: Ptr (TQTableView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QTableViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QTableView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_commitData" qtc_QTableView_commitData :: Ptr (TQTableView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QTableViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_commitData cobj_x0 cobj_x1

instance QdataChanged (QTableView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_dataChanged" qtc_QTableView_dataChanged :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QTableViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdirtyRegionOffset (QTableView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTableView_dirtyRegionOffset_qth" qtc_QTableView_dirtyRegionOffset_qth :: Ptr (TQTableView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QTableViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QTableView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QTableView_dirtyRegionOffset" qtc_QTableView_dirtyRegionOffset :: Ptr (TQTableView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QTableViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QTableView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doAutoScroll cobj_x0

foreign import ccall "qtc_QTableView_doAutoScroll" qtc_QTableView_doAutoScroll :: Ptr (TQTableView a) -> IO ()

instance QdoAutoScroll (QTableViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doAutoScroll cobj_x0

instance QdoItemsLayout (QTableView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QTableView_doItemsLayout_h" qtc_QTableView_doItemsLayout_h :: Ptr (TQTableView a) -> IO ()

instance QdoItemsLayout (QTableViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_doItemsLayout_h cobj_x0

instance QdragEnterEvent (QTableView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragEnterEvent_h" qtc_QTableView_dragEnterEvent_h :: Ptr (TQTableView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTableViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTableView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragLeaveEvent_h" qtc_QTableView_dragLeaveEvent_h :: Ptr (TQTableView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTableViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTableView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dragMoveEvent_h" qtc_QTableView_dragMoveEvent_h :: Ptr (TQTableView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTableViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTableView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_dropEvent_h" qtc_QTableView_dropEvent_h :: Ptr (TQTableView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTableViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_dropEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QTableView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QTableView_dropIndicatorPosition" qtc_QTableView_dropIndicatorPosition :: Ptr (TQTableView a) -> IO CLong

instance QdropIndicatorPosition (QTableViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_dropIndicatorPosition cobj_x0

instance Qedit (QTableView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QTableView_edit" qtc_QTableView_edit :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QTableViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTableView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QTableView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_editorDestroyed" qtc_QTableView_editorDestroyed :: Ptr (TQTableView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QTableViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_editorDestroyed cobj_x0 cobj_x1

instance Qevent (QTableView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_event_h" qtc_QTableView_event_h :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTableViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_event_h cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QTableView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTableView_executeDelayedItemsLayout" qtc_QTableView_executeDelayedItemsLayout :: Ptr (TQTableView a) -> IO ()

instance QexecuteDelayedItemsLayout (QTableViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QTableView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_focusInEvent_h" qtc_QTableView_focusInEvent_h :: Ptr (TQTableView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTableViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTableView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_focusNextPrevChild" qtc_QTableView_focusNextPrevChild :: Ptr (TQTableView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTableViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTableView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_focusOutEvent_h" qtc_QTableView_focusOutEvent_h :: Ptr (TQTableView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTableViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarValueChanged (QTableView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_horizontalScrollbarValueChanged" qtc_QTableView_horizontalScrollbarValueChanged :: Ptr (TQTableView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QTableViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QTableView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QTableView_horizontalStepsPerItem" qtc_QTableView_horizontalStepsPerItem :: Ptr (TQTableView a) -> IO CInt

instance QhorizontalStepsPerItem (QTableViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QTableView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_inputMethodEvent" qtc_QTableView_inputMethodEvent :: Ptr (TQTableView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTableViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTableView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableView_inputMethodQuery_h" qtc_QTableView_inputMethodQuery_h :: Ptr (TQTableView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTableViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QTableView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_keyPressEvent_h" qtc_QTableView_keyPressEvent_h :: Ptr (TQTableView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTableViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QTableView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QTableView_keyboardSearch_h" qtc_QTableView_keyboardSearch_h :: Ptr (TQTableView a) -> CWString -> IO ()

instance QkeyboardSearch (QTableViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QTableView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseDoubleClickEvent_h" qtc_QTableView_mouseDoubleClickEvent_h :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTableViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTableView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseMoveEvent_h" qtc_QTableView_mouseMoveEvent_h :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTableViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTableView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mousePressEvent_h" qtc_QTableView_mousePressEvent_h :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTableViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTableView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_mouseReleaseEvent_h" qtc_QTableView_mouseReleaseEvent_h :: Ptr (TQTableView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTableViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qreset (QTableView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_reset_h cobj_x0

foreign import ccall "qtc_QTableView_reset_h" qtc_QTableView_reset_h :: Ptr (TQTableView a) -> IO ()

instance Qreset (QTableViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_reset_h cobj_x0

instance QresizeEvent (QTableView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_resizeEvent_h" qtc_QTableView_resizeEvent_h :: Ptr (TQTableView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTableViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resizeEvent_h cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QTableView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_rowsAboutToBeRemoved" qtc_QTableView_rowsAboutToBeRemoved :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QTableViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QTableView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTableView_rowsInserted" qtc_QTableView_rowsInserted :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QTableViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscheduleDelayedItemsLayout (QTableView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTableView_scheduleDelayedItemsLayout" qtc_QTableView_scheduleDelayedItemsLayout :: Ptr (TQTableView a) -> IO ()

instance QscheduleDelayedItemsLayout (QTableViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QTableView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_scrollDirtyRegion" qtc_QTableView_scrollDirtyRegion :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QTableViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QTableView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectAll_h cobj_x0

foreign import ccall "qtc_QTableView_selectAll_h" qtc_QTableView_selectAll_h :: Ptr (TQTableView a) -> IO ()

instance QselectAll (QTableViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_selectAll_h cobj_x0

instance QselectionCommand (QTableView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_selectionCommand" qtc_QTableView_selectionCommand :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QTableViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QTableView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_selectionCommand1" qtc_QTableView_selectionCommand1 :: Ptr (TQTableView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QTableViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QTableView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setDirtyRegion" qtc_QTableView_setDirtyRegion :: Ptr (TQTableView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QTableViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QTableView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_setHorizontalStepsPerItem" qtc_QTableView_setHorizontalStepsPerItem :: Ptr (TQTableView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QTableViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetState (QTableView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableView_setState" qtc_QTableView_setState :: Ptr (TQTableView a) -> CLong -> IO ()

instance QsetState (QTableViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QTableView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_setVerticalStepsPerItem" qtc_QTableView_setVerticalStepsPerItem :: Ptr (TQTableView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QTableViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QstartAutoScroll (QTableView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_startAutoScroll cobj_x0

foreign import ccall "qtc_QTableView_startAutoScroll" qtc_QTableView_startAutoScroll :: Ptr (TQTableView a) -> IO ()

instance QstartAutoScroll (QTableViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_startAutoScroll cobj_x0

instance QstartDrag (QTableView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTableView_startDrag" qtc_QTableView_startDrag :: Ptr (TQTableView a) -> CLong -> IO ()

instance QstartDrag (QTableViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QTableView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_state cobj_x0

foreign import ccall "qtc_QTableView_state" qtc_QTableView_state :: Ptr (TQTableView a) -> IO CLong

instance Qstate (QTableViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_state cobj_x0

instance QstopAutoScroll (QTableView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QTableView_stopAutoScroll" qtc_QTableView_stopAutoScroll :: Ptr (TQTableView a) -> IO ()

instance QstopAutoScroll (QTableViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_stopAutoScroll cobj_x0

instance QupdateEditorData (QTableView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateEditorData cobj_x0

foreign import ccall "qtc_QTableView_updateEditorData" qtc_QTableView_updateEditorData :: Ptr (TQTableView a) -> IO ()

instance QupdateEditorData (QTableViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QTableView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QTableView_updateEditorGeometries" qtc_QTableView_updateEditorGeometries :: Ptr (TQTableView a) -> IO ()

instance QupdateEditorGeometries (QTableViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateEditorGeometries cobj_x0

instance QverticalScrollbarValueChanged (QTableView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_verticalScrollbarValueChanged" qtc_QTableView_verticalScrollbarValueChanged :: Ptr (TQTableView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QTableViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QTableView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QTableView_verticalStepsPerItem" qtc_QTableView_verticalStepsPerItem :: Ptr (TQTableView a) -> IO CInt

instance QverticalStepsPerItem (QTableViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_verticalStepsPerItem cobj_x0

instance QviewportEvent (QTableView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_viewportEvent_h" qtc_QTableView_viewportEvent_h :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTableViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_viewportEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTableView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_contextMenuEvent_h" qtc_QTableView_contextMenuEvent_h :: Ptr (TQTableView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTableViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTableView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTableView_minimumSizeHint_h" qtc_QTableView_minimumSizeHint_h :: Ptr (TQTableView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTableViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTableView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableView_minimumSizeHint_qth_h" qtc_QTableView_minimumSizeHint_qth_h :: Ptr (TQTableView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTableViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTableView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableView_setViewportMargins" qtc_QTableView_setViewportMargins :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTableViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTableView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setupViewport" qtc_QTableView_setupViewport :: Ptr (TQTableView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTableViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTableView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_h cobj_x0

foreign import ccall "qtc_QTableView_sizeHint_h" qtc_QTableView_sizeHint_h :: Ptr (TQTableView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTableViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_h cobj_x0

instance QsizeHint (QTableView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableView_sizeHint_qth_h" qtc_QTableView_sizeHint_qth_h :: Ptr (TQTableView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTableViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QTableView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_wheelEvent_h" qtc_QTableView_wheelEvent_h :: Ptr (TQTableView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTableViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QTableView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_changeEvent_h" qtc_QTableView_changeEvent_h :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTableViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTableView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_drawFrame" qtc_QTableView_drawFrame :: Ptr (TQTableView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTableViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTableView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_actionEvent_h" qtc_QTableView_actionEvent_h :: Ptr (TQTableView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTableViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTableView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_addAction" qtc_QTableView_addAction :: Ptr (TQTableView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTableViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTableView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_closeEvent_h" qtc_QTableView_closeEvent_h :: Ptr (TQTableView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTableViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTableView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_create cobj_x0

foreign import ccall "qtc_QTableView_create" qtc_QTableView_create :: Ptr (TQTableView a) -> IO ()

instance Qcreate (QTableViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_create cobj_x0

instance Qcreate (QTableView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_create1" qtc_QTableView_create1 :: Ptr (TQTableView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTableViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create1 cobj_x0 cobj_x1

instance Qcreate (QTableView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTableView_create2" qtc_QTableView_create2 :: Ptr (TQTableView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTableViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTableView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTableView_create3" qtc_QTableView_create3 :: Ptr (TQTableView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTableViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTableView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy cobj_x0

foreign import ccall "qtc_QTableView_destroy" qtc_QTableView_destroy :: Ptr (TQTableView a) -> IO ()

instance Qdestroy (QTableViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy cobj_x0

instance Qdestroy (QTableView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_destroy1" qtc_QTableView_destroy1 :: Ptr (TQTableView a) -> CBool -> IO ()

instance Qdestroy (QTableViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTableView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTableView_destroy2" qtc_QTableView_destroy2 :: Ptr (TQTableView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTableViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTableView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_devType_h cobj_x0

foreign import ccall "qtc_QTableView_devType_h" qtc_QTableView_devType_h :: Ptr (TQTableView a) -> IO CInt

instance QdevType (QTableViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_devType_h cobj_x0

instance QenabledChange (QTableView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_enabledChange" qtc_QTableView_enabledChange :: Ptr (TQTableView a) -> CBool -> IO ()

instance QenabledChange (QTableViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTableView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_enterEvent_h" qtc_QTableView_enterEvent_h :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTableViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTableView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusNextChild cobj_x0

foreign import ccall "qtc_QTableView_focusNextChild" qtc_QTableView_focusNextChild :: Ptr (TQTableView a) -> IO CBool

instance QfocusNextChild (QTableViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusNextChild cobj_x0

instance QfocusPreviousChild (QTableView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTableView_focusPreviousChild" qtc_QTableView_focusPreviousChild :: Ptr (TQTableView a) -> IO CBool

instance QfocusPreviousChild (QTableViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_focusPreviousChild cobj_x0

instance QfontChange (QTableView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_fontChange" qtc_QTableView_fontChange :: Ptr (TQTableView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTableViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTableView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableView_heightForWidth_h" qtc_QTableView_heightForWidth_h :: Ptr (TQTableView a) -> CInt -> IO CInt

instance QheightForWidth (QTableViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTableView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_hideEvent_h" qtc_QTableView_hideEvent_h :: Ptr (TQTableView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTableViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTableView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_keyReleaseEvent_h" qtc_QTableView_keyReleaseEvent_h :: Ptr (TQTableView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTableViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTableView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_languageChange cobj_x0

foreign import ccall "qtc_QTableView_languageChange" qtc_QTableView_languageChange :: Ptr (TQTableView a) -> IO ()

instance QlanguageChange (QTableViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_languageChange cobj_x0

instance QleaveEvent (QTableView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_leaveEvent_h" qtc_QTableView_leaveEvent_h :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTableViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTableView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableView_metric" qtc_QTableView_metric :: Ptr (TQTableView a) -> CLong -> IO CInt

instance Qmetric (QTableViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTableView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_move1" qtc_QTableView_move1 :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance Qmove (QTableViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTableView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTableView_move_qth" qtc_QTableView_move_qth :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance Qmove (QTableViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTableView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTableView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_move" qtc_QTableView_move :: Ptr (TQTableView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTableViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_move cobj_x0 cobj_x1

instance QmoveEvent (QTableView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_moveEvent_h" qtc_QTableView_moveEvent_h :: Ptr (TQTableView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTableViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTableView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_paintEngine_h cobj_x0

foreign import ccall "qtc_QTableView_paintEngine_h" qtc_QTableView_paintEngine_h :: Ptr (TQTableView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTableViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_paintEngine_h cobj_x0

instance QpaletteChange (QTableView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_paletteChange" qtc_QTableView_paletteChange :: Ptr (TQTableView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTableViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTableView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_repaint cobj_x0

foreign import ccall "qtc_QTableView_repaint" qtc_QTableView_repaint :: Ptr (TQTableView a) -> IO ()

instance Qrepaint (QTableViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_repaint cobj_x0

instance Qrepaint (QTableView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableView_repaint2" qtc_QTableView_repaint2 :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTableViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTableView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_repaint1" qtc_QTableView_repaint1 :: Ptr (TQTableView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTableViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTableView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resetInputContext cobj_x0

foreign import ccall "qtc_QTableView_resetInputContext" qtc_QTableView_resetInputContext :: Ptr (TQTableView a) -> IO ()

instance QresetInputContext (QTableViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resetInputContext cobj_x0

instance Qresize (QTableView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTableView_resize1" qtc_QTableView_resize1 :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance Qresize (QTableViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTableView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_resize" qtc_QTableView_resize :: Ptr (TQTableView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTableViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_resize cobj_x0 cobj_x1

instance Qresize (QTableView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTableView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTableView_resize_qth" qtc_QTableView_resize_qth :: Ptr (TQTableView a) -> CInt -> CInt -> IO ()

instance Qresize (QTableViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTableView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTableView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableView_setGeometry1" qtc_QTableView_setGeometry1 :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTableViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTableView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_setGeometry" qtc_QTableView_setGeometry :: Ptr (TQTableView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTableViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTableView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTableView_setGeometry_qth" qtc_QTableView_setGeometry_qth :: Ptr (TQTableView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTableViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTableView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTableView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setMouseTracking" qtc_QTableView_setMouseTracking :: Ptr (TQTableView a) -> CBool -> IO ()

instance QsetMouseTracking (QTableViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTableView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_setVisible_h" qtc_QTableView_setVisible_h :: Ptr (TQTableView a) -> CBool -> IO ()

instance QsetVisible (QTableViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QTableView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_showEvent_h" qtc_QTableView_showEvent_h :: Ptr (TQTableView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTableViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QTableView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_tabletEvent_h" qtc_QTableView_tabletEvent_h :: Ptr (TQTableView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTableViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTableView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTableView_updateMicroFocus" qtc_QTableView_updateMicroFocus :: Ptr (TQTableView a) -> IO ()

instance QupdateMicroFocus (QTableViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTableView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableView_windowActivationChange" qtc_QTableView_windowActivationChange :: Ptr (TQTableView a) -> CBool -> IO ()

instance QwindowActivationChange (QTableViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTableView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_childEvent" qtc_QTableView_childEvent :: Ptr (TQTableView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTableViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTableView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTableView_connectNotify" qtc_QTableView_connectNotify :: Ptr (TQTableView a) -> CWString -> IO ()

instance QconnectNotify (QTableViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTableView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTableView_customEvent" qtc_QTableView_customEvent :: Ptr (TQTableView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTableViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTableView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTableView_disconnectNotify" qtc_QTableView_disconnectNotify :: Ptr (TQTableView a) -> CWString -> IO ()

instance QdisconnectNotify (QTableViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTableView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTableView_eventFilter_h" qtc_QTableView_eventFilter_h :: Ptr (TQTableView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTableViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTableView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTableView_receivers" qtc_QTableView_receivers :: Ptr (TQTableView a) -> CWString -> IO CInt

instance Qreceivers (QTableViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableView_receivers cobj_x0 cstr_x1

instance Qsender (QTableView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sender cobj_x0

foreign import ccall "qtc_QTableView_sender" qtc_QTableView_sender :: Ptr (TQTableView a) -> IO (Ptr (TQObject ()))

instance Qsender (QTableViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableView_sender cobj_x0

