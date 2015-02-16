{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractScrollArea.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractScrollArea (
  QqAbstractScrollArea(..)
  ,addScrollBarWidget
  ,horizontalScrollBar
  ,horizontalScrollBarPolicy
  ,qmaximumViewportSize, maximumViewportSize
  ,scrollBarWidgets
  ,setHorizontalScrollBar
  ,setHorizontalScrollBarPolicy
  ,setVerticalScrollBar
  ,setVerticalScrollBarPolicy
  ,verticalScrollBar
  ,verticalScrollBarPolicy
  ,qAbstractScrollArea_delete
  ,qAbstractScrollArea_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QAbstractScrollArea ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractScrollArea_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractScrollArea_userMethod" qtc_QAbstractScrollArea_userMethod :: Ptr (TQAbstractScrollArea a) -> CInt -> IO ()

instance QuserMethod (QAbstractScrollAreaSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractScrollArea_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractScrollArea ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractScrollArea_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractScrollArea_userMethodVariant" qtc_QAbstractScrollArea_userMethodVariant :: Ptr (TQAbstractScrollArea a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractScrollAreaSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractScrollArea_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractScrollArea x1 where
  qAbstractScrollArea :: x1 -> IO (QAbstractScrollArea ())

instance QqAbstractScrollArea (()) where
 qAbstractScrollArea ()
  = withQAbstractScrollAreaResult $
    qtc_QAbstractScrollArea

foreign import ccall "qtc_QAbstractScrollArea" qtc_QAbstractScrollArea :: IO (Ptr (TQAbstractScrollArea ()))

instance QqAbstractScrollArea ((QWidget t1)) where
 qAbstractScrollArea (x1)
  = withQAbstractScrollAreaResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea1 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea1" qtc_QAbstractScrollArea1 :: Ptr (TQWidget t1) -> IO (Ptr (TQAbstractScrollArea ()))

addScrollBarWidget :: QAbstractScrollArea a -> ((QWidget t1, Alignment)) -> IO ()
addScrollBarWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_addScrollBarWidget cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QAbstractScrollArea_addScrollBarWidget" qtc_QAbstractScrollArea_addScrollBarWidget :: Ptr (TQAbstractScrollArea a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcontextMenuEvent (QAbstractScrollArea ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_contextMenuEvent_h" qtc_QAbstractScrollArea_contextMenuEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractScrollAreaSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_contextMenuEvent_h cobj_x0 cobj_x1

instance QcornerWidget (QAbstractScrollArea a) (()) where
 cornerWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_cornerWidget cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_cornerWidget" qtc_QAbstractScrollArea_cornerWidget :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQWidget ()))

instance QdragEnterEvent (QAbstractScrollArea ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_dragEnterEvent_h" qtc_QAbstractScrollArea_dragEnterEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractScrollAreaSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractScrollArea ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_dragLeaveEvent_h" qtc_QAbstractScrollArea_dragLeaveEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractScrollAreaSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractScrollArea ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_dragMoveEvent_h" qtc_QAbstractScrollArea_dragMoveEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractScrollAreaSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractScrollArea ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_dropEvent_h" qtc_QAbstractScrollArea_dropEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractScrollAreaSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_dropEvent_h cobj_x0 cobj_x1

instance Qevent (QAbstractScrollArea ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_event_h" qtc_QAbstractScrollArea_event_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_event_h cobj_x0 cobj_x1

horizontalScrollBar :: QAbstractScrollArea a -> (()) -> IO (QScrollBar ())
horizontalScrollBar x0 ()
  = withQScrollBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_horizontalScrollBar cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_horizontalScrollBar" qtc_QAbstractScrollArea_horizontalScrollBar :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQScrollBar ()))

horizontalScrollBarPolicy :: QAbstractScrollArea a -> (()) -> IO (ScrollBarPolicy)
horizontalScrollBarPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_horizontalScrollBarPolicy cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_horizontalScrollBarPolicy" qtc_QAbstractScrollArea_horizontalScrollBarPolicy :: Ptr (TQAbstractScrollArea a) -> IO CLong

instance QkeyPressEvent (QAbstractScrollArea ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_keyPressEvent_h" qtc_QAbstractScrollArea_keyPressEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractScrollAreaSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_keyPressEvent_h cobj_x0 cobj_x1

qmaximumViewportSize :: QAbstractScrollArea a -> (()) -> IO (QSize ())
qmaximumViewportSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_maximumViewportSize cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_maximumViewportSize" qtc_QAbstractScrollArea_maximumViewportSize :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQSize ()))

maximumViewportSize :: QAbstractScrollArea a -> (()) -> IO (Size)
maximumViewportSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_maximumViewportSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractScrollArea_maximumViewportSize_qth" qtc_QAbstractScrollArea_maximumViewportSize_qth :: Ptr (TQAbstractScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqminimumSizeHint (QAbstractScrollArea ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_minimumSizeHint_h" qtc_QAbstractScrollArea_minimumSizeHint_h :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractScrollAreaSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractScrollArea ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractScrollArea_minimumSizeHint_qth_h" qtc_QAbstractScrollArea_minimumSizeHint_qth_h :: Ptr (TQAbstractScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractScrollAreaSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QAbstractScrollArea ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_mouseDoubleClickEvent_h" qtc_QAbstractScrollArea_mouseDoubleClickEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractScrollAreaSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractScrollArea ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_mouseMoveEvent_h" qtc_QAbstractScrollArea_mouseMoveEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractScrollAreaSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractScrollArea ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_mousePressEvent_h" qtc_QAbstractScrollArea_mousePressEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractScrollAreaSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractScrollArea ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_mouseReleaseEvent_h" qtc_QAbstractScrollArea_mouseReleaseEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractScrollAreaSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QAbstractScrollArea ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_paintEvent_h" qtc_QAbstractScrollArea_paintEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractScrollAreaSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QAbstractScrollArea ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_resizeEvent_h" qtc_QAbstractScrollArea_resizeEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractScrollAreaSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_resizeEvent_h cobj_x0 cobj_x1

scrollBarWidgets :: QAbstractScrollArea a -> ((Alignment)) -> IO ([QWidget ()])
scrollBarWidgets x0 (x1)
  = withQListQWidgetResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_scrollBarWidgets cobj_x0 (toCLong $ qFlags_toInt x1) arr

foreign import ccall "qtc_QAbstractScrollArea_scrollBarWidgets" qtc_QAbstractScrollArea_scrollBarWidgets :: Ptr (TQAbstractScrollArea a) -> CLong -> Ptr (Ptr (TQWidget ())) -> IO CInt

instance QscrollContentsBy (QAbstractScrollArea ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractScrollArea_scrollContentsBy_h" qtc_QAbstractScrollArea_scrollContentsBy_h :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QAbstractScrollAreaSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QsetCornerWidget (QAbstractScrollArea a) ((QWidget t1)) where
 setCornerWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setCornerWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setCornerWidget" qtc_QAbstractScrollArea_setCornerWidget :: Ptr (TQAbstractScrollArea a) -> Ptr (TQWidget t1) -> IO ()

setHorizontalScrollBar :: QAbstractScrollArea a -> ((QScrollBar t1)) -> IO ()
setHorizontalScrollBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setHorizontalScrollBar cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setHorizontalScrollBar" qtc_QAbstractScrollArea_setHorizontalScrollBar :: Ptr (TQAbstractScrollArea a) -> Ptr (TQScrollBar t1) -> IO ()

setHorizontalScrollBarPolicy :: QAbstractScrollArea a -> ((ScrollBarPolicy)) -> IO ()
setHorizontalScrollBarPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setHorizontalScrollBarPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractScrollArea_setHorizontalScrollBarPolicy" qtc_QAbstractScrollArea_setHorizontalScrollBarPolicy :: Ptr (TQAbstractScrollArea a) -> CLong -> IO ()

setVerticalScrollBar :: QAbstractScrollArea a -> ((QScrollBar t1)) -> IO ()
setVerticalScrollBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setVerticalScrollBar cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setVerticalScrollBar" qtc_QAbstractScrollArea_setVerticalScrollBar :: Ptr (TQAbstractScrollArea a) -> Ptr (TQScrollBar t1) -> IO ()

setVerticalScrollBarPolicy :: QAbstractScrollArea a -> ((ScrollBarPolicy)) -> IO ()
setVerticalScrollBarPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setVerticalScrollBarPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractScrollArea_setVerticalScrollBarPolicy" qtc_QAbstractScrollArea_setVerticalScrollBarPolicy :: Ptr (TQAbstractScrollArea a) -> CLong -> IO ()

instance QsetViewport (QAbstractScrollArea a) ((QWidget t1)) where
 setViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setViewport" qtc_QAbstractScrollArea_setViewport :: Ptr (TQAbstractScrollArea a) -> Ptr (TQWidget t1) -> IO ()

instance QsetViewportMargins (QAbstractScrollArea ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractScrollArea_setViewportMargins" qtc_QAbstractScrollArea_setViewportMargins :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QAbstractScrollAreaSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QAbstractScrollArea ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setupViewport" qtc_QAbstractScrollArea_setupViewport :: Ptr (TQAbstractScrollArea a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QAbstractScrollAreaSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QAbstractScrollArea ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_sizeHint_h" qtc_QAbstractScrollArea_sizeHint_h :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractScrollAreaSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sizeHint_h cobj_x0

instance QsizeHint (QAbstractScrollArea ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractScrollArea_sizeHint_qth_h" qtc_QAbstractScrollArea_sizeHint_qth_h :: Ptr (TQAbstractScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractScrollAreaSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

verticalScrollBar :: QAbstractScrollArea a -> (()) -> IO (QScrollBar ())
verticalScrollBar x0 ()
  = withQScrollBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_verticalScrollBar cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_verticalScrollBar" qtc_QAbstractScrollArea_verticalScrollBar :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQScrollBar ()))

verticalScrollBarPolicy :: QAbstractScrollArea a -> (()) -> IO (ScrollBarPolicy)
verticalScrollBarPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_verticalScrollBarPolicy cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_verticalScrollBarPolicy" qtc_QAbstractScrollArea_verticalScrollBarPolicy :: Ptr (TQAbstractScrollArea a) -> IO CLong

instance Qviewport (QAbstractScrollArea a) (()) (IO (QWidget ())) where
 viewport x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_viewport cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_viewport" qtc_QAbstractScrollArea_viewport :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQWidget ()))

instance QviewportEvent (QAbstractScrollArea ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_viewportEvent_h" qtc_QAbstractScrollArea_viewportEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_viewportEvent_h cobj_x0 cobj_x1

instance QwheelEvent (QAbstractScrollArea ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_wheelEvent_h" qtc_QAbstractScrollArea_wheelEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractScrollAreaSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_wheelEvent_h cobj_x0 cobj_x1

qAbstractScrollArea_delete :: QAbstractScrollArea a -> IO ()
qAbstractScrollArea_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_delete cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_delete" qtc_QAbstractScrollArea_delete :: Ptr (TQAbstractScrollArea a) -> IO ()

qAbstractScrollArea_deleteLater :: QAbstractScrollArea a -> IO ()
qAbstractScrollArea_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_deleteLater" qtc_QAbstractScrollArea_deleteLater :: Ptr (TQAbstractScrollArea a) -> IO ()

instance QchangeEvent (QAbstractScrollArea ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_changeEvent_h" qtc_QAbstractScrollArea_changeEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QAbstractScrollArea ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_drawFrame" qtc_QAbstractScrollArea_drawFrame :: Ptr (TQAbstractScrollArea a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QAbstractScrollAreaSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QAbstractScrollArea ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_actionEvent_h" qtc_QAbstractScrollArea_actionEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractScrollAreaSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractScrollArea ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_addAction" qtc_QAbstractScrollArea_addAction :: Ptr (TQAbstractScrollArea a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractScrollAreaSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_addAction cobj_x0 cobj_x1

instance QcloseEvent (QAbstractScrollArea ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_closeEvent_h" qtc_QAbstractScrollArea_closeEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractScrollAreaSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractScrollArea ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_create cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_create" qtc_QAbstractScrollArea_create :: Ptr (TQAbstractScrollArea a) -> IO ()

instance Qcreate (QAbstractScrollAreaSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_create cobj_x0

instance Qcreate (QAbstractScrollArea ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_create1" qtc_QAbstractScrollArea_create1 :: Ptr (TQAbstractScrollArea a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractScrollAreaSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractScrollArea ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractScrollArea_create2" qtc_QAbstractScrollArea_create2 :: Ptr (TQAbstractScrollArea a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractScrollAreaSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractScrollArea ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractScrollArea_create3" qtc_QAbstractScrollArea_create3 :: Ptr (TQAbstractScrollArea a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractScrollAreaSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractScrollArea ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_destroy" qtc_QAbstractScrollArea_destroy :: Ptr (TQAbstractScrollArea a) -> IO ()

instance Qdestroy (QAbstractScrollAreaSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy cobj_x0

instance Qdestroy (QAbstractScrollArea ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_destroy1" qtc_QAbstractScrollArea_destroy1 :: Ptr (TQAbstractScrollArea a) -> CBool -> IO ()

instance Qdestroy (QAbstractScrollAreaSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractScrollArea ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractScrollArea_destroy2" qtc_QAbstractScrollArea_destroy2 :: Ptr (TQAbstractScrollArea a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractScrollAreaSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractScrollArea ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_devType_h cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_devType_h" qtc_QAbstractScrollArea_devType_h :: Ptr (TQAbstractScrollArea a) -> IO CInt

instance QdevType (QAbstractScrollAreaSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_devType_h cobj_x0

instance QenabledChange (QAbstractScrollArea ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_enabledChange" qtc_QAbstractScrollArea_enabledChange :: Ptr (TQAbstractScrollArea a) -> CBool -> IO ()

instance QenabledChange (QAbstractScrollAreaSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractScrollArea ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_enterEvent_h" qtc_QAbstractScrollArea_enterEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractScrollArea ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_focusInEvent_h" qtc_QAbstractScrollArea_focusInEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractScrollAreaSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractScrollArea ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_focusNextChild" qtc_QAbstractScrollArea_focusNextChild :: Ptr (TQAbstractScrollArea a) -> IO CBool

instance QfocusNextChild (QAbstractScrollAreaSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractScrollArea ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_focusNextPrevChild" qtc_QAbstractScrollArea_focusNextPrevChild :: Ptr (TQAbstractScrollArea a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractScrollAreaSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QAbstractScrollArea ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_focusOutEvent_h" qtc_QAbstractScrollArea_focusOutEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractScrollAreaSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QAbstractScrollArea ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_focusPreviousChild" qtc_QAbstractScrollArea_focusPreviousChild :: Ptr (TQAbstractScrollArea a) -> IO CBool

instance QfocusPreviousChild (QAbstractScrollAreaSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_focusPreviousChild cobj_x0

instance QfontChange (QAbstractScrollArea ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_fontChange" qtc_QAbstractScrollArea_fontChange :: Ptr (TQAbstractScrollArea a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractScrollAreaSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractScrollArea ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractScrollArea_heightForWidth_h" qtc_QAbstractScrollArea_heightForWidth_h :: Ptr (TQAbstractScrollArea a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractScrollAreaSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractScrollArea ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_hideEvent_h" qtc_QAbstractScrollArea_hideEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractScrollAreaSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractScrollArea ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_inputMethodEvent" qtc_QAbstractScrollArea_inputMethodEvent :: Ptr (TQAbstractScrollArea a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractScrollAreaSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractScrollArea ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractScrollArea_inputMethodQuery_h" qtc_QAbstractScrollArea_inputMethodQuery_h :: Ptr (TQAbstractScrollArea a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractScrollAreaSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QAbstractScrollArea ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_keyReleaseEvent_h" qtc_QAbstractScrollArea_keyReleaseEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractScrollAreaSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QAbstractScrollArea ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_languageChange cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_languageChange" qtc_QAbstractScrollArea_languageChange :: Ptr (TQAbstractScrollArea a) -> IO ()

instance QlanguageChange (QAbstractScrollAreaSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_languageChange cobj_x0

instance QleaveEvent (QAbstractScrollArea ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_leaveEvent_h" qtc_QAbstractScrollArea_leaveEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractScrollArea ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractScrollArea_metric" qtc_QAbstractScrollArea_metric :: Ptr (TQAbstractScrollArea a) -> CLong -> IO CInt

instance Qmetric (QAbstractScrollAreaSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QAbstractScrollArea ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractScrollArea_move1" qtc_QAbstractScrollArea_move1 :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractScrollAreaSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractScrollArea ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractScrollArea_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractScrollArea_move_qth" qtc_QAbstractScrollArea_move_qth :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractScrollAreaSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractScrollArea_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractScrollArea ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_move" qtc_QAbstractScrollArea_move :: Ptr (TQAbstractScrollArea a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractScrollAreaSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractScrollArea ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_moveEvent_h" qtc_QAbstractScrollArea_moveEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractScrollAreaSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractScrollArea ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_paintEngine_h" qtc_QAbstractScrollArea_paintEngine_h :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractScrollAreaSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_paintEngine_h cobj_x0

instance QpaletteChange (QAbstractScrollArea ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_paletteChange" qtc_QAbstractScrollArea_paletteChange :: Ptr (TQAbstractScrollArea a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractScrollAreaSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractScrollArea ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_repaint cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_repaint" qtc_QAbstractScrollArea_repaint :: Ptr (TQAbstractScrollArea a) -> IO ()

instance Qrepaint (QAbstractScrollAreaSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_repaint cobj_x0

instance Qrepaint (QAbstractScrollArea ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractScrollArea_repaint2" qtc_QAbstractScrollArea_repaint2 :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractScrollAreaSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractScrollArea ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_repaint1" qtc_QAbstractScrollArea_repaint1 :: Ptr (TQAbstractScrollArea a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractScrollAreaSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractScrollArea ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_resetInputContext" qtc_QAbstractScrollArea_resetInputContext :: Ptr (TQAbstractScrollArea a) -> IO ()

instance QresetInputContext (QAbstractScrollAreaSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_resetInputContext cobj_x0

instance Qresize (QAbstractScrollArea ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractScrollArea_resize1" qtc_QAbstractScrollArea_resize1 :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractScrollAreaSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractScrollArea ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_resize" qtc_QAbstractScrollArea_resize :: Ptr (TQAbstractScrollArea a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractScrollAreaSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_resize cobj_x0 cobj_x1

instance Qresize (QAbstractScrollArea ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractScrollArea_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractScrollArea_resize_qth" qtc_QAbstractScrollArea_resize_qth :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractScrollAreaSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractScrollArea_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QAbstractScrollArea ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractScrollArea_setGeometry1" qtc_QAbstractScrollArea_setGeometry1 :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractScrollAreaSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractScrollArea ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_setGeometry" qtc_QAbstractScrollArea_setGeometry :: Ptr (TQAbstractScrollArea a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractScrollAreaSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractScrollArea ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractScrollArea_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractScrollArea_setGeometry_qth" qtc_QAbstractScrollArea_setGeometry_qth :: Ptr (TQAbstractScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractScrollAreaSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractScrollArea_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractScrollArea ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_setMouseTracking" qtc_QAbstractScrollArea_setMouseTracking :: Ptr (TQAbstractScrollArea a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractScrollAreaSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QAbstractScrollArea ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_setVisible_h" qtc_QAbstractScrollArea_setVisible_h :: Ptr (TQAbstractScrollArea a) -> CBool -> IO ()

instance QsetVisible (QAbstractScrollAreaSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractScrollArea ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_showEvent_h" qtc_QAbstractScrollArea_showEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractScrollAreaSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QAbstractScrollArea ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_tabletEvent_h" qtc_QAbstractScrollArea_tabletEvent_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractScrollAreaSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractScrollArea ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_updateMicroFocus" qtc_QAbstractScrollArea_updateMicroFocus :: Ptr (TQAbstractScrollArea a) -> IO ()

instance QupdateMicroFocus (QAbstractScrollAreaSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_updateMicroFocus cobj_x0

instance QwindowActivationChange (QAbstractScrollArea ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractScrollArea_windowActivationChange" qtc_QAbstractScrollArea_windowActivationChange :: Ptr (TQAbstractScrollArea a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractScrollAreaSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractScrollArea ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_childEvent" qtc_QAbstractScrollArea_childEvent :: Ptr (TQAbstractScrollArea a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractScrollAreaSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractScrollArea ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractScrollArea_connectNotify" qtc_QAbstractScrollArea_connectNotify :: Ptr (TQAbstractScrollArea a) -> CWString -> IO ()

instance QconnectNotify (QAbstractScrollAreaSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractScrollArea ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_customEvent" qtc_QAbstractScrollArea_customEvent :: Ptr (TQAbstractScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractScrollAreaSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractScrollArea ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractScrollArea_disconnectNotify" qtc_QAbstractScrollArea_disconnectNotify :: Ptr (TQAbstractScrollArea a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractScrollAreaSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAbstractScrollArea ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractScrollArea_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractScrollArea_eventFilter_h" qtc_QAbstractScrollArea_eventFilter_h :: Ptr (TQAbstractScrollArea a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractScrollAreaSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractScrollArea_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractScrollArea ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractScrollArea_receivers" qtc_QAbstractScrollArea_receivers :: Ptr (TQAbstractScrollArea a) -> CWString -> IO CInt

instance Qreceivers (QAbstractScrollAreaSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractScrollArea_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractScrollArea ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sender cobj_x0

foreign import ccall "qtc_QAbstractScrollArea_sender" qtc_QAbstractScrollArea_sender :: Ptr (TQAbstractScrollArea a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractScrollAreaSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractScrollArea_sender cobj_x0

instance QtimerEvent (QAbstractScrollArea ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractScrollArea_timerEvent" qtc_QAbstractScrollArea_timerEvent :: Ptr (TQAbstractScrollArea a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractScrollAreaSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractScrollArea_timerEvent cobj_x0 cobj_x1

