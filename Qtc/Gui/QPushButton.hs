{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPushButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPushButton (
  QqPushButton(..)
  ,autoDefault
  ,isDefault
  ,setAutoDefault
  ,setDefault
  ,qPushButton_delete
  ,qPushButton_deleteLater
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

instance QuserMethod (QPushButton ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPushButton_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QPushButton_userMethod" qtc_QPushButton_userMethod :: Ptr (TQPushButton a) -> CInt -> IO ()

instance QuserMethod (QPushButtonSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPushButton_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QPushButton ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPushButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QPushButton_userMethodVariant" qtc_QPushButton_userMethodVariant :: Ptr (TQPushButton a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QPushButtonSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPushButton_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqPushButton x1 where
  qPushButton :: x1 -> IO (QPushButton ())

instance QqPushButton (()) where
 qPushButton ()
  = withQPushButtonResult $
    qtc_QPushButton

foreign import ccall "qtc_QPushButton" qtc_QPushButton :: IO (Ptr (TQPushButton ()))

instance QqPushButton ((QWidget t1)) where
 qPushButton (x1)
  = withQPushButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton1 cobj_x1

foreign import ccall "qtc_QPushButton1" qtc_QPushButton1 :: Ptr (TQWidget t1) -> IO (Ptr (TQPushButton ()))

instance QqPushButton ((String)) where
 qPushButton (x1)
  = withQPushButtonResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton2 cstr_x1

foreign import ccall "qtc_QPushButton2" qtc_QPushButton2 :: CWString -> IO (Ptr (TQPushButton ()))

instance QqPushButton ((QIcon t1, String)) where
 qPushButton (x1, x2)
  = withQPushButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QPushButton3 cobj_x1 cstr_x2

foreign import ccall "qtc_QPushButton3" qtc_QPushButton3 :: Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQPushButton ()))

instance QqPushButton ((String, QWidget t2)) where
 qPushButton (x1, x2)
  = withQPushButtonResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPushButton4 cstr_x1 cobj_x2

foreign import ccall "qtc_QPushButton4" qtc_QPushButton4 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQPushButton ()))

instance QqPushButton ((QIcon t1, String, QWidget t3)) where
 qPushButton (x1, x2, x3)
  = withQPushButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPushButton5 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QPushButton5" qtc_QPushButton5 :: Ptr (TQIcon t1) -> CWString -> Ptr (TQWidget t3) -> IO (Ptr (TQPushButton ()))

autoDefault :: QPushButton a -> (()) -> IO (Bool)
autoDefault x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_autoDefault cobj_x0

foreign import ccall "qtc_QPushButton_autoDefault" qtc_QPushButton_autoDefault :: Ptr (TQPushButton a) -> IO CBool

