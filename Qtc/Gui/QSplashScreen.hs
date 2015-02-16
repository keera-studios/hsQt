{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSplashScreen.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSplashScreen (
  QqSplashScreen(..)
  ,finish
  ,qSplashScreen_delete
  ,qSplashScreen_deleteLater
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

instance QuserMethod (QSplashScreen ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSplashScreen_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSplashScreen_userMethod" qtc_QSplashScreen_userMethod :: Ptr (TQSplashScreen a) -> CInt -> IO ()

instance QuserMethod (QSplashScreenSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSplashScreen_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSplashScreen ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSplashScreen_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSplashScreen_userMethodVariant" qtc_QSplashScreen_userMethodVariant :: Ptr (TQSplashScreen a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSplashScreenSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSplashScreen_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSplashScreen x1 where
  qSplashScreen :: x1 -> IO (QSplashScreen ())

instance QqSplashScreen (()) where
 qSplashScreen ()
  = withQSplashScreenResult $
    qtc_QSplashScreen

foreign import ccall "qtc_QSplashScreen" qtc_QSplashScreen :: IO (Ptr (TQSplashScreen ()))

instance QqSplashScreen ((QWidget t1)) where
 qSplashScreen (x1)
  = withQSplashScreenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen1 cobj_x1

foreign import ccall "qtc_QSplashScreen1" qtc_QSplashScreen1 :: Ptr (TQWidget t1) -> IO (Ptr (TQSplashScreen ()))

instance QqSplashScreen ((QPixmap t1)) where
 qSplashScreen (x1)
  = withQSplashScreenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen2 cobj_x1

foreign import ccall "qtc_QSplashScreen2" qtc_QSplashScreen2 :: Ptr (TQPixmap t1) -> IO (Ptr (TQSplashScreen ()))

instance QqSplashScreen ((QWidget t1, QPixmap t2)) where
 qSplashScreen (x1, x2)
  = withQSplashScreenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplashScreen3 cobj_x1 cobj_x2

foreign import ccall "qtc_QSplashScreen3" qtc_QSplashScreen3 :: Ptr (TQWidget t1) -> Ptr (TQPixmap t2) -> IO (Ptr (TQSplashScreen ()))

instance QqSplashScreen ((QPixmap t1, WindowFlags)) where
 qSplashScreen (x1, x2)
  = withQSplashScreenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen4 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QSplashScreen4" qtc_QSplashScreen4 :: Ptr (TQPixmap t1) -> CLong -> IO (Ptr (TQSplashScreen ()))

instance QqSplashScreen ((QWidget t1, QPixmap t2, WindowFlags)) where
 qSplashScreen (x1, x2, x3)
  = withQSplashScreenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplashScreen5 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QSplashScreen5" qtc_QSplashScreen5 :: Ptr (TQWidget t1) -> Ptr (TQPixmap t2) -> CLong -> IO (Ptr (TQSplashScreen ()))

instance QclearMessage (QSplashScreen a) (()) where
 clearMessage x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_clearMessage cobj_x0

foreign import ccall "qtc_QSplashScreen_clearMessage" qtc_QSplashScreen_clearMessage :: Ptr (TQSplashScreen a) -> IO ()

instance QdrawContents (QSplashScreen ()) ((QPainter t1)) where
 drawContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_drawContents_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_drawContents_h" qtc_QSplashScreen_drawContents_h :: Ptr (TQSplashScreen a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawContents (QSplashScreenSc a) ((QPainter t1)) where
 drawContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_drawContents_h cobj_x0 cobj_x1

instance Qevent (QSplashScreen ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_event_h" qtc_QSplashScreen_event_h :: Ptr (TQSplashScreen a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSplashScreenSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_event_h cobj_x0 cobj_x1

finish :: QSplashScreen a -> ((QWidget t1)) -> IO ()
finish x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_finish cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_finish" qtc_QSplashScreen_finish :: Ptr (TQSplashScreen a) -> Ptr (TQWidget t1) -> IO ()

instance QmousePressEvent (QSplashScreen ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_mousePressEvent_h" qtc_QSplashScreen_mousePressEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QSplashScreenSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mousePressEvent_h cobj_x0 cobj_x1

instance Qrepaint (QSplashScreen ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_repaint cobj_x0

foreign import ccall "qtc_QSplashScreen_repaint" qtc_QSplashScreen_repaint :: Ptr (TQSplashScreen a) -> IO ()

instance Qrepaint (QSplashScreenSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_repaint cobj_x0

instance QsetPixmap (QSplashScreen a) ((QPixmap t1)) where
 setPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_setPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_setPixmap" qtc_QSplashScreen_setPixmap :: Ptr (TQSplashScreen a) -> Ptr (TQPixmap t1) -> IO ()

instance QshowMessage (QSplashScreen a) ((String)) where
 showMessage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_showMessage cobj_x0 cstr_x1

foreign import ccall "qtc_QSplashScreen_showMessage" qtc_QSplashScreen_showMessage :: Ptr (TQSplashScreen a) -> CWString -> IO ()

instance QshowMessage (QSplashScreen a) ((String, Int)) where
 showMessage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_showMessage1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QSplashScreen_showMessage1" qtc_QSplashScreen_showMessage1 :: Ptr (TQSplashScreen a) -> CWString -> CInt -> IO ()

instance QshowMessage (QSplashScreen a) ((String, Int, QColor t3)) where
 showMessage x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSplashScreen_showMessage2 cobj_x0 cstr_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QSplashScreen_showMessage2" qtc_QSplashScreen_showMessage2 :: Ptr (TQSplashScreen a) -> CWString -> CInt -> Ptr (TQColor t3) -> IO ()

qSplashScreen_delete :: QSplashScreen a -> IO ()
qSplashScreen_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_delete cobj_x0

foreign import ccall "qtc_QSplashScreen_delete" qtc_QSplashScreen_delete :: Ptr (TQSplashScreen a) -> IO ()

qSplashScreen_deleteLater :: QSplashScreen a -> IO ()
qSplashScreen_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_deleteLater cobj_x0

foreign import ccall "qtc_QSplashScreen_deleteLater" qtc_QSplashScreen_deleteLater :: Ptr (TQSplashScreen a) -> IO ()

instance QactionEvent (QSplashScreen ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_actionEvent_h" qtc_QSplashScreen_actionEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QSplashScreenSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QSplashScreen ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_addAction" qtc_QSplashScreen_addAction :: Ptr (TQSplashScreen a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QSplashScreenSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_addAction cobj_x0 cobj_x1

instance QchangeEvent (QSplashScreen ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_changeEvent_h" qtc_QSplashScreen_changeEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QSplashScreenSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QSplashScreen ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_closeEvent_h" qtc_QSplashScreen_closeEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QSplashScreenSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QSplashScreen ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_contextMenuEvent_h" qtc_QSplashScreen_contextMenuEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QSplashScreenSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QSplashScreen ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_create cobj_x0

foreign import ccall "qtc_QSplashScreen_create" qtc_QSplashScreen_create :: Ptr (TQSplashScreen a) -> IO ()

instance Qcreate (QSplashScreenSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_create cobj_x0

instance Qcreate (QSplashScreen ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_create1" qtc_QSplashScreen_create1 :: Ptr (TQSplashScreen a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QSplashScreenSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create1 cobj_x0 cobj_x1

instance Qcreate (QSplashScreen ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QSplashScreen_create2" qtc_QSplashScreen_create2 :: Ptr (TQSplashScreen a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QSplashScreenSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QSplashScreen ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QSplashScreen_create3" qtc_QSplashScreen_create3 :: Ptr (TQSplashScreen a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QSplashScreenSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QSplashScreen ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy cobj_x0

foreign import ccall "qtc_QSplashScreen_destroy" qtc_QSplashScreen_destroy :: Ptr (TQSplashScreen a) -> IO ()

instance Qdestroy (QSplashScreenSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy cobj_x0

instance Qdestroy (QSplashScreen ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_destroy1" qtc_QSplashScreen_destroy1 :: Ptr (TQSplashScreen a) -> CBool -> IO ()

instance Qdestroy (QSplashScreenSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QSplashScreen ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QSplashScreen_destroy2" qtc_QSplashScreen_destroy2 :: Ptr (TQSplashScreen a) -> CBool -> CBool -> IO ()

instance Qdestroy (QSplashScreenSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QSplashScreen ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_devType_h cobj_x0

foreign import ccall "qtc_QSplashScreen_devType_h" qtc_QSplashScreen_devType_h :: Ptr (TQSplashScreen a) -> IO CInt

instance QdevType (QSplashScreenSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_devType_h cobj_x0

instance QdragEnterEvent (QSplashScreen ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_dragEnterEvent_h" qtc_QSplashScreen_dragEnterEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QSplashScreenSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QSplashScreen ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_dragLeaveEvent_h" qtc_QSplashScreen_dragLeaveEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QSplashScreenSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QSplashScreen ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_dragMoveEvent_h" qtc_QSplashScreen_dragMoveEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QSplashScreenSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QSplashScreen ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_dropEvent_h" qtc_QSplashScreen_dropEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QSplashScreenSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QSplashScreen ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_enabledChange" qtc_QSplashScreen_enabledChange :: Ptr (TQSplashScreen a) -> CBool -> IO ()

instance QenabledChange (QSplashScreenSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QSplashScreen ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_enterEvent_h" qtc_QSplashScreen_enterEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QSplashScreenSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QSplashScreen ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_focusInEvent_h" qtc_QSplashScreen_focusInEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QSplashScreenSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QSplashScreen ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusNextChild cobj_x0

foreign import ccall "qtc_QSplashScreen_focusNextChild" qtc_QSplashScreen_focusNextChild :: Ptr (TQSplashScreen a) -> IO CBool

instance QfocusNextChild (QSplashScreenSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusNextChild cobj_x0

instance QfocusNextPrevChild (QSplashScreen ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_focusNextPrevChild" qtc_QSplashScreen_focusNextPrevChild :: Ptr (TQSplashScreen a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QSplashScreenSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QSplashScreen ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_focusOutEvent_h" qtc_QSplashScreen_focusOutEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QSplashScreenSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QSplashScreen ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusPreviousChild cobj_x0

foreign import ccall "qtc_QSplashScreen_focusPreviousChild" qtc_QSplashScreen_focusPreviousChild :: Ptr (TQSplashScreen a) -> IO CBool

instance QfocusPreviousChild (QSplashScreenSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_focusPreviousChild cobj_x0

instance QfontChange (QSplashScreen ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_fontChange" qtc_QSplashScreen_fontChange :: Ptr (TQSplashScreen a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QSplashScreenSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QSplashScreen ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplashScreen_heightForWidth_h" qtc_QSplashScreen_heightForWidth_h :: Ptr (TQSplashScreen a) -> CInt -> IO CInt

instance QheightForWidth (QSplashScreenSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QSplashScreen ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_hideEvent_h" qtc_QSplashScreen_hideEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QSplashScreenSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QSplashScreen ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_inputMethodEvent" qtc_QSplashScreen_inputMethodEvent :: Ptr (TQSplashScreen a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QSplashScreenSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QSplashScreen ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplashScreen_inputMethodQuery_h" qtc_QSplashScreen_inputMethodQuery_h :: Ptr (TQSplashScreen a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QSplashScreenSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QSplashScreen ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_keyPressEvent_h" qtc_QSplashScreen_keyPressEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QSplashScreenSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QSplashScreen ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_keyReleaseEvent_h" qtc_QSplashScreen_keyReleaseEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QSplashScreenSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QSplashScreen ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_languageChange cobj_x0

foreign import ccall "qtc_QSplashScreen_languageChange" qtc_QSplashScreen_languageChange :: Ptr (TQSplashScreen a) -> IO ()

instance QlanguageChange (QSplashScreenSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_languageChange cobj_x0

instance QleaveEvent (QSplashScreen ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_leaveEvent_h" qtc_QSplashScreen_leaveEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QSplashScreenSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QSplashScreen ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplashScreen_metric" qtc_QSplashScreen_metric :: Ptr (TQSplashScreen a) -> CLong -> IO CInt

instance Qmetric (QSplashScreenSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QSplashScreen ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QSplashScreen_minimumSizeHint_h" qtc_QSplashScreen_minimumSizeHint_h :: Ptr (TQSplashScreen a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QSplashScreenSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QSplashScreen ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSplashScreen_minimumSizeHint_qth_h" qtc_QSplashScreen_minimumSizeHint_qth_h :: Ptr (TQSplashScreen a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QSplashScreenSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QSplashScreen ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_mouseDoubleClickEvent_h" qtc_QSplashScreen_mouseDoubleClickEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QSplashScreenSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QSplashScreen ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_mouseMoveEvent_h" qtc_QSplashScreen_mouseMoveEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QSplashScreenSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QSplashScreen ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_mouseReleaseEvent_h" qtc_QSplashScreen_mouseReleaseEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QSplashScreenSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QSplashScreen ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplashScreen_move1" qtc_QSplashScreen_move1 :: Ptr (TQSplashScreen a) -> CInt -> CInt -> IO ()

instance Qmove (QSplashScreenSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QSplashScreen ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSplashScreen_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QSplashScreen_move_qth" qtc_QSplashScreen_move_qth :: Ptr (TQSplashScreen a) -> CInt -> CInt -> IO ()

instance Qmove (QSplashScreenSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSplashScreen_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QSplashScreen ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_move cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_move" qtc_QSplashScreen_move :: Ptr (TQSplashScreen a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QSplashScreenSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_move cobj_x0 cobj_x1

instance QmoveEvent (QSplashScreen ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_moveEvent_h" qtc_QSplashScreen_moveEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QSplashScreenSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QSplashScreen ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_paintEngine_h cobj_x0

foreign import ccall "qtc_QSplashScreen_paintEngine_h" qtc_QSplashScreen_paintEngine_h :: Ptr (TQSplashScreen a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QSplashScreenSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_paintEngine_h cobj_x0

instance QpaintEvent (QSplashScreen ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_paintEvent_h" qtc_QSplashScreen_paintEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QSplashScreenSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QSplashScreen ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_paletteChange" qtc_QSplashScreen_paletteChange :: Ptr (TQSplashScreen a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QSplashScreenSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_paletteChange cobj_x0 cobj_x1

instance QresetInputContext (QSplashScreen ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_resetInputContext cobj_x0

foreign import ccall "qtc_QSplashScreen_resetInputContext" qtc_QSplashScreen_resetInputContext :: Ptr (TQSplashScreen a) -> IO ()

instance QresetInputContext (QSplashScreenSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_resetInputContext cobj_x0

instance Qresize (QSplashScreen ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplashScreen_resize1" qtc_QSplashScreen_resize1 :: Ptr (TQSplashScreen a) -> CInt -> CInt -> IO ()

instance Qresize (QSplashScreenSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QSplashScreen ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_resize" qtc_QSplashScreen_resize :: Ptr (TQSplashScreen a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QSplashScreenSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_resize cobj_x0 cobj_x1

instance Qresize (QSplashScreen ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSplashScreen_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSplashScreen_resize_qth" qtc_QSplashScreen_resize_qth :: Ptr (TQSplashScreen a) -> CInt -> CInt -> IO ()

instance Qresize (QSplashScreenSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSplashScreen_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QSplashScreen ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_resizeEvent_h" qtc_QSplashScreen_resizeEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QSplashScreenSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QSplashScreen ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSplashScreen_setGeometry1" qtc_QSplashScreen_setGeometry1 :: Ptr (TQSplashScreen a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSplashScreenSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QSplashScreen ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_setGeometry" qtc_QSplashScreen_setGeometry :: Ptr (TQSplashScreen a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSplashScreenSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QSplashScreen ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSplashScreen_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSplashScreen_setGeometry_qth" qtc_QSplashScreen_setGeometry_qth :: Ptr (TQSplashScreen a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSplashScreenSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSplashScreen_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QSplashScreen ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_setMouseTracking" qtc_QSplashScreen_setMouseTracking :: Ptr (TQSplashScreen a) -> CBool -> IO ()

instance QsetMouseTracking (QSplashScreenSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QSplashScreen ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_setVisible_h" qtc_QSplashScreen_setVisible_h :: Ptr (TQSplashScreen a) -> CBool -> IO ()

instance QsetVisible (QSplashScreenSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QSplashScreen ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_showEvent_h" qtc_QSplashScreen_showEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QSplashScreenSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QSplashScreen ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sizeHint_h cobj_x0

foreign import ccall "qtc_QSplashScreen_sizeHint_h" qtc_QSplashScreen_sizeHint_h :: Ptr (TQSplashScreen a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSplashScreenSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sizeHint_h cobj_x0

instance QsizeHint (QSplashScreen ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSplashScreen_sizeHint_qth_h" qtc_QSplashScreen_sizeHint_qth_h :: Ptr (TQSplashScreen a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSplashScreenSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QSplashScreen ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_tabletEvent_h" qtc_QSplashScreen_tabletEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QSplashScreenSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QSplashScreen ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_updateMicroFocus cobj_x0

foreign import ccall "qtc_QSplashScreen_updateMicroFocus" qtc_QSplashScreen_updateMicroFocus :: Ptr (TQSplashScreen a) -> IO ()

instance QupdateMicroFocus (QSplashScreenSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_updateMicroFocus cobj_x0

instance QwheelEvent (QSplashScreen ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_wheelEvent_h" qtc_QSplashScreen_wheelEvent_h :: Ptr (TQSplashScreen a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QSplashScreenSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QSplashScreen ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplashScreen_windowActivationChange" qtc_QSplashScreen_windowActivationChange :: Ptr (TQSplashScreen a) -> CBool -> IO ()

instance QwindowActivationChange (QSplashScreenSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QSplashScreen ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_childEvent" qtc_QSplashScreen_childEvent :: Ptr (TQSplashScreen a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSplashScreenSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSplashScreen ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSplashScreen_connectNotify" qtc_QSplashScreen_connectNotify :: Ptr (TQSplashScreen a) -> CWString -> IO ()

instance QconnectNotify (QSplashScreenSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSplashScreen ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_customEvent" qtc_QSplashScreen_customEvent :: Ptr (TQSplashScreen a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSplashScreenSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSplashScreen ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSplashScreen_disconnectNotify" qtc_QSplashScreen_disconnectNotify :: Ptr (TQSplashScreen a) -> CWString -> IO ()

instance QdisconnectNotify (QSplashScreenSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QSplashScreen ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplashScreen_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSplashScreen_eventFilter_h" qtc_QSplashScreen_eventFilter_h :: Ptr (TQSplashScreen a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSplashScreenSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplashScreen_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSplashScreen ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSplashScreen_receivers" qtc_QSplashScreen_receivers :: Ptr (TQSplashScreen a) -> CWString -> IO CInt

instance Qreceivers (QSplashScreenSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplashScreen_receivers cobj_x0 cstr_x1

instance Qsender (QSplashScreen ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sender cobj_x0

foreign import ccall "qtc_QSplashScreen_sender" qtc_QSplashScreen_sender :: Ptr (TQSplashScreen a) -> IO (Ptr (TQObject ()))

instance Qsender (QSplashScreenSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplashScreen_sender cobj_x0

instance QtimerEvent (QSplashScreen ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplashScreen_timerEvent" qtc_QSplashScreen_timerEvent :: Ptr (TQSplashScreen a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSplashScreenSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplashScreen_timerEvent cobj_x0 cobj_x1

