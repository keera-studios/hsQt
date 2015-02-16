{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFocusFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFocusFrame (
  QqFocusFrame(..)
  ,qFocusFrame_delete
  ,qFocusFrame_deleteLater
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

instance QuserMethod (QFocusFrame ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFocusFrame_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFocusFrame_userMethod" qtc_QFocusFrame_userMethod :: Ptr (TQFocusFrame a) -> CInt -> IO ()

instance QuserMethod (QFocusFrameSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFocusFrame_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFocusFrame ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFocusFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFocusFrame_userMethodVariant" qtc_QFocusFrame_userMethodVariant :: Ptr (TQFocusFrame a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFocusFrameSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFocusFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFocusFrame x1 where
  qFocusFrame :: x1 -> IO (QFocusFrame ())

instance QqFocusFrame (()) where
 qFocusFrame ()
  = withQFocusFrameResult $
    qtc_QFocusFrame

foreign import ccall "qtc_QFocusFrame" qtc_QFocusFrame :: IO (Ptr (TQFocusFrame ()))

instance QqFocusFrame ((QWidget t1)) where
 qFocusFrame (x1)
  = withQFocusFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame1 cobj_x1

foreign import ccall "qtc_QFocusFrame1" qtc_QFocusFrame1 :: Ptr (TQWidget t1) -> IO (Ptr (TQFocusFrame ()))

instance Qevent (QFocusFrame ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_event_h" qtc_QFocusFrame_event_h :: Ptr (TQFocusFrame a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFocusFrameSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_event_h cobj_x0 cobj_x1

instance QeventFilter (QFocusFrame ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFocusFrame_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFocusFrame_eventFilter" qtc_QFocusFrame_eventFilter :: Ptr (TQFocusFrame a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFocusFrameSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFocusFrame_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QinitStyleOption (QFocusFrame ()) ((QStyleOption t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_initStyleOption" qtc_QFocusFrame_initStyleOption :: Ptr (TQFocusFrame a) -> Ptr (TQStyleOption t1) -> IO ()

instance QinitStyleOption (QFocusFrameSc a) ((QStyleOption t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_initStyleOption cobj_x0 cobj_x1

instance QpaintEvent (QFocusFrame ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_paintEvent_h" qtc_QFocusFrame_paintEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QFocusFrameSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_paintEvent_h cobj_x0 cobj_x1

instance QsetWidget (QFocusFrame a) ((QWidget t1)) where
 setWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_setWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_setWidget" qtc_QFocusFrame_setWidget :: Ptr (TQFocusFrame a) -> Ptr (TQWidget t1) -> IO ()

instance Qwidget (QFocusFrame a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_widget cobj_x0

foreign import ccall "qtc_QFocusFrame_widget" qtc_QFocusFrame_widget :: Ptr (TQFocusFrame a) -> IO (Ptr (TQWidget ()))

qFocusFrame_delete :: QFocusFrame a -> IO ()
qFocusFrame_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_delete cobj_x0

foreign import ccall "qtc_QFocusFrame_delete" qtc_QFocusFrame_delete :: Ptr (TQFocusFrame a) -> IO ()

qFocusFrame_deleteLater :: QFocusFrame a -> IO ()
qFocusFrame_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_deleteLater cobj_x0

foreign import ccall "qtc_QFocusFrame_deleteLater" qtc_QFocusFrame_deleteLater :: Ptr (TQFocusFrame a) -> IO ()

instance QactionEvent (QFocusFrame ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_actionEvent_h" qtc_QFocusFrame_actionEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QFocusFrameSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QFocusFrame ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_addAction" qtc_QFocusFrame_addAction :: Ptr (TQFocusFrame a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QFocusFrameSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_addAction cobj_x0 cobj_x1

instance QchangeEvent (QFocusFrame ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_changeEvent_h" qtc_QFocusFrame_changeEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QFocusFrameSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QFocusFrame ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_closeEvent_h" qtc_QFocusFrame_closeEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QFocusFrameSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QFocusFrame ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_contextMenuEvent_h" qtc_QFocusFrame_contextMenuEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QFocusFrameSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QFocusFrame ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_create cobj_x0

foreign import ccall "qtc_QFocusFrame_create" qtc_QFocusFrame_create :: Ptr (TQFocusFrame a) -> IO ()

instance Qcreate (QFocusFrameSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_create cobj_x0

instance Qcreate (QFocusFrame ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_create1" qtc_QFocusFrame_create1 :: Ptr (TQFocusFrame a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QFocusFrameSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create1 cobj_x0 cobj_x1

instance Qcreate (QFocusFrame ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QFocusFrame_create2" qtc_QFocusFrame_create2 :: Ptr (TQFocusFrame a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QFocusFrameSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QFocusFrame ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QFocusFrame_create3" qtc_QFocusFrame_create3 :: Ptr (TQFocusFrame a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QFocusFrameSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QFocusFrame ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy cobj_x0

foreign import ccall "qtc_QFocusFrame_destroy" qtc_QFocusFrame_destroy :: Ptr (TQFocusFrame a) -> IO ()

instance Qdestroy (QFocusFrameSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy cobj_x0

instance Qdestroy (QFocusFrame ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_destroy1" qtc_QFocusFrame_destroy1 :: Ptr (TQFocusFrame a) -> CBool -> IO ()

instance Qdestroy (QFocusFrameSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QFocusFrame ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QFocusFrame_destroy2" qtc_QFocusFrame_destroy2 :: Ptr (TQFocusFrame a) -> CBool -> CBool -> IO ()

instance Qdestroy (QFocusFrameSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QFocusFrame ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_devType_h cobj_x0

foreign import ccall "qtc_QFocusFrame_devType_h" qtc_QFocusFrame_devType_h :: Ptr (TQFocusFrame a) -> IO CInt

instance QdevType (QFocusFrameSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_devType_h cobj_x0

instance QdragEnterEvent (QFocusFrame ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_dragEnterEvent_h" qtc_QFocusFrame_dragEnterEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QFocusFrameSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QFocusFrame ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_dragLeaveEvent_h" qtc_QFocusFrame_dragLeaveEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QFocusFrameSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QFocusFrame ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_dragMoveEvent_h" qtc_QFocusFrame_dragMoveEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QFocusFrameSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QFocusFrame ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_dropEvent_h" qtc_QFocusFrame_dropEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QFocusFrameSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QFocusFrame ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_enabledChange" qtc_QFocusFrame_enabledChange :: Ptr (TQFocusFrame a) -> CBool -> IO ()

instance QenabledChange (QFocusFrameSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QFocusFrame ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_enterEvent_h" qtc_QFocusFrame_enterEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QFocusFrameSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QFocusFrame ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_focusInEvent_h" qtc_QFocusFrame_focusInEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QFocusFrameSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QFocusFrame ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusNextChild cobj_x0

foreign import ccall "qtc_QFocusFrame_focusNextChild" qtc_QFocusFrame_focusNextChild :: Ptr (TQFocusFrame a) -> IO CBool

instance QfocusNextChild (QFocusFrameSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusNextChild cobj_x0

instance QfocusNextPrevChild (QFocusFrame ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_focusNextPrevChild" qtc_QFocusFrame_focusNextPrevChild :: Ptr (TQFocusFrame a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QFocusFrameSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QFocusFrame ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_focusOutEvent_h" qtc_QFocusFrame_focusOutEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QFocusFrameSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QFocusFrame ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusPreviousChild cobj_x0

foreign import ccall "qtc_QFocusFrame_focusPreviousChild" qtc_QFocusFrame_focusPreviousChild :: Ptr (TQFocusFrame a) -> IO CBool

instance QfocusPreviousChild (QFocusFrameSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_focusPreviousChild cobj_x0

instance QfontChange (QFocusFrame ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_fontChange" qtc_QFocusFrame_fontChange :: Ptr (TQFocusFrame a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QFocusFrameSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QFocusFrame ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFocusFrame_heightForWidth_h" qtc_QFocusFrame_heightForWidth_h :: Ptr (TQFocusFrame a) -> CInt -> IO CInt

instance QheightForWidth (QFocusFrameSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QFocusFrame ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_hideEvent_h" qtc_QFocusFrame_hideEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QFocusFrameSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QFocusFrame ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_inputMethodEvent" qtc_QFocusFrame_inputMethodEvent :: Ptr (TQFocusFrame a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QFocusFrameSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QFocusFrame ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFocusFrame_inputMethodQuery_h" qtc_QFocusFrame_inputMethodQuery_h :: Ptr (TQFocusFrame a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QFocusFrameSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QFocusFrame ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_keyPressEvent_h" qtc_QFocusFrame_keyPressEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QFocusFrameSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QFocusFrame ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_keyReleaseEvent_h" qtc_QFocusFrame_keyReleaseEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QFocusFrameSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QFocusFrame ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_languageChange cobj_x0

foreign import ccall "qtc_QFocusFrame_languageChange" qtc_QFocusFrame_languageChange :: Ptr (TQFocusFrame a) -> IO ()

instance QlanguageChange (QFocusFrameSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_languageChange cobj_x0

instance QleaveEvent (QFocusFrame ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_leaveEvent_h" qtc_QFocusFrame_leaveEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QFocusFrameSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QFocusFrame ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFocusFrame_metric" qtc_QFocusFrame_metric :: Ptr (TQFocusFrame a) -> CLong -> IO CInt

instance Qmetric (QFocusFrameSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QFocusFrame ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QFocusFrame_minimumSizeHint_h" qtc_QFocusFrame_minimumSizeHint_h :: Ptr (TQFocusFrame a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QFocusFrameSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QFocusFrame ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFocusFrame_minimumSizeHint_qth_h" qtc_QFocusFrame_minimumSizeHint_qth_h :: Ptr (TQFocusFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QFocusFrameSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QFocusFrame ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_mouseDoubleClickEvent_h" qtc_QFocusFrame_mouseDoubleClickEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QFocusFrameSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QFocusFrame ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_mouseMoveEvent_h" qtc_QFocusFrame_mouseMoveEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QFocusFrameSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QFocusFrame ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_mousePressEvent_h" qtc_QFocusFrame_mousePressEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QFocusFrameSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QFocusFrame ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_mouseReleaseEvent_h" qtc_QFocusFrame_mouseReleaseEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QFocusFrameSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QFocusFrame ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFocusFrame_move1" qtc_QFocusFrame_move1 :: Ptr (TQFocusFrame a) -> CInt -> CInt -> IO ()

instance Qmove (QFocusFrameSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QFocusFrame ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFocusFrame_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QFocusFrame_move_qth" qtc_QFocusFrame_move_qth :: Ptr (TQFocusFrame a) -> CInt -> CInt -> IO ()

instance Qmove (QFocusFrameSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFocusFrame_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QFocusFrame ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_move cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_move" qtc_QFocusFrame_move :: Ptr (TQFocusFrame a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QFocusFrameSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_move cobj_x0 cobj_x1

instance QmoveEvent (QFocusFrame ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_moveEvent_h" qtc_QFocusFrame_moveEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QFocusFrameSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QFocusFrame ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_paintEngine_h cobj_x0

foreign import ccall "qtc_QFocusFrame_paintEngine_h" qtc_QFocusFrame_paintEngine_h :: Ptr (TQFocusFrame a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QFocusFrameSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_paintEngine_h cobj_x0

instance QpaletteChange (QFocusFrame ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_paletteChange" qtc_QFocusFrame_paletteChange :: Ptr (TQFocusFrame a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QFocusFrameSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QFocusFrame ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_repaint cobj_x0

foreign import ccall "qtc_QFocusFrame_repaint" qtc_QFocusFrame_repaint :: Ptr (TQFocusFrame a) -> IO ()

instance Qrepaint (QFocusFrameSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_repaint cobj_x0

instance Qrepaint (QFocusFrame ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFocusFrame_repaint2" qtc_QFocusFrame_repaint2 :: Ptr (TQFocusFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QFocusFrameSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QFocusFrame ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_repaint1" qtc_QFocusFrame_repaint1 :: Ptr (TQFocusFrame a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QFocusFrameSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QFocusFrame ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_resetInputContext cobj_x0

foreign import ccall "qtc_QFocusFrame_resetInputContext" qtc_QFocusFrame_resetInputContext :: Ptr (TQFocusFrame a) -> IO ()

instance QresetInputContext (QFocusFrameSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_resetInputContext cobj_x0

instance Qresize (QFocusFrame ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFocusFrame_resize1" qtc_QFocusFrame_resize1 :: Ptr (TQFocusFrame a) -> CInt -> CInt -> IO ()

instance Qresize (QFocusFrameSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QFocusFrame ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_resize" qtc_QFocusFrame_resize :: Ptr (TQFocusFrame a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QFocusFrameSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_resize cobj_x0 cobj_x1

instance Qresize (QFocusFrame ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFocusFrame_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QFocusFrame_resize_qth" qtc_QFocusFrame_resize_qth :: Ptr (TQFocusFrame a) -> CInt -> CInt -> IO ()

instance Qresize (QFocusFrameSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFocusFrame_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QFocusFrame ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_resizeEvent_h" qtc_QFocusFrame_resizeEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QFocusFrameSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QFocusFrame ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFocusFrame_setGeometry1" qtc_QFocusFrame_setGeometry1 :: Ptr (TQFocusFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFocusFrameSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QFocusFrame ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_setGeometry" qtc_QFocusFrame_setGeometry :: Ptr (TQFocusFrame a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QFocusFrameSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QFocusFrame ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFocusFrame_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFocusFrame_setGeometry_qth" qtc_QFocusFrame_setGeometry_qth :: Ptr (TQFocusFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFocusFrameSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFocusFrame_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QFocusFrame ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_setMouseTracking" qtc_QFocusFrame_setMouseTracking :: Ptr (TQFocusFrame a) -> CBool -> IO ()

instance QsetMouseTracking (QFocusFrameSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QFocusFrame ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_setVisible_h" qtc_QFocusFrame_setVisible_h :: Ptr (TQFocusFrame a) -> CBool -> IO ()

instance QsetVisible (QFocusFrameSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QFocusFrame ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_showEvent_h" qtc_QFocusFrame_showEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QFocusFrameSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QFocusFrame ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sizeHint_h cobj_x0

foreign import ccall "qtc_QFocusFrame_sizeHint_h" qtc_QFocusFrame_sizeHint_h :: Ptr (TQFocusFrame a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QFocusFrameSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sizeHint_h cobj_x0

instance QsizeHint (QFocusFrame ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFocusFrame_sizeHint_qth_h" qtc_QFocusFrame_sizeHint_qth_h :: Ptr (TQFocusFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QFocusFrameSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QFocusFrame ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_tabletEvent_h" qtc_QFocusFrame_tabletEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QFocusFrameSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QFocusFrame ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_updateMicroFocus cobj_x0

foreign import ccall "qtc_QFocusFrame_updateMicroFocus" qtc_QFocusFrame_updateMicroFocus :: Ptr (TQFocusFrame a) -> IO ()

instance QupdateMicroFocus (QFocusFrameSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_updateMicroFocus cobj_x0

instance QwheelEvent (QFocusFrame ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_wheelEvent_h" qtc_QFocusFrame_wheelEvent_h :: Ptr (TQFocusFrame a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QFocusFrameSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QFocusFrame ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFocusFrame_windowActivationChange" qtc_QFocusFrame_windowActivationChange :: Ptr (TQFocusFrame a) -> CBool -> IO ()

instance QwindowActivationChange (QFocusFrameSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QFocusFrame ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_childEvent" qtc_QFocusFrame_childEvent :: Ptr (TQFocusFrame a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFocusFrameSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFocusFrame ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFocusFrame_connectNotify" qtc_QFocusFrame_connectNotify :: Ptr (TQFocusFrame a) -> CWString -> IO ()

instance QconnectNotify (QFocusFrameSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFocusFrame ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_customEvent" qtc_QFocusFrame_customEvent :: Ptr (TQFocusFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFocusFrameSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFocusFrame ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFocusFrame_disconnectNotify" qtc_QFocusFrame_disconnectNotify :: Ptr (TQFocusFrame a) -> CWString -> IO ()

instance QdisconnectNotify (QFocusFrameSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QFocusFrame ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFocusFrame_receivers" qtc_QFocusFrame_receivers :: Ptr (TQFocusFrame a) -> CWString -> IO CInt

instance Qreceivers (QFocusFrameSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFocusFrame_receivers cobj_x0 cstr_x1

instance Qsender (QFocusFrame ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sender cobj_x0

foreign import ccall "qtc_QFocusFrame_sender" qtc_QFocusFrame_sender :: Ptr (TQFocusFrame a) -> IO (Ptr (TQObject ()))

instance Qsender (QFocusFrameSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFocusFrame_sender cobj_x0

instance QtimerEvent (QFocusFrame ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFocusFrame_timerEvent" qtc_QFocusFrame_timerEvent :: Ptr (TQFocusFrame a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFocusFrameSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFocusFrame_timerEvent cobj_x0 cobj_x1

