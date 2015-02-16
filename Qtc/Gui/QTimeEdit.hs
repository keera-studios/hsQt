{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTimeEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTimeEdit (
  QqTimeEdit(..)
  ,qTimeEdit_delete
  ,qTimeEdit_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSpinBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTimeEdit ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimeEdit_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTimeEdit_userMethod" qtc_QTimeEdit_userMethod :: Ptr (TQTimeEdit a) -> CInt -> IO ()

instance QuserMethod (QTimeEditSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTimeEdit_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTimeEdit ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimeEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTimeEdit_userMethodVariant" qtc_QTimeEdit_userMethodVariant :: Ptr (TQTimeEdit a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTimeEditSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTimeEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTimeEdit x1 where
  qTimeEdit :: x1 -> IO (QTimeEdit ())

instance QqTimeEdit (()) where
 qTimeEdit ()
  = withQTimeEditResult $
    qtc_QTimeEdit

foreign import ccall "qtc_QTimeEdit" qtc_QTimeEdit :: IO (Ptr (TQTimeEdit ()))

instance QqTimeEdit ((QWidget t1)) where
 qTimeEdit (x1)
  = withQTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit1 cobj_x1

foreign import ccall "qtc_QTimeEdit1" qtc_QTimeEdit1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTimeEdit ()))

instance QqTimeEdit ((QTime t1)) where
 qTimeEdit (x1)
  = withQTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit2 cobj_x1

foreign import ccall "qtc_QTimeEdit2" qtc_QTimeEdit2 :: Ptr (TQTime t1) -> IO (Ptr (TQTimeEdit ()))

instance QqTimeEdit ((QTime t1, QWidget t2)) where
 qTimeEdit (x1, x2)
  = withQTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeEdit3 cobj_x1 cobj_x2

foreign import ccall "qtc_QTimeEdit3" qtc_QTimeEdit3 :: Ptr (TQTime t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQTimeEdit ()))

qTimeEdit_delete :: QTimeEdit a -> IO ()
qTimeEdit_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_delete cobj_x0

foreign import ccall "qtc_QTimeEdit_delete" qtc_QTimeEdit_delete :: Ptr (TQTimeEdit a) -> IO ()

qTimeEdit_deleteLater :: QTimeEdit a -> IO ()
qTimeEdit_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_deleteLater cobj_x0

foreign import ccall "qtc_QTimeEdit_deleteLater" qtc_QTimeEdit_deleteLater :: Ptr (TQTimeEdit a) -> IO ()

