{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDateEdit (
  QqDateEdit(..)
  ,qDateEdit_delete
  ,qDateEdit_deleteLater
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

instance QuserMethod (QDateEdit ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDateEdit_userMethod" qtc_QDateEdit_userMethod :: Ptr (TQDateEdit a) -> CInt -> IO ()

instance QuserMethod (QDateEditSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateEdit_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDateEdit ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDateEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDateEdit_userMethodVariant" qtc_QDateEdit_userMethodVariant :: Ptr (TQDateEdit a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDateEditSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDateEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDateEdit x1 where
  qDateEdit :: x1 -> IO (QDateEdit ())

instance QqDateEdit (()) where
 qDateEdit ()
  = withQDateEditResult $
    qtc_QDateEdit

foreign import ccall "qtc_QDateEdit" qtc_QDateEdit :: IO (Ptr (TQDateEdit ()))

instance QqDateEdit ((QWidget t1)) where
 qDateEdit (x1)
  = withQDateEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit1 cobj_x1

foreign import ccall "qtc_QDateEdit1" qtc_QDateEdit1 :: Ptr (TQWidget t1) -> IO (Ptr (TQDateEdit ()))

instance QqDateEdit ((QDate t1)) where
 qDateEdit (x1)
  = withQDateEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit2 cobj_x1

foreign import ccall "qtc_QDateEdit2" qtc_QDateEdit2 :: Ptr (TQDate t1) -> IO (Ptr (TQDateEdit ()))

instance QqDateEdit ((QDate t1, QWidget t2)) where
 qDateEdit (x1, x2)
  = withQDateEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateEdit3 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateEdit3" qtc_QDateEdit3 :: Ptr (TQDate t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQDateEdit ()))

qDateEdit_delete :: QDateEdit a -> IO ()
qDateEdit_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_delete cobj_x0

foreign import ccall "qtc_QDateEdit_delete" qtc_QDateEdit_delete :: Ptr (TQDateEdit a) -> IO ()

qDateEdit_deleteLater :: QDateEdit a -> IO ()
qDateEdit_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_deleteLater cobj_x0

foreign import ccall "qtc_QDateEdit_deleteLater" qtc_QDateEdit_deleteLater :: Ptr (TQDateEdit a) -> IO ()

instance Qclear (QDateEdit ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_clear_h cobj_x0

foreign import ccall "qtc_QDateEdit_clear_h" qtc_QDateEdit_clear_h :: Ptr (TQDateEdit a) -> IO ()

instance Qclear (QDateEditSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_clear_h cobj_x0

instance QdateTimeFromText (QDateEdit ()) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_dateTimeFromText_h cobj_x0 cstr_x1

foreign import ccall "qtc_QDateEdit_dateTimeFromText_h" qtc_QDateEdit_dateTimeFromText_h :: Ptr (TQDateEdit a) -> CWString -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText (QDateEditSc a) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_dateTimeFromText_h cobj_x0 cstr_x1

instance Qevent (QDateEdit ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_event_h" qtc_QDateEdit_event_h :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDateEditSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QDateEdit ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_focusInEvent_h" qtc_QDateEdit_focusInEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDateEditSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QDateEdit ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_focusNextPrevChild" qtc_QDateEdit_focusNextPrevChild :: Ptr (TQDateEdit a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDateEditSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusNextPrevChild cobj_x0 (toCBool x1)

instance QinitStyleOption (QDateEdit ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_initStyleOption" qtc_QDateEdit_initStyleOption :: Ptr (TQDateEdit a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QDateEditSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_initStyleOption cobj_x0 cobj_x1

instance QkeyPressEvent (QDateEdit ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_keyPressEvent_h" qtc_QDateEdit_keyPressEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDateEditSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyPressEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDateEdit ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mousePressEvent_h" qtc_QDateEdit_mousePressEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDateEditSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mousePressEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QDateEdit ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_paintEvent_h" qtc_QDateEdit_paintEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDateEditSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QDateEdit ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_h cobj_x0

foreign import ccall "qtc_QDateEdit_sizeHint_h" qtc_QDateEdit_sizeHint_h :: Ptr (TQDateEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDateEditSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_h cobj_x0

instance QsizeHint (QDateEdit ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateEdit_sizeHint_qth_h" qtc_QDateEdit_sizeHint_qth_h :: Ptr (TQDateEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDateEditSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstepBy (QDateEdit ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateEdit_stepBy_h" qtc_QDateEdit_stepBy_h :: Ptr (TQDateEdit a) -> CInt -> IO ()

instance QstepBy (QDateEditSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepBy_h cobj_x0 (toCInt x1)

instance QstepEnabled (QDateEdit ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepEnabled cobj_x0

foreign import ccall "qtc_QDateEdit_stepEnabled" qtc_QDateEdit_stepEnabled :: Ptr (TQDateEdit a) -> IO CLong

instance QstepEnabled (QDateEditSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_stepEnabled cobj_x0

instance QwheelEvent (QDateEdit ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_wheelEvent_h" qtc_QDateEdit_wheelEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDateEditSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QDateEdit ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_changeEvent_h" qtc_QDateEdit_changeEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDateEditSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QDateEdit ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_closeEvent_h" qtc_QDateEdit_closeEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDateEditSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDateEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_contextMenuEvent_h" qtc_QDateEdit_contextMenuEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDateEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_contextMenuEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QDateEdit ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_focusOutEvent_h" qtc_QDateEdit_focusOutEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDateEditSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QDateEdit ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_hideEvent_h" qtc_QDateEdit_hideEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDateEditSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDateEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_keyReleaseEvent_h" qtc_QDateEdit_keyReleaseEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDateEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QDateEdit ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_lineEdit cobj_x0

foreign import ccall "qtc_QDateEdit_lineEdit" qtc_QDateEdit_lineEdit :: Ptr (TQDateEdit a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QDateEditSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_lineEdit cobj_x0

instance QqminimumSizeHint (QDateEdit ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDateEdit_minimumSizeHint_h" qtc_QDateEdit_minimumSizeHint_h :: Ptr (TQDateEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDateEditSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDateEdit ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateEdit_minimumSizeHint_qth_h" qtc_QDateEdit_minimumSizeHint_qth_h :: Ptr (TQDateEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDateEditSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QDateEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseMoveEvent_h" qtc_QDateEdit_mouseMoveEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDateEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDateEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseReleaseEvent_h" qtc_QDateEdit_mouseReleaseEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDateEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QDateEdit ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_resizeEvent_h" qtc_QDateEdit_resizeEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDateEditSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resizeEvent_h cobj_x0 cobj_x1

instance QsetLineEdit (QDateEdit ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_setLineEdit" qtc_QDateEdit_setLineEdit :: Ptr (TQDateEdit a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QDateEditSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_setLineEdit cobj_x0 cobj_x1

instance QshowEvent (QDateEdit ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_showEvent_h" qtc_QDateEdit_showEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDateEditSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_showEvent_h cobj_x0 cobj_x1

instance QtimerEvent (QDateEdit ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_timerEvent" qtc_QDateEdit_timerEvent :: Ptr (TQDateEdit a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDateEditSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QDateEdit ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_actionEvent_h" qtc_QDateEdit_actionEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDateEditSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDateEdit ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_addAction" qtc_QDateEdit_addAction :: Ptr (TQDateEdit a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDateEditSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_addAction cobj_x0 cobj_x1

instance Qcreate (QDateEdit ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_create cobj_x0

foreign import ccall "qtc_QDateEdit_create" qtc_QDateEdit_create :: Ptr (TQDateEdit a) -> IO ()

instance Qcreate (QDateEditSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_create cobj_x0

instance Qcreate (QDateEdit ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_create1" qtc_QDateEdit_create1 :: Ptr (TQDateEdit a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDateEditSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create1 cobj_x0 cobj_x1

instance Qcreate (QDateEdit ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDateEdit_create2" qtc_QDateEdit_create2 :: Ptr (TQDateEdit a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDateEditSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDateEdit ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDateEdit_create3" qtc_QDateEdit_create3 :: Ptr (TQDateEdit a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDateEditSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDateEdit ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy cobj_x0

foreign import ccall "qtc_QDateEdit_destroy" qtc_QDateEdit_destroy :: Ptr (TQDateEdit a) -> IO ()

instance Qdestroy (QDateEditSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy cobj_x0

instance Qdestroy (QDateEdit ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_destroy1" qtc_QDateEdit_destroy1 :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance Qdestroy (QDateEditSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDateEdit ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDateEdit_destroy2" qtc_QDateEdit_destroy2 :: Ptr (TQDateEdit a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDateEditSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDateEdit ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_devType_h cobj_x0

foreign import ccall "qtc_QDateEdit_devType_h" qtc_QDateEdit_devType_h :: Ptr (TQDateEdit a) -> IO CInt

instance QdevType (QDateEditSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_devType_h cobj_x0

instance QdragEnterEvent (QDateEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragEnterEvent_h" qtc_QDateEdit_dragEnterEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDateEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDateEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragLeaveEvent_h" qtc_QDateEdit_dragLeaveEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDateEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDateEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dragMoveEvent_h" qtc_QDateEdit_dragMoveEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDateEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDateEdit ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_dropEvent_h" qtc_QDateEdit_dropEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDateEditSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDateEdit ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_enabledChange" qtc_QDateEdit_enabledChange :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance QenabledChange (QDateEditSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDateEdit ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_enterEvent_h" qtc_QDateEdit_enterEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDateEditSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDateEdit ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusNextChild cobj_x0

foreign import ccall "qtc_QDateEdit_focusNextChild" qtc_QDateEdit_focusNextChild :: Ptr (TQDateEdit a) -> IO CBool

instance QfocusNextChild (QDateEditSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusNextChild cobj_x0

instance QfocusPreviousChild (QDateEdit ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDateEdit_focusPreviousChild" qtc_QDateEdit_focusPreviousChild :: Ptr (TQDateEdit a) -> IO CBool

instance QfocusPreviousChild (QDateEditSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_focusPreviousChild cobj_x0

instance QfontChange (QDateEdit ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_fontChange" qtc_QDateEdit_fontChange :: Ptr (TQDateEdit a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDateEditSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDateEdit ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateEdit_heightForWidth_h" qtc_QDateEdit_heightForWidth_h :: Ptr (TQDateEdit a) -> CInt -> IO CInt

instance QheightForWidth (QDateEditSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QDateEdit ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_inputMethodEvent" qtc_QDateEdit_inputMethodEvent :: Ptr (TQDateEdit a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDateEditSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDateEdit ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateEdit_inputMethodQuery_h" qtc_QDateEdit_inputMethodQuery_h :: Ptr (TQDateEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDateEditSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QDateEdit ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_languageChange cobj_x0

foreign import ccall "qtc_QDateEdit_languageChange" qtc_QDateEdit_languageChange :: Ptr (TQDateEdit a) -> IO ()

instance QlanguageChange (QDateEditSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_languageChange cobj_x0

instance QleaveEvent (QDateEdit ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_leaveEvent_h" qtc_QDateEdit_leaveEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDateEditSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDateEdit ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateEdit_metric" qtc_QDateEdit_metric :: Ptr (TQDateEdit a) -> CLong -> IO CInt

instance Qmetric (QDateEditSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QDateEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_mouseDoubleClickEvent_h" qtc_QDateEdit_mouseDoubleClickEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDateEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QDateEdit ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDateEdit_move1" qtc_QDateEdit_move1 :: Ptr (TQDateEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QDateEditSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDateEdit ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDateEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDateEdit_move_qth" qtc_QDateEdit_move_qth :: Ptr (TQDateEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QDateEditSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDateEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDateEdit ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_move" qtc_QDateEdit_move :: Ptr (TQDateEdit a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDateEditSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_move cobj_x0 cobj_x1

instance QmoveEvent (QDateEdit ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_moveEvent_h" qtc_QDateEdit_moveEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDateEditSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDateEdit ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_paintEngine_h cobj_x0

foreign import ccall "qtc_QDateEdit_paintEngine_h" qtc_QDateEdit_paintEngine_h :: Ptr (TQDateEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDateEditSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_paintEngine_h cobj_x0

instance QpaletteChange (QDateEdit ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_paletteChange" qtc_QDateEdit_paletteChange :: Ptr (TQDateEdit a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDateEditSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDateEdit ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_repaint cobj_x0

foreign import ccall "qtc_QDateEdit_repaint" qtc_QDateEdit_repaint :: Ptr (TQDateEdit a) -> IO ()

instance Qrepaint (QDateEditSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_repaint cobj_x0

instance Qrepaint (QDateEdit ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDateEdit_repaint2" qtc_QDateEdit_repaint2 :: Ptr (TQDateEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDateEditSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDateEdit ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_repaint1" qtc_QDateEdit_repaint1 :: Ptr (TQDateEdit a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDateEditSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDateEdit ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_resetInputContext cobj_x0

foreign import ccall "qtc_QDateEdit_resetInputContext" qtc_QDateEdit_resetInputContext :: Ptr (TQDateEdit a) -> IO ()

instance QresetInputContext (QDateEditSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_resetInputContext cobj_x0

instance Qresize (QDateEdit ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDateEdit_resize1" qtc_QDateEdit_resize1 :: Ptr (TQDateEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QDateEditSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDateEdit ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_resize" qtc_QDateEdit_resize :: Ptr (TQDateEdit a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDateEditSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_resize cobj_x0 cobj_x1

instance Qresize (QDateEdit ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDateEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDateEdit_resize_qth" qtc_QDateEdit_resize_qth :: Ptr (TQDateEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QDateEditSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDateEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDateEdit ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDateEdit_setGeometry1" qtc_QDateEdit_setGeometry1 :: Ptr (TQDateEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDateEditSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDateEdit ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_setGeometry" qtc_QDateEdit_setGeometry :: Ptr (TQDateEdit a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDateEditSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDateEdit ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDateEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDateEdit_setGeometry_qth" qtc_QDateEdit_setGeometry_qth :: Ptr (TQDateEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDateEditSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDateEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDateEdit ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_setMouseTracking" qtc_QDateEdit_setMouseTracking :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance QsetMouseTracking (QDateEditSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDateEdit ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_setVisible_h" qtc_QDateEdit_setVisible_h :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance QsetVisible (QDateEditSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QDateEdit ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_tabletEvent_h" qtc_QDateEdit_tabletEvent_h :: Ptr (TQDateEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDateEditSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDateEdit ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDateEdit_updateMicroFocus" qtc_QDateEdit_updateMicroFocus :: Ptr (TQDateEdit a) -> IO ()

instance QupdateMicroFocus (QDateEditSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_updateMicroFocus cobj_x0

instance QwindowActivationChange (QDateEdit ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateEdit_windowActivationChange" qtc_QDateEdit_windowActivationChange :: Ptr (TQDateEdit a) -> CBool -> IO ()

instance QwindowActivationChange (QDateEditSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDateEdit ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_childEvent" qtc_QDateEdit_childEvent :: Ptr (TQDateEdit a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDateEditSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDateEdit ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDateEdit_connectNotify" qtc_QDateEdit_connectNotify :: Ptr (TQDateEdit a) -> CWString -> IO ()

instance QconnectNotify (QDateEditSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDateEdit ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateEdit_customEvent" qtc_QDateEdit_customEvent :: Ptr (TQDateEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDateEditSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateEdit_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDateEdit ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDateEdit_disconnectNotify" qtc_QDateEdit_disconnectNotify :: Ptr (TQDateEdit a) -> CWString -> IO ()

instance QdisconnectNotify (QDateEditSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDateEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateEdit_eventFilter_h" qtc_QDateEdit_eventFilter_h :: Ptr (TQDateEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDateEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDateEdit ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDateEdit_receivers" qtc_QDateEdit_receivers :: Ptr (TQDateEdit a) -> CWString -> IO CInt

instance Qreceivers (QDateEditSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateEdit_receivers cobj_x0 cstr_x1

instance Qsender (QDateEdit ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sender cobj_x0

foreign import ccall "qtc_QDateEdit_sender" qtc_QDateEdit_sender :: Ptr (TQDateEdit a) -> IO (Ptr (TQObject ()))

instance Qsender (QDateEditSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateEdit_sender cobj_x0

