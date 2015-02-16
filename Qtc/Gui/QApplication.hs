{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QApplication.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QApplication (
  qApplicationAboutQt
  ,qApplicationActiveModalWidget
  ,qApplicationActivePopupWidget
  ,qApplicationActiveWindow
  ,QqApplicationAlert(..)
  ,qApplicationAllWidgets
  ,qApplicationBeep
  ,qApplicationChangeOverrideCursor
  ,qApplicationClipboard
  ,qApplicationCloseAllWindows
  ,qApplicationColorSpec
  ,qApplicationCursorFlashTime
  ,qApplicationDesktop
  ,qApplicationDesktopSettingsAware
  ,qApplicationDoubleClickInterval
  ,qApplicationExec
  ,qApplicationFocusWidget
  ,QqApplicationFont(..)
  ,qApplicationFontMetrics
  ,qqApplicationGlobalStrut, qApplicationGlobalStrut
  ,qApplicationIsEffectEnabled
  ,qApplicationIsLeftToRight
  ,qApplicationIsRightToLeft
  ,qApplicationKeyboardInputDirection
  ,qApplicationKeyboardInputInterval
  ,qApplicationKeyboardInputLocale
  ,qApplicationKeyboardModifiers
  ,qApplicationLayoutDirection
  ,qApplicationMouseButtons
  ,qApplicationOverrideCursor
  ,QqApplicationPalette(..)
  ,qApplicationQuitOnLastWindowClosed
  ,qApplicationRestoreOverrideCursor
  ,qApplicationSetActiveWindow
  ,qApplicationSetColorSpec
  ,qApplicationSetCursorFlashTime
  ,qApplicationSetDesktopSettingsAware
  ,qApplicationSetDoubleClickInterval
  ,QqApplicationSetEffectEnabled(..)
  ,QqApplicationSetFont(..)
  ,qqApplicationSetGlobalStrut, qApplicationSetGlobalStrut
  ,qApplicationSetKeyboardInputInterval
  ,qApplicationSetLayoutDirection
  ,qApplicationSetOverrideCursor
  ,QqApplicationSetPalette(..)
  ,qApplicationSetQuitOnLastWindowClosed
  ,qApplicationSetStartDragDistance
  ,qApplicationSetStartDragTime
  ,QqApplicationSetStyle(..)
  ,qApplicationSetWheelScrollLines
  ,qApplicationSetWindowIcon
  ,qApplicationStartDragDistance
  ,qApplicationStartDragTime
  ,qApplicationStyle
  ,qApplicationSyncX
  ,QqApplicationTopLevelAt(..), qqApplicationTopLevelAt
  ,qApplicationTopLevelWidgets
  ,qApplicationType
  ,qApplicationWheelScrollLines
  ,QqApplicationWidgetAt(..), qqApplicationWidgetAt
  ,qApplicationWindowIcon
  ,qApplication_delete
  ,qApplication_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QApplication
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QApplication ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QApplication_userMethod" qtc_QApplication_userMethod :: Ptr (TQApplication a) -> CInt -> IO ()

instance QuserMethod (QApplicationSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QApplication_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QApplication ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QApplication_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QApplication_userMethodVariant" qtc_QApplication_userMethodVariant :: Ptr (TQApplication a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QApplicationSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QApplication_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qApplicationAboutQt :: (()) -> IO ()
qApplicationAboutQt ()
  = qtc_QApplication_aboutQt

foreign import ccall "qtc_QApplication_aboutQt" qtc_QApplication_aboutQt :: IO ()

qApplicationActiveModalWidget :: (()) -> IO (QWidget ())
qApplicationActiveModalWidget ()
  = withQWidgetResult $
    qtc_QApplication_activeModalWidget

foreign import ccall "qtc_QApplication_activeModalWidget" qtc_QApplication_activeModalWidget :: IO (Ptr (TQWidget ()))

qApplicationActivePopupWidget :: (()) -> IO (QWidget ())
qApplicationActivePopupWidget ()
  = withQWidgetResult $
    qtc_QApplication_activePopupWidget

foreign import ccall "qtc_QApplication_activePopupWidget" qtc_QApplication_activePopupWidget :: IO (Ptr (TQWidget ()))

qApplicationActiveWindow :: (()) -> IO (QWidget ())
qApplicationActiveWindow ()
  = withQWidgetResult $
    qtc_QApplication_activeWindow

foreign import ccall "qtc_QApplication_activeWindow" qtc_QApplication_activeWindow :: IO (Ptr (TQWidget ()))

class QqApplicationAlert x1 where
 qApplicationAlert :: x1 -> IO ()

instance QqApplicationAlert ((QWidget t1)) where
 qApplicationAlert (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_alert cobj_x1

foreign import ccall "qtc_QApplication_alert" qtc_QApplication_alert :: Ptr (TQWidget t1) -> IO ()

instance QqApplicationAlert ((QWidget t1, Int)) where
 qApplicationAlert (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_alert1 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QApplication_alert1" qtc_QApplication_alert1 :: Ptr (TQWidget t1) -> CInt -> IO ()

qApplicationAllWidgets :: (()) -> IO ([QWidget ()])
qApplicationAllWidgets ()
  = withQListQWidgetResult $ \arr ->
    qtc_QApplication_allWidgets arr

foreign import ccall "qtc_QApplication_allWidgets" qtc_QApplication_allWidgets :: Ptr (Ptr (TQWidget ())) -> IO CInt

qApplicationBeep :: (()) -> IO ()
qApplicationBeep ()
  = qtc_QApplication_beep

foreign import ccall "qtc_QApplication_beep" qtc_QApplication_beep :: IO ()

qApplicationChangeOverrideCursor :: ((QCursor t1)) -> IO ()
qApplicationChangeOverrideCursor (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_changeOverrideCursor cobj_x1

foreign import ccall "qtc_QApplication_changeOverrideCursor" qtc_QApplication_changeOverrideCursor :: Ptr (TQCursor t1) -> IO ()

qApplicationClipboard :: (()) -> IO (QClipboard ())
qApplicationClipboard ()
  = withQClipboardResult $
    qtc_QApplication_clipboard

foreign import ccall "qtc_QApplication_clipboard" qtc_QApplication_clipboard :: IO (Ptr (TQClipboard ()))

qApplicationCloseAllWindows :: (()) -> IO ()
qApplicationCloseAllWindows ()
  = qtc_QApplication_closeAllWindows

foreign import ccall "qtc_QApplication_closeAllWindows" qtc_QApplication_closeAllWindows :: IO ()

qApplicationColorSpec :: (()) -> IO (Int)
qApplicationColorSpec ()
  = withIntResult $
    qtc_QApplication_colorSpec

foreign import ccall "qtc_QApplication_colorSpec" qtc_QApplication_colorSpec :: IO CInt

qApplicationCursorFlashTime :: (()) -> IO (Int)
qApplicationCursorFlashTime ()
  = withIntResult $
    qtc_QApplication_cursorFlashTime

foreign import ccall "qtc_QApplication_cursorFlashTime" qtc_QApplication_cursorFlashTime :: IO CInt

qApplicationDesktop :: (()) -> IO (QDesktopWidget ())
qApplicationDesktop ()
  = withQDesktopWidgetResult $
    qtc_QApplication_desktop

foreign import ccall "qtc_QApplication_desktop" qtc_QApplication_desktop :: IO (Ptr (TQDesktopWidget ()))

qApplicationDesktopSettingsAware :: (()) -> IO (Bool)
qApplicationDesktopSettingsAware ()
  = withBoolResult $
    qtc_QApplication_desktopSettingsAware

foreign import ccall "qtc_QApplication_desktopSettingsAware" qtc_QApplication_desktopSettingsAware :: IO CBool

qApplicationDoubleClickInterval :: (()) -> IO (Int)
qApplicationDoubleClickInterval ()
  = withIntResult $
    qtc_QApplication_doubleClickInterval

foreign import ccall "qtc_QApplication_doubleClickInterval" qtc_QApplication_doubleClickInterval :: IO CInt

instance Qevent (QApplication ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_event cobj_x0 cobj_x1

foreign import ccall "qtc_QApplication_event" qtc_QApplication_event :: Ptr (TQApplication a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QApplicationSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_event cobj_x0 cobj_x1

qApplicationExec :: (()) -> IO (Int)
qApplicationExec ()
  = withIntResult $
    qtc_QApplication_exec

foreign import ccall "qtc_QApplication_exec" qtc_QApplication_exec :: IO CInt

qApplicationFocusWidget :: (()) -> IO (QWidget ())
qApplicationFocusWidget ()
  = withQWidgetResult $
    qtc_QApplication_focusWidget

foreign import ccall "qtc_QApplication_focusWidget" qtc_QApplication_focusWidget :: IO (Ptr (TQWidget ()))

class QqApplicationFont x1 where
 qApplicationFont :: x1 -> IO (QFont ())

instance QqApplicationFont (()) where
 qApplicationFont ()
  = withQFontResult $
    qtc_QApplication_font

foreign import ccall "qtc_QApplication_font" qtc_QApplication_font :: IO (Ptr (TQFont ()))

instance QqApplicationFont ((QWidget t1)) where
 qApplicationFont (x1)
  = withQFontResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_font1 cobj_x1

foreign import ccall "qtc_QApplication_font1" qtc_QApplication_font1 :: Ptr (TQWidget t1) -> IO (Ptr (TQFont ()))

instance QqApplicationFont ((String)) where
 qApplicationFont (x1)
  = withQFontResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_font2 cstr_x1

foreign import ccall "qtc_QApplication_font2" qtc_QApplication_font2 :: CWString -> IO (Ptr (TQFont ()))

qApplicationFontMetrics :: (()) -> IO (QFontMetrics ())
qApplicationFontMetrics ()
  = withQFontMetricsResult $
    qtc_QApplication_fontMetrics

foreign import ccall "qtc_QApplication_fontMetrics" qtc_QApplication_fontMetrics :: IO (Ptr (TQFontMetrics ()))

qqApplicationGlobalStrut :: (()) -> IO (QSize ())
qqApplicationGlobalStrut ()
  = withQSizeResult $
    qtc_QApplication_globalStrut

foreign import ccall "qtc_QApplication_globalStrut" qtc_QApplication_globalStrut :: IO (Ptr (TQSize ()))

qApplicationGlobalStrut :: (()) -> IO (Size)
qApplicationGlobalStrut ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    qtc_QApplication_globalStrut_qth csize_ret_w csize_ret_h

foreign import ccall "qtc_QApplication_globalStrut_qth" qtc_QApplication_globalStrut_qth :: Ptr CInt -> Ptr CInt -> IO ()

instance QinputContext (QApplication a) (()) where
 inputContext x0 ()
  = withQInputContextResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_inputContext cobj_x0

foreign import ccall "qtc_QApplication_inputContext" qtc_QApplication_inputContext :: Ptr (TQApplication a) -> IO (Ptr (TQInputContext ()))

qApplicationIsEffectEnabled :: ((UIEffect)) -> IO (Bool)
qApplicationIsEffectEnabled (x1)
  = withBoolResult $
    qtc_QApplication_isEffectEnabled (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QApplication_isEffectEnabled" qtc_QApplication_isEffectEnabled :: CLong -> IO CBool

qApplicationIsLeftToRight :: (()) -> IO (Bool)
qApplicationIsLeftToRight ()
  = withBoolResult $
    qtc_QApplication_isLeftToRight

foreign import ccall "qtc_QApplication_isLeftToRight" qtc_QApplication_isLeftToRight :: IO CBool

qApplicationIsRightToLeft :: (()) -> IO (Bool)
qApplicationIsRightToLeft ()
  = withBoolResult $
    qtc_QApplication_isRightToLeft

foreign import ccall "qtc_QApplication_isRightToLeft" qtc_QApplication_isRightToLeft :: IO CBool

qApplicationKeyboardInputDirection :: (()) -> IO (LayoutDirection)
qApplicationKeyboardInputDirection ()
  = withQEnumResult $
    qtc_QApplication_keyboardInputDirection

foreign import ccall "qtc_QApplication_keyboardInputDirection" qtc_QApplication_keyboardInputDirection :: IO CLong

qApplicationKeyboardInputInterval :: (()) -> IO (Int)
qApplicationKeyboardInputInterval ()
  = withIntResult $
    qtc_QApplication_keyboardInputInterval

foreign import ccall "qtc_QApplication_keyboardInputInterval" qtc_QApplication_keyboardInputInterval :: IO CInt

qApplicationKeyboardInputLocale :: (()) -> IO (QLocale ())
qApplicationKeyboardInputLocale ()
  = withQLocaleResult $
    qtc_QApplication_keyboardInputLocale

foreign import ccall "qtc_QApplication_keyboardInputLocale" qtc_QApplication_keyboardInputLocale :: IO (Ptr (TQLocale ()))

qApplicationKeyboardModifiers :: (()) -> IO (KeyboardModifiers)
qApplicationKeyboardModifiers ()
  = withQFlagsResult $
    qtc_QApplication_keyboardModifiers

foreign import ccall "qtc_QApplication_keyboardModifiers" qtc_QApplication_keyboardModifiers :: IO CLong

qApplicationLayoutDirection :: (()) -> IO (LayoutDirection)
qApplicationLayoutDirection ()
  = withQEnumResult $
    qtc_QApplication_layoutDirection

foreign import ccall "qtc_QApplication_layoutDirection" qtc_QApplication_layoutDirection :: IO CLong

qApplicationMouseButtons :: (()) -> IO (MouseButtons)
qApplicationMouseButtons ()
  = withQFlagsResult $
    qtc_QApplication_mouseButtons

foreign import ccall "qtc_QApplication_mouseButtons" qtc_QApplication_mouseButtons :: IO CLong

instance Qnotify (QApplication ()) ((QObject t1, QEvent t2)) where
 notify x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_notify_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QApplication_notify_h" qtc_QApplication_notify_h :: Ptr (TQApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance Qnotify (QApplicationSc a) ((QObject t1, QEvent t2)) where
 notify x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_notify_h cobj_x0 cobj_x1 cobj_x2

qApplicationOverrideCursor :: (()) -> IO (QCursor ())
qApplicationOverrideCursor ()
  = withObjectRefResult $
    qtc_QApplication_overrideCursor

foreign import ccall "qtc_QApplication_overrideCursor" qtc_QApplication_overrideCursor :: IO (Ptr (TQCursor ()))

class QqApplicationPalette x1 where
 qApplicationPalette :: x1 -> IO (QPalette ())

instance QqApplicationPalette (()) where
 qApplicationPalette ()
  = withQPaletteResult $
    qtc_QApplication_palette

foreign import ccall "qtc_QApplication_palette" qtc_QApplication_palette :: IO (Ptr (TQPalette ()))

instance QqApplicationPalette ((QWidget t1)) where
 qApplicationPalette (x1)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_palette1 cobj_x1

foreign import ccall "qtc_QApplication_palette1" qtc_QApplication_palette1 :: Ptr (TQWidget t1) -> IO (Ptr (TQPalette ()))

instance QqApplicationPalette ((String)) where
 qApplicationPalette (x1)
  = withQPaletteResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_palette2 cstr_x1

foreign import ccall "qtc_QApplication_palette2" qtc_QApplication_palette2 :: CWString -> IO (Ptr (TQPalette ()))

qApplicationQuitOnLastWindowClosed :: (()) -> IO (Bool)
qApplicationQuitOnLastWindowClosed ()
  = withBoolResult $
    qtc_QApplication_quitOnLastWindowClosed

foreign import ccall "qtc_QApplication_quitOnLastWindowClosed" qtc_QApplication_quitOnLastWindowClosed :: IO CBool

qApplicationRestoreOverrideCursor :: (()) -> IO ()
qApplicationRestoreOverrideCursor ()
  = qtc_QApplication_restoreOverrideCursor

foreign import ccall "qtc_QApplication_restoreOverrideCursor" qtc_QApplication_restoreOverrideCursor :: IO ()

qApplicationSetActiveWindow :: ((QWidget t1)) -> IO ()
qApplicationSetActiveWindow (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setActiveWindow cobj_x1

foreign import ccall "qtc_QApplication_setActiveWindow" qtc_QApplication_setActiveWindow :: Ptr (TQWidget t1) -> IO ()

qApplicationSetColorSpec :: ((Int)) -> IO ()
qApplicationSetColorSpec (x1)
  = qtc_QApplication_setColorSpec (toCInt x1)

foreign import ccall "qtc_QApplication_setColorSpec" qtc_QApplication_setColorSpec :: CInt -> IO ()

qApplicationSetCursorFlashTime :: ((Int)) -> IO ()
qApplicationSetCursorFlashTime (x1)
  = qtc_QApplication_setCursorFlashTime (toCInt x1)

foreign import ccall "qtc_QApplication_setCursorFlashTime" qtc_QApplication_setCursorFlashTime :: CInt -> IO ()

qApplicationSetDesktopSettingsAware :: ((Bool)) -> IO ()
qApplicationSetDesktopSettingsAware (x1)
  = qtc_QApplication_setDesktopSettingsAware (toCBool x1)

foreign import ccall "qtc_QApplication_setDesktopSettingsAware" qtc_QApplication_setDesktopSettingsAware :: CBool -> IO ()

qApplicationSetDoubleClickInterval :: ((Int)) -> IO ()
qApplicationSetDoubleClickInterval (x1)
  = qtc_QApplication_setDoubleClickInterval (toCInt x1)

foreign import ccall "qtc_QApplication_setDoubleClickInterval" qtc_QApplication_setDoubleClickInterval :: CInt -> IO ()

class QqApplicationSetEffectEnabled x1 where
 qApplicationSetEffectEnabled :: x1 -> IO ()

instance QqApplicationSetEffectEnabled ((UIEffect)) where
 qApplicationSetEffectEnabled (x1)
  = qtc_QApplication_setEffectEnabled (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QApplication_setEffectEnabled" qtc_QApplication_setEffectEnabled :: CLong -> IO ()

instance QqApplicationSetEffectEnabled ((UIEffect, Bool)) where
 qApplicationSetEffectEnabled (x1, x2)
  = qtc_QApplication_setEffectEnabled1 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QApplication_setEffectEnabled1" qtc_QApplication_setEffectEnabled1 :: CLong -> CBool -> IO ()

class QqApplicationSetFont x1 where
 qApplicationSetFont :: x1 -> IO ()

instance QqApplicationSetFont ((QFont t1)) where
 qApplicationSetFont (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setFont cobj_x1

foreign import ccall "qtc_QApplication_setFont" qtc_QApplication_setFont :: Ptr (TQFont t1) -> IO ()

instance QqApplicationSetFont ((QFont t1, String)) where
 qApplicationSetFont (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QApplication_setFont1 cobj_x1 cstr_x2

foreign import ccall "qtc_QApplication_setFont1" qtc_QApplication_setFont1 :: Ptr (TQFont t1) -> CWString -> IO ()

qqApplicationSetGlobalStrut :: ((QSize t1)) -> IO ()
qqApplicationSetGlobalStrut (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setGlobalStrut cobj_x1

foreign import ccall "qtc_QApplication_setGlobalStrut" qtc_QApplication_setGlobalStrut :: Ptr (TQSize t1) -> IO ()

qApplicationSetGlobalStrut :: ((Size)) -> IO ()
qApplicationSetGlobalStrut (x1)
  = withCSize x1 $ \csize_x1_w csize_x1_h ->
    qtc_QApplication_setGlobalStrut_qth csize_x1_w csize_x1_h 

foreign import ccall "qtc_QApplication_setGlobalStrut_qth" qtc_QApplication_setGlobalStrut_qth :: CInt -> CInt -> IO ()

instance QsetInputContext (QApplication a) ((QInputContext t1)) where
 setInputContext x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setInputContext cobj_x0 cobj_x1

foreign import ccall "qtc_QApplication_setInputContext" qtc_QApplication_setInputContext :: Ptr (TQApplication a) -> Ptr (TQInputContext t1) -> IO ()

qApplicationSetKeyboardInputInterval :: ((Int)) -> IO ()
qApplicationSetKeyboardInputInterval (x1)
  = qtc_QApplication_setKeyboardInputInterval (toCInt x1)

foreign import ccall "qtc_QApplication_setKeyboardInputInterval" qtc_QApplication_setKeyboardInputInterval :: CInt -> IO ()

qApplicationSetLayoutDirection :: ((LayoutDirection)) -> IO ()
qApplicationSetLayoutDirection (x1)
  = qtc_QApplication_setLayoutDirection (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QApplication_setLayoutDirection" qtc_QApplication_setLayoutDirection :: CLong -> IO ()

qApplicationSetOverrideCursor :: ((QCursor t1)) -> IO ()
qApplicationSetOverrideCursor (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setOverrideCursor cobj_x1

foreign import ccall "qtc_QApplication_setOverrideCursor" qtc_QApplication_setOverrideCursor :: Ptr (TQCursor t1) -> IO ()

class QqApplicationSetPalette x1 where
 qApplicationSetPalette :: x1 -> IO ()

instance QqApplicationSetPalette ((QPalette t1)) where
 qApplicationSetPalette (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setPalette cobj_x1

foreign import ccall "qtc_QApplication_setPalette" qtc_QApplication_setPalette :: Ptr (TQPalette t1) -> IO ()

instance QqApplicationSetPalette ((QPalette t1, String)) where
 qApplicationSetPalette (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QApplication_setPalette1 cobj_x1 cstr_x2

foreign import ccall "qtc_QApplication_setPalette1" qtc_QApplication_setPalette1 :: Ptr (TQPalette t1) -> CWString -> IO ()

qApplicationSetQuitOnLastWindowClosed :: ((Bool)) -> IO ()
qApplicationSetQuitOnLastWindowClosed (x1)
  = qtc_QApplication_setQuitOnLastWindowClosed (toCBool x1)

foreign import ccall "qtc_QApplication_setQuitOnLastWindowClosed" qtc_QApplication_setQuitOnLastWindowClosed :: CBool -> IO ()

qApplicationSetStartDragDistance :: ((Int)) -> IO ()
qApplicationSetStartDragDistance (x1)
  = qtc_QApplication_setStartDragDistance (toCInt x1)

foreign import ccall "qtc_QApplication_setStartDragDistance" qtc_QApplication_setStartDragDistance :: CInt -> IO ()

qApplicationSetStartDragTime :: ((Int)) -> IO ()
qApplicationSetStartDragTime (x1)
  = qtc_QApplication_setStartDragTime (toCInt x1)

foreign import ccall "qtc_QApplication_setStartDragTime" qtc_QApplication_setStartDragTime :: CInt -> IO ()

class QqApplicationSetStyle x1 xr where
 qApplicationSetStyle :: x1 -> xr

instance QqApplicationSetStyle ((QStyle t1)) (IO ()) where
 qApplicationSetStyle (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setStyle1 cobj_x1

foreign import ccall "qtc_QApplication_setStyle1" qtc_QApplication_setStyle1 :: Ptr (TQStyle t1) -> IO ()

instance QqApplicationSetStyle ((String)) (IO (QStyle ())) where
 qApplicationSetStyle (x1)
  = withQStyleResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_setStyle cstr_x1

foreign import ccall "qtc_QApplication_setStyle" qtc_QApplication_setStyle :: CWString -> IO (Ptr (TQStyle ()))

instance QsetStyleSheet (QApplication a) ((String)) where
 setStyleSheet x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_setStyleSheet cobj_x0 cstr_x1

foreign import ccall "qtc_QApplication_setStyleSheet" qtc_QApplication_setStyleSheet :: Ptr (TQApplication a) -> CWString -> IO ()

qApplicationSetWheelScrollLines :: ((Int)) -> IO ()
qApplicationSetWheelScrollLines (x1)
  = qtc_QApplication_setWheelScrollLines (toCInt x1)

foreign import ccall "qtc_QApplication_setWheelScrollLines" qtc_QApplication_setWheelScrollLines :: CInt -> IO ()

qApplicationSetWindowIcon :: ((QIcon t1)) -> IO ()
qApplicationSetWindowIcon (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_setWindowIcon cobj_x1

foreign import ccall "qtc_QApplication_setWindowIcon" qtc_QApplication_setWindowIcon :: Ptr (TQIcon t1) -> IO ()

qApplicationStartDragDistance :: (()) -> IO (Int)
qApplicationStartDragDistance ()
  = withIntResult $
    qtc_QApplication_startDragDistance

foreign import ccall "qtc_QApplication_startDragDistance" qtc_QApplication_startDragDistance :: IO CInt

qApplicationStartDragTime :: (()) -> IO (Int)
qApplicationStartDragTime ()
  = withIntResult $
    qtc_QApplication_startDragTime

foreign import ccall "qtc_QApplication_startDragTime" qtc_QApplication_startDragTime :: IO CInt

qApplicationStyle :: (()) -> IO (QStyle ())
qApplicationStyle ()
  = withQStyleResult $
    qtc_QApplication_style

foreign import ccall "qtc_QApplication_style" qtc_QApplication_style :: IO (Ptr (TQStyle ()))

instance QstyleSheet (QApplication a) (()) where
 styleSheet x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_styleSheet cobj_x0

foreign import ccall "qtc_QApplication_styleSheet" qtc_QApplication_styleSheet :: Ptr (TQApplication a) -> IO (Ptr (TQString ()))

qApplicationSyncX :: (()) -> IO ()
qApplicationSyncX ()
  = qtc_QApplication_syncX

foreign import ccall "qtc_QApplication_syncX" qtc_QApplication_syncX :: IO ()

class QqApplicationTopLevelAt x1 where
 qApplicationTopLevelAt :: x1 -> IO (QWidget ())

instance QqApplicationTopLevelAt ((Int, Int)) where
 qApplicationTopLevelAt (x1, x2)
  = withQWidgetResult $
    qtc_QApplication_topLevelAt1 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QApplication_topLevelAt1" qtc_QApplication_topLevelAt1 :: CInt -> CInt -> IO (Ptr (TQWidget ()))

instance QqApplicationTopLevelAt ((Point)) where
 qApplicationTopLevelAt (x1)
  = withQWidgetResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    qtc_QApplication_topLevelAt_qth cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QApplication_topLevelAt_qth" qtc_QApplication_topLevelAt_qth :: CInt -> CInt -> IO (Ptr (TQWidget ()))

qqApplicationTopLevelAt :: ((QPoint t1)) -> IO (QWidget ())
qqApplicationTopLevelAt (x1)
  = withQWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_topLevelAt cobj_x1

foreign import ccall "qtc_QApplication_topLevelAt" qtc_QApplication_topLevelAt :: Ptr (TQPoint t1) -> IO (Ptr (TQWidget ()))

qApplicationTopLevelWidgets :: (()) -> IO ([QWidget ()])
qApplicationTopLevelWidgets ()
  = withQListQWidgetResult $ \arr ->
    qtc_QApplication_topLevelWidgets arr

foreign import ccall "qtc_QApplication_topLevelWidgets" qtc_QApplication_topLevelWidgets :: Ptr (Ptr (TQWidget ())) -> IO CInt

qApplicationType :: (()) -> IO (QApplicationType)
qApplicationType ()
  = withQEnumResult $
    qtc_QApplication_type

foreign import ccall "qtc_QApplication_type" qtc_QApplication_type :: IO CLong

qApplicationWheelScrollLines :: (()) -> IO (Int)
qApplicationWheelScrollLines ()
  = withIntResult $
    qtc_QApplication_wheelScrollLines

foreign import ccall "qtc_QApplication_wheelScrollLines" qtc_QApplication_wheelScrollLines :: IO CInt

class QqApplicationWidgetAt x1 where
 qApplicationWidgetAt :: x1 -> IO (QWidget ())

instance QqApplicationWidgetAt ((Int, Int)) where
 qApplicationWidgetAt (x1, x2)
  = withQWidgetResult $
    qtc_QApplication_widgetAt1 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QApplication_widgetAt1" qtc_QApplication_widgetAt1 :: CInt -> CInt -> IO (Ptr (TQWidget ()))

instance QqApplicationWidgetAt ((Point)) where
 qApplicationWidgetAt (x1)
  = withQWidgetResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    qtc_QApplication_widgetAt_qth cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QApplication_widgetAt_qth" qtc_QApplication_widgetAt_qth :: CInt -> CInt -> IO (Ptr (TQWidget ()))

qqApplicationWidgetAt :: ((QPoint t1)) -> IO (QWidget ())
qqApplicationWidgetAt (x1)
  = withQWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_widgetAt cobj_x1

foreign import ccall "qtc_QApplication_widgetAt" qtc_QApplication_widgetAt :: Ptr (TQPoint t1) -> IO (Ptr (TQWidget ()))

qApplicationWindowIcon :: (()) -> IO (QIcon ())
qApplicationWindowIcon ()
  = withQIconResult $
    qtc_QApplication_windowIcon

foreign import ccall "qtc_QApplication_windowIcon" qtc_QApplication_windowIcon :: IO (Ptr (TQIcon ()))

qApplication_delete :: QApplication a -> IO ()
qApplication_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_delete cobj_x0

foreign import ccall "qtc_QApplication_delete" qtc_QApplication_delete :: Ptr (TQApplication a) -> IO ()

qApplication_deleteLater :: QApplication a -> IO ()
qApplication_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_deleteLater cobj_x0

foreign import ccall "qtc_QApplication_deleteLater" qtc_QApplication_deleteLater :: Ptr (TQApplication a) -> IO ()

instance QchildEvent (QApplication ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QApplication_childEvent" qtc_QApplication_childEvent :: Ptr (TQApplication a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QApplicationSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QApplication ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QApplication_connectNotify" qtc_QApplication_connectNotify :: Ptr (TQApplication a) -> CWString -> IO ()

instance QconnectNotify (QApplicationSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QApplication ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QApplication_customEvent" qtc_QApplication_customEvent :: Ptr (TQApplication a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QApplicationSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QApplication ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QApplication_disconnectNotify" qtc_QApplication_disconnectNotify :: Ptr (TQApplication a) -> CWString -> IO ()

instance QdisconnectNotify (QApplicationSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QApplication ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QApplication_eventFilter_h" qtc_QApplication_eventFilter_h :: Ptr (TQApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QApplicationSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QApplication_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QApplication ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QApplication_receivers" qtc_QApplication_receivers :: Ptr (TQApplication a) -> CWString -> IO CInt

instance Qreceivers (QApplicationSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QApplication_receivers cobj_x0 cstr_x1

instance Qsender (QApplication ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_sender cobj_x0

foreign import ccall "qtc_QApplication_sender" qtc_QApplication_sender :: Ptr (TQApplication a) -> IO (Ptr (TQObject ()))

instance Qsender (QApplicationSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QApplication_sender cobj_x0

instance QtimerEvent (QApplication ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QApplication_timerEvent" qtc_QApplication_timerEvent :: Ptr (TQApplication a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QApplicationSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QApplication_timerEvent cobj_x0 cobj_x1

