{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDesktopWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDesktopWidget (
  qDesktopWidget
  ,isVirtualDesktop
  ,numScreens
  ,primaryScreen
  ,Qresized(..)
  ,Qscreen(..)
  ,QscreenNumber(..), qscreenNumber
  ,QworkAreaResized(..)
  ,qDesktopWidget_delete
  ,qDesktopWidget_deleteLater
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

instance QuserMethod (QDesktopWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDesktopWidget_userMethod" qtc_QDesktopWidget_userMethod :: Ptr (TQDesktopWidget a) -> CInt -> IO ()

instance QuserMethod (QDesktopWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDesktopWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDesktopWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDesktopWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDesktopWidget_userMethodVariant" qtc_QDesktopWidget_userMethodVariant :: Ptr (TQDesktopWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDesktopWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDesktopWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qDesktopWidget :: () -> IO (QDesktopWidget ())
qDesktopWidget ()
  = withQDesktopWidgetResult $
    qtc_QDesktopWidget

foreign import ccall "qtc_QDesktopWidget" qtc_QDesktopWidget :: IO (Ptr (TQDesktopWidget ()))

isVirtualDesktop :: QDesktopWidget a -> (()) -> IO (Bool)
isVirtualDesktop x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_isVirtualDesktop cobj_x0

foreign import ccall "qtc_QDesktopWidget_isVirtualDesktop" qtc_QDesktopWidget_isVirtualDesktop :: Ptr (TQDesktopWidget a) -> IO CBool

numScreens :: QDesktopWidget a -> (()) -> IO (Int)
numScreens x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_numScreens cobj_x0

foreign import ccall "qtc_QDesktopWidget_numScreens" qtc_QDesktopWidget_numScreens :: Ptr (TQDesktopWidget a) -> IO CInt

primaryScreen :: QDesktopWidget a -> (()) -> IO (Int)
primaryScreen x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_primaryScreen cobj_x0

foreign import ccall "qtc_QDesktopWidget_primaryScreen" qtc_QDesktopWidget_primaryScreen :: Ptr (TQDesktopWidget a) -> IO CInt

instance QresizeEvent (QDesktopWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_resizeEvent_h" qtc_QDesktopWidget_resizeEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDesktopWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resizeEvent_h cobj_x0 cobj_x1

class Qresized x0 x1 where
 resized :: x0 -> x1 -> IO ()

instance Qresized (QDesktopWidget ()) ((Int)) where
 resized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resized_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_resized_h" qtc_QDesktopWidget_resized_h :: Ptr (TQDesktopWidget a) -> CInt -> IO ()

instance Qresized (QDesktopWidgetSc a) ((Int)) where
 resized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resized_h cobj_x0 (toCInt x1)

class Qscreen x1 where
 screen :: QDesktopWidget a -> x1 -> IO (QWidget ())

instance Qscreen (()) where
 screen x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_screen cobj_x0

foreign import ccall "qtc_QDesktopWidget_screen" qtc_QDesktopWidget_screen :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQWidget ()))

instance Qscreen ((Int)) where
 screen x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_screen1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_screen1" qtc_QDesktopWidget_screen1 :: Ptr (TQDesktopWidget a) -> CInt -> IO (Ptr (TQWidget ()))

class QscreenNumber x1 where
 screenNumber :: QDesktopWidget a -> x1 -> IO (Int)

instance QscreenNumber (()) where
 screenNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_screenNumber cobj_x0

foreign import ccall "qtc_QDesktopWidget_screenNumber" qtc_QDesktopWidget_screenNumber :: Ptr (TQDesktopWidget a) -> IO CInt

instance QscreenNumber ((Point)) where
 screenNumber x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDesktopWidget_screenNumber2_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDesktopWidget_screenNumber2_qth" qtc_QDesktopWidget_screenNumber2_qth :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO CInt

qscreenNumber :: QDesktopWidget a -> ((QPoint t1)) -> IO (Int)
qscreenNumber x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_screenNumber2 cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_screenNumber2" qtc_QDesktopWidget_screenNumber2 :: Ptr (TQDesktopWidget a) -> Ptr (TQPoint t1) -> IO CInt

instance QscreenNumber ((QWidget t1)) where
 screenNumber x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_screenNumber1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_screenNumber1" qtc_QDesktopWidget_screenNumber1 :: Ptr (TQDesktopWidget a) -> Ptr (TQWidget t1) -> IO CInt

class QworkAreaResized x0 x1 where
 workAreaResized :: x0 -> x1 -> IO ()

instance QworkAreaResized (QDesktopWidget ()) ((Int)) where
 workAreaResized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_workAreaResized_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_workAreaResized_h" qtc_QDesktopWidget_workAreaResized_h :: Ptr (TQDesktopWidget a) -> CInt -> IO ()

instance QworkAreaResized (QDesktopWidgetSc a) ((Int)) where
 workAreaResized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_workAreaResized_h cobj_x0 (toCInt x1)

qDesktopWidget_delete :: QDesktopWidget a -> IO ()
qDesktopWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_delete cobj_x0

foreign import ccall "qtc_QDesktopWidget_delete" qtc_QDesktopWidget_delete :: Ptr (TQDesktopWidget a) -> IO ()

qDesktopWidget_deleteLater :: QDesktopWidget a -> IO ()
qDesktopWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_deleteLater cobj_x0

foreign import ccall "qtc_QDesktopWidget_deleteLater" qtc_QDesktopWidget_deleteLater :: Ptr (TQDesktopWidget a) -> IO ()

instance QactionEvent (QDesktopWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_actionEvent_h" qtc_QDesktopWidget_actionEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDesktopWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDesktopWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_addAction" qtc_QDesktopWidget_addAction :: Ptr (TQDesktopWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDesktopWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_addAction cobj_x0 cobj_x1

instance QchangeEvent (QDesktopWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_changeEvent_h" qtc_QDesktopWidget_changeEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDesktopWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QDesktopWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_closeEvent_h" qtc_QDesktopWidget_closeEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDesktopWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDesktopWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_contextMenuEvent_h" qtc_QDesktopWidget_contextMenuEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDesktopWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QDesktopWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_create cobj_x0

foreign import ccall "qtc_QDesktopWidget_create" qtc_QDesktopWidget_create :: Ptr (TQDesktopWidget a) -> IO ()

instance Qcreate (QDesktopWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_create cobj_x0

instance Qcreate (QDesktopWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_create1" qtc_QDesktopWidget_create1 :: Ptr (TQDesktopWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDesktopWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QDesktopWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDesktopWidget_create2" qtc_QDesktopWidget_create2 :: Ptr (TQDesktopWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDesktopWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDesktopWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDesktopWidget_create3" qtc_QDesktopWidget_create3 :: Ptr (TQDesktopWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDesktopWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDesktopWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy cobj_x0

foreign import ccall "qtc_QDesktopWidget_destroy" qtc_QDesktopWidget_destroy :: Ptr (TQDesktopWidget a) -> IO ()

instance Qdestroy (QDesktopWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy cobj_x0

instance Qdestroy (QDesktopWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_destroy1" qtc_QDesktopWidget_destroy1 :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance Qdestroy (QDesktopWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDesktopWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDesktopWidget_destroy2" qtc_QDesktopWidget_destroy2 :: Ptr (TQDesktopWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDesktopWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDesktopWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_devType_h cobj_x0

foreign import ccall "qtc_QDesktopWidget_devType_h" qtc_QDesktopWidget_devType_h :: Ptr (TQDesktopWidget a) -> IO CInt

instance QdevType (QDesktopWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_devType_h cobj_x0

instance QdragEnterEvent (QDesktopWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragEnterEvent_h" qtc_QDesktopWidget_dragEnterEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDesktopWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDesktopWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragLeaveEvent_h" qtc_QDesktopWidget_dragLeaveEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDesktopWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDesktopWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dragMoveEvent_h" qtc_QDesktopWidget_dragMoveEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDesktopWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDesktopWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_dropEvent_h" qtc_QDesktopWidget_dropEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDesktopWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDesktopWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_enabledChange" qtc_QDesktopWidget_enabledChange :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance QenabledChange (QDesktopWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDesktopWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_enterEvent_h" qtc_QDesktopWidget_enterEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDesktopWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_enterEvent_h cobj_x0 cobj_x1

instance Qevent (QDesktopWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_event_h" qtc_QDesktopWidget_event_h :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDesktopWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QDesktopWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_focusInEvent_h" qtc_QDesktopWidget_focusInEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDesktopWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDesktopWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QDesktopWidget_focusNextChild" qtc_QDesktopWidget_focusNextChild :: Ptr (TQDesktopWidget a) -> IO CBool

instance QfocusNextChild (QDesktopWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDesktopWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_focusNextPrevChild" qtc_QDesktopWidget_focusNextPrevChild :: Ptr (TQDesktopWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDesktopWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QDesktopWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_focusOutEvent_h" qtc_QDesktopWidget_focusOutEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDesktopWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QDesktopWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDesktopWidget_focusPreviousChild" qtc_QDesktopWidget_focusPreviousChild :: Ptr (TQDesktopWidget a) -> IO CBool

instance QfocusPreviousChild (QDesktopWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_focusPreviousChild cobj_x0

instance QfontChange (QDesktopWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_fontChange" qtc_QDesktopWidget_fontChange :: Ptr (TQDesktopWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDesktopWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDesktopWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDesktopWidget_heightForWidth_h" qtc_QDesktopWidget_heightForWidth_h :: Ptr (TQDesktopWidget a) -> CInt -> IO CInt

instance QheightForWidth (QDesktopWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QDesktopWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_hideEvent_h" qtc_QDesktopWidget_hideEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDesktopWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QDesktopWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_inputMethodEvent" qtc_QDesktopWidget_inputMethodEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDesktopWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDesktopWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDesktopWidget_inputMethodQuery_h" qtc_QDesktopWidget_inputMethodQuery_h :: Ptr (TQDesktopWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDesktopWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QDesktopWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_keyPressEvent_h" qtc_QDesktopWidget_keyPressEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDesktopWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDesktopWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_keyReleaseEvent_h" qtc_QDesktopWidget_keyReleaseEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDesktopWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QDesktopWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_languageChange cobj_x0

foreign import ccall "qtc_QDesktopWidget_languageChange" qtc_QDesktopWidget_languageChange :: Ptr (TQDesktopWidget a) -> IO ()

instance QlanguageChange (QDesktopWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_languageChange cobj_x0

instance QleaveEvent (QDesktopWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_leaveEvent_h" qtc_QDesktopWidget_leaveEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDesktopWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDesktopWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDesktopWidget_metric" qtc_QDesktopWidget_metric :: Ptr (TQDesktopWidget a) -> CLong -> IO CInt

instance Qmetric (QDesktopWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QDesktopWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDesktopWidget_minimumSizeHint_h" qtc_QDesktopWidget_minimumSizeHint_h :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDesktopWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDesktopWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDesktopWidget_minimumSizeHint_qth_h" qtc_QDesktopWidget_minimumSizeHint_qth_h :: Ptr (TQDesktopWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDesktopWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseDoubleClickEvent_h" qtc_QDesktopWidget_mouseDoubleClickEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseMoveEvent_h" qtc_QDesktopWidget_mouseMoveEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDesktopWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mousePressEvent_h" qtc_QDesktopWidget_mousePressEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDesktopWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_mouseReleaseEvent_h" qtc_QDesktopWidget_mouseReleaseEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDesktopWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QDesktopWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDesktopWidget_move1" qtc_QDesktopWidget_move1 :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QDesktopWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDesktopWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDesktopWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDesktopWidget_move_qth" qtc_QDesktopWidget_move_qth :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QDesktopWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDesktopWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDesktopWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_move" qtc_QDesktopWidget_move :: Ptr (TQDesktopWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDesktopWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QDesktopWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_moveEvent_h" qtc_QDesktopWidget_moveEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDesktopWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDesktopWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QDesktopWidget_paintEngine_h" qtc_QDesktopWidget_paintEngine_h :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDesktopWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_paintEngine_h cobj_x0

instance QpaintEvent (QDesktopWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_paintEvent_h" qtc_QDesktopWidget_paintEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDesktopWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QDesktopWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_paletteChange" qtc_QDesktopWidget_paletteChange :: Ptr (TQDesktopWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDesktopWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDesktopWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_repaint cobj_x0

foreign import ccall "qtc_QDesktopWidget_repaint" qtc_QDesktopWidget_repaint :: Ptr (TQDesktopWidget a) -> IO ()

instance Qrepaint (QDesktopWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_repaint cobj_x0

instance Qrepaint (QDesktopWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDesktopWidget_repaint2" qtc_QDesktopWidget_repaint2 :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDesktopWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDesktopWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_repaint1" qtc_QDesktopWidget_repaint1 :: Ptr (TQDesktopWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDesktopWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDesktopWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QDesktopWidget_resetInputContext" qtc_QDesktopWidget_resetInputContext :: Ptr (TQDesktopWidget a) -> IO ()

instance QresetInputContext (QDesktopWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resetInputContext cobj_x0

instance Qresize (QDesktopWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDesktopWidget_resize1" qtc_QDesktopWidget_resize1 :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QDesktopWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDesktopWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_resize" qtc_QDesktopWidget_resize :: Ptr (TQDesktopWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDesktopWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_resize cobj_x0 cobj_x1

instance Qresize (QDesktopWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDesktopWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDesktopWidget_resize_qth" qtc_QDesktopWidget_resize_qth :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QDesktopWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDesktopWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDesktopWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDesktopWidget_setGeometry1" qtc_QDesktopWidget_setGeometry1 :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDesktopWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDesktopWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_setGeometry" qtc_QDesktopWidget_setGeometry :: Ptr (TQDesktopWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDesktopWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDesktopWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDesktopWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDesktopWidget_setGeometry_qth" qtc_QDesktopWidget_setGeometry_qth :: Ptr (TQDesktopWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDesktopWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDesktopWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDesktopWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_setMouseTracking" qtc_QDesktopWidget_setMouseTracking :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QDesktopWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDesktopWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_setVisible_h" qtc_QDesktopWidget_setVisible_h :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance QsetVisible (QDesktopWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QDesktopWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_showEvent_h" qtc_QDesktopWidget_showEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDesktopWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QDesktopWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QDesktopWidget_sizeHint_h" qtc_QDesktopWidget_sizeHint_h :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDesktopWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_h cobj_x0

instance QsizeHint (QDesktopWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDesktopWidget_sizeHint_qth_h" qtc_QDesktopWidget_sizeHint_qth_h :: Ptr (TQDesktopWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDesktopWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QDesktopWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_tabletEvent_h" qtc_QDesktopWidget_tabletEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDesktopWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDesktopWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDesktopWidget_updateMicroFocus" qtc_QDesktopWidget_updateMicroFocus :: Ptr (TQDesktopWidget a) -> IO ()

instance QupdateMicroFocus (QDesktopWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QDesktopWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_wheelEvent_h" qtc_QDesktopWidget_wheelEvent_h :: Ptr (TQDesktopWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDesktopWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QDesktopWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDesktopWidget_windowActivationChange" qtc_QDesktopWidget_windowActivationChange :: Ptr (TQDesktopWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QDesktopWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDesktopWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_childEvent" qtc_QDesktopWidget_childEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDesktopWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDesktopWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDesktopWidget_connectNotify" qtc_QDesktopWidget_connectNotify :: Ptr (TQDesktopWidget a) -> CWString -> IO ()

instance QconnectNotify (QDesktopWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDesktopWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_customEvent" qtc_QDesktopWidget_customEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDesktopWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDesktopWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDesktopWidget_disconnectNotify" qtc_QDesktopWidget_disconnectNotify :: Ptr (TQDesktopWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QDesktopWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDesktopWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDesktopWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDesktopWidget_eventFilter_h" qtc_QDesktopWidget_eventFilter_h :: Ptr (TQDesktopWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDesktopWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDesktopWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDesktopWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDesktopWidget_receivers" qtc_QDesktopWidget_receivers :: Ptr (TQDesktopWidget a) -> CWString -> IO CInt

instance Qreceivers (QDesktopWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDesktopWidget_receivers cobj_x0 cstr_x1

instance Qsender (QDesktopWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sender cobj_x0

foreign import ccall "qtc_QDesktopWidget_sender" qtc_QDesktopWidget_sender :: Ptr (TQDesktopWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QDesktopWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDesktopWidget_sender cobj_x0

instance QtimerEvent (QDesktopWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDesktopWidget_timerEvent" qtc_QDesktopWidget_timerEvent :: Ptr (TQDesktopWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDesktopWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDesktopWidget_timerEvent cobj_x0 cobj_x1

