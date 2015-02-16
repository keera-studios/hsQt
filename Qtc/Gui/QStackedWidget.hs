{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStackedWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStackedWidget (
  QqStackedWidget(..)
  ,qStackedWidget_delete
  ,qStackedWidget_deleteLater
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

instance QuserMethod (QStackedWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStackedWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStackedWidget_userMethod" qtc_QStackedWidget_userMethod :: Ptr (TQStackedWidget a) -> CInt -> IO ()

instance QuserMethod (QStackedWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStackedWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStackedWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStackedWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStackedWidget_userMethodVariant" qtc_QStackedWidget_userMethodVariant :: Ptr (TQStackedWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStackedWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStackedWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqStackedWidget x1 where
  qStackedWidget :: x1 -> IO (QStackedWidget ())

instance QqStackedWidget (()) where
 qStackedWidget ()
  = withQStackedWidgetResult $
    qtc_QStackedWidget

foreign import ccall "qtc_QStackedWidget" qtc_QStackedWidget :: IO (Ptr (TQStackedWidget ()))

instance QqStackedWidget ((QWidget t1)) where
 qStackedWidget (x1)
  = withQStackedWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget1 cobj_x1

foreign import ccall "qtc_QStackedWidget1" qtc_QStackedWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQStackedWidget ()))

instance QaddWidget (QStackedWidget ()) ((QWidget t1)) (IO (Int)) where
 addWidget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_addWidget" qtc_QStackedWidget_addWidget :: Ptr (TQStackedWidget a) -> Ptr (TQWidget t1) -> IO CInt

instance QaddWidget (QStackedWidgetSc a) ((QWidget t1)) (IO (Int)) where
 addWidget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_addWidget cobj_x0 cobj_x1

instance Qcount (QStackedWidget a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_count cobj_x0

foreign import ccall "qtc_QStackedWidget_count" qtc_QStackedWidget_count :: Ptr (TQStackedWidget a) -> IO CInt

instance QcurrentIndex (QStackedWidget a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_currentIndex cobj_x0

foreign import ccall "qtc_QStackedWidget_currentIndex" qtc_QStackedWidget_currentIndex :: Ptr (TQStackedWidget a) -> IO CInt

instance QcurrentWidget (QStackedWidget a) (()) where
 currentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_currentWidget cobj_x0

foreign import ccall "qtc_QStackedWidget_currentWidget" qtc_QStackedWidget_currentWidget :: Ptr (TQStackedWidget a) -> IO (Ptr (TQWidget ()))

instance Qevent (QStackedWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_event_h" qtc_QStackedWidget_event_h :: Ptr (TQStackedWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QStackedWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_event_h cobj_x0 cobj_x1

instance QindexOf (QStackedWidget a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_indexOf" qtc_QStackedWidget_indexOf :: Ptr (TQStackedWidget a) -> Ptr (TQWidget t1) -> IO CInt

instance QinsertWidget (QStackedWidget a) ((Int, QWidget t2)) (IO (Int)) where
 insertWidget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedWidget_insertWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStackedWidget_insertWidget" qtc_QStackedWidget_insertWidget :: Ptr (TQStackedWidget a) -> CInt -> Ptr (TQWidget t2) -> IO CInt

instance QremoveWidget (QStackedWidget a) ((QWidget t1)) where
 removeWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_removeWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_removeWidget" qtc_QStackedWidget_removeWidget :: Ptr (TQStackedWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetCurrentIndex (QStackedWidget a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedWidget_setCurrentIndex" qtc_QStackedWidget_setCurrentIndex :: Ptr (TQStackedWidget a) -> CInt -> IO ()

instance QsetCurrentWidget (QStackedWidget a) ((QWidget t1)) where
 setCurrentWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_setCurrentWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_setCurrentWidget" qtc_QStackedWidget_setCurrentWidget :: Ptr (TQStackedWidget a) -> Ptr (TQWidget t1) -> IO ()

instance Qwidget (QStackedWidget a) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_widget cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedWidget_widget" qtc_QStackedWidget_widget :: Ptr (TQStackedWidget a) -> CInt -> IO (Ptr (TQWidget ()))

qStackedWidget_delete :: QStackedWidget a -> IO ()
qStackedWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_delete cobj_x0

foreign import ccall "qtc_QStackedWidget_delete" qtc_QStackedWidget_delete :: Ptr (TQStackedWidget a) -> IO ()

qStackedWidget_deleteLater :: QStackedWidget a -> IO ()
qStackedWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_deleteLater cobj_x0

foreign import ccall "qtc_QStackedWidget_deleteLater" qtc_QStackedWidget_deleteLater :: Ptr (TQStackedWidget a) -> IO ()

instance QchangeEvent (QStackedWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_changeEvent_h" qtc_QStackedWidget_changeEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QStackedWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QStackedWidget ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_drawFrame" qtc_QStackedWidget_drawFrame :: Ptr (TQStackedWidget a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QStackedWidgetSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_drawFrame cobj_x0 cobj_x1

instance QpaintEvent (QStackedWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_paintEvent_h" qtc_QStackedWidget_paintEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QStackedWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QStackedWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QStackedWidget_sizeHint_h" qtc_QStackedWidget_sizeHint_h :: Ptr (TQStackedWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QStackedWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sizeHint_h cobj_x0

instance QsizeHint (QStackedWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStackedWidget_sizeHint_qth_h" qtc_QStackedWidget_sizeHint_qth_h :: Ptr (TQStackedWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QStackedWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QStackedWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_actionEvent_h" qtc_QStackedWidget_actionEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QStackedWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QStackedWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_addAction" qtc_QStackedWidget_addAction :: Ptr (TQStackedWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QStackedWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_addAction cobj_x0 cobj_x1

instance QcloseEvent (QStackedWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_closeEvent_h" qtc_QStackedWidget_closeEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QStackedWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QStackedWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_contextMenuEvent_h" qtc_QStackedWidget_contextMenuEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QStackedWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QStackedWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_create cobj_x0

foreign import ccall "qtc_QStackedWidget_create" qtc_QStackedWidget_create :: Ptr (TQStackedWidget a) -> IO ()

instance Qcreate (QStackedWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_create cobj_x0

instance Qcreate (QStackedWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_create1" qtc_QStackedWidget_create1 :: Ptr (TQStackedWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QStackedWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QStackedWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QStackedWidget_create2" qtc_QStackedWidget_create2 :: Ptr (TQStackedWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QStackedWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QStackedWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QStackedWidget_create3" qtc_QStackedWidget_create3 :: Ptr (TQStackedWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QStackedWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QStackedWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy cobj_x0

foreign import ccall "qtc_QStackedWidget_destroy" qtc_QStackedWidget_destroy :: Ptr (TQStackedWidget a) -> IO ()

instance Qdestroy (QStackedWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy cobj_x0

instance Qdestroy (QStackedWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_destroy1" qtc_QStackedWidget_destroy1 :: Ptr (TQStackedWidget a) -> CBool -> IO ()

instance Qdestroy (QStackedWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QStackedWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QStackedWidget_destroy2" qtc_QStackedWidget_destroy2 :: Ptr (TQStackedWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QStackedWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QStackedWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_devType_h cobj_x0

foreign import ccall "qtc_QStackedWidget_devType_h" qtc_QStackedWidget_devType_h :: Ptr (TQStackedWidget a) -> IO CInt

instance QdevType (QStackedWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_devType_h cobj_x0

instance QdragEnterEvent (QStackedWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_dragEnterEvent_h" qtc_QStackedWidget_dragEnterEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QStackedWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QStackedWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_dragLeaveEvent_h" qtc_QStackedWidget_dragLeaveEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QStackedWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QStackedWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_dragMoveEvent_h" qtc_QStackedWidget_dragMoveEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QStackedWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QStackedWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_dropEvent_h" qtc_QStackedWidget_dropEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QStackedWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QStackedWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_enabledChange" qtc_QStackedWidget_enabledChange :: Ptr (TQStackedWidget a) -> CBool -> IO ()

instance QenabledChange (QStackedWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QStackedWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_enterEvent_h" qtc_QStackedWidget_enterEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QStackedWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QStackedWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_focusInEvent_h" qtc_QStackedWidget_focusInEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QStackedWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QStackedWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QStackedWidget_focusNextChild" qtc_QStackedWidget_focusNextChild :: Ptr (TQStackedWidget a) -> IO CBool

instance QfocusNextChild (QStackedWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QStackedWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_focusNextPrevChild" qtc_QStackedWidget_focusNextPrevChild :: Ptr (TQStackedWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QStackedWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QStackedWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_focusOutEvent_h" qtc_QStackedWidget_focusOutEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QStackedWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QStackedWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QStackedWidget_focusPreviousChild" qtc_QStackedWidget_focusPreviousChild :: Ptr (TQStackedWidget a) -> IO CBool

instance QfocusPreviousChild (QStackedWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_focusPreviousChild cobj_x0

instance QfontChange (QStackedWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_fontChange" qtc_QStackedWidget_fontChange :: Ptr (TQStackedWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QStackedWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QStackedWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedWidget_heightForWidth_h" qtc_QStackedWidget_heightForWidth_h :: Ptr (TQStackedWidget a) -> CInt -> IO CInt

instance QheightForWidth (QStackedWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QStackedWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_hideEvent_h" qtc_QStackedWidget_hideEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QStackedWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QStackedWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_inputMethodEvent" qtc_QStackedWidget_inputMethodEvent :: Ptr (TQStackedWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QStackedWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QStackedWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStackedWidget_inputMethodQuery_h" qtc_QStackedWidget_inputMethodQuery_h :: Ptr (TQStackedWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QStackedWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QStackedWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_keyPressEvent_h" qtc_QStackedWidget_keyPressEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QStackedWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QStackedWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_keyReleaseEvent_h" qtc_QStackedWidget_keyReleaseEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QStackedWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QStackedWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_languageChange cobj_x0

foreign import ccall "qtc_QStackedWidget_languageChange" qtc_QStackedWidget_languageChange :: Ptr (TQStackedWidget a) -> IO ()

instance QlanguageChange (QStackedWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_languageChange cobj_x0

instance QleaveEvent (QStackedWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_leaveEvent_h" qtc_QStackedWidget_leaveEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QStackedWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QStackedWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStackedWidget_metric" qtc_QStackedWidget_metric :: Ptr (TQStackedWidget a) -> CLong -> IO CInt

instance Qmetric (QStackedWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QStackedWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QStackedWidget_minimumSizeHint_h" qtc_QStackedWidget_minimumSizeHint_h :: Ptr (TQStackedWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QStackedWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QStackedWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStackedWidget_minimumSizeHint_qth_h" qtc_QStackedWidget_minimumSizeHint_qth_h :: Ptr (TQStackedWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QStackedWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QStackedWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_mouseDoubleClickEvent_h" qtc_QStackedWidget_mouseDoubleClickEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QStackedWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QStackedWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_mouseMoveEvent_h" qtc_QStackedWidget_mouseMoveEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QStackedWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QStackedWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_mousePressEvent_h" qtc_QStackedWidget_mousePressEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QStackedWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QStackedWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_mouseReleaseEvent_h" qtc_QStackedWidget_mouseReleaseEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QStackedWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QStackedWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStackedWidget_move1" qtc_QStackedWidget_move1 :: Ptr (TQStackedWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QStackedWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QStackedWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QStackedWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QStackedWidget_move_qth" qtc_QStackedWidget_move_qth :: Ptr (TQStackedWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QStackedWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QStackedWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QStackedWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_move" qtc_QStackedWidget_move :: Ptr (TQStackedWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QStackedWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QStackedWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_moveEvent_h" qtc_QStackedWidget_moveEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QStackedWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QStackedWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QStackedWidget_paintEngine_h" qtc_QStackedWidget_paintEngine_h :: Ptr (TQStackedWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QStackedWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_paintEngine_h cobj_x0

instance QpaletteChange (QStackedWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_paletteChange" qtc_QStackedWidget_paletteChange :: Ptr (TQStackedWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QStackedWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QStackedWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_repaint cobj_x0

foreign import ccall "qtc_QStackedWidget_repaint" qtc_QStackedWidget_repaint :: Ptr (TQStackedWidget a) -> IO ()

instance Qrepaint (QStackedWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_repaint cobj_x0

instance Qrepaint (QStackedWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStackedWidget_repaint2" qtc_QStackedWidget_repaint2 :: Ptr (TQStackedWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QStackedWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QStackedWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_repaint1" qtc_QStackedWidget_repaint1 :: Ptr (TQStackedWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QStackedWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QStackedWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QStackedWidget_resetInputContext" qtc_QStackedWidget_resetInputContext :: Ptr (TQStackedWidget a) -> IO ()

instance QresetInputContext (QStackedWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_resetInputContext cobj_x0

instance Qresize (QStackedWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStackedWidget_resize1" qtc_QStackedWidget_resize1 :: Ptr (TQStackedWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QStackedWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QStackedWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_resize" qtc_QStackedWidget_resize :: Ptr (TQStackedWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QStackedWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_resize cobj_x0 cobj_x1

instance Qresize (QStackedWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStackedWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStackedWidget_resize_qth" qtc_QStackedWidget_resize_qth :: Ptr (TQStackedWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QStackedWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStackedWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QStackedWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_resizeEvent_h" qtc_QStackedWidget_resizeEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QStackedWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QStackedWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStackedWidget_setGeometry1" qtc_QStackedWidget_setGeometry1 :: Ptr (TQStackedWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QStackedWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QStackedWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_setGeometry" qtc_QStackedWidget_setGeometry :: Ptr (TQStackedWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QStackedWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QStackedWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStackedWidget_setGeometry_qth" qtc_QStackedWidget_setGeometry_qth :: Ptr (TQStackedWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QStackedWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QStackedWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_setMouseTracking" qtc_QStackedWidget_setMouseTracking :: Ptr (TQStackedWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QStackedWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QStackedWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_setVisible_h" qtc_QStackedWidget_setVisible_h :: Ptr (TQStackedWidget a) -> CBool -> IO ()

instance QsetVisible (QStackedWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QStackedWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_showEvent_h" qtc_QStackedWidget_showEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QStackedWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QStackedWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_tabletEvent_h" qtc_QStackedWidget_tabletEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QStackedWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QStackedWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QStackedWidget_updateMicroFocus" qtc_QStackedWidget_updateMicroFocus :: Ptr (TQStackedWidget a) -> IO ()

instance QupdateMicroFocus (QStackedWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QStackedWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_wheelEvent_h" qtc_QStackedWidget_wheelEvent_h :: Ptr (TQStackedWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QStackedWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QStackedWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStackedWidget_windowActivationChange" qtc_QStackedWidget_windowActivationChange :: Ptr (TQStackedWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QStackedWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QStackedWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_childEvent" qtc_QStackedWidget_childEvent :: Ptr (TQStackedWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QStackedWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QStackedWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedWidget_connectNotify" qtc_QStackedWidget_connectNotify :: Ptr (TQStackedWidget a) -> CWString -> IO ()

instance QconnectNotify (QStackedWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QStackedWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_customEvent" qtc_QStackedWidget_customEvent :: Ptr (TQStackedWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QStackedWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QStackedWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedWidget_disconnectNotify" qtc_QStackedWidget_disconnectNotify :: Ptr (TQStackedWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QStackedWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QStackedWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStackedWidget_eventFilter_h" qtc_QStackedWidget_eventFilter_h :: Ptr (TQStackedWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QStackedWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QStackedWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedWidget_receivers" qtc_QStackedWidget_receivers :: Ptr (TQStackedWidget a) -> CWString -> IO CInt

instance Qreceivers (QStackedWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedWidget_receivers cobj_x0 cstr_x1

instance Qsender (QStackedWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sender cobj_x0

foreign import ccall "qtc_QStackedWidget_sender" qtc_QStackedWidget_sender :: Ptr (TQStackedWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QStackedWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedWidget_sender cobj_x0

instance QtimerEvent (QStackedWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedWidget_timerEvent" qtc_QStackedWidget_timerEvent :: Ptr (TQStackedWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QStackedWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedWidget_timerEvent cobj_x0 cobj_x1

