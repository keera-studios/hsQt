{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractSpinBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractSpinBox (
  QqAbstractSpinBox(..)
  ,correctionMode
  ,interpretText
  ,isAccelerated
  ,keyboardTracking
  ,setAccelerated
  ,setCorrectionMode
  ,setKeyboardTracking
  ,setSpecialValueText
  ,specialValueText
  ,stepDown
  ,stepUp
  ,qAbstractSpinBox_delete
  ,qAbstractSpinBox_deleteLater
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

instance QuserMethod (QAbstractSpinBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractSpinBox_userMethod" qtc_QAbstractSpinBox_userMethod :: Ptr (TQAbstractSpinBox a) -> CInt -> IO ()

instance QuserMethod (QAbstractSpinBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractSpinBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractSpinBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractSpinBox_userMethodVariant" qtc_QAbstractSpinBox_userMethodVariant :: Ptr (TQAbstractSpinBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractSpinBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractSpinBox x1 where
  qAbstractSpinBox :: x1 -> IO (QAbstractSpinBox ())

instance QqAbstractSpinBox (()) where
 qAbstractSpinBox ()
  = withQAbstractSpinBoxResult $
    qtc_QAbstractSpinBox

foreign import ccall "qtc_QAbstractSpinBox" qtc_QAbstractSpinBox :: IO (Ptr (TQAbstractSpinBox ()))

instance QqAbstractSpinBox ((QWidget t1)) where
 qAbstractSpinBox (x1)
  = withQAbstractSpinBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox1 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox1" qtc_QAbstractSpinBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQAbstractSpinBox ()))

instance Qalignment (QAbstractSpinBox a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_alignment cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_alignment" qtc_QAbstractSpinBox_alignment :: Ptr (TQAbstractSpinBox a) -> IO CLong

instance QbuttonSymbols (QAbstractSpinBox a) (()) where
 buttonSymbols x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_buttonSymbols cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_buttonSymbols" qtc_QAbstractSpinBox_buttonSymbols :: Ptr (TQAbstractSpinBox a) -> IO CLong

instance QchangeEvent (QAbstractSpinBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_changeEvent_h" qtc_QAbstractSpinBox_changeEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QAbstractSpinBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QAbstractSpinBox ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_clear_h cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_clear_h" qtc_QAbstractSpinBox_clear_h :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qclear (QAbstractSpinBoxSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_clear_h cobj_x0

instance QcloseEvent (QAbstractSpinBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_closeEvent_h" qtc_QAbstractSpinBox_closeEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QAbstractSpinBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractSpinBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_contextMenuEvent_h" qtc_QAbstractSpinBox_contextMenuEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractSpinBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

correctionMode :: QAbstractSpinBox a -> (()) -> IO (CorrectionMode)
correctionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_correctionMode cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_correctionMode" qtc_QAbstractSpinBox_correctionMode :: Ptr (TQAbstractSpinBox a) -> IO CLong

instance Qevent (QAbstractSpinBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_event_h" qtc_QAbstractSpinBox_event_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractSpinBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractSpinBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_focusInEvent_h" qtc_QAbstractSpinBox_focusInEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractSpinBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QAbstractSpinBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_focusOutEvent_h" qtc_QAbstractSpinBox_focusOutEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractSpinBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_focusOutEvent_h cobj_x0 cobj_x1

instance QhasAcceptableInput (QAbstractSpinBox a) (()) where
 hasAcceptableInput x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_hasAcceptableInput cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_hasAcceptableInput" qtc_QAbstractSpinBox_hasAcceptableInput :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QhasFrame (QAbstractSpinBox a) (()) where
 hasFrame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_hasFrame cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_hasFrame" qtc_QAbstractSpinBox_hasFrame :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QhideEvent (QAbstractSpinBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_hideEvent_h" qtc_QAbstractSpinBox_hideEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QAbstractSpinBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_hideEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QAbstractSpinBox ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_initStyleOption" qtc_QAbstractSpinBox_initStyleOption :: Ptr (TQAbstractSpinBox a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QAbstractSpinBoxSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_initStyleOption cobj_x0 cobj_x1

interpretText :: QAbstractSpinBox a -> (()) -> IO ()
interpretText x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_interpretText cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_interpretText" qtc_QAbstractSpinBox_interpretText :: Ptr (TQAbstractSpinBox a) -> IO ()

isAccelerated :: QAbstractSpinBox a -> (()) -> IO (Bool)
isAccelerated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_isAccelerated cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_isAccelerated" qtc_QAbstractSpinBox_isAccelerated :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QisReadOnly (QAbstractSpinBox a) (()) where
 isReadOnly x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_isReadOnly cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_isReadOnly" qtc_QAbstractSpinBox_isReadOnly :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QkeyPressEvent (QAbstractSpinBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_keyPressEvent_h" qtc_QAbstractSpinBox_keyPressEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractSpinBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QAbstractSpinBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_keyReleaseEvent_h" qtc_QAbstractSpinBox_keyReleaseEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractSpinBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

keyboardTracking :: QAbstractSpinBox a -> (()) -> IO (Bool)
keyboardTracking x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_keyboardTracking cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_keyboardTracking" qtc_QAbstractSpinBox_keyboardTracking :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QlineEdit (QAbstractSpinBox ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_lineEdit cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_lineEdit" qtc_QAbstractSpinBox_lineEdit :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QAbstractSpinBoxSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_lineEdit cobj_x0

instance QqminimumSizeHint (QAbstractSpinBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_minimumSizeHint_h" qtc_QAbstractSpinBox_minimumSizeHint_h :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QAbstractSpinBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QAbstractSpinBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSpinBox_minimumSizeHint_qth_h" qtc_QAbstractSpinBox_minimumSizeHint_qth_h :: Ptr (TQAbstractSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QAbstractSpinBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseMoveEvent_h" qtc_QAbstractSpinBox_mouseMoveEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mousePressEvent_h" qtc_QAbstractSpinBox_mousePressEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseReleaseEvent_h" qtc_QAbstractSpinBox_mouseReleaseEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QAbstractSpinBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_paintEvent_h" qtc_QAbstractSpinBox_paintEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QAbstractSpinBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QAbstractSpinBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_resizeEvent_h" qtc_QAbstractSpinBox_resizeEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QAbstractSpinBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resizeEvent_h cobj_x0 cobj_x1

instance QselectAll (QAbstractSpinBox a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_selectAll cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_selectAll" qtc_QAbstractSpinBox_selectAll :: Ptr (TQAbstractSpinBox a) -> IO ()

setAccelerated :: QAbstractSpinBox a -> ((Bool)) -> IO ()
setAccelerated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setAccelerated cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setAccelerated" qtc_QAbstractSpinBox_setAccelerated :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QsetAlignment (QAbstractSpinBox a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_setAlignment" qtc_QAbstractSpinBox_setAlignment :: Ptr (TQAbstractSpinBox a) -> CLong -> IO ()

instance QsetButtonSymbols (QAbstractSpinBox a) ((ButtonSymbols)) where
 setButtonSymbols x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setButtonSymbols cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_setButtonSymbols" qtc_QAbstractSpinBox_setButtonSymbols :: Ptr (TQAbstractSpinBox a) -> CLong -> IO ()

setCorrectionMode :: QAbstractSpinBox a -> ((CorrectionMode)) -> IO ()
setCorrectionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setCorrectionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_setCorrectionMode" qtc_QAbstractSpinBox_setCorrectionMode :: Ptr (TQAbstractSpinBox a) -> CLong -> IO ()

instance QsetFrame (QAbstractSpinBox a) ((Bool)) where
 setFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setFrame cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setFrame" qtc_QAbstractSpinBox_setFrame :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

setKeyboardTracking :: QAbstractSpinBox a -> ((Bool)) -> IO ()
setKeyboardTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setKeyboardTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setKeyboardTracking" qtc_QAbstractSpinBox_setKeyboardTracking :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QsetLineEdit (QAbstractSpinBox ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_setLineEdit" qtc_QAbstractSpinBox_setLineEdit :: Ptr (TQAbstractSpinBox a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QAbstractSpinBoxSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_setLineEdit cobj_x0 cobj_x1

instance QsetReadOnly (QAbstractSpinBox a) ((Bool)) where
 setReadOnly x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setReadOnly cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setReadOnly" qtc_QAbstractSpinBox_setReadOnly :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

setSpecialValueText :: QAbstractSpinBox a -> ((String)) -> IO ()
setSpecialValueText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_setSpecialValueText cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSpinBox_setSpecialValueText" qtc_QAbstractSpinBox_setSpecialValueText :: Ptr (TQAbstractSpinBox a) -> CWString -> IO ()

instance QsetWrapping (QAbstractSpinBox a) ((Bool)) where
 setWrapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setWrapping cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setWrapping" qtc_QAbstractSpinBox_setWrapping :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QshowEvent (QAbstractSpinBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_showEvent_h" qtc_QAbstractSpinBox_showEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QAbstractSpinBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QAbstractSpinBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_sizeHint_h" qtc_QAbstractSpinBox_sizeHint_h :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QAbstractSpinBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_h cobj_x0

instance QsizeHint (QAbstractSpinBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractSpinBox_sizeHint_qth_h" qtc_QAbstractSpinBox_sizeHint_qth_h :: Ptr (TQAbstractSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QAbstractSpinBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

specialValueText :: QAbstractSpinBox a -> (()) -> IO (String)
specialValueText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_specialValueText cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_specialValueText" qtc_QAbstractSpinBox_specialValueText :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQString ()))

instance QstepBy (QAbstractSpinBox ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSpinBox_stepBy_h" qtc_QAbstractSpinBox_stepBy_h :: Ptr (TQAbstractSpinBox a) -> CInt -> IO ()

instance QstepBy (QAbstractSpinBoxSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepBy_h cobj_x0 (toCInt x1)

stepDown :: QAbstractSpinBox a -> (()) -> IO ()
stepDown x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepDown cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_stepDown" qtc_QAbstractSpinBox_stepDown :: Ptr (TQAbstractSpinBox a) -> IO ()

instance QstepEnabled (QAbstractSpinBox ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepEnabled cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_stepEnabled" qtc_QAbstractSpinBox_stepEnabled :: Ptr (TQAbstractSpinBox a) -> IO CLong

instance QstepEnabled (QAbstractSpinBoxSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepEnabled cobj_x0

stepUp :: QAbstractSpinBox a -> (()) -> IO ()
stepUp x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_stepUp cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_stepUp" qtc_QAbstractSpinBox_stepUp :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qtext (QAbstractSpinBox a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_text cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_text" qtc_QAbstractSpinBox_text :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQString ()))

instance QtimerEvent (QAbstractSpinBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_timerEvent" qtc_QAbstractSpinBox_timerEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractSpinBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QAbstractSpinBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_wheelEvent_h" qtc_QAbstractSpinBox_wheelEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractSpinBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_wheelEvent_h cobj_x0 cobj_x1

instance Qwrapping (QAbstractSpinBox a) (()) where
 wrapping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_wrapping cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_wrapping" qtc_QAbstractSpinBox_wrapping :: Ptr (TQAbstractSpinBox a) -> IO CBool

qAbstractSpinBox_delete :: QAbstractSpinBox a -> IO ()
qAbstractSpinBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_delete cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_delete" qtc_QAbstractSpinBox_delete :: Ptr (TQAbstractSpinBox a) -> IO ()

qAbstractSpinBox_deleteLater :: QAbstractSpinBox a -> IO ()
qAbstractSpinBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_deleteLater" qtc_QAbstractSpinBox_deleteLater :: Ptr (TQAbstractSpinBox a) -> IO ()

instance QactionEvent (QAbstractSpinBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_actionEvent_h" qtc_QAbstractSpinBox_actionEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QAbstractSpinBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QAbstractSpinBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_addAction" qtc_QAbstractSpinBox_addAction :: Ptr (TQAbstractSpinBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QAbstractSpinBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_addAction cobj_x0 cobj_x1

instance Qcreate (QAbstractSpinBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_create cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_create" qtc_QAbstractSpinBox_create :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qcreate (QAbstractSpinBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_create cobj_x0

instance Qcreate (QAbstractSpinBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_create1" qtc_QAbstractSpinBox_create1 :: Ptr (TQAbstractSpinBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QAbstractSpinBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create1 cobj_x0 cobj_x1

instance Qcreate (QAbstractSpinBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QAbstractSpinBox_create2" qtc_QAbstractSpinBox_create2 :: Ptr (TQAbstractSpinBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QAbstractSpinBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QAbstractSpinBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QAbstractSpinBox_create3" qtc_QAbstractSpinBox_create3 :: Ptr (TQAbstractSpinBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QAbstractSpinBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QAbstractSpinBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_destroy" qtc_QAbstractSpinBox_destroy :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qdestroy (QAbstractSpinBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy cobj_x0

instance Qdestroy (QAbstractSpinBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_destroy1" qtc_QAbstractSpinBox_destroy1 :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance Qdestroy (QAbstractSpinBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QAbstractSpinBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QAbstractSpinBox_destroy2" qtc_QAbstractSpinBox_destroy2 :: Ptr (TQAbstractSpinBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QAbstractSpinBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QAbstractSpinBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_devType_h cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_devType_h" qtc_QAbstractSpinBox_devType_h :: Ptr (TQAbstractSpinBox a) -> IO CInt

instance QdevType (QAbstractSpinBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_devType_h cobj_x0

instance QdragEnterEvent (QAbstractSpinBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragEnterEvent_h" qtc_QAbstractSpinBox_dragEnterEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractSpinBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractSpinBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragLeaveEvent_h" qtc_QAbstractSpinBox_dragLeaveEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractSpinBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractSpinBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dragMoveEvent_h" qtc_QAbstractSpinBox_dragMoveEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractSpinBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractSpinBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_dropEvent_h" qtc_QAbstractSpinBox_dropEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QAbstractSpinBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QAbstractSpinBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_enabledChange" qtc_QAbstractSpinBox_enabledChange :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QenabledChange (QAbstractSpinBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QAbstractSpinBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_enterEvent_h" qtc_QAbstractSpinBox_enterEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QAbstractSpinBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QAbstractSpinBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusNextChild cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_focusNextChild" qtc_QAbstractSpinBox_focusNextChild :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QfocusNextChild (QAbstractSpinBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QAbstractSpinBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_focusNextPrevChild" qtc_QAbstractSpinBox_focusNextPrevChild :: Ptr (TQAbstractSpinBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QAbstractSpinBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QAbstractSpinBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_focusPreviousChild" qtc_QAbstractSpinBox_focusPreviousChild :: Ptr (TQAbstractSpinBox a) -> IO CBool

instance QfocusPreviousChild (QAbstractSpinBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_focusPreviousChild cobj_x0

instance QfontChange (QAbstractSpinBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_fontChange" qtc_QAbstractSpinBox_fontChange :: Ptr (TQAbstractSpinBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QAbstractSpinBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QAbstractSpinBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractSpinBox_heightForWidth_h" qtc_QAbstractSpinBox_heightForWidth_h :: Ptr (TQAbstractSpinBox a) -> CInt -> IO CInt

instance QheightForWidth (QAbstractSpinBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QAbstractSpinBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_inputMethodEvent" qtc_QAbstractSpinBox_inputMethodEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractSpinBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractSpinBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_inputMethodQuery_h" qtc_QAbstractSpinBox_inputMethodQuery_h :: Ptr (TQAbstractSpinBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractSpinBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QAbstractSpinBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_languageChange cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_languageChange" qtc_QAbstractSpinBox_languageChange :: Ptr (TQAbstractSpinBox a) -> IO ()

instance QlanguageChange (QAbstractSpinBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_languageChange cobj_x0

instance QleaveEvent (QAbstractSpinBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_leaveEvent_h" qtc_QAbstractSpinBox_leaveEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QAbstractSpinBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QAbstractSpinBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractSpinBox_metric" qtc_QAbstractSpinBox_metric :: Ptr (TQAbstractSpinBox a) -> CLong -> IO CInt

instance Qmetric (QAbstractSpinBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QAbstractSpinBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_mouseDoubleClickEvent_h" qtc_QAbstractSpinBox_mouseDoubleClickEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractSpinBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QAbstractSpinBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSpinBox_move1" qtc_QAbstractSpinBox_move1 :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractSpinBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QAbstractSpinBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QAbstractSpinBox_move_qth" qtc_QAbstractSpinBox_move_qth :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QAbstractSpinBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QAbstractSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QAbstractSpinBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_move" qtc_QAbstractSpinBox_move :: Ptr (TQAbstractSpinBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QAbstractSpinBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_move cobj_x0 cobj_x1

instance QmoveEvent (QAbstractSpinBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_moveEvent_h" qtc_QAbstractSpinBox_moveEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QAbstractSpinBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QAbstractSpinBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_paintEngine_h" qtc_QAbstractSpinBox_paintEngine_h :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QAbstractSpinBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_paintEngine_h cobj_x0

instance QpaletteChange (QAbstractSpinBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_paletteChange" qtc_QAbstractSpinBox_paletteChange :: Ptr (TQAbstractSpinBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QAbstractSpinBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QAbstractSpinBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_repaint cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_repaint" qtc_QAbstractSpinBox_repaint :: Ptr (TQAbstractSpinBox a) -> IO ()

instance Qrepaint (QAbstractSpinBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_repaint cobj_x0

instance Qrepaint (QAbstractSpinBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractSpinBox_repaint2" qtc_QAbstractSpinBox_repaint2 :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QAbstractSpinBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QAbstractSpinBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_repaint1" qtc_QAbstractSpinBox_repaint1 :: Ptr (TQAbstractSpinBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QAbstractSpinBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QAbstractSpinBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_resetInputContext cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_resetInputContext" qtc_QAbstractSpinBox_resetInputContext :: Ptr (TQAbstractSpinBox a) -> IO ()

instance QresetInputContext (QAbstractSpinBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_resetInputContext cobj_x0

instance Qresize (QAbstractSpinBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractSpinBox_resize1" qtc_QAbstractSpinBox_resize1 :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractSpinBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QAbstractSpinBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_resize" qtc_QAbstractSpinBox_resize :: Ptr (TQAbstractSpinBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QAbstractSpinBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_resize cobj_x0 cobj_x1

instance Qresize (QAbstractSpinBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QAbstractSpinBox_resize_qth" qtc_QAbstractSpinBox_resize_qth :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QAbstractSpinBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QAbstractSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QAbstractSpinBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QAbstractSpinBox_setGeometry1" qtc_QAbstractSpinBox_setGeometry1 :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractSpinBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QAbstractSpinBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_setGeometry" qtc_QAbstractSpinBox_setGeometry :: Ptr (TQAbstractSpinBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QAbstractSpinBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QAbstractSpinBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QAbstractSpinBox_setGeometry_qth" qtc_QAbstractSpinBox_setGeometry_qth :: Ptr (TQAbstractSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QAbstractSpinBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QAbstractSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QAbstractSpinBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setMouseTracking" qtc_QAbstractSpinBox_setMouseTracking :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QsetMouseTracking (QAbstractSpinBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QAbstractSpinBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_setVisible_h" qtc_QAbstractSpinBox_setVisible_h :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QsetVisible (QAbstractSpinBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QAbstractSpinBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_tabletEvent_h" qtc_QAbstractSpinBox_tabletEvent_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QAbstractSpinBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QAbstractSpinBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_updateMicroFocus" qtc_QAbstractSpinBox_updateMicroFocus :: Ptr (TQAbstractSpinBox a) -> IO ()

instance QupdateMicroFocus (QAbstractSpinBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_updateMicroFocus cobj_x0

instance QwindowActivationChange (QAbstractSpinBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QAbstractSpinBox_windowActivationChange" qtc_QAbstractSpinBox_windowActivationChange :: Ptr (TQAbstractSpinBox a) -> CBool -> IO ()

instance QwindowActivationChange (QAbstractSpinBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QAbstractSpinBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_childEvent" qtc_QAbstractSpinBox_childEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractSpinBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractSpinBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSpinBox_connectNotify" qtc_QAbstractSpinBox_connectNotify :: Ptr (TQAbstractSpinBox a) -> CWString -> IO ()

instance QconnectNotify (QAbstractSpinBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractSpinBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractSpinBox_customEvent" qtc_QAbstractSpinBox_customEvent :: Ptr (TQAbstractSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractSpinBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractSpinBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractSpinBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSpinBox_disconnectNotify" qtc_QAbstractSpinBox_disconnectNotify :: Ptr (TQAbstractSpinBox a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractSpinBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QAbstractSpinBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractSpinBox_eventFilter_h" qtc_QAbstractSpinBox_eventFilter_h :: Ptr (TQAbstractSpinBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractSpinBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractSpinBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractSpinBox_receivers" qtc_QAbstractSpinBox_receivers :: Ptr (TQAbstractSpinBox a) -> CWString -> IO CInt

instance Qreceivers (QAbstractSpinBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractSpinBox_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractSpinBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sender cobj_x0

foreign import ccall "qtc_QAbstractSpinBox_sender" qtc_QAbstractSpinBox_sender :: Ptr (TQAbstractSpinBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractSpinBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractSpinBox_sender cobj_x0

