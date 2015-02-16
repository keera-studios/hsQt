{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAction.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAction (
  QqAction(..)
  ,actionGroup
  ,associatedWidgets
  ,hover
  ,iconText
  ,menuRole
  ,setActionGroup
  ,setIconText
  ,setMenuRole
  ,setSeparator
  ,setShortcutContext
  ,setShortcuts
  ,shortcutContext
  ,shortcuts
  ,QshowStatusText(..)
  ,trigger
  ,qAction_delete
  ,qAction_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QKeySequence
import Qtc.Enums.Gui.QAction
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QAction ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAction_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAction_userMethod" qtc_QAction_userMethod :: Ptr (TQAction a) -> CInt -> IO ()

instance QuserMethod (QActionSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAction_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAction ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAction_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAction_userMethodVariant" qtc_QAction_userMethodVariant :: Ptr (TQAction a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QActionSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAction_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAction x1 where
  qAction :: x1 -> IO (QAction ())

instance QqAction ((QObject t1)) where
 qAction (x1)
  = withQActionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction cobj_x1

foreign import ccall "qtc_QAction" qtc_QAction :: Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

instance QqAction ((String, QObject t2)) where
 qAction (x1, x2)
  = withQActionResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAction1 cstr_x1 cobj_x2

foreign import ccall "qtc_QAction1" qtc_QAction1 :: CWString -> Ptr (TQObject t2) -> IO (Ptr (TQAction ()))

instance QqAction ((QIcon t1, String, QObject t3)) where
 qAction (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAction2 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QAction2" qtc_QAction2 :: Ptr (TQIcon t1) -> CWString -> Ptr (TQObject t3) -> IO (Ptr (TQAction ()))

actionGroup :: QAction a -> (()) -> IO (QActionGroup ())
actionGroup x0 ()
  = withQActionGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_actionGroup cobj_x0

foreign import ccall "qtc_QAction_actionGroup" qtc_QAction_actionGroup :: Ptr (TQAction a) -> IO (Ptr (TQActionGroup ()))

instance Qactivate (QAction a) ((ActionEvent)) (IO ()) where
 activate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_activate cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAction_activate" qtc_QAction_activate :: Ptr (TQAction a) -> CLong -> IO ()

associatedWidgets :: QAction a -> (()) -> IO ([QWidget ()])
associatedWidgets x0 ()
  = withQListQWidgetResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_associatedWidgets cobj_x0 arr

foreign import ccall "qtc_QAction_associatedWidgets" qtc_QAction_associatedWidgets :: Ptr (TQAction a) -> Ptr (Ptr (TQWidget ())) -> IO CInt

instance QautoRepeat (QAction a) (()) where
 autoRepeat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_autoRepeat cobj_x0

foreign import ccall "qtc_QAction_autoRepeat" qtc_QAction_autoRepeat :: Ptr (TQAction a) -> IO CBool

instance Qqdata (QAction ()) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_data cobj_x0

foreign import ccall "qtc_QAction_data" qtc_QAction_data :: Ptr (TQAction a) -> IO (Ptr (TQVariant ()))

instance Qqdata (QActionSc a) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_data cobj_x0

instance Qqdata_nf (QAction ()) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_data cobj_x0

instance Qqdata_nf (QActionSc a) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_data cobj_x0

instance Qevent (QAction ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_event cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_event" qtc_QAction_event :: Ptr (TQAction a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QActionSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_event cobj_x0 cobj_x1

instance Qfont (QAction a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_font cobj_x0

foreign import ccall "qtc_QAction_font" qtc_QAction_font :: Ptr (TQAction a) -> IO (Ptr (TQFont ()))

hover :: QAction a -> (()) -> IO ()
hover x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_hover cobj_x0

foreign import ccall "qtc_QAction_hover" qtc_QAction_hover :: Ptr (TQAction a) -> IO ()

instance Qicon (QAction a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_icon cobj_x0

foreign import ccall "qtc_QAction_icon" qtc_QAction_icon :: Ptr (TQAction a) -> IO (Ptr (TQIcon ()))

iconText :: QAction a -> (()) -> IO (String)
iconText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_iconText cobj_x0

foreign import ccall "qtc_QAction_iconText" qtc_QAction_iconText :: Ptr (TQAction a) -> IO (Ptr (TQString ()))

instance QisCheckable (QAction a) (()) where
 isCheckable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_isCheckable cobj_x0

foreign import ccall "qtc_QAction_isCheckable" qtc_QAction_isCheckable :: Ptr (TQAction a) -> IO CBool

instance QisChecked (QAction a) (()) where
 isChecked x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_isChecked cobj_x0

foreign import ccall "qtc_QAction_isChecked" qtc_QAction_isChecked :: Ptr (TQAction a) -> IO CBool

instance QisEnabled (QAction a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_isEnabled cobj_x0

foreign import ccall "qtc_QAction_isEnabled" qtc_QAction_isEnabled :: Ptr (TQAction a) -> IO CBool

instance QisSeparator (QAction a) (()) where
 isSeparator x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_isSeparator cobj_x0

foreign import ccall "qtc_QAction_isSeparator" qtc_QAction_isSeparator :: Ptr (TQAction a) -> IO CBool

instance QisVisible (QAction a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_isVisible cobj_x0

foreign import ccall "qtc_QAction_isVisible" qtc_QAction_isVisible :: Ptr (TQAction a) -> IO CBool

instance Qmenu (QAction a) (()) where
 menu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_menu cobj_x0

foreign import ccall "qtc_QAction_menu" qtc_QAction_menu :: Ptr (TQAction a) -> IO (Ptr (TQMenu ()))

menuRole :: QAction a -> (()) -> IO (MenuRole)
menuRole x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_menuRole cobj_x0

foreign import ccall "qtc_QAction_menuRole" qtc_QAction_menuRole :: Ptr (TQAction a) -> IO CLong

instance QparentWidget (QAction a) (()) where
 parentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_parentWidget cobj_x0

foreign import ccall "qtc_QAction_parentWidget" qtc_QAction_parentWidget :: Ptr (TQAction a) -> IO (Ptr (TQWidget ()))

setActionGroup :: QAction a -> ((QActionGroup t1)) -> IO ()
setActionGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setActionGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setActionGroup" qtc_QAction_setActionGroup :: Ptr (TQAction a) -> Ptr (TQActionGroup t1) -> IO ()

instance QsetAutoRepeat (QAction a) ((Bool)) where
 setAutoRepeat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setAutoRepeat cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setAutoRepeat" qtc_QAction_setAutoRepeat :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetCheckable (QAction a) ((Bool)) where
 setCheckable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setCheckable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setCheckable" qtc_QAction_setCheckable :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetChecked (QAction a) ((Bool)) where
 setChecked x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setChecked cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setChecked" qtc_QAction_setChecked :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetData (QAction a) ((QVariant t1)) (IO ()) where
 setData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setData cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setData" qtc_QAction_setData :: Ptr (TQAction a) -> Ptr (TQVariant t1) -> IO ()

instance QsetDisabled (QAction a) ((Bool)) where
 setDisabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setDisabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setDisabled" qtc_QAction_setDisabled :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetEnabled (QAction a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setEnabled" qtc_QAction_setEnabled :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetFont (QAction a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setFont" qtc_QAction_setFont :: Ptr (TQAction a) -> Ptr (TQFont t1) -> IO ()

instance QsetIcon (QAction a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setIcon" qtc_QAction_setIcon :: Ptr (TQAction a) -> Ptr (TQIcon t1) -> IO ()

setIconText :: QAction a -> ((String)) -> IO ()
setIconText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_setIconText cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_setIconText" qtc_QAction_setIconText :: Ptr (TQAction a) -> CWString -> IO ()

instance QsetMenu (QAction a) ((QMenu t1)) where
 setMenu x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setMenu" qtc_QAction_setMenu :: Ptr (TQAction a) -> Ptr (TQMenu t1) -> IO ()

setMenuRole :: QAction a -> ((MenuRole)) -> IO ()
setMenuRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setMenuRole cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAction_setMenuRole" qtc_QAction_setMenuRole :: Ptr (TQAction a) -> CLong -> IO ()

setSeparator :: QAction a -> ((Bool)) -> IO ()
setSeparator x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setSeparator cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setSeparator" qtc_QAction_setSeparator :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetShortcut (QAction a) ((QKeySequence t1)) where
 setShortcut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_setShortcut cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_setShortcut" qtc_QAction_setShortcut :: Ptr (TQAction a) -> Ptr (TQKeySequence t1) -> IO ()

setShortcutContext :: QAction a -> ((ShortcutContext)) -> IO ()
setShortcutContext x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setShortcutContext cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAction_setShortcutContext" qtc_QAction_setShortcutContext :: Ptr (TQAction a) -> CLong -> IO ()

setShortcuts :: QAction a -> ((StandardKey)) -> IO ()
setShortcuts x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setShortcuts cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAction_setShortcuts" qtc_QAction_setShortcuts :: Ptr (TQAction a) -> CLong -> IO ()

instance QsetStatusTip (QAction a) ((String)) where
 setStatusTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_setStatusTip cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_setStatusTip" qtc_QAction_setStatusTip :: Ptr (TQAction a) -> CWString -> IO ()

instance QsetText (QAction a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_setText" qtc_QAction_setText :: Ptr (TQAction a) -> CWString -> IO ()

instance QsetToolTip (QAction a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_setToolTip" qtc_QAction_setToolTip :: Ptr (TQAction a) -> CWString -> IO ()

instance QsetVisible (QAction a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAction_setVisible" qtc_QAction_setVisible :: Ptr (TQAction a) -> CBool -> IO ()

instance QsetWhatsThis (QAction a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_setWhatsThis" qtc_QAction_setWhatsThis :: Ptr (TQAction a) -> CWString -> IO ()

instance Qshortcut (QAction a) (()) where
 shortcut x0 ()
  = withQKeySequenceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_shortcut cobj_x0

foreign import ccall "qtc_QAction_shortcut" qtc_QAction_shortcut :: Ptr (TQAction a) -> IO (Ptr (TQKeySequence ()))

shortcutContext :: QAction a -> (()) -> IO (ShortcutContext)
shortcutContext x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_shortcutContext cobj_x0

foreign import ccall "qtc_QAction_shortcutContext" qtc_QAction_shortcutContext :: Ptr (TQAction a) -> IO CLong

shortcuts :: QAction a -> (()) -> IO ([QKeySequence ()])
shortcuts x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_shortcuts cobj_x0 arr

foreign import ccall "qtc_QAction_shortcuts" qtc_QAction_shortcuts :: Ptr (TQAction a) -> Ptr (Ptr (TQKeySequence ())) -> IO CInt

class QshowStatusText x1 where
 showStatusText :: QAction a -> x1 -> IO (Bool)

instance QshowStatusText (()) where
 showStatusText x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_showStatusText cobj_x0

foreign import ccall "qtc_QAction_showStatusText" qtc_QAction_showStatusText :: Ptr (TQAction a) -> IO CBool

instance QshowStatusText ((QWidget t1)) where
 showStatusText x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_showStatusText1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_showStatusText1" qtc_QAction_showStatusText1 :: Ptr (TQAction a) -> Ptr (TQWidget t1) -> IO CBool

instance QstatusTip (QAction a) (()) where
 statusTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_statusTip cobj_x0

foreign import ccall "qtc_QAction_statusTip" qtc_QAction_statusTip :: Ptr (TQAction a) -> IO (Ptr (TQString ()))

instance Qtext (QAction a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_text cobj_x0

foreign import ccall "qtc_QAction_text" qtc_QAction_text :: Ptr (TQAction a) -> IO (Ptr (TQString ()))

instance Qtoggle (QAction a) (()) (IO ()) where
 toggle x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_toggle cobj_x0

foreign import ccall "qtc_QAction_toggle" qtc_QAction_toggle :: Ptr (TQAction a) -> IO ()

instance QtoolTip (QAction a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_toolTip cobj_x0

foreign import ccall "qtc_QAction_toolTip" qtc_QAction_toolTip :: Ptr (TQAction a) -> IO (Ptr (TQString ()))

trigger :: QAction a -> (()) -> IO ()
trigger x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_trigger cobj_x0

foreign import ccall "qtc_QAction_trigger" qtc_QAction_trigger :: Ptr (TQAction a) -> IO ()

instance QwhatsThis (QAction a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_whatsThis cobj_x0

foreign import ccall "qtc_QAction_whatsThis" qtc_QAction_whatsThis :: Ptr (TQAction a) -> IO (Ptr (TQString ()))

qAction_delete :: QAction a -> IO ()
qAction_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_delete cobj_x0

foreign import ccall "qtc_QAction_delete" qtc_QAction_delete :: Ptr (TQAction a) -> IO ()

qAction_deleteLater :: QAction a -> IO ()
qAction_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_deleteLater cobj_x0

foreign import ccall "qtc_QAction_deleteLater" qtc_QAction_deleteLater :: Ptr (TQAction a) -> IO ()

instance QchildEvent (QAction ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_childEvent" qtc_QAction_childEvent :: Ptr (TQAction a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QActionSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAction ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_connectNotify" qtc_QAction_connectNotify :: Ptr (TQAction a) -> CWString -> IO ()

instance QconnectNotify (QActionSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAction ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_customEvent" qtc_QAction_customEvent :: Ptr (TQAction a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QActionSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAction ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_disconnectNotify" qtc_QAction_disconnectNotify :: Ptr (TQAction a) -> CWString -> IO ()

instance QdisconnectNotify (QActionSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAction ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAction_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAction_eventFilter_h" qtc_QAction_eventFilter_h :: Ptr (TQAction a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QActionSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAction_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAction ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAction_receivers" qtc_QAction_receivers :: Ptr (TQAction a) -> CWString -> IO CInt

instance Qreceivers (QActionSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAction_receivers cobj_x0 cstr_x1

instance Qsender (QAction ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_sender cobj_x0

foreign import ccall "qtc_QAction_sender" qtc_QAction_sender :: Ptr (TQAction a) -> IO (Ptr (TQObject ()))

instance Qsender (QActionSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAction_sender cobj_x0

instance QtimerEvent (QAction ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAction_timerEvent" qtc_QAction_timerEvent :: Ptr (TQAction a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QActionSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAction_timerEvent cobj_x0 cobj_x1

