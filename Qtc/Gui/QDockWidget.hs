{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDockWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDockWidget (
  QqDockWidget(..)
  ,setFloating
  ,setTitleBarWidget
  ,titleBarWidget
  ,qDockWidget_delete
  ,qDockWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QDockWidget

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDockWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDockWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDockWidget_userMethod" qtc_QDockWidget_userMethod :: Ptr (TQDockWidget a) -> CInt -> IO ()

instance QuserMethod (QDockWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDockWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDockWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDockWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDockWidget_userMethodVariant" qtc_QDockWidget_userMethodVariant :: Ptr (TQDockWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDockWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDockWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDockWidget x1 where
  qDockWidget :: x1 -> IO (QDockWidget ())

instance QqDockWidget (()) where
 qDockWidget ()
  = withQDockWidgetResult $
    qtc_QDockWidget

foreign import ccall "qtc_QDockWidget" qtc_QDockWidget :: IO (Ptr (TQDockWidget ()))

instance QqDockWidget ((String)) where
 qDockWidget (x1)
  = withQDockWidgetResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget1 cstr_x1

foreign import ccall "qtc_QDockWidget1" qtc_QDockWidget1 :: CWString -> IO (Ptr (TQDockWidget ()))

instance QqDockWidget ((QWidget t1)) where
 qDockWidget (x1)
  = withQDockWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget2 cobj_x1

foreign import ccall "qtc_QDockWidget2" qtc_QDockWidget2 :: Ptr (TQWidget t1) -> IO (Ptr (TQDockWidget ()))

instance QqDockWidget ((QWidget t1, WindowFlags)) where
 qDockWidget (x1, x2)
  = withQDockWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget3 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QDockWidget3" qtc_QDockWidget3 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQDockWidget ()))

instance QqDockWidget ((String, QWidget t2)) where
 qDockWidget (x1, x2)
  = withQDockWidgetResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDockWidget4 cstr_x1 cobj_x2

foreign import ccall "qtc_QDockWidget4" qtc_QDockWidget4 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQDockWidget ()))

instance QqDockWidget ((String, QWidget t2, WindowFlags)) where
 qDockWidget (x1, x2, x3)
  = withQDockWidgetResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDockWidget5 cstr_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QDockWidget5" qtc_QDockWidget5 :: CWString -> Ptr (TQWidget t2) -> CLong -> IO (Ptr (TQDockWidget ()))

instance QallowedAreas (QDockWidget a) (()) (IO (DockWidgetAreas)) where
 allowedAreas x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_allowedAreas cobj_x0

foreign import ccall "qtc_QDockWidget_allowedAreas" qtc_QDockWidget_allowedAreas :: Ptr (TQDockWidget a) -> IO CLong

instance QchangeEvent (QDockWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_changeEvent_h" qtc_QDockWidget_changeEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDockWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QDockWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_closeEvent_h" qtc_QDockWidget_closeEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDockWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_closeEvent_h cobj_x0 cobj_x1

instance Qevent (QDockWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_event_h" qtc_QDockWidget_event_h :: Ptr (TQDockWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDockWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_event_h cobj_x0 cobj_x1

instance Qfeatures (QDockWidget a) (()) (IO (DockWidgetFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_features cobj_x0

foreign import ccall "qtc_QDockWidget_features" qtc_QDockWidget_features :: Ptr (TQDockWidget a) -> IO CLong

instance QinitStyleOption (QDockWidget ()) ((QStyleOptionDockWidget t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_initStyleOption" qtc_QDockWidget_initStyleOption :: Ptr (TQDockWidget a) -> Ptr (TQStyleOptionDockWidget t1) -> IO ()

instance QinitStyleOption (QDockWidgetSc a) ((QStyleOptionDockWidget t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_initStyleOption cobj_x0 cobj_x1

instance QisAreaAllowed (QDockWidget a) ((DockWidgetArea)) where
 isAreaAllowed x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_isAreaAllowed cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDockWidget_isAreaAllowed" qtc_QDockWidget_isAreaAllowed :: Ptr (TQDockWidget a) -> CLong -> IO CBool

instance QisFloating (QDockWidget a) (()) where
 isFloating x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_isFloating cobj_x0

foreign import ccall "qtc_QDockWidget_isFloating" qtc_QDockWidget_isFloating :: Ptr (TQDockWidget a) -> IO CBool

instance QpaintEvent (QDockWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_paintEvent_h" qtc_QDockWidget_paintEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDockWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_paintEvent_h cobj_x0 cobj_x1

instance QsetAllowedAreas (QDockWidget a) ((DockWidgetAreas)) where
 setAllowedAreas x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setAllowedAreas cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDockWidget_setAllowedAreas" qtc_QDockWidget_setAllowedAreas :: Ptr (TQDockWidget a) -> CLong -> IO ()

instance QsetFeatures (QDockWidget a) ((DockWidgetFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDockWidget_setFeatures" qtc_QDockWidget_setFeatures :: Ptr (TQDockWidget a) -> CLong -> IO ()

setFloating :: QDockWidget a -> ((Bool)) -> IO ()
setFloating x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setFloating cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_setFloating" qtc_QDockWidget_setFloating :: Ptr (TQDockWidget a) -> CBool -> IO ()

setTitleBarWidget :: QDockWidget a -> ((QWidget t1)) -> IO ()
setTitleBarWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_setTitleBarWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_setTitleBarWidget" qtc_QDockWidget_setTitleBarWidget :: Ptr (TQDockWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetWidget (QDockWidget a) ((QWidget t1)) where
 setWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_setWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_setWidget" qtc_QDockWidget_setWidget :: Ptr (TQDockWidget a) -> Ptr (TQWidget t1) -> IO ()

titleBarWidget :: QDockWidget a -> (()) -> IO (QWidget ())
titleBarWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_titleBarWidget cobj_x0

foreign import ccall "qtc_QDockWidget_titleBarWidget" qtc_QDockWidget_titleBarWidget :: Ptr (TQDockWidget a) -> IO (Ptr (TQWidget ()))

instance QtoggleViewAction (QDockWidget a) (()) where
 toggleViewAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_toggleViewAction cobj_x0

foreign import ccall "qtc_QDockWidget_toggleViewAction" qtc_QDockWidget_toggleViewAction :: Ptr (TQDockWidget a) -> IO (Ptr (TQAction ()))

instance Qwidget (QDockWidget a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_widget cobj_x0

foreign import ccall "qtc_QDockWidget_widget" qtc_QDockWidget_widget :: Ptr (TQDockWidget a) -> IO (Ptr (TQWidget ()))

qDockWidget_delete :: QDockWidget a -> IO ()
qDockWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_delete cobj_x0

foreign import ccall "qtc_QDockWidget_delete" qtc_QDockWidget_delete :: Ptr (TQDockWidget a) -> IO ()

qDockWidget_deleteLater :: QDockWidget a -> IO ()
qDockWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_deleteLater cobj_x0

foreign import ccall "qtc_QDockWidget_deleteLater" qtc_QDockWidget_deleteLater :: Ptr (TQDockWidget a) -> IO ()

instance QactionEvent (QDockWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_actionEvent_h" qtc_QDockWidget_actionEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDockWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDockWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_addAction" qtc_QDockWidget_addAction :: Ptr (TQDockWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDockWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_addAction cobj_x0 cobj_x1

instance QcontextMenuEvent (QDockWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_contextMenuEvent_h" qtc_QDockWidget_contextMenuEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDockWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QDockWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_create cobj_x0

foreign import ccall "qtc_QDockWidget_create" qtc_QDockWidget_create :: Ptr (TQDockWidget a) -> IO ()

instance Qcreate (QDockWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_create cobj_x0

instance Qcreate (QDockWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_create1" qtc_QDockWidget_create1 :: Ptr (TQDockWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDockWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QDockWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDockWidget_create2" qtc_QDockWidget_create2 :: Ptr (TQDockWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDockWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDockWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDockWidget_create3" qtc_QDockWidget_create3 :: Ptr (TQDockWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDockWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDockWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy cobj_x0

foreign import ccall "qtc_QDockWidget_destroy" qtc_QDockWidget_destroy :: Ptr (TQDockWidget a) -> IO ()

instance Qdestroy (QDockWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy cobj_x0

instance Qdestroy (QDockWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_destroy1" qtc_QDockWidget_destroy1 :: Ptr (TQDockWidget a) -> CBool -> IO ()

instance Qdestroy (QDockWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDockWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDockWidget_destroy2" qtc_QDockWidget_destroy2 :: Ptr (TQDockWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDockWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDockWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_devType_h cobj_x0

foreign import ccall "qtc_QDockWidget_devType_h" qtc_QDockWidget_devType_h :: Ptr (TQDockWidget a) -> IO CInt

instance QdevType (QDockWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_devType_h cobj_x0

instance QdragEnterEvent (QDockWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_dragEnterEvent_h" qtc_QDockWidget_dragEnterEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDockWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDockWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_dragLeaveEvent_h" qtc_QDockWidget_dragLeaveEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDockWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDockWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_dragMoveEvent_h" qtc_QDockWidget_dragMoveEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDockWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDockWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_dropEvent_h" qtc_QDockWidget_dropEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDockWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDockWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_enabledChange" qtc_QDockWidget_enabledChange :: Ptr (TQDockWidget a) -> CBool -> IO ()

instance QenabledChange (QDockWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDockWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_enterEvent_h" qtc_QDockWidget_enterEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDockWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QDockWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_focusInEvent_h" qtc_QDockWidget_focusInEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDockWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDockWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QDockWidget_focusNextChild" qtc_QDockWidget_focusNextChild :: Ptr (TQDockWidget a) -> IO CBool

instance QfocusNextChild (QDockWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDockWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_focusNextPrevChild" qtc_QDockWidget_focusNextPrevChild :: Ptr (TQDockWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDockWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QDockWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_focusOutEvent_h" qtc_QDockWidget_focusOutEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDockWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QDockWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDockWidget_focusPreviousChild" qtc_QDockWidget_focusPreviousChild :: Ptr (TQDockWidget a) -> IO CBool

instance QfocusPreviousChild (QDockWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_focusPreviousChild cobj_x0

instance QfontChange (QDockWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_fontChange" qtc_QDockWidget_fontChange :: Ptr (TQDockWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDockWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDockWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDockWidget_heightForWidth_h" qtc_QDockWidget_heightForWidth_h :: Ptr (TQDockWidget a) -> CInt -> IO CInt

instance QheightForWidth (QDockWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QDockWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_hideEvent_h" qtc_QDockWidget_hideEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDockWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QDockWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_inputMethodEvent" qtc_QDockWidget_inputMethodEvent :: Ptr (TQDockWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDockWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDockWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDockWidget_inputMethodQuery_h" qtc_QDockWidget_inputMethodQuery_h :: Ptr (TQDockWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDockWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QDockWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_keyPressEvent_h" qtc_QDockWidget_keyPressEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDockWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDockWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_keyReleaseEvent_h" qtc_QDockWidget_keyReleaseEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDockWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QDockWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_languageChange cobj_x0

foreign import ccall "qtc_QDockWidget_languageChange" qtc_QDockWidget_languageChange :: Ptr (TQDockWidget a) -> IO ()

instance QlanguageChange (QDockWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_languageChange cobj_x0

instance QleaveEvent (QDockWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_leaveEvent_h" qtc_QDockWidget_leaveEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDockWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDockWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDockWidget_metric" qtc_QDockWidget_metric :: Ptr (TQDockWidget a) -> CLong -> IO CInt

instance Qmetric (QDockWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QDockWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDockWidget_minimumSizeHint_h" qtc_QDockWidget_minimumSizeHint_h :: Ptr (TQDockWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDockWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDockWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDockWidget_minimumSizeHint_qth_h" qtc_QDockWidget_minimumSizeHint_qth_h :: Ptr (TQDockWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDockWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QDockWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_mouseDoubleClickEvent_h" qtc_QDockWidget_mouseDoubleClickEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDockWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QDockWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_mouseMoveEvent_h" qtc_QDockWidget_mouseMoveEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDockWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDockWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_mousePressEvent_h" qtc_QDockWidget_mousePressEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDockWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDockWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_mouseReleaseEvent_h" qtc_QDockWidget_mouseReleaseEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDockWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QDockWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDockWidget_move1" qtc_QDockWidget_move1 :: Ptr (TQDockWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QDockWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDockWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDockWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDockWidget_move_qth" qtc_QDockWidget_move_qth :: Ptr (TQDockWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QDockWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDockWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDockWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_move" qtc_QDockWidget_move :: Ptr (TQDockWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDockWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QDockWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_moveEvent_h" qtc_QDockWidget_moveEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDockWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDockWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QDockWidget_paintEngine_h" qtc_QDockWidget_paintEngine_h :: Ptr (TQDockWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDockWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_paintEngine_h cobj_x0

instance QpaletteChange (QDockWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_paletteChange" qtc_QDockWidget_paletteChange :: Ptr (TQDockWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDockWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDockWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_repaint cobj_x0

foreign import ccall "qtc_QDockWidget_repaint" qtc_QDockWidget_repaint :: Ptr (TQDockWidget a) -> IO ()

instance Qrepaint (QDockWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_repaint cobj_x0

instance Qrepaint (QDockWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDockWidget_repaint2" qtc_QDockWidget_repaint2 :: Ptr (TQDockWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDockWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDockWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_repaint1" qtc_QDockWidget_repaint1 :: Ptr (TQDockWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDockWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDockWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QDockWidget_resetInputContext" qtc_QDockWidget_resetInputContext :: Ptr (TQDockWidget a) -> IO ()

instance QresetInputContext (QDockWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_resetInputContext cobj_x0

instance Qresize (QDockWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDockWidget_resize1" qtc_QDockWidget_resize1 :: Ptr (TQDockWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QDockWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDockWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_resize" qtc_QDockWidget_resize :: Ptr (TQDockWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDockWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_resize cobj_x0 cobj_x1

instance Qresize (QDockWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDockWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDockWidget_resize_qth" qtc_QDockWidget_resize_qth :: Ptr (TQDockWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QDockWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDockWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QDockWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_resizeEvent_h" qtc_QDockWidget_resizeEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDockWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QDockWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDockWidget_setGeometry1" qtc_QDockWidget_setGeometry1 :: Ptr (TQDockWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDockWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDockWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_setGeometry" qtc_QDockWidget_setGeometry :: Ptr (TQDockWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDockWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDockWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDockWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDockWidget_setGeometry_qth" qtc_QDockWidget_setGeometry_qth :: Ptr (TQDockWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDockWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDockWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDockWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_setMouseTracking" qtc_QDockWidget_setMouseTracking :: Ptr (TQDockWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QDockWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDockWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_setVisible_h" qtc_QDockWidget_setVisible_h :: Ptr (TQDockWidget a) -> CBool -> IO ()

instance QsetVisible (QDockWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QDockWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_showEvent_h" qtc_QDockWidget_showEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDockWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QDockWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QDockWidget_sizeHint_h" qtc_QDockWidget_sizeHint_h :: Ptr (TQDockWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDockWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sizeHint_h cobj_x0

instance QsizeHint (QDockWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDockWidget_sizeHint_qth_h" qtc_QDockWidget_sizeHint_qth_h :: Ptr (TQDockWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDockWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QDockWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_tabletEvent_h" qtc_QDockWidget_tabletEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDockWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDockWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDockWidget_updateMicroFocus" qtc_QDockWidget_updateMicroFocus :: Ptr (TQDockWidget a) -> IO ()

instance QupdateMicroFocus (QDockWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QDockWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_wheelEvent_h" qtc_QDockWidget_wheelEvent_h :: Ptr (TQDockWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDockWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QDockWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDockWidget_windowActivationChange" qtc_QDockWidget_windowActivationChange :: Ptr (TQDockWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QDockWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDockWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_childEvent" qtc_QDockWidget_childEvent :: Ptr (TQDockWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDockWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDockWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDockWidget_connectNotify" qtc_QDockWidget_connectNotify :: Ptr (TQDockWidget a) -> CWString -> IO ()

instance QconnectNotify (QDockWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDockWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_customEvent" qtc_QDockWidget_customEvent :: Ptr (TQDockWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDockWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDockWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDockWidget_disconnectNotify" qtc_QDockWidget_disconnectNotify :: Ptr (TQDockWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QDockWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDockWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDockWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDockWidget_eventFilter_h" qtc_QDockWidget_eventFilter_h :: Ptr (TQDockWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDockWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDockWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDockWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDockWidget_receivers" qtc_QDockWidget_receivers :: Ptr (TQDockWidget a) -> CWString -> IO CInt

instance Qreceivers (QDockWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDockWidget_receivers cobj_x0 cstr_x1

instance Qsender (QDockWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sender cobj_x0

foreign import ccall "qtc_QDockWidget_sender" qtc_QDockWidget_sender :: Ptr (TQDockWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QDockWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDockWidget_sender cobj_x0

instance QtimerEvent (QDockWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDockWidget_timerEvent" qtc_QDockWidget_timerEvent :: Ptr (TQDockWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDockWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDockWidget_timerEvent cobj_x0 cobj_x1

