{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QScrollArea.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QScrollArea (
  QqScrollArea(..)
  ,QensureWidgetVisible(..)
  ,setWidgetResizable
  ,takeWidget
  ,widgetResizable
  ,qScrollArea_delete
  ,qScrollArea_deleteLater
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

instance QuserMethod (QScrollArea ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QScrollArea_userMethod" qtc_QScrollArea_userMethod :: Ptr (TQScrollArea a) -> CInt -> IO ()

instance QuserMethod (QScrollAreaSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QScrollArea_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QScrollArea ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QScrollArea_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QScrollArea_userMethodVariant" qtc_QScrollArea_userMethodVariant :: Ptr (TQScrollArea a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QScrollAreaSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QScrollArea_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqScrollArea x1 where
  qScrollArea :: x1 -> IO (QScrollArea ())

instance QqScrollArea (()) where
 qScrollArea ()
  = withQScrollAreaResult $
    qtc_QScrollArea

foreign import ccall "qtc_QScrollArea" qtc_QScrollArea :: IO (Ptr (TQScrollArea ()))

instance QqScrollArea ((QWidget t1)) where
 qScrollArea (x1)
  = withQScrollAreaResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea1 cobj_x1

foreign import ccall "qtc_QScrollArea1" qtc_QScrollArea1 :: Ptr (TQWidget t1) -> IO (Ptr (TQScrollArea ()))

instance QensureVisible (QScrollArea a) ((Int, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_ensureVisible cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollArea_ensureVisible" qtc_QScrollArea_ensureVisible :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance QensureVisible (QScrollArea a) ((Int, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_ensureVisible1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QScrollArea_ensureVisible1" qtc_QScrollArea_ensureVisible1 :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> IO ()

instance QensureVisible (QScrollArea a) ((Int, Int, Int, Int)) where
 ensureVisible x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_ensureVisible2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollArea_ensureVisible2" qtc_QScrollArea_ensureVisible2 :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

class QensureWidgetVisible x1 where
 ensureWidgetVisible :: QScrollArea a -> x1 -> IO ()

instance QensureWidgetVisible ((QWidget t1)) where
 ensureWidgetVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_ensureWidgetVisible cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_ensureWidgetVisible" qtc_QScrollArea_ensureWidgetVisible :: Ptr (TQScrollArea a) -> Ptr (TQWidget t1) -> IO ()

instance QensureWidgetVisible ((QWidget t1, Int)) where
 ensureWidgetVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_ensureWidgetVisible1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QScrollArea_ensureWidgetVisible1" qtc_QScrollArea_ensureWidgetVisible1 :: Ptr (TQScrollArea a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QensureWidgetVisible ((QWidget t1, Int, Int)) where
 ensureWidgetVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_ensureWidgetVisible2 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QScrollArea_ensureWidgetVisible2" qtc_QScrollArea_ensureWidgetVisible2 :: Ptr (TQScrollArea a) -> Ptr (TQWidget t1) -> CInt -> CInt -> IO ()

instance Qevent (QScrollArea ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_event_h" qtc_QScrollArea_event_h :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QScrollAreaSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_event_h cobj_x0 cobj_x1

instance QeventFilter (QScrollArea ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QScrollArea_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QScrollArea_eventFilter" qtc_QScrollArea_eventFilter :: Ptr (TQScrollArea a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QScrollAreaSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QScrollArea_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QfocusNextPrevChild (QScrollArea ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextPrevChild_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_focusNextPrevChild_h" qtc_QScrollArea_focusNextPrevChild_h :: Ptr (TQScrollArea a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QScrollAreaSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextPrevChild_h cobj_x0 (toCBool x1)

instance QresizeEvent (QScrollArea ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_resizeEvent_h" qtc_QScrollArea_resizeEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QScrollAreaSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resizeEvent_h cobj_x0 cobj_x1

instance QscrollContentsBy (QScrollArea ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollArea_scrollContentsBy_h" qtc_QScrollArea_scrollContentsBy_h :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QScrollAreaSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QsetWidget (QScrollArea a) ((QWidget t1)) where
 setWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_setWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_setWidget" qtc_QScrollArea_setWidget :: Ptr (TQScrollArea a) -> Ptr (TQWidget t1) -> IO ()

setWidgetResizable :: QScrollArea a -> ((Bool)) -> IO ()
setWidgetResizable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setWidgetResizable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_setWidgetResizable" qtc_QScrollArea_setWidgetResizable :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QqsizeHint (QScrollArea ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_h cobj_x0

foreign import ccall "qtc_QScrollArea_sizeHint_h" qtc_QScrollArea_sizeHint_h :: Ptr (TQScrollArea a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QScrollAreaSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_h cobj_x0

instance QsizeHint (QScrollArea ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollArea_sizeHint_qth_h" qtc_QScrollArea_sizeHint_qth_h :: Ptr (TQScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QScrollAreaSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

takeWidget :: QScrollArea a -> (()) -> IO (QWidget ())
takeWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_takeWidget cobj_x0

foreign import ccall "qtc_QScrollArea_takeWidget" qtc_QScrollArea_takeWidget :: Ptr (TQScrollArea a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QScrollArea a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_widget cobj_x0

foreign import ccall "qtc_QScrollArea_widget" qtc_QScrollArea_widget :: Ptr (TQScrollArea a) -> IO (Ptr (TQWidget ()))

widgetResizable :: QScrollArea a -> (()) -> IO (Bool)
widgetResizable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_widgetResizable cobj_x0

foreign import ccall "qtc_QScrollArea_widgetResizable" qtc_QScrollArea_widgetResizable :: Ptr (TQScrollArea a) -> IO CBool

qScrollArea_delete :: QScrollArea a -> IO ()
qScrollArea_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_delete cobj_x0

foreign import ccall "qtc_QScrollArea_delete" qtc_QScrollArea_delete :: Ptr (TQScrollArea a) -> IO ()

qScrollArea_deleteLater :: QScrollArea a -> IO ()
qScrollArea_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_deleteLater cobj_x0

foreign import ccall "qtc_QScrollArea_deleteLater" qtc_QScrollArea_deleteLater :: Ptr (TQScrollArea a) -> IO ()

instance QcontextMenuEvent (QScrollArea ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_contextMenuEvent_h" qtc_QScrollArea_contextMenuEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QScrollAreaSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QScrollArea ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragEnterEvent_h" qtc_QScrollArea_dragEnterEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QScrollAreaSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QScrollArea ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragLeaveEvent_h" qtc_QScrollArea_dragLeaveEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QScrollAreaSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QScrollArea ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dragMoveEvent_h" qtc_QScrollArea_dragMoveEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QScrollAreaSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QScrollArea ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_dropEvent_h" qtc_QScrollArea_dropEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QScrollAreaSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_dropEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QScrollArea ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_keyPressEvent_h" qtc_QScrollArea_keyPressEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QScrollAreaSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QScrollArea ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QScrollArea_minimumSizeHint_h" qtc_QScrollArea_minimumSizeHint_h :: Ptr (TQScrollArea a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QScrollAreaSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QScrollArea ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QScrollArea_minimumSizeHint_qth_h" qtc_QScrollArea_minimumSizeHint_qth_h :: Ptr (TQScrollArea a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QScrollAreaSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QScrollArea ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseDoubleClickEvent_h" qtc_QScrollArea_mouseDoubleClickEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QScrollArea ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseMoveEvent_h" qtc_QScrollArea_mouseMoveEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QScrollArea ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mousePressEvent_h" qtc_QScrollArea_mousePressEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QScrollAreaSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QScrollArea ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_mouseReleaseEvent_h" qtc_QScrollArea_mouseReleaseEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QScrollAreaSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QScrollArea ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_paintEvent_h" qtc_QScrollArea_paintEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QScrollAreaSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paintEvent_h cobj_x0 cobj_x1

instance QsetViewportMargins (QScrollArea ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollArea_setViewportMargins" qtc_QScrollArea_setViewportMargins :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QScrollAreaSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QScrollArea ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_setupViewport" qtc_QScrollArea_setupViewport :: Ptr (TQScrollArea a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QScrollAreaSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_setupViewport cobj_x0 cobj_x1

instance QviewportEvent (QScrollArea ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_viewportEvent_h" qtc_QScrollArea_viewportEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QScrollAreaSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_viewportEvent_h cobj_x0 cobj_x1

instance QwheelEvent (QScrollArea ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_wheelEvent_h" qtc_QScrollArea_wheelEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QScrollAreaSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QScrollArea ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_changeEvent_h" qtc_QScrollArea_changeEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QScrollAreaSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QScrollArea ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_drawFrame" qtc_QScrollArea_drawFrame :: Ptr (TQScrollArea a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QScrollAreaSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QScrollArea ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_actionEvent_h" qtc_QScrollArea_actionEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QScrollAreaSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QScrollArea ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_addAction" qtc_QScrollArea_addAction :: Ptr (TQScrollArea a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QScrollAreaSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_addAction cobj_x0 cobj_x1

instance QcloseEvent (QScrollArea ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_closeEvent_h" qtc_QScrollArea_closeEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QScrollAreaSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QScrollArea ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_create cobj_x0

foreign import ccall "qtc_QScrollArea_create" qtc_QScrollArea_create :: Ptr (TQScrollArea a) -> IO ()

instance Qcreate (QScrollAreaSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_create cobj_x0

instance Qcreate (QScrollArea ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_create1" qtc_QScrollArea_create1 :: Ptr (TQScrollArea a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QScrollAreaSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create1 cobj_x0 cobj_x1

instance Qcreate (QScrollArea ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QScrollArea_create2" qtc_QScrollArea_create2 :: Ptr (TQScrollArea a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QScrollAreaSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QScrollArea ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QScrollArea_create3" qtc_QScrollArea_create3 :: Ptr (TQScrollArea a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QScrollAreaSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QScrollArea ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy cobj_x0

foreign import ccall "qtc_QScrollArea_destroy" qtc_QScrollArea_destroy :: Ptr (TQScrollArea a) -> IO ()

instance Qdestroy (QScrollAreaSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy cobj_x0

instance Qdestroy (QScrollArea ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_destroy1" qtc_QScrollArea_destroy1 :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance Qdestroy (QScrollAreaSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QScrollArea ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QScrollArea_destroy2" qtc_QScrollArea_destroy2 :: Ptr (TQScrollArea a) -> CBool -> CBool -> IO ()

instance Qdestroy (QScrollAreaSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QScrollArea ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_devType_h cobj_x0

foreign import ccall "qtc_QScrollArea_devType_h" qtc_QScrollArea_devType_h :: Ptr (TQScrollArea a) -> IO CInt

instance QdevType (QScrollAreaSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_devType_h cobj_x0

instance QenabledChange (QScrollArea ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_enabledChange" qtc_QScrollArea_enabledChange :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QenabledChange (QScrollAreaSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QScrollArea ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_enterEvent_h" qtc_QScrollArea_enterEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QScrollAreaSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QScrollArea ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_focusInEvent_h" qtc_QScrollArea_focusInEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QScrollAreaSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QScrollArea ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextChild cobj_x0

foreign import ccall "qtc_QScrollArea_focusNextChild" qtc_QScrollArea_focusNextChild :: Ptr (TQScrollArea a) -> IO CBool

instance QfocusNextChild (QScrollAreaSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusNextChild cobj_x0

instance QfocusOutEvent (QScrollArea ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_focusOutEvent_h" qtc_QScrollArea_focusOutEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QScrollAreaSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QScrollArea ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusPreviousChild cobj_x0

foreign import ccall "qtc_QScrollArea_focusPreviousChild" qtc_QScrollArea_focusPreviousChild :: Ptr (TQScrollArea a) -> IO CBool

instance QfocusPreviousChild (QScrollAreaSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_focusPreviousChild cobj_x0

instance QfontChange (QScrollArea ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_fontChange" qtc_QScrollArea_fontChange :: Ptr (TQScrollArea a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QScrollAreaSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QScrollArea ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QScrollArea_heightForWidth_h" qtc_QScrollArea_heightForWidth_h :: Ptr (TQScrollArea a) -> CInt -> IO CInt

instance QheightForWidth (QScrollAreaSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QScrollArea ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_hideEvent_h" qtc_QScrollArea_hideEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QScrollAreaSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QScrollArea ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_inputMethodEvent" qtc_QScrollArea_inputMethodEvent :: Ptr (TQScrollArea a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QScrollAreaSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QScrollArea ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollArea_inputMethodQuery_h" qtc_QScrollArea_inputMethodQuery_h :: Ptr (TQScrollArea a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QScrollAreaSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QScrollArea ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_keyReleaseEvent_h" qtc_QScrollArea_keyReleaseEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QScrollAreaSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QScrollArea ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_languageChange cobj_x0

foreign import ccall "qtc_QScrollArea_languageChange" qtc_QScrollArea_languageChange :: Ptr (TQScrollArea a) -> IO ()

instance QlanguageChange (QScrollAreaSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_languageChange cobj_x0

instance QleaveEvent (QScrollArea ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_leaveEvent_h" qtc_QScrollArea_leaveEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QScrollAreaSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QScrollArea ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QScrollArea_metric" qtc_QScrollArea_metric :: Ptr (TQScrollArea a) -> CLong -> IO CInt

instance Qmetric (QScrollAreaSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QScrollArea ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollArea_move1" qtc_QScrollArea_move1 :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance Qmove (QScrollAreaSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QScrollArea ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QScrollArea_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QScrollArea_move_qth" qtc_QScrollArea_move_qth :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance Qmove (QScrollAreaSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QScrollArea_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QScrollArea ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_move cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_move" qtc_QScrollArea_move :: Ptr (TQScrollArea a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QScrollAreaSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_move cobj_x0 cobj_x1

instance QmoveEvent (QScrollArea ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_moveEvent_h" qtc_QScrollArea_moveEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QScrollAreaSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QScrollArea ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_paintEngine_h cobj_x0

foreign import ccall "qtc_QScrollArea_paintEngine_h" qtc_QScrollArea_paintEngine_h :: Ptr (TQScrollArea a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QScrollAreaSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_paintEngine_h cobj_x0

instance QpaletteChange (QScrollArea ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_paletteChange" qtc_QScrollArea_paletteChange :: Ptr (TQScrollArea a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QScrollAreaSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QScrollArea ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_repaint cobj_x0

foreign import ccall "qtc_QScrollArea_repaint" qtc_QScrollArea_repaint :: Ptr (TQScrollArea a) -> IO ()

instance Qrepaint (QScrollAreaSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_repaint cobj_x0

instance Qrepaint (QScrollArea ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollArea_repaint2" qtc_QScrollArea_repaint2 :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QScrollAreaSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QScrollArea ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_repaint1" qtc_QScrollArea_repaint1 :: Ptr (TQScrollArea a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QScrollAreaSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QScrollArea ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_resetInputContext cobj_x0

foreign import ccall "qtc_QScrollArea_resetInputContext" qtc_QScrollArea_resetInputContext :: Ptr (TQScrollArea a) -> IO ()

instance QresetInputContext (QScrollAreaSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_resetInputContext cobj_x0

instance Qresize (QScrollArea ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QScrollArea_resize1" qtc_QScrollArea_resize1 :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance Qresize (QScrollAreaSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QScrollArea ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_resize" qtc_QScrollArea_resize :: Ptr (TQScrollArea a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QScrollAreaSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_resize cobj_x0 cobj_x1

instance Qresize (QScrollArea ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QScrollArea_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QScrollArea_resize_qth" qtc_QScrollArea_resize_qth :: Ptr (TQScrollArea a) -> CInt -> CInt -> IO ()

instance Qresize (QScrollAreaSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QScrollArea_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QScrollArea ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QScrollArea_setGeometry1" qtc_QScrollArea_setGeometry1 :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QScrollAreaSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QScrollArea ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_setGeometry" qtc_QScrollArea_setGeometry :: Ptr (TQScrollArea a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QScrollAreaSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QScrollArea ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QScrollArea_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QScrollArea_setGeometry_qth" qtc_QScrollArea_setGeometry_qth :: Ptr (TQScrollArea a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QScrollAreaSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QScrollArea_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QScrollArea ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_setMouseTracking" qtc_QScrollArea_setMouseTracking :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QsetMouseTracking (QScrollAreaSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QScrollArea ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_setVisible_h" qtc_QScrollArea_setVisible_h :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QsetVisible (QScrollAreaSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QScrollArea ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_showEvent_h" qtc_QScrollArea_showEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QScrollAreaSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QScrollArea ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_tabletEvent_h" qtc_QScrollArea_tabletEvent_h :: Ptr (TQScrollArea a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QScrollAreaSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QScrollArea ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_updateMicroFocus cobj_x0

foreign import ccall "qtc_QScrollArea_updateMicroFocus" qtc_QScrollArea_updateMicroFocus :: Ptr (TQScrollArea a) -> IO ()

instance QupdateMicroFocus (QScrollAreaSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_updateMicroFocus cobj_x0

instance QwindowActivationChange (QScrollArea ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QScrollArea_windowActivationChange" qtc_QScrollArea_windowActivationChange :: Ptr (TQScrollArea a) -> CBool -> IO ()

instance QwindowActivationChange (QScrollAreaSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QScrollArea ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_childEvent" qtc_QScrollArea_childEvent :: Ptr (TQScrollArea a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QScrollAreaSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QScrollArea ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollArea_connectNotify" qtc_QScrollArea_connectNotify :: Ptr (TQScrollArea a) -> CWString -> IO ()

instance QconnectNotify (QScrollAreaSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QScrollArea ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_customEvent" qtc_QScrollArea_customEvent :: Ptr (TQScrollArea a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QScrollAreaSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QScrollArea ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollArea_disconnectNotify" qtc_QScrollArea_disconnectNotify :: Ptr (TQScrollArea a) -> CWString -> IO ()

instance QdisconnectNotify (QScrollAreaSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QScrollArea ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QScrollArea_receivers" qtc_QScrollArea_receivers :: Ptr (TQScrollArea a) -> CWString -> IO CInt

instance Qreceivers (QScrollAreaSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QScrollArea_receivers cobj_x0 cstr_x1

instance Qsender (QScrollArea ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sender cobj_x0

foreign import ccall "qtc_QScrollArea_sender" qtc_QScrollArea_sender :: Ptr (TQScrollArea a) -> IO (Ptr (TQObject ()))

instance Qsender (QScrollAreaSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QScrollArea_sender cobj_x0

instance QtimerEvent (QScrollArea ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QScrollArea_timerEvent" qtc_QScrollArea_timerEvent :: Ptr (TQScrollArea a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QScrollAreaSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QScrollArea_timerEvent cobj_x0 cobj_x1

