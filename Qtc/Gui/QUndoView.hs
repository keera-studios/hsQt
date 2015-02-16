{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUndoView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QUndoView (
  QqUndoView(..)
  ,cleanIcon
  ,emptyLabel
  ,setCleanIcon
  ,setEmptyLabel
  ,setStack
  ,stack
  ,qUndoView_delete
  ,qUndoView_deleteLater
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

instance QuserMethod (QUndoView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUndoView_userMethod" qtc_QUndoView_userMethod :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QuserMethod (QUndoViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUndoView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUndoView_userMethodVariant" qtc_QUndoView_userMethodVariant :: Ptr (TQUndoView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUndoViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUndoView x1 where
  qUndoView :: x1 -> IO (QUndoView ())

instance QqUndoView (()) where
 qUndoView ()
  = withQUndoViewResult $
    qtc_QUndoView

foreign import ccall "qtc_QUndoView" qtc_QUndoView :: IO (Ptr (TQUndoView ()))

instance QqUndoView ((QWidget t1)) where
 qUndoView (x1)
  = withQUndoViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView1 cobj_x1

foreign import ccall "qtc_QUndoView1" qtc_QUndoView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQUndoView ()))

instance QqUndoView ((QUndoStack t1)) where
 qUndoView (x1)
  = withQUndoViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView2 cobj_x1

foreign import ccall "qtc_QUndoView2" qtc_QUndoView2 :: Ptr (TQUndoStack t1) -> IO (Ptr (TQUndoView ()))

instance QqUndoView ((QUndoGroup t1)) where
 qUndoView (x1)
  = withQUndoViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView3 cobj_x1

foreign import ccall "qtc_QUndoView3" qtc_QUndoView3 :: Ptr (TQUndoGroup t1) -> IO (Ptr (TQUndoView ()))

instance QqUndoView ((QUndoGroup t1, QWidget t2)) where
 qUndoView (x1, x2)
  = withQUndoViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView4 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView4" qtc_QUndoView4 :: Ptr (TQUndoGroup t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQUndoView ()))

instance QqUndoView ((QUndoStack t1, QWidget t2)) where
 qUndoView (x1, x2)
  = withQUndoViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView5 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView5" qtc_QUndoView5 :: Ptr (TQUndoStack t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQUndoView ()))

cleanIcon :: QUndoView a -> (()) -> IO (QIcon ())
cleanIcon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_cleanIcon cobj_x0

foreign import ccall "qtc_QUndoView_cleanIcon" qtc_QUndoView_cleanIcon :: Ptr (TQUndoView a) -> IO (Ptr (TQIcon ()))

emptyLabel :: QUndoView a -> (()) -> IO (String)
emptyLabel x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_emptyLabel cobj_x0

foreign import ccall "qtc_QUndoView_emptyLabel" qtc_QUndoView_emptyLabel :: Ptr (TQUndoView a) -> IO (Ptr (TQString ()))

instance Qgroup (QUndoView a) (()) (IO (QUndoGroup ())) where
 group x0 ()
  = withQUndoGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_group cobj_x0

foreign import ccall "qtc_QUndoView_group" qtc_QUndoView_group :: Ptr (TQUndoView a) -> IO (Ptr (TQUndoGroup ()))

setCleanIcon :: QUndoView a -> ((QIcon t1)) -> IO ()
setCleanIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setCleanIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setCleanIcon" qtc_QUndoView_setCleanIcon :: Ptr (TQUndoView a) -> Ptr (TQIcon t1) -> IO ()

setEmptyLabel :: QUndoView a -> ((String)) -> IO ()
setEmptyLabel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_setEmptyLabel cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoView_setEmptyLabel" qtc_QUndoView_setEmptyLabel :: Ptr (TQUndoView a) -> CWString -> IO ()

instance QsetGroup (QUndoView a) ((QUndoGroup t1)) where
 setGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setGroup" qtc_QUndoView_setGroup :: Ptr (TQUndoView a) -> Ptr (TQUndoGroup t1) -> IO ()

setStack :: QUndoView a -> ((QUndoStack t1)) -> IO ()
setStack x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setStack cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setStack" qtc_QUndoView_setStack :: Ptr (TQUndoView a) -> Ptr (TQUndoStack t1) -> IO ()

stack :: QUndoView a -> (()) -> IO (QUndoStack ())
stack x0 ()
  = withQUndoStackResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_stack cobj_x0

foreign import ccall "qtc_QUndoView_stack" qtc_QUndoView_stack :: Ptr (TQUndoView a) -> IO (Ptr (TQUndoStack ()))

qUndoView_delete :: QUndoView a -> IO ()
qUndoView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_delete cobj_x0

foreign import ccall "qtc_QUndoView_delete" qtc_QUndoView_delete :: Ptr (TQUndoView a) -> IO ()

qUndoView_deleteLater :: QUndoView a -> IO ()
qUndoView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_deleteLater cobj_x0

foreign import ccall "qtc_QUndoView_deleteLater" qtc_QUndoView_deleteLater :: Ptr (TQUndoView a) -> IO ()

instance QqcontentsSize (QUndoView ()) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_contentsSize cobj_x0

foreign import ccall "qtc_QUndoView_contentsSize" qtc_QUndoView_contentsSize :: Ptr (TQUndoView a) -> IO (Ptr (TQSize ()))

instance QqcontentsSize (QUndoViewSc a) (()) where
 qcontentsSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_contentsSize cobj_x0

instance QcontentsSize (QUndoView ()) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QUndoView_contentsSize_qth" qtc_QUndoView_contentsSize_qth :: Ptr (TQUndoView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QcontentsSize (QUndoViewSc a) (()) where
 contentsSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_contentsSize_qth cobj_x0 csize_ret_w csize_ret_h

instance QcurrentChanged (QUndoView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_currentChanged" qtc_QUndoView_currentChanged :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QUndoViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QUndoView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_dataChanged" qtc_QUndoView_dataChanged :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QUndoViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_dataChanged cobj_x0 cobj_x1 cobj_x2

instance QdoItemsLayout (QUndoView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QUndoView_doItemsLayout_h" qtc_QUndoView_doItemsLayout_h :: Ptr (TQUndoView a) -> IO ()

instance QdoItemsLayout (QUndoViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_doItemsLayout_h cobj_x0

instance QdragLeaveEvent (QUndoView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_dragLeaveEvent_h" qtc_QUndoView_dragLeaveEvent_h :: Ptr (TQUndoView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QUndoViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QUndoView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_dragMoveEvent_h" qtc_QUndoView_dragMoveEvent_h :: Ptr (TQUndoView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QUndoViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QUndoView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_dropEvent_h" qtc_QUndoView_dropEvent_h :: Ptr (TQUndoView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QUndoViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dropEvent_h cobj_x0 cobj_x1

instance Qevent (QUndoView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_event_h" qtc_QUndoView_event_h :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QUndoViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_event_h cobj_x0 cobj_x1

instance QhorizontalOffset (QUndoView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalOffset cobj_x0

foreign import ccall "qtc_QUndoView_horizontalOffset" qtc_QUndoView_horizontalOffset :: Ptr (TQUndoView a) -> IO CInt

instance QhorizontalOffset (QUndoViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalOffset cobj_x0

instance QindexAt (QUndoView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QUndoView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QUndoView_indexAt_qth_h" qtc_QUndoView_indexAt_qth_h :: Ptr (TQUndoView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QUndoViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QUndoView_indexAt_qth_h cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QUndoView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_indexAt_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_indexAt_h" qtc_QUndoView_indexAt_h :: Ptr (TQUndoView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QUndoViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_indexAt_h cobj_x0 cobj_x1

instance QinternalDrag (QUndoView ()) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUndoView_internalDrag" qtc_QUndoView_internalDrag :: Ptr (TQUndoView a) -> CLong -> IO ()

instance QinternalDrag (QUndoViewSc a) ((DropActions)) where
 internalDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_internalDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QinternalDrop (QUndoView ()) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_internalDrop cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_internalDrop" qtc_QUndoView_internalDrop :: Ptr (TQUndoView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QinternalDrop (QUndoViewSc a) ((QDropEvent t1)) where
 internalDrop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_internalDrop cobj_x0 cobj_x1

instance QisIndexHidden (QUndoView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_isIndexHidden" qtc_QUndoView_isIndexHidden :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QUndoViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_isIndexHidden cobj_x0 cobj_x1

instance QmouseMoveEvent (QUndoView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_mouseMoveEvent_h" qtc_QUndoView_mouseMoveEvent_h :: Ptr (TQUndoView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QUndoViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QUndoView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_mouseReleaseEvent_h" qtc_QUndoView_mouseReleaseEvent_h :: Ptr (TQUndoView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QUndoViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QUndoView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QUndoView_moveCursor" qtc_QUndoView_moveCursor :: Ptr (TQUndoView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QUndoViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

instance QpaintEvent (QUndoView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_paintEvent_h" qtc_QUndoView_paintEvent_h :: Ptr (TQUndoView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QUndoViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_paintEvent_h cobj_x0 cobj_x1

instance QqrectForIndex (QUndoView ()) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rectForIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_rectForIndex" qtc_QUndoView_rectForIndex :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqrectForIndex (QUndoViewSc a) ((QModelIndex t1)) where
 qrectForIndex x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rectForIndex cobj_x0 cobj_x1

instance QrectForIndex (QUndoView ()) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QUndoView_rectForIndex_qth" qtc_QUndoView_rectForIndex_qth :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QrectForIndex (QUndoViewSc a) ((QModelIndex t1)) where
 rectForIndex x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rectForIndex_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance Qreset (QUndoView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_reset_h cobj_x0

foreign import ccall "qtc_QUndoView_reset_h" qtc_QUndoView_reset_h :: Ptr (TQUndoView a) -> IO ()

instance Qreset (QUndoViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_reset_h cobj_x0

instance QresizeContents (QUndoView ()) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QUndoView_resizeContents" qtc_QUndoView_resizeContents :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance QresizeContents (QUndoViewSc a) ((Int, Int)) where
 resizeContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resizeContents cobj_x0 (toCInt x1) (toCInt x2)

instance QresizeEvent (QUndoView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_resizeEvent_h" qtc_QUndoView_resizeEvent_h :: Ptr (TQUndoView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QUndoViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_resizeEvent_h cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QUndoView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QUndoView_rowsAboutToBeRemoved" qtc_QUndoView_rowsAboutToBeRemoved :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QUndoViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QrowsInserted (QUndoView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QUndoView_rowsInserted" qtc_QUndoView_rowsInserted :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QUndoViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscrollContentsBy (QUndoView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QUndoView_scrollContentsBy_h" qtc_QUndoView_scrollContentsBy_h :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QUndoViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QUndoView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUndoView_scrollTo_h" qtc_QUndoView_scrollTo_h :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QUndoViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_scrollTo_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QselectedIndexes (QUndoView ()) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_selectedIndexes cobj_x0 arr

foreign import ccall "qtc_QUndoView_selectedIndexes" qtc_QUndoView_selectedIndexes :: Ptr (TQUndoView a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance QselectedIndexes (QUndoViewSc a) (()) where
 selectedIndexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_selectedIndexes cobj_x0 arr

instance QselectionChanged (QUndoView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_selectionChanged" qtc_QUndoView_selectionChanged :: Ptr (TQUndoView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QUndoViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QsetPositionForIndex (QUndoView ()) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QUndoView_setPositionForIndex_qth" qtc_QUndoView_setPositionForIndex_qth :: Ptr (TQUndoView a) -> CInt -> CInt -> Ptr (TQModelIndex t2) -> IO ()

instance QsetPositionForIndex (QUndoViewSc a) ((Point, QModelIndex t2)) where
 setPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_setPositionForIndex_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

instance QqsetPositionForIndex (QUndoView ()) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_setPositionForIndex" qtc_QUndoView_setPositionForIndex :: Ptr (TQUndoView a) -> Ptr (TQPoint t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QqsetPositionForIndex (QUndoViewSc a) ((QPoint t1, QModelIndex t2)) where
 qsetPositionForIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_setPositionForIndex cobj_x0 cobj_x1 cobj_x2

instance QsetRootIndex (QUndoView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setRootIndex_h" qtc_QUndoView_setRootIndex_h :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QUndoViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setRootIndex_h cobj_x0 cobj_x1

instance QqsetSelection (QUndoView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QUndoView_setSelection" qtc_QUndoView_setSelection :: Ptr (TQUndoView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QUndoViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QUndoView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QUndoView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QUndoView_setSelection_qth" qtc_QUndoView_setSelection_qth :: Ptr (TQUndoView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QUndoViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QUndoView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSpacing (QUndoView ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_setSpacing" qtc_QUndoView_setSpacing :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QsetSpacing (QUndoViewSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setSpacing cobj_x0 (toCInt x1)

instance Qspacing (QUndoView ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_spacing cobj_x0

foreign import ccall "qtc_QUndoView_spacing" qtc_QUndoView_spacing :: Ptr (TQUndoView a) -> IO CInt

instance Qspacing (QUndoViewSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_spacing cobj_x0

instance QstartDrag (QUndoView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUndoView_startDrag" qtc_QUndoView_startDrag :: Ptr (TQUndoView a) -> CLong -> IO ()

instance QstartDrag (QUndoViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance QtimerEvent (QUndoView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_timerEvent" qtc_QUndoView_timerEvent :: Ptr (TQUndoView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QUndoViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_timerEvent cobj_x0 cobj_x1

instance QupdateGeometries (QUndoView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateGeometries cobj_x0

foreign import ccall "qtc_QUndoView_updateGeometries" qtc_QUndoView_updateGeometries :: Ptr (TQUndoView a) -> IO ()

instance QupdateGeometries (QUndoViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateGeometries cobj_x0

instance QverticalOffset (QUndoView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalOffset cobj_x0

foreign import ccall "qtc_QUndoView_verticalOffset" qtc_QUndoView_verticalOffset :: Ptr (TQUndoView a) -> IO CInt

instance QverticalOffset (QUndoViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalOffset cobj_x0

instance QviewOptions (QUndoView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_viewOptions cobj_x0

foreign import ccall "qtc_QUndoView_viewOptions" qtc_QUndoView_viewOptions :: Ptr (TQUndoView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QUndoViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_viewOptions cobj_x0

instance QqvisualRect (QUndoView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_visualRect_h" qtc_QUndoView_visualRect_h :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QUndoViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRect_h cobj_x0 cobj_x1

instance QvisualRect (QUndoView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QUndoView_visualRect_qth_h" qtc_QUndoView_visualRect_qth_h :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QUndoViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRect_qth_h cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QUndoView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_visualRegionForSelection" qtc_QUndoView_visualRegionForSelection :: Ptr (TQUndoView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QUndoViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_visualRegionForSelection cobj_x0 cobj_x1

instance QcloseEditor (QUndoView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUndoView_closeEditor" qtc_QUndoView_closeEditor :: Ptr (TQUndoView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QUndoViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QUndoView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_commitData" qtc_QUndoView_commitData :: Ptr (TQUndoView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QUndoViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QUndoView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QUndoView_dirtyRegionOffset_qth" qtc_QUndoView_dirtyRegionOffset_qth :: Ptr (TQUndoView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QUndoViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QUndoView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QUndoView_dirtyRegionOffset" qtc_QUndoView_dirtyRegionOffset :: Ptr (TQUndoView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QUndoViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QUndoView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_doAutoScroll cobj_x0

foreign import ccall "qtc_QUndoView_doAutoScroll" qtc_QUndoView_doAutoScroll :: Ptr (TQUndoView a) -> IO ()

instance QdoAutoScroll (QUndoViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_doAutoScroll cobj_x0

instance QdragEnterEvent (QUndoView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_dragEnterEvent_h" qtc_QUndoView_dragEnterEvent_h :: Ptr (TQUndoView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QUndoViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QUndoView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QUndoView_dropIndicatorPosition" qtc_QUndoView_dropIndicatorPosition :: Ptr (TQUndoView a) -> IO CLong

instance QdropIndicatorPosition (QUndoViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_dropIndicatorPosition cobj_x0

instance Qedit (QUndoView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QUndoView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QUndoView_edit" qtc_QUndoView_edit :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QUndoViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QUndoView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QUndoView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_editorDestroyed" qtc_QUndoView_editorDestroyed :: Ptr (TQUndoView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QUndoViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QUndoView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QUndoView_executeDelayedItemsLayout" qtc_QUndoView_executeDelayedItemsLayout :: Ptr (TQUndoView a) -> IO ()

instance QexecuteDelayedItemsLayout (QUndoViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QUndoView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_focusInEvent_h" qtc_QUndoView_focusInEvent_h :: Ptr (TQUndoView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QUndoViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QUndoView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_focusNextPrevChild" qtc_QUndoView_focusNextPrevChild :: Ptr (TQUndoView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QUndoViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QUndoView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_focusOutEvent_h" qtc_QUndoView_focusOutEvent_h :: Ptr (TQUndoView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QUndoViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarAction (QUndoView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_horizontalScrollbarAction" qtc_QUndoView_horizontalScrollbarAction :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QUndoViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QhorizontalScrollbarValueChanged (QUndoView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_horizontalScrollbarValueChanged" qtc_QUndoView_horizontalScrollbarValueChanged :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QUndoViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QUndoView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QUndoView_horizontalStepsPerItem" qtc_QUndoView_horizontalStepsPerItem :: Ptr (TQUndoView a) -> IO CInt

instance QhorizontalStepsPerItem (QUndoViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QUndoView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_inputMethodEvent" qtc_QUndoView_inputMethodEvent :: Ptr (TQUndoView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QUndoViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QUndoView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QUndoView_inputMethodQuery_h" qtc_QUndoView_inputMethodQuery_h :: Ptr (TQUndoView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QUndoViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QUndoView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_keyPressEvent_h" qtc_QUndoView_keyPressEvent_h :: Ptr (TQUndoView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QUndoViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QUndoView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoView_keyboardSearch_h" qtc_QUndoView_keyboardSearch_h :: Ptr (TQUndoView a) -> CWString -> IO ()

instance QkeyboardSearch (QUndoViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_keyboardSearch_h cobj_x0 cstr_x1

instance QmouseDoubleClickEvent (QUndoView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_mouseDoubleClickEvent_h" qtc_QUndoView_mouseDoubleClickEvent_h :: Ptr (TQUndoView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QUndoViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QUndoView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_mousePressEvent_h" qtc_QUndoView_mousePressEvent_h :: Ptr (TQUndoView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QUndoViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_mousePressEvent_h cobj_x0 cobj_x1

instance QscheduleDelayedItemsLayout (QUndoView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QUndoView_scheduleDelayedItemsLayout" qtc_QUndoView_scheduleDelayedItemsLayout :: Ptr (TQUndoView a) -> IO ()

instance QscheduleDelayedItemsLayout (QUndoViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QUndoView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QUndoView_scrollDirtyRegion" qtc_QUndoView_scrollDirtyRegion :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QUndoViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QUndoView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_selectAll_h cobj_x0

foreign import ccall "qtc_QUndoView_selectAll_h" qtc_QUndoView_selectAll_h :: Ptr (TQUndoView a) -> IO ()

instance QselectAll (QUndoViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_selectAll_h cobj_x0

instance QselectionCommand (QUndoView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_selectionCommand" qtc_QUndoView_selectionCommand :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QUndoViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QUndoView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_selectionCommand1" qtc_QUndoView_selectionCommand1 :: Ptr (TQUndoView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QUndoViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QUndoView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setDirtyRegion" qtc_QUndoView_setDirtyRegion :: Ptr (TQUndoView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QUndoViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QUndoView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_setHorizontalStepsPerItem" qtc_QUndoView_setHorizontalStepsPerItem :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QUndoViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetModel (QUndoView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setModel_h" qtc_QUndoView_setModel_h :: Ptr (TQUndoView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QUndoViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setModel_h cobj_x0 cobj_x1

instance QsetSelectionModel (QUndoView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setSelectionModel_h" qtc_QUndoView_setSelectionModel_h :: Ptr (TQUndoView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QUndoViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setSelectionModel_h cobj_x0 cobj_x1

instance QsetState (QUndoView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QUndoView_setState" qtc_QUndoView_setState :: Ptr (TQUndoView a) -> CLong -> IO ()

instance QsetState (QUndoViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QUndoView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_setVerticalStepsPerItem" qtc_QUndoView_setVerticalStepsPerItem :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QUndoViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForColumn (QUndoView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHintForColumn_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_sizeHintForColumn_h" qtc_QUndoView_sizeHintForColumn_h :: Ptr (TQUndoView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QUndoViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHintForColumn_h cobj_x0 (toCInt x1)

instance QsizeHintForRow (QUndoView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_sizeHintForRow_h" qtc_QUndoView_sizeHintForRow_h :: Ptr (TQUndoView a) -> CInt -> IO CInt

instance QsizeHintForRow (QUndoViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QUndoView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_startAutoScroll cobj_x0

foreign import ccall "qtc_QUndoView_startAutoScroll" qtc_QUndoView_startAutoScroll :: Ptr (TQUndoView a) -> IO ()

instance QstartAutoScroll (QUndoViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_startAutoScroll cobj_x0

instance Qstate (QUndoView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_state cobj_x0

foreign import ccall "qtc_QUndoView_state" qtc_QUndoView_state :: Ptr (TQUndoView a) -> IO CLong

instance Qstate (QUndoViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_state cobj_x0

instance QstopAutoScroll (QUndoView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QUndoView_stopAutoScroll" qtc_QUndoView_stopAutoScroll :: Ptr (TQUndoView a) -> IO ()

instance QstopAutoScroll (QUndoViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_stopAutoScroll cobj_x0

instance QupdateEditorData (QUndoView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateEditorData cobj_x0

foreign import ccall "qtc_QUndoView_updateEditorData" qtc_QUndoView_updateEditorData :: Ptr (TQUndoView a) -> IO ()

instance QupdateEditorData (QUndoViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QUndoView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QUndoView_updateEditorGeometries" qtc_QUndoView_updateEditorGeometries :: Ptr (TQUndoView a) -> IO ()

instance QupdateEditorGeometries (QUndoViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QUndoView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_verticalScrollbarAction" qtc_QUndoView_verticalScrollbarAction :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QUndoViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QUndoView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_verticalScrollbarValueChanged" qtc_QUndoView_verticalScrollbarValueChanged :: Ptr (TQUndoView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QUndoViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QUndoView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QUndoView_verticalStepsPerItem" qtc_QUndoView_verticalStepsPerItem :: Ptr (TQUndoView a) -> IO CInt

instance QverticalStepsPerItem (QUndoViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_verticalStepsPerItem cobj_x0

instance QviewportEvent (QUndoView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_viewportEvent_h" qtc_QUndoView_viewportEvent_h :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QUndoViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_viewportEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QUndoView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_contextMenuEvent_h" qtc_QUndoView_contextMenuEvent_h :: Ptr (TQUndoView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QUndoViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QUndoView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QUndoView_minimumSizeHint_h" qtc_QUndoView_minimumSizeHint_h :: Ptr (TQUndoView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QUndoViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QUndoView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QUndoView_minimumSizeHint_qth_h" qtc_QUndoView_minimumSizeHint_qth_h :: Ptr (TQUndoView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QUndoViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QUndoView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QUndoView_setViewportMargins" qtc_QUndoView_setViewportMargins :: Ptr (TQUndoView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QUndoViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QUndoView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setupViewport" qtc_QUndoView_setupViewport :: Ptr (TQUndoView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QUndoViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QUndoView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHint_h cobj_x0

foreign import ccall "qtc_QUndoView_sizeHint_h" qtc_QUndoView_sizeHint_h :: Ptr (TQUndoView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QUndoViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHint_h cobj_x0

instance QsizeHint (QUndoView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QUndoView_sizeHint_qth_h" qtc_QUndoView_sizeHint_qth_h :: Ptr (TQUndoView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QUndoViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QwheelEvent (QUndoView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_wheelEvent_h" qtc_QUndoView_wheelEvent_h :: Ptr (TQUndoView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QUndoViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QUndoView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_changeEvent_h" qtc_QUndoView_changeEvent_h :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QUndoViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QUndoView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_drawFrame" qtc_QUndoView_drawFrame :: Ptr (TQUndoView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QUndoViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QUndoView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_actionEvent_h" qtc_QUndoView_actionEvent_h :: Ptr (TQUndoView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QUndoViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QUndoView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_addAction" qtc_QUndoView_addAction :: Ptr (TQUndoView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QUndoViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QUndoView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_closeEvent_h" qtc_QUndoView_closeEvent_h :: Ptr (TQUndoView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QUndoViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QUndoView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_create cobj_x0

foreign import ccall "qtc_QUndoView_create" qtc_QUndoView_create :: Ptr (TQUndoView a) -> IO ()

instance Qcreate (QUndoViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_create cobj_x0

instance Qcreate (QUndoView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_create1" qtc_QUndoView_create1 :: Ptr (TQUndoView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QUndoViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create1 cobj_x0 cobj_x1

instance Qcreate (QUndoView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QUndoView_create2" qtc_QUndoView_create2 :: Ptr (TQUndoView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QUndoViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QUndoView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QUndoView_create3" qtc_QUndoView_create3 :: Ptr (TQUndoView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QUndoViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QUndoView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy cobj_x0

foreign import ccall "qtc_QUndoView_destroy" qtc_QUndoView_destroy :: Ptr (TQUndoView a) -> IO ()

instance Qdestroy (QUndoViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy cobj_x0

instance Qdestroy (QUndoView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_destroy1" qtc_QUndoView_destroy1 :: Ptr (TQUndoView a) -> CBool -> IO ()

instance Qdestroy (QUndoViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QUndoView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QUndoView_destroy2" qtc_QUndoView_destroy2 :: Ptr (TQUndoView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QUndoViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QUndoView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_devType_h cobj_x0

foreign import ccall "qtc_QUndoView_devType_h" qtc_QUndoView_devType_h :: Ptr (TQUndoView a) -> IO CInt

instance QdevType (QUndoViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_devType_h cobj_x0

instance QenabledChange (QUndoView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_enabledChange" qtc_QUndoView_enabledChange :: Ptr (TQUndoView a) -> CBool -> IO ()

instance QenabledChange (QUndoViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QUndoView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_enterEvent_h" qtc_QUndoView_enterEvent_h :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QUndoViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QUndoView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusNextChild cobj_x0

foreign import ccall "qtc_QUndoView_focusNextChild" qtc_QUndoView_focusNextChild :: Ptr (TQUndoView a) -> IO CBool

instance QfocusNextChild (QUndoViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusNextChild cobj_x0

instance QfocusPreviousChild (QUndoView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QUndoView_focusPreviousChild" qtc_QUndoView_focusPreviousChild :: Ptr (TQUndoView a) -> IO CBool

instance QfocusPreviousChild (QUndoViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_focusPreviousChild cobj_x0

instance QfontChange (QUndoView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_fontChange" qtc_QUndoView_fontChange :: Ptr (TQUndoView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QUndoViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QUndoView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUndoView_heightForWidth_h" qtc_QUndoView_heightForWidth_h :: Ptr (TQUndoView a) -> CInt -> IO CInt

instance QheightForWidth (QUndoViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QUndoView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_hideEvent_h" qtc_QUndoView_hideEvent_h :: Ptr (TQUndoView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QUndoViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QUndoView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_keyReleaseEvent_h" qtc_QUndoView_keyReleaseEvent_h :: Ptr (TQUndoView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QUndoViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QUndoView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_languageChange cobj_x0

foreign import ccall "qtc_QUndoView_languageChange" qtc_QUndoView_languageChange :: Ptr (TQUndoView a) -> IO ()

instance QlanguageChange (QUndoViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_languageChange cobj_x0

instance QleaveEvent (QUndoView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_leaveEvent_h" qtc_QUndoView_leaveEvent_h :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QUndoViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QUndoView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QUndoView_metric" qtc_QUndoView_metric :: Ptr (TQUndoView a) -> CLong -> IO CInt

instance Qmetric (QUndoViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QUndoView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QUndoView_move1" qtc_QUndoView_move1 :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance Qmove (QUndoViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QUndoView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QUndoView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QUndoView_move_qth" qtc_QUndoView_move_qth :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance Qmove (QUndoViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QUndoView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QUndoView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_move" qtc_QUndoView_move :: Ptr (TQUndoView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QUndoViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_move cobj_x0 cobj_x1

instance QmoveEvent (QUndoView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_moveEvent_h" qtc_QUndoView_moveEvent_h :: Ptr (TQUndoView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QUndoViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QUndoView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_paintEngine_h cobj_x0

foreign import ccall "qtc_QUndoView_paintEngine_h" qtc_QUndoView_paintEngine_h :: Ptr (TQUndoView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QUndoViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_paintEngine_h cobj_x0

instance QpaletteChange (QUndoView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_paletteChange" qtc_QUndoView_paletteChange :: Ptr (TQUndoView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QUndoViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QUndoView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_repaint cobj_x0

foreign import ccall "qtc_QUndoView_repaint" qtc_QUndoView_repaint :: Ptr (TQUndoView a) -> IO ()

instance Qrepaint (QUndoViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_repaint cobj_x0

instance Qrepaint (QUndoView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QUndoView_repaint2" qtc_QUndoView_repaint2 :: Ptr (TQUndoView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QUndoViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QUndoView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_repaint1" qtc_QUndoView_repaint1 :: Ptr (TQUndoView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QUndoViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QUndoView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resetInputContext cobj_x0

foreign import ccall "qtc_QUndoView_resetInputContext" qtc_QUndoView_resetInputContext :: Ptr (TQUndoView a) -> IO ()

instance QresetInputContext (QUndoViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resetInputContext cobj_x0

instance Qresize (QUndoView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QUndoView_resize1" qtc_QUndoView_resize1 :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance Qresize (QUndoViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QUndoView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_resize" qtc_QUndoView_resize :: Ptr (TQUndoView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QUndoViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_resize cobj_x0 cobj_x1

instance Qresize (QUndoView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QUndoView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QUndoView_resize_qth" qtc_QUndoView_resize_qth :: Ptr (TQUndoView a) -> CInt -> CInt -> IO ()

instance Qresize (QUndoViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QUndoView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QUndoView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QUndoView_setGeometry1" qtc_QUndoView_setGeometry1 :: Ptr (TQUndoView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QUndoViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QUndoView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_setGeometry" qtc_QUndoView_setGeometry :: Ptr (TQUndoView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QUndoViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QUndoView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QUndoView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QUndoView_setGeometry_qth" qtc_QUndoView_setGeometry_qth :: Ptr (TQUndoView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QUndoViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QUndoView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QUndoView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_setMouseTracking" qtc_QUndoView_setMouseTracking :: Ptr (TQUndoView a) -> CBool -> IO ()

instance QsetMouseTracking (QUndoViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QUndoView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_setVisible_h" qtc_QUndoView_setVisible_h :: Ptr (TQUndoView a) -> CBool -> IO ()

instance QsetVisible (QUndoViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QUndoView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_showEvent_h" qtc_QUndoView_showEvent_h :: Ptr (TQUndoView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QUndoViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QUndoView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_tabletEvent_h" qtc_QUndoView_tabletEvent_h :: Ptr (TQUndoView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QUndoViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QUndoView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QUndoView_updateMicroFocus" qtc_QUndoView_updateMicroFocus :: Ptr (TQUndoView a) -> IO ()

instance QupdateMicroFocus (QUndoViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QUndoView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUndoView_windowActivationChange" qtc_QUndoView_windowActivationChange :: Ptr (TQUndoView a) -> CBool -> IO ()

instance QwindowActivationChange (QUndoViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QUndoView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_childEvent" qtc_QUndoView_childEvent :: Ptr (TQUndoView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QUndoViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QUndoView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoView_connectNotify" qtc_QUndoView_connectNotify :: Ptr (TQUndoView a) -> CWString -> IO ()

instance QconnectNotify (QUndoViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QUndoView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoView_customEvent" qtc_QUndoView_customEvent :: Ptr (TQUndoView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QUndoViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QUndoView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoView_disconnectNotify" qtc_QUndoView_disconnectNotify :: Ptr (TQUndoView a) -> CWString -> IO ()

instance QdisconnectNotify (QUndoViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QUndoView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUndoView_eventFilter_h" qtc_QUndoView_eventFilter_h :: Ptr (TQUndoView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QUndoViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QUndoView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoView_receivers" qtc_QUndoView_receivers :: Ptr (TQUndoView a) -> CWString -> IO CInt

instance Qreceivers (QUndoViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoView_receivers cobj_x0 cstr_x1

instance Qsender (QUndoView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sender cobj_x0

foreign import ccall "qtc_QUndoView_sender" qtc_QUndoView_sender :: Ptr (TQUndoView a) -> IO (Ptr (TQObject ()))

instance Qsender (QUndoViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoView_sender cobj_x0

