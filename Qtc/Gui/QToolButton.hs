{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QToolButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QToolButton (
  QqToolButton(..)
  ,autoRaise
  ,popupMode
  ,setAutoRaise
  ,setPopupMode
  ,qToolButton_delete
  ,qToolButton_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QToolButton
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QToolButton ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolButton_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QToolButton_userMethod" qtc_QToolButton_userMethod :: Ptr (TQToolButton a) -> CInt -> IO ()

instance QuserMethod (QToolButtonSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolButton_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QToolButton ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QToolButton_userMethodVariant" qtc_QToolButton_userMethodVariant :: Ptr (TQToolButton a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QToolButtonSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqToolButton x1 where
  qToolButton :: x1 -> IO (QToolButton ())

instance QqToolButton (()) where
 qToolButton ()
  = withQToolButtonResult $
    qtc_QToolButton

foreign import ccall "qtc_QToolButton" qtc_QToolButton :: IO (Ptr (TQToolButton ()))

instance QqToolButton ((QWidget t1)) where
 qToolButton (x1)
  = withQToolButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton1 cobj_x1

foreign import ccall "qtc_QToolButton1" qtc_QToolButton1 :: Ptr (TQWidget t1) -> IO (Ptr (TQToolButton ()))

instance QactionEvent (QToolButton ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_actionEvent_h" qtc_QToolButton_actionEvent_h :: Ptr (TQToolButton a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QToolButtonSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_actionEvent_h cobj_x0 cobj_x1

instance QarrowType (QToolButton a) (()) where
 arrowType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_arrowType cobj_x0

foreign import ccall "qtc_QToolButton_arrowType" qtc_QToolButton_arrowType :: Ptr (TQToolButton a) -> IO CLong

autoRaise :: QToolButton a -> (()) -> IO (Bool)
autoRaise x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_autoRaise cobj_x0

foreign import ccall "qtc_QToolButton_autoRaise" qtc_QToolButton_autoRaise :: Ptr (TQToolButton a) -> IO CBool

instance QchangeEvent (QToolButton ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_changeEvent_h" qtc_QToolButton_changeEvent_h :: Ptr (TQToolButton a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QToolButtonSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_changeEvent_h cobj_x0 cobj_x1

instance QdefaultAction (QToolButton a) (()) where
 defaultAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_defaultAction cobj_x0

foreign import ccall "qtc_QToolButton_defaultAction" qtc_QToolButton_defaultAction :: Ptr (TQToolButton a) -> IO (Ptr (TQAction ()))

instance QenterEvent (QToolButton ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_enterEvent_h" qtc_QToolButton_enterEvent_h :: Ptr (TQToolButton a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QToolButtonSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_enterEvent_h cobj_x0 cobj_x1

instance Qevent (QToolButton ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_event_h" qtc_QToolButton_event_h :: Ptr (TQToolButton a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QToolButtonSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_event_h cobj_x0 cobj_x1

instance QhitButton (QToolButton ()) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QToolButton_hitButton_qth" qtc_QToolButton_hitButton_qth :: Ptr (TQToolButton a) -> CInt -> CInt -> IO CBool

instance QhitButton (QToolButtonSc a) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqhitButton (QToolButton ()) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_hitButton cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_hitButton" qtc_QToolButton_hitButton :: Ptr (TQToolButton a) -> Ptr (TQPoint t1) -> IO CBool

instance QqhitButton (QToolButtonSc a) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_hitButton cobj_x0 cobj_x1

instance QinitStyleOption (QToolButton ()) ((QStyleOptionToolButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_initStyleOption" qtc_QToolButton_initStyleOption :: Ptr (TQToolButton a) -> Ptr (TQStyleOptionToolButton t1) -> IO ()

instance QinitStyleOption (QToolButtonSc a) ((QStyleOptionToolButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_initStyleOption cobj_x0 cobj_x1

instance QleaveEvent (QToolButton ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_leaveEvent_h" qtc_QToolButton_leaveEvent_h :: Ptr (TQToolButton a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QToolButtonSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_leaveEvent_h cobj_x0 cobj_x1

instance Qmenu (QToolButton a) (()) where
 menu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_menu cobj_x0

foreign import ccall "qtc_QToolButton_menu" qtc_QToolButton_menu :: Ptr (TQToolButton a) -> IO (Ptr (TQMenu ()))

instance QqminimumSizeHint (QToolButton ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QToolButton_minimumSizeHint_h" qtc_QToolButton_minimumSizeHint_h :: Ptr (TQToolButton a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QToolButtonSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QToolButton ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolButton_minimumSizeHint_qth_h" qtc_QToolButton_minimumSizeHint_qth_h :: Ptr (TQToolButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QToolButtonSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmousePressEvent (QToolButton ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_mousePressEvent_h" qtc_QToolButton_mousePressEvent_h :: Ptr (TQToolButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QToolButtonSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QToolButton ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_mouseReleaseEvent_h" qtc_QToolButton_mouseReleaseEvent_h :: Ptr (TQToolButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QToolButtonSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QnextCheckState (QToolButton ()) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_nextCheckState cobj_x0

foreign import ccall "qtc_QToolButton_nextCheckState" qtc_QToolButton_nextCheckState :: Ptr (TQToolButton a) -> IO ()

instance QnextCheckState (QToolButtonSc a) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_nextCheckState cobj_x0

instance QpaintEvent (QToolButton ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_paintEvent_h" qtc_QToolButton_paintEvent_h :: Ptr (TQToolButton a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QToolButtonSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_paintEvent_h cobj_x0 cobj_x1

popupMode :: QToolButton a -> (()) -> IO (ToolButtonPopupMode)
popupMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_popupMode cobj_x0

foreign import ccall "qtc_QToolButton_popupMode" qtc_QToolButton_popupMode :: Ptr (TQToolButton a) -> IO CLong

instance QsetArrowType (QToolButton a) ((ArrowType)) where
 setArrowType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setArrowType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolButton_setArrowType" qtc_QToolButton_setArrowType :: Ptr (TQToolButton a) -> CLong -> IO ()

setAutoRaise :: QToolButton a -> ((Bool)) -> IO ()
setAutoRaise x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setAutoRaise cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_setAutoRaise" qtc_QToolButton_setAutoRaise :: Ptr (TQToolButton a) -> CBool -> IO ()

instance QsetDefaultAction (QToolButton a) ((QAction t1)) where
 setDefaultAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_setDefaultAction cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_setDefaultAction" qtc_QToolButton_setDefaultAction :: Ptr (TQToolButton a) -> Ptr (TQAction t1) -> IO ()

instance QsetMenu (QToolButton a) ((QMenu t1)) where
 setMenu x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_setMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_setMenu" qtc_QToolButton_setMenu :: Ptr (TQToolButton a) -> Ptr (TQMenu t1) -> IO ()

setPopupMode :: QToolButton a -> ((ToolButtonPopupMode)) -> IO ()
setPopupMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setPopupMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolButton_setPopupMode" qtc_QToolButton_setPopupMode :: Ptr (TQToolButton a) -> CLong -> IO ()

instance QsetToolButtonStyle (QToolButton a) ((ToolButtonStyle)) where
 setToolButtonStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setToolButtonStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolButton_setToolButtonStyle" qtc_QToolButton_setToolButtonStyle :: Ptr (TQToolButton a) -> CLong -> IO ()

instance QshowMenu (QToolButton a) (()) where
 showMenu x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_showMenu cobj_x0

foreign import ccall "qtc_QToolButton_showMenu" qtc_QToolButton_showMenu :: Ptr (TQToolButton a) -> IO ()

instance QqsizeHint (QToolButton ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sizeHint_h cobj_x0

foreign import ccall "qtc_QToolButton_sizeHint_h" qtc_QToolButton_sizeHint_h :: Ptr (TQToolButton a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QToolButtonSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sizeHint_h cobj_x0

instance QsizeHint (QToolButton ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolButton_sizeHint_qth_h" qtc_QToolButton_sizeHint_qth_h :: Ptr (TQToolButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QToolButtonSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtimerEvent (QToolButton ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_timerEvent" qtc_QToolButton_timerEvent :: Ptr (TQToolButton a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QToolButtonSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_timerEvent cobj_x0 cobj_x1

instance QtoolButtonStyle (QToolButton a) (()) where
 toolButtonStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_toolButtonStyle cobj_x0

foreign import ccall "qtc_QToolButton_toolButtonStyle" qtc_QToolButton_toolButtonStyle :: Ptr (TQToolButton a) -> IO CLong

qToolButton_delete :: QToolButton a -> IO ()
qToolButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_delete cobj_x0

foreign import ccall "qtc_QToolButton_delete" qtc_QToolButton_delete :: Ptr (TQToolButton a) -> IO ()

qToolButton_deleteLater :: QToolButton a -> IO ()
qToolButton_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_deleteLater cobj_x0

foreign import ccall "qtc_QToolButton_deleteLater" qtc_QToolButton_deleteLater :: Ptr (TQToolButton a) -> IO ()

instance QcheckStateSet (QToolButton ()) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_checkStateSet cobj_x0

foreign import ccall "qtc_QToolButton_checkStateSet" qtc_QToolButton_checkStateSet :: Ptr (TQToolButton a) -> IO ()

instance QcheckStateSet (QToolButtonSc a) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_checkStateSet cobj_x0

instance QfocusInEvent (QToolButton ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_focusInEvent_h" qtc_QToolButton_focusInEvent_h :: Ptr (TQToolButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QToolButtonSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QToolButton ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_focusOutEvent_h" qtc_QToolButton_focusOutEvent_h :: Ptr (TQToolButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QToolButtonSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_focusOutEvent_h cobj_x0 cobj_x1

instance QkeyPressEvent (QToolButton ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_keyPressEvent_h" qtc_QToolButton_keyPressEvent_h :: Ptr (TQToolButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QToolButtonSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QToolButton ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_keyReleaseEvent_h" qtc_QToolButton_keyReleaseEvent_h :: Ptr (TQToolButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QToolButtonSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QToolButton ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_mouseMoveEvent_h" qtc_QToolButton_mouseMoveEvent_h :: Ptr (TQToolButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QToolButtonSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseMoveEvent_h cobj_x0 cobj_x1

instance QaddAction (QToolButton ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_addAction" qtc_QToolButton_addAction :: Ptr (TQToolButton a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QToolButtonSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_addAction cobj_x0 cobj_x1

instance QcloseEvent (QToolButton ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_closeEvent_h" qtc_QToolButton_closeEvent_h :: Ptr (TQToolButton a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QToolButtonSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QToolButton ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_contextMenuEvent_h" qtc_QToolButton_contextMenuEvent_h :: Ptr (TQToolButton a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QToolButtonSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QToolButton ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_create cobj_x0

foreign import ccall "qtc_QToolButton_create" qtc_QToolButton_create :: Ptr (TQToolButton a) -> IO ()

instance Qcreate (QToolButtonSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_create cobj_x0

instance Qcreate (QToolButton ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_create1" qtc_QToolButton_create1 :: Ptr (TQToolButton a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QToolButtonSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create1 cobj_x0 cobj_x1

instance Qcreate (QToolButton ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QToolButton_create2" qtc_QToolButton_create2 :: Ptr (TQToolButton a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QToolButtonSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QToolButton ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QToolButton_create3" qtc_QToolButton_create3 :: Ptr (TQToolButton a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QToolButtonSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QToolButton ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy cobj_x0

foreign import ccall "qtc_QToolButton_destroy" qtc_QToolButton_destroy :: Ptr (TQToolButton a) -> IO ()

instance Qdestroy (QToolButtonSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy cobj_x0

instance Qdestroy (QToolButton ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_destroy1" qtc_QToolButton_destroy1 :: Ptr (TQToolButton a) -> CBool -> IO ()

instance Qdestroy (QToolButtonSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QToolButton ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QToolButton_destroy2" qtc_QToolButton_destroy2 :: Ptr (TQToolButton a) -> CBool -> CBool -> IO ()

instance Qdestroy (QToolButtonSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QToolButton ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_devType_h cobj_x0

foreign import ccall "qtc_QToolButton_devType_h" qtc_QToolButton_devType_h :: Ptr (TQToolButton a) -> IO CInt

instance QdevType (QToolButtonSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_devType_h cobj_x0

instance QdragEnterEvent (QToolButton ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_dragEnterEvent_h" qtc_QToolButton_dragEnterEvent_h :: Ptr (TQToolButton a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QToolButtonSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QToolButton ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_dragLeaveEvent_h" qtc_QToolButton_dragLeaveEvent_h :: Ptr (TQToolButton a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QToolButtonSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QToolButton ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_dragMoveEvent_h" qtc_QToolButton_dragMoveEvent_h :: Ptr (TQToolButton a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QToolButtonSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QToolButton ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_dropEvent_h" qtc_QToolButton_dropEvent_h :: Ptr (TQToolButton a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QToolButtonSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QToolButton ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_enabledChange" qtc_QToolButton_enabledChange :: Ptr (TQToolButton a) -> CBool -> IO ()

instance QenabledChange (QToolButtonSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_enabledChange cobj_x0 (toCBool x1)

instance QfocusNextChild (QToolButton ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusNextChild cobj_x0

foreign import ccall "qtc_QToolButton_focusNextChild" qtc_QToolButton_focusNextChild :: Ptr (TQToolButton a) -> IO CBool

instance QfocusNextChild (QToolButtonSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusNextChild cobj_x0

instance QfocusNextPrevChild (QToolButton ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_focusNextPrevChild" qtc_QToolButton_focusNextPrevChild :: Ptr (TQToolButton a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QToolButtonSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QToolButton ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusPreviousChild cobj_x0

foreign import ccall "qtc_QToolButton_focusPreviousChild" qtc_QToolButton_focusPreviousChild :: Ptr (TQToolButton a) -> IO CBool

instance QfocusPreviousChild (QToolButtonSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_focusPreviousChild cobj_x0

instance QfontChange (QToolButton ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_fontChange" qtc_QToolButton_fontChange :: Ptr (TQToolButton a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QToolButtonSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QToolButton ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolButton_heightForWidth_h" qtc_QToolButton_heightForWidth_h :: Ptr (TQToolButton a) -> CInt -> IO CInt

instance QheightForWidth (QToolButtonSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QToolButton ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_hideEvent_h" qtc_QToolButton_hideEvent_h :: Ptr (TQToolButton a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QToolButtonSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QToolButton ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_inputMethodEvent" qtc_QToolButton_inputMethodEvent :: Ptr (TQToolButton a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QToolButtonSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QToolButton ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolButton_inputMethodQuery_h" qtc_QToolButton_inputMethodQuery_h :: Ptr (TQToolButton a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QToolButtonSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QToolButton ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_languageChange cobj_x0

foreign import ccall "qtc_QToolButton_languageChange" qtc_QToolButton_languageChange :: Ptr (TQToolButton a) -> IO ()

instance QlanguageChange (QToolButtonSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_languageChange cobj_x0

instance Qmetric (QToolButton ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolButton_metric" qtc_QToolButton_metric :: Ptr (TQToolButton a) -> CLong -> IO CInt

instance Qmetric (QToolButtonSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QToolButton ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_mouseDoubleClickEvent_h" qtc_QToolButton_mouseDoubleClickEvent_h :: Ptr (TQToolButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QToolButtonSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QToolButton ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolButton_move1" qtc_QToolButton_move1 :: Ptr (TQToolButton a) -> CInt -> CInt -> IO ()

instance Qmove (QToolButtonSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QToolButton ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QToolButton_move_qth" qtc_QToolButton_move_qth :: Ptr (TQToolButton a) -> CInt -> CInt -> IO ()

instance Qmove (QToolButtonSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QToolButton ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_move cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_move" qtc_QToolButton_move :: Ptr (TQToolButton a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QToolButtonSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_move cobj_x0 cobj_x1

instance QmoveEvent (QToolButton ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_moveEvent_h" qtc_QToolButton_moveEvent_h :: Ptr (TQToolButton a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QToolButtonSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QToolButton ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_paintEngine_h cobj_x0

foreign import ccall "qtc_QToolButton_paintEngine_h" qtc_QToolButton_paintEngine_h :: Ptr (TQToolButton a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QToolButtonSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_paintEngine_h cobj_x0

instance QpaletteChange (QToolButton ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_paletteChange" qtc_QToolButton_paletteChange :: Ptr (TQToolButton a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QToolButtonSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QToolButton ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_repaint cobj_x0

foreign import ccall "qtc_QToolButton_repaint" qtc_QToolButton_repaint :: Ptr (TQToolButton a) -> IO ()

instance Qrepaint (QToolButtonSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_repaint cobj_x0

instance Qrepaint (QToolButton ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolButton_repaint2" qtc_QToolButton_repaint2 :: Ptr (TQToolButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QToolButtonSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QToolButton ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_repaint1" qtc_QToolButton_repaint1 :: Ptr (TQToolButton a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QToolButtonSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QToolButton ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_resetInputContext cobj_x0

foreign import ccall "qtc_QToolButton_resetInputContext" qtc_QToolButton_resetInputContext :: Ptr (TQToolButton a) -> IO ()

instance QresetInputContext (QToolButtonSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_resetInputContext cobj_x0

instance Qresize (QToolButton ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolButton_resize1" qtc_QToolButton_resize1 :: Ptr (TQToolButton a) -> CInt -> CInt -> IO ()

instance Qresize (QToolButtonSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QToolButton ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_resize" qtc_QToolButton_resize :: Ptr (TQToolButton a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QToolButtonSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_resize cobj_x0 cobj_x1

instance Qresize (QToolButton ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QToolButton_resize_qth" qtc_QToolButton_resize_qth :: Ptr (TQToolButton a) -> CInt -> CInt -> IO ()

instance Qresize (QToolButtonSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QToolButton ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_resizeEvent_h" qtc_QToolButton_resizeEvent_h :: Ptr (TQToolButton a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QToolButtonSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QToolButton ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolButton_setGeometry1" qtc_QToolButton_setGeometry1 :: Ptr (TQToolButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolButtonSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QToolButton ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_setGeometry" qtc_QToolButton_setGeometry :: Ptr (TQToolButton a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QToolButtonSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QToolButton ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QToolButton_setGeometry_qth" qtc_QToolButton_setGeometry_qth :: Ptr (TQToolButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolButtonSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QToolButton ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_setMouseTracking" qtc_QToolButton_setMouseTracking :: Ptr (TQToolButton a) -> CBool -> IO ()

instance QsetMouseTracking (QToolButtonSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QToolButton ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_setVisible_h" qtc_QToolButton_setVisible_h :: Ptr (TQToolButton a) -> CBool -> IO ()

instance QsetVisible (QToolButtonSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QToolButton ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_showEvent_h" qtc_QToolButton_showEvent_h :: Ptr (TQToolButton a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QToolButtonSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QToolButton ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_tabletEvent_h" qtc_QToolButton_tabletEvent_h :: Ptr (TQToolButton a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QToolButtonSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QToolButton ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_updateMicroFocus cobj_x0

foreign import ccall "qtc_QToolButton_updateMicroFocus" qtc_QToolButton_updateMicroFocus :: Ptr (TQToolButton a) -> IO ()

instance QupdateMicroFocus (QToolButtonSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_updateMicroFocus cobj_x0

instance QwheelEvent (QToolButton ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_wheelEvent_h" qtc_QToolButton_wheelEvent_h :: Ptr (TQToolButton a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QToolButtonSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QToolButton ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolButton_windowActivationChange" qtc_QToolButton_windowActivationChange :: Ptr (TQToolButton a) -> CBool -> IO ()

instance QwindowActivationChange (QToolButtonSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QToolButton ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_childEvent" qtc_QToolButton_childEvent :: Ptr (TQToolButton a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QToolButtonSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QToolButton ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolButton_connectNotify" qtc_QToolButton_connectNotify :: Ptr (TQToolButton a) -> CWString -> IO ()

instance QconnectNotify (QToolButtonSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QToolButton ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolButton_customEvent" qtc_QToolButton_customEvent :: Ptr (TQToolButton a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QToolButtonSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolButton_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QToolButton ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolButton_disconnectNotify" qtc_QToolButton_disconnectNotify :: Ptr (TQToolButton a) -> CWString -> IO ()

instance QdisconnectNotify (QToolButtonSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QToolButton ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QToolButton_eventFilter_h" qtc_QToolButton_eventFilter_h :: Ptr (TQToolButton a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QToolButtonSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QToolButton ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QToolButton_receivers" qtc_QToolButton_receivers :: Ptr (TQToolButton a) -> CWString -> IO CInt

instance Qreceivers (QToolButtonSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolButton_receivers cobj_x0 cstr_x1

instance Qsender (QToolButton ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sender cobj_x0

foreign import ccall "qtc_QToolButton_sender" qtc_QToolButton_sender :: Ptr (TQToolButton a) -> IO (Ptr (TQObject ()))

instance Qsender (QToolButtonSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolButton_sender cobj_x0

