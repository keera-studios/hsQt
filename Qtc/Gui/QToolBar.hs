{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QToolBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QToolBar (
  QqToolBar(..)
  ,isFloatable
  ,widgetForAction
  ,qToolBar_delete
  ,qToolBar_deleteLater
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

instance QuserMethod (QToolBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QToolBar_userMethod" qtc_QToolBar_userMethod :: Ptr (TQToolBar a) -> CInt -> IO ()

instance QuserMethod (QToolBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QToolBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QToolBar_userMethodVariant" qtc_QToolBar_userMethodVariant :: Ptr (TQToolBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QToolBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqToolBar x1 where
  qToolBar :: x1 -> IO (QToolBar ())

instance QqToolBar (()) where
 qToolBar ()
  = withQToolBarResult $
    qtc_QToolBar

foreign import ccall "qtc_QToolBar" qtc_QToolBar :: IO (Ptr (TQToolBar ()))

instance QqToolBar ((QWidget t1)) where
 qToolBar (x1)
  = withQToolBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar1 cobj_x1

foreign import ccall "qtc_QToolBar1" qtc_QToolBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQToolBar ()))

instance QactionAt (QToolBar a) ((Int, Int)) where
 actionAt x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_actionAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolBar_actionAt1" qtc_QToolBar_actionAt1 :: Ptr (TQToolBar a) -> CInt -> CInt -> IO (Ptr (TQAction ()))

instance QactionAt (QToolBar a) ((Point)) where
 actionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolBar_actionAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QToolBar_actionAt_qth" qtc_QToolBar_actionAt_qth :: Ptr (TQToolBar a) -> CInt -> CInt -> IO (Ptr (TQAction ()))

instance QqactionAt (QToolBar a) ((QPoint t1)) where
 qactionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_actionAt cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_actionAt" qtc_QToolBar_actionAt :: Ptr (TQToolBar a) -> Ptr (TQPoint t1) -> IO (Ptr (TQAction ()))

instance QactionEvent (QToolBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_actionEvent_h" qtc_QToolBar_actionEvent_h :: Ptr (TQToolBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QToolBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_actionEvent_h cobj_x0 cobj_x1

instance QqactionGeometry (QToolBar a) ((QAction t1)) where
 qactionGeometry x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_actionGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_actionGeometry" qtc_QToolBar_actionGeometry :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> IO (Ptr (TQRect ()))

instance QactionGeometry (QToolBar a) ((QAction t1)) where
 actionGeometry x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_actionGeometry_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QToolBar_actionGeometry_qth" qtc_QToolBar_actionGeometry_qth :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QaddAction (QToolBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_addAction1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_addAction1" qtc_QToolBar_addAction1 :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QToolBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_addAction1 cobj_x0 cobj_x1

instance QaddAction (QToolBar ()) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolBar_addAction2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QToolBar_addAction2" qtc_QToolBar_addAction2 :: Ptr (TQToolBar a) -> Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QToolBarSc a) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolBar_addAction2 cobj_x0 cobj_x1 cstr_x2

instance QaddAction (QToolBar ()) ((QIcon t1, String, QObject t3, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QToolBar_addAction4 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QToolBar_addAction4" qtc_QToolBar_addAction4 :: Ptr (TQToolBar a) -> Ptr (TQIcon t1) -> CWString -> Ptr (TQObject t3) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QToolBarSc a) ((QIcon t1, String, QObject t3, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QToolBar_addAction4 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4

instance QaddAction (QToolBar ()) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_addAction cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBar_addAction" qtc_QToolBar_addAction :: Ptr (TQToolBar a) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QToolBarSc a) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_addAction cobj_x0 cstr_x1

instance QaddAction (QToolBar ()) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QToolBar_addAction3 cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QToolBar_addAction3" qtc_QToolBar_addAction3 :: Ptr (TQToolBar a) -> CWString -> Ptr (TQObject t2) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QToolBarSc a) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QToolBar_addAction3 cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QaddSeparator (QToolBar a) (()) where
 addSeparator x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_addSeparator cobj_x0

foreign import ccall "qtc_QToolBar_addSeparator" qtc_QToolBar_addSeparator :: Ptr (TQToolBar a) -> IO (Ptr (TQAction ()))

instance QaddWidget (QToolBar ()) ((QWidget t1)) (IO (QAction ())) where
 addWidget x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_addWidget" qtc_QToolBar_addWidget :: Ptr (TQToolBar a) -> Ptr (TQWidget t1) -> IO (Ptr (TQAction ()))

instance QaddWidget (QToolBarSc a) ((QWidget t1)) (IO (QAction ())) where
 addWidget x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_addWidget cobj_x0 cobj_x1

instance QallowedAreas (QToolBar a) (()) (IO (ToolBarAreas)) where
 allowedAreas x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_allowedAreas cobj_x0

foreign import ccall "qtc_QToolBar_allowedAreas" qtc_QToolBar_allowedAreas :: Ptr (TQToolBar a) -> IO CLong

instance QchangeEvent (QToolBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_changeEvent_h" qtc_QToolBar_changeEvent_h :: Ptr (TQToolBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QToolBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_changeEvent_h cobj_x0 cobj_x1

instance QchildEvent (QToolBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_childEvent" qtc_QToolBar_childEvent :: Ptr (TQToolBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QToolBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_childEvent cobj_x0 cobj_x1

instance Qclear (QToolBar a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_clear cobj_x0

foreign import ccall "qtc_QToolBar_clear" qtc_QToolBar_clear :: Ptr (TQToolBar a) -> IO ()

instance Qevent (QToolBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_event_h" qtc_QToolBar_event_h :: Ptr (TQToolBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QToolBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_event_h cobj_x0 cobj_x1

instance QqiconSize (QToolBar a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_iconSize cobj_x0

foreign import ccall "qtc_QToolBar_iconSize" qtc_QToolBar_iconSize :: Ptr (TQToolBar a) -> IO (Ptr (TQSize ()))

instance QiconSize (QToolBar a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolBar_iconSize_qth" qtc_QToolBar_iconSize_qth :: Ptr (TQToolBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QinitStyleOption (QToolBar ()) ((QStyleOptionToolBar t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_initStyleOption" qtc_QToolBar_initStyleOption :: Ptr (TQToolBar a) -> Ptr (TQStyleOptionToolBar t1) -> IO ()

instance QinitStyleOption (QToolBarSc a) ((QStyleOptionToolBar t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_initStyleOption cobj_x0 cobj_x1

instance QinsertSeparator (QToolBar a) ((QAction t1)) where
 insertSeparator x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_insertSeparator cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_insertSeparator" qtc_QToolBar_insertSeparator :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> IO (Ptr (TQAction ()))

instance QinsertWidget (QToolBar a) ((QAction t1, QWidget t2)) (IO (QAction ())) where
 insertWidget x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBar_insertWidget cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QToolBar_insertWidget" qtc_QToolBar_insertWidget :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQAction ()))

instance QisAreaAllowed (QToolBar a) ((ToolBarArea)) where
 isAreaAllowed x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_isAreaAllowed cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBar_isAreaAllowed" qtc_QToolBar_isAreaAllowed :: Ptr (TQToolBar a) -> CLong -> IO CBool

isFloatable :: QToolBar a -> (()) -> IO (Bool)
isFloatable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_isFloatable cobj_x0

foreign import ccall "qtc_QToolBar_isFloatable" qtc_QToolBar_isFloatable :: Ptr (TQToolBar a) -> IO CBool

instance QisFloating (QToolBar a) (()) where
 isFloating x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_isFloating cobj_x0

foreign import ccall "qtc_QToolBar_isFloating" qtc_QToolBar_isFloating :: Ptr (TQToolBar a) -> IO CBool

instance QisMovable (QToolBar a) (()) where
 isMovable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_isMovable cobj_x0

foreign import ccall "qtc_QToolBar_isMovable" qtc_QToolBar_isMovable :: Ptr (TQToolBar a) -> IO CBool

instance Qorientation (QToolBar a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_orientation cobj_x0

foreign import ccall "qtc_QToolBar_orientation" qtc_QToolBar_orientation :: Ptr (TQToolBar a) -> IO CLong

instance QpaintEvent (QToolBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_paintEvent_h" qtc_QToolBar_paintEvent_h :: Ptr (TQToolBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QToolBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QToolBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_resizeEvent_h" qtc_QToolBar_resizeEvent_h :: Ptr (TQToolBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QToolBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetAllowedAreas (QToolBar a) ((ToolBarAreas)) where
 setAllowedAreas x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setAllowedAreas cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QToolBar_setAllowedAreas" qtc_QToolBar_setAllowedAreas :: Ptr (TQToolBar a) -> CLong -> IO ()

instance QsetFloatable (QToolBar a) ((Bool)) where
 setFloatable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setFloatable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_setFloatable" qtc_QToolBar_setFloatable :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QqsetIconSize (QToolBar a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_setIconSize" qtc_QToolBar_setIconSize :: Ptr (TQToolBar a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QToolBar a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolBar_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QToolBar_setIconSize_qth" qtc_QToolBar_setIconSize_qth :: Ptr (TQToolBar a) -> CInt -> CInt -> IO ()

instance QsetMovable (QToolBar a) ((Bool)) where
 setMovable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setMovable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_setMovable" qtc_QToolBar_setMovable :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QsetOrientation (QToolBar a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBar_setOrientation" qtc_QToolBar_setOrientation :: Ptr (TQToolBar a) -> CLong -> IO ()

instance QsetToolButtonStyle (QToolBar a) ((ToolButtonStyle)) where
 setToolButtonStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setToolButtonStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBar_setToolButtonStyle" qtc_QToolBar_setToolButtonStyle :: Ptr (TQToolBar a) -> CLong -> IO ()

instance QtoggleViewAction (QToolBar a) (()) where
 toggleViewAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_toggleViewAction cobj_x0

foreign import ccall "qtc_QToolBar_toggleViewAction" qtc_QToolBar_toggleViewAction :: Ptr (TQToolBar a) -> IO (Ptr (TQAction ()))

instance QtoolButtonStyle (QToolBar a) (()) where
 toolButtonStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_toolButtonStyle cobj_x0

foreign import ccall "qtc_QToolBar_toolButtonStyle" qtc_QToolBar_toolButtonStyle :: Ptr (TQToolBar a) -> IO CLong

widgetForAction :: QToolBar a -> ((QAction t1)) -> IO (QWidget ())
widgetForAction x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_widgetForAction cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_widgetForAction" qtc_QToolBar_widgetForAction :: Ptr (TQToolBar a) -> Ptr (TQAction t1) -> IO (Ptr (TQWidget ()))

qToolBar_delete :: QToolBar a -> IO ()
qToolBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_delete cobj_x0

foreign import ccall "qtc_QToolBar_delete" qtc_QToolBar_delete :: Ptr (TQToolBar a) -> IO ()

qToolBar_deleteLater :: QToolBar a -> IO ()
qToolBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_deleteLater cobj_x0

foreign import ccall "qtc_QToolBar_deleteLater" qtc_QToolBar_deleteLater :: Ptr (TQToolBar a) -> IO ()

instance QcloseEvent (QToolBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_closeEvent_h" qtc_QToolBar_closeEvent_h :: Ptr (TQToolBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QToolBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QToolBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_contextMenuEvent_h" qtc_QToolBar_contextMenuEvent_h :: Ptr (TQToolBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QToolBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QToolBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_create cobj_x0

foreign import ccall "qtc_QToolBar_create" qtc_QToolBar_create :: Ptr (TQToolBar a) -> IO ()

instance Qcreate (QToolBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_create cobj_x0

instance Qcreate (QToolBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_create1" qtc_QToolBar_create1 :: Ptr (TQToolBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QToolBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create1 cobj_x0 cobj_x1

instance Qcreate (QToolBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QToolBar_create2" qtc_QToolBar_create2 :: Ptr (TQToolBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QToolBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QToolBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QToolBar_create3" qtc_QToolBar_create3 :: Ptr (TQToolBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QToolBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QToolBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy cobj_x0

foreign import ccall "qtc_QToolBar_destroy" qtc_QToolBar_destroy :: Ptr (TQToolBar a) -> IO ()

instance Qdestroy (QToolBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy cobj_x0

instance Qdestroy (QToolBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_destroy1" qtc_QToolBar_destroy1 :: Ptr (TQToolBar a) -> CBool -> IO ()

instance Qdestroy (QToolBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QToolBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QToolBar_destroy2" qtc_QToolBar_destroy2 :: Ptr (TQToolBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QToolBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QToolBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_devType_h cobj_x0

foreign import ccall "qtc_QToolBar_devType_h" qtc_QToolBar_devType_h :: Ptr (TQToolBar a) -> IO CInt

instance QdevType (QToolBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_devType_h cobj_x0

instance QdragEnterEvent (QToolBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_dragEnterEvent_h" qtc_QToolBar_dragEnterEvent_h :: Ptr (TQToolBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QToolBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QToolBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_dragLeaveEvent_h" qtc_QToolBar_dragLeaveEvent_h :: Ptr (TQToolBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QToolBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QToolBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_dragMoveEvent_h" qtc_QToolBar_dragMoveEvent_h :: Ptr (TQToolBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QToolBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QToolBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_dropEvent_h" qtc_QToolBar_dropEvent_h :: Ptr (TQToolBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QToolBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QToolBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_enabledChange" qtc_QToolBar_enabledChange :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QenabledChange (QToolBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QToolBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_enterEvent_h" qtc_QToolBar_enterEvent_h :: Ptr (TQToolBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QToolBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QToolBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_focusInEvent_h" qtc_QToolBar_focusInEvent_h :: Ptr (TQToolBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QToolBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QToolBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusNextChild cobj_x0

foreign import ccall "qtc_QToolBar_focusNextChild" qtc_QToolBar_focusNextChild :: Ptr (TQToolBar a) -> IO CBool

instance QfocusNextChild (QToolBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QToolBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_focusNextPrevChild" qtc_QToolBar_focusNextPrevChild :: Ptr (TQToolBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QToolBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QToolBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_focusOutEvent_h" qtc_QToolBar_focusOutEvent_h :: Ptr (TQToolBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QToolBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QToolBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QToolBar_focusPreviousChild" qtc_QToolBar_focusPreviousChild :: Ptr (TQToolBar a) -> IO CBool

instance QfocusPreviousChild (QToolBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_focusPreviousChild cobj_x0

instance QfontChange (QToolBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_fontChange" qtc_QToolBar_fontChange :: Ptr (TQToolBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QToolBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QToolBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBar_heightForWidth_h" qtc_QToolBar_heightForWidth_h :: Ptr (TQToolBar a) -> CInt -> IO CInt

instance QheightForWidth (QToolBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QToolBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_hideEvent_h" qtc_QToolBar_hideEvent_h :: Ptr (TQToolBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QToolBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QToolBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_inputMethodEvent" qtc_QToolBar_inputMethodEvent :: Ptr (TQToolBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QToolBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QToolBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBar_inputMethodQuery_h" qtc_QToolBar_inputMethodQuery_h :: Ptr (TQToolBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QToolBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QToolBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_keyPressEvent_h" qtc_QToolBar_keyPressEvent_h :: Ptr (TQToolBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QToolBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QToolBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_keyReleaseEvent_h" qtc_QToolBar_keyReleaseEvent_h :: Ptr (TQToolBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QToolBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QToolBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_languageChange cobj_x0

foreign import ccall "qtc_QToolBar_languageChange" qtc_QToolBar_languageChange :: Ptr (TQToolBar a) -> IO ()

instance QlanguageChange (QToolBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_languageChange cobj_x0

instance QleaveEvent (QToolBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_leaveEvent_h" qtc_QToolBar_leaveEvent_h :: Ptr (TQToolBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QToolBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QToolBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBar_metric" qtc_QToolBar_metric :: Ptr (TQToolBar a) -> CLong -> IO CInt

instance Qmetric (QToolBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QToolBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QToolBar_minimumSizeHint_h" qtc_QToolBar_minimumSizeHint_h :: Ptr (TQToolBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QToolBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QToolBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolBar_minimumSizeHint_qth_h" qtc_QToolBar_minimumSizeHint_qth_h :: Ptr (TQToolBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QToolBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QToolBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_mouseDoubleClickEvent_h" qtc_QToolBar_mouseDoubleClickEvent_h :: Ptr (TQToolBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QToolBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QToolBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_mouseMoveEvent_h" qtc_QToolBar_mouseMoveEvent_h :: Ptr (TQToolBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QToolBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QToolBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_mousePressEvent_h" qtc_QToolBar_mousePressEvent_h :: Ptr (TQToolBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QToolBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QToolBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_mouseReleaseEvent_h" qtc_QToolBar_mouseReleaseEvent_h :: Ptr (TQToolBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QToolBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QToolBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolBar_move1" qtc_QToolBar_move1 :: Ptr (TQToolBar a) -> CInt -> CInt -> IO ()

instance Qmove (QToolBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QToolBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QToolBar_move_qth" qtc_QToolBar_move_qth :: Ptr (TQToolBar a) -> CInt -> CInt -> IO ()

instance Qmove (QToolBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QToolBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_move" qtc_QToolBar_move :: Ptr (TQToolBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QToolBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_move cobj_x0 cobj_x1

instance QmoveEvent (QToolBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_moveEvent_h" qtc_QToolBar_moveEvent_h :: Ptr (TQToolBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QToolBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QToolBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QToolBar_paintEngine_h" qtc_QToolBar_paintEngine_h :: Ptr (TQToolBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QToolBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_paintEngine_h cobj_x0

instance QpaletteChange (QToolBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_paletteChange" qtc_QToolBar_paletteChange :: Ptr (TQToolBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QToolBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QToolBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_repaint cobj_x0

foreign import ccall "qtc_QToolBar_repaint" qtc_QToolBar_repaint :: Ptr (TQToolBar a) -> IO ()

instance Qrepaint (QToolBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_repaint cobj_x0

instance Qrepaint (QToolBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolBar_repaint2" qtc_QToolBar_repaint2 :: Ptr (TQToolBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QToolBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QToolBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_repaint1" qtc_QToolBar_repaint1 :: Ptr (TQToolBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QToolBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QToolBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_resetInputContext cobj_x0

foreign import ccall "qtc_QToolBar_resetInputContext" qtc_QToolBar_resetInputContext :: Ptr (TQToolBar a) -> IO ()

instance QresetInputContext (QToolBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_resetInputContext cobj_x0

instance Qresize (QToolBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolBar_resize1" qtc_QToolBar_resize1 :: Ptr (TQToolBar a) -> CInt -> CInt -> IO ()

instance Qresize (QToolBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QToolBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_resize" qtc_QToolBar_resize :: Ptr (TQToolBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QToolBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_resize cobj_x0 cobj_x1

instance Qresize (QToolBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QToolBar_resize_qth" qtc_QToolBar_resize_qth :: Ptr (TQToolBar a) -> CInt -> CInt -> IO ()

instance Qresize (QToolBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QToolBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolBar_setGeometry1" qtc_QToolBar_setGeometry1 :: Ptr (TQToolBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QToolBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_setGeometry" qtc_QToolBar_setGeometry :: Ptr (TQToolBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QToolBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QToolBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QToolBar_setGeometry_qth" qtc_QToolBar_setGeometry_qth :: Ptr (TQToolBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QToolBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_setMouseTracking" qtc_QToolBar_setMouseTracking :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QsetMouseTracking (QToolBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QToolBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_setVisible_h" qtc_QToolBar_setVisible_h :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QsetVisible (QToolBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QToolBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_showEvent_h" qtc_QToolBar_showEvent_h :: Ptr (TQToolBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QToolBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QToolBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QToolBar_sizeHint_h" qtc_QToolBar_sizeHint_h :: Ptr (TQToolBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QToolBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sizeHint_h cobj_x0

instance QsizeHint (QToolBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolBar_sizeHint_qth_h" qtc_QToolBar_sizeHint_qth_h :: Ptr (TQToolBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QToolBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QToolBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_tabletEvent_h" qtc_QToolBar_tabletEvent_h :: Ptr (TQToolBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QToolBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QToolBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QToolBar_updateMicroFocus" qtc_QToolBar_updateMicroFocus :: Ptr (TQToolBar a) -> IO ()

instance QupdateMicroFocus (QToolBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_updateMicroFocus cobj_x0

instance QwheelEvent (QToolBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_wheelEvent_h" qtc_QToolBar_wheelEvent_h :: Ptr (TQToolBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QToolBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QToolBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBar_windowActivationChange" qtc_QToolBar_windowActivationChange :: Ptr (TQToolBar a) -> CBool -> IO ()

instance QwindowActivationChange (QToolBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_windowActivationChange cobj_x0 (toCBool x1)

instance QconnectNotify (QToolBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBar_connectNotify" qtc_QToolBar_connectNotify :: Ptr (TQToolBar a) -> CWString -> IO ()

instance QconnectNotify (QToolBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QToolBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_customEvent" qtc_QToolBar_customEvent :: Ptr (TQToolBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QToolBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QToolBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBar_disconnectNotify" qtc_QToolBar_disconnectNotify :: Ptr (TQToolBar a) -> CWString -> IO ()

instance QdisconnectNotify (QToolBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QToolBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QToolBar_eventFilter_h" qtc_QToolBar_eventFilter_h :: Ptr (TQToolBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QToolBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QToolBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBar_receivers" qtc_QToolBar_receivers :: Ptr (TQToolBar a) -> CWString -> IO CInt

instance Qreceivers (QToolBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBar_receivers cobj_x0 cstr_x1

instance Qsender (QToolBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sender cobj_x0

foreign import ccall "qtc_QToolBar_sender" qtc_QToolBar_sender :: Ptr (TQToolBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QToolBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBar_sender cobj_x0

instance QtimerEvent (QToolBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBar_timerEvent" qtc_QToolBar_timerEvent :: Ptr (TQToolBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QToolBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBar_timerEvent cobj_x0 cobj_x1

