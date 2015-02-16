{-# OPTIONS -fglasgow-exts -#include "../include/tools/qtc_hs_QUiLoader.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QUiLoader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Tools.QUiLoader (
  QqUiLoader(..)
  ,addPluginPath
  ,availableWidgets
  ,clearPluginPaths
  ,QcreateAction(..)
  ,QcreateActionGroup(..)
  ,QcreateLayout(..)
  ,isScriptingEnabled
  ,pluginPaths
  ,setScriptingEnabled
  ,setWorkingDirectory
  ,workingDirectory
  ,qUiLoader_delete
  ,qUiLoader_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Tools
import Qtc.ClassTypes.Tools

instance QuserMethod (QUiLoader ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUiLoader_userMethod" qtc_QUiLoader_userMethod :: Ptr (TQUiLoader a) -> CInt -> IO ()

instance QuserMethod (QUiLoaderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUiLoader_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUiLoader ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUiLoader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUiLoader_userMethodVariant" qtc_QUiLoader_userMethodVariant :: Ptr (TQUiLoader a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUiLoaderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUiLoader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUiLoader x1 where
  qUiLoader :: x1 -> IO (QUiLoader ())

instance QqUiLoader (()) where
 qUiLoader ()
  = withQUiLoaderResult $
    qtc_QUiLoader

foreign import ccall "qtc_QUiLoader" qtc_QUiLoader :: IO (Ptr (TQUiLoader ()))

instance QqUiLoader ((QObject t1)) where
 qUiLoader (x1)
  = withQUiLoaderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader1 cobj_x1

foreign import ccall "qtc_QUiLoader1" qtc_QUiLoader1 :: Ptr (TQObject t1) -> IO (Ptr (TQUiLoader ()))

addPluginPath :: QUiLoader a -> ((String)) -> IO ()
addPluginPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_addPluginPath cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_addPluginPath" qtc_QUiLoader_addPluginPath :: Ptr (TQUiLoader a) -> CWString -> IO ()

availableWidgets :: QUiLoader a -> (()) -> IO ([String])
availableWidgets x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_availableWidgets cobj_x0 arr

foreign import ccall "qtc_QUiLoader_availableWidgets" qtc_QUiLoader_availableWidgets :: Ptr (TQUiLoader a) -> Ptr (Ptr (TQString ())) -> IO CInt

clearPluginPaths :: QUiLoader a -> (()) -> IO ()
clearPluginPaths x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_clearPluginPaths cobj_x0

foreign import ccall "qtc_QUiLoader_clearPluginPaths" qtc_QUiLoader_clearPluginPaths :: Ptr (TQUiLoader a) -> IO ()

class QcreateAction x0 x1 where
 createAction :: x0 -> x1 -> IO (QAction ())

instance QcreateAction (QUiLoader ()) (()) where
 createAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createAction_h cobj_x0

foreign import ccall "qtc_QUiLoader_createAction_h" qtc_QUiLoader_createAction_h :: Ptr (TQUiLoader a) -> IO (Ptr (TQAction ()))

instance QcreateAction (QUiLoaderSc a) (()) where
 createAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createAction_h cobj_x0

instance QcreateAction (QUiLoader ()) ((QObject t1)) where
 createAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createAction1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_createAction1_h" qtc_QUiLoader_createAction1_h :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QcreateAction (QUiLoaderSc a) ((QObject t1)) where
 createAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createAction1_h cobj_x0 cobj_x1

instance QcreateAction (QUiLoader ()) ((QObject t1, String)) where
 createAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createAction2_h cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUiLoader_createAction2_h" qtc_QUiLoader_createAction2_h :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQAction ()))

instance QcreateAction (QUiLoaderSc a) ((QObject t1, String)) where
 createAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createAction2_h cobj_x0 cobj_x1 cstr_x2

class QcreateActionGroup x0 x1 where
 createActionGroup :: x0 -> x1 -> IO (QActionGroup ())

instance QcreateActionGroup (QUiLoader ()) (()) where
 createActionGroup x0 ()
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createActionGroup_h cobj_x0

foreign import ccall "qtc_QUiLoader_createActionGroup_h" qtc_QUiLoader_createActionGroup_h :: Ptr (TQUiLoader a) -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup (QUiLoaderSc a) (()) where
 createActionGroup x0 ()
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_createActionGroup_h cobj_x0

instance QcreateActionGroup (QUiLoader ()) ((QObject t1)) where
 createActionGroup x0 (x1)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createActionGroup1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_createActionGroup1_h" qtc_QUiLoader_createActionGroup1_h :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup (QUiLoaderSc a) ((QObject t1)) where
 createActionGroup x0 (x1)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_createActionGroup1_h cobj_x0 cobj_x1

instance QcreateActionGroup (QUiLoader ()) ((QObject t1, String)) where
 createActionGroup x0 (x1, x2)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createActionGroup2_h cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QUiLoader_createActionGroup2_h" qtc_QUiLoader_createActionGroup2_h :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> CWString -> IO (Ptr (TQActionGroup ()))

instance QcreateActionGroup (QUiLoaderSc a) ((QObject t1, String)) where
 createActionGroup x0 (x1, x2)
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUiLoader_createActionGroup2_h cobj_x0 cobj_x1 cstr_x2

class QcreateLayout x0 x1 where
 createLayout :: x0 -> x1 -> IO (QLayout ())

instance QcreateLayout (QUiLoader ()) ((String)) where
 createLayout x0 (x1)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createLayout_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_createLayout_h" qtc_QUiLoader_createLayout_h :: Ptr (TQUiLoader a) -> CWString -> IO (Ptr (TQLayout ()))

instance QcreateLayout (QUiLoaderSc a) ((String)) where
 createLayout x0 (x1)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createLayout_h cobj_x0 cstr_x1

instance QcreateLayout (QUiLoader ()) ((String, QObject t2)) where
 createLayout x0 (x1, x2)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createLayout1_h cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_createLayout1_h" qtc_QUiLoader_createLayout1_h :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQObject t2) -> IO (Ptr (TQLayout ()))

instance QcreateLayout (QUiLoaderSc a) ((String, QObject t2)) where
 createLayout x0 (x1, x2)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createLayout1_h cobj_x0 cstr_x1 cobj_x2

instance QcreateLayout (QUiLoader ()) ((String, QObject t2, String)) where
 createLayout x0 (x1, x2, x3)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createLayout2_h cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QUiLoader_createLayout2_h" qtc_QUiLoader_createLayout2_h :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQObject t2) -> CWString -> IO (Ptr (TQLayout ()))

instance QcreateLayout (QUiLoaderSc a) ((String, QObject t2, String)) where
 createLayout x0 (x1, x2, x3)
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createLayout2_h cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QcreateWidget (QUiLoader ()) ((String)) where
 createWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createWidget_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_createWidget_h" qtc_QUiLoader_createWidget_h :: Ptr (TQUiLoader a) -> CWString -> IO (Ptr (TQWidget ()))

instance QcreateWidget (QUiLoaderSc a) ((String)) where
 createWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_createWidget_h cobj_x0 cstr_x1

instance QcreateWidget (QUiLoader ()) ((String, QWidget t2)) where
 createWidget x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createWidget1_h cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_createWidget1_h" qtc_QUiLoader_createWidget1_h :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQWidget ()))

instance QcreateWidget (QUiLoaderSc a) ((String, QWidget t2)) where
 createWidget x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_createWidget1_h cobj_x0 cstr_x1 cobj_x2

instance QcreateWidget (QUiLoader ()) ((String, QWidget t2, String)) where
 createWidget x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createWidget2_h cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QUiLoader_createWidget2_h" qtc_QUiLoader_createWidget2_h :: Ptr (TQUiLoader a) -> CWString -> Ptr (TQWidget t2) -> CWString -> IO (Ptr (TQWidget ()))

instance QcreateWidget (QUiLoaderSc a) ((String, QWidget t2, String)) where
 createWidget x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUiLoader_createWidget2_h cobj_x0 cstr_x1 cobj_x2 cstr_x3

isScriptingEnabled :: QUiLoader a -> (()) -> IO (Bool)
isScriptingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_isScriptingEnabled cobj_x0

foreign import ccall "qtc_QUiLoader_isScriptingEnabled" qtc_QUiLoader_isScriptingEnabled :: Ptr (TQUiLoader a) -> IO CBool

instance Qload (QUiLoader a) ((QIODevice t1)) (IO (QWidget ())) where
 load x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_load cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_load" qtc_QUiLoader_load :: Ptr (TQUiLoader a) -> Ptr (TQIODevice t1) -> IO (Ptr (TQWidget ()))

instance Qload (QUiLoader a) ((QIODevice t1, QWidget t2)) (IO (QWidget ())) where
 load x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_load1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_load1" qtc_QUiLoader_load1 :: Ptr (TQUiLoader a) -> Ptr (TQIODevice t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQWidget ()))

pluginPaths :: QUiLoader a -> (()) -> IO ([String])
pluginPaths x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_pluginPaths cobj_x0 arr

foreign import ccall "qtc_QUiLoader_pluginPaths" qtc_QUiLoader_pluginPaths :: Ptr (TQUiLoader a) -> Ptr (Ptr (TQString ())) -> IO CInt

setScriptingEnabled :: QUiLoader a -> ((Bool)) -> IO ()
setScriptingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_setScriptingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUiLoader_setScriptingEnabled" qtc_QUiLoader_setScriptingEnabled :: Ptr (TQUiLoader a) -> CBool -> IO ()

setWorkingDirectory :: QUiLoader a -> ((QDir t1)) -> IO ()
setWorkingDirectory x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_setWorkingDirectory cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_setWorkingDirectory" qtc_QUiLoader_setWorkingDirectory :: Ptr (TQUiLoader a) -> Ptr (TQDir t1) -> IO ()

workingDirectory :: QUiLoader a -> (()) -> IO (QDir ())
workingDirectory x0 ()
  = withQDirResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_workingDirectory cobj_x0

foreign import ccall "qtc_QUiLoader_workingDirectory" qtc_QUiLoader_workingDirectory :: Ptr (TQUiLoader a) -> IO (Ptr (TQDir ()))

qUiLoader_delete :: QUiLoader a -> IO ()
qUiLoader_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_delete cobj_x0

foreign import ccall "qtc_QUiLoader_delete" qtc_QUiLoader_delete :: Ptr (TQUiLoader a) -> IO ()

qUiLoader_deleteLater :: QUiLoader a -> IO ()
qUiLoader_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_deleteLater cobj_x0

foreign import ccall "qtc_QUiLoader_deleteLater" qtc_QUiLoader_deleteLater :: Ptr (TQUiLoader a) -> IO ()

instance QchildEvent (QUiLoader ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_childEvent" qtc_QUiLoader_childEvent :: Ptr (TQUiLoader a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QUiLoaderSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QUiLoader ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_connectNotify" qtc_QUiLoader_connectNotify :: Ptr (TQUiLoader a) -> CWString -> IO ()

instance QconnectNotify (QUiLoaderSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QUiLoader ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_customEvent" qtc_QUiLoader_customEvent :: Ptr (TQUiLoader a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QUiLoaderSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QUiLoader ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_disconnectNotify" qtc_QUiLoader_disconnectNotify :: Ptr (TQUiLoader a) -> CWString -> IO ()

instance QdisconnectNotify (QUiLoaderSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QUiLoader ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_event_h" qtc_QUiLoader_event_h :: Ptr (TQUiLoader a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QUiLoaderSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_event_h cobj_x0 cobj_x1

instance QeventFilter (QUiLoader ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QUiLoader_eventFilter_h" qtc_QUiLoader_eventFilter_h :: Ptr (TQUiLoader a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QUiLoaderSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUiLoader_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QUiLoader ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QUiLoader_receivers" qtc_QUiLoader_receivers :: Ptr (TQUiLoader a) -> CWString -> IO CInt

instance Qreceivers (QUiLoaderSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUiLoader_receivers cobj_x0 cstr_x1

instance Qsender (QUiLoader ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_sender cobj_x0

foreign import ccall "qtc_QUiLoader_sender" qtc_QUiLoader_sender :: Ptr (TQUiLoader a) -> IO (Ptr (TQObject ()))

instance Qsender (QUiLoaderSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUiLoader_sender cobj_x0

instance QtimerEvent (QUiLoader ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QUiLoader_timerEvent" qtc_QUiLoader_timerEvent :: Ptr (TQUiLoader a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QUiLoaderSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUiLoader_timerEvent cobj_x0 cobj_x1

