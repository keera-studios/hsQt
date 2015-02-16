{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QListView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:23
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QListView (
  QqListView(..)
  ,batchSize
  ,clearPropertyFlags
  ,flow
  ,qgridSize, gridSize
  ,isSelectionRectVisible
  ,isWrapping
  ,layoutMode
  ,movement
  ,setBatchSize
  ,setFlow
  ,qsetGridSize, setGridSize
  ,setLayoutMode
  ,setMovement
  ,setSelectionRectVisible
  ,setUniformItemSizes
  ,uniformItemSizes
  ,qListView_delete
  ,qListView_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QAbstractItemView
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QListView
import Qtc.Enums.Gui.QAbstractItemDelegate

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QListView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QListView_userMethod" qtc_QListView_userMethod :: Ptr (TQListView a) -> CInt -> IO ()

instance QuserMethod (QListViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QListView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QListView_userMethodVariant" qtc_QListView_userMethodVariant :: Ptr (TQListView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QListViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqListView x1 where
  qListView :: x1 -> IO (QListView ())

instance QqListView (()) where
 qListView ()
  = withQListViewResult $
    qtc_QListView

foreign import ccall "qtc_QListView" qtc_QListView :: IO (Ptr (TQListView ()))

instance QqListView ((QWidget t1)) where
 qListView (x1)
  = withQListViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView1 cobj_x1

foreign import ccall "qtc_QListView1" qtc_QListView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQListView ()))

batchSize :: QListView a -> (()) -> IO (Int)
batchSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_batchSize cobj_x0

foreign import ccall "qtc_QListView_batchSize" qtc_QListView_batchSize :: Ptr (TQListView a) -> IO CInt

clearPropertyFlags :: QListView a -> (()) -> IO ()
clearPropertyFlags x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_clearPropertyFlags cobj_x0

foreign import ccall "qtc_QListView_clearPropertyFlags" qtc_QListView_clearPropertyFlags :: Ptr (TQListView a) -> IO ()

instance QqcontentsSize (QListView ()) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_contentsSize cobj_x0

foreign import ccall "qtc_QListView_contentsSize" qtc_QListView_contentsSize :: Ptr (TQListView a) -> IO (Ptr (TQSize ()))

instance QqcontentsSize (QListViewSc a) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_contentsSize cobj_x0

instance QcontentsSize (QListView ()) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListView_contentsSize_qth" qtc_QListView_contentsSize_qth :: Ptr (TQListView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QcontentsSize (QListViewSc a) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QcurrentChanged (QListView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_currentChanged" qtc_QListView_currentChanged :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QListViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QListView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_dataChanged" qtc_QListView_dataChanged :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QListViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdoItemsLayout (QListView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QListView_doItemsLayout_h" qtc_QListView_doItemsLayout_h :: Ptr (TQListView a) -> IO ()

instance QdoItemsLayout (QListViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_doItemsLayout_h cobj_x0

instance QdragLeaveEvent (QListView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_dragLeaveEvent_h" qtc_QListView_dragLeaveEvent_h :: Ptr (TQListView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QListViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QListView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_dragMoveEvent_h" qtc_QListView_dragMoveEvent_h :: Ptr (TQListView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QListViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QListView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_dropEvent_h" qtc_QListView_dropEvent_h :: Ptr (TQListView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QListViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dropEvent_h cobj_x0 cobj_x1

instance Qevent (QListView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_event_h" qtc_QListView_event_h :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QListViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_event_h cobj_x0 cobj_x1

flow :: QListView a -> (()) -> IO (Flow)
flow x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_flow cobj_x0

foreign import ccall "qtc_QListView_flow" qtc_QListView_flow :: Ptr (TQListView a) -> IO CLong

qgridSize :: QListView a -> (()) -> IO (QSize ())
qgridSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_gridSize cobj_x0

foreign import ccall "qtc_QListView_gridSize" qtc_QListView_gridSize :: Ptr (TQListView a) -> IO (Ptr (TQSize ()))

gridSize :: QListView a -> (()) -> IO (Size)
gridSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_gridSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListView_gridSize_qth" qtc_QListView_gridSize_qth :: Ptr (TQListView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QhorizontalOffset (QListView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalOffset cobj_x0

foreign import ccall "qtc_QListView_horizontalOffset" qtc_QListView_horizontalOffset :: Ptr (TQListView a) -> IO CInt

instance QhorizontalOffset (QListViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalOffset cobj_x0

instance QindexAt (QListView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QListView_indexAt_qth_h" qtc_QListView_indexAt_qth_h :: Ptr (TQListView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QListViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QListView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_indexAt_h" qtc_QListView_indexAt_h :: Ptr (TQListView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QListViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_indexAt_h cobj_x0 cobj_x1

instance QinternalDrag (QListView ()) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QListView_internalDrag" qtc_QListView_internalDrag :: Ptr (TQListView a) -> CLong -> IO ()

instance QinternalDrag (QListViewSc a) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QinternalDrop (QListView ()) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_internalDrop cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_internalDrop" qtc_QListView_internalDrop :: Ptr (TQListView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QinternalDrop (QListViewSc a) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_internalDrop cobj_x0 cobj_x1

instance QisIndexHidden (QListView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_isIndexHidden" qtc_QListView_isIndexHidden :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QListViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_isIndexHidden cobj_x0 cobj_x1

instance QisRowHidden (QListView a) ((Int)) where
 isRowHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_isRowHidden cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_isRowHidden" qtc_QListView_isRowHidden :: Ptr (TQListView a) -> CInt -> IO CBool

isSelectionRectVisible :: QListView a -> (()) -> IO (Bool)
isSelectionRectVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_isSelectionRectVisible cobj_x0

foreign import ccall "qtc_QListView_isSelectionRectVisible" qtc_QListView_isSelectionRectVisible :: Ptr (TQListView a) -> IO CBool

isWrapping :: QListView a -> (()) -> IO (Bool)
isWrapping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_isWrapping cobj_x0

foreign import ccall "qtc_QListView_isWrapping" qtc_QListView_isWrapping :: Ptr (TQListView a) -> IO CBool

layoutMode :: QListView a -> (()) -> IO (LayoutMode)
layoutMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_layoutMode cobj_x0

foreign import ccall "qtc_QListView_layoutMode" qtc_QListView_layoutMode :: Ptr (TQListView a) -> IO CLong

instance QmodelColumn (QListView a) (()) where
 modelColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_modelColumn cobj_x0

foreign import ccall "qtc_QListView_modelColumn" qtc_QListView_modelColumn :: Ptr (TQListView a) -> IO CInt

instance QmouseMoveEvent (QListView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_mouseMoveEvent_h" qtc_QListView_mouseMoveEvent_h :: Ptr (TQListView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QListViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QListView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_mouseReleaseEvent_h" qtc_QListView_mouseReleaseEvent_h :: Ptr (TQListView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QListViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QListView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListView_moveCursor" qtc_QListView_moveCursor :: Ptr (TQListView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QListViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

movement :: QListView a -> (()) -> IO (Movement)
movement x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_movement cobj_x0

foreign import ccall "qtc_QListView_movement" qtc_QListView_movement :: Ptr (TQListView a) -> IO CLong

instance QpaintEvent (QListView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_paintEvent_h" qtc_QListView_paintEvent_h :: Ptr (TQListView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QListViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_paintEvent_h cobj_x0 cobj_x1

instance QqrectForIndex (QListView ()) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rectForIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_rectForIndex" qtc_QListView_rectForIndex :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqrectForIndex (QListViewSc a) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rectForIndex cobj_x0 cobj_x1

instance QrectForIndex (QListView ()) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QListView_rectForIndex_qth" qtc_QListView_rectForIndex_qth :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QrectForIndex (QListViewSc a) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance Qreset (QListView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_reset_h cobj_x0

foreign import ccall "qtc_QListView_reset_h" qtc_QListView_reset_h :: Ptr (TQListView a) -> IO ()

instance Qreset (QListViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_reset_h cobj_x0

instance QresizeContents (QListView ()) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListView_resizeContents" qtc_QListView_resizeContents :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance QresizeContents (QListViewSc a) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

instance QresizeEvent (QListView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_resizeEvent_h" qtc_QListView_resizeEvent_h :: Ptr (TQListView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QListViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_resizeEvent_h cobj_x0 cobj_x1

instance QresizeMode (QListView a) (()) (IO (QListViewResizeMode)) where
 resizeMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resizeMode cobj_x0

foreign import ccall "qtc_QListView_resizeMode" qtc_QListView_resizeMode :: Ptr (TQListView a) -> IO CLong

instance QrowsAboutToBeRemoved (QListView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QListView_rowsAboutToBeRemoved" qtc_QListView_rowsAboutToBeRemoved :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QListViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QListView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QListView_rowsInserted" qtc_QListView_rowsInserted :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QListViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QListView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListView_scrollContentsBy_h" qtc_QListView_scrollContentsBy_h :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QListViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QListView a) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_scrollTo cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_scrollTo" qtc_QListView_scrollTo :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo (QListView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QListView_scrollTo1_h" qtc_QListView_scrollTo1_h :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QListViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectedIndexes (QListView ()) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QListView_selectedIndexes" qtc_QListView_selectedIndexes :: Ptr (TQListView a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QListViewSc a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_selectedIndexes cobj_x0 arr

instance QselectionChanged (QListView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_selectionChanged" qtc_QListView_selectionChanged :: Ptr (TQListView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QListViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_selectionChanged cobj_x0 cobj_x1 cobj_x2

setBatchSize :: QListView a -> ((Int)) -> IO ()
setBatchSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setBatchSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_setBatchSize" qtc_QListView_setBatchSize :: Ptr (TQListView a) -> CInt -> IO ()

setFlow :: QListView a -> ((Flow)) -> IO ()
setFlow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setFlow cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setFlow" qtc_QListView_setFlow :: Ptr (TQListView a) -> CLong -> IO ()

qsetGridSize :: QListView a -> ((QSize t1)) -> IO ()
qsetGridSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setGridSize cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setGridSize" qtc_QListView_setGridSize :: Ptr (TQListView a) -> Ptr (TQSize t1) -> IO ()

setGridSize :: QListView a -> ((Size)) -> IO ()
setGridSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListView_setGridSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QListView_setGridSize_qth" qtc_QListView_setGridSize_qth :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

setLayoutMode :: QListView a -> ((LayoutMode)) -> IO ()
setLayoutMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setLayoutMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setLayoutMode" qtc_QListView_setLayoutMode :: Ptr (TQListView a) -> CLong -> IO ()

instance QsetModelColumn (QListView a) ((Int)) where
 setModelColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setModelColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_setModelColumn" qtc_QListView_setModelColumn :: Ptr (TQListView a) -> CInt -> IO ()

setMovement :: QListView a -> ((Movement)) -> IO ()
setMovement x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setMovement cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setMovement" qtc_QListView_setMovement :: Ptr (TQListView a) -> CLong -> IO ()

instance QsetPositionForIndex (QListView ()) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QListView_setPositionForIndex_qth" qtc_QListView_setPositionForIndex_qth :: Ptr (TQListView a) -> CInt -> CInt -> Ptr (TQModelIndex t2) -> IO ()

instance QsetPositionForIndex (QListViewSc a) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

instance QqsetPositionForIndex (QListView ()) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_setPositionForIndex" qtc_QListView_setPositionForIndex :: Ptr (TQListView a) -> Ptr (TQPoint t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QqsetPositionForIndex (QListViewSc a) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

instance QsetResizeMode (QListView a) ((QListViewResizeMode)) where
 setResizeMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setResizeMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setResizeMode" qtc_QListView_setResizeMode :: Ptr (TQListView a) -> CLong -> IO ()

instance QsetRootIndex (QListView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setRootIndex_h" qtc_QListView_setRootIndex_h :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QListViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setRootIndex_h cobj_x0 cobj_x1

instance QsetRowHidden (QListView a) ((Int, Bool)) where
 setRowHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setRowHidden cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QListView_setRowHidden" qtc_QListView_setRowHidden :: Ptr (TQListView a) -> CInt -> CBool -> IO ()

instance QqsetSelection (QListView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListView_setSelection" qtc_QListView_setSelection :: Ptr (TQListView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QListViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QListView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QListView_setSelection_qth" qtc_QListView_setSelection_qth :: Ptr (TQListView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QListViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

setSelectionRectVisible :: QListView a -> ((Bool)) -> IO ()
setSelectionRectVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setSelectionRectVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setSelectionRectVisible" qtc_QListView_setSelectionRectVisible :: Ptr (TQListView a) -> CBool -> IO ()

instance QsetSpacing (QListView ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_setSpacing" qtc_QListView_setSpacing :: Ptr (TQListView a) -> CInt -> IO ()

instance QsetSpacing (QListViewSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setSpacing cobj_x0 (toCInt x1)

setUniformItemSizes :: QListView a -> ((Bool)) -> IO ()
setUniformItemSizes x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setUniformItemSizes cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setUniformItemSizes" qtc_QListView_setUniformItemSizes :: Ptr (TQListView a) -> CBool -> IO ()

instance QsetViewMode (QListView a) ((QListViewViewMode)) where
 setViewMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setViewMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setViewMode" qtc_QListView_setViewMode :: Ptr (TQListView a) -> CLong -> IO ()

instance QsetWordWrap (QListView a) ((Bool)) where
 setWordWrap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setWordWrap cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setWordWrap" qtc_QListView_setWordWrap :: Ptr (TQListView a) -> CBool -> IO ()

instance QsetWrapping (QListView a) ((Bool)) where
 setWrapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setWrapping cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setWrapping" qtc_QListView_setWrapping :: Ptr (TQListView a) -> CBool -> IO ()

instance Qspacing (QListView ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_spacing cobj_x0

foreign import ccall "qtc_QListView_spacing" qtc_QListView_spacing :: Ptr (TQListView a) -> IO CInt

instance Qspacing (QListViewSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_spacing cobj_x0

instance QstartDrag (QListView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QListView_startDrag" qtc_QListView_startDrag :: Ptr (TQListView a) -> CLong -> IO ()

instance QstartDrag (QListViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QtimerEvent (QListView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_timerEvent" qtc_QListView_timerEvent :: Ptr (TQListView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QListViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_timerEvent cobj_x0 cobj_x1

uniformItemSizes :: QListView a -> (()) -> IO (Bool)
uniformItemSizes x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_uniformItemSizes cobj_x0

foreign import ccall "qtc_QListView_uniformItemSizes" qtc_QListView_uniformItemSizes :: Ptr (TQListView a) -> IO CBool

instance QupdateGeometries (QListView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateGeometries cobj_x0

foreign import ccall "qtc_QListView_updateGeometries" qtc_QListView_updateGeometries :: Ptr (TQListView a) -> IO ()

instance QupdateGeometries (QListViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateGeometries cobj_x0

instance QverticalOffset (QListView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalOffset cobj_x0

foreign import ccall "qtc_QListView_verticalOffset" qtc_QListView_verticalOffset :: Ptr (TQListView a) -> IO CInt

instance QverticalOffset (QListViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalOffset cobj_x0

instance QviewMode (QListView a) (()) (IO (QListViewViewMode)) where
 viewMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_viewMode cobj_x0

foreign import ccall "qtc_QListView_viewMode" qtc_QListView_viewMode :: Ptr (TQListView a) -> IO CLong

instance QviewOptions (QListView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_viewOptions cobj_x0

foreign import ccall "qtc_QListView_viewOptions" qtc_QListView_viewOptions :: Ptr (TQListView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QListViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_viewOptions cobj_x0

instance QqvisualRect (QListView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_visualRect_h" qtc_QListView_visualRect_h :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QListViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QListView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QListView_visualRect_qth_h" qtc_QListView_visualRect_qth_h :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QListViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QListView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_visualRegionForSelection" qtc_QListView_visualRegionForSelection :: Ptr (TQListView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QListViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_visualRegionForSelection cobj_x0 cobj_x1

instance QwordWrap (QListView a) (()) where
 wordWrap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_wordWrap cobj_x0

foreign import ccall "qtc_QListView_wordWrap" qtc_QListView_wordWrap :: Ptr (TQListView a) -> IO CBool

qListView_delete :: QListView a -> IO ()
qListView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_delete cobj_x0

foreign import ccall "qtc_QListView_delete" qtc_QListView_delete :: Ptr (TQListView a) -> IO ()

qListView_deleteLater :: QListView a -> IO ()
qListView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_deleteLater cobj_x0

foreign import ccall "qtc_QListView_deleteLater" qtc_QListView_deleteLater :: Ptr (TQListView a) -> IO ()

instance QcloseEditor (QListView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QListView_closeEditor" qtc_QListView_closeEditor :: Ptr (TQListView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QListViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QListView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_commitData" qtc_QListView_commitData :: Ptr (TQListView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QListViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QListView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QListView_dirtyRegionOffset_qth" qtc_QListView_dirtyRegionOffset_qth :: Ptr (TQListView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QListViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QListView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QListView_dirtyRegionOffset" qtc_QListView_dirtyRegionOffset :: Ptr (TQListView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QListViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QListView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_doAutoScroll cobj_x0

foreign import ccall "qtc_QListView_doAutoScroll" qtc_QListView_doAutoScroll :: Ptr (TQListView a) -> IO ()

instance QdoAutoScroll (QListViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_doAutoScroll cobj_x0

instance QdragEnterEvent (QListView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_dragEnterEvent_h" qtc_QListView_dragEnterEvent_h :: Ptr (TQListView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QListViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QListView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QListView_dropIndicatorPosition" qtc_QListView_dropIndicatorPosition :: Ptr (TQListView a) -> IO CLong

instance QdropIndicatorPosition (QListViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_dropIndicatorPosition cobj_x0

instance Qedit (QListView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QListView_edit" qtc_QListView_edit :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QListViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QListView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_editorDestroyed" qtc_QListView_editorDestroyed :: Ptr (TQListView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QListViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QListView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QListView_executeDelayedItemsLayout" qtc_QListView_executeDelayedItemsLayout :: Ptr (TQListView a) -> IO ()

instance QexecuteDelayedItemsLayout (QListViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QListView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_focusInEvent_h" qtc_QListView_focusInEvent_h :: Ptr (TQListView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QListViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QListView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_focusNextPrevChild" qtc_QListView_focusNextPrevChild :: Ptr (TQListView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QListViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QListView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_focusOutEvent_h" qtc_QListView_focusOutEvent_h :: Ptr (TQListView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QListViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarAction (QListView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_horizontalScrollbarAction" qtc_QListView_horizontalScrollbarAction :: Ptr (TQListView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QListViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QhorizontalScrollbarValueChanged (QListView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_horizontalScrollbarValueChanged" qtc_QListView_horizontalScrollbarValueChanged :: Ptr (TQListView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QListViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QListView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QListView_horizontalStepsPerItem" qtc_QListView_horizontalStepsPerItem :: Ptr (TQListView a) -> IO CInt

instance QhorizontalStepsPerItem (QListViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QListView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_inputMethodEvent" qtc_QListView_inputMethodEvent :: Ptr (TQListView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QListViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QListView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_inputMethodQuery_h" qtc_QListView_inputMethodQuery_h :: Ptr (TQListView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QListViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QListView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_keyPressEvent_h" qtc_QListView_keyPressEvent_h :: Ptr (TQListView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QListViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QListView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QListView_keyboardSearch_h" qtc_QListView_keyboardSearch_h :: Ptr (TQListView a) -> CWString -> IO ()

instance QkeyboardSearch (QListViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QListView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_mouseDoubleClickEvent_h" qtc_QListView_mouseDoubleClickEvent_h :: Ptr (TQListView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QListViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QListView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_mousePressEvent_h" qtc_QListView_mousePressEvent_h :: Ptr (TQListView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QListViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_mousePressEvent_h cobj_x0 cobj_x1

instance QscheduleDelayedItemsLayout (QListView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QListView_scheduleDelayedItemsLayout" qtc_QListView_scheduleDelayedItemsLayout :: Ptr (TQListView a) -> IO ()

instance QscheduleDelayedItemsLayout (QListViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QListView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListView_scrollDirtyRegion" qtc_QListView_scrollDirtyRegion :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QListViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QListView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_selectAll_h cobj_x0

foreign import ccall "qtc_QListView_selectAll_h" qtc_QListView_selectAll_h :: Ptr (TQListView a) -> IO ()

instance QselectAll (QListViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_selectAll_h cobj_x0

instance QselectionCommand (QListView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_selectionCommand" qtc_QListView_selectionCommand :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QListViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QListView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_selectionCommand1" qtc_QListView_selectionCommand1 :: Ptr (TQListView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QListViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QListView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setDirtyRegion" qtc_QListView_setDirtyRegion :: Ptr (TQListView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QListViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QListView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_setHorizontalStepsPerItem" qtc_QListView_setHorizontalStepsPerItem :: Ptr (TQListView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QListViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetModel (QListView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setModel_h" qtc_QListView_setModel_h :: Ptr (TQListView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QListViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setModel_h cobj_x0 cobj_x1

instance QsetSelectionModel (QListView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setSelectionModel_h" qtc_QListView_setSelectionModel_h :: Ptr (TQListView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QListViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setSelectionModel_h cobj_x0 cobj_x1

instance QsetState (QListView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_setState" qtc_QListView_setState :: Ptr (TQListView a) -> CLong -> IO ()

instance QsetState (QListViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QListView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_setVerticalStepsPerItem" qtc_QListView_setVerticalStepsPerItem :: Ptr (TQListView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QListViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForColumn (QListView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHintForColumn_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_sizeHintForColumn_h" qtc_QListView_sizeHintForColumn_h :: Ptr (TQListView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QListViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHintForColumn_h cobj_x0 (toCInt x1)

instance QsizeHintForRow (QListView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_sizeHintForRow_h" qtc_QListView_sizeHintForRow_h :: Ptr (TQListView a) -> CInt -> IO CInt

instance QsizeHintForRow (QListViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QListView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_startAutoScroll cobj_x0

foreign import ccall "qtc_QListView_startAutoScroll" qtc_QListView_startAutoScroll :: Ptr (TQListView a) -> IO ()

instance QstartAutoScroll (QListViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_startAutoScroll cobj_x0

instance Qstate (QListView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_state cobj_x0

foreign import ccall "qtc_QListView_state" qtc_QListView_state :: Ptr (TQListView a) -> IO CLong

instance Qstate (QListViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_state cobj_x0

instance QstopAutoScroll (QListView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QListView_stopAutoScroll" qtc_QListView_stopAutoScroll :: Ptr (TQListView a) -> IO ()

instance QstopAutoScroll (QListViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_stopAutoScroll cobj_x0

instance QupdateEditorData (QListView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateEditorData cobj_x0

foreign import ccall "qtc_QListView_updateEditorData" qtc_QListView_updateEditorData :: Ptr (TQListView a) -> IO ()

instance QupdateEditorData (QListViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QListView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QListView_updateEditorGeometries" qtc_QListView_updateEditorGeometries :: Ptr (TQListView a) -> IO ()

instance QupdateEditorGeometries (QListViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QListView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_verticalScrollbarAction" qtc_QListView_verticalScrollbarAction :: Ptr (TQListView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QListViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QListView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_verticalScrollbarValueChanged" qtc_QListView_verticalScrollbarValueChanged :: Ptr (TQListView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QListViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QListView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QListView_verticalStepsPerItem" qtc_QListView_verticalStepsPerItem :: Ptr (TQListView a) -> IO CInt

instance QverticalStepsPerItem (QListViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_verticalStepsPerItem cobj_x0

instance QviewportEvent (QListView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_viewportEvent_h" qtc_QListView_viewportEvent_h :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QListViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_viewportEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QListView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_contextMenuEvent_h" qtc_QListView_contextMenuEvent_h :: Ptr (TQListView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QListViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QListView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QListView_minimumSizeHint_h" qtc_QListView_minimumSizeHint_h :: Ptr (TQListView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QListViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QListView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListView_minimumSizeHint_qth_h" qtc_QListView_minimumSizeHint_qth_h :: Ptr (TQListView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QListViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QListView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListView_setViewportMargins" qtc_QListView_setViewportMargins :: Ptr (TQListView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QListViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QListView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setupViewport" qtc_QListView_setupViewport :: Ptr (TQListView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QListViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QListView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHint_h cobj_x0

foreign import ccall "qtc_QListView_sizeHint_h" qtc_QListView_sizeHint_h :: Ptr (TQListView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QListViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHint_h cobj_x0

instance QsizeHint (QListView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListView_sizeHint_qth_h" qtc_QListView_sizeHint_qth_h :: Ptr (TQListView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QListViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QListView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_wheelEvent_h" qtc_QListView_wheelEvent_h :: Ptr (TQListView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QListViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QListView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_changeEvent_h" qtc_QListView_changeEvent_h :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QListViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QListView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_drawFrame" qtc_QListView_drawFrame :: Ptr (TQListView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QListViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QListView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_actionEvent_h" qtc_QListView_actionEvent_h :: Ptr (TQListView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QListViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QListView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_addAction" qtc_QListView_addAction :: Ptr (TQListView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QListViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QListView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_closeEvent_h" qtc_QListView_closeEvent_h :: Ptr (TQListView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QListViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QListView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_create cobj_x0

foreign import ccall "qtc_QListView_create" qtc_QListView_create :: Ptr (TQListView a) -> IO ()

instance Qcreate (QListViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_create cobj_x0

instance Qcreate (QListView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_create1" qtc_QListView_create1 :: Ptr (TQListView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QListViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create1 cobj_x0 cobj_x1

instance Qcreate (QListView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QListView_create2" qtc_QListView_create2 :: Ptr (TQListView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QListViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QListView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QListView_create3" qtc_QListView_create3 :: Ptr (TQListView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QListViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QListView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy cobj_x0

foreign import ccall "qtc_QListView_destroy" qtc_QListView_destroy :: Ptr (TQListView a) -> IO ()

instance Qdestroy (QListViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy cobj_x0

instance Qdestroy (QListView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_destroy1" qtc_QListView_destroy1 :: Ptr (TQListView a) -> CBool -> IO ()

instance Qdestroy (QListViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QListView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QListView_destroy2" qtc_QListView_destroy2 :: Ptr (TQListView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QListViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QListView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_devType_h cobj_x0

foreign import ccall "qtc_QListView_devType_h" qtc_QListView_devType_h :: Ptr (TQListView a) -> IO CInt

instance QdevType (QListViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_devType_h cobj_x0

instance QenabledChange (QListView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_enabledChange" qtc_QListView_enabledChange :: Ptr (TQListView a) -> CBool -> IO ()

instance QenabledChange (QListViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QListView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_enterEvent_h" qtc_QListView_enterEvent_h :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QListViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QListView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusNextChild cobj_x0

foreign import ccall "qtc_QListView_focusNextChild" qtc_QListView_focusNextChild :: Ptr (TQListView a) -> IO CBool

instance QfocusNextChild (QListViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusNextChild cobj_x0

instance QfocusPreviousChild (QListView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QListView_focusPreviousChild" qtc_QListView_focusPreviousChild :: Ptr (TQListView a) -> IO CBool

instance QfocusPreviousChild (QListViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_focusPreviousChild cobj_x0

instance QfontChange (QListView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_fontChange" qtc_QListView_fontChange :: Ptr (TQListView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QListViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QListView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListView_heightForWidth_h" qtc_QListView_heightForWidth_h :: Ptr (TQListView a) -> CInt -> IO CInt

instance QheightForWidth (QListViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QListView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_hideEvent_h" qtc_QListView_hideEvent_h :: Ptr (TQListView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QListViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QListView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_keyReleaseEvent_h" qtc_QListView_keyReleaseEvent_h :: Ptr (TQListView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QListViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QListView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_languageChange cobj_x0

foreign import ccall "qtc_QListView_languageChange" qtc_QListView_languageChange :: Ptr (TQListView a) -> IO ()

instance QlanguageChange (QListViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_languageChange cobj_x0

instance QleaveEvent (QListView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_leaveEvent_h" qtc_QListView_leaveEvent_h :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QListViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QListView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListView_metric" qtc_QListView_metric :: Ptr (TQListView a) -> CLong -> IO CInt

instance Qmetric (QListViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QListView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListView_move1" qtc_QListView_move1 :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance Qmove (QListViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QListView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QListView_move_qth" qtc_QListView_move_qth :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance Qmove (QListViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QListView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QListView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_move" qtc_QListView_move :: Ptr (TQListView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QListViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_move cobj_x0 cobj_x1

instance QmoveEvent (QListView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_moveEvent_h" qtc_QListView_moveEvent_h :: Ptr (TQListView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QListViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QListView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_paintEngine_h cobj_x0

foreign import ccall "qtc_QListView_paintEngine_h" qtc_QListView_paintEngine_h :: Ptr (TQListView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QListViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_paintEngine_h cobj_x0

instance QpaletteChange (QListView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_paletteChange" qtc_QListView_paletteChange :: Ptr (TQListView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QListViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QListView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_repaint cobj_x0

foreign import ccall "qtc_QListView_repaint" qtc_QListView_repaint :: Ptr (TQListView a) -> IO ()

instance Qrepaint (QListViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_repaint cobj_x0

instance Qrepaint (QListView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListView_repaint2" qtc_QListView_repaint2 :: Ptr (TQListView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QListViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QListView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_repaint1" qtc_QListView_repaint1 :: Ptr (TQListView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QListViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QListView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resetInputContext cobj_x0

foreign import ccall "qtc_QListView_resetInputContext" qtc_QListView_resetInputContext :: Ptr (TQListView a) -> IO ()

instance QresetInputContext (QListViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resetInputContext cobj_x0

instance Qresize (QListView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QListView_resize1" qtc_QListView_resize1 :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance Qresize (QListViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QListView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_resize" qtc_QListView_resize :: Ptr (TQListView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QListViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_resize cobj_x0 cobj_x1

instance Qresize (QListView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QListView_resize_qth" qtc_QListView_resize_qth :: Ptr (TQListView a) -> CInt -> CInt -> IO ()

instance Qresize (QListViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QListView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QListView_setGeometry1" qtc_QListView_setGeometry1 :: Ptr (TQListView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QListViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QListView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_setGeometry" qtc_QListView_setGeometry :: Ptr (TQListView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QListViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QListView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QListView_setGeometry_qth" qtc_QListView_setGeometry_qth :: Ptr (TQListView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QListViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QListView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QListView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setMouseTracking" qtc_QListView_setMouseTracking :: Ptr (TQListView a) -> CBool -> IO ()

instance QsetMouseTracking (QListViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QListView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_setVisible_h" qtc_QListView_setVisible_h :: Ptr (TQListView a) -> CBool -> IO ()

instance QsetVisible (QListViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QListView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_showEvent_h" qtc_QListView_showEvent_h :: Ptr (TQListView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QListViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QListView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_tabletEvent_h" qtc_QListView_tabletEvent_h :: Ptr (TQListView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QListViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QListView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QListView_updateMicroFocus" qtc_QListView_updateMicroFocus :: Ptr (TQListView a) -> IO ()

instance QupdateMicroFocus (QListViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QListView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListView_windowActivationChange" qtc_QListView_windowActivationChange :: Ptr (TQListView a) -> CBool -> IO ()

instance QwindowActivationChange (QListViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QListView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_childEvent" qtc_QListView_childEvent :: Ptr (TQListView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QListViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QListView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QListView_connectNotify" qtc_QListView_connectNotify :: Ptr (TQListView a) -> CWString -> IO ()

instance QconnectNotify (QListViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QListView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QListView_customEvent" qtc_QListView_customEvent :: Ptr (TQListView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QListViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QListView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QListView_disconnectNotify" qtc_QListView_disconnectNotify :: Ptr (TQListView a) -> CWString -> IO ()

instance QdisconnectNotify (QListViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QListView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QListView_eventFilter_h" qtc_QListView_eventFilter_h :: Ptr (TQListView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QListViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QListView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QListView_receivers" qtc_QListView_receivers :: Ptr (TQListView a) -> CWString -> IO CInt

instance Qreceivers (QListViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListView_receivers cobj_x0 cstr_x1

instance Qsender (QListView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sender cobj_x0

foreign import ccall "qtc_QListView_sender" qtc_QListView_sender :: Ptr (TQListView a) -> IO (Ptr (TQObject ()))

instance Qsender (QListViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListView_sender cobj_x0

