{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWidget (
  QqWidget(..)
  ,activateWindow
  ,addActions
  ,autoFillBackground
  ,backgroundRole
  ,qbaseSize, baseSize
  ,QchildAt(..), qchildAt
  ,qchildrenRect, childrenRect
  ,childrenRegion
  ,clearMask
  ,contextMenuPolicy
  ,createWinId
  ,ensurePolished
  ,qWidgetFind
  ,focusPolicy
  ,focusProxy
  ,focusWidget
  ,foregroundRole
  ,qframeGeometry, frameGeometry
  ,qframeSize, frameSize
  ,grabKeyboard
  ,QgrabMouse(..)
  ,QgrabShortcut(..)
  ,hasMouseTracking
  ,insertAction
  ,insertActions
  ,internalWinId
  ,isActiveWindow
  ,isEnabledTo
  ,isEnabledToTLW
  ,isFullScreen
  ,isLeftToRight
  ,isMaximized
  ,isMinimized
  ,isModal
  ,isRightToLeft
  ,isTopLevel
  ,isVisibleTo
  ,isWindow
  ,isWindowModified
  ,qWidgetKeyboardGrabber
  ,lower
  ,mapFrom, qmapFrom
  ,mapFromGlobal, qmapFromGlobal
  ,mapTo, qmapTo
  ,mapToGlobal, qmapToGlobal
  ,maximumHeight
  ,minimumHeight
  ,qWidgetMouseGrabber
  ,nextInFocusChain
  ,qnormalGeometry, normalGeometry
  ,overrideWindowFlags
  ,overrideWindowState
  ,raise
  ,releaseKeyboard
  ,releaseMouse
  ,releaseShortcut
  ,qrepaint
  ,restoreGeometry
  ,saveGeometry
  ,Qscroll(..), qscroll
  ,QsetAttribute(..)
  ,setAutoFillBackground
  ,setBackgroundRole
  ,QsetBaseSize(..), qsetBaseSize
  ,setContextMenuPolicy
  ,setFixedHeight
  ,QsetFixedSize(..), qsetFixedSize
  ,setFixedWidth
  ,setFocusPolicy
  ,setFocusProxy
  ,setForegroundRole
  ,setLayout
  ,setMaximumHeight
  ,QsetMaximumSize(..), qsetMaximumSize
  ,setMaximumWidth
  ,setMinimumHeight
  ,QsetMinimumSize(..), qsetMinimumSize
  ,setMinimumWidth
  ,QsetParent(..)
  ,QsetShortcutAutoRepeat(..)
  ,QsetShortcutEnabled(..)
  ,setShown
  ,QsetSizeIncrement(..), qsetSizeIncrement
  ,QsetSizePolicy(..)
  ,qWidgetSetTabOrder
  ,setUpdatesEnabled
  ,setWindowFlags
  ,setWindowIcon
  ,setWindowIconText
  ,setWindowModified
  ,setWindowOpacity
  ,setWindowRole
  ,setWindowState
  ,showFullScreen
  ,showMaximized
  ,showMinimized
  ,showNormal
  ,qsizeIncrement, sizeIncrement
  ,sizePolicy
  ,stackUnder
  ,testAttribute
  ,topLevelWidget
  ,underMouse
  ,unsetLayoutDirection
  ,unsetLocale
  ,updateGeometry
  ,updatesEnabled
  ,visibleRegion
  ,winId
  ,windowFlags
  ,windowIcon
  ,windowIconText
  ,windowModality
  ,windowOpacity
  ,windowRole
  ,windowState
  ,windowTitle
  ,windowType
  ,qWidget_delete
  ,qWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPalette
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QSizePolicy

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QWidget_userMethod" qtc_QWidget_userMethod :: Ptr (TQWidget a) -> CInt -> IO ()

instance QuserMethod (QWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QWidget_userMethodVariant" qtc_QWidget_userMethodVariant :: Ptr (TQWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqWidget x1 where
  qWidget :: x1 -> IO (QWidget ())

instance QqWidget (()) where
 qWidget ()
  = withQWidgetResult $
    qtc_QWidget

foreign import ccall "qtc_QWidget" qtc_QWidget :: IO (Ptr (TQWidget ()))

instance QqWidget ((QWidget t1)) where
 qWidget (x1)
  = withQWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget1 cobj_x1

foreign import ccall "qtc_QWidget1" qtc_QWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQWidget ()))

instance QqWidget ((QWidget t1, WindowFlags)) where
 qWidget (x1, x2)
  = withQWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QWidget2" qtc_QWidget2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQWidget ()))

instance QacceptDrops (QWidget a) (()) where
 acceptDrops x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_acceptDrops cobj_x0

foreign import ccall "qtc_QWidget_acceptDrops" qtc_QWidget_acceptDrops :: Ptr (TQWidget a) -> IO CBool

instance QactionEvent (QWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_actionEvent_h" qtc_QWidget_actionEvent_h :: Ptr (TQWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_actionEvent_h cobj_x0 cobj_x1

instance Qactions (QWidget a) (()) where
 actions x0 ()
  = withQListQActionResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_actions cobj_x0 arr

foreign import ccall "qtc_QWidget_actions" qtc_QWidget_actions :: Ptr (TQWidget a) -> Ptr (Ptr (TQAction ())) -> IO CInt

activateWindow :: QWidget a -> (()) -> IO ()
activateWindow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_activateWindow cobj_x0

foreign import ccall "qtc_QWidget_activateWindow" qtc_QWidget_activateWindow :: Ptr (TQWidget a) -> IO ()

instance QaddAction (QWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_addAction" qtc_QWidget_addAction :: Ptr (TQWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_addAction cobj_x0 cobj_x1

addActions :: QWidget a -> (([QAction t1])) -> IO ()
addActions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListObject x1 $ \cqlistlen_x1 cqlistobj_x1 ->
    qtc_QWidget_addActions cobj_x0 cqlistlen_x1 cqlistobj_x1

foreign import ccall "qtc_QWidget_addActions" qtc_QWidget_addActions :: Ptr (TQWidget a) -> CInt -> Ptr (Ptr (TQAction t1)) -> IO ()

instance QadjustSize (QWidget a) (()) where
 adjustSize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_adjustSize cobj_x0

foreign import ccall "qtc_QWidget_adjustSize" qtc_QWidget_adjustSize :: Ptr (TQWidget a) -> IO ()

autoFillBackground :: QWidget a -> (()) -> IO (Bool)
autoFillBackground x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_autoFillBackground cobj_x0

foreign import ccall "qtc_QWidget_autoFillBackground" qtc_QWidget_autoFillBackground :: Ptr (TQWidget a) -> IO CBool

backgroundRole :: QWidget a -> (()) -> IO (ColorRole)
backgroundRole x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_backgroundRole cobj_x0

foreign import ccall "qtc_QWidget_backgroundRole" qtc_QWidget_backgroundRole :: Ptr (TQWidget a) -> IO CLong

qbaseSize :: QWidget a -> (()) -> IO (QSize ())
qbaseSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_baseSize cobj_x0

foreign import ccall "qtc_QWidget_baseSize" qtc_QWidget_baseSize :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

baseSize :: QWidget a -> (()) -> IO (Size)
baseSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_baseSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_baseSize_qth" qtc_QWidget_baseSize_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QchangeEvent (QWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_changeEvent_h" qtc_QWidget_changeEvent_h :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_changeEvent_h cobj_x0 cobj_x1

class QchildAt x1 where
 childAt :: QWidget a -> x1 -> IO (QWidget ())

instance QchildAt ((Int, Int)) where
 childAt x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_childAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_childAt1" qtc_QWidget_childAt1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO (Ptr (TQWidget ()))

instance QchildAt ((Point)) where
 childAt x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_childAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QWidget_childAt_qth" qtc_QWidget_childAt_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO (Ptr (TQWidget ()))

qchildAt :: QWidget a -> ((QPoint t1)) -> IO (QWidget ())
qchildAt x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_childAt cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_childAt" qtc_QWidget_childAt :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQWidget ()))

qchildrenRect :: QWidget a -> (()) -> IO (QRect ())
qchildrenRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_childrenRect cobj_x0

foreign import ccall "qtc_QWidget_childrenRect" qtc_QWidget_childrenRect :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

childrenRect :: QWidget a -> (()) -> IO (Rect)
childrenRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_childrenRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_childrenRect_qth" qtc_QWidget_childrenRect_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

childrenRegion :: QWidget a -> (()) -> IO (QRegion ())
childrenRegion x0 ()
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_childrenRegion cobj_x0

foreign import ccall "qtc_QWidget_childrenRegion" qtc_QWidget_childrenRegion :: Ptr (TQWidget a) -> IO (Ptr (TQRegion ()))

instance QclearFocus (QWidget a) (()) where
 clearFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_clearFocus cobj_x0

foreign import ccall "qtc_QWidget_clearFocus" qtc_QWidget_clearFocus :: Ptr (TQWidget a) -> IO ()

clearMask :: QWidget a -> (()) -> IO ()
clearMask x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_clearMask cobj_x0

foreign import ccall "qtc_QWidget_clearMask" qtc_QWidget_clearMask :: Ptr (TQWidget a) -> IO ()

instance Qclose (QWidget a) (()) (IO (Bool)) where
 close x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_close cobj_x0

foreign import ccall "qtc_QWidget_close" qtc_QWidget_close :: Ptr (TQWidget a) -> IO CBool

instance QcloseEvent (QWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_closeEvent_h" qtc_QWidget_closeEvent_h :: Ptr (TQWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_closeEvent_h cobj_x0 cobj_x1

instance QqcontentsRect (QWidget a) (()) where
 qcontentsRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_contentsRect cobj_x0

foreign import ccall "qtc_QWidget_contentsRect" qtc_QWidget_contentsRect :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

instance QcontentsRect (QWidget a) (()) where
 contentsRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_contentsRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_contentsRect_qth" qtc_QWidget_contentsRect_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QcontextMenuEvent (QWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_contextMenuEvent_h" qtc_QWidget_contextMenuEvent_h :: Ptr (TQWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_contextMenuEvent_h cobj_x0 cobj_x1

contextMenuPolicy :: QWidget a -> (()) -> IO (ContextMenuPolicy)
contextMenuPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_contextMenuPolicy cobj_x0

foreign import ccall "qtc_QWidget_contextMenuPolicy" qtc_QWidget_contextMenuPolicy :: Ptr (TQWidget a) -> IO CLong

instance Qcreate (QWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_create cobj_x0

foreign import ccall "qtc_QWidget_create" qtc_QWidget_create :: Ptr (TQWidget a) -> IO ()

instance Qcreate (QWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_create cobj_x0

instance Qcreate (QWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_create1" qtc_QWidget_create1 :: Ptr (TQWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QWidget_create2" qtc_QWidget_create2 :: Ptr (TQWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QWidget_create3" qtc_QWidget_create3 :: Ptr (TQWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

createWinId :: QWidget a -> (()) -> IO ()
createWinId x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_createWinId cobj_x0

foreign import ccall "qtc_QWidget_createWinId" qtc_QWidget_createWinId :: Ptr (TQWidget a) -> IO ()

instance Qcursor (QWidget a) (()) where
 cursor x0 ()
  = withQCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_cursor cobj_x0

foreign import ccall "qtc_QWidget_cursor" qtc_QWidget_cursor :: Ptr (TQWidget a) -> IO (Ptr (TQCursor ()))

instance Qdestroy (QWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy cobj_x0

foreign import ccall "qtc_QWidget_destroy" qtc_QWidget_destroy :: Ptr (TQWidget a) -> IO ()

instance Qdestroy (QWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy cobj_x0

instance Qdestroy (QWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_destroy1" qtc_QWidget_destroy1 :: Ptr (TQWidget a) -> CBool -> IO ()

instance Qdestroy (QWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QWidget_destroy2" qtc_QWidget_destroy2 :: Ptr (TQWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_devType_h cobj_x0

foreign import ccall "qtc_QWidget_devType_h" qtc_QWidget_devType_h :: Ptr (TQWidget a) -> IO CInt

instance QdevType (QWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_devType_h cobj_x0

instance QdragEnterEvent (QWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragEnterEvent_h" qtc_QWidget_dragEnterEvent_h :: Ptr (TQWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragLeaveEvent_h" qtc_QWidget_dragLeaveEvent_h :: Ptr (TQWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dragMoveEvent_h" qtc_QWidget_dragMoveEvent_h :: Ptr (TQWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_dropEvent_h" qtc_QWidget_dropEvent_h :: Ptr (TQWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_enabledChange" qtc_QWidget_enabledChange :: Ptr (TQWidget a) -> CBool -> IO ()

instance QenabledChange (QWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_enabledChange cobj_x0 (toCBool x1)

ensurePolished :: QWidget a -> (()) -> IO ()
ensurePolished x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_ensurePolished cobj_x0

foreign import ccall "qtc_QWidget_ensurePolished" qtc_QWidget_ensurePolished :: Ptr (TQWidget a) -> IO ()

instance QenterEvent (QWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_enterEvent_h" qtc_QWidget_enterEvent_h :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_enterEvent_h cobj_x0 cobj_x1

instance Qevent (QWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_event_h" qtc_QWidget_event_h :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_event_h cobj_x0 cobj_x1

qWidgetFind :: ((QVoid t1)) -> IO (QWidget ())
qWidgetFind (x1)
  = withQWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_find cobj_x1

foreign import ccall "qtc_QWidget_find" qtc_QWidget_find :: Ptr (TQVoid t1) -> IO (Ptr (TQWidget ()))

instance QfocusInEvent (QWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_focusInEvent_h" qtc_QWidget_focusInEvent_h :: Ptr (TQWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QWidget_focusNextChild" qtc_QWidget_focusNextChild :: Ptr (TQWidget a) -> IO CBool

instance QfocusNextChild (QWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_focusNextPrevChild" qtc_QWidget_focusNextPrevChild :: Ptr (TQWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_focusOutEvent_h" qtc_QWidget_focusOutEvent_h :: Ptr (TQWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_focusOutEvent_h cobj_x0 cobj_x1

focusPolicy :: QWidget a -> (()) -> IO (FocusPolicy)
focusPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusPolicy cobj_x0

foreign import ccall "qtc_QWidget_focusPolicy" qtc_QWidget_focusPolicy :: Ptr (TQWidget a) -> IO CLong

instance QfocusPreviousChild (QWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QWidget_focusPreviousChild" qtc_QWidget_focusPreviousChild :: Ptr (TQWidget a) -> IO CBool

instance QfocusPreviousChild (QWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusPreviousChild cobj_x0

focusProxy :: QWidget a -> (()) -> IO (QWidget ())
focusProxy x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusProxy cobj_x0

foreign import ccall "qtc_QWidget_focusProxy" qtc_QWidget_focusProxy :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

focusWidget :: QWidget a -> (()) -> IO (QWidget ())
focusWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_focusWidget cobj_x0

foreign import ccall "qtc_QWidget_focusWidget" qtc_QWidget_focusWidget :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

instance Qfont (QWidget a) (()) where
 font x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_font cobj_x0

foreign import ccall "qtc_QWidget_font" qtc_QWidget_font :: Ptr (TQWidget a) -> IO (Ptr (TQFont ()))

instance QfontChange (QWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_fontChange" qtc_QWidget_fontChange :: Ptr (TQWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_fontChange cobj_x0 cobj_x1

instance QfontInfo (QWidget a) (()) where
 fontInfo x0 ()
  = withQFontInfoResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_fontInfo cobj_x0

foreign import ccall "qtc_QWidget_fontInfo" qtc_QWidget_fontInfo :: Ptr (TQWidget a) -> IO (Ptr (TQFontInfo ()))

instance QfontMetrics (QWidget a) (()) where
 fontMetrics x0 ()
  = withQFontMetricsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_fontMetrics cobj_x0

foreign import ccall "qtc_QWidget_fontMetrics" qtc_QWidget_fontMetrics :: Ptr (TQWidget a) -> IO (Ptr (TQFontMetrics ()))

foregroundRole :: QWidget a -> (()) -> IO (ColorRole)
foregroundRole x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_foregroundRole cobj_x0

foreign import ccall "qtc_QWidget_foregroundRole" qtc_QWidget_foregroundRole :: Ptr (TQWidget a) -> IO CLong

qframeGeometry :: QWidget a -> (()) -> IO (QRect ())
qframeGeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_frameGeometry cobj_x0

foreign import ccall "qtc_QWidget_frameGeometry" qtc_QWidget_frameGeometry :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

frameGeometry :: QWidget a -> (()) -> IO (Rect)
frameGeometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_frameGeometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_frameGeometry_qth" qtc_QWidget_frameGeometry_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qframeSize :: QWidget a -> (()) -> IO (QSize ())
qframeSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_frameSize cobj_x0

foreign import ccall "qtc_QWidget_frameSize" qtc_QWidget_frameSize :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

frameSize :: QWidget a -> (()) -> IO (Size)
frameSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_frameSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_frameSize_qth" qtc_QWidget_frameSize_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqgeometry (QWidget a) (()) where
 qgeometry x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_geometry cobj_x0

foreign import ccall "qtc_QWidget_geometry" qtc_QWidget_geometry :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

instance Qgeometry (QWidget a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_geometry_qth" qtc_QWidget_geometry_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

grabKeyboard :: QWidget a -> (()) -> IO ()
grabKeyboard x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_grabKeyboard cobj_x0

foreign import ccall "qtc_QWidget_grabKeyboard" qtc_QWidget_grabKeyboard :: Ptr (TQWidget a) -> IO ()

class QgrabMouse x1 where
 grabMouse :: QWidget a -> x1 -> IO ()

instance QgrabMouse (()) where
 grabMouse x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_grabMouse cobj_x0

foreign import ccall "qtc_QWidget_grabMouse" qtc_QWidget_grabMouse :: Ptr (TQWidget a) -> IO ()

instance QgrabMouse ((QCursor t1)) where
 grabMouse x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_grabMouse1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_grabMouse1" qtc_QWidget_grabMouse1 :: Ptr (TQWidget a) -> Ptr (TQCursor t1) -> IO ()

class QgrabShortcut x1 where
 grabShortcut :: QWidget a -> x1 -> IO (Int)

instance QgrabShortcut ((QKeySequence t1)) where
 grabShortcut x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_grabShortcut cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_grabShortcut" qtc_QWidget_grabShortcut :: Ptr (TQWidget a) -> Ptr (TQKeySequence t1) -> IO CInt

instance QgrabShortcut ((QKeySequence t1, ShortcutContext)) where
 grabShortcut x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_grabShortcut1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QWidget_grabShortcut1" qtc_QWidget_grabShortcut1 :: Ptr (TQWidget a) -> Ptr (TQKeySequence t1) -> CLong -> IO CInt

instance QhasFocus (QWidget a) (()) where
 hasFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_hasFocus cobj_x0

foreign import ccall "qtc_QWidget_hasFocus" qtc_QWidget_hasFocus :: Ptr (TQWidget a) -> IO CBool

hasMouseTracking :: QWidget a -> (()) -> IO (Bool)
hasMouseTracking x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_hasMouseTracking cobj_x0

foreign import ccall "qtc_QWidget_hasMouseTracking" qtc_QWidget_hasMouseTracking :: Ptr (TQWidget a) -> IO CBool

instance Qqheight (QWidget a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_height cobj_x0

foreign import ccall "qtc_QWidget_height" qtc_QWidget_height :: Ptr (TQWidget a) -> IO CInt

instance QheightForWidth (QWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_heightForWidth_h" qtc_QWidget_heightForWidth_h :: Ptr (TQWidget a) -> CInt -> IO CInt

instance QheightForWidth (QWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance Qhide (QWidget a) (()) where
 hide x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_hide cobj_x0

foreign import ccall "qtc_QWidget_hide" qtc_QWidget_hide :: Ptr (TQWidget a) -> IO ()

instance QhideEvent (QWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_hideEvent_h" qtc_QWidget_hideEvent_h :: Ptr (TQWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputContext (QWidget a) (()) where
 inputContext x0 ()
  = withQInputContextResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_inputContext cobj_x0

foreign import ccall "qtc_QWidget_inputContext" qtc_QWidget_inputContext :: Ptr (TQWidget a) -> IO (Ptr (TQInputContext ()))

instance QinputMethodEvent (QWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_inputMethodEvent" qtc_QWidget_inputMethodEvent :: Ptr (TQWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_inputMethodQuery_h" qtc_QWidget_inputMethodQuery_h :: Ptr (TQWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

insertAction :: QWidget a -> ((QAction t1, QAction t2)) -> IO ()
insertAction x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_insertAction cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_insertAction" qtc_QWidget_insertAction :: Ptr (TQWidget a) -> Ptr (TQAction t1) -> Ptr (TQAction t2) -> IO ()

insertActions :: QWidget a -> ((QAction t1, [QAction t2])) -> IO ()
insertActions x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x2 $ \cqlistlen_x2 cqlistobj_x2 ->
    qtc_QWidget_insertActions cobj_x0 cobj_x1 cqlistlen_x2 cqlistobj_x2

foreign import ccall "qtc_QWidget_insertActions" qtc_QWidget_insertActions :: Ptr (TQWidget a) -> Ptr (TQAction t1) -> CInt -> Ptr (Ptr (TQAction t2)) -> IO ()

internalWinId :: QWidget a -> (()) -> IO (QVoid ())
internalWinId x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_internalWinId cobj_x0

foreign import ccall "qtc_QWidget_internalWinId" qtc_QWidget_internalWinId :: Ptr (TQWidget a) -> IO (Ptr (TQVoid ()))

isActiveWindow :: QWidget a -> (()) -> IO (Bool)
isActiveWindow x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isActiveWindow cobj_x0

foreign import ccall "qtc_QWidget_isActiveWindow" qtc_QWidget_isActiveWindow :: Ptr (TQWidget a) -> IO CBool

instance QisAncestorOf (QWidget a) ((QWidget t1)) where
 isAncestorOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_isAncestorOf cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_isAncestorOf" qtc_QWidget_isAncestorOf :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO CBool

instance QisEnabled (QWidget a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isEnabled cobj_x0

foreign import ccall "qtc_QWidget_isEnabled" qtc_QWidget_isEnabled :: Ptr (TQWidget a) -> IO CBool

isEnabledTo :: QWidget a -> ((QWidget t1)) -> IO (Bool)
isEnabledTo x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_isEnabledTo cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_isEnabledTo" qtc_QWidget_isEnabledTo :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO CBool

isEnabledToTLW :: QWidget a -> (()) -> IO (Bool)
isEnabledToTLW x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isEnabledToTLW cobj_x0

foreign import ccall "qtc_QWidget_isEnabledToTLW" qtc_QWidget_isEnabledToTLW :: Ptr (TQWidget a) -> IO CBool

isFullScreen :: QWidget a -> (()) -> IO (Bool)
isFullScreen x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isFullScreen cobj_x0

foreign import ccall "qtc_QWidget_isFullScreen" qtc_QWidget_isFullScreen :: Ptr (TQWidget a) -> IO CBool

instance QisHidden (QWidget a) (()) where
 isHidden x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isHidden cobj_x0

foreign import ccall "qtc_QWidget_isHidden" qtc_QWidget_isHidden :: Ptr (TQWidget a) -> IO CBool

isLeftToRight :: QWidget a -> (()) -> IO (Bool)
isLeftToRight x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isLeftToRight cobj_x0

foreign import ccall "qtc_QWidget_isLeftToRight" qtc_QWidget_isLeftToRight :: Ptr (TQWidget a) -> IO CBool

isMaximized :: QWidget a -> (()) -> IO (Bool)
isMaximized x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isMaximized cobj_x0

foreign import ccall "qtc_QWidget_isMaximized" qtc_QWidget_isMaximized :: Ptr (TQWidget a) -> IO CBool

isMinimized :: QWidget a -> (()) -> IO (Bool)
isMinimized x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isMinimized cobj_x0

foreign import ccall "qtc_QWidget_isMinimized" qtc_QWidget_isMinimized :: Ptr (TQWidget a) -> IO CBool

isModal :: QWidget a -> (()) -> IO (Bool)
isModal x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isModal cobj_x0

foreign import ccall "qtc_QWidget_isModal" qtc_QWidget_isModal :: Ptr (TQWidget a) -> IO CBool

isRightToLeft :: QWidget a -> (()) -> IO (Bool)
isRightToLeft x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isRightToLeft cobj_x0

foreign import ccall "qtc_QWidget_isRightToLeft" qtc_QWidget_isRightToLeft :: Ptr (TQWidget a) -> IO CBool

isTopLevel :: QWidget a -> (()) -> IO (Bool)
isTopLevel x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isTopLevel cobj_x0

foreign import ccall "qtc_QWidget_isTopLevel" qtc_QWidget_isTopLevel :: Ptr (TQWidget a) -> IO CBool

instance QisVisible (QWidget a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isVisible cobj_x0

foreign import ccall "qtc_QWidget_isVisible" qtc_QWidget_isVisible :: Ptr (TQWidget a) -> IO CBool

isVisibleTo :: QWidget a -> ((QWidget t1)) -> IO (Bool)
isVisibleTo x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_isVisibleTo cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_isVisibleTo" qtc_QWidget_isVisibleTo :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO CBool

isWindow :: QWidget a -> (()) -> IO (Bool)
isWindow x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isWindow cobj_x0

foreign import ccall "qtc_QWidget_isWindow" qtc_QWidget_isWindow :: Ptr (TQWidget a) -> IO CBool

isWindowModified :: QWidget a -> (()) -> IO (Bool)
isWindowModified x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_isWindowModified cobj_x0

foreign import ccall "qtc_QWidget_isWindowModified" qtc_QWidget_isWindowModified :: Ptr (TQWidget a) -> IO CBool

instance QkeyPressEvent (QWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_keyPressEvent_h" qtc_QWidget_keyPressEvent_h :: Ptr (TQWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_keyReleaseEvent_h" qtc_QWidget_keyReleaseEvent_h :: Ptr (TQWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_keyReleaseEvent_h cobj_x0 cobj_x1

qWidgetKeyboardGrabber :: (()) -> IO (QWidget ())
qWidgetKeyboardGrabber ()
  = withQWidgetResult $
    qtc_QWidget_keyboardGrabber

foreign import ccall "qtc_QWidget_keyboardGrabber" qtc_QWidget_keyboardGrabber :: IO (Ptr (TQWidget ()))

instance QlanguageChange (QWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_languageChange cobj_x0

foreign import ccall "qtc_QWidget_languageChange" qtc_QWidget_languageChange :: Ptr (TQWidget a) -> IO ()

instance QlanguageChange (QWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_languageChange cobj_x0

instance Qlayout (QWidget a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_layout cobj_x0

foreign import ccall "qtc_QWidget_layout" qtc_QWidget_layout :: Ptr (TQWidget a) -> IO (Ptr (TQLayout ()))

instance QlayoutDirection (QWidget a) (()) where
 layoutDirection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_layoutDirection cobj_x0

foreign import ccall "qtc_QWidget_layoutDirection" qtc_QWidget_layoutDirection :: Ptr (TQWidget a) -> IO CLong

instance QleaveEvent (QWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_leaveEvent_h" qtc_QWidget_leaveEvent_h :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qlocale (QWidget a) (()) where
 locale x0 ()
  = withQLocaleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_locale cobj_x0

foreign import ccall "qtc_QWidget_locale" qtc_QWidget_locale :: Ptr (TQWidget a) -> IO (Ptr (TQLocale ()))

lower :: QWidget a -> (()) -> IO ()
lower x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_lower cobj_x0

foreign import ccall "qtc_QWidget_lower" qtc_QWidget_lower :: Ptr (TQWidget a) -> IO ()

mapFrom :: QWidget a -> ((QWidget t1, Point)) -> IO (Point)
mapFrom x0 (x1, x2)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWidget_mapFrom_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapFrom_qth" qtc_QWidget_mapFrom_qth :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qmapFrom :: QWidget a -> ((QWidget t1, QPoint t2)) -> IO (QPoint ())
qmapFrom x0 (x1, x2)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_mapFrom cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_mapFrom" qtc_QWidget_mapFrom :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQPoint ()))

mapFromGlobal :: QWidget a -> ((Point)) -> IO (Point)
mapFromGlobal x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_mapFromGlobal_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapFromGlobal_qth" qtc_QWidget_mapFromGlobal_qth :: Ptr (TQWidget a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qmapFromGlobal :: QWidget a -> ((QPoint t1)) -> IO (QPoint ())
qmapFromGlobal x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mapFromGlobal cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mapFromGlobal" qtc_QWidget_mapFromGlobal :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

instance QmapFromParent (QWidget a) ((Point)) (IO (Point)) where
 mapFromParent x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_mapFromParent_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapFromParent_qth" qtc_QWidget_mapFromParent_qth :: Ptr (TQWidget a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqmapFromParent (QWidget a) ((QPoint t1)) (IO (QPoint ())) where
 qmapFromParent x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mapFromParent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mapFromParent" qtc_QWidget_mapFromParent :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

mapTo :: QWidget a -> ((QWidget t1, Point)) -> IO (Point)
mapTo x0 (x1, x2)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWidget_mapTo_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapTo_qth" qtc_QWidget_mapTo_qth :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qmapTo :: QWidget a -> ((QWidget t1, QPoint t2)) -> IO (QPoint ())
qmapTo x0 (x1, x2)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_mapTo cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_mapTo" qtc_QWidget_mapTo :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQPoint ()))

mapToGlobal :: QWidget a -> ((Point)) -> IO (Point)
mapToGlobal x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_mapToGlobal_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapToGlobal_qth" qtc_QWidget_mapToGlobal_qth :: Ptr (TQWidget a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

qmapToGlobal :: QWidget a -> ((QPoint t1)) -> IO (QPoint ())
qmapToGlobal x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mapToGlobal cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mapToGlobal" qtc_QWidget_mapToGlobal :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

instance QmapToParent (QWidget a) ((Point)) (IO (Point)) where
 mapToParent x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_mapToParent_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_mapToParent_qth" qtc_QWidget_mapToParent_qth :: Ptr (TQWidget a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqmapToParent (QWidget a) ((QPoint t1)) (IO (QPoint ())) where
 qmapToParent x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mapToParent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mapToParent" qtc_QWidget_mapToParent :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPoint ()))

instance Qmask (QWidget a) (()) (IO (QRegion ())) where
 mask x0 ()
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_mask cobj_x0

foreign import ccall "qtc_QWidget_mask" qtc_QWidget_mask :: Ptr (TQWidget a) -> IO (Ptr (TQRegion ()))

instance Qmask_nf (QWidget a) (()) (IO (QRegion ())) where
 mask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_mask cobj_x0

maximumHeight :: QWidget a -> (()) -> IO (Int)
maximumHeight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_maximumHeight cobj_x0

foreign import ccall "qtc_QWidget_maximumHeight" qtc_QWidget_maximumHeight :: Ptr (TQWidget a) -> IO CInt

instance QqmaximumSize (QWidget a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_maximumSize cobj_x0

foreign import ccall "qtc_QWidget_maximumSize" qtc_QWidget_maximumSize :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QmaximumSize (QWidget a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_maximumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_maximumSize_qth" qtc_QWidget_maximumSize_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumWidth (QWidget a) (()) (IO (Int)) where
 maximumWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_maximumWidth cobj_x0

foreign import ccall "qtc_QWidget_maximumWidth" qtc_QWidget_maximumWidth :: Ptr (TQWidget a) -> IO CInt

instance Qmetric (QWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_metric" qtc_QWidget_metric :: Ptr (TQWidget a) -> CLong -> IO CInt

instance Qmetric (QWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

minimumHeight :: QWidget a -> (()) -> IO (Int)
minimumHeight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumHeight cobj_x0

foreign import ccall "qtc_QWidget_minimumHeight" qtc_QWidget_minimumHeight :: Ptr (TQWidget a) -> IO CInt

instance QqminimumSize (QWidget a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSize cobj_x0

foreign import ccall "qtc_QWidget_minimumSize" qtc_QWidget_minimumSize :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QminimumSize (QWidget a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_minimumSize_qth" qtc_QWidget_minimumSize_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqminimumSizeHint (QWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QWidget_minimumSizeHint_h" qtc_QWidget_minimumSizeHint_h :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_minimumSizeHint_qth_h" qtc_QWidget_minimumSizeHint_qth_h :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QminimumWidth (QWidget a) (()) (IO (Int)) where
 minimumWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_minimumWidth cobj_x0

foreign import ccall "qtc_QWidget_minimumWidth" qtc_QWidget_minimumWidth :: Ptr (TQWidget a) -> IO CInt

instance QmouseDoubleClickEvent (QWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseDoubleClickEvent_h" qtc_QWidget_mouseDoubleClickEvent_h :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

qWidgetMouseGrabber :: (()) -> IO (QWidget ())
qWidgetMouseGrabber ()
  = withQWidgetResult $
    qtc_QWidget_mouseGrabber

foreign import ccall "qtc_QWidget_mouseGrabber" qtc_QWidget_mouseGrabber :: IO (Ptr (TQWidget ()))

instance QmouseMoveEvent (QWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseMoveEvent_h" qtc_QWidget_mouseMoveEvent_h :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mousePressEvent_h" qtc_QWidget_mousePressEvent_h :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_mouseReleaseEvent_h" qtc_QWidget_mouseReleaseEvent_h :: Ptr (TQWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_move1" qtc_QWidget_move1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QWidget_move_qth" qtc_QWidget_move_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_move" qtc_QWidget_move :: Ptr (TQWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_moveEvent_h" qtc_QWidget_moveEvent_h :: Ptr (TQWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_moveEvent_h cobj_x0 cobj_x1

nextInFocusChain :: QWidget a -> (()) -> IO (QWidget ())
nextInFocusChain x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_nextInFocusChain cobj_x0

foreign import ccall "qtc_QWidget_nextInFocusChain" qtc_QWidget_nextInFocusChain :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

qnormalGeometry :: QWidget a -> (()) -> IO (QRect ())
qnormalGeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_normalGeometry cobj_x0

foreign import ccall "qtc_QWidget_normalGeometry" qtc_QWidget_normalGeometry :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

normalGeometry :: QWidget a -> (()) -> IO (Rect)
normalGeometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_normalGeometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_normalGeometry_qth" qtc_QWidget_normalGeometry_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

overrideWindowFlags :: QWidget a -> ((WindowFlags)) -> IO ()
overrideWindowFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_overrideWindowFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QWidget_overrideWindowFlags" qtc_QWidget_overrideWindowFlags :: Ptr (TQWidget a) -> CLong -> IO ()

overrideWindowState :: QWidget a -> ((WindowStates)) -> IO ()
overrideWindowState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_overrideWindowState cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QWidget_overrideWindowState" qtc_QWidget_overrideWindowState :: Ptr (TQWidget a) -> CLong -> IO ()

instance QpaintEngine (QWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QWidget_paintEngine_h" qtc_QWidget_paintEngine_h :: Ptr (TQWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_paintEngine_h cobj_x0

instance QpaintEvent (QWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_paintEvent_h" qtc_QWidget_paintEvent_h :: Ptr (TQWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paintEvent_h cobj_x0 cobj_x1

instance Qpalette (QWidget a) (()) where
 palette x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_palette cobj_x0

foreign import ccall "qtc_QWidget_palette" qtc_QWidget_palette :: Ptr (TQWidget a) -> IO (Ptr (TQPalette ()))

instance QpaletteChange (QWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_paletteChange" qtc_QWidget_paletteChange :: Ptr (TQWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_paletteChange cobj_x0 cobj_x1

instance QparentWidget (QWidget a) (()) where
 parentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_parentWidget cobj_x0

foreign import ccall "qtc_QWidget_parentWidget" qtc_QWidget_parentWidget :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

instance Qpos (QWidget a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QWidget_pos_qth" qtc_QWidget_pos_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QWidget a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_pos cobj_x0

foreign import ccall "qtc_QWidget_pos" qtc_QWidget_pos :: Ptr (TQWidget a) -> IO (Ptr (TQPoint ()))

raise :: QWidget a -> (()) -> IO ()
raise x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_raise cobj_x0

foreign import ccall "qtc_QWidget_raise" qtc_QWidget_raise :: Ptr (TQWidget a) -> IO ()

instance Qqqrect (QWidget a) (()) (IO (QRect ())) where
 qqrect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_rect cobj_x0

foreign import ccall "qtc_QWidget_rect" qtc_QWidget_rect :: Ptr (TQWidget a) -> IO (Ptr (TQRect ()))

instance Qqrect (QWidget a) (()) (IO (Rect)) where
 qrect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_rect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QWidget_rect_qth" qtc_QWidget_rect_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

releaseKeyboard :: QWidget a -> (()) -> IO ()
releaseKeyboard x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_releaseKeyboard cobj_x0

foreign import ccall "qtc_QWidget_releaseKeyboard" qtc_QWidget_releaseKeyboard :: Ptr (TQWidget a) -> IO ()

releaseMouse :: QWidget a -> (()) -> IO ()
releaseMouse x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_releaseMouse cobj_x0

foreign import ccall "qtc_QWidget_releaseMouse" qtc_QWidget_releaseMouse :: Ptr (TQWidget a) -> IO ()

releaseShortcut :: QWidget a -> ((Int)) -> IO ()
releaseShortcut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_releaseShortcut cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_releaseShortcut" qtc_QWidget_releaseShortcut :: Ptr (TQWidget a) -> CInt -> IO ()

instance QremoveAction (QWidget a) ((QAction t1)) where
 removeAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_removeAction cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_removeAction" qtc_QWidget_removeAction :: Ptr (TQWidget a) -> Ptr (TQAction t1) -> IO ()

instance Qrender (QWidget a) ((QPaintDevice t1)) where
 render x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_render cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_render" qtc_QWidget_render :: Ptr (TQWidget a) -> Ptr (TQPaintDevice t1) -> IO ()

instance Qrender (QWidget a) ((QPaintDevice t1, Point)) where
 render x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWidget_render1_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QWidget_render1_qth" qtc_QWidget_render1_qth :: Ptr (TQWidget a) -> Ptr (TQPaintDevice t1) -> CInt -> CInt -> IO ()

instance Qrender (QWidget a) ((QPaintDevice t1, Point, QRegion t3)) where
 render x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWidget_render2_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y  cobj_x3

foreign import ccall "qtc_QWidget_render2_qth" qtc_QWidget_render2_qth :: Ptr (TQWidget a) -> Ptr (TQPaintDevice t1) -> CInt -> CInt -> Ptr (TQRegion t3) -> IO ()

instance Qqrender (QWidget a) ((QPaintDevice t1, QPoint t2)) where
 qrender x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_render1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_render1" qtc_QWidget_render1 :: Ptr (TQWidget a) -> Ptr (TQPaintDevice t1) -> Ptr (TQPoint t2) -> IO ()

instance Qqrender (QWidget a) ((QPaintDevice t1, QPoint t2, QRegion t3)) where
 qrender x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWidget_render2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QWidget_render2" qtc_QWidget_render2 :: Ptr (TQWidget a) -> Ptr (TQPaintDevice t1) -> Ptr (TQPoint t2) -> Ptr (TQRegion t3) -> IO ()

instance Qrender (QWidget a) ((QWidget t1)) where
 render x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_render_widget cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_render_widget" qtc_QWidget_render_widget :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO ()

instance Qrender (QWidget a) ((QWidget t1, Point)) where
 render x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QWidget_render1_widget_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QWidget_render1_widget_qth" qtc_QWidget_render1_widget_qth :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> CInt -> CInt -> IO ()

instance Qrender (QWidget a) ((QWidget t1, Point, QRegion t3)) where
 render x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWidget_render2_widget_qth cobj_x0 cobj_x1 cpoint_x2_x cpoint_x2_y  cobj_x3

foreign import ccall "qtc_QWidget_render2_widget_qth" qtc_QWidget_render2_widget_qth :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> CInt -> CInt -> Ptr (TQRegion t3) -> IO ()

instance Qqrender (QWidget a) ((QWidget t1, QPoint t2)) where
 qrender x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_render1_widget cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_render1_widget" qtc_QWidget_render1_widget :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> IO ()

instance Qqrender (QWidget a) ((QWidget t1, QPoint t2, QRegion t3)) where
 qrender x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWidget_render2_widget cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QWidget_render2_widget" qtc_QWidget_render2_widget :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> Ptr (TQPoint t2) -> Ptr (TQRegion t3) -> IO ()

instance Qrepaint (QWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_repaint cobj_x0

foreign import ccall "qtc_QWidget_repaint" qtc_QWidget_repaint :: Ptr (TQWidget a) -> IO ()

instance Qrepaint (QWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_repaint cobj_x0

instance Qrepaint (QWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_repaint3 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QWidget_repaint3" qtc_QWidget_repaint3 :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_repaint3 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

qrepaint :: QWidget a -> ((QRect t1)) -> IO ()
qrepaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_repaint2 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_repaint2" qtc_QWidget_repaint2 :: Ptr (TQWidget a) -> Ptr (TQRect t1) -> IO ()

instance Qrepaint (QWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_repaint1" qtc_QWidget_repaint1 :: Ptr (TQWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_repaint1 cobj_x0 cobj_x1

instance Qrepaint (QWidget ()) ((Rect)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QWidget_repaint2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QWidget_repaint2_qth" qtc_QWidget_repaint2_qth :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QWidgetSc a) ((Rect)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QWidget_repaint2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QresetInputContext (QWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QWidget_resetInputContext" qtc_QWidget_resetInputContext :: Ptr (TQWidget a) -> IO ()

instance QresetInputContext (QWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_resetInputContext cobj_x0

instance Qresize (QWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_resize1" qtc_QWidget_resize1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_resize" qtc_QWidget_resize :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resize cobj_x0 cobj_x1

instance Qresize (QWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_resize_qth" qtc_QWidget_resize_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_resizeEvent_h" qtc_QWidget_resizeEvent_h :: Ptr (TQWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_resizeEvent_h cobj_x0 cobj_x1

restoreGeometry :: QWidget a -> ((QByteArray ())) -> IO (Bool)
restoreGeometry x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_restoreGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_restoreGeometry" qtc_QWidget_restoreGeometry :: Ptr (TQWidget a) -> Ptr (TQByteArray ()) -> IO CBool

saveGeometry :: QWidget a -> (()) -> IO (QByteArray ())
saveGeometry x0 ()
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_saveGeometry cobj_x0

foreign import ccall "qtc_QWidget_saveGeometry" qtc_QWidget_saveGeometry :: Ptr (TQWidget a) -> IO (Ptr (TQByteArray ()))

class Qscroll x1 where
 scroll :: QWidget a -> x1 -> IO ()

instance Qscroll ((Int, Int)) where
 scroll x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_scroll cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_scroll" qtc_QWidget_scroll :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qscroll :: QWidget a -> ((Int, Int, QRect t3)) -> IO ()
qscroll x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWidget_scroll1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QWidget_scroll1" qtc_QWidget_scroll1 :: Ptr (TQWidget a) -> CInt -> CInt -> Ptr (TQRect t3) -> IO ()

instance Qscroll ((Int, Int, Rect)) where
 scroll x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QWidget_scroll1_qth cobj_x0 (toCInt x1) (toCInt x2) crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QWidget_scroll1_qth" qtc_QWidget_scroll1_qth :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetAcceptDrops (QWidget a) ((Bool)) where
 setAcceptDrops x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setAcceptDrops cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setAcceptDrops" qtc_QWidget_setAcceptDrops :: Ptr (TQWidget a) -> CBool -> IO ()

class QsetAttribute x1 where
 setAttribute :: QWidget a -> x1 -> IO ()

instance QsetAttribute ((WidgetAttribute)) where
 setAttribute x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setAttribute cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setAttribute" qtc_QWidget_setAttribute :: Ptr (TQWidget a) -> CLong -> IO ()

instance QsetAttribute ((WidgetAttribute, Bool)) where
 setAttribute x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setAttribute1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QWidget_setAttribute1" qtc_QWidget_setAttribute1 :: Ptr (TQWidget a) -> CLong -> CBool -> IO ()

setAutoFillBackground :: QWidget a -> ((Bool)) -> IO ()
setAutoFillBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setAutoFillBackground cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setAutoFillBackground" qtc_QWidget_setAutoFillBackground :: Ptr (TQWidget a) -> CBool -> IO ()

setBackgroundRole :: QWidget a -> ((ColorRole)) -> IO ()
setBackgroundRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setBackgroundRole cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setBackgroundRole" qtc_QWidget_setBackgroundRole :: Ptr (TQWidget a) -> CLong -> IO ()

class QsetBaseSize x1 where
 setBaseSize :: QWidget a -> x1 -> IO ()

instance QsetBaseSize ((Int, Int)) where
 setBaseSize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setBaseSize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_setBaseSize1" qtc_QWidget_setBaseSize1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qsetBaseSize :: QWidget a -> ((QSize t1)) -> IO ()
qsetBaseSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setBaseSize cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setBaseSize" qtc_QWidget_setBaseSize :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetBaseSize ((Size)) where
 setBaseSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_setBaseSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_setBaseSize_qth" qtc_QWidget_setBaseSize_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

instance QsetContentsMargins (QWidget a) ((Int, Int, Int, Int)) where
 setContentsMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setContentsMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QWidget_setContentsMargins" qtc_QWidget_setContentsMargins :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

setContextMenuPolicy :: QWidget a -> ((ContextMenuPolicy)) -> IO ()
setContextMenuPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setContextMenuPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setContextMenuPolicy" qtc_QWidget_setContextMenuPolicy :: Ptr (TQWidget a) -> CLong -> IO ()

instance QsetCursor (QWidget a) ((QCursor t1)) where
 setCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setCursor cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setCursor" qtc_QWidget_setCursor :: Ptr (TQWidget a) -> Ptr (TQCursor t1) -> IO ()

instance QsetDisabled (QWidget a) ((Bool)) where
 setDisabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setDisabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setDisabled" qtc_QWidget_setDisabled :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetEnabled (QWidget a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setEnabled" qtc_QWidget_setEnabled :: Ptr (TQWidget a) -> CBool -> IO ()

setFixedHeight :: QWidget a -> ((Int)) -> IO ()
setFixedHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFixedHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setFixedHeight" qtc_QWidget_setFixedHeight :: Ptr (TQWidget a) -> CInt -> IO ()

class QsetFixedSize x1 where
 setFixedSize :: QWidget a -> x1 -> IO ()

instance QsetFixedSize ((Int, Int)) where
 setFixedSize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFixedSize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_setFixedSize1" qtc_QWidget_setFixedSize1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qsetFixedSize :: QWidget a -> ((QSize t1)) -> IO ()
qsetFixedSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setFixedSize cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setFixedSize" qtc_QWidget_setFixedSize :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetFixedSize ((Size)) where
 setFixedSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_setFixedSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_setFixedSize_qth" qtc_QWidget_setFixedSize_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

setFixedWidth :: QWidget a -> ((Int)) -> IO ()
setFixedWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFixedWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setFixedWidth" qtc_QWidget_setFixedWidth :: Ptr (TQWidget a) -> CInt -> IO ()

instance QsetFocus (QWidget a) (()) where
 setFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFocus cobj_x0

foreign import ccall "qtc_QWidget_setFocus" qtc_QWidget_setFocus :: Ptr (TQWidget a) -> IO ()

instance QsetFocus (QWidget a) ((FocusReason)) where
 setFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFocus1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setFocus1" qtc_QWidget_setFocus1 :: Ptr (TQWidget a) -> CLong -> IO ()

setFocusPolicy :: QWidget a -> ((FocusPolicy)) -> IO ()
setFocusPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setFocusPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setFocusPolicy" qtc_QWidget_setFocusPolicy :: Ptr (TQWidget a) -> CLong -> IO ()

setFocusProxy :: QWidget a -> ((QWidget t1)) -> IO ()
setFocusProxy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setFocusProxy cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setFocusProxy" qtc_QWidget_setFocusProxy :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetFont (QWidget a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setFont" qtc_QWidget_setFont :: Ptr (TQWidget a) -> Ptr (TQFont t1) -> IO ()

setForegroundRole :: QWidget a -> ((ColorRole)) -> IO ()
setForegroundRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setForegroundRole cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setForegroundRole" qtc_QWidget_setForegroundRole :: Ptr (TQWidget a) -> CLong -> IO ()

instance QsetGeometry (QWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QWidget_setGeometry1" qtc_QWidget_setGeometry1 :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setGeometry" qtc_QWidget_setGeometry :: Ptr (TQWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QWidget_setGeometry_qth" qtc_QWidget_setGeometry_qth :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetHidden (QWidget a) ((Bool)) where
 setHidden x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setHidden cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setHidden" qtc_QWidget_setHidden :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetInputContext (QWidget a) ((QInputContext t1)) where
 setInputContext x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setInputContext cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setInputContext" qtc_QWidget_setInputContext :: Ptr (TQWidget a) -> Ptr (TQInputContext t1) -> IO ()

setLayout :: QWidget a -> ((QLayout t1)) -> IO ()
setLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setLayout" qtc_QWidget_setLayout :: Ptr (TQWidget a) -> Ptr (TQLayout t1) -> IO ()

instance QsetLayoutDirection (QWidget a) ((LayoutDirection)) where
 setLayoutDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setLayoutDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setLayoutDirection" qtc_QWidget_setLayoutDirection :: Ptr (TQWidget a) -> CLong -> IO ()

instance QsetLocale (QWidget a) ((QLocale t1)) where
 setLocale x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setLocale cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setLocale" qtc_QWidget_setLocale :: Ptr (TQWidget a) -> Ptr (TQLocale t1) -> IO ()

instance QsetMask (QWidget a) ((QBitmap t1)) where
 setMask x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setMask cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setMask" qtc_QWidget_setMask :: Ptr (TQWidget a) -> Ptr (TQBitmap t1) -> IO ()

instance QsetMask (QWidget a) ((QRegion t1)) where
 setMask x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setMask1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setMask1" qtc_QWidget_setMask1 :: Ptr (TQWidget a) -> Ptr (TQRegion t1) -> IO ()

setMaximumHeight :: QWidget a -> ((Int)) -> IO ()
setMaximumHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMaximumHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setMaximumHeight" qtc_QWidget_setMaximumHeight :: Ptr (TQWidget a) -> CInt -> IO ()

class QsetMaximumSize x1 where
 setMaximumSize :: QWidget a -> x1 -> IO ()

instance QsetMaximumSize ((Int, Int)) where
 setMaximumSize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMaximumSize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_setMaximumSize1" qtc_QWidget_setMaximumSize1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qsetMaximumSize :: QWidget a -> ((QSize t1)) -> IO ()
qsetMaximumSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setMaximumSize cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setMaximumSize" qtc_QWidget_setMaximumSize :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetMaximumSize ((Size)) where
 setMaximumSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_setMaximumSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_setMaximumSize_qth" qtc_QWidget_setMaximumSize_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

setMaximumWidth :: QWidget a -> ((Int)) -> IO ()
setMaximumWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMaximumWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setMaximumWidth" qtc_QWidget_setMaximumWidth :: Ptr (TQWidget a) -> CInt -> IO ()

setMinimumHeight :: QWidget a -> ((Int)) -> IO ()
setMinimumHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMinimumHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setMinimumHeight" qtc_QWidget_setMinimumHeight :: Ptr (TQWidget a) -> CInt -> IO ()

class QsetMinimumSize x1 where
 setMinimumSize :: QWidget a -> x1 -> IO ()

instance QsetMinimumSize ((Int, Int)) where
 setMinimumSize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMinimumSize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_setMinimumSize1" qtc_QWidget_setMinimumSize1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qsetMinimumSize :: QWidget a -> ((QSize t1)) -> IO ()
qsetMinimumSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setMinimumSize cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setMinimumSize" qtc_QWidget_setMinimumSize :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetMinimumSize ((Size)) where
 setMinimumSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_setMinimumSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_setMinimumSize_qth" qtc_QWidget_setMinimumSize_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

setMinimumWidth :: QWidget a -> ((Int)) -> IO ()
setMinimumWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMinimumWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setMinimumWidth" qtc_QWidget_setMinimumWidth :: Ptr (TQWidget a) -> CInt -> IO ()

instance QsetMouseTracking (QWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setMouseTracking" qtc_QWidget_setMouseTracking :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetPalette (QWidget a) ((QPalette t1)) where
 setPalette x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setPalette cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setPalette" qtc_QWidget_setPalette :: Ptr (TQWidget a) -> Ptr (TQPalette t1) -> IO ()

class QsetParent x1 where
 setParent :: QWidget a -> x1 -> IO ()

instance QsetParent ((QWidget t1)) where
 setParent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setParent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setParent" qtc_QWidget_setParent :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetParent ((QWidget t1, WindowFlags)) where
 setParent x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setParent1 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QWidget_setParent1" qtc_QWidget_setParent1 :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> CLong -> IO ()

class QsetShortcutAutoRepeat x1 where
 setShortcutAutoRepeat :: QWidget a -> x1 -> IO ()

instance QsetShortcutAutoRepeat ((Int)) where
 setShortcutAutoRepeat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setShortcutAutoRepeat cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setShortcutAutoRepeat" qtc_QWidget_setShortcutAutoRepeat :: Ptr (TQWidget a) -> CInt -> IO ()

instance QsetShortcutAutoRepeat ((Int, Bool)) where
 setShortcutAutoRepeat x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setShortcutAutoRepeat1 cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QWidget_setShortcutAutoRepeat1" qtc_QWidget_setShortcutAutoRepeat1 :: Ptr (TQWidget a) -> CInt -> CBool -> IO ()

class QsetShortcutEnabled x1 where
 setShortcutEnabled :: QWidget a -> x1 -> IO ()

instance QsetShortcutEnabled ((Int)) where
 setShortcutEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setShortcutEnabled cobj_x0 (toCInt x1)

foreign import ccall "qtc_QWidget_setShortcutEnabled" qtc_QWidget_setShortcutEnabled :: Ptr (TQWidget a) -> CInt -> IO ()

instance QsetShortcutEnabled ((Int, Bool)) where
 setShortcutEnabled x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setShortcutEnabled1 cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QWidget_setShortcutEnabled1" qtc_QWidget_setShortcutEnabled1 :: Ptr (TQWidget a) -> CInt -> CBool -> IO ()

setShown :: QWidget a -> ((Bool)) -> IO ()
setShown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setShown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setShown" qtc_QWidget_setShown :: Ptr (TQWidget a) -> CBool -> IO ()

class QsetSizeIncrement x1 where
 setSizeIncrement :: QWidget a -> x1 -> IO ()

instance QsetSizeIncrement ((Int, Int)) where
 setSizeIncrement x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setSizeIncrement1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QWidget_setSizeIncrement1" qtc_QWidget_setSizeIncrement1 :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

qsetSizeIncrement :: QWidget a -> ((QSize t1)) -> IO ()
qsetSizeIncrement x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setSizeIncrement cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setSizeIncrement" qtc_QWidget_setSizeIncrement :: Ptr (TQWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetSizeIncrement ((Size)) where
 setSizeIncrement x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QWidget_setSizeIncrement_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QWidget_setSizeIncrement_qth" qtc_QWidget_setSizeIncrement_qth :: Ptr (TQWidget a) -> CInt -> CInt -> IO ()

class QsetSizePolicy x1 where
 setSizePolicy :: QWidget a -> x1 -> IO ()

instance QsetSizePolicy ((Policy, Policy)) where
 setSizePolicy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setSizePolicy1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QWidget_setSizePolicy1" qtc_QWidget_setSizePolicy1 :: Ptr (TQWidget a) -> CLong -> CLong -> IO ()

instance QsetSizePolicy ((QSizePolicy t1)) where
 setSizePolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setSizePolicy cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setSizePolicy" qtc_QWidget_setSizePolicy :: Ptr (TQWidget a) -> Ptr (TQSizePolicy t1) -> IO ()

instance QsetStatusTip (QWidget a) ((String)) where
 setStatusTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setStatusTip cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setStatusTip" qtc_QWidget_setStatusTip :: Ptr (TQWidget a) -> CWString -> IO ()

instance QsetStyle (QWidget a) ((QStyle t1)) where
 setStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setStyle cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setStyle" qtc_QWidget_setStyle :: Ptr (TQWidget a) -> Ptr (TQStyle t1) -> IO ()

instance QsetStyleSheet (QWidget a) ((String)) where
 setStyleSheet x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setStyleSheet cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setStyleSheet" qtc_QWidget_setStyleSheet :: Ptr (TQWidget a) -> CWString -> IO ()

qWidgetSetTabOrder :: ((QWidget t1, QWidget t2)) -> IO ()
qWidgetSetTabOrder (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_setTabOrder cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_setTabOrder" qtc_QWidget_setTabOrder :: Ptr (TQWidget t1) -> Ptr (TQWidget t2) -> IO ()

instance QsetToolTip (QWidget a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setToolTip" qtc_QWidget_setToolTip :: Ptr (TQWidget a) -> CWString -> IO ()

setUpdatesEnabled :: QWidget a -> ((Bool)) -> IO ()
setUpdatesEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setUpdatesEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setUpdatesEnabled" qtc_QWidget_setUpdatesEnabled :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetVisible (QWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setVisible_h" qtc_QWidget_setVisible_h :: Ptr (TQWidget a) -> CBool -> IO ()

instance QsetVisible (QWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setVisible_h cobj_x0 (toCBool x1)

instance QsetWhatsThis (QWidget a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setWhatsThis" qtc_QWidget_setWhatsThis :: Ptr (TQWidget a) -> CWString -> IO ()

setWindowFlags :: QWidget a -> ((WindowFlags)) -> IO ()
setWindowFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QWidget_setWindowFlags" qtc_QWidget_setWindowFlags :: Ptr (TQWidget a) -> CLong -> IO ()

setWindowIcon :: QWidget a -> ((QIcon t1)) -> IO ()
setWindowIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_setWindowIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_setWindowIcon" qtc_QWidget_setWindowIcon :: Ptr (TQWidget a) -> Ptr (TQIcon t1) -> IO ()

setWindowIconText :: QWidget a -> ((String)) -> IO ()
setWindowIconText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setWindowIconText cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setWindowIconText" qtc_QWidget_setWindowIconText :: Ptr (TQWidget a) -> CWString -> IO ()

instance QsetWindowModality (QWidget ()) ((WindowModality)) where
 setWindowModality x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowModality cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_setWindowModality" qtc_QWidget_setWindowModality :: Ptr (TQWidget a) -> CLong -> IO ()

setWindowModified :: QWidget a -> ((Bool)) -> IO ()
setWindowModified x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowModified cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_setWindowModified" qtc_QWidget_setWindowModified :: Ptr (TQWidget a) -> CBool -> IO ()

setWindowOpacity :: QWidget a -> ((Double)) -> IO ()
setWindowOpacity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowOpacity cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QWidget_setWindowOpacity" qtc_QWidget_setWindowOpacity :: Ptr (TQWidget a) -> CDouble -> IO ()

setWindowRole :: QWidget a -> ((String)) -> IO ()
setWindowRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setWindowRole cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setWindowRole" qtc_QWidget_setWindowRole :: Ptr (TQWidget a) -> CWString -> IO ()

setWindowState :: QWidget a -> ((WindowStates)) -> IO ()
setWindowState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_setWindowState cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QWidget_setWindowState" qtc_QWidget_setWindowState :: Ptr (TQWidget a) -> CLong -> IO ()

instance QsetWindowTitle (QWidget a) ((String)) where
 setWindowTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_setWindowTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_setWindowTitle" qtc_QWidget_setWindowTitle :: Ptr (TQWidget a) -> CWString -> IO ()

instance Qqshow (QWidget a) (()) where
 qshow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_show cobj_x0

foreign import ccall "qtc_QWidget_show" qtc_QWidget_show :: Ptr (TQWidget a) -> IO ()

instance QshowEvent (QWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_showEvent_h" qtc_QWidget_showEvent_h :: Ptr (TQWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_showEvent_h cobj_x0 cobj_x1

showFullScreen :: QWidget a -> (()) -> IO ()
showFullScreen x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_showFullScreen cobj_x0

foreign import ccall "qtc_QWidget_showFullScreen" qtc_QWidget_showFullScreen :: Ptr (TQWidget a) -> IO ()

showMaximized :: QWidget a -> (()) -> IO ()
showMaximized x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_showMaximized cobj_x0

foreign import ccall "qtc_QWidget_showMaximized" qtc_QWidget_showMaximized :: Ptr (TQWidget a) -> IO ()

showMinimized :: QWidget a -> (()) -> IO ()
showMinimized x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_showMinimized cobj_x0

foreign import ccall "qtc_QWidget_showMinimized" qtc_QWidget_showMinimized :: Ptr (TQWidget a) -> IO ()

showNormal :: QWidget a -> (()) -> IO ()
showNormal x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_showNormal cobj_x0

foreign import ccall "qtc_QWidget_showNormal" qtc_QWidget_showNormal :: Ptr (TQWidget a) -> IO ()

instance Qqqsize (QWidget a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_size cobj_x0

foreign import ccall "qtc_QWidget_size" qtc_QWidget_size :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance Qqsize (QWidget a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_size_qth" qtc_QWidget_size_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqsizeHint (QWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QWidget_sizeHint_h" qtc_QWidget_sizeHint_h :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_h cobj_x0

instance QsizeHint (QWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_sizeHint_qth_h" qtc_QWidget_sizeHint_qth_h :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qsizeIncrement :: QWidget a -> (()) -> IO (QSize ())
qsizeIncrement x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeIncrement cobj_x0

foreign import ccall "qtc_QWidget_sizeIncrement" qtc_QWidget_sizeIncrement :: Ptr (TQWidget a) -> IO (Ptr (TQSize ()))

sizeIncrement :: QWidget a -> (()) -> IO (Size)
sizeIncrement x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizeIncrement_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QWidget_sizeIncrement_qth" qtc_QWidget_sizeIncrement_qth :: Ptr (TQWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

sizePolicy :: QWidget a -> (()) -> IO (QSizePolicy ())
sizePolicy x0 ()
  = withQSizePolicyResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sizePolicy cobj_x0

foreign import ccall "qtc_QWidget_sizePolicy" qtc_QWidget_sizePolicy :: Ptr (TQWidget a) -> IO (Ptr (TQSizePolicy ()))

stackUnder :: QWidget a -> ((QWidget t1)) -> IO ()
stackUnder x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_stackUnder cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_stackUnder" qtc_QWidget_stackUnder :: Ptr (TQWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QstatusTip (QWidget a) (()) where
 statusTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_statusTip cobj_x0

foreign import ccall "qtc_QWidget_statusTip" qtc_QWidget_statusTip :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

instance Qstyle (QWidget a) (()) (IO (QStyle ())) where
 style x0 ()
  = withQStyleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_style cobj_x0

foreign import ccall "qtc_QWidget_style" qtc_QWidget_style :: Ptr (TQWidget a) -> IO (Ptr (TQStyle ()))

instance QstyleSheet (QWidget a) (()) where
 styleSheet x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_styleSheet cobj_x0

foreign import ccall "qtc_QWidget_styleSheet" qtc_QWidget_styleSheet :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

instance QtabletEvent (QWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_tabletEvent_h" qtc_QWidget_tabletEvent_h :: Ptr (TQWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_tabletEvent_h cobj_x0 cobj_x1

testAttribute :: QWidget a -> ((WidgetAttribute)) -> IO (Bool)
testAttribute x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_testAttribute cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QWidget_testAttribute" qtc_QWidget_testAttribute :: Ptr (TQWidget a) -> CLong -> IO CBool

instance QtoolTip (QWidget a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_toolTip cobj_x0

foreign import ccall "qtc_QWidget_toolTip" qtc_QWidget_toolTip :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

topLevelWidget :: QWidget a -> (()) -> IO (QWidget ())
topLevelWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_topLevelWidget cobj_x0

foreign import ccall "qtc_QWidget_topLevelWidget" qtc_QWidget_topLevelWidget :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

underMouse :: QWidget a -> (()) -> IO (Bool)
underMouse x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_underMouse cobj_x0

foreign import ccall "qtc_QWidget_underMouse" qtc_QWidget_underMouse :: Ptr (TQWidget a) -> IO CBool

instance QunsetCursor (QWidget a) (()) where
 unsetCursor x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_unsetCursor cobj_x0

foreign import ccall "qtc_QWidget_unsetCursor" qtc_QWidget_unsetCursor :: Ptr (TQWidget a) -> IO ()

unsetLayoutDirection :: QWidget a -> (()) -> IO ()
unsetLayoutDirection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_unsetLayoutDirection cobj_x0

foreign import ccall "qtc_QWidget_unsetLayoutDirection" qtc_QWidget_unsetLayoutDirection :: Ptr (TQWidget a) -> IO ()

unsetLocale :: QWidget a -> (()) -> IO ()
unsetLocale x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_unsetLocale cobj_x0

foreign import ccall "qtc_QWidget_unsetLocale" qtc_QWidget_unsetLocale :: Ptr (TQWidget a) -> IO ()

instance Qupdate (QWidget a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_update cobj_x0

foreign import ccall "qtc_QWidget_update" qtc_QWidget_update :: Ptr (TQWidget a) -> IO ()

instance Qupdate (QWidget a) ((Int, Int, Int, Int)) where
 update x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_update3 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QWidget_update3" qtc_QWidget_update3 :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qqupdate (QWidget a) ((QRect t1)) where
 qupdate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_update2 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_update2" qtc_QWidget_update2 :: Ptr (TQWidget a) -> Ptr (TQRect t1) -> IO ()

instance Qupdate (QWidget a) ((QRegion t1)) where
 update x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_update1 cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_update1" qtc_QWidget_update1 :: Ptr (TQWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qupdate (QWidget a) ((Rect)) where
 update x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QWidget_update2_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QWidget_update2_qth" qtc_QWidget_update2_qth :: Ptr (TQWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

updateGeometry :: QWidget a -> (()) -> IO ()
updateGeometry x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_updateGeometry cobj_x0

foreign import ccall "qtc_QWidget_updateGeometry" qtc_QWidget_updateGeometry :: Ptr (TQWidget a) -> IO ()

instance QupdateMicroFocus (QWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QWidget_updateMicroFocus" qtc_QWidget_updateMicroFocus :: Ptr (TQWidget a) -> IO ()

instance QupdateMicroFocus (QWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_updateMicroFocus cobj_x0

updatesEnabled :: QWidget a -> (()) -> IO (Bool)
updatesEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_updatesEnabled cobj_x0

foreign import ccall "qtc_QWidget_updatesEnabled" qtc_QWidget_updatesEnabled :: Ptr (TQWidget a) -> IO CBool

visibleRegion :: QWidget a -> (()) -> IO (QRegion ())
visibleRegion x0 ()
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_visibleRegion cobj_x0

foreign import ccall "qtc_QWidget_visibleRegion" qtc_QWidget_visibleRegion :: Ptr (TQWidget a) -> IO (Ptr (TQRegion ()))

instance QwhatsThis (QWidget a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_whatsThis cobj_x0

foreign import ccall "qtc_QWidget_whatsThis" qtc_QWidget_whatsThis :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

instance QwheelEvent (QWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_wheelEvent_h" qtc_QWidget_wheelEvent_h :: Ptr (TQWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_wheelEvent_h cobj_x0 cobj_x1

instance Qqwidth (QWidget a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_width cobj_x0

foreign import ccall "qtc_QWidget_width" qtc_QWidget_width :: Ptr (TQWidget a) -> IO CInt

winId :: QWidget a -> (()) -> IO (QVoid ())
winId x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_winId cobj_x0

foreign import ccall "qtc_QWidget_winId" qtc_QWidget_winId :: Ptr (TQWidget a) -> IO (Ptr (TQVoid ()))

instance Qwindow (QWidget a) (()) (IO (QWidget ())) where
 window x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_window cobj_x0

foreign import ccall "qtc_QWidget_window" qtc_QWidget_window :: Ptr (TQWidget a) -> IO (Ptr (TQWidget ()))

instance QwindowActivationChange (QWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QWidget_windowActivationChange" qtc_QWidget_windowActivationChange :: Ptr (TQWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowActivationChange cobj_x0 (toCBool x1)

windowFlags :: QWidget a -> (()) -> IO (WindowFlags)
windowFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowFlags cobj_x0

foreign import ccall "qtc_QWidget_windowFlags" qtc_QWidget_windowFlags :: Ptr (TQWidget a) -> IO CLong

windowIcon :: QWidget a -> (()) -> IO (QIcon ())
windowIcon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowIcon cobj_x0

foreign import ccall "qtc_QWidget_windowIcon" qtc_QWidget_windowIcon :: Ptr (TQWidget a) -> IO (Ptr (TQIcon ()))

windowIconText :: QWidget a -> (()) -> IO (String)
windowIconText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowIconText cobj_x0

foreign import ccall "qtc_QWidget_windowIconText" qtc_QWidget_windowIconText :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

windowModality :: QWidget a -> (()) -> IO (WindowModality)
windowModality x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowModality cobj_x0

foreign import ccall "qtc_QWidget_windowModality" qtc_QWidget_windowModality :: Ptr (TQWidget a) -> IO CLong

windowOpacity :: QWidget a -> (()) -> IO (Double)
windowOpacity x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowOpacity cobj_x0

foreign import ccall "qtc_QWidget_windowOpacity" qtc_QWidget_windowOpacity :: Ptr (TQWidget a) -> IO CDouble

windowRole :: QWidget a -> (()) -> IO (String)
windowRole x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowRole cobj_x0

foreign import ccall "qtc_QWidget_windowRole" qtc_QWidget_windowRole :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

windowState :: QWidget a -> (()) -> IO (WindowStates)
windowState x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowState cobj_x0

foreign import ccall "qtc_QWidget_windowState" qtc_QWidget_windowState :: Ptr (TQWidget a) -> IO CLong

windowTitle :: QWidget a -> (()) -> IO (String)
windowTitle x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowTitle cobj_x0

foreign import ccall "qtc_QWidget_windowTitle" qtc_QWidget_windowTitle :: Ptr (TQWidget a) -> IO (Ptr (TQString ()))

windowType :: QWidget a -> (()) -> IO (WindowType)
windowType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_windowType cobj_x0

foreign import ccall "qtc_QWidget_windowType" qtc_QWidget_windowType :: Ptr (TQWidget a) -> IO CLong

instance Qqx (QWidget a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_x cobj_x0

foreign import ccall "qtc_QWidget_x" qtc_QWidget_x :: Ptr (TQWidget a) -> IO CInt

instance Qqy (QWidget a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_y cobj_x0

foreign import ccall "qtc_QWidget_y" qtc_QWidget_y :: Ptr (TQWidget a) -> IO CInt

qWidget_delete :: QWidget a -> IO ()
qWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_delete cobj_x0

foreign import ccall "qtc_QWidget_delete" qtc_QWidget_delete :: Ptr (TQWidget a) -> IO ()

qWidget_deleteLater :: QWidget a -> IO ()
qWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_deleteLater cobj_x0

foreign import ccall "qtc_QWidget_deleteLater" qtc_QWidget_deleteLater :: Ptr (TQWidget a) -> IO ()

instance QchildEvent (QWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_childEvent" qtc_QWidget_childEvent :: Ptr (TQWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_connectNotify" qtc_QWidget_connectNotify :: Ptr (TQWidget a) -> CWString -> IO ()

instance QconnectNotify (QWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_customEvent" qtc_QWidget_customEvent :: Ptr (TQWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_disconnectNotify" qtc_QWidget_disconnectNotify :: Ptr (TQWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QWidget_eventFilter_h" qtc_QWidget_eventFilter_h :: Ptr (TQWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QWidget_receivers" qtc_QWidget_receivers :: Ptr (TQWidget a) -> CWString -> IO CInt

instance Qreceivers (QWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QWidget_receivers cobj_x0 cstr_x1

instance Qsender (QWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sender cobj_x0

foreign import ccall "qtc_QWidget_sender" qtc_QWidget_sender :: Ptr (TQWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QWidget_sender cobj_x0

instance QtimerEvent (QWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QWidget_timerEvent" qtc_QWidget_timerEvent :: Ptr (TQWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWidget_timerEvent cobj_x0 cobj_x1