instance Qevent (QPushButton ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_event_h" qtc_QPushButton_event_h :: Ptr (TQPushButton a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QPushButtonSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QPushButton ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_focusInEvent_h" qtc_QPushButton_focusInEvent_h :: Ptr (TQPushButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QPushButtonSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QPushButton ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_focusOutEvent_h" qtc_QPushButton_focusOutEvent_h :: Ptr (TQPushButton a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QPushButtonSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_focusOutEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QPushButton ()) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_initStyleOption" qtc_QPushButton_initStyleOption :: Ptr (TQPushButton a) -> Ptr (TQStyleOptionButton t1) -> IO ()

instance QinitStyleOption (QPushButtonSc a) ((QStyleOptionButton t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_initStyleOption cobj_x0 cobj_x1

isDefault :: QPushButton a -> (()) -> IO (Bool)
isDefault x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_isDefault cobj_x0

foreign import ccall "qtc_QPushButton_isDefault" qtc_QPushButton_isDefault :: Ptr (TQPushButton a) -> IO CBool

instance QisFlat (QPushButton a) (()) where
 isFlat x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_isFlat cobj_x0

foreign import ccall "qtc_QPushButton_isFlat" qtc_QPushButton_isFlat :: Ptr (TQPushButton a) -> IO CBool

instance QkeyPressEvent (QPushButton ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_keyPressEvent_h" qtc_QPushButton_keyPressEvent_h :: Ptr (TQPushButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QPushButtonSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_keyPressEvent_h cobj_x0 cobj_x1

instance Qmenu (QPushButton a) (()) where
 menu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_menu cobj_x0

foreign import ccall "qtc_QPushButton_menu" qtc_QPushButton_menu :: Ptr (TQPushButton a) -> IO (Ptr (TQMenu ()))

instance QqminimumSizeHint (QPushButton ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QPushButton_minimumSizeHint_h" qtc_QPushButton_minimumSizeHint_h :: Ptr (TQPushButton a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QPushButtonSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QPushButton ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QPushButton_minimumSizeHint_qth_h" qtc_QPushButton_minimumSizeHint_qth_h :: Ptr (TQPushButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QPushButtonSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QpaintEvent (QPushButton ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_paintEvent_h" qtc_QPushButton_paintEvent_h :: Ptr (TQPushButton a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QPushButtonSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_paintEvent_h cobj_x0 cobj_x1

setAutoDefault :: QPushButton a -> ((Bool)) -> IO ()
setAutoDefault x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setAutoDefault cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_setAutoDefault" qtc_QPushButton_setAutoDefault :: Ptr (TQPushButton a) -> CBool -> IO ()

setDefault :: QPushButton a -> ((Bool)) -> IO ()
setDefault x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setDefault cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_setDefault" qtc_QPushButton_setDefault :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QsetFlat (QPushButton a) ((Bool)) where
 setFlat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setFlat cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_setFlat" qtc_QPushButton_setFlat :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QsetMenu (QPushButton a) ((QMenu t1)) where
 setMenu x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_setMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_setMenu" qtc_QPushButton_setMenu :: Ptr (TQPushButton a) -> Ptr (TQMenu t1) -> IO ()

instance QshowMenu (QPushButton a) (()) where
 showMenu x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_showMenu cobj_x0

foreign import ccall "qtc_QPushButton_showMenu" qtc_QPushButton_showMenu :: Ptr (TQPushButton a) -> IO ()

instance QqsizeHint (QPushButton ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sizeHint_h cobj_x0

foreign import ccall "qtc_QPushButton_sizeHint_h" qtc_QPushButton_sizeHint_h :: Ptr (TQPushButton a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QPushButtonSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sizeHint_h cobj_x0

instance QsizeHint (QPushButton ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QPushButton_sizeHint_qth_h" qtc_QPushButton_sizeHint_qth_h :: Ptr (TQPushButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QPushButtonSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qPushButton_delete :: QPushButton a -> IO ()
qPushButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_delete cobj_x0

foreign import ccall "qtc_QPushButton_delete" qtc_QPushButton_delete :: Ptr (TQPushButton a) -> IO ()

qPushButton_deleteLater :: QPushButton a -> IO ()
qPushButton_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_deleteLater cobj_x0

foreign import ccall "qtc_QPushButton_deleteLater" qtc_QPushButton_deleteLater :: Ptr (TQPushButton a) -> IO ()

instance QchangeEvent (QPushButton ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_changeEvent_h" qtc_QPushButton_changeEvent_h :: Ptr (TQPushButton a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QPushButtonSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_changeEvent_h cobj_x0 cobj_x1

instance QcheckStateSet (QPushButton ()) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_checkStateSet cobj_x0

foreign import ccall "qtc_QPushButton_checkStateSet" qtc_QPushButton_checkStateSet :: Ptr (TQPushButton a) -> IO ()

instance QcheckStateSet (QPushButtonSc a) (()) where
 checkStateSet x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_checkStateSet cobj_x0

instance QhitButton (QPushButton ()) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPushButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPushButton_hitButton_qth" qtc_QPushButton_hitButton_qth :: Ptr (TQPushButton a) -> CInt -> CInt -> IO CBool

instance QhitButton (QPushButtonSc a) ((Point)) where
 hitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPushButton_hitButton_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqhitButton (QPushButton ()) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_hitButton cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_hitButton" qtc_QPushButton_hitButton :: Ptr (TQPushButton a) -> Ptr (TQPoint t1) -> IO CBool

instance QqhitButton (QPushButtonSc a) ((QPoint t1)) where
 qhitButton x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_hitButton cobj_x0 cobj_x1

instance QkeyReleaseEvent (QPushButton ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_keyReleaseEvent_h" qtc_QPushButton_keyReleaseEvent_h :: Ptr (TQPushButton a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QPushButtonSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QPushButton ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_mouseMoveEvent_h" qtc_QPushButton_mouseMoveEvent_h :: Ptr (TQPushButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QPushButtonSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QPushButton ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_mousePressEvent_h" qtc_QPushButton_mousePressEvent_h :: Ptr (TQPushButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QPushButtonSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QPushButton ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_mouseReleaseEvent_h" qtc_QPushButton_mouseReleaseEvent_h :: Ptr (TQPushButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QPushButtonSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QnextCheckState (QPushButton ()) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_nextCheckState cobj_x0

foreign import ccall "qtc_QPushButton_nextCheckState" qtc_QPushButton_nextCheckState :: Ptr (TQPushButton a) -> IO ()

instance QnextCheckState (QPushButtonSc a) (()) where
 nextCheckState x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_nextCheckState cobj_x0

instance QtimerEvent (QPushButton ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_timerEvent" qtc_QPushButton_timerEvent :: Ptr (TQPushButton a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QPushButtonSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QPushButton ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_actionEvent_h" qtc_QPushButton_actionEvent_h :: Ptr (TQPushButton a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QPushButtonSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QPushButton ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_addAction" qtc_QPushButton_addAction :: Ptr (TQPushButton a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QPushButtonSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_addAction cobj_x0 cobj_x1

instance QcloseEvent (QPushButton ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_closeEvent_h" qtc_QPushButton_closeEvent_h :: Ptr (TQPushButton a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QPushButtonSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QPushButton ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_contextMenuEvent_h" qtc_QPushButton_contextMenuEvent_h :: Ptr (TQPushButton a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QPushButtonSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QPushButton ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_create cobj_x0

foreign import ccall "qtc_QPushButton_create" qtc_QPushButton_create :: Ptr (TQPushButton a) -> IO ()

instance Qcreate (QPushButtonSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_create cobj_x0

instance Qcreate (QPushButton ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_create1" qtc_QPushButton_create1 :: Ptr (TQPushButton a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QPushButtonSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create1 cobj_x0 cobj_x1

instance Qcreate (QPushButton ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QPushButton_create2" qtc_QPushButton_create2 :: Ptr (TQPushButton a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QPushButtonSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QPushButton ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QPushButton_create3" qtc_QPushButton_create3 :: Ptr (TQPushButton a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QPushButtonSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QPushButton ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy cobj_x0

foreign import ccall "qtc_QPushButton_destroy" qtc_QPushButton_destroy :: Ptr (TQPushButton a) -> IO ()

instance Qdestroy (QPushButtonSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy cobj_x0

instance Qdestroy (QPushButton ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_destroy1" qtc_QPushButton_destroy1 :: Ptr (TQPushButton a) -> CBool -> IO ()

instance Qdestroy (QPushButtonSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QPushButton ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QPushButton_destroy2" qtc_QPushButton_destroy2 :: Ptr (TQPushButton a) -> CBool -> CBool -> IO ()

instance Qdestroy (QPushButtonSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QPushButton ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_devType_h cobj_x0

foreign import ccall "qtc_QPushButton_devType_h" qtc_QPushButton_devType_h :: Ptr (TQPushButton a) -> IO CInt

instance QdevType (QPushButtonSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_devType_h cobj_x0

instance QdragEnterEvent (QPushButton ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_dragEnterEvent_h" qtc_QPushButton_dragEnterEvent_h :: Ptr (TQPushButton a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QPushButtonSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QPushButton ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_dragLeaveEvent_h" qtc_QPushButton_dragLeaveEvent_h :: Ptr (TQPushButton a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QPushButtonSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QPushButton ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_dragMoveEvent_h" qtc_QPushButton_dragMoveEvent_h :: Ptr (TQPushButton a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QPushButtonSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QPushButton ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_dropEvent_h" qtc_QPushButton_dropEvent_h :: Ptr (TQPushButton a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QPushButtonSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QPushButton ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_enabledChange" qtc_QPushButton_enabledChange :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QenabledChange (QPushButtonSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QPushButton ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_enterEvent_h" qtc_QPushButton_enterEvent_h :: Ptr (TQPushButton a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QPushButtonSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QPushButton ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusNextChild cobj_x0

foreign import ccall "qtc_QPushButton_focusNextChild" qtc_QPushButton_focusNextChild :: Ptr (TQPushButton a) -> IO CBool

instance QfocusNextChild (QPushButtonSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusNextChild cobj_x0

instance QfocusNextPrevChild (QPushButton ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_focusNextPrevChild" qtc_QPushButton_focusNextPrevChild :: Ptr (TQPushButton a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QPushButtonSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QPushButton ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusPreviousChild cobj_x0

foreign import ccall "qtc_QPushButton_focusPreviousChild" qtc_QPushButton_focusPreviousChild :: Ptr (TQPushButton a) -> IO CBool

instance QfocusPreviousChild (QPushButtonSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_focusPreviousChild cobj_x0

instance QfontChange (QPushButton ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_fontChange" qtc_QPushButton_fontChange :: Ptr (TQPushButton a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QPushButtonSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QPushButton ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPushButton_heightForWidth_h" qtc_QPushButton_heightForWidth_h :: Ptr (TQPushButton a) -> CInt -> IO CInt

instance QheightForWidth (QPushButtonSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QPushButton ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_hideEvent_h" qtc_QPushButton_hideEvent_h :: Ptr (TQPushButton a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QPushButtonSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QPushButton ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_inputMethodEvent" qtc_QPushButton_inputMethodEvent :: Ptr (TQPushButton a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QPushButtonSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QPushButton ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPushButton_inputMethodQuery_h" qtc_QPushButton_inputMethodQuery_h :: Ptr (TQPushButton a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QPushButtonSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QPushButton ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_languageChange cobj_x0

foreign import ccall "qtc_QPushButton_languageChange" qtc_QPushButton_languageChange :: Ptr (TQPushButton a) -> IO ()

instance QlanguageChange (QPushButtonSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_languageChange cobj_x0

instance QleaveEvent (QPushButton ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_leaveEvent_h" qtc_QPushButton_leaveEvent_h :: Ptr (TQPushButton a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QPushButtonSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QPushButton ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPushButton_metric" qtc_QPushButton_metric :: Ptr (TQPushButton a) -> CLong -> IO CInt

instance Qmetric (QPushButtonSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QPushButton ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_mouseDoubleClickEvent_h" qtc_QPushButton_mouseDoubleClickEvent_h :: Ptr (TQPushButton a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QPushButtonSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QPushButton ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPushButton_move1" qtc_QPushButton_move1 :: Ptr (TQPushButton a) -> CInt -> CInt -> IO ()

instance Qmove (QPushButtonSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QPushButton ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPushButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QPushButton_move_qth" qtc_QPushButton_move_qth :: Ptr (TQPushButton a) -> CInt -> CInt -> IO ()

instance Qmove (QPushButtonSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QPushButton_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QPushButton ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_move cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_move" qtc_QPushButton_move :: Ptr (TQPushButton a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QPushButtonSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_move cobj_x0 cobj_x1

instance QmoveEvent (QPushButton ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_moveEvent_h" qtc_QPushButton_moveEvent_h :: Ptr (TQPushButton a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QPushButtonSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QPushButton ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_paintEngine_h cobj_x0

foreign import ccall "qtc_QPushButton_paintEngine_h" qtc_QPushButton_paintEngine_h :: Ptr (TQPushButton a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QPushButtonSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_paintEngine_h cobj_x0

instance QpaletteChange (QPushButton ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_paletteChange" qtc_QPushButton_paletteChange :: Ptr (TQPushButton a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QPushButtonSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QPushButton ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_repaint cobj_x0

foreign import ccall "qtc_QPushButton_repaint" qtc_QPushButton_repaint :: Ptr (TQPushButton a) -> IO ()

instance Qrepaint (QPushButtonSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_repaint cobj_x0

instance Qrepaint (QPushButton ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPushButton_repaint2" qtc_QPushButton_repaint2 :: Ptr (TQPushButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QPushButtonSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QPushButton ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_repaint1" qtc_QPushButton_repaint1 :: Ptr (TQPushButton a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QPushButtonSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QPushButton ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_resetInputContext cobj_x0

foreign import ccall "qtc_QPushButton_resetInputContext" qtc_QPushButton_resetInputContext :: Ptr (TQPushButton a) -> IO ()

instance QresetInputContext (QPushButtonSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_resetInputContext cobj_x0

instance Qresize (QPushButton ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPushButton_resize1" qtc_QPushButton_resize1 :: Ptr (TQPushButton a) -> CInt -> CInt -> IO ()

instance Qresize (QPushButtonSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QPushButton ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_resize" qtc_QPushButton_resize :: Ptr (TQPushButton a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QPushButtonSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_resize cobj_x0 cobj_x1

instance Qresize (QPushButton ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPushButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QPushButton_resize_qth" qtc_QPushButton_resize_qth :: Ptr (TQPushButton a) -> CInt -> CInt -> IO ()

instance Qresize (QPushButtonSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QPushButton_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QPushButton ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_resizeEvent_h" qtc_QPushButton_resizeEvent_h :: Ptr (TQPushButton a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QPushButtonSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QPushButton ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QPushButton_setGeometry1" qtc_QPushButton_setGeometry1 :: Ptr (TQPushButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QPushButtonSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QPushButton ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_setGeometry" qtc_QPushButton_setGeometry :: Ptr (TQPushButton a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QPushButtonSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QPushButton ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPushButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPushButton_setGeometry_qth" qtc_QPushButton_setGeometry_qth :: Ptr (TQPushButton a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QPushButtonSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPushButton_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QPushButton ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_setMouseTracking" qtc_QPushButton_setMouseTracking :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QsetMouseTracking (QPushButtonSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QPushButton ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_setVisible_h" qtc_QPushButton_setVisible_h :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QsetVisible (QPushButtonSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QPushButton ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_showEvent_h" qtc_QPushButton_showEvent_h :: Ptr (TQPushButton a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QPushButtonSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QPushButton ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_tabletEvent_h" qtc_QPushButton_tabletEvent_h :: Ptr (TQPushButton a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QPushButtonSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QPushButton ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_updateMicroFocus cobj_x0

foreign import ccall "qtc_QPushButton_updateMicroFocus" qtc_QPushButton_updateMicroFocus :: Ptr (TQPushButton a) -> IO ()

instance QupdateMicroFocus (QPushButtonSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_updateMicroFocus cobj_x0

instance QwheelEvent (QPushButton ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_wheelEvent_h" qtc_QPushButton_wheelEvent_h :: Ptr (TQPushButton a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QPushButtonSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QPushButton ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPushButton_windowActivationChange" qtc_QPushButton_windowActivationChange :: Ptr (TQPushButton a) -> CBool -> IO ()

instance QwindowActivationChange (QPushButtonSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QPushButton ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_childEvent" qtc_QPushButton_childEvent :: Ptr (TQPushButton a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QPushButtonSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QPushButton ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QPushButton_connectNotify" qtc_QPushButton_connectNotify :: Ptr (TQPushButton a) -> CWString -> IO ()

instance QconnectNotify (QPushButtonSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QPushButton ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QPushButton_customEvent" qtc_QPushButton_customEvent :: Ptr (TQPushButton a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QPushButtonSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPushButton_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QPushButton ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QPushButton_disconnectNotify" qtc_QPushButton_disconnectNotify :: Ptr (TQPushButton a) -> CWString -> IO ()

instance QdisconnectNotify (QPushButtonSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QPushButton ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPushButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPushButton_eventFilter_h" qtc_QPushButton_eventFilter_h :: Ptr (TQPushButton a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QPushButtonSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPushButton_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QPushButton ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QPushButton_receivers" qtc_QPushButton_receivers :: Ptr (TQPushButton a) -> CWString -> IO CInt

instance Qreceivers (QPushButtonSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPushButton_receivers cobj_x0 cstr_x1

instance Qsender (QPushButton ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sender cobj_x0

foreign import ccall "qtc_QPushButton_sender" qtc_QPushButton_sender :: Ptr (TQPushButton a) -> IO (Ptr (TQObject ()))

instance Qsender (QPushButtonSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPushButton_sender cobj_x0

