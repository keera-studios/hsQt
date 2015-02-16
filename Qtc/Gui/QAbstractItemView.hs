{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractItemView (
  QqAbstractItemView(..)
  ,alternatingRowColors
  ,dragDropMode
  ,dragDropOverwriteMode
  ,editTriggers
  ,hasAutoScroll
  ,horizontalScrollMode
  ,indexWidget
  ,itemDelegateForColumn
  ,itemDelegateForRow
  ,scrollToBottom
  ,scrollToTop
  ,selectionBehavior
  ,selectionModel
  ,setAlternatingRowColors
  ,setAutoScroll
  ,setDragDropMode
  ,setDragDropOverwriteMode
  ,setDropIndicatorShown
  ,setEditTriggers
  ,setHorizontalScrollMode
  ,setIndexWidget
  ,setItemDelegateForColumn
  ,setItemDelegateForRow
  ,setSelectionBehavior
  ,setTabKeyNavigation
  ,setVerticalScrollMode
  ,showDropIndicator
  ,qsizeHintForIndex, sizeHintForIndex
  ,tabKeyNavigation
  ,verticalScrollMode
  ,qAbstractItemView_delete
  ,qAbstractItemView_deleteLater
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

instance QuserMethod (QAbstractItemView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractItemView_userMethod" qtc_QAbstractItemView_userMethod :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QuserMethod (QAbstractItemViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractItemView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractItemView_userMethodVariant" qtc_QAbstractItemView_userMethodVariant :: Ptr (TQAbstractItemView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractItemViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractItemView x1 where
  qAbstractItemView :: x1 -> IO (QAbstractItemView ())

instance QqAbstractItemView (()) where
 qAbstractItemView ()
  = withQAbstractItemViewResult $
    qtc_QAbstractItemView

foreign import ccall "qtc_QAbstractItemView" qtc_QAbstractItemView :: IO (Ptr (TQAbstractItemView ()))

instance QqAbstractItemView ((QWidget t1)) where
 qAbstractItemView (x1)
  = withQAbstractItemViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView1 cobj_x1

foreign import ccall "qtc_QAbstractItemView1" qtc_QAbstractItemView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQAbstractItemView ()))

alternatingRowColors :: QAbstractItemView a -> (()) -> IO (Bool)
alternatingRowColors x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_alternatingRowColors cobj_x0

foreign import ccall "qtc_QAbstractItemView_alternatingRowColors" qtc_QAbstractItemView_alternatingRowColors :: Ptr (TQAbstractItemView a) -> IO CBool

instance QclearSelection (QAbstractItemView a) (()) where
 clearSelection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_clearSelection cobj_x0

foreign import ccall "qtc_QAbstractItemView_clearSelection" qtc_QAbstractItemView_clearSelection :: Ptr (TQAbstractItemView a) -> IO ()

instance QcloseEditor (QAbstractItemView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractItemView_closeEditor" qtc_QAbstractItemView_closeEditor :: Ptr (TQAbstractItemView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QAbstractItemViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QclosePersistentEditor (QAbstractItemView a) ((QModelIndex t1)) where
 closePersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_closePersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_closePersistentEditor" qtc_QAbstractItemView_closePersistentEditor :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QcommitData (QAbstractItemView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_commitData" qtc_QAbstractItemView_commitData :: Ptr (TQAbstractItemView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QAbstractItemViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_commitData cobj_x0 cobj_x1

instance QcurrentChanged (QAbstractItemView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_currentChanged" qtc_QAbstractItemView_currentChanged :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QAbstractItemViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QcurrentIndex (QAbstractItemView a) (()) (IO (QModelIndex ())) where
 currentIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_currentIndex cobj_x0

foreign import ccall "qtc_QAbstractItemView_currentIndex" qtc_QAbstractItemView_currentIndex :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQModelIndex ()))

instance QdataChanged (QAbstractItemView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_dataChanged" qtc_QAbstractItemView_dataChanged :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QAbstractItemViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdirtyRegionOffset (QAbstractItemView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QAbstractItemView_dirtyRegionOffset_qth" qtc_QAbstractItemView_dirtyRegionOffset_qth :: Ptr (TQAbstractItemView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QAbstractItemViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QAbstractItemView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QAbstractItemView_dirtyRegionOffset" qtc_QAbstractItemView_dirtyRegionOffset :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QAbstractItemViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QAbstractItemView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_doAutoScroll cobj_x0

foreign import ccall "qtc_QAbstractItemView_doAutoScroll" qtc_QAbstractItemView_doAutoScroll :: Ptr (TQAbstractItemView a) -> IO ()

instance QdoAutoScroll (QAbstractItemViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_doAutoScroll cobj_x0

instance QdoItemsLayout (QAbstractItemView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_doItemsLayout_h" qtc_QAbstractItemView_doItemsLayout_h :: Ptr (TQAbstractItemView a) -> IO ()

instance QdoItemsLayout (QAbstractItemViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_doItemsLayout_h cobj_x0

dragDropMode :: QAbstractItemView a -> (()) -> IO (DragDropMode)
dragDropMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dragDropMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_dragDropMode" qtc_QAbstractItemView_dragDropMode :: Ptr (TQAbstractItemView a) -> IO CLong

dragDropOverwriteMode :: QAbstractItemView a -> (()) -> IO (Bool)
dragDropOverwriteMode x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dragDropOverwriteMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_dragDropOverwriteMode" qtc_QAbstractItemView_dragDropOverwriteMode :: Ptr (TQAbstractItemView a) -> IO CBool

instance QdragEnabled (QAbstractItemView a) (()) where
 dragEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dragEnabled cobj_x0

foreign import ccall "qtc_QAbstractItemView_dragEnabled" qtc_QAbstractItemView_dragEnabled :: Ptr (TQAbstractItemView a) -> IO CBool

instance QdragEnterEvent (QAbstractItemView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_dragEnterEvent_h" qtc_QAbstractItemView_dragEnterEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractItemViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractItemView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_dragLeaveEvent_h" qtc_QAbstractItemView_dragLeaveEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractItemViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractItemView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_dragMoveEvent_h" qtc_QAbstractItemView_dragMoveEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractItemViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractItemView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_dropEvent_h" qtc_QAbstractItemView_dropEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractItemViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_dropEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QAbstractItemView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QAbstractItemView_dropIndicatorPosition" qtc_QAbstractItemView_dropIndicatorPosition :: Ptr (TQAbstractItemView a) -> IO CLong

instance QdropIndicatorPosition (QAbstractItemViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_dropIndicatorPosition cobj_x0

instance Qedit (QAbstractItemView a) ((QModelIndex t1)) (IO ()) where
 edit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_edit cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_edit" qtc_QAbstractItemView_edit :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance Qedit (QAbstractItemView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemView_edit1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemView_edit1" qtc_QAbstractItemView_edit1 :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QAbstractItemViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemView_edit1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

editTriggers :: QAbstractItemView a -> (()) -> IO (EditTriggers)
editTriggers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_editTriggers cobj_x0

foreign import ccall "qtc_QAbstractItemView_editTriggers" qtc_QAbstractItemView_editTriggers :: Ptr (TQAbstractItemView a) -> IO CLong

instance QeditorDestroyed (QAbstractItemView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_editorDestroyed" qtc_QAbstractItemView_editorDestroyed :: Ptr (TQAbstractItemView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QAbstractItemViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_editorDestroyed cobj_x0 cobj_x1

instance Qevent (QAbstractItemView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_event_h" qtc_QAbstractItemView_event_h :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractItemViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_event_h cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QAbstractItemView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QAbstractItemView_executeDelayedItemsLayout" qtc_QAbstractItemView_executeDelayedItemsLayout :: Ptr (TQAbstractItemView a) -> IO ()

instance QexecuteDelayedItemsLayout (QAbstractItemViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QAbstractItemView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_focusInEvent_h" qtc_QAbstractItemView_focusInEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractItemViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QAbstractItemView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_focusNextPrevChild" qtc_QAbstractItemView_focusNextPrevChild :: Ptr (TQAbstractItemView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractItemViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QAbstractItemView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_focusOutEvent_h" qtc_QAbstractItemView_focusOutEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractItemViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_focusOutEvent_h cobj_x0 cobj_x1

hasAutoScroll :: QAbstractItemView a -> (()) -> IO (Bool)
hasAutoScroll x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_hasAutoScroll cobj_x0

foreign import ccall "qtc_QAbstractItemView_hasAutoScroll" qtc_QAbstractItemView_hasAutoScroll :: Ptr (TQAbstractItemView a) -> IO CBool

instance QhorizontalOffset (QAbstractItemView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalOffset_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_horizontalOffset_h" qtc_QAbstractItemView_horizontalOffset_h :: Ptr (TQAbstractItemView a) -> IO CInt

instance QhorizontalOffset (QAbstractItemViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalOffset_h cobj_x0

horizontalScrollMode :: QAbstractItemView a -> (()) -> IO (ScrollMode)
horizontalScrollMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalScrollMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_horizontalScrollMode" qtc_QAbstractItemView_horizontalScrollMode :: Ptr (TQAbstractItemView a) -> IO CLong

instance QhorizontalScrollbarAction (QAbstractItemView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_horizontalScrollbarAction" qtc_QAbstractItemView_horizontalScrollbarAction :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QAbstractItemViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QhorizontalScrollbarValueChanged (QAbstractItemView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_horizontalScrollbarValueChanged" qtc_QAbstractItemView_horizontalScrollbarValueChanged :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QAbstractItemViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QAbstractItemView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QAbstractItemView_horizontalStepsPerItem" qtc_QAbstractItemView_horizontalStepsPerItem :: Ptr (TQAbstractItemView a) -> IO CInt

instance QhorizontalStepsPerItem (QAbstractItemViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_horizontalStepsPerItem cobj_x0

instance QqiconSize (QAbstractItemView a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_iconSize cobj_x0

foreign import ccall "qtc_QAbstractItemView_iconSize" qtc_QAbstractItemView_iconSize :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQSize ()))

instance QiconSize (QAbstractItemView a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemView_iconSize_qth" qtc_QAbstractItemView_iconSize_qth :: Ptr (TQAbstractItemView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QindexAt (QAbstractItemView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractItemView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractItemView_indexAt_qth_h" qtc_QAbstractItemView_indexAt_qth_h :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QAbstractItemViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractItemView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QAbstractItemView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_indexAt_h" qtc_QAbstractItemView_indexAt_h :: Ptr (TQAbstractItemView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QAbstractItemViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_indexAt_h cobj_x0 cobj_x1

indexWidget :: QAbstractItemView a -> ((QModelIndex t1)) -> IO (QWidget ())
indexWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_indexWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_indexWidget" qtc_QAbstractItemView_indexWidget :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQWidget ()))

instance QinputMethodEvent (QAbstractItemView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_inputMethodEvent" qtc_QAbstractItemView_inputMethodEvent :: Ptr (TQAbstractItemView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractItemViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractItemView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_inputMethodQuery_h" qtc_QAbstractItemView_inputMethodQuery_h :: Ptr (TQAbstractItemView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractItemViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QisIndexHidden (QAbstractItemView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_isIndexHidden_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_isIndexHidden_h" qtc_QAbstractItemView_isIndexHidden_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QAbstractItemViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_isIndexHidden_h cobj_x0 cobj_x1

instance QitemDelegate (QAbstractItemView a) (()) where
 itemDelegate x0 ()
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_itemDelegate cobj_x0

foreign import ccall "qtc_QAbstractItemView_itemDelegate" qtc_QAbstractItemView_itemDelegate :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQAbstractItemDelegate ()))

instance QitemDelegate (QAbstractItemView a) ((QModelIndex t1)) where
 itemDelegate x0 (x1)
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_itemDelegate1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_itemDelegate1" qtc_QAbstractItemView_itemDelegate1 :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQAbstractItemDelegate ()))

itemDelegateForColumn :: QAbstractItemView a -> ((Int)) -> IO (QAbstractItemDelegate ())
itemDelegateForColumn x0 (x1)
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_itemDelegateForColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_itemDelegateForColumn" qtc_QAbstractItemView_itemDelegateForColumn :: Ptr (TQAbstractItemView a) -> CInt -> IO (Ptr (TQAbstractItemDelegate ()))

itemDelegateForRow :: QAbstractItemView a -> ((Int)) -> IO (QAbstractItemDelegate ())
itemDelegateForRow x0 (x1)
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_itemDelegateForRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_itemDelegateForRow" qtc_QAbstractItemView_itemDelegateForRow :: Ptr (TQAbstractItemView a) -> CInt -> IO (Ptr (TQAbstractItemDelegate ()))

instance QkeyPressEvent (QAbstractItemView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_keyPressEvent_h" qtc_QAbstractItemView_keyPressEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractItemViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QAbstractItemView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemView_keyboardSearch_h" qtc_QAbstractItemView_keyboardSearch_h :: Ptr (TQAbstractItemView a) -> CWString -> IO ()

instance QkeyboardSearch (QAbstractItemViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_keyboardSearch_h cobj_x0 cstr_x1

instance Qmodel (QAbstractItemView a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_model cobj_x0

foreign import ccall "qtc_QAbstractItemView_model" qtc_QAbstractItemView_model :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQAbstractItemModel ()))

instance QmouseDoubleClickEvent (QAbstractItemView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_mouseDoubleClickEvent_h" qtc_QAbstractItemView_mouseDoubleClickEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractItemViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractItemView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_mouseMoveEvent_h" qtc_QAbstractItemView_mouseMoveEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractItemViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractItemView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_mousePressEvent_h" qtc_QAbstractItemView_mousePressEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractItemViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractItemView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_mouseReleaseEvent_h" qtc_QAbstractItemView_mouseReleaseEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractItemViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QAbstractItemView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QAbstractItemView_moveCursor_h" qtc_QAbstractItemView_moveCursor_h :: Ptr (TQAbstractItemView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QAbstractItemViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_moveCursor_h cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QopenPersistentEditor (QAbstractItemView a) ((QModelIndex t1)) where
 openPersistentEditor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_openPersistentEditor cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_openPersistentEditor" qtc_QAbstractItemView_openPersistentEditor :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance Qreset (QAbstractItemView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_reset_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_reset_h" qtc_QAbstractItemView_reset_h :: Ptr (TQAbstractItemView a) -> IO ()

instance Qreset (QAbstractItemViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_reset_h cobj_x0

instance QresizeEvent (QAbstractItemView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_resizeEvent_h" qtc_QAbstractItemView_resizeEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractItemViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_resizeEvent_h cobj_x0 cobj_x1

instance QrootIndex (QAbstractItemView a) (()) where
 rootIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_rootIndex cobj_x0

foreign import ccall "qtc_QAbstractItemView_rootIndex" qtc_QAbstractItemView_rootIndex :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQModelIndex ()))

instance QrowsAboutToBeRemoved (QAbstractItemView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemView_rowsAboutToBeRemoved" qtc_QAbstractItemView_rowsAboutToBeRemoved :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QAbstractItemViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QAbstractItemView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemView_rowsInserted" qtc_QAbstractItemView_rowsInserted :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QAbstractItemViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscheduleDelayedItemsLayout (QAbstractItemView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QAbstractItemView_scheduleDelayedItemsLayout" qtc_QAbstractItemView_scheduleDelayedItemsLayout :: Ptr (TQAbstractItemView a) -> IO ()

instance QscheduleDelayedItemsLayout (QAbstractItemViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QAbstractItemView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemView_scrollDirtyRegion" qtc_QAbstractItemView_scrollDirtyRegion :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QAbstractItemViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QAbstractItemView ()) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_scrollTo_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_scrollTo_h" qtc_QAbstractItemView_scrollTo_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QscrollTo (QAbstractItemViewSc a) ((QModelIndex t1)) where
 scrollTo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_scrollTo_h cobj_x0 cobj_x1

instance QscrollTo (QAbstractItemView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractItemView_scrollTo1_h" qtc_QAbstractItemView_scrollTo1_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QAbstractItemViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_scrollTo1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

scrollToBottom :: QAbstractItemView a -> (()) -> IO ()
scrollToBottom x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollToBottom cobj_x0

foreign import ccall "qtc_QAbstractItemView_scrollToBottom" qtc_QAbstractItemView_scrollToBottom :: Ptr (TQAbstractItemView a) -> IO ()

scrollToTop :: QAbstractItemView a -> (()) -> IO ()
scrollToTop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollToTop cobj_x0

foreign import ccall "qtc_QAbstractItemView_scrollToTop" qtc_QAbstractItemView_scrollToTop :: Ptr (TQAbstractItemView a) -> IO ()

instance QselectAll (QAbstractItemView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_selectAll_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_selectAll_h" qtc_QAbstractItemView_selectAll_h :: Ptr (TQAbstractItemView a) -> IO ()

instance QselectAll (QAbstractItemViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_selectAll_h cobj_x0

selectionBehavior :: QAbstractItemView a -> (()) -> IO (SelectionBehavior)
selectionBehavior x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_selectionBehavior cobj_x0

foreign import ccall "qtc_QAbstractItemView_selectionBehavior" qtc_QAbstractItemView_selectionBehavior :: Ptr (TQAbstractItemView a) -> IO CLong

instance QselectionChanged (QAbstractItemView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_selectionChanged" qtc_QAbstractItemView_selectionChanged :: Ptr (TQAbstractItemView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QAbstractItemViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QselectionCommand (QAbstractItemView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_selectionCommand" qtc_QAbstractItemView_selectionCommand :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QAbstractItemViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QAbstractItemView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_selectionCommand1" qtc_QAbstractItemView_selectionCommand1 :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QAbstractItemViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QselectionMode (QAbstractItemView a) (()) (IO (QAbstractItemViewSelectionMode)) where
 selectionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_selectionMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_selectionMode" qtc_QAbstractItemView_selectionMode :: Ptr (TQAbstractItemView a) -> IO CLong

selectionModel :: QAbstractItemView a -> (()) -> IO (QItemSelectionModel ())
selectionModel x0 ()
  = withQItemSelectionModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_selectionModel cobj_x0

foreign import ccall "qtc_QAbstractItemView_selectionModel" qtc_QAbstractItemView_selectionModel :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQItemSelectionModel ()))

setAlternatingRowColors :: QAbstractItemView a -> ((Bool)) -> IO ()
setAlternatingRowColors x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setAlternatingRowColors cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setAlternatingRowColors" qtc_QAbstractItemView_setAlternatingRowColors :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

setAutoScroll :: QAbstractItemView a -> ((Bool)) -> IO ()
setAutoScroll x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setAutoScroll cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setAutoScroll" qtc_QAbstractItemView_setAutoScroll :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QsetCurrentIndex (QAbstractItemView a) ((QModelIndex t1)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setCurrentIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setCurrentIndex" qtc_QAbstractItemView_setCurrentIndex :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetDirtyRegion (QAbstractItemView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setDirtyRegion" qtc_QAbstractItemView_setDirtyRegion :: Ptr (TQAbstractItemView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QAbstractItemViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setDirtyRegion cobj_x0 cobj_x1

setDragDropMode :: QAbstractItemView a -> ((DragDropMode)) -> IO ()
setDragDropMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setDragDropMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setDragDropMode" qtc_QAbstractItemView_setDragDropMode :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

setDragDropOverwriteMode :: QAbstractItemView a -> ((Bool)) -> IO ()
setDragDropOverwriteMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setDragDropOverwriteMode cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setDragDropOverwriteMode" qtc_QAbstractItemView_setDragDropOverwriteMode :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QsetDragEnabled (QAbstractItemView a) ((Bool)) where
 setDragEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setDragEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setDragEnabled" qtc_QAbstractItemView_setDragEnabled :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

setDropIndicatorShown :: QAbstractItemView a -> ((Bool)) -> IO ()
setDropIndicatorShown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setDropIndicatorShown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setDropIndicatorShown" qtc_QAbstractItemView_setDropIndicatorShown :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

setEditTriggers :: QAbstractItemView a -> ((EditTriggers)) -> IO ()
setEditTriggers x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setEditTriggers cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setEditTriggers" qtc_QAbstractItemView_setEditTriggers :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

setHorizontalScrollMode :: QAbstractItemView a -> ((ScrollMode)) -> IO ()
setHorizontalScrollMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setHorizontalScrollMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setHorizontalScrollMode" qtc_QAbstractItemView_setHorizontalScrollMode :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QsetHorizontalStepsPerItem (QAbstractItemView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_setHorizontalStepsPerItem" qtc_QAbstractItemView_setHorizontalStepsPerItem :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QAbstractItemViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QqsetIconSize (QAbstractItemView a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setIconSize" qtc_QAbstractItemView_setIconSize :: Ptr (TQAbstractItemView a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QAbstractItemView a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractItemView_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractItemView_setIconSize_qth" qtc_QAbstractItemView_setIconSize_qth :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

setIndexWidget :: QAbstractItemView a -> ((QModelIndex t1, QWidget t2)) -> IO ()
setIndexWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_setIndexWidget cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_setIndexWidget" qtc_QAbstractItemView_setIndexWidget :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr (TQWidget t2) -> IO ()

instance QsetItemDelegate (QAbstractItemView a) ((QAbstractItemDelegate t1)) where
 setItemDelegate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setItemDelegate cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setItemDelegate" qtc_QAbstractItemView_setItemDelegate :: Ptr (TQAbstractItemView a) -> Ptr (TQAbstractItemDelegate t1) -> IO ()

setItemDelegateForColumn :: QAbstractItemView a -> ((Int, QAbstractItemDelegate t2)) -> IO ()
setItemDelegateForColumn x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_setItemDelegateForColumn cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemView_setItemDelegateForColumn" qtc_QAbstractItemView_setItemDelegateForColumn :: Ptr (TQAbstractItemView a) -> CInt -> Ptr (TQAbstractItemDelegate t2) -> IO ()

setItemDelegateForRow :: QAbstractItemView a -> ((Int, QAbstractItemDelegate t2)) -> IO ()
setItemDelegateForRow x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_setItemDelegateForRow cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemView_setItemDelegateForRow" qtc_QAbstractItemView_setItemDelegateForRow :: Ptr (TQAbstractItemView a) -> CInt -> Ptr (TQAbstractItemDelegate t2) -> IO ()

instance QsetModel (QAbstractItemView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setModel_h" qtc_QAbstractItemView_setModel_h :: Ptr (TQAbstractItemView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QAbstractItemViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setModel_h cobj_x0 cobj_x1

instance QsetRootIndex (QAbstractItemView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setRootIndex_h" qtc_QAbstractItemView_setRootIndex_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QAbstractItemViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setRootIndex_h cobj_x0 cobj_x1

instance QqsetSelection (QAbstractItemView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QAbstractItemView_setSelection_h" qtc_QAbstractItemView_setSelection_h :: Ptr (TQAbstractItemView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QAbstractItemViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setSelection_h cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QAbstractItemView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractItemView_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QAbstractItemView_setSelection_qth_h" qtc_QAbstractItemView_setSelection_qth_h :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QAbstractItemViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractItemView_setSelection_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

setSelectionBehavior :: QAbstractItemView a -> ((SelectionBehavior)) -> IO ()
setSelectionBehavior x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setSelectionBehavior cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setSelectionBehavior" qtc_QAbstractItemView_setSelectionBehavior :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QsetSelectionMode (QAbstractItemView a) ((QAbstractItemViewSelectionMode)) where
 setSelectionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setSelectionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setSelectionMode" qtc_QAbstractItemView_setSelectionMode :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QsetSelectionModel (QAbstractItemView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setSelectionModel_h" qtc_QAbstractItemView_setSelectionModel_h :: Ptr (TQAbstractItemView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QAbstractItemViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setSelectionModel_h cobj_x0 cobj_x1

instance QsetState (QAbstractItemView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setState" qtc_QAbstractItemView_setState :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QsetState (QAbstractItemViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

setTabKeyNavigation :: QAbstractItemView a -> ((Bool)) -> IO ()
setTabKeyNavigation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setTabKeyNavigation cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setTabKeyNavigation" qtc_QAbstractItemView_setTabKeyNavigation :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QsetTextElideMode (QAbstractItemView a) ((TextElideMode)) where
 setTextElideMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setTextElideMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setTextElideMode" qtc_QAbstractItemView_setTextElideMode :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

setVerticalScrollMode :: QAbstractItemView a -> ((ScrollMode)) -> IO ()
setVerticalScrollMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setVerticalScrollMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_setVerticalScrollMode" qtc_QAbstractItemView_setVerticalScrollMode :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QsetVerticalStepsPerItem (QAbstractItemView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_setVerticalStepsPerItem" qtc_QAbstractItemView_setVerticalStepsPerItem :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QAbstractItemViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

showDropIndicator :: QAbstractItemView a -> (()) -> IO (Bool)
showDropIndicator x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_showDropIndicator cobj_x0

foreign import ccall "qtc_QAbstractItemView_showDropIndicator" qtc_QAbstractItemView_showDropIndicator :: Ptr (TQAbstractItemView a) -> IO CBool

instance QsizeHintForColumn (QAbstractItemView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHintForColumn_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_sizeHintForColumn_h" qtc_QAbstractItemView_sizeHintForColumn_h :: Ptr (TQAbstractItemView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QAbstractItemViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHintForColumn_h cobj_x0 (toCInt x1)

qsizeHintForIndex :: QAbstractItemView a -> ((QModelIndex t1)) -> IO (QSize ())
qsizeHintForIndex x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_sizeHintForIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_sizeHintForIndex" qtc_QAbstractItemView_sizeHintForIndex :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

sizeHintForIndex :: QAbstractItemView a -> ((QModelIndex t1)) -> IO (Size)
sizeHintForIndex x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_sizeHintForIndex_qth cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemView_sizeHintForIndex_qth" qtc_QAbstractItemView_sizeHintForIndex_qth :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHintForRow (QAbstractItemView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_sizeHintForRow_h" qtc_QAbstractItemView_sizeHintForRow_h :: Ptr (TQAbstractItemView a) -> CInt -> IO CInt

instance QsizeHintForRow (QAbstractItemViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QAbstractItemView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_startAutoScroll cobj_x0

foreign import ccall "qtc_QAbstractItemView_startAutoScroll" qtc_QAbstractItemView_startAutoScroll :: Ptr (TQAbstractItemView a) -> IO ()

instance QstartAutoScroll (QAbstractItemViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_startAutoScroll cobj_x0

instance QstartDrag (QAbstractItemView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractItemView_startDrag" qtc_QAbstractItemView_startDrag :: Ptr (TQAbstractItemView a) -> CLong -> IO ()

instance QstartDrag (QAbstractItemViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QAbstractItemView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_state cobj_x0

foreign import ccall "qtc_QAbstractItemView_state" qtc_QAbstractItemView_state :: Ptr (TQAbstractItemView a) -> IO CLong

instance Qstate (QAbstractItemViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_state cobj_x0

instance QstopAutoScroll (QAbstractItemView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QAbstractItemView_stopAutoScroll" qtc_QAbstractItemView_stopAutoScroll :: Ptr (TQAbstractItemView a) -> IO ()

instance QstopAutoScroll (QAbstractItemViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_stopAutoScroll cobj_x0

tabKeyNavigation :: QAbstractItemView a -> (()) -> IO (Bool)
tabKeyNavigation x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_tabKeyNavigation cobj_x0

foreign import ccall "qtc_QAbstractItemView_tabKeyNavigation" qtc_QAbstractItemView_tabKeyNavigation :: Ptr (TQAbstractItemView a) -> IO CBool

instance QtextElideMode (QAbstractItemView a) (()) where
 textElideMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_textElideMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_textElideMode" qtc_QAbstractItemView_textElideMode :: Ptr (TQAbstractItemView a) -> IO CLong

instance QtimerEvent (QAbstractItemView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_timerEvent" qtc_QAbstractItemView_timerEvent :: Ptr (TQAbstractItemView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractItemViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_timerEvent cobj_x0 cobj_x1

instance Qupdate (QAbstractItemView a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_update cobj_x0

foreign import ccall "qtc_QAbstractItemView_update" qtc_QAbstractItemView_update :: Ptr (TQAbstractItemView a) -> IO ()

instance QupdateEditorData (QAbstractItemView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateEditorData cobj_x0

foreign import ccall "qtc_QAbstractItemView_updateEditorData" qtc_QAbstractItemView_updateEditorData :: Ptr (TQAbstractItemView a) -> IO ()

instance QupdateEditorData (QAbstractItemViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QAbstractItemView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QAbstractItemView_updateEditorGeometries" qtc_QAbstractItemView_updateEditorGeometries :: Ptr (TQAbstractItemView a) -> IO ()

instance QupdateEditorGeometries (QAbstractItemViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateEditorGeometries cobj_x0

instance QupdateGeometries (QAbstractItemView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateGeometries cobj_x0

foreign import ccall "qtc_QAbstractItemView_updateGeometries" qtc_QAbstractItemView_updateGeometries :: Ptr (TQAbstractItemView a) -> IO ()

instance QupdateGeometries (QAbstractItemViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateGeometries cobj_x0

instance QverticalOffset (QAbstractItemView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalOffset_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_verticalOffset_h" qtc_QAbstractItemView_verticalOffset_h :: Ptr (TQAbstractItemView a) -> IO CInt

instance QverticalOffset (QAbstractItemViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalOffset_h cobj_x0

verticalScrollMode :: QAbstractItemView a -> (()) -> IO (ScrollMode)
verticalScrollMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalScrollMode cobj_x0

foreign import ccall "qtc_QAbstractItemView_verticalScrollMode" qtc_QAbstractItemView_verticalScrollMode :: Ptr (TQAbstractItemView a) -> IO CLong

instance QverticalScrollbarAction (QAbstractItemView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_verticalScrollbarAction" qtc_QAbstractItemView_verticalScrollbarAction :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QAbstractItemViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QAbstractItemView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_verticalScrollbarValueChanged" qtc_QAbstractItemView_verticalScrollbarValueChanged :: Ptr (TQAbstractItemView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QAbstractItemViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QAbstractItemView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QAbstractItemView_verticalStepsPerItem" qtc_QAbstractItemView_verticalStepsPerItem :: Ptr (TQAbstractItemView a) -> IO CInt

instance QverticalStepsPerItem (QAbstractItemViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_verticalStepsPerItem cobj_x0

instance QviewOptions (QAbstractItemView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_viewOptions cobj_x0

foreign import ccall "qtc_QAbstractItemView_viewOptions" qtc_QAbstractItemView_viewOptions :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QAbstractItemViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_viewOptions cobj_x0

instance QviewportEvent (QAbstractItemView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_viewportEvent_h" qtc_QAbstractItemView_viewportEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QAbstractItemViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_viewportEvent_h cobj_x0 cobj_x1

instance QqvisualRect (QAbstractItemView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_visualRect_h" qtc_QAbstractItemView_visualRect_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QAbstractItemViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QAbstractItemView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QAbstractItemView_visualRect_qth_h" qtc_QAbstractItemView_visualRect_qth_h :: Ptr (TQAbstractItemView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QAbstractItemViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QAbstractItemView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRegionForSelection_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_visualRegionForSelection_h" qtc_QAbstractItemView_visualRegionForSelection_h :: Ptr (TQAbstractItemView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QAbstractItemViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_visualRegionForSelection_h cobj_x0 cobj_x1

qAbstractItemView_delete :: QAbstractItemView a -> IO ()
qAbstractItemView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_delete cobj_x0

foreign import ccall "qtc_QAbstractItemView_delete" qtc_QAbstractItemView_delete :: Ptr (TQAbstractItemView a) -> IO ()

qAbstractItemView_deleteLater :: QAbstractItemView a -> IO ()
qAbstractItemView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractItemView_deleteLater" qtc_QAbstractItemView_deleteLater :: Ptr (TQAbstractItemView a) -> IO ()

instance QcontextMenuEvent (QAbstractItemView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_contextMenuEvent_h" qtc_QAbstractItemView_contextMenuEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractItemViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QAbstractItemView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_minimumSizeHint_h" qtc_QAbstractItemView_minimumSizeHint_h :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractItemViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractItemView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemView_minimumSizeHint_qth_h" qtc_QAbstractItemView_minimumSizeHint_qth_h :: Ptr (TQAbstractItemView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractItemViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QpaintEvent (QAbstractItemView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_paintEvent_h" qtc_QAbstractItemView_paintEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractItemViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_paintEvent_h cobj_x0 cobj_x1

instance QscrollContentsBy (QAbstractItemView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemView_scrollContentsBy_h" qtc_QAbstractItemView_scrollContentsBy_h :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QAbstractItemViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QsetViewportMargins (QAbstractItemView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractItemView_setViewportMargins" qtc_QAbstractItemView_setViewportMargins :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QAbstractItemViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QAbstractItemView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setupViewport" qtc_QAbstractItemView_setupViewport :: Ptr (TQAbstractItemView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QAbstractItemViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QAbstractItemView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_sizeHint_h" qtc_QAbstractItemView_sizeHint_h :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractItemViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHint_h cobj_x0

instance QsizeHint (QAbstractItemView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemView_sizeHint_qth_h" qtc_QAbstractItemView_sizeHint_qth_h :: Ptr (TQAbstractItemView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractItemViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QAbstractItemView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_wheelEvent_h" qtc_QAbstractItemView_wheelEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractItemViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QAbstractItemView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_changeEvent_h" qtc_QAbstractItemView_changeEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractItemViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QAbstractItemView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_drawFrame" qtc_QAbstractItemView_drawFrame :: Ptr (TQAbstractItemView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QAbstractItemViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QAbstractItemView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_actionEvent_h" qtc_QAbstractItemView_actionEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractItemViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractItemView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_addAction" qtc_QAbstractItemView_addAction :: Ptr (TQAbstractItemView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractItemViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QAbstractItemView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_closeEvent_h" qtc_QAbstractItemView_closeEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractItemViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractItemView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_create cobj_x0

foreign import ccall "qtc_QAbstractItemView_create" qtc_QAbstractItemView_create :: Ptr (TQAbstractItemView a) -> IO ()

instance Qcreate (QAbstractItemViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_create cobj_x0

instance Qcreate (QAbstractItemView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_create1" qtc_QAbstractItemView_create1 :: Ptr (TQAbstractItemView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractItemViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractItemView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractItemView_create2" qtc_QAbstractItemView_create2 :: Ptr (TQAbstractItemView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractItemViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractItemView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractItemView_create3" qtc_QAbstractItemView_create3 :: Ptr (TQAbstractItemView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractItemViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractItemView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy cobj_x0

foreign import ccall "qtc_QAbstractItemView_destroy" qtc_QAbstractItemView_destroy :: Ptr (TQAbstractItemView a) -> IO ()

instance Qdestroy (QAbstractItemViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy cobj_x0

instance Qdestroy (QAbstractItemView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_destroy1" qtc_QAbstractItemView_destroy1 :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance Qdestroy (QAbstractItemViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractItemView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractItemView_destroy2" qtc_QAbstractItemView_destroy2 :: Ptr (TQAbstractItemView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractItemViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractItemView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_devType_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_devType_h" qtc_QAbstractItemView_devType_h :: Ptr (TQAbstractItemView a) -> IO CInt

instance QdevType (QAbstractItemViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_devType_h cobj_x0

instance QenabledChange (QAbstractItemView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_enabledChange" qtc_QAbstractItemView_enabledChange :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QenabledChange (QAbstractItemViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractItemView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_enterEvent_h" qtc_QAbstractItemView_enterEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractItemViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractItemView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractItemView_focusNextChild" qtc_QAbstractItemView_focusNextChild :: Ptr (TQAbstractItemView a) -> IO CBool

instance QfocusNextChild (QAbstractItemViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusNextChild cobj_x0

instance QfocusPreviousChild (QAbstractItemView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractItemView_focusPreviousChild" qtc_QAbstractItemView_focusPreviousChild :: Ptr (TQAbstractItemView a) -> IO CBool

instance QfocusPreviousChild (QAbstractItemViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_focusPreviousChild cobj_x0

instance QfontChange (QAbstractItemView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_fontChange" qtc_QAbstractItemView_fontChange :: Ptr (TQAbstractItemView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractItemViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractItemView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemView_heightForWidth_h" qtc_QAbstractItemView_heightForWidth_h :: Ptr (TQAbstractItemView a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractItemViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractItemView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_hideEvent_h" qtc_QAbstractItemView_hideEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractItemViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QAbstractItemView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_keyReleaseEvent_h" qtc_QAbstractItemView_keyReleaseEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractItemViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QAbstractItemView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_languageChange cobj_x0

foreign import ccall "qtc_QAbstractItemView_languageChange" qtc_QAbstractItemView_languageChange :: Ptr (TQAbstractItemView a) -> IO ()

instance QlanguageChange (QAbstractItemViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_languageChange cobj_x0

instance QleaveEvent (QAbstractItemView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_leaveEvent_h" qtc_QAbstractItemView_leaveEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractItemViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractItemView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractItemView_metric" qtc_QAbstractItemView_metric :: Ptr (TQAbstractItemView a) -> CLong -> IO CInt

instance Qmetric (QAbstractItemViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QAbstractItemView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemView_move1" qtc_QAbstractItemView_move1 :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractItemViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractItemView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractItemView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractItemView_move_qth" qtc_QAbstractItemView_move_qth :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractItemViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractItemView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractItemView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_move" qtc_QAbstractItemView_move :: Ptr (TQAbstractItemView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractItemViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractItemView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_moveEvent_h" qtc_QAbstractItemView_moveEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractItemViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractItemView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractItemView_paintEngine_h" qtc_QAbstractItemView_paintEngine_h :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractItemViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_paintEngine_h cobj_x0

instance QpaletteChange (QAbstractItemView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_paletteChange" qtc_QAbstractItemView_paletteChange :: Ptr (TQAbstractItemView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractItemViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractItemView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_repaint cobj_x0

foreign import ccall "qtc_QAbstractItemView_repaint" qtc_QAbstractItemView_repaint :: Ptr (TQAbstractItemView a) -> IO ()

instance Qrepaint (QAbstractItemViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_repaint cobj_x0

instance Qrepaint (QAbstractItemView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractItemView_repaint2" qtc_QAbstractItemView_repaint2 :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractItemViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractItemView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_repaint1" qtc_QAbstractItemView_repaint1 :: Ptr (TQAbstractItemView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractItemViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractItemView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractItemView_resetInputContext" qtc_QAbstractItemView_resetInputContext :: Ptr (TQAbstractItemView a) -> IO ()

instance QresetInputContext (QAbstractItemViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_resetInputContext cobj_x0

instance Qresize (QAbstractItemView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemView_resize1" qtc_QAbstractItemView_resize1 :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractItemViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractItemView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_resize" qtc_QAbstractItemView_resize :: Ptr (TQAbstractItemView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractItemViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_resize cobj_x0 cobj_x1

instance Qresize (QAbstractItemView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractItemView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractItemView_resize_qth" qtc_QAbstractItemView_resize_qth :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractItemViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractItemView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QAbstractItemView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractItemView_setGeometry1" qtc_QAbstractItemView_setGeometry1 :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractItemViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractItemView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_setGeometry" qtc_QAbstractItemView_setGeometry :: Ptr (TQAbstractItemView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractItemViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractItemView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractItemView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractItemView_setGeometry_qth" qtc_QAbstractItemView_setGeometry_qth :: Ptr (TQAbstractItemView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractItemViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractItemView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractItemView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setMouseTracking" qtc_QAbstractItemView_setMouseTracking :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractItemViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QAbstractItemView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_setVisible_h" qtc_QAbstractItemView_setVisible_h :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QsetVisible (QAbstractItemViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractItemView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_showEvent_h" qtc_QAbstractItemView_showEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractItemViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QAbstractItemView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_tabletEvent_h" qtc_QAbstractItemView_tabletEvent_h :: Ptr (TQAbstractItemView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractItemViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractItemView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractItemView_updateMicroFocus" qtc_QAbstractItemView_updateMicroFocus :: Ptr (TQAbstractItemView a) -> IO ()

instance QupdateMicroFocus (QAbstractItemViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QAbstractItemView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractItemView_windowActivationChange" qtc_QAbstractItemView_windowActivationChange :: Ptr (TQAbstractItemView a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractItemViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractItemView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_childEvent" qtc_QAbstractItemView_childEvent :: Ptr (TQAbstractItemView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractItemViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractItemView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemView_connectNotify" qtc_QAbstractItemView_connectNotify :: Ptr (TQAbstractItemView a) -> CWString -> IO ()

instance QconnectNotify (QAbstractItemViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractItemView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemView_customEvent" qtc_QAbstractItemView_customEvent :: Ptr (TQAbstractItemView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractItemViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractItemView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemView_disconnectNotify" qtc_QAbstractItemView_disconnectNotify :: Ptr (TQAbstractItemView a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractItemViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAbstractItemView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemView_eventFilter_h" qtc_QAbstractItemView_eventFilter_h :: Ptr (TQAbstractItemView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractItemViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractItemView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemView_receivers" qtc_QAbstractItemView_receivers :: Ptr (TQAbstractItemView a) -> CWString -> IO CInt

instance Qreceivers (QAbstractItemViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemView_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractItemView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sender cobj_x0

foreign import ccall "qtc_QAbstractItemView_sender" qtc_QAbstractItemView_sender :: Ptr (TQAbstractItemView a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractItemViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemView_sender cobj_x0

