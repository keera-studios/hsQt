{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextBrowser.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextBrowser (
  QqTextBrowser(..)
  ,Qbackward(..)
  ,clearHistory
  ,Qforward(..)
  ,isBackwardAvailable
  ,isForwardAvailable
  ,openLinks
  ,Qreload(..)
  ,searchPaths
  ,setOpenLinks
  ,setSearchPaths
  ,qTextBrowser_delete
  ,qTextBrowser_deleteLater
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

instance QuserMethod (QTextBrowser ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextBrowser_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextBrowser_userMethod" qtc_QTextBrowser_userMethod :: Ptr (TQTextBrowser a) -> CInt -> IO ()

instance QuserMethod (QTextBrowserSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextBrowser_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextBrowser ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextBrowser_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextBrowser_userMethodVariant" qtc_QTextBrowser_userMethodVariant :: Ptr (TQTextBrowser a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextBrowserSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextBrowser_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTextBrowser x1 where
  qTextBrowser :: x1 -> IO (QTextBrowser ())

instance QqTextBrowser (()) where
 qTextBrowser ()
  = withQTextBrowserResult $
    qtc_QTextBrowser

foreign import ccall "qtc_QTextBrowser" qtc_QTextBrowser :: IO (Ptr (TQTextBrowser ()))

instance QqTextBrowser ((QWidget t1)) where
 qTextBrowser (x1)
  = withQTextBrowserResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser1 cobj_x1

foreign import ccall "qtc_QTextBrowser1" qtc_QTextBrowser1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTextBrowser ()))

class Qbackward x0 x1 where
 backward :: x0 -> x1 -> IO ()

instance Qbackward (QTextBrowser ()) (()) where
 backward x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_backward_h cobj_x0

foreign import ccall "qtc_QTextBrowser_backward_h" qtc_QTextBrowser_backward_h :: Ptr (TQTextBrowser a) -> IO ()

instance Qbackward (QTextBrowserSc a) (()) where
 backward x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_backward_h cobj_x0

clearHistory :: QTextBrowser a -> (()) -> IO ()
clearHistory x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_clearHistory cobj_x0

foreign import ccall "qtc_QTextBrowser_clearHistory" qtc_QTextBrowser_clearHistory :: Ptr (TQTextBrowser a) -> IO ()

instance Qevent (QTextBrowser ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_event_h" qtc_QTextBrowser_event_h :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextBrowserSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_event_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTextBrowser ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_focusNextPrevChild" qtc_QTextBrowser_focusNextPrevChild :: Ptr (TQTextBrowser a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTextBrowserSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTextBrowser ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_focusOutEvent_h" qtc_QTextBrowser_focusOutEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTextBrowserSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_focusOutEvent_h cobj_x0 cobj_x1

class Qforward x0 x1 where
 forward :: x0 -> x1 -> IO ()

instance Qforward (QTextBrowser ()) (()) where
 forward x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_forward_h cobj_x0

foreign import ccall "qtc_QTextBrowser_forward_h" qtc_QTextBrowser_forward_h :: Ptr (TQTextBrowser a) -> IO ()

instance Qforward (QTextBrowserSc a) (()) where
 forward x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_forward_h cobj_x0

instance Qhome (QTextBrowser ()) (()) where
 home x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_home_h cobj_x0

foreign import ccall "qtc_QTextBrowser_home_h" qtc_QTextBrowser_home_h :: Ptr (TQTextBrowser a) -> IO ()

instance Qhome (QTextBrowserSc a) (()) where
 home x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_home_h cobj_x0

isBackwardAvailable :: QTextBrowser a -> (()) -> IO (Bool)
isBackwardAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_isBackwardAvailable cobj_x0

foreign import ccall "qtc_QTextBrowser_isBackwardAvailable" qtc_QTextBrowser_isBackwardAvailable :: Ptr (TQTextBrowser a) -> IO CBool

isForwardAvailable :: QTextBrowser a -> (()) -> IO (Bool)
isForwardAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_isForwardAvailable cobj_x0

foreign import ccall "qtc_QTextBrowser_isForwardAvailable" qtc_QTextBrowser_isForwardAvailable :: Ptr (TQTextBrowser a) -> IO CBool

instance QkeyPressEvent (QTextBrowser ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_keyPressEvent_h" qtc_QTextBrowser_keyPressEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTextBrowserSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_keyPressEvent_h cobj_x0 cobj_x1

instance QloadResource (QTextBrowser ()) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBrowser_loadResource_h cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextBrowser_loadResource_h" qtc_QTextBrowser_loadResource_h :: Ptr (TQTextBrowser a) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant ()))

instance QloadResource (QTextBrowserSc a) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBrowser_loadResource_h cobj_x0 (toCInt x1) cobj_x2

instance QmouseMoveEvent (QTextBrowser ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_mouseMoveEvent_h" qtc_QTextBrowser_mouseMoveEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTextBrowserSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTextBrowser ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_mousePressEvent_h" qtc_QTextBrowser_mousePressEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTextBrowserSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTextBrowser ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_mouseReleaseEvent_h" qtc_QTextBrowser_mouseReleaseEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTextBrowserSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QopenExternalLinks (QTextBrowser a) (()) where
 openExternalLinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_openExternalLinks cobj_x0

foreign import ccall "qtc_QTextBrowser_openExternalLinks" qtc_QTextBrowser_openExternalLinks :: Ptr (TQTextBrowser a) -> IO CBool

openLinks :: QTextBrowser a -> (()) -> IO (Bool)
openLinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_openLinks cobj_x0

foreign import ccall "qtc_QTextBrowser_openLinks" qtc_QTextBrowser_openLinks :: Ptr (TQTextBrowser a) -> IO CBool

instance QpaintEvent (QTextBrowser ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_paintEvent_h" qtc_QTextBrowser_paintEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTextBrowserSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_paintEvent_h cobj_x0 cobj_x1

class Qreload x0 x1 where
 reload :: x0 -> x1 -> IO ()

instance Qreload (QTextBrowser ()) (()) where
 reload x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_reload_h cobj_x0

foreign import ccall "qtc_QTextBrowser_reload_h" qtc_QTextBrowser_reload_h :: Ptr (TQTextBrowser a) -> IO ()

instance Qreload (QTextBrowserSc a) (()) where
 reload x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_reload_h cobj_x0

searchPaths :: QTextBrowser a -> (()) -> IO ([String])
searchPaths x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_searchPaths cobj_x0 arr

foreign import ccall "qtc_QTextBrowser_searchPaths" qtc_QTextBrowser_searchPaths :: Ptr (TQTextBrowser a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QsetOpenExternalLinks (QTextBrowser a) ((Bool)) where
 setOpenExternalLinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setOpenExternalLinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_setOpenExternalLinks" qtc_QTextBrowser_setOpenExternalLinks :: Ptr (TQTextBrowser a) -> CBool -> IO ()

setOpenLinks :: QTextBrowser a -> ((Bool)) -> IO ()
setOpenLinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setOpenLinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_setOpenLinks" qtc_QTextBrowser_setOpenLinks :: Ptr (TQTextBrowser a) -> CBool -> IO ()

setSearchPaths :: QTextBrowser a -> (([String])) -> IO ()
setSearchPaths x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTextBrowser_setSearchPaths cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTextBrowser_setSearchPaths" qtc_QTextBrowser_setSearchPaths :: Ptr (TQTextBrowser a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetSource (QTextBrowser ()) ((QUrl t1)) where
 setSource x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_setSource_h" qtc_QTextBrowser_setSource_h :: Ptr (TQTextBrowser a) -> Ptr (TQUrl t1) -> IO ()

instance QsetSource (QTextBrowserSc a) ((QUrl t1)) where
 setSource x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setSource_h cobj_x0 cobj_x1

instance Qsource (QTextBrowser a) (()) (IO (QUrl ())) where
 source x0 ()
  = withQUrlResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_source cobj_x0

foreign import ccall "qtc_QTextBrowser_source" qtc_QTextBrowser_source :: Ptr (TQTextBrowser a) -> IO (Ptr (TQUrl ()))

qTextBrowser_delete :: QTextBrowser a -> IO ()
qTextBrowser_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_delete cobj_x0

foreign import ccall "qtc_QTextBrowser_delete" qtc_QTextBrowser_delete :: Ptr (TQTextBrowser a) -> IO ()

qTextBrowser_deleteLater :: QTextBrowser a -> IO ()
qTextBrowser_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_deleteLater cobj_x0

foreign import ccall "qtc_QTextBrowser_deleteLater" qtc_QTextBrowser_deleteLater :: Ptr (TQTextBrowser a) -> IO ()

instance QcanInsertFromMimeData (QTextBrowser ()) ((QMimeData t1)) where
 canInsertFromMimeData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_canInsertFromMimeData_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_canInsertFromMimeData_h" qtc_QTextBrowser_canInsertFromMimeData_h :: Ptr (TQTextBrowser a) -> Ptr (TQMimeData t1) -> IO CBool

instance QcanInsertFromMimeData (QTextBrowserSc a) ((QMimeData t1)) where
 canInsertFromMimeData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_canInsertFromMimeData_h cobj_x0 cobj_x1

instance QchangeEvent (QTextBrowser ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_changeEvent_h" qtc_QTextBrowser_changeEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTextBrowserSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_changeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTextBrowser ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_contextMenuEvent_h" qtc_QTextBrowser_contextMenuEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTextBrowserSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_contextMenuEvent_h cobj_x0 cobj_x1

instance QcreateMimeDataFromSelection (QTextBrowser ()) (()) where
 createMimeDataFromSelection x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_createMimeDataFromSelection_h cobj_x0

foreign import ccall "qtc_QTextBrowser_createMimeDataFromSelection_h" qtc_QTextBrowser_createMimeDataFromSelection_h :: Ptr (TQTextBrowser a) -> IO (Ptr (TQMimeData ()))

instance QcreateMimeDataFromSelection (QTextBrowserSc a) (()) where
 createMimeDataFromSelection x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_createMimeDataFromSelection_h cobj_x0

instance QdragEnterEvent (QTextBrowser ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_dragEnterEvent_h" qtc_QTextBrowser_dragEnterEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTextBrowserSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTextBrowser ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_dragLeaveEvent_h" qtc_QTextBrowser_dragLeaveEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTextBrowserSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTextBrowser ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_dragMoveEvent_h" qtc_QTextBrowser_dragMoveEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTextBrowserSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTextBrowser ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_dropEvent_h" qtc_QTextBrowser_dropEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTextBrowserSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QTextBrowser ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_focusInEvent_h" qtc_QTextBrowser_focusInEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTextBrowserSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_focusInEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QTextBrowser ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_inputMethodEvent" qtc_QTextBrowser_inputMethodEvent :: Ptr (TQTextBrowser a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTextBrowserSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTextBrowser ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextBrowser_inputMethodQuery" qtc_QTextBrowser_inputMethodQuery :: Ptr (TQTextBrowser a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTextBrowserSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QinsertFromMimeData (QTextBrowser ()) ((QMimeData t1)) where
 insertFromMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_insertFromMimeData_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_insertFromMimeData_h" qtc_QTextBrowser_insertFromMimeData_h :: Ptr (TQTextBrowser a) -> Ptr (TQMimeData t1) -> IO ()

instance QinsertFromMimeData (QTextBrowserSc a) ((QMimeData t1)) where
 insertFromMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_insertFromMimeData_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTextBrowser ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_keyReleaseEvent_h" qtc_QTextBrowser_keyReleaseEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTextBrowserSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QTextBrowser ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_mouseDoubleClickEvent_h" qtc_QTextBrowser_mouseDoubleClickEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTextBrowserSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QTextBrowser ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_resizeEvent_h" qtc_QTextBrowser_resizeEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTextBrowserSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_resizeEvent_h cobj_x0 cobj_x1

instance QscrollContentsBy (QTextBrowser ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextBrowser_scrollContentsBy_h" qtc_QTextBrowser_scrollContentsBy_h :: Ptr (TQTextBrowser a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTextBrowserSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QshowEvent (QTextBrowser ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_showEvent_h" qtc_QTextBrowser_showEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTextBrowserSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_showEvent_h cobj_x0 cobj_x1

instance QtimerEvent (QTextBrowser ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_timerEvent" qtc_QTextBrowser_timerEvent :: Ptr (TQTextBrowser a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextBrowserSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QTextBrowser ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_wheelEvent_h" qtc_QTextBrowser_wheelEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTextBrowserSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_wheelEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTextBrowser ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTextBrowser_minimumSizeHint_h" qtc_QTextBrowser_minimumSizeHint_h :: Ptr (TQTextBrowser a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTextBrowserSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTextBrowser ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextBrowser_minimumSizeHint_qth_h" qtc_QTextBrowser_minimumSizeHint_qth_h :: Ptr (TQTextBrowser a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTextBrowserSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTextBrowser ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextBrowser_setViewportMargins" qtc_QTextBrowser_setViewportMargins :: Ptr (TQTextBrowser a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTextBrowserSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTextBrowser ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_setupViewport" qtc_QTextBrowser_setupViewport :: Ptr (TQTextBrowser a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTextBrowserSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTextBrowser ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sizeHint_h cobj_x0

foreign import ccall "qtc_QTextBrowser_sizeHint_h" qtc_QTextBrowser_sizeHint_h :: Ptr (TQTextBrowser a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTextBrowserSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sizeHint_h cobj_x0

instance QsizeHint (QTextBrowser ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextBrowser_sizeHint_qth_h" qtc_QTextBrowser_sizeHint_qth_h :: Ptr (TQTextBrowser a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTextBrowserSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QviewportEvent (QTextBrowser ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_viewportEvent_h" qtc_QTextBrowser_viewportEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTextBrowserSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_viewportEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTextBrowser ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_drawFrame" qtc_QTextBrowser_drawFrame :: Ptr (TQTextBrowser a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTextBrowserSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTextBrowser ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_actionEvent_h" qtc_QTextBrowser_actionEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTextBrowserSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTextBrowser ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_addAction" qtc_QTextBrowser_addAction :: Ptr (TQTextBrowser a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTextBrowserSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTextBrowser ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_closeEvent_h" qtc_QTextBrowser_closeEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTextBrowserSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTextBrowser ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_create cobj_x0

foreign import ccall "qtc_QTextBrowser_create" qtc_QTextBrowser_create :: Ptr (TQTextBrowser a) -> IO ()

instance Qcreate (QTextBrowserSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_create cobj_x0

instance Qcreate (QTextBrowser ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_create1" qtc_QTextBrowser_create1 :: Ptr (TQTextBrowser a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTextBrowserSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create1 cobj_x0 cobj_x1

instance Qcreate (QTextBrowser ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTextBrowser_create2" qtc_QTextBrowser_create2 :: Ptr (TQTextBrowser a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTextBrowserSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTextBrowser ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTextBrowser_create3" qtc_QTextBrowser_create3 :: Ptr (TQTextBrowser a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTextBrowserSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTextBrowser ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy cobj_x0

foreign import ccall "qtc_QTextBrowser_destroy" qtc_QTextBrowser_destroy :: Ptr (TQTextBrowser a) -> IO ()

instance Qdestroy (QTextBrowserSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy cobj_x0

instance Qdestroy (QTextBrowser ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_destroy1" qtc_QTextBrowser_destroy1 :: Ptr (TQTextBrowser a) -> CBool -> IO ()

instance Qdestroy (QTextBrowserSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTextBrowser ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTextBrowser_destroy2" qtc_QTextBrowser_destroy2 :: Ptr (TQTextBrowser a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTextBrowserSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTextBrowser ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_devType_h cobj_x0

foreign import ccall "qtc_QTextBrowser_devType_h" qtc_QTextBrowser_devType_h :: Ptr (TQTextBrowser a) -> IO CInt

instance QdevType (QTextBrowserSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_devType_h cobj_x0

instance QenabledChange (QTextBrowser ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_enabledChange" qtc_QTextBrowser_enabledChange :: Ptr (TQTextBrowser a) -> CBool -> IO ()

instance QenabledChange (QTextBrowserSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTextBrowser ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_enterEvent_h" qtc_QTextBrowser_enterEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTextBrowserSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTextBrowser ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusNextChild cobj_x0

foreign import ccall "qtc_QTextBrowser_focusNextChild" qtc_QTextBrowser_focusNextChild :: Ptr (TQTextBrowser a) -> IO CBool

instance QfocusNextChild (QTextBrowserSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusNextChild cobj_x0

instance QfocusPreviousChild (QTextBrowser ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTextBrowser_focusPreviousChild" qtc_QTextBrowser_focusPreviousChild :: Ptr (TQTextBrowser a) -> IO CBool

instance QfocusPreviousChild (QTextBrowserSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_focusPreviousChild cobj_x0

instance QfontChange (QTextBrowser ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_fontChange" qtc_QTextBrowser_fontChange :: Ptr (TQTextBrowser a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTextBrowserSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTextBrowser ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextBrowser_heightForWidth_h" qtc_QTextBrowser_heightForWidth_h :: Ptr (TQTextBrowser a) -> CInt -> IO CInt

instance QheightForWidth (QTextBrowserSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTextBrowser ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_hideEvent_h" qtc_QTextBrowser_hideEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTextBrowserSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_hideEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTextBrowser ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_languageChange cobj_x0

foreign import ccall "qtc_QTextBrowser_languageChange" qtc_QTextBrowser_languageChange :: Ptr (TQTextBrowser a) -> IO ()

instance QlanguageChange (QTextBrowserSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_languageChange cobj_x0

instance QleaveEvent (QTextBrowser ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_leaveEvent_h" qtc_QTextBrowser_leaveEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTextBrowserSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTextBrowser ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextBrowser_metric" qtc_QTextBrowser_metric :: Ptr (TQTextBrowser a) -> CLong -> IO CInt

instance Qmetric (QTextBrowserSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTextBrowser ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextBrowser_move1" qtc_QTextBrowser_move1 :: Ptr (TQTextBrowser a) -> CInt -> CInt -> IO ()

instance Qmove (QTextBrowserSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTextBrowser ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextBrowser_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTextBrowser_move_qth" qtc_QTextBrowser_move_qth :: Ptr (TQTextBrowser a) -> CInt -> CInt -> IO ()

instance Qmove (QTextBrowserSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextBrowser_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTextBrowser ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_move" qtc_QTextBrowser_move :: Ptr (TQTextBrowser a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTextBrowserSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_move cobj_x0 cobj_x1

instance QmoveEvent (QTextBrowser ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_moveEvent_h" qtc_QTextBrowser_moveEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTextBrowserSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTextBrowser ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_paintEngine_h cobj_x0

foreign import ccall "qtc_QTextBrowser_paintEngine_h" qtc_QTextBrowser_paintEngine_h :: Ptr (TQTextBrowser a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTextBrowserSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_paintEngine_h cobj_x0

instance QpaletteChange (QTextBrowser ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_paletteChange" qtc_QTextBrowser_paletteChange :: Ptr (TQTextBrowser a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTextBrowserSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTextBrowser ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_repaint cobj_x0

foreign import ccall "qtc_QTextBrowser_repaint" qtc_QTextBrowser_repaint :: Ptr (TQTextBrowser a) -> IO ()

instance Qrepaint (QTextBrowserSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_repaint cobj_x0

instance Qrepaint (QTextBrowser ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextBrowser_repaint2" qtc_QTextBrowser_repaint2 :: Ptr (TQTextBrowser a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTextBrowserSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTextBrowser ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_repaint1" qtc_QTextBrowser_repaint1 :: Ptr (TQTextBrowser a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTextBrowserSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTextBrowser ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_resetInputContext cobj_x0

foreign import ccall "qtc_QTextBrowser_resetInputContext" qtc_QTextBrowser_resetInputContext :: Ptr (TQTextBrowser a) -> IO ()

instance QresetInputContext (QTextBrowserSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_resetInputContext cobj_x0

instance Qresize (QTextBrowser ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextBrowser_resize1" qtc_QTextBrowser_resize1 :: Ptr (TQTextBrowser a) -> CInt -> CInt -> IO ()

instance Qresize (QTextBrowserSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTextBrowser ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_resize" qtc_QTextBrowser_resize :: Ptr (TQTextBrowser a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTextBrowserSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_resize cobj_x0 cobj_x1

instance Qresize (QTextBrowser ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTextBrowser_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTextBrowser_resize_qth" qtc_QTextBrowser_resize_qth :: Ptr (TQTextBrowser a) -> CInt -> CInt -> IO ()

instance Qresize (QTextBrowserSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTextBrowser_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTextBrowser ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextBrowser_setGeometry1" qtc_QTextBrowser_setGeometry1 :: Ptr (TQTextBrowser a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTextBrowserSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTextBrowser ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_setGeometry" qtc_QTextBrowser_setGeometry :: Ptr (TQTextBrowser a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTextBrowserSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTextBrowser ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTextBrowser_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTextBrowser_setGeometry_qth" qtc_QTextBrowser_setGeometry_qth :: Ptr (TQTextBrowser a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTextBrowserSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTextBrowser_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTextBrowser ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_setMouseTracking" qtc_QTextBrowser_setMouseTracking :: Ptr (TQTextBrowser a) -> CBool -> IO ()

instance QsetMouseTracking (QTextBrowserSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTextBrowser ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_setVisible_h" qtc_QTextBrowser_setVisible_h :: Ptr (TQTextBrowser a) -> CBool -> IO ()

instance QsetVisible (QTextBrowserSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QTextBrowser ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_tabletEvent_h" qtc_QTextBrowser_tabletEvent_h :: Ptr (TQTextBrowser a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTextBrowserSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTextBrowser ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTextBrowser_updateMicroFocus" qtc_QTextBrowser_updateMicroFocus :: Ptr (TQTextBrowser a) -> IO ()

instance QupdateMicroFocus (QTextBrowserSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTextBrowser ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBrowser_windowActivationChange" qtc_QTextBrowser_windowActivationChange :: Ptr (TQTextBrowser a) -> CBool -> IO ()

instance QwindowActivationChange (QTextBrowserSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTextBrowser ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_childEvent" qtc_QTextBrowser_childEvent :: Ptr (TQTextBrowser a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextBrowserSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextBrowser ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBrowser_connectNotify" qtc_QTextBrowser_connectNotify :: Ptr (TQTextBrowser a) -> CWString -> IO ()

instance QconnectNotify (QTextBrowserSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextBrowser ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBrowser_customEvent" qtc_QTextBrowser_customEvent :: Ptr (TQTextBrowser a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextBrowserSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBrowser_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextBrowser ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBrowser_disconnectNotify" qtc_QTextBrowser_disconnectNotify :: Ptr (TQTextBrowser a) -> CWString -> IO ()

instance QdisconnectNotify (QTextBrowserSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTextBrowser ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBrowser_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextBrowser_eventFilter_h" qtc_QTextBrowser_eventFilter_h :: Ptr (TQTextBrowser a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextBrowserSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextBrowser_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextBrowser ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextBrowser_receivers" qtc_QTextBrowser_receivers :: Ptr (TQTextBrowser a) -> CWString -> IO CInt

instance Qreceivers (QTextBrowserSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextBrowser_receivers cobj_x0 cstr_x1

instance Qsender (QTextBrowser ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sender cobj_x0

foreign import ccall "qtc_QTextBrowser_sender" qtc_QTextBrowser_sender :: Ptr (TQTextBrowser a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextBrowserSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBrowser_sender cobj_x0

