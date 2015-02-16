{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractButton (
  QqAbstractButton(..)
  ,QanimateClick(..)
  ,autoExclusive
  ,autoRepeatDelay
  ,autoRepeatInterval
  ,click
  ,isDown
  ,setAutoExclusive
  ,setAutoRepeatDelay
  ,setAutoRepeatInterval
  ,setDown
  ,qAbstractButton_delete
  ,qAbstractButton_deleteLater
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

instance QuserMethod (QAbstractButton ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractButton_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractButton_userMethod" qtc_QAbstractButton_userMethod :: Ptr (TQAbstractButton a) -> CInt -> IO ()

instance QuserMethod (QAbstractButtonSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractButton_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractButton ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractButton_userMethodVariant" qtc_QAbstractButton_userMethodVariant :: Ptr (TQAbstractButton a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractButtonSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractButton x1 where
  qAbstractButton :: x1 -> IO (QAbstractButton ())

instance QqAbstractButton (()) where
 qAbstractButton ()
  = withQAbstractButtonResult $
    qtc_QAbstractButton

foreign import ccall "qtc_QAbstractButton" qtc_QAbstractButton :: IO (Ptr (TQAbstractButton ()))

instance QqAbstractButton ((QWidget t1)) where
 qAbstractButton (x1)
  = withQAbstractButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton1 cobj_x1

foreign import ccall "qtc_QAbstractButton1" qtc_QAbstractButton1 :: Ptr (TQWidget t1) -> IO (Ptr (TQAbstractButton ()))

class QanimateClick x1 where
 animateClick :: QAbstractButton a -> x1 -> IO ()

instance QanimateClick (()) where
 animateClick x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_animateClick cobj_x0

foreign import ccall "qtc_QAbstractButton_animateClick" qtc_QAbstractButton_animateClick :: Ptr (TQAbstractButton a) -> IO ()

instance QanimateClick ((Int)) where
 animateClick x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_animateClick1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractButton_animateClick1" qtc_QAbstractButton_animateClick1 :: Ptr (TQAbstractButton a) -> CInt -> IO ()

autoExclusive :: QAbstractButton a -> (()) -> IO (Bool)
autoExclusive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_autoExclusive cobj_x0

foreign import ccall "qtc_QAbstractButton_autoExclusive" qtc_QAbstractButton_autoExclusive :: Ptr (TQAbstractButton a) -> IO CBool

instance QautoRepeat (QAbstractButton a) (()) where
 autoRepeat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_autoRepeat cobj_x0

foreign import ccall "qtc_QAbstractButton_autoRepeat" qtc_QAbstractButton_autoRepeat :: Ptr (TQAbstractButton a) -> IO CBool

autoRepeatDelay :: QAbstractButton a -> (()) -> IO (Int)
autoRepeatDelay x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_autoRepeatDelay cobj_x0

foreign import ccall "qtc_QAbstractButton_autoRepeatDelay" qtc_QAbstractButton_autoRepeatDelay :: Ptr (TQAbstractButton a) -> IO CInt

autoRepeatInterval :: QAbstractButton a -> (()) -> IO (Int)
autoRepeatInterval x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_autoRepeatInterval cobj_x0

foreign import ccall "qtc_QAbstractButton_autoRepeatInterval" qtc_QAbstractButton_autoRepeatInterval :: Ptr (TQAbstractButton a) -> IO CInt

instance QchangeEvent (QAbstractButton ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_changeEvent_h" qtc_QAbstractButton_changeEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractButtonSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_changeEvent_h cobj_x0 cobj_x1

instance QcheckStateSet (QAbstractButton ()) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_checkStateSet cobj_x0

foreign import ccall "qtc_QAbstractButton_checkStateSet" qtc_QAbstractButton_checkStateSet :: Ptr (TQAbstractButton a) -> IO ()

instance QcheckStateSet (QAbstractButtonSc a) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_checkStateSet cobj_x0

click :: QAbstractButton a -> (()) -> IO ()
click x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_click cobj_x0

foreign import ccall "qtc_QAbstractButton_click" qtc_QAbstractButton_click :: Ptr (TQAbstractButton a) -> IO ()

instance Qevent (QAbstractButton ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_event_h" qtc_QAbstractButton_event_h :: Ptr (TQAbstractButton a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractButtonSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractButton ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_focusInEvent_h" qtc_QAbstractButton_focusInEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractButtonSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QAbstractButton ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_focusOutEvent_h" qtc_QAbstractButton_focusOutEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractButtonSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_focusOutEvent_h cobj_x0 cobj_x1

instance Qgroup (QAbstractButton a) (()) (IO (QButtonGroup ())) where
 group x0 ()
  = withQButtonGroupResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_group cobj_x0

foreign import ccall "qtc_QAbstractButton_group" qtc_QAbstractButton_group :: Ptr (TQAbstractButton a) -> IO (Ptr (TQButtonGroup ()))

instance QhitButton (QAbstractButton ()) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractButton_hitButton_qth" qtc_QAbstractButton_hitButton_qth :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO CBool

instance QhitButton (QAbstractButtonSc a) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqhitButton (QAbstractButton ()) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_hitButton cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_hitButton" qtc_QAbstractButton_hitButton :: Ptr (TQAbstractButton a) -> Ptr (TQPoint t1) -> IO CBool

instance QqhitButton (QAbstractButtonSc a) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_hitButton cobj_x0 cobj_x1

instance Qicon (QAbstractButton a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_icon cobj_x0

foreign import ccall "qtc_QAbstractButton_icon" qtc_QAbstractButton_icon :: Ptr (TQAbstractButton a) -> IO (Ptr (TQIcon ()))

instance QqiconSize (QAbstractButton a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_iconSize cobj_x0

foreign import ccall "qtc_QAbstractButton_iconSize" qtc_QAbstractButton_iconSize :: Ptr (TQAbstractButton a) -> IO (Ptr (TQSize ()))

instance QiconSize (QAbstractButton a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractButton_iconSize_qth" qtc_QAbstractButton_iconSize_qth :: Ptr (TQAbstractButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QisCheckable (QAbstractButton a) (()) where
 isCheckable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_isCheckable cobj_x0

foreign import ccall "qtc_QAbstractButton_isCheckable" qtc_QAbstractButton_isCheckable :: Ptr (TQAbstractButton a) -> IO CBool

instance QisChecked (QAbstractButton a) (()) where
 isChecked x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_isChecked cobj_x0

foreign import ccall "qtc_QAbstractButton_isChecked" qtc_QAbstractButton_isChecked :: Ptr (TQAbstractButton a) -> IO CBool

isDown :: QAbstractButton a -> (()) -> IO (Bool)
isDown x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_isDown cobj_x0

foreign import ccall "qtc_QAbstractButton_isDown" qtc_QAbstractButton_isDown :: Ptr (TQAbstractButton a) -> IO CBool

instance QkeyPressEvent (QAbstractButton ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_keyPressEvent_h" qtc_QAbstractButton_keyPressEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractButtonSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QAbstractButton ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_keyReleaseEvent_h" qtc_QAbstractButton_keyReleaseEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractButtonSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractButton ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_mouseMoveEvent_h" qtc_QAbstractButton_mouseMoveEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractButtonSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractButton ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_mousePressEvent_h" qtc_QAbstractButton_mousePressEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractButtonSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractButton ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_mouseReleaseEvent_h" qtc_QAbstractButton_mouseReleaseEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractButtonSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QnextCheckState (QAbstractButton ()) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_nextCheckState cobj_x0

foreign import ccall "qtc_QAbstractButton_nextCheckState" qtc_QAbstractButton_nextCheckState :: Ptr (TQAbstractButton a) -> IO ()

instance QnextCheckState (QAbstractButtonSc a) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_nextCheckState cobj_x0

instance QpaintEvent (QAbstractButton ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_paintEvent_h" qtc_QAbstractButton_paintEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractButtonSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_paintEvent_h cobj_x0 cobj_x1

setAutoExclusive :: QAbstractButton a -> ((Bool)) -> IO ()
setAutoExclusive x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setAutoExclusive cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setAutoExclusive" qtc_QAbstractButton_setAutoExclusive :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QsetAutoRepeat (QAbstractButton a) ((Bool)) where
 setAutoRepeat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setAutoRepeat cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setAutoRepeat" qtc_QAbstractButton_setAutoRepeat :: Ptr (TQAbstractButton a) -> CBool -> IO ()

setAutoRepeatDelay :: QAbstractButton a -> ((Int)) -> IO ()
setAutoRepeatDelay x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setAutoRepeatDelay cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractButton_setAutoRepeatDelay" qtc_QAbstractButton_setAutoRepeatDelay :: Ptr (TQAbstractButton a) -> CInt -> IO ()

setAutoRepeatInterval :: QAbstractButton a -> ((Int)) -> IO ()
setAutoRepeatInterval x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setAutoRepeatInterval cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractButton_setAutoRepeatInterval" qtc_QAbstractButton_setAutoRepeatInterval :: Ptr (TQAbstractButton a) -> CInt -> IO ()

instance QsetCheckable (QAbstractButton a) ((Bool)) where
 setCheckable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setCheckable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setCheckable" qtc_QAbstractButton_setCheckable :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QsetChecked (QAbstractButton a) ((Bool)) where
 setChecked x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setChecked cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setChecked" qtc_QAbstractButton_setChecked :: Ptr (TQAbstractButton a) -> CBool -> IO ()

setDown :: QAbstractButton a -> ((Bool)) -> IO ()
setDown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setDown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setDown" qtc_QAbstractButton_setDown :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QsetIcon (QAbstractButton a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_setIcon" qtc_QAbstractButton_setIcon :: Ptr (TQAbstractButton a) -> Ptr (TQIcon t1) -> IO ()

instance QqsetIconSize (QAbstractButton a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_setIconSize" qtc_QAbstractButton_setIconSize :: Ptr (TQAbstractButton a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QAbstractButton a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractButton_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractButton_setIconSize_qth" qtc_QAbstractButton_setIconSize_qth :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO ()

instance QsetShortcut (QAbstractButton a) ((QKeySequence t1)) where
 setShortcut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_setShortcut cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_setShortcut" qtc_QAbstractButton_setShortcut :: Ptr (TQAbstractButton a) -> Ptr (TQKeySequence t1) -> IO ()

instance QsetText (QAbstractButton a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractButton_setText" qtc_QAbstractButton_setText :: Ptr (TQAbstractButton a) -> CWString -> IO ()

instance Qshortcut (QAbstractButton a) (()) where
 shortcut x0 ()
  = withQKeySequenceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_shortcut cobj_x0

foreign import ccall "qtc_QAbstractButton_shortcut" qtc_QAbstractButton_shortcut :: Ptr (TQAbstractButton a) -> IO (Ptr (TQKeySequence ()))

instance Qtext (QAbstractButton a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_text cobj_x0

foreign import ccall "qtc_QAbstractButton_text" qtc_QAbstractButton_text :: Ptr (TQAbstractButton a) -> IO (Ptr (TQString ()))

instance QtimerEvent (QAbstractButton ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_timerEvent" qtc_QAbstractButton_timerEvent :: Ptr (TQAbstractButton a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractButtonSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_timerEvent cobj_x0 cobj_x1

instance Qtoggle (QAbstractButton a) (()) (IO ()) where
 toggle x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_toggle cobj_x0

foreign import ccall "qtc_QAbstractButton_toggle" qtc_QAbstractButton_toggle :: Ptr (TQAbstractButton a) -> IO ()

qAbstractButton_delete :: QAbstractButton a -> IO ()
qAbstractButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_delete cobj_x0

foreign import ccall "qtc_QAbstractButton_delete" qtc_QAbstractButton_delete :: Ptr (TQAbstractButton a) -> IO ()

qAbstractButton_deleteLater :: QAbstractButton a -> IO ()
qAbstractButton_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractButton_deleteLater" qtc_QAbstractButton_deleteLater :: Ptr (TQAbstractButton a) -> IO ()

instance QactionEvent (QAbstractButton ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_actionEvent_h" qtc_QAbstractButton_actionEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractButtonSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractButton ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_addAction" qtc_QAbstractButton_addAction :: Ptr (TQAbstractButton a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractButtonSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_addAction cobj_x0 cobj_x1

instance QcloseEvent (QAbstractButton ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_closeEvent_h" qtc_QAbstractButton_closeEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractButtonSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractButton ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_contextMenuEvent_h" qtc_QAbstractButton_contextMenuEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractButtonSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QAbstractButton ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_create cobj_x0

foreign import ccall "qtc_QAbstractButton_create" qtc_QAbstractButton_create :: Ptr (TQAbstractButton a) -> IO ()

instance Qcreate (QAbstractButtonSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_create cobj_x0

instance Qcreate (QAbstractButton ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_create1" qtc_QAbstractButton_create1 :: Ptr (TQAbstractButton a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractButtonSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractButton ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractButton_create2" qtc_QAbstractButton_create2 :: Ptr (TQAbstractButton a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractButtonSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractButton ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractButton_create3" qtc_QAbstractButton_create3 :: Ptr (TQAbstractButton a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractButtonSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractButton ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy cobj_x0

foreign import ccall "qtc_QAbstractButton_destroy" qtc_QAbstractButton_destroy :: Ptr (TQAbstractButton a) -> IO ()

instance Qdestroy (QAbstractButtonSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy cobj_x0

instance Qdestroy (QAbstractButton ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_destroy1" qtc_QAbstractButton_destroy1 :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance Qdestroy (QAbstractButtonSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractButton ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractButton_destroy2" qtc_QAbstractButton_destroy2 :: Ptr (TQAbstractButton a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractButtonSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractButton ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_devType_h cobj_x0

foreign import ccall "qtc_QAbstractButton_devType_h" qtc_QAbstractButton_devType_h :: Ptr (TQAbstractButton a) -> IO CInt

instance QdevType (QAbstractButtonSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_devType_h cobj_x0

instance QdragEnterEvent (QAbstractButton ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_dragEnterEvent_h" qtc_QAbstractButton_dragEnterEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractButtonSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractButton ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_dragLeaveEvent_h" qtc_QAbstractButton_dragLeaveEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractButtonSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractButton ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_dragMoveEvent_h" qtc_QAbstractButton_dragMoveEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractButtonSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractButton ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_dropEvent_h" qtc_QAbstractButton_dropEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractButtonSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QAbstractButton ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_enabledChange" qtc_QAbstractButton_enabledChange :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QenabledChange (QAbstractButtonSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractButton ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_enterEvent_h" qtc_QAbstractButton_enterEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractButtonSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractButton ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractButton_focusNextChild" qtc_QAbstractButton_focusNextChild :: Ptr (TQAbstractButton a) -> IO CBool

instance QfocusNextChild (QAbstractButtonSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractButton ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_focusNextPrevChild" qtc_QAbstractButton_focusNextPrevChild :: Ptr (TQAbstractButton a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractButtonSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QAbstractButton ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractButton_focusPreviousChild" qtc_QAbstractButton_focusPreviousChild :: Ptr (TQAbstractButton a) -> IO CBool

instance QfocusPreviousChild (QAbstractButtonSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_focusPreviousChild cobj_x0

instance QfontChange (QAbstractButton ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_fontChange" qtc_QAbstractButton_fontChange :: Ptr (TQAbstractButton a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractButtonSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractButton ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractButton_heightForWidth_h" qtc_QAbstractButton_heightForWidth_h :: Ptr (TQAbstractButton a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractButtonSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QAbstractButton ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_hideEvent_h" qtc_QAbstractButton_hideEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractButtonSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractButton ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_inputMethodEvent" qtc_QAbstractButton_inputMethodEvent :: Ptr (TQAbstractButton a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractButtonSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractButton ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractButton_inputMethodQuery_h" qtc_QAbstractButton_inputMethodQuery_h :: Ptr (TQAbstractButton a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractButtonSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QAbstractButton ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_languageChange cobj_x0

foreign import ccall "qtc_QAbstractButton_languageChange" qtc_QAbstractButton_languageChange :: Ptr (TQAbstractButton a) -> IO ()

instance QlanguageChange (QAbstractButtonSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_languageChange cobj_x0

instance QleaveEvent (QAbstractButton ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_leaveEvent_h" qtc_QAbstractButton_leaveEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractButtonSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractButton ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractButton_metric" qtc_QAbstractButton_metric :: Ptr (TQAbstractButton a) -> CLong -> IO CInt

instance Qmetric (QAbstractButtonSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QAbstractButton ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractButton_minimumSizeHint_h" qtc_QAbstractButton_minimumSizeHint_h :: Ptr (TQAbstractButton a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractButtonSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractButton ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractButton_minimumSizeHint_qth_h" qtc_QAbstractButton_minimumSizeHint_qth_h :: Ptr (TQAbstractButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractButtonSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QAbstractButton ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_mouseDoubleClickEvent_h" qtc_QAbstractButton_mouseDoubleClickEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractButtonSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QAbstractButton ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractButton_move1" qtc_QAbstractButton_move1 :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractButtonSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractButton ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractButton_move_qth" qtc_QAbstractButton_move_qth :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractButtonSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractButton ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_move" qtc_QAbstractButton_move :: Ptr (TQAbstractButton a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractButtonSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractButton ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_moveEvent_h" qtc_QAbstractButton_moveEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractButtonSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractButton ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractButton_paintEngine_h" qtc_QAbstractButton_paintEngine_h :: Ptr (TQAbstractButton a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractButtonSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_paintEngine_h cobj_x0

instance QpaletteChange (QAbstractButton ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_paletteChange" qtc_QAbstractButton_paletteChange :: Ptr (TQAbstractButton a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractButtonSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractButton ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_repaint cobj_x0

foreign import ccall "qtc_QAbstractButton_repaint" qtc_QAbstractButton_repaint :: Ptr (TQAbstractButton a) -> IO ()

instance Qrepaint (QAbstractButtonSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_repaint cobj_x0

instance Qrepaint (QAbstractButton ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractButton_repaint2" qtc_QAbstractButton_repaint2 :: Ptr (TQAbstractButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractButtonSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractButton ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_repaint1" qtc_QAbstractButton_repaint1 :: Ptr (TQAbstractButton a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractButtonSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractButton ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractButton_resetInputContext" qtc_QAbstractButton_resetInputContext :: Ptr (TQAbstractButton a) -> IO ()

instance QresetInputContext (QAbstractButtonSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_resetInputContext cobj_x0

instance Qresize (QAbstractButton ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractButton_resize1" qtc_QAbstractButton_resize1 :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractButtonSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractButton ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_resize" qtc_QAbstractButton_resize :: Ptr (TQAbstractButton a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractButtonSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_resize cobj_x0 cobj_x1

instance Qresize (QAbstractButton ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractButton_resize_qth" qtc_QAbstractButton_resize_qth :: Ptr (TQAbstractButton a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractButtonSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QAbstractButton ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_resizeEvent_h" qtc_QAbstractButton_resizeEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractButtonSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QAbstractButton ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractButton_setGeometry1" qtc_QAbstractButton_setGeometry1 :: Ptr (TQAbstractButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractButtonSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractButton ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_setGeometry" qtc_QAbstractButton_setGeometry :: Ptr (TQAbstractButton a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractButtonSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractButton ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractButton_setGeometry_qth" qtc_QAbstractButton_setGeometry_qth :: Ptr (TQAbstractButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractButtonSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractButton ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setMouseTracking" qtc_QAbstractButton_setMouseTracking :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractButtonSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QAbstractButton ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_setVisible_h" qtc_QAbstractButton_setVisible_h :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QsetVisible (QAbstractButtonSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QAbstractButton ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_showEvent_h" qtc_QAbstractButton_showEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractButtonSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QAbstractButton ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractButton_sizeHint_h" qtc_QAbstractButton_sizeHint_h :: Ptr (TQAbstractButton a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractButtonSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sizeHint_h cobj_x0

instance QsizeHint (QAbstractButton ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractButton_sizeHint_qth_h" qtc_QAbstractButton_sizeHint_qth_h :: Ptr (TQAbstractButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractButtonSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QAbstractButton ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_tabletEvent_h" qtc_QAbstractButton_tabletEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractButtonSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractButton ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractButton_updateMicroFocus" qtc_QAbstractButton_updateMicroFocus :: Ptr (TQAbstractButton a) -> IO ()

instance QupdateMicroFocus (QAbstractButtonSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_updateMicroFocus cobj_x0

instance QwheelEvent (QAbstractButton ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_wheelEvent_h" qtc_QAbstractButton_wheelEvent_h :: Ptr (TQAbstractButton a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractButtonSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QAbstractButton ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractButton_windowActivationChange" qtc_QAbstractButton_windowActivationChange :: Ptr (TQAbstractButton a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractButtonSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractButton ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_childEvent" qtc_QAbstractButton_childEvent :: Ptr (TQAbstractButton a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractButtonSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractButton ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractButton_connectNotify" qtc_QAbstractButton_connectNotify :: Ptr (TQAbstractButton a) -> CWString -> IO ()

instance QconnectNotify (QAbstractButtonSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractButton ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractButton_customEvent" qtc_QAbstractButton_customEvent :: Ptr (TQAbstractButton a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractButtonSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractButton_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractButton ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractButton_disconnectNotify" qtc_QAbstractButton_disconnectNotify :: Ptr (TQAbstractButton a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractButtonSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAbstractButton ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractButton_eventFilter_h" qtc_QAbstractButton_eventFilter_h :: Ptr (TQAbstractButton a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractButtonSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractButton ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractButton_receivers" qtc_QAbstractButton_receivers :: Ptr (TQAbstractButton a) -> CWString -> IO CInt

instance Qreceivers (QAbstractButtonSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractButton_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractButton ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sender cobj_x0

foreign import ccall "qtc_QAbstractButton_sender" qtc_QAbstractButton_sender :: Ptr (TQAbstractButton a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractButtonSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractButton_sender cobj_x0

