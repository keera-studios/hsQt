{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMainWindow.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMainWindow (
  QqMainWindow(..)
  ,QaddDockWidget(..)
  ,QaddToolBar(..)
  ,QaddToolBarBreak(..)
  ,centralWidget
  ,QcreatePopupMenu(..)
  ,dockOptions
  ,dockWidgetArea
  ,insertToolBar
  ,insertToolBarBreak
  ,isDockNestingEnabled
  ,qisSeparator
  ,menuWidget
  ,removeDockWidget
  ,removeToolBar
  ,removeToolBarBreak
  ,setCentralWidget
  ,setDockNestingEnabled
  ,setDockOptions
  ,setMenuWidget
  ,setStatusBar
  ,setUnifiedTitleAndToolBarOnMac
  ,splitDockWidget
  ,statusBar
  ,tabifyDockWidget
  ,toolBarBreak
  ,unifiedTitleAndToolBarOnMac
  ,qMainWindow_delete
  ,qMainWindow_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QMainWindow
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QMainWindow ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMainWindow_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMainWindow_userMethod" qtc_QMainWindow_userMethod :: Ptr (TQMainWindow a) -> CInt -> IO ()

instance QuserMethod (QMainWindowSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMainWindow_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMainWindow ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMainWindow_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMainWindow_userMethodVariant" qtc_QMainWindow_userMethodVariant :: Ptr (TQMainWindow a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMainWindowSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMainWindow_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqMainWindow x1 where
  qMainWindow :: x1 -> IO (QMainWindow ())

instance QqMainWindow (()) where
 qMainWindow ()
  = withQMainWindowResult $
    qtc_QMainWindow

foreign import ccall "qtc_QMainWindow" qtc_QMainWindow :: IO (Ptr (TQMainWindow ()))

instance QqMainWindow ((QWidget t1)) where
 qMainWindow (x1)
  = withQMainWindowResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow1 cobj_x1

foreign import ccall "qtc_QMainWindow1" qtc_QMainWindow1 :: Ptr (TQWidget t1) -> IO (Ptr (TQMainWindow ()))

instance QqMainWindow ((QWidget t1, WindowFlags)) where
 qMainWindow (x1, x2)
  = withQMainWindowResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QMainWindow2" qtc_QMainWindow2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQMainWindow ()))

class QaddDockWidget x1 where
 addDockWidget :: QMainWindow a -> x1 -> IO ()

instance QaddDockWidget ((DockWidgetArea, QDockWidget t2)) where
 addDockWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_addDockWidget cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QMainWindow_addDockWidget" qtc_QMainWindow_addDockWidget :: Ptr (TQMainWindow a) -> CLong -> Ptr (TQDockWidget t2) -> IO ()

instance QaddDockWidget ((DockWidgetArea, QDockWidget t2, QtOrientation)) where
 addDockWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_addDockWidget1 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QMainWindow_addDockWidget1" qtc_QMainWindow_addDockWidget1 :: Ptr (TQMainWindow a) -> CLong -> Ptr (TQDockWidget t2) -> CLong -> IO ()

class QaddToolBar x1 xr where
 addToolBar :: QMainWindow a -> x1 -> xr

instance QaddToolBar ((QToolBar t1)) (IO ()) where
 addToolBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_addToolBar cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_addToolBar" qtc_QMainWindow_addToolBar :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO ()

instance QaddToolBar ((ToolBarArea, QToolBar t2)) (IO ()) where
 addToolBar x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_addToolBar2 cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QMainWindow_addToolBar2" qtc_QMainWindow_addToolBar2 :: Ptr (TQMainWindow a) -> CLong -> Ptr (TQToolBar t2) -> IO ()

instance QaddToolBar ((String)) (IO (QToolBar ())) where
 addToolBar x0 (x1)
  = withQToolBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_addToolBar1 cobj_x0 cstr_x1

foreign import ccall "qtc_QMainWindow_addToolBar1" qtc_QMainWindow_addToolBar1 :: Ptr (TQMainWindow a) -> CWString -> IO (Ptr (TQToolBar ()))

class QaddToolBarBreak x1 where
 addToolBarBreak :: QMainWindow a -> x1 -> IO ()

instance QaddToolBarBreak (()) where
 addToolBarBreak x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_addToolBarBreak cobj_x0

foreign import ccall "qtc_QMainWindow_addToolBarBreak" qtc_QMainWindow_addToolBarBreak :: Ptr (TQMainWindow a) -> IO ()

instance QaddToolBarBreak ((ToolBarArea)) where
 addToolBarBreak x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_addToolBarBreak1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMainWindow_addToolBarBreak1" qtc_QMainWindow_addToolBarBreak1 :: Ptr (TQMainWindow a) -> CLong -> IO ()

centralWidget :: QMainWindow a -> (()) -> IO (QWidget ())
centralWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_centralWidget cobj_x0

foreign import ccall "qtc_QMainWindow_centralWidget" qtc_QMainWindow_centralWidget :: Ptr (TQMainWindow a) -> IO (Ptr (TQWidget ()))

instance QcontextMenuEvent (QMainWindow ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_contextMenuEvent_h" qtc_QMainWindow_contextMenuEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QMainWindowSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcorner (QMainWindow a) ((Corner)) (IO (DockWidgetArea)) where
 corner x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_corner cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMainWindow_corner" qtc_QMainWindow_corner :: Ptr (TQMainWindow a) -> CLong -> IO CLong

class QcreatePopupMenu x0 x1 where
 createPopupMenu :: x0 -> x1 -> IO (QMenu ())

instance QcreatePopupMenu (QMainWindow ()) (()) where
 createPopupMenu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_createPopupMenu_h cobj_x0

foreign import ccall "qtc_QMainWindow_createPopupMenu_h" qtc_QMainWindow_createPopupMenu_h :: Ptr (TQMainWindow a) -> IO (Ptr (TQMenu ()))

instance QcreatePopupMenu (QMainWindowSc a) (()) where
 createPopupMenu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_createPopupMenu_h cobj_x0

dockOptions :: QMainWindow a -> (()) -> IO (DockOptions)
dockOptions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_dockOptions cobj_x0

foreign import ccall "qtc_QMainWindow_dockOptions" qtc_QMainWindow_dockOptions :: Ptr (TQMainWindow a) -> IO CLong

dockWidgetArea :: QMainWindow a -> ((QDockWidget t1)) -> IO (DockWidgetArea)
dockWidgetArea x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dockWidgetArea cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_dockWidgetArea" qtc_QMainWindow_dockWidgetArea :: Ptr (TQMainWindow a) -> Ptr (TQDockWidget t1) -> IO CLong

instance Qevent (QMainWindow ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_event_h" qtc_QMainWindow_event_h :: Ptr (TQMainWindow a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMainWindowSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_event_h cobj_x0 cobj_x1

instance QqiconSize (QMainWindow a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_iconSize cobj_x0

foreign import ccall "qtc_QMainWindow_iconSize" qtc_QMainWindow_iconSize :: Ptr (TQMainWindow a) -> IO (Ptr (TQSize ()))

instance QiconSize (QMainWindow a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMainWindow_iconSize_qth" qtc_QMainWindow_iconSize_qth :: Ptr (TQMainWindow a) -> Ptr CInt -> Ptr CInt -> IO ()

insertToolBar :: QMainWindow a -> ((QToolBar t1, QToolBar t2)) -> IO ()
insertToolBar x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_insertToolBar cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMainWindow_insertToolBar" qtc_QMainWindow_insertToolBar :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> Ptr (TQToolBar t2) -> IO ()

insertToolBarBreak :: QMainWindow a -> ((QToolBar t1)) -> IO ()
insertToolBarBreak x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_insertToolBarBreak cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_insertToolBarBreak" qtc_QMainWindow_insertToolBarBreak :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO ()

instance QisAnimated (QMainWindow a) (()) where
 isAnimated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_isAnimated cobj_x0

foreign import ccall "qtc_QMainWindow_isAnimated" qtc_QMainWindow_isAnimated :: Ptr (TQMainWindow a) -> IO CBool

isDockNestingEnabled :: QMainWindow a -> (()) -> IO (Bool)
isDockNestingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_isDockNestingEnabled cobj_x0

foreign import ccall "qtc_QMainWindow_isDockNestingEnabled" qtc_QMainWindow_isDockNestingEnabled :: Ptr (TQMainWindow a) -> IO CBool

instance QisSeparator (QMainWindow a) ((Point)) where
 isSeparator x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMainWindow_isSeparator_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMainWindow_isSeparator_qth" qtc_QMainWindow_isSeparator_qth :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO CBool

qisSeparator :: QMainWindow a -> ((QPoint t1)) -> IO (Bool)
qisSeparator x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_isSeparator cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_isSeparator" qtc_QMainWindow_isSeparator :: Ptr (TQMainWindow a) -> Ptr (TQPoint t1) -> IO CBool

instance QmenuBar (QMainWindow a) (()) (IO (QMenuBar ())) where
 menuBar x0 ()
  = withQMenuBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_menuBar cobj_x0

foreign import ccall "qtc_QMainWindow_menuBar" qtc_QMainWindow_menuBar :: Ptr (TQMainWindow a) -> IO (Ptr (TQMenuBar ()))

menuWidget :: QMainWindow a -> (()) -> IO (QWidget ())
menuWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_menuWidget cobj_x0

foreign import ccall "qtc_QMainWindow_menuWidget" qtc_QMainWindow_menuWidget :: Ptr (TQMainWindow a) -> IO (Ptr (TQWidget ()))

removeDockWidget :: QMainWindow a -> ((QDockWidget t1)) -> IO ()
removeDockWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_removeDockWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_removeDockWidget" qtc_QMainWindow_removeDockWidget :: Ptr (TQMainWindow a) -> Ptr (TQDockWidget t1) -> IO ()

removeToolBar :: QMainWindow a -> ((QToolBar t1)) -> IO ()
removeToolBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_removeToolBar cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_removeToolBar" qtc_QMainWindow_removeToolBar :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO ()

removeToolBarBreak :: QMainWindow a -> ((QToolBar t1)) -> IO ()
removeToolBarBreak x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_removeToolBarBreak cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_removeToolBarBreak" qtc_QMainWindow_removeToolBarBreak :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO ()

instance QrestoreState (QMainWindow a) ((QByteArray ())) where
 restoreState x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_restoreState cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_restoreState" qtc_QMainWindow_restoreState :: Ptr (TQMainWindow a) -> Ptr (TQByteArray ()) -> IO CBool

instance QrestoreState (QMainWindow a) ((QByteArray (), Int)) where
 restoreState x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_restoreState1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QMainWindow_restoreState1" qtc_QMainWindow_restoreState1 :: Ptr (TQMainWindow a) -> Ptr (TQByteArray ()) -> CInt -> IO CBool

instance QsaveState (QMainWindow a) (()) where
 saveState x0 ()
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_saveState cobj_x0

foreign import ccall "qtc_QMainWindow_saveState" qtc_QMainWindow_saveState :: Ptr (TQMainWindow a) -> IO (Ptr (TQByteArray ()))

instance QsaveState (QMainWindow a) ((Int)) where
 saveState x0 (x1)
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_saveState1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMainWindow_saveState1" qtc_QMainWindow_saveState1 :: Ptr (TQMainWindow a) -> CInt -> IO (Ptr (TQByteArray ()))

instance QsetAnimated (QMainWindow a) ((Bool)) where
 setAnimated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setAnimated cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_setAnimated" qtc_QMainWindow_setAnimated :: Ptr (TQMainWindow a) -> CBool -> IO ()

setCentralWidget :: QMainWindow a -> ((QWidget t1)) -> IO ()
setCentralWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setCentralWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setCentralWidget" qtc_QMainWindow_setCentralWidget :: Ptr (TQMainWindow a) -> Ptr (TQWidget t1) -> IO ()

instance QsetCorner (QMainWindow a) ((Corner, DockWidgetArea)) where
 setCorner x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setCorner cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMainWindow_setCorner" qtc_QMainWindow_setCorner :: Ptr (TQMainWindow a) -> CLong -> CLong -> IO ()

setDockNestingEnabled :: QMainWindow a -> ((Bool)) -> IO ()
setDockNestingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setDockNestingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_setDockNestingEnabled" qtc_QMainWindow_setDockNestingEnabled :: Ptr (TQMainWindow a) -> CBool -> IO ()

setDockOptions :: QMainWindow a -> ((DockOptions)) -> IO ()
setDockOptions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setDockOptions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QMainWindow_setDockOptions" qtc_QMainWindow_setDockOptions :: Ptr (TQMainWindow a) -> CLong -> IO ()

instance QqsetIconSize (QMainWindow a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setIconSize" qtc_QMainWindow_setIconSize :: Ptr (TQMainWindow a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QMainWindow a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMainWindow_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMainWindow_setIconSize_qth" qtc_QMainWindow_setIconSize_qth :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO ()

instance QsetMenuBar (QMainWindow a) ((QMenuBar t1)) where
 setMenuBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setMenuBar cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setMenuBar" qtc_QMainWindow_setMenuBar :: Ptr (TQMainWindow a) -> Ptr (TQMenuBar t1) -> IO ()

setMenuWidget :: QMainWindow a -> ((QWidget t1)) -> IO ()
setMenuWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setMenuWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setMenuWidget" qtc_QMainWindow_setMenuWidget :: Ptr (TQMainWindow a) -> Ptr (TQWidget t1) -> IO ()

setStatusBar :: QMainWindow a -> ((QStatusBar t1)) -> IO ()
setStatusBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setStatusBar cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setStatusBar" qtc_QMainWindow_setStatusBar :: Ptr (TQMainWindow a) -> Ptr (TQStatusBar t1) -> IO ()

instance QsetToolButtonStyle (QMainWindow a) ((ToolButtonStyle)) where
 setToolButtonStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setToolButtonStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMainWindow_setToolButtonStyle" qtc_QMainWindow_setToolButtonStyle :: Ptr (TQMainWindow a) -> CLong -> IO ()

setUnifiedTitleAndToolBarOnMac :: QMainWindow a -> ((Bool)) -> IO ()
setUnifiedTitleAndToolBarOnMac x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setUnifiedTitleAndToolBarOnMac cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_setUnifiedTitleAndToolBarOnMac" qtc_QMainWindow_setUnifiedTitleAndToolBarOnMac :: Ptr (TQMainWindow a) -> CBool -> IO ()

splitDockWidget :: QMainWindow a -> ((QDockWidget t1, QDockWidget t2, QtOrientation)) -> IO ()
splitDockWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_splitDockWidget cobj_x0 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QMainWindow_splitDockWidget" qtc_QMainWindow_splitDockWidget :: Ptr (TQMainWindow a) -> Ptr (TQDockWidget t1) -> Ptr (TQDockWidget t2) -> CLong -> IO ()

statusBar :: QMainWindow a -> (()) -> IO (QStatusBar ())
statusBar x0 ()
  = withQStatusBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_statusBar cobj_x0

foreign import ccall "qtc_QMainWindow_statusBar" qtc_QMainWindow_statusBar :: Ptr (TQMainWindow a) -> IO (Ptr (TQStatusBar ()))

tabifyDockWidget :: QMainWindow a -> ((QDockWidget t1, QDockWidget t2)) -> IO ()
tabifyDockWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_tabifyDockWidget cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMainWindow_tabifyDockWidget" qtc_QMainWindow_tabifyDockWidget :: Ptr (TQMainWindow a) -> Ptr (TQDockWidget t1) -> Ptr (TQDockWidget t2) -> IO ()

instance QtoolBarArea (QMainWindow a) ((QToolBar t1)) where
 toolBarArea x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_toolBarArea cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_toolBarArea" qtc_QMainWindow_toolBarArea :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO CLong

toolBarBreak :: QMainWindow a -> ((QToolBar t1)) -> IO (Bool)
toolBarBreak x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_toolBarBreak cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_toolBarBreak" qtc_QMainWindow_toolBarBreak :: Ptr (TQMainWindow a) -> Ptr (TQToolBar t1) -> IO CBool

instance QtoolButtonStyle (QMainWindow a) (()) where
 toolButtonStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_toolButtonStyle cobj_x0

foreign import ccall "qtc_QMainWindow_toolButtonStyle" qtc_QMainWindow_toolButtonStyle :: Ptr (TQMainWindow a) -> IO CLong

unifiedTitleAndToolBarOnMac :: QMainWindow a -> (()) -> IO (Bool)
unifiedTitleAndToolBarOnMac x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_unifiedTitleAndToolBarOnMac cobj_x0

foreign import ccall "qtc_QMainWindow_unifiedTitleAndToolBarOnMac" qtc_QMainWindow_unifiedTitleAndToolBarOnMac :: Ptr (TQMainWindow a) -> IO CBool

qMainWindow_delete :: QMainWindow a -> IO ()
qMainWindow_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_delete cobj_x0

foreign import ccall "qtc_QMainWindow_delete" qtc_QMainWindow_delete :: Ptr (TQMainWindow a) -> IO ()

qMainWindow_deleteLater :: QMainWindow a -> IO ()
qMainWindow_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_deleteLater cobj_x0

foreign import ccall "qtc_QMainWindow_deleteLater" qtc_QMainWindow_deleteLater :: Ptr (TQMainWindow a) -> IO ()

instance QactionEvent (QMainWindow ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_actionEvent_h" qtc_QMainWindow_actionEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QMainWindowSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QMainWindow ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_addAction" qtc_QMainWindow_addAction :: Ptr (TQMainWindow a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QMainWindowSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_addAction cobj_x0 cobj_x1

instance QchangeEvent (QMainWindow ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_changeEvent_h" qtc_QMainWindow_changeEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QMainWindowSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QMainWindow ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_closeEvent_h" qtc_QMainWindow_closeEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QMainWindowSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QMainWindow ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_create cobj_x0

foreign import ccall "qtc_QMainWindow_create" qtc_QMainWindow_create :: Ptr (TQMainWindow a) -> IO ()

instance Qcreate (QMainWindowSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_create cobj_x0

instance Qcreate (QMainWindow ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_create1" qtc_QMainWindow_create1 :: Ptr (TQMainWindow a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QMainWindowSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create1 cobj_x0 cobj_x1

instance Qcreate (QMainWindow ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QMainWindow_create2" qtc_QMainWindow_create2 :: Ptr (TQMainWindow a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QMainWindowSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QMainWindow ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QMainWindow_create3" qtc_QMainWindow_create3 :: Ptr (TQMainWindow a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QMainWindowSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QMainWindow ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy cobj_x0

foreign import ccall "qtc_QMainWindow_destroy" qtc_QMainWindow_destroy :: Ptr (TQMainWindow a) -> IO ()

instance Qdestroy (QMainWindowSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy cobj_x0

instance Qdestroy (QMainWindow ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_destroy1" qtc_QMainWindow_destroy1 :: Ptr (TQMainWindow a) -> CBool -> IO ()

instance Qdestroy (QMainWindowSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QMainWindow ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QMainWindow_destroy2" qtc_QMainWindow_destroy2 :: Ptr (TQMainWindow a) -> CBool -> CBool -> IO ()

instance Qdestroy (QMainWindowSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QMainWindow ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_devType_h cobj_x0

foreign import ccall "qtc_QMainWindow_devType_h" qtc_QMainWindow_devType_h :: Ptr (TQMainWindow a) -> IO CInt

instance QdevType (QMainWindowSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_devType_h cobj_x0

instance QdragEnterEvent (QMainWindow ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_dragEnterEvent_h" qtc_QMainWindow_dragEnterEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QMainWindowSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QMainWindow ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_dragLeaveEvent_h" qtc_QMainWindow_dragLeaveEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QMainWindowSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QMainWindow ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_dragMoveEvent_h" qtc_QMainWindow_dragMoveEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QMainWindowSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QMainWindow ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_dropEvent_h" qtc_QMainWindow_dropEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QMainWindowSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QMainWindow ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_enabledChange" qtc_QMainWindow_enabledChange :: Ptr (TQMainWindow a) -> CBool -> IO ()

instance QenabledChange (QMainWindowSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QMainWindow ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_enterEvent_h" qtc_QMainWindow_enterEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QMainWindowSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QMainWindow ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_focusInEvent_h" qtc_QMainWindow_focusInEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QMainWindowSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QMainWindow ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusNextChild cobj_x0

foreign import ccall "qtc_QMainWindow_focusNextChild" qtc_QMainWindow_focusNextChild :: Ptr (TQMainWindow a) -> IO CBool

instance QfocusNextChild (QMainWindowSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusNextChild cobj_x0

instance QfocusNextPrevChild (QMainWindow ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_focusNextPrevChild" qtc_QMainWindow_focusNextPrevChild :: Ptr (TQMainWindow a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QMainWindowSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QMainWindow ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_focusOutEvent_h" qtc_QMainWindow_focusOutEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QMainWindowSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QMainWindow ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusPreviousChild cobj_x0

foreign import ccall "qtc_QMainWindow_focusPreviousChild" qtc_QMainWindow_focusPreviousChild :: Ptr (TQMainWindow a) -> IO CBool

instance QfocusPreviousChild (QMainWindowSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_focusPreviousChild cobj_x0

instance QfontChange (QMainWindow ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_fontChange" qtc_QMainWindow_fontChange :: Ptr (TQMainWindow a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QMainWindowSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QMainWindow ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMainWindow_heightForWidth_h" qtc_QMainWindow_heightForWidth_h :: Ptr (TQMainWindow a) -> CInt -> IO CInt

instance QheightForWidth (QMainWindowSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QMainWindow ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_hideEvent_h" qtc_QMainWindow_hideEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QMainWindowSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QMainWindow ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_inputMethodEvent" qtc_QMainWindow_inputMethodEvent :: Ptr (TQMainWindow a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QMainWindowSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QMainWindow ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMainWindow_inputMethodQuery_h" qtc_QMainWindow_inputMethodQuery_h :: Ptr (TQMainWindow a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QMainWindowSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QMainWindow ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_keyPressEvent_h" qtc_QMainWindow_keyPressEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QMainWindowSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QMainWindow ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_keyReleaseEvent_h" qtc_QMainWindow_keyReleaseEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QMainWindowSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QMainWindow ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_languageChange cobj_x0

foreign import ccall "qtc_QMainWindow_languageChange" qtc_QMainWindow_languageChange :: Ptr (TQMainWindow a) -> IO ()

instance QlanguageChange (QMainWindowSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_languageChange cobj_x0

instance QleaveEvent (QMainWindow ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_leaveEvent_h" qtc_QMainWindow_leaveEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QMainWindowSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QMainWindow ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMainWindow_metric" qtc_QMainWindow_metric :: Ptr (TQMainWindow a) -> CLong -> IO CInt

instance Qmetric (QMainWindowSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QMainWindow ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QMainWindow_minimumSizeHint_h" qtc_QMainWindow_minimumSizeHint_h :: Ptr (TQMainWindow a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QMainWindowSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QMainWindow ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMainWindow_minimumSizeHint_qth_h" qtc_QMainWindow_minimumSizeHint_qth_h :: Ptr (TQMainWindow a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QMainWindowSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QMainWindow ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_mouseDoubleClickEvent_h" qtc_QMainWindow_mouseDoubleClickEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QMainWindowSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QMainWindow ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_mouseMoveEvent_h" qtc_QMainWindow_mouseMoveEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QMainWindowSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QMainWindow ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_mousePressEvent_h" qtc_QMainWindow_mousePressEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QMainWindowSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QMainWindow ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_mouseReleaseEvent_h" qtc_QMainWindow_mouseReleaseEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QMainWindowSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QMainWindow ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMainWindow_move1" qtc_QMainWindow_move1 :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO ()

instance Qmove (QMainWindowSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QMainWindow ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMainWindow_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMainWindow_move_qth" qtc_QMainWindow_move_qth :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO ()

instance Qmove (QMainWindowSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMainWindow_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QMainWindow ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_move cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_move" qtc_QMainWindow_move :: Ptr (TQMainWindow a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QMainWindowSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_move cobj_x0 cobj_x1

instance QmoveEvent (QMainWindow ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_moveEvent_h" qtc_QMainWindow_moveEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QMainWindowSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QMainWindow ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_paintEngine_h cobj_x0

foreign import ccall "qtc_QMainWindow_paintEngine_h" qtc_QMainWindow_paintEngine_h :: Ptr (TQMainWindow a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QMainWindowSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_paintEngine_h cobj_x0

instance QpaintEvent (QMainWindow ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_paintEvent_h" qtc_QMainWindow_paintEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QMainWindowSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QMainWindow ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_paletteChange" qtc_QMainWindow_paletteChange :: Ptr (TQMainWindow a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QMainWindowSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QMainWindow ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_repaint cobj_x0

foreign import ccall "qtc_QMainWindow_repaint" qtc_QMainWindow_repaint :: Ptr (TQMainWindow a) -> IO ()

instance Qrepaint (QMainWindowSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_repaint cobj_x0

instance Qrepaint (QMainWindow ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMainWindow_repaint2" qtc_QMainWindow_repaint2 :: Ptr (TQMainWindow a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QMainWindowSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QMainWindow ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_repaint1" qtc_QMainWindow_repaint1 :: Ptr (TQMainWindow a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QMainWindowSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QMainWindow ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_resetInputContext cobj_x0

foreign import ccall "qtc_QMainWindow_resetInputContext" qtc_QMainWindow_resetInputContext :: Ptr (TQMainWindow a) -> IO ()

instance QresetInputContext (QMainWindowSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_resetInputContext cobj_x0

instance Qresize (QMainWindow ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMainWindow_resize1" qtc_QMainWindow_resize1 :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO ()

instance Qresize (QMainWindowSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QMainWindow ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_resize" qtc_QMainWindow_resize :: Ptr (TQMainWindow a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QMainWindowSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_resize cobj_x0 cobj_x1

instance Qresize (QMainWindow ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMainWindow_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMainWindow_resize_qth" qtc_QMainWindow_resize_qth :: Ptr (TQMainWindow a) -> CInt -> CInt -> IO ()

instance Qresize (QMainWindowSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMainWindow_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QMainWindow ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_resizeEvent_h" qtc_QMainWindow_resizeEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QMainWindowSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QMainWindow ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMainWindow_setGeometry1" qtc_QMainWindow_setGeometry1 :: Ptr (TQMainWindow a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMainWindowSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QMainWindow ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_setGeometry" qtc_QMainWindow_setGeometry :: Ptr (TQMainWindow a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QMainWindowSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QMainWindow ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMainWindow_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QMainWindow_setGeometry_qth" qtc_QMainWindow_setGeometry_qth :: Ptr (TQMainWindow a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMainWindowSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMainWindow_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QMainWindow ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_setMouseTracking" qtc_QMainWindow_setMouseTracking :: Ptr (TQMainWindow a) -> CBool -> IO ()

instance QsetMouseTracking (QMainWindowSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QMainWindow ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_setVisible_h" qtc_QMainWindow_setVisible_h :: Ptr (TQMainWindow a) -> CBool -> IO ()

instance QsetVisible (QMainWindowSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QMainWindow ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_showEvent_h" qtc_QMainWindow_showEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QMainWindowSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QMainWindow ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sizeHint_h cobj_x0

foreign import ccall "qtc_QMainWindow_sizeHint_h" qtc_QMainWindow_sizeHint_h :: Ptr (TQMainWindow a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QMainWindowSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sizeHint_h cobj_x0

instance QsizeHint (QMainWindow ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMainWindow_sizeHint_qth_h" qtc_QMainWindow_sizeHint_qth_h :: Ptr (TQMainWindow a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QMainWindowSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QMainWindow ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_tabletEvent_h" qtc_QMainWindow_tabletEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QMainWindowSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QMainWindow ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_updateMicroFocus cobj_x0

foreign import ccall "qtc_QMainWindow_updateMicroFocus" qtc_QMainWindow_updateMicroFocus :: Ptr (TQMainWindow a) -> IO ()

instance QupdateMicroFocus (QMainWindowSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_updateMicroFocus cobj_x0

instance QwheelEvent (QMainWindow ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_wheelEvent_h" qtc_QMainWindow_wheelEvent_h :: Ptr (TQMainWindow a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QMainWindowSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QMainWindow ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMainWindow_windowActivationChange" qtc_QMainWindow_windowActivationChange :: Ptr (TQMainWindow a) -> CBool -> IO ()

instance QwindowActivationChange (QMainWindowSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QMainWindow ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_childEvent" qtc_QMainWindow_childEvent :: Ptr (TQMainWindow a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMainWindowSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMainWindow ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMainWindow_connectNotify" qtc_QMainWindow_connectNotify :: Ptr (TQMainWindow a) -> CWString -> IO ()

instance QconnectNotify (QMainWindowSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMainWindow ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_customEvent" qtc_QMainWindow_customEvent :: Ptr (TQMainWindow a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMainWindowSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMainWindow ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMainWindow_disconnectNotify" qtc_QMainWindow_disconnectNotify :: Ptr (TQMainWindow a) -> CWString -> IO ()

instance QdisconnectNotify (QMainWindowSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QMainWindow ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMainWindow_eventFilter_h" qtc_QMainWindow_eventFilter_h :: Ptr (TQMainWindow a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMainWindowSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMainWindow_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QMainWindow ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMainWindow_receivers" qtc_QMainWindow_receivers :: Ptr (TQMainWindow a) -> CWString -> IO CInt

instance Qreceivers (QMainWindowSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMainWindow_receivers cobj_x0 cstr_x1

instance Qsender (QMainWindow ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sender cobj_x0

foreign import ccall "qtc_QMainWindow_sender" qtc_QMainWindow_sender :: Ptr (TQMainWindow a) -> IO (Ptr (TQObject ()))

instance Qsender (QMainWindowSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_sender cobj_x0

instance QtimerEvent (QMainWindow ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMainWindow_timerEvent" qtc_QMainWindow_timerEvent :: Ptr (TQMainWindow a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMainWindowSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMainWindow_timerEvent cobj_x0 cobj_x1