instance Qclear (QTimeEdit ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_clear_h cobj_x0

foreign import ccall "qtc_QTimeEdit_clear_h" qtc_QTimeEdit_clear_h :: Ptr (TQTimeEdit a) -> IO ()

instance Qclear (QTimeEditSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_clear_h cobj_x0

instance QdateTimeFromText (QTimeEdit ()) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_dateTimeFromText_h cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeEdit_dateTimeFromText_h" qtc_QTimeEdit_dateTimeFromText_h :: Ptr (TQTimeEdit a) -> CWString -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText (QTimeEditSc a) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_dateTimeFromText_h cobj_x0 cstr_x1

instance Qevent (QTimeEdit ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_event_h" qtc_QTimeEdit_event_h :: Ptr (TQTimeEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTimeEditSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QTimeEdit ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_focusInEvent_h" qtc_QTimeEdit_focusInEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTimeEditSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTimeEdit ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_focusNextPrevChild" qtc_QTimeEdit_focusNextPrevChild :: Ptr (TQTimeEdit a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTimeEditSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusNextPrevChild cobj_x0 (toCBool x1)

instance QinitStyleOption (QTimeEdit ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_initStyleOption" qtc_QTimeEdit_initStyleOption :: Ptr (TQTimeEdit a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QTimeEditSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_initStyleOption cobj_x0 cobj_x1

instance QkeyPressEvent (QTimeEdit ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_keyPressEvent_h" qtc_QTimeEdit_keyPressEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTimeEditSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_keyPressEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTimeEdit ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_mousePressEvent_h" qtc_QTimeEdit_mousePressEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTimeEditSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mousePressEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QTimeEdit ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_paintEvent_h" qtc_QTimeEdit_paintEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTimeEditSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QTimeEdit ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sizeHint_h cobj_x0

foreign import ccall "qtc_QTimeEdit_sizeHint_h" qtc_QTimeEdit_sizeHint_h :: Ptr (TQTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTimeEditSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sizeHint_h cobj_x0

instance QsizeHint (QTimeEdit ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTimeEdit_sizeHint_qth_h" qtc_QTimeEdit_sizeHint_qth_h :: Ptr (TQTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTimeEditSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstepBy (QTimeEdit ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeEdit_stepBy_h" qtc_QTimeEdit_stepBy_h :: Ptr (TQTimeEdit a) -> CInt -> IO ()

instance QstepBy (QTimeEditSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_stepBy_h cobj_x0 (toCInt x1)

instance QstepEnabled (QTimeEdit ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_stepEnabled cobj_x0

foreign import ccall "qtc_QTimeEdit_stepEnabled" qtc_QTimeEdit_stepEnabled :: Ptr (TQTimeEdit a) -> IO CLong

instance QstepEnabled (QTimeEditSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_stepEnabled cobj_x0

instance QwheelEvent (QTimeEdit ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_wheelEvent_h" qtc_QTimeEdit_wheelEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTimeEditSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QTimeEdit ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_changeEvent_h" qtc_QTimeEdit_changeEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTimeEditSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QTimeEdit ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_closeEvent_h" qtc_QTimeEdit_closeEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTimeEditSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTimeEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_contextMenuEvent_h" qtc_QTimeEdit_contextMenuEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTimeEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_contextMenuEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QTimeEdit ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_focusOutEvent_h" qtc_QTimeEdit_focusOutEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTimeEditSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QTimeEdit ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_hideEvent_h" qtc_QTimeEdit_hideEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTimeEditSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTimeEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_keyReleaseEvent_h" qtc_QTimeEdit_keyReleaseEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTimeEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QTimeEdit ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_lineEdit cobj_x0

foreign import ccall "qtc_QTimeEdit_lineEdit" qtc_QTimeEdit_lineEdit :: Ptr (TQTimeEdit a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QTimeEditSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_lineEdit cobj_x0

instance QqminimumSizeHint (QTimeEdit ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTimeEdit_minimumSizeHint_h" qtc_QTimeEdit_minimumSizeHint_h :: Ptr (TQTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTimeEditSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTimeEdit ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTimeEdit_minimumSizeHint_qth_h" qtc_QTimeEdit_minimumSizeHint_qth_h :: Ptr (TQTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTimeEditSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QTimeEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_mouseMoveEvent_h" qtc_QTimeEdit_mouseMoveEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTimeEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTimeEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_mouseReleaseEvent_h" qtc_QTimeEdit_mouseReleaseEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTimeEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QTimeEdit ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_resizeEvent_h" qtc_QTimeEdit_resizeEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTimeEditSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_resizeEvent_h cobj_x0 cobj_x1

instance QsetLineEdit (QTimeEdit ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_setLineEdit" qtc_QTimeEdit_setLineEdit :: Ptr (TQTimeEdit a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QTimeEditSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_setLineEdit cobj_x0 cobj_x1

instance QshowEvent (QTimeEdit ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_showEvent_h" qtc_QTimeEdit_showEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTimeEditSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_showEvent_h cobj_x0 cobj_x1

instance QtimerEvent (QTimeEdit ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_timerEvent" qtc_QTimeEdit_timerEvent :: Ptr (TQTimeEdit a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTimeEditSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QTimeEdit ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_actionEvent_h" qtc_QTimeEdit_actionEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTimeEditSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTimeEdit ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_addAction" qtc_QTimeEdit_addAction :: Ptr (TQTimeEdit a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTimeEditSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_addAction cobj_x0 cobj_x1

instance Qcreate (QTimeEdit ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_create cobj_x0

foreign import ccall "qtc_QTimeEdit_create" qtc_QTimeEdit_create :: Ptr (TQTimeEdit a) -> IO ()

instance Qcreate (QTimeEditSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_create cobj_x0

instance Qcreate (QTimeEdit ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_create1" qtc_QTimeEdit_create1 :: Ptr (TQTimeEdit a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTimeEditSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create1 cobj_x0 cobj_x1

instance Qcreate (QTimeEdit ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTimeEdit_create2" qtc_QTimeEdit_create2 :: Ptr (TQTimeEdit a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTimeEditSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTimeEdit ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTimeEdit_create3" qtc_QTimeEdit_create3 :: Ptr (TQTimeEdit a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTimeEditSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTimeEdit ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy cobj_x0

foreign import ccall "qtc_QTimeEdit_destroy" qtc_QTimeEdit_destroy :: Ptr (TQTimeEdit a) -> IO ()

instance Qdestroy (QTimeEditSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy cobj_x0

instance Qdestroy (QTimeEdit ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_destroy1" qtc_QTimeEdit_destroy1 :: Ptr (TQTimeEdit a) -> CBool -> IO ()

instance Qdestroy (QTimeEditSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTimeEdit ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTimeEdit_destroy2" qtc_QTimeEdit_destroy2 :: Ptr (TQTimeEdit a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTimeEditSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTimeEdit ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_devType_h cobj_x0

foreign import ccall "qtc_QTimeEdit_devType_h" qtc_QTimeEdit_devType_h :: Ptr (TQTimeEdit a) -> IO CInt

instance QdevType (QTimeEditSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_devType_h cobj_x0

instance QdragEnterEvent (QTimeEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_dragEnterEvent_h" qtc_QTimeEdit_dragEnterEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTimeEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTimeEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_dragLeaveEvent_h" qtc_QTimeEdit_dragLeaveEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTimeEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTimeEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_dragMoveEvent_h" qtc_QTimeEdit_dragMoveEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTimeEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTimeEdit ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_dropEvent_h" qtc_QTimeEdit_dropEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTimeEditSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QTimeEdit ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_enabledChange" qtc_QTimeEdit_enabledChange :: Ptr (TQTimeEdit a) -> CBool -> IO ()

instance QenabledChange (QTimeEditSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTimeEdit ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_enterEvent_h" qtc_QTimeEdit_enterEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTimeEditSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTimeEdit ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusNextChild cobj_x0

foreign import ccall "qtc_QTimeEdit_focusNextChild" qtc_QTimeEdit_focusNextChild :: Ptr (TQTimeEdit a) -> IO CBool

instance QfocusNextChild (QTimeEditSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusNextChild cobj_x0

instance QfocusPreviousChild (QTimeEdit ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTimeEdit_focusPreviousChild" qtc_QTimeEdit_focusPreviousChild :: Ptr (TQTimeEdit a) -> IO CBool

instance QfocusPreviousChild (QTimeEditSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_focusPreviousChild cobj_x0

instance QfontChange (QTimeEdit ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_fontChange" qtc_QTimeEdit_fontChange :: Ptr (TQTimeEdit a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTimeEditSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTimeEdit ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTimeEdit_heightForWidth_h" qtc_QTimeEdit_heightForWidth_h :: Ptr (TQTimeEdit a) -> CInt -> IO CInt

instance QheightForWidth (QTimeEditSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QTimeEdit ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_inputMethodEvent" qtc_QTimeEdit_inputMethodEvent :: Ptr (TQTimeEdit a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTimeEditSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTimeEdit ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTimeEdit_inputMethodQuery_h" qtc_QTimeEdit_inputMethodQuery_h :: Ptr (TQTimeEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTimeEditSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QTimeEdit ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_languageChange cobj_x0

foreign import ccall "qtc_QTimeEdit_languageChange" qtc_QTimeEdit_languageChange :: Ptr (TQTimeEdit a) -> IO ()

instance QlanguageChange (QTimeEditSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_languageChange cobj_x0

instance QleaveEvent (QTimeEdit ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_leaveEvent_h" qtc_QTimeEdit_leaveEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTimeEditSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTimeEdit ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTimeEdit_metric" qtc_QTimeEdit_metric :: Ptr (TQTimeEdit a) -> CLong -> IO CInt

instance Qmetric (QTimeEditSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QTimeEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_mouseDoubleClickEvent_h" qtc_QTimeEdit_mouseDoubleClickEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTimeEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QTimeEdit ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTimeEdit_move1" qtc_QTimeEdit_move1 :: Ptr (TQTimeEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QTimeEditSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTimeEdit ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTimeEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTimeEdit_move_qth" qtc_QTimeEdit_move_qth :: Ptr (TQTimeEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QTimeEditSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTimeEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTimeEdit ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_move" qtc_QTimeEdit_move :: Ptr (TQTimeEdit a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTimeEditSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_move cobj_x0 cobj_x1

instance QmoveEvent (QTimeEdit ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_moveEvent_h" qtc_QTimeEdit_moveEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTimeEditSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTimeEdit ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_paintEngine_h cobj_x0

foreign import ccall "qtc_QTimeEdit_paintEngine_h" qtc_QTimeEdit_paintEngine_h :: Ptr (TQTimeEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTimeEditSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_paintEngine_h cobj_x0

instance QpaletteChange (QTimeEdit ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_paletteChange" qtc_QTimeEdit_paletteChange :: Ptr (TQTimeEdit a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTimeEditSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTimeEdit ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_repaint cobj_x0

foreign import ccall "qtc_QTimeEdit_repaint" qtc_QTimeEdit_repaint :: Ptr (TQTimeEdit a) -> IO ()

instance Qrepaint (QTimeEditSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_repaint cobj_x0

instance Qrepaint (QTimeEdit ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTimeEdit_repaint2" qtc_QTimeEdit_repaint2 :: Ptr (TQTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTimeEditSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTimeEdit ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_repaint1" qtc_QTimeEdit_repaint1 :: Ptr (TQTimeEdit a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTimeEditSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTimeEdit ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_resetInputContext cobj_x0

foreign import ccall "qtc_QTimeEdit_resetInputContext" qtc_QTimeEdit_resetInputContext :: Ptr (TQTimeEdit a) -> IO ()

instance QresetInputContext (QTimeEditSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_resetInputContext cobj_x0

instance Qresize (QTimeEdit ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTimeEdit_resize1" qtc_QTimeEdit_resize1 :: Ptr (TQTimeEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QTimeEditSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTimeEdit ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_resize" qtc_QTimeEdit_resize :: Ptr (TQTimeEdit a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTimeEditSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_resize cobj_x0 cobj_x1

instance Qresize (QTimeEdit ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTimeEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTimeEdit_resize_qth" qtc_QTimeEdit_resize_qth :: Ptr (TQTimeEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QTimeEditSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTimeEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTimeEdit ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTimeEdit_setGeometry1" qtc_QTimeEdit_setGeometry1 :: Ptr (TQTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTimeEditSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTimeEdit ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_setGeometry" qtc_QTimeEdit_setGeometry :: Ptr (TQTimeEdit a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTimeEditSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTimeEdit ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTimeEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTimeEdit_setGeometry_qth" qtc_QTimeEdit_setGeometry_qth :: Ptr (TQTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTimeEditSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTimeEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTimeEdit ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_setMouseTracking" qtc_QTimeEdit_setMouseTracking :: Ptr (TQTimeEdit a) -> CBool -> IO ()

instance QsetMouseTracking (QTimeEditSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTimeEdit ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_setVisible_h" qtc_QTimeEdit_setVisible_h :: Ptr (TQTimeEdit a) -> CBool -> IO ()

instance QsetVisible (QTimeEditSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QTimeEdit ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_tabletEvent_h" qtc_QTimeEdit_tabletEvent_h :: Ptr (TQTimeEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTimeEditSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTimeEdit ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTimeEdit_updateMicroFocus" qtc_QTimeEdit_updateMicroFocus :: Ptr (TQTimeEdit a) -> IO ()

instance QupdateMicroFocus (QTimeEditSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTimeEdit ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTimeEdit_windowActivationChange" qtc_QTimeEdit_windowActivationChange :: Ptr (TQTimeEdit a) -> CBool -> IO ()

instance QwindowActivationChange (QTimeEditSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTimeEdit ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_childEvent" qtc_QTimeEdit_childEvent :: Ptr (TQTimeEdit a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTimeEditSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTimeEdit ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeEdit_connectNotify" qtc_QTimeEdit_connectNotify :: Ptr (TQTimeEdit a) -> CWString -> IO ()

instance QconnectNotify (QTimeEditSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTimeEdit ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTimeEdit_customEvent" qtc_QTimeEdit_customEvent :: Ptr (TQTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTimeEditSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTimeEdit_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTimeEdit ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeEdit_disconnectNotify" qtc_QTimeEdit_disconnectNotify :: Ptr (TQTimeEdit a) -> CWString -> IO ()

instance QdisconnectNotify (QTimeEditSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTimeEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTimeEdit_eventFilter_h" qtc_QTimeEdit_eventFilter_h :: Ptr (TQTimeEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTimeEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTimeEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTimeEdit ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTimeEdit_receivers" qtc_QTimeEdit_receivers :: Ptr (TQTimeEdit a) -> CWString -> IO CInt

instance Qreceivers (QTimeEditSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTimeEdit_receivers cobj_x0 cstr_x1

instance Qsender (QTimeEdit ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sender cobj_x0

foreign import ccall "qtc_QTimeEdit_sender" qtc_QTimeEdit_sender :: Ptr (TQTimeEdit a) -> IO (Ptr (TQObject ()))

instance Qsender (QTimeEditSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTimeEdit_sender cobj_x0

