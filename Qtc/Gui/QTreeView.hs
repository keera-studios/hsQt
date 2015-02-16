{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:23
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTreeView (
  QqTreeView(..)
  ,allColumnsShowFocus
  ,autoExpandDelay
  ,collapse
  ,collapseAll
  ,expand
  ,expandAll
  ,expandToDepth
  ,header
  ,indentation
  ,indexAbove
  ,indexBelow
  ,itemsExpandable
  ,rootIsDecorated
  ,setAllColumnsShowFocus
  ,setAutoExpandDelay
  ,setHeader
  ,setIndentation
  ,setItemsExpandable
  ,setRootIsDecorated
  ,setUniformRowHeights
  ,uniformRowHeights
  ,qTreeView_delete
  ,qTreeView_deleteLater
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

instance QuserMethod (QTreeView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTreeView_userMethod" qtc_QTreeView_userMethod :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QuserMethod (QTreeViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTreeView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTreeView_userMethodVariant" qtc_QTreeView_userMethodVariant :: Ptr (TQTreeView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTreeViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTreeView x1 where
  qTreeView :: x1 -> IO (QTreeView ())

instance QqTreeView (()) where
 qTreeView ()
  = withQTreeViewResult $
    qtc_QTreeView

foreign import ccall "qtc_QTreeView" qtc_QTreeView :: IO (Ptr (TQTreeView ()))

instance QqTreeView ((QWidget t1)) where
 qTreeView (x1)
  = withQTreeViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView1 cobj_x1

foreign import ccall "qtc_QTreeView1" qtc_QTreeView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTreeView ()))

allColumnsShowFocus :: QTreeView a -> (()) -> IO (Bool)
allColumnsShowFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_allColumnsShowFocus cobj_x0

foreign import ccall "qtc_QTreeView_allColumnsShowFocus" qtc_QTreeView_allColumnsShowFocus :: Ptr (TQTreeView a) -> IO CBool

autoExpandDelay :: QTreeView a -> (()) -> IO (Int)
autoExpandDelay x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_autoExpandDelay cobj_x0

foreign import ccall "qtc_QTreeView_autoExpandDelay" qtc_QTreeView_autoExpandDelay :: Ptr (TQTreeView a) -> IO CInt

collapse :: QTreeView a -> ((QModelIndex t1)) -> IO ()
collapse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_collapse cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_collapse" qtc_QTreeView_collapse :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

collapseAll :: QTreeView a -> (()) -> IO ()
collapseAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_collapseAll cobj_x0

foreign import ccall "qtc_QTreeView_collapseAll" qtc_QTreeView_collapseAll :: Ptr (TQTreeView a) -> IO ()

instance QcolumnAt (QTreeView a) ((Int)) where
 columnAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_columnAt" qtc_QTreeView_columnAt :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QcolumnCountChanged (QTreeView ()) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_columnCountChanged" qtc_QTreeView_columnCountChanged :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance QcolumnCountChanged (QTreeViewSc a) ((Int, Int)) where
 columnCountChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnCountChanged cobj_x0 (toCInt x1) (toCInt x2)

instance QcolumnMoved (QTreeView ()) (()) where
 columnMoved x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnMoved cobj_x0

foreign import ccall "qtc_QTreeView_columnMoved" qtc_QTreeView_columnMoved :: Ptr (TQTreeView a) -> IO ()

instance QcolumnMoved (QTreeViewSc a) (()) where
 columnMoved x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnMoved cobj_x0

instance QcolumnResized (QTreeView ()) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_columnResized" qtc_QTreeView_columnResized :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> IO ()

instance QcolumnResized (QTreeViewSc a) ((Int, Int, Int)) where
 columnResized x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnResized cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

instance QcolumnViewportPosition (QTreeView a) ((Int)) where
 columnViewportPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnViewportPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_columnViewportPosition" qtc_QTreeView_columnViewportPosition :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QcolumnWidth (QTreeView a) ((Int)) where
 columnWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_columnWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_columnWidth" qtc_QTreeView_columnWidth :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QcurrentChanged (QTreeView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_currentChanged" qtc_QTreeView_currentChanged :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QTreeViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QTreeView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_dataChanged_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_dataChanged_h" qtc_QTreeView_dataChanged_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QTreeViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_dataChanged_h cobj_x0 cobj_x1 cobj_x2

instance QdoItemsLayout (QTreeView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QTreeView_doItemsLayout_h" qtc_QTreeView_doItemsLayout_h :: Ptr (TQTreeView a) -> IO ()

instance QdoItemsLayout (QTreeViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doItemsLayout_h cobj_x0

instance QdragMoveEvent (QTreeView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragMoveEvent_h" qtc_QTreeView_dragMoveEvent_h :: Ptr (TQTreeView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTreeViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragMoveEvent_h cobj_x0 cobj_x1

instance QqdrawBranches (QTreeView ()) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeView_drawBranches_h" qtc_QTreeView_drawBranches_h :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QqdrawBranches (QTreeViewSc a) ((QPainter t1, QRect t2, QModelIndex t3)) where
 qdrawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawBranches (QTreeView ()) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QTreeView_drawBranches_qth_h" qtc_QTreeView_drawBranches_qth_h :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawBranches (QTreeViewSc a) ((QPainter t1, Rect, QModelIndex t3)) where
 drawBranches x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawBranches_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QdrawRow (QTreeView ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawRow_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTreeView_drawRow_h" qtc_QTreeView_drawRow_h :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawRow (QTreeViewSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawRow x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_drawRow_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawTree (QTreeView ()) ((QPainter t1, QRegion t2)) where
 drawTree x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_drawTree cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_drawTree" qtc_QTreeView_drawTree :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> Ptr (TQRegion t2) -> IO ()

instance QdrawTree (QTreeViewSc a) ((QPainter t1, QRegion t2)) where
 drawTree x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_drawTree cobj_x0 cobj_x1 cobj_x2

expand :: QTreeView a -> ((QModelIndex t1)) -> IO ()
expand x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_expand cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_expand" qtc_QTreeView_expand :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

expandAll :: QTreeView a -> (()) -> IO ()
expandAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_expandAll cobj_x0

foreign import ccall "qtc_QTreeView_expandAll" qtc_QTreeView_expandAll :: Ptr (TQTreeView a) -> IO ()

expandToDepth :: QTreeView a -> ((Int)) -> IO ()
expandToDepth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_expandToDepth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_expandToDepth" qtc_QTreeView_expandToDepth :: Ptr (TQTreeView a) -> CInt -> IO ()

header :: QTreeView a -> (()) -> IO (QHeaderView ())
header x0 ()
  = withQHeaderViewResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_header cobj_x0

foreign import ccall "qtc_QTreeView_header" qtc_QTreeView_header :: Ptr (TQTreeView a) -> IO (Ptr (TQHeaderView ()))

instance QhideColumn (QTreeView a) ((Int)) where
 hideColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_hideColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_hideColumn" qtc_QTreeView_hideColumn :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QhorizontalOffset (QTreeView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalOffset_h cobj_x0

foreign import ccall "qtc_QTreeView_horizontalOffset_h" qtc_QTreeView_horizontalOffset_h :: Ptr (TQTreeView a) -> IO CInt

instance QhorizontalOffset (QTreeViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalOffset_h cobj_x0

instance QhorizontalScrollbarAction (QTreeView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_horizontalScrollbarAction" qtc_QTreeView_horizontalScrollbarAction :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QTreeViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalScrollbarAction cobj_x0 (toCInt x1)

indentation :: QTreeView a -> (()) -> IO (Int)
indentation x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_indentation cobj_x0

foreign import ccall "qtc_QTreeView_indentation" qtc_QTreeView_indentation :: Ptr (TQTreeView a) -> IO CInt

indexAbove :: QTreeView a -> ((QModelIndex t1)) -> IO (QModelIndex ())
indexAbove x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexAbove cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_indexAbove" qtc_QTreeView_indexAbove :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QTreeView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeView_indexAt_qth_h" qtc_QTreeView_indexAt_qth_h :: Ptr (TQTreeView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QTreeViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QTreeView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_indexAt_h" qtc_QTreeView_indexAt_h :: Ptr (TQTreeView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QTreeViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexAt_h cobj_x0 cobj_x1

indexBelow :: QTreeView a -> ((QModelIndex t1)) -> IO (QModelIndex ())
indexBelow x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexBelow cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_indexBelow" qtc_QTreeView_indexBelow :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QindexRowSizeHint (QTreeView ()) ((QModelIndex t1)) where
 indexRowSizeHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexRowSizeHint cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_indexRowSizeHint" qtc_QTreeView_indexRowSizeHint :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QindexRowSizeHint (QTreeViewSc a) ((QModelIndex t1)) where
 indexRowSizeHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_indexRowSizeHint cobj_x0 cobj_x1

instance QisAnimated (QTreeView a) (()) where
 isAnimated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_isAnimated cobj_x0

foreign import ccall "qtc_QTreeView_isAnimated" qtc_QTreeView_isAnimated :: Ptr (TQTreeView a) -> IO CBool

instance QisColumnHidden (QTreeView a) ((Int)) where
 isColumnHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_isColumnHidden cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_isColumnHidden" qtc_QTreeView_isColumnHidden :: Ptr (TQTreeView a) -> CInt -> IO CBool

instance QisExpanded (QTreeView a) ((QModelIndex t1)) where
 isExpanded x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_isExpanded cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_isExpanded" qtc_QTreeView_isExpanded :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisFirstColumnSpanned (QTreeView a) ((Int, QModelIndex t2)) where
 isFirstColumnSpanned x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_isFirstColumnSpanned cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeView_isFirstColumnSpanned" qtc_QTreeView_isFirstColumnSpanned :: Ptr (TQTreeView a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QisIndexHidden (QTreeView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_isIndexHidden" qtc_QTreeView_isIndexHidden :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QTreeViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_isIndexHidden cobj_x0 cobj_x1

instance QisRowHidden (QTreeView a) ((Int, QModelIndex t2)) where
 isRowHidden x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_isRowHidden cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeView_isRowHidden" qtc_QTreeView_isRowHidden :: Ptr (TQTreeView a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QisSortingEnabled (QTreeView ()) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_isSortingEnabled cobj_x0

foreign import ccall "qtc_QTreeView_isSortingEnabled" qtc_QTreeView_isSortingEnabled :: Ptr (TQTreeView a) -> IO CBool

instance QisSortingEnabled (QTreeViewSc a) (()) where
 isSortingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_isSortingEnabled cobj_x0

itemsExpandable :: QTreeView a -> (()) -> IO (Bool)
itemsExpandable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_itemsExpandable cobj_x0

foreign import ccall "qtc_QTreeView_itemsExpandable" qtc_QTreeView_itemsExpandable :: Ptr (TQTreeView a) -> IO CBool

instance QkeyPressEvent (QTreeView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_keyPressEvent_h" qtc_QTreeView_keyPressEvent_h :: Ptr (TQTreeView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTreeViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QTreeView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeView_keyboardSearch_h" qtc_QTreeView_keyboardSearch_h :: Ptr (TQTreeView a) -> CWString -> IO ()

instance QkeyboardSearch (QTreeViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QTreeView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseDoubleClickEvent_h" qtc_QTreeView_mouseDoubleClickEvent_h :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTreeView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseMoveEvent_h" qtc_QTreeView_mouseMoveEvent_h :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTreeView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mousePressEvent_h" qtc_QTreeView_mousePressEvent_h :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTreeViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTreeView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_mouseReleaseEvent_h" qtc_QTreeView_mouseReleaseEvent_h :: Ptr (TQTreeView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTreeViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QTreeView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_moveCursor_h" qtc_QTreeView_moveCursor_h :: Ptr (TQTreeView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QTreeViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QTreeView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_paintEvent_h" qtc_QTreeView_paintEvent_h :: Ptr (TQTreeView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTreeViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paintEvent_h cobj_x0 cobj_x1

instance Qreexpand (QTreeView ()) (()) where
 reexpand x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reexpand cobj_x0

foreign import ccall "qtc_QTreeView_reexpand" qtc_QTreeView_reexpand :: Ptr (TQTreeView a) -> IO ()

instance Qreexpand (QTreeViewSc a) (()) where
 reexpand x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reexpand cobj_x0

instance Qreset (QTreeView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reset_h cobj_x0

foreign import ccall "qtc_QTreeView_reset_h" qtc_QTreeView_reset_h :: Ptr (TQTreeView a) -> IO ()

instance Qreset (QTreeViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_reset_h cobj_x0

instance QresizeColumnToContents (QTreeView a) ((Int)) where
 resizeColumnToContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_resizeColumnToContents cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_resizeColumnToContents" qtc_QTreeView_resizeColumnToContents :: Ptr (TQTreeView a) -> CInt -> IO ()

rootIsDecorated :: QTreeView a -> (()) -> IO (Bool)
rootIsDecorated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_rootIsDecorated cobj_x0

foreign import ccall "qtc_QTreeView_rootIsDecorated" qtc_QTreeView_rootIsDecorated :: Ptr (TQTreeView a) -> IO CBool

instance QrowHeight (QTreeView ()) ((QModelIndex t1)) where
 rowHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowHeight cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_rowHeight" qtc_QTreeView_rowHeight :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowHeight (QTreeViewSc a) ((QModelIndex t1)) where
 rowHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowHeight cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QTreeView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsAboutToBeRemoved_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_rowsAboutToBeRemoved_h" qtc_QTreeView_rowsAboutToBeRemoved_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QTreeViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsAboutToBeRemoved_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QTreeView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsInserted_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_rowsInserted_h" qtc_QTreeView_rowsInserted_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QTreeViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsInserted_h cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsRemoved (QTreeView ()) ((QModelIndex t1, Int, Int)) where
 rowsRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTreeView_rowsRemoved" qtc_QTreeView_rowsRemoved :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsRemoved (QTreeViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_rowsRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QTreeView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_scrollContentsBy_h" qtc_QTreeView_scrollContentsBy_h :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTreeViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QTreeView ()) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_scrollTo_h" qtc_QTreeView_scrollTo_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo (QTreeViewSc a) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo_h cobj_x0 cobj_x1

instance QscrollTo (QTreeView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeView_scrollTo1_h" qtc_QTreeView_scrollTo1_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QTreeViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectAll (QTreeView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_selectAll_h cobj_x0

foreign import ccall "qtc_QTreeView_selectAll_h" qtc_QTreeView_selectAll_h :: Ptr (TQTreeView a) -> IO ()

instance QselectAll (QTreeViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_selectAll_h cobj_x0

instance QselectionChanged (QTreeView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_selectionChanged" qtc_QTreeView_selectionChanged :: Ptr (TQTreeView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QTreeViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_selectionChanged cobj_x0 cobj_x1 cobj_x2

setAllColumnsShowFocus :: QTreeView a -> ((Bool)) -> IO ()
setAllColumnsShowFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setAllColumnsShowFocus cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setAllColumnsShowFocus" qtc_QTreeView_setAllColumnsShowFocus :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetAnimated (QTreeView a) ((Bool)) where
 setAnimated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setAnimated cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setAnimated" qtc_QTreeView_setAnimated :: Ptr (TQTreeView a) -> CBool -> IO ()

setAutoExpandDelay :: QTreeView a -> ((Int)) -> IO ()
setAutoExpandDelay x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setAutoExpandDelay cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_setAutoExpandDelay" qtc_QTreeView_setAutoExpandDelay :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QsetColumnHidden (QTreeView a) ((Int, Bool)) where
 setColumnHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setColumnHidden cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QTreeView_setColumnHidden" qtc_QTreeView_setColumnHidden :: Ptr (TQTreeView a) -> CInt -> CBool -> IO ()

instance QsetColumnWidth (QTreeView a) ((Int, Int)) where
 setColumnWidth x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setColumnWidth cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_setColumnWidth" qtc_QTreeView_setColumnWidth :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance QsetExpanded (QTreeView a) ((QModelIndex t1, Bool)) where
 setExpanded x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setExpanded cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeView_setExpanded" qtc_QTreeView_setExpanded :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CBool -> IO ()

instance QsetFirstColumnSpanned (QTreeView a) ((Int, QModelIndex t2, Bool)) where
 setFirstColumnSpanned x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_setFirstColumnSpanned cobj_x0 (toCInt x1) cobj_x2 (toCBool x3)

foreign import ccall "qtc_QTreeView_setFirstColumnSpanned" qtc_QTreeView_setFirstColumnSpanned :: Ptr (TQTreeView a) -> CInt -> Ptr (TQModelIndex t2) -> CBool -> IO ()

setHeader :: QTreeView a -> ((QHeaderView t1)) -> IO ()
setHeader x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setHeader cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setHeader" qtc_QTreeView_setHeader :: Ptr (TQTreeView a) -> Ptr (TQHeaderView t1) -> IO ()

setIndentation :: QTreeView a -> ((Int)) -> IO ()
setIndentation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setIndentation cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_setIndentation" qtc_QTreeView_setIndentation :: Ptr (TQTreeView a) -> CInt -> IO ()

setItemsExpandable :: QTreeView a -> ((Bool)) -> IO ()
setItemsExpandable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setItemsExpandable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setItemsExpandable" qtc_QTreeView_setItemsExpandable :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetModel (QTreeView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setModel_h" qtc_QTreeView_setModel_h :: Ptr (TQTreeView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QTreeViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setModel_h cobj_x0 cobj_x1

instance QsetRootIndex (QTreeView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setRootIndex_h" qtc_QTreeView_setRootIndex_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QTreeViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setRootIndex_h cobj_x0 cobj_x1

setRootIsDecorated :: QTreeView a -> ((Bool)) -> IO ()
setRootIsDecorated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setRootIsDecorated cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setRootIsDecorated" qtc_QTreeView_setRootIsDecorated :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetRowHidden (QTreeView a) ((Int, QModelIndex t2, Bool)) where
 setRowHidden x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_setRowHidden cobj_x0 (toCInt x1) cobj_x2 (toCBool x3)

foreign import ccall "qtc_QTreeView_setRowHidden" qtc_QTreeView_setRowHidden :: Ptr (TQTreeView a) -> CInt -> Ptr (TQModelIndex t2) -> CBool -> IO ()

instance QqsetSelection (QTreeView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_setSelection_h" qtc_QTreeView_setSelection_h :: Ptr (TQTreeView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QTreeViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QTreeView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTreeView_setSelection_qth_h" qtc_QTreeView_setSelection_qth_h :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QTreeViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSelectionModel (QTreeView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setSelectionModel_h" qtc_QTreeView_setSelectionModel_h :: Ptr (TQTreeView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QTreeViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setSelectionModel_h cobj_x0 cobj_x1

instance QsetSortingEnabled (QTreeView ()) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setSortingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setSortingEnabled" qtc_QTreeView_setSortingEnabled :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetSortingEnabled (QTreeViewSc a) ((Bool)) where
 setSortingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setSortingEnabled cobj_x0 (toCBool x1)

setUniformRowHeights :: QTreeView a -> ((Bool)) -> IO ()
setUniformRowHeights x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setUniformRowHeights cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setUniformRowHeights" qtc_QTreeView_setUniformRowHeights :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetWordWrap (QTreeView a) ((Bool)) where
 setWordWrap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setWordWrap cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setWordWrap" qtc_QTreeView_setWordWrap :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QshowColumn (QTreeView a) ((Int)) where
 showColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_showColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_showColumn" qtc_QTreeView_showColumn :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QsizeHintForColumn (QTreeView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_sizeHintForColumn" qtc_QTreeView_sizeHintForColumn :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QTreeViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForColumn cobj_x0 (toCInt x1)

instance QsortByColumn (QTreeView a) ((Int)) where
 sortByColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sortByColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_sortByColumn" qtc_QTreeView_sortByColumn :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QsortByColumn (QTreeView a) ((Int, SortOrder)) where
 sortByColumn x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sortByColumn1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeView_sortByColumn1" qtc_QTreeView_sortByColumn1 :: Ptr (TQTreeView a) -> CInt -> CLong -> IO ()

instance QtimerEvent (QTreeView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_timerEvent" qtc_QTreeView_timerEvent :: Ptr (TQTreeView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTreeViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_timerEvent cobj_x0 cobj_x1

uniformRowHeights :: QTreeView a -> (()) -> IO (Bool)
uniformRowHeights x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_uniformRowHeights cobj_x0

foreign import ccall "qtc_QTreeView_uniformRowHeights" qtc_QTreeView_uniformRowHeights :: Ptr (TQTreeView a) -> IO CBool

instance QupdateGeometries (QTreeView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateGeometries cobj_x0

foreign import ccall "qtc_QTreeView_updateGeometries" qtc_QTreeView_updateGeometries :: Ptr (TQTreeView a) -> IO ()

instance QupdateGeometries (QTreeViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateGeometries cobj_x0

instance QverticalOffset (QTreeView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalOffset_h cobj_x0

foreign import ccall "qtc_QTreeView_verticalOffset_h" qtc_QTreeView_verticalOffset_h :: Ptr (TQTreeView a) -> IO CInt

instance QverticalOffset (QTreeViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalOffset_h cobj_x0

instance QviewportEvent (QTreeView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_viewportEvent_h" qtc_QTreeView_viewportEvent_h :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTreeViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_viewportEvent_h cobj_x0 cobj_x1

instance QqvisualRect (QTreeView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_visualRect_h" qtc_QTreeView_visualRect_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QTreeViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QTreeView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTreeView_visualRect_qth_h" qtc_QTreeView_visualRect_qth_h :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QTreeViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QTreeView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRegionForSelection_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_visualRegionForSelection_h" qtc_QTreeView_visualRegionForSelection_h :: Ptr (TQTreeView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QTreeViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_visualRegionForSelection_h cobj_x0 cobj_x1

instance QwordWrap (QTreeView a) (()) where
 wordWrap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_wordWrap cobj_x0

foreign import ccall "qtc_QTreeView_wordWrap" qtc_QTreeView_wordWrap :: Ptr (TQTreeView a) -> IO CBool

qTreeView_delete :: QTreeView a -> IO ()
qTreeView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_delete cobj_x0

foreign import ccall "qtc_QTreeView_delete" qtc_QTreeView_delete :: Ptr (TQTreeView a) -> IO ()

qTreeView_deleteLater :: QTreeView a -> IO ()
qTreeView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_deleteLater cobj_x0

foreign import ccall "qtc_QTreeView_deleteLater" qtc_QTreeView_deleteLater :: Ptr (TQTreeView a) -> IO ()

instance QcloseEditor (QTreeView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeView_closeEditor" qtc_QTreeView_closeEditor :: Ptr (TQTreeView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QTreeViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QTreeView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_commitData" qtc_QTreeView_commitData :: Ptr (TQTreeView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QTreeViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QTreeView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QTreeView_dirtyRegionOffset_qth" qtc_QTreeView_dirtyRegionOffset_qth :: Ptr (TQTreeView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QTreeViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QTreeView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QTreeView_dirtyRegionOffset" qtc_QTreeView_dirtyRegionOffset :: Ptr (TQTreeView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QTreeViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QTreeView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doAutoScroll cobj_x0

foreign import ccall "qtc_QTreeView_doAutoScroll" qtc_QTreeView_doAutoScroll :: Ptr (TQTreeView a) -> IO ()

instance QdoAutoScroll (QTreeViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_doAutoScroll cobj_x0

instance QdragEnterEvent (QTreeView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragEnterEvent_h" qtc_QTreeView_dragEnterEvent_h :: Ptr (TQTreeView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTreeViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTreeView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dragLeaveEvent_h" qtc_QTreeView_dragLeaveEvent_h :: Ptr (TQTreeView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTreeViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTreeView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_dropEvent_h" qtc_QTreeView_dropEvent_h :: Ptr (TQTreeView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTreeViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_dropEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QTreeView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QTreeView_dropIndicatorPosition" qtc_QTreeView_dropIndicatorPosition :: Ptr (TQTreeView a) -> IO CLong

instance QdropIndicatorPosition (QTreeViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_dropIndicatorPosition cobj_x0

instance Qedit (QTreeView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QTreeView_edit" qtc_QTreeView_edit :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QTreeViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QTreeView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_editorDestroyed" qtc_QTreeView_editorDestroyed :: Ptr (TQTreeView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QTreeViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_editorDestroyed cobj_x0 cobj_x1

instance Qevent (QTreeView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_event_h" qtc_QTreeView_event_h :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTreeViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_event_h cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QTreeView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTreeView_executeDelayedItemsLayout" qtc_QTreeView_executeDelayedItemsLayout :: Ptr (TQTreeView a) -> IO ()

instance QexecuteDelayedItemsLayout (QTreeViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QTreeView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_focusInEvent_h" qtc_QTreeView_focusInEvent_h :: Ptr (TQTreeView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTreeViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTreeView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_focusNextPrevChild" qtc_QTreeView_focusNextPrevChild :: Ptr (TQTreeView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTreeViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTreeView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_focusOutEvent_h" qtc_QTreeView_focusOutEvent_h :: Ptr (TQTreeView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTreeViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarValueChanged (QTreeView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_horizontalScrollbarValueChanged" qtc_QTreeView_horizontalScrollbarValueChanged :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QTreeViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QTreeView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QTreeView_horizontalStepsPerItem" qtc_QTreeView_horizontalStepsPerItem :: Ptr (TQTreeView a) -> IO CInt

instance QhorizontalStepsPerItem (QTreeViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QTreeView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_inputMethodEvent" qtc_QTreeView_inputMethodEvent :: Ptr (TQTreeView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTreeViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTreeView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeView_inputMethodQuery_h" qtc_QTreeView_inputMethodQuery_h :: Ptr (TQTreeView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTreeViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QresizeEvent (QTreeView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_resizeEvent_h" qtc_QTreeView_resizeEvent_h :: Ptr (TQTreeView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTreeViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resizeEvent_h cobj_x0 cobj_x1

instance QscheduleDelayedItemsLayout (QTreeView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QTreeView_scheduleDelayedItemsLayout" qtc_QTreeView_scheduleDelayedItemsLayout :: Ptr (TQTreeView a) -> IO ()

instance QscheduleDelayedItemsLayout (QTreeViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QTreeView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_scrollDirtyRegion" qtc_QTreeView_scrollDirtyRegion :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QTreeViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectionCommand (QTreeView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_selectionCommand" qtc_QTreeView_selectionCommand :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QTreeViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QTreeView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_selectionCommand1" qtc_QTreeView_selectionCommand1 :: Ptr (TQTreeView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QTreeViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QTreeView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setDirtyRegion" qtc_QTreeView_setDirtyRegion :: Ptr (TQTreeView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QTreeViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QTreeView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_setHorizontalStepsPerItem" qtc_QTreeView_setHorizontalStepsPerItem :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QTreeViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetState (QTreeView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeView_setState" qtc_QTreeView_setState :: Ptr (TQTreeView a) -> CLong -> IO ()

instance QsetState (QTreeViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QTreeView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_setVerticalStepsPerItem" qtc_QTreeView_setVerticalStepsPerItem :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QTreeViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForRow (QTreeView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_sizeHintForRow_h" qtc_QTreeView_sizeHintForRow_h :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QsizeHintForRow (QTreeViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QTreeView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_startAutoScroll cobj_x0

foreign import ccall "qtc_QTreeView_startAutoScroll" qtc_QTreeView_startAutoScroll :: Ptr (TQTreeView a) -> IO ()

instance QstartAutoScroll (QTreeViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_startAutoScroll cobj_x0

instance QstartDrag (QTreeView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTreeView_startDrag" qtc_QTreeView_startDrag :: Ptr (TQTreeView a) -> CLong -> IO ()

instance QstartDrag (QTreeViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QTreeView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_state cobj_x0

foreign import ccall "qtc_QTreeView_state" qtc_QTreeView_state :: Ptr (TQTreeView a) -> IO CLong

instance Qstate (QTreeViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_state cobj_x0

instance QstopAutoScroll (QTreeView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QTreeView_stopAutoScroll" qtc_QTreeView_stopAutoScroll :: Ptr (TQTreeView a) -> IO ()

instance QstopAutoScroll (QTreeViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_stopAutoScroll cobj_x0

instance QupdateEditorData (QTreeView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateEditorData cobj_x0

foreign import ccall "qtc_QTreeView_updateEditorData" qtc_QTreeView_updateEditorData :: Ptr (TQTreeView a) -> IO ()

instance QupdateEditorData (QTreeViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QTreeView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QTreeView_updateEditorGeometries" qtc_QTreeView_updateEditorGeometries :: Ptr (TQTreeView a) -> IO ()

instance QupdateEditorGeometries (QTreeViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QTreeView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_verticalScrollbarAction" qtc_QTreeView_verticalScrollbarAction :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QTreeViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QTreeView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_verticalScrollbarValueChanged" qtc_QTreeView_verticalScrollbarValueChanged :: Ptr (TQTreeView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QTreeViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QTreeView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QTreeView_verticalStepsPerItem" qtc_QTreeView_verticalStepsPerItem :: Ptr (TQTreeView a) -> IO CInt

instance QverticalStepsPerItem (QTreeViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_verticalStepsPerItem cobj_x0

instance QviewOptions (QTreeView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_viewOptions cobj_x0

foreign import ccall "qtc_QTreeView_viewOptions" qtc_QTreeView_viewOptions :: Ptr (TQTreeView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QTreeViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_viewOptions cobj_x0

instance QcontextMenuEvent (QTreeView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_contextMenuEvent_h" qtc_QTreeView_contextMenuEvent_h :: Ptr (TQTreeView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTreeViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTreeView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTreeView_minimumSizeHint_h" qtc_QTreeView_minimumSizeHint_h :: Ptr (TQTreeView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTreeViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTreeView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeView_minimumSizeHint_qth_h" qtc_QTreeView_minimumSizeHint_qth_h :: Ptr (TQTreeView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTreeViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTreeView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeView_setViewportMargins" qtc_QTreeView_setViewportMargins :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTreeViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTreeView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setupViewport" qtc_QTreeView_setupViewport :: Ptr (TQTreeView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTreeViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTreeView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_h cobj_x0

foreign import ccall "qtc_QTreeView_sizeHint_h" qtc_QTreeView_sizeHint_h :: Ptr (TQTreeView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTreeViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_h cobj_x0

instance QsizeHint (QTreeView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeView_sizeHint_qth_h" qtc_QTreeView_sizeHint_qth_h :: Ptr (TQTreeView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTreeViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QTreeView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_wheelEvent_h" qtc_QTreeView_wheelEvent_h :: Ptr (TQTreeView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTreeViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QTreeView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_changeEvent_h" qtc_QTreeView_changeEvent_h :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTreeViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTreeView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_drawFrame" qtc_QTreeView_drawFrame :: Ptr (TQTreeView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTreeViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTreeView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_actionEvent_h" qtc_QTreeView_actionEvent_h :: Ptr (TQTreeView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTreeViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTreeView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_addAction" qtc_QTreeView_addAction :: Ptr (TQTreeView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTreeViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTreeView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_closeEvent_h" qtc_QTreeView_closeEvent_h :: Ptr (TQTreeView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTreeViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTreeView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_create cobj_x0

foreign import ccall "qtc_QTreeView_create" qtc_QTreeView_create :: Ptr (TQTreeView a) -> IO ()

instance Qcreate (QTreeViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_create cobj_x0

instance Qcreate (QTreeView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_create1" qtc_QTreeView_create1 :: Ptr (TQTreeView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTreeViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create1 cobj_x0 cobj_x1

instance Qcreate (QTreeView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTreeView_create2" qtc_QTreeView_create2 :: Ptr (TQTreeView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTreeViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTreeView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTreeView_create3" qtc_QTreeView_create3 :: Ptr (TQTreeView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTreeViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTreeView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy cobj_x0

foreign import ccall "qtc_QTreeView_destroy" qtc_QTreeView_destroy :: Ptr (TQTreeView a) -> IO ()

instance Qdestroy (QTreeViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy cobj_x0

instance Qdestroy (QTreeView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_destroy1" qtc_QTreeView_destroy1 :: Ptr (TQTreeView a) -> CBool -> IO ()

instance Qdestroy (QTreeViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTreeView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTreeView_destroy2" qtc_QTreeView_destroy2 :: Ptr (TQTreeView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTreeViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTreeView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_devType_h cobj_x0

foreign import ccall "qtc_QTreeView_devType_h" qtc_QTreeView_devType_h :: Ptr (TQTreeView a) -> IO CInt

instance QdevType (QTreeViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_devType_h cobj_x0

instance QenabledChange (QTreeView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_enabledChange" qtc_QTreeView_enabledChange :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QenabledChange (QTreeViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTreeView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_enterEvent_h" qtc_QTreeView_enterEvent_h :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTreeViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTreeView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusNextChild cobj_x0

foreign import ccall "qtc_QTreeView_focusNextChild" qtc_QTreeView_focusNextChild :: Ptr (TQTreeView a) -> IO CBool

instance QfocusNextChild (QTreeViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusNextChild cobj_x0

instance QfocusPreviousChild (QTreeView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTreeView_focusPreviousChild" qtc_QTreeView_focusPreviousChild :: Ptr (TQTreeView a) -> IO CBool

instance QfocusPreviousChild (QTreeViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_focusPreviousChild cobj_x0

instance QfontChange (QTreeView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_fontChange" qtc_QTreeView_fontChange :: Ptr (TQTreeView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTreeViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTreeView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeView_heightForWidth_h" qtc_QTreeView_heightForWidth_h :: Ptr (TQTreeView a) -> CInt -> IO CInt

instance QheightForWidth (QTreeViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTreeView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_hideEvent_h" qtc_QTreeView_hideEvent_h :: Ptr (TQTreeView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTreeViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTreeView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_keyReleaseEvent_h" qtc_QTreeView_keyReleaseEvent_h :: Ptr (TQTreeView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTreeViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTreeView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_languageChange cobj_x0

foreign import ccall "qtc_QTreeView_languageChange" qtc_QTreeView_languageChange :: Ptr (TQTreeView a) -> IO ()

instance QlanguageChange (QTreeViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_languageChange cobj_x0

instance QleaveEvent (QTreeView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_leaveEvent_h" qtc_QTreeView_leaveEvent_h :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTreeViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTreeView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeView_metric" qtc_QTreeView_metric :: Ptr (TQTreeView a) -> CLong -> IO CInt

instance Qmetric (QTreeViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTreeView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_move1" qtc_QTreeView_move1 :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance Qmove (QTreeViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTreeView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTreeView_move_qth" qtc_QTreeView_move_qth :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance Qmove (QTreeViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTreeView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTreeView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_move" qtc_QTreeView_move :: Ptr (TQTreeView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTreeViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_move cobj_x0 cobj_x1

instance QmoveEvent (QTreeView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_moveEvent_h" qtc_QTreeView_moveEvent_h :: Ptr (TQTreeView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTreeViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTreeView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_paintEngine_h cobj_x0

foreign import ccall "qtc_QTreeView_paintEngine_h" qtc_QTreeView_paintEngine_h :: Ptr (TQTreeView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTreeViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_paintEngine_h cobj_x0

instance QpaletteChange (QTreeView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_paletteChange" qtc_QTreeView_paletteChange :: Ptr (TQTreeView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTreeViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTreeView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_repaint cobj_x0

foreign import ccall "qtc_QTreeView_repaint" qtc_QTreeView_repaint :: Ptr (TQTreeView a) -> IO ()

instance Qrepaint (QTreeViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_repaint cobj_x0

instance Qrepaint (QTreeView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeView_repaint2" qtc_QTreeView_repaint2 :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTreeViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTreeView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_repaint1" qtc_QTreeView_repaint1 :: Ptr (TQTreeView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTreeViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTreeView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_resetInputContext cobj_x0

foreign import ccall "qtc_QTreeView_resetInputContext" qtc_QTreeView_resetInputContext :: Ptr (TQTreeView a) -> IO ()

instance QresetInputContext (QTreeViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_resetInputContext cobj_x0

instance Qresize (QTreeView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeView_resize1" qtc_QTreeView_resize1 :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance Qresize (QTreeViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTreeView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_resize" qtc_QTreeView_resize :: Ptr (TQTreeView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTreeViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_resize cobj_x0 cobj_x1

instance Qresize (QTreeView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTreeView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTreeView_resize_qth" qtc_QTreeView_resize_qth :: Ptr (TQTreeView a) -> CInt -> CInt -> IO ()

instance Qresize (QTreeViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTreeView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTreeView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTreeView_setGeometry1" qtc_QTreeView_setGeometry1 :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTreeViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTreeView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_setGeometry" qtc_QTreeView_setGeometry :: Ptr (TQTreeView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTreeViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTreeView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTreeView_setGeometry_qth" qtc_QTreeView_setGeometry_qth :: Ptr (TQTreeView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTreeViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTreeView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTreeView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setMouseTracking" qtc_QTreeView_setMouseTracking :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetMouseTracking (QTreeViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTreeView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_setVisible_h" qtc_QTreeView_setVisible_h :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QsetVisible (QTreeViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QTreeView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_showEvent_h" qtc_QTreeView_showEvent_h :: Ptr (TQTreeView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTreeViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QTreeView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_tabletEvent_h" qtc_QTreeView_tabletEvent_h :: Ptr (TQTreeView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTreeViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTreeView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTreeView_updateMicroFocus" qtc_QTreeView_updateMicroFocus :: Ptr (TQTreeView a) -> IO ()

instance QupdateMicroFocus (QTreeViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTreeView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeView_windowActivationChange" qtc_QTreeView_windowActivationChange :: Ptr (TQTreeView a) -> CBool -> IO ()

instance QwindowActivationChange (QTreeViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTreeView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_childEvent" qtc_QTreeView_childEvent :: Ptr (TQTreeView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTreeViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTreeView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeView_connectNotify" qtc_QTreeView_connectNotify :: Ptr (TQTreeView a) -> CWString -> IO ()

instance QconnectNotify (QTreeViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTreeView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeView_customEvent" qtc_QTreeView_customEvent :: Ptr (TQTreeView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTreeViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTreeView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeView_disconnectNotify" qtc_QTreeView_disconnectNotify :: Ptr (TQTreeView a) -> CWString -> IO ()

instance QdisconnectNotify (QTreeViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTreeView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeView_eventFilter_h" qtc_QTreeView_eventFilter_h :: Ptr (TQTreeView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTreeViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTreeView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTreeView_receivers" qtc_QTreeView_receivers :: Ptr (TQTreeView a) -> CWString -> IO CInt

instance Qreceivers (QTreeViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTreeView_receivers cobj_x0 cstr_x1

instance Qsender (QTreeView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sender cobj_x0

foreign import ccall "qtc_QTreeView_sender" qtc_QTreeView_sender :: Ptr (TQTreeView a) -> IO (Ptr (TQObject ()))

instance Qsender (QTreeViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeView_sender cobj_x0

