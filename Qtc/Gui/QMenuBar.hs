{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMenuBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMenuBar (
  QqMenuBar(..)
  ,isDefaultUp
  ,setDefaultUp
  ,qMenuBar_delete
  ,qMenuBar_deleteLater
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

instance QuserMethod (QMenuBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMenuBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMenuBar_userMethod" qtc_QMenuBar_userMethod :: Ptr (TQMenuBar a) -> CInt -> IO ()

instance QuserMethod (QMenuBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMenuBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMenuBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMenuBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMenuBar_userMethodVariant" qtc_QMenuBar_userMethodVariant :: Ptr (TQMenuBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMenuBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMenuBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqMenuBar x1 where
  qMenuBar :: x1 -> IO (QMenuBar ())

instance QqMenuBar (()) where
 qMenuBar ()
  = withQMenuBarResult $
    qtc_QMenuBar

foreign import ccall "qtc_QMenuBar" qtc_QMenuBar :: IO (Ptr (TQMenuBar ()))

instance QqMenuBar ((QWidget t1)) where
 qMenuBar (x1)
  = withQMenuBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar1 cobj_x1

foreign import ccall "qtc_QMenuBar1" qtc_QMenuBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQMenuBar ()))

instance QactionAt (QMenuBar a) ((Point)) where
 actionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenuBar_actionAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenuBar_actionAt_qth" qtc_QMenuBar_actionAt_qth :: Ptr (TQMenuBar a) -> CInt -> CInt -> IO (Ptr (TQAction ()))

instance QqactionAt (QMenuBar a) ((QPoint t1)) where
 qactionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_actionAt cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_actionAt" qtc_QMenuBar_actionAt :: Ptr (TQMenuBar a) -> Ptr (TQPoint t1) -> IO (Ptr (TQAction ()))

instance QactionEvent (QMenuBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_actionEvent_h" qtc_QMenuBar_actionEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QMenuBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_actionEvent_h cobj_x0 cobj_x1

instance QqactionGeometry (QMenuBar a) ((QAction t1)) where
 qactionGeometry x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_actionGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_actionGeometry" qtc_QMenuBar_actionGeometry :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> IO (Ptr (TQRect ()))

instance QactionGeometry (QMenuBar a) ((QAction t1)) where
 actionGeometry x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_actionGeometry_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QMenuBar_actionGeometry_qth" qtc_QMenuBar_actionGeometry_qth :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QactiveAction (QMenuBar a) (()) where
 activeAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_activeAction cobj_x0

foreign import ccall "qtc_QMenuBar_activeAction" qtc_QMenuBar_activeAction :: Ptr (TQMenuBar a) -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_addAction1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_addAction1" qtc_QMenuBar_addAction1 :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QMenuBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_addAction1 cobj_x0 cobj_x1

instance QaddAction (QMenuBar ()) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_addAction cobj_x0 cstr_x1

foreign import ccall "qtc_QMenuBar_addAction" qtc_QMenuBar_addAction :: Ptr (TQMenuBar a) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuBarSc a) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_addAction cobj_x0 cstr_x1

instance QaddAction (QMenuBar ()) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMenuBar_addAction2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QMenuBar_addAction2" qtc_QMenuBar_addAction2 :: Ptr (TQMenuBar a) -> CWString -> Ptr (TQObject t2) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuBarSc a) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMenuBar_addAction2 cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QaddMenu (QMenuBar a) ((QMenu t1)) (IO (QAction ())) where
 addMenu x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_addMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_addMenu" qtc_QMenuBar_addMenu :: Ptr (TQMenuBar a) -> Ptr (TQMenu t1) -> IO (Ptr (TQAction ()))

instance QaddMenu (QMenuBar a) ((QIcon t1, String)) (IO (QMenu ())) where
 addMenu x0 (x1, x2)
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMenuBar_addMenu2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QMenuBar_addMenu2" qtc_QMenuBar_addMenu2 :: Ptr (TQMenuBar a) -> Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQMenu ()))

instance QaddMenu (QMenuBar a) ((String)) (IO (QMenu ())) where
 addMenu x0 (x1)
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_addMenu1 cobj_x0 cstr_x1

foreign import ccall "qtc_QMenuBar_addMenu1" qtc_QMenuBar_addMenu1 :: Ptr (TQMenuBar a) -> CWString -> IO (Ptr (TQMenu ()))

instance QaddSeparator (QMenuBar a) (()) where
 addSeparator x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_addSeparator cobj_x0

foreign import ccall "qtc_QMenuBar_addSeparator" qtc_QMenuBar_addSeparator :: Ptr (TQMenuBar a) -> IO (Ptr (TQAction ()))

instance QchangeEvent (QMenuBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_changeEvent_h" qtc_QMenuBar_changeEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QMenuBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QMenuBar a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_clear cobj_x0

foreign import ccall "qtc_QMenuBar_clear" qtc_QMenuBar_clear :: Ptr (TQMenuBar a) -> IO ()

instance QcornerWidget (QMenuBar a) (()) where
 cornerWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_cornerWidget cobj_x0

foreign import ccall "qtc_QMenuBar_cornerWidget" qtc_QMenuBar_cornerWidget :: Ptr (TQMenuBar a) -> IO (Ptr (TQWidget ()))

instance QcornerWidget (QMenuBar a) ((Corner)) where
 cornerWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_cornerWidget1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMenuBar_cornerWidget1" qtc_QMenuBar_cornerWidget1 :: Ptr (TQMenuBar a) -> CLong -> IO (Ptr (TQWidget ()))

instance Qevent (QMenuBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_event_h" qtc_QMenuBar_event_h :: Ptr (TQMenuBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMenuBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_event_h cobj_x0 cobj_x1

instance QeventFilter (QMenuBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenuBar_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenuBar_eventFilter" qtc_QMenuBar_eventFilter :: Ptr (TQMenuBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMenuBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenuBar_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QfocusInEvent (QMenuBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_focusInEvent_h" qtc_QMenuBar_focusInEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QMenuBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QMenuBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_focusOutEvent_h" qtc_QMenuBar_focusOutEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QMenuBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_focusOutEvent_h cobj_x0 cobj_x1

instance QheightForWidth (QMenuBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMenuBar_heightForWidth_h" qtc_QMenuBar_heightForWidth_h :: Ptr (TQMenuBar a) -> CInt -> IO CInt

instance QheightForWidth (QMenuBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QinitStyleOption (QMenuBar ()) ((QStyleOptionMenuItem t1, QAction t2)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenuBar_initStyleOption cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenuBar_initStyleOption" qtc_QMenuBar_initStyleOption :: Ptr (TQMenuBar a) -> Ptr (TQStyleOptionMenuItem t1) -> Ptr (TQAction t2) -> IO ()

instance QinitStyleOption (QMenuBarSc a) ((QStyleOptionMenuItem t1, QAction t2)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenuBar_initStyleOption cobj_x0 cobj_x1 cobj_x2

instance QinsertMenu (QMenuBar a) ((QAction t1, QMenu t2)) where
 insertMenu x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenuBar_insertMenu cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenuBar_insertMenu" qtc_QMenuBar_insertMenu :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> Ptr (TQMenu t2) -> IO (Ptr (TQAction ()))

instance QinsertSeparator (QMenuBar a) ((QAction t1)) where
 insertSeparator x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_insertSeparator cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_insertSeparator" qtc_QMenuBar_insertSeparator :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> IO (Ptr (TQAction ()))

isDefaultUp :: QMenuBar a -> (()) -> IO (Bool)
isDefaultUp x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_isDefaultUp cobj_x0

foreign import ccall "qtc_QMenuBar_isDefaultUp" qtc_QMenuBar_isDefaultUp :: Ptr (TQMenuBar a) -> IO CBool

instance QkeyPressEvent (QMenuBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_keyPressEvent_h" qtc_QMenuBar_keyPressEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QMenuBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_keyPressEvent_h cobj_x0 cobj_x1

instance QleaveEvent (QMenuBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_leaveEvent_h" qtc_QMenuBar_leaveEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QMenuBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_leaveEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QMenuBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QMenuBar_minimumSizeHint_h" qtc_QMenuBar_minimumSizeHint_h :: Ptr (TQMenuBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QMenuBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QMenuBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMenuBar_minimumSizeHint_qth_h" qtc_QMenuBar_minimumSizeHint_qth_h :: Ptr (TQMenuBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QMenuBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QMenuBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_mouseMoveEvent_h" qtc_QMenuBar_mouseMoveEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QMenuBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QMenuBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_mousePressEvent_h" qtc_QMenuBar_mousePressEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QMenuBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QMenuBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_mouseReleaseEvent_h" qtc_QMenuBar_mouseReleaseEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QMenuBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QMenuBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_paintEvent_h" qtc_QMenuBar_paintEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QMenuBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QMenuBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_resizeEvent_h" qtc_QMenuBar_resizeEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QMenuBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetActiveAction (QMenuBar a) ((QAction t1)) where
 setActiveAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_setActiveAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_setActiveAction" qtc_QMenuBar_setActiveAction :: Ptr (TQMenuBar a) -> Ptr (TQAction t1) -> IO ()

instance QsetCornerWidget (QMenuBar a) ((QWidget t1)) where
 setCornerWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_setCornerWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_setCornerWidget" qtc_QMenuBar_setCornerWidget :: Ptr (TQMenuBar a) -> Ptr (TQWidget t1) -> IO ()

instance QsetCornerWidget (QMenuBar a) ((QWidget t1, Corner)) where
 setCornerWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_setCornerWidget1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMenuBar_setCornerWidget1" qtc_QMenuBar_setCornerWidget1 :: Ptr (TQMenuBar a) -> Ptr (TQWidget t1) -> CLong -> IO ()

setDefaultUp :: QMenuBar a -> ((Bool)) -> IO ()
setDefaultUp x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setDefaultUp cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_setDefaultUp" qtc_QMenuBar_setDefaultUp :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance QsetVisible (QMenuBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_setVisible_h" qtc_QMenuBar_setVisible_h :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance QsetVisible (QMenuBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setVisible_h cobj_x0 (toCBool x1)

instance QqsizeHint (QMenuBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QMenuBar_sizeHint_h" qtc_QMenuBar_sizeHint_h :: Ptr (TQMenuBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QMenuBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sizeHint_h cobj_x0

instance QsizeHint (QMenuBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMenuBar_sizeHint_qth_h" qtc_QMenuBar_sizeHint_qth_h :: Ptr (TQMenuBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QMenuBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qMenuBar_delete :: QMenuBar a -> IO ()
qMenuBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_delete cobj_x0

foreign import ccall "qtc_QMenuBar_delete" qtc_QMenuBar_delete :: Ptr (TQMenuBar a) -> IO ()

qMenuBar_deleteLater :: QMenuBar a -> IO ()
qMenuBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_deleteLater cobj_x0

foreign import ccall "qtc_QMenuBar_deleteLater" qtc_QMenuBar_deleteLater :: Ptr (TQMenuBar a) -> IO ()

instance QcloseEvent (QMenuBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_closeEvent_h" qtc_QMenuBar_closeEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QMenuBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QMenuBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_contextMenuEvent_h" qtc_QMenuBar_contextMenuEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QMenuBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QMenuBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_create cobj_x0

foreign import ccall "qtc_QMenuBar_create" qtc_QMenuBar_create :: Ptr (TQMenuBar a) -> IO ()

instance Qcreate (QMenuBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_create cobj_x0

instance Qcreate (QMenuBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_create1" qtc_QMenuBar_create1 :: Ptr (TQMenuBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QMenuBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create1 cobj_x0 cobj_x1

instance Qcreate (QMenuBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QMenuBar_create2" qtc_QMenuBar_create2 :: Ptr (TQMenuBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QMenuBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QMenuBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QMenuBar_create3" qtc_QMenuBar_create3 :: Ptr (TQMenuBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QMenuBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QMenuBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy cobj_x0

foreign import ccall "qtc_QMenuBar_destroy" qtc_QMenuBar_destroy :: Ptr (TQMenuBar a) -> IO ()

instance Qdestroy (QMenuBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy cobj_x0

instance Qdestroy (QMenuBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_destroy1" qtc_QMenuBar_destroy1 :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance Qdestroy (QMenuBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QMenuBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QMenuBar_destroy2" qtc_QMenuBar_destroy2 :: Ptr (TQMenuBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QMenuBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QMenuBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_devType_h cobj_x0

foreign import ccall "qtc_QMenuBar_devType_h" qtc_QMenuBar_devType_h :: Ptr (TQMenuBar a) -> IO CInt

instance QdevType (QMenuBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_devType_h cobj_x0

instance QdragEnterEvent (QMenuBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_dragEnterEvent_h" qtc_QMenuBar_dragEnterEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QMenuBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QMenuBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_dragLeaveEvent_h" qtc_QMenuBar_dragLeaveEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QMenuBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QMenuBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_dragMoveEvent_h" qtc_QMenuBar_dragMoveEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QMenuBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QMenuBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_dropEvent_h" qtc_QMenuBar_dropEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QMenuBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QMenuBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_enabledChange" qtc_QMenuBar_enabledChange :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance QenabledChange (QMenuBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QMenuBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_enterEvent_h" qtc_QMenuBar_enterEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QMenuBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QMenuBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusNextChild cobj_x0

foreign import ccall "qtc_QMenuBar_focusNextChild" qtc_QMenuBar_focusNextChild :: Ptr (TQMenuBar a) -> IO CBool

instance QfocusNextChild (QMenuBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QMenuBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_focusNextPrevChild" qtc_QMenuBar_focusNextPrevChild :: Ptr (TQMenuBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QMenuBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QMenuBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QMenuBar_focusPreviousChild" qtc_QMenuBar_focusPreviousChild :: Ptr (TQMenuBar a) -> IO CBool

instance QfocusPreviousChild (QMenuBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_focusPreviousChild cobj_x0

instance QfontChange (QMenuBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_fontChange" qtc_QMenuBar_fontChange :: Ptr (TQMenuBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QMenuBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_fontChange cobj_x0 cobj_x1

instance QhideEvent (QMenuBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_hideEvent_h" qtc_QMenuBar_hideEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QMenuBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QMenuBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_inputMethodEvent" qtc_QMenuBar_inputMethodEvent :: Ptr (TQMenuBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QMenuBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QMenuBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMenuBar_inputMethodQuery_h" qtc_QMenuBar_inputMethodQuery_h :: Ptr (TQMenuBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QMenuBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QMenuBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_keyReleaseEvent_h" qtc_QMenuBar_keyReleaseEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QMenuBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QMenuBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_languageChange cobj_x0

foreign import ccall "qtc_QMenuBar_languageChange" qtc_QMenuBar_languageChange :: Ptr (TQMenuBar a) -> IO ()

instance QlanguageChange (QMenuBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_languageChange cobj_x0

instance Qmetric (QMenuBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMenuBar_metric" qtc_QMenuBar_metric :: Ptr (TQMenuBar a) -> CLong -> IO CInt

instance Qmetric (QMenuBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QMenuBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_mouseDoubleClickEvent_h" qtc_QMenuBar_mouseDoubleClickEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QMenuBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QMenuBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMenuBar_move1" qtc_QMenuBar_move1 :: Ptr (TQMenuBar a) -> CInt -> CInt -> IO ()

instance Qmove (QMenuBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QMenuBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenuBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenuBar_move_qth" qtc_QMenuBar_move_qth :: Ptr (TQMenuBar a) -> CInt -> CInt -> IO ()

instance Qmove (QMenuBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenuBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QMenuBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_move" qtc_QMenuBar_move :: Ptr (TQMenuBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QMenuBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_move cobj_x0 cobj_x1

instance QmoveEvent (QMenuBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_moveEvent_h" qtc_QMenuBar_moveEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QMenuBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QMenuBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QMenuBar_paintEngine_h" qtc_QMenuBar_paintEngine_h :: Ptr (TQMenuBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QMenuBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_paintEngine_h cobj_x0

instance QpaletteChange (QMenuBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_paletteChange" qtc_QMenuBar_paletteChange :: Ptr (TQMenuBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QMenuBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QMenuBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_repaint cobj_x0

foreign import ccall "qtc_QMenuBar_repaint" qtc_QMenuBar_repaint :: Ptr (TQMenuBar a) -> IO ()

instance Qrepaint (QMenuBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_repaint cobj_x0

instance Qrepaint (QMenuBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMenuBar_repaint2" qtc_QMenuBar_repaint2 :: Ptr (TQMenuBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QMenuBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QMenuBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_repaint1" qtc_QMenuBar_repaint1 :: Ptr (TQMenuBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QMenuBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QMenuBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_resetInputContext cobj_x0

foreign import ccall "qtc_QMenuBar_resetInputContext" qtc_QMenuBar_resetInputContext :: Ptr (TQMenuBar a) -> IO ()

instance QresetInputContext (QMenuBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_resetInputContext cobj_x0

instance Qresize (QMenuBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMenuBar_resize1" qtc_QMenuBar_resize1 :: Ptr (TQMenuBar a) -> CInt -> CInt -> IO ()

instance Qresize (QMenuBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QMenuBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_resize" qtc_QMenuBar_resize :: Ptr (TQMenuBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QMenuBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_resize cobj_x0 cobj_x1

instance Qresize (QMenuBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMenuBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMenuBar_resize_qth" qtc_QMenuBar_resize_qth :: Ptr (TQMenuBar a) -> CInt -> CInt -> IO ()

instance Qresize (QMenuBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMenuBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QMenuBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMenuBar_setGeometry1" qtc_QMenuBar_setGeometry1 :: Ptr (TQMenuBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMenuBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QMenuBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_setGeometry" qtc_QMenuBar_setGeometry :: Ptr (TQMenuBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QMenuBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QMenuBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMenuBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QMenuBar_setGeometry_qth" qtc_QMenuBar_setGeometry_qth :: Ptr (TQMenuBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMenuBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMenuBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QMenuBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_setMouseTracking" qtc_QMenuBar_setMouseTracking :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance QsetMouseTracking (QMenuBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_setMouseTracking cobj_x0 (toCBool x1)

instance QshowEvent (QMenuBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_showEvent_h" qtc_QMenuBar_showEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QMenuBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QMenuBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_tabletEvent_h" qtc_QMenuBar_tabletEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QMenuBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QMenuBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QMenuBar_updateMicroFocus" qtc_QMenuBar_updateMicroFocus :: Ptr (TQMenuBar a) -> IO ()

instance QupdateMicroFocus (QMenuBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_updateMicroFocus cobj_x0

instance QwheelEvent (QMenuBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_wheelEvent_h" qtc_QMenuBar_wheelEvent_h :: Ptr (TQMenuBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QMenuBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QMenuBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenuBar_windowActivationChange" qtc_QMenuBar_windowActivationChange :: Ptr (TQMenuBar a) -> CBool -> IO ()

instance QwindowActivationChange (QMenuBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QMenuBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_childEvent" qtc_QMenuBar_childEvent :: Ptr (TQMenuBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMenuBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMenuBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMenuBar_connectNotify" qtc_QMenuBar_connectNotify :: Ptr (TQMenuBar a) -> CWString -> IO ()

instance QconnectNotify (QMenuBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMenuBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_customEvent" qtc_QMenuBar_customEvent :: Ptr (TQMenuBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMenuBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMenuBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMenuBar_disconnectNotify" qtc_QMenuBar_disconnectNotify :: Ptr (TQMenuBar a) -> CWString -> IO ()

instance QdisconnectNotify (QMenuBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QMenuBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMenuBar_receivers" qtc_QMenuBar_receivers :: Ptr (TQMenuBar a) -> CWString -> IO CInt

instance Qreceivers (QMenuBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenuBar_receivers cobj_x0 cstr_x1

instance Qsender (QMenuBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sender cobj_x0

foreign import ccall "qtc_QMenuBar_sender" qtc_QMenuBar_sender :: Ptr (TQMenuBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QMenuBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenuBar_sender cobj_x0

instance QtimerEvent (QMenuBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenuBar_timerEvent" qtc_QMenuBar_timerEvent :: Ptr (TQMenuBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMenuBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenuBar_timerEvent cobj_x0 cobj_x1

