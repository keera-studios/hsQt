{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontComboBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontComboBox (
  QqFontComboBox(..)
  ,fontFilters
  ,setFontFilters
  ,setWritingSystem
  ,writingSystem
  ,qFontComboBox_delete
  ,qFontComboBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QFontDatabase
import Qtc.Enums.Gui.QFontComboBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QFontComboBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFontComboBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFontComboBox_userMethod" qtc_QFontComboBox_userMethod :: Ptr (TQFontComboBox a) -> CInt -> IO ()

instance QuserMethod (QFontComboBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFontComboBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFontComboBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFontComboBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFontComboBox_userMethodVariant" qtc_QFontComboBox_userMethodVariant :: Ptr (TQFontComboBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFontComboBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFontComboBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFontComboBox x1 where
  qFontComboBox :: x1 -> IO (QFontComboBox ())

instance QqFontComboBox (()) where
 qFontComboBox ()
  = withQFontComboBoxResult $
    qtc_QFontComboBox

foreign import ccall "qtc_QFontComboBox" qtc_QFontComboBox :: IO (Ptr (TQFontComboBox ()))

instance QqFontComboBox ((QWidget t1)) where
 qFontComboBox (x1)
  = withQFontComboBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox1 cobj_x1

foreign import ccall "qtc_QFontComboBox1" qtc_QFontComboBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQFontComboBox ()))

instance QcurrentFont (QFontComboBox a) (()) where
 currentFont x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_currentFont cobj_x0

foreign import ccall "qtc_QFontComboBox_currentFont" qtc_QFontComboBox_currentFont :: Ptr (TQFontComboBox a) -> IO (Ptr (TQFont ()))

instance Qevent (QFontComboBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_event_h" qtc_QFontComboBox_event_h :: Ptr (TQFontComboBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFontComboBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_event_h cobj_x0 cobj_x1

fontFilters :: QFontComboBox a -> (()) -> IO (FontFilters)
fontFilters x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_fontFilters cobj_x0

foreign import ccall "qtc_QFontComboBox_fontFilters" qtc_QFontComboBox_fontFilters :: Ptr (TQFontComboBox a) -> IO CLong

instance QsetCurrentFont (QFontComboBox a) ((QFont t1)) where
 setCurrentFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_setCurrentFont cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_setCurrentFont" qtc_QFontComboBox_setCurrentFont :: Ptr (TQFontComboBox a) -> Ptr (TQFont t1) -> IO ()

setFontFilters :: QFontComboBox a -> ((FontFilters)) -> IO ()
setFontFilters x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setFontFilters cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QFontComboBox_setFontFilters" qtc_QFontComboBox_setFontFilters :: Ptr (TQFontComboBox a) -> CLong -> IO ()

setWritingSystem :: QFontComboBox a -> ((WritingSystem)) -> IO ()
setWritingSystem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setWritingSystem cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFontComboBox_setWritingSystem" qtc_QFontComboBox_setWritingSystem :: Ptr (TQFontComboBox a) -> CLong -> IO ()

instance QqsizeHint (QFontComboBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QFontComboBox_sizeHint_h" qtc_QFontComboBox_sizeHint_h :: Ptr (TQFontComboBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QFontComboBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sizeHint_h cobj_x0

instance QsizeHint (QFontComboBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFontComboBox_sizeHint_qth_h" qtc_QFontComboBox_sizeHint_qth_h :: Ptr (TQFontComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QFontComboBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

writingSystem :: QFontComboBox a -> (()) -> IO (WritingSystem)
writingSystem x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_writingSystem cobj_x0

foreign import ccall "qtc_QFontComboBox_writingSystem" qtc_QFontComboBox_writingSystem :: Ptr (TQFontComboBox a) -> IO CLong

qFontComboBox_delete :: QFontComboBox a -> IO ()
qFontComboBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_delete cobj_x0

foreign import ccall "qtc_QFontComboBox_delete" qtc_QFontComboBox_delete :: Ptr (TQFontComboBox a) -> IO ()

qFontComboBox_deleteLater :: QFontComboBox a -> IO ()
qFontComboBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_deleteLater cobj_x0

foreign import ccall "qtc_QFontComboBox_deleteLater" qtc_QFontComboBox_deleteLater :: Ptr (TQFontComboBox a) -> IO ()

instance QchangeEvent (QFontComboBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_changeEvent_h" qtc_QFontComboBox_changeEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QFontComboBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_changeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QFontComboBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_contextMenuEvent_h" qtc_QFontComboBox_contextMenuEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QFontComboBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_contextMenuEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QFontComboBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_focusInEvent_h" qtc_QFontComboBox_focusInEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QFontComboBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QFontComboBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_focusOutEvent_h" qtc_QFontComboBox_focusOutEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QFontComboBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QFontComboBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_hideEvent_h" qtc_QFontComboBox_hideEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QFontComboBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_hideEvent_h cobj_x0 cobj_x1

instance QhidePopup (QFontComboBox ()) (()) where
 hidePopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_hidePopup_h cobj_x0

foreign import ccall "qtc_QFontComboBox_hidePopup_h" qtc_QFontComboBox_hidePopup_h :: Ptr (TQFontComboBox a) -> IO ()

instance QhidePopup (QFontComboBoxSc a) (()) where
 hidePopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_hidePopup_h cobj_x0

instance QinitStyleOption (QFontComboBox ()) ((QStyleOptionComboBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_initStyleOption" qtc_QFontComboBox_initStyleOption :: Ptr (TQFontComboBox a) -> Ptr (TQStyleOptionComboBox t1) -> IO ()

instance QinitStyleOption (QFontComboBoxSc a) ((QStyleOptionComboBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_initStyleOption cobj_x0 cobj_x1

instance QinputMethodEvent (QFontComboBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_inputMethodEvent" qtc_QFontComboBox_inputMethodEvent :: Ptr (TQFontComboBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QFontComboBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QFontComboBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFontComboBox_inputMethodQuery" qtc_QFontComboBox_inputMethodQuery :: Ptr (TQFontComboBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QFontComboBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QFontComboBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_keyPressEvent_h" qtc_QFontComboBox_keyPressEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QFontComboBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QFontComboBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_keyReleaseEvent_h" qtc_QFontComboBox_keyReleaseEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QFontComboBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QFontComboBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QFontComboBox_minimumSizeHint_h" qtc_QFontComboBox_minimumSizeHint_h :: Ptr (TQFontComboBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QFontComboBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QFontComboBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFontComboBox_minimumSizeHint_qth_h" qtc_QFontComboBox_minimumSizeHint_qth_h :: Ptr (TQFontComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QFontComboBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmousePressEvent (QFontComboBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_mousePressEvent_h" qtc_QFontComboBox_mousePressEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QFontComboBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QFontComboBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_mouseReleaseEvent_h" qtc_QFontComboBox_mouseReleaseEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QFontComboBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QFontComboBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_paintEvent_h" qtc_QFontComboBox_paintEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QFontComboBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QFontComboBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_resizeEvent_h" qtc_QFontComboBox_resizeEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QFontComboBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_resizeEvent_h cobj_x0 cobj_x1

instance QshowEvent (QFontComboBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_showEvent_h" qtc_QFontComboBox_showEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QFontComboBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_showEvent_h cobj_x0 cobj_x1

instance QshowPopup (QFontComboBox ()) (()) where
 showPopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_showPopup_h cobj_x0

foreign import ccall "qtc_QFontComboBox_showPopup_h" qtc_QFontComboBox_showPopup_h :: Ptr (TQFontComboBox a) -> IO ()

instance QshowPopup (QFontComboBoxSc a) (()) where
 showPopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_showPopup_h cobj_x0

instance QwheelEvent (QFontComboBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_wheelEvent_h" qtc_QFontComboBox_wheelEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QFontComboBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QFontComboBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_actionEvent_h" qtc_QFontComboBox_actionEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QFontComboBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QFontComboBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_addAction" qtc_QFontComboBox_addAction :: Ptr (TQFontComboBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QFontComboBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QFontComboBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_closeEvent_h" qtc_QFontComboBox_closeEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QFontComboBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QFontComboBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_create cobj_x0

foreign import ccall "qtc_QFontComboBox_create" qtc_QFontComboBox_create :: Ptr (TQFontComboBox a) -> IO ()

instance Qcreate (QFontComboBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_create cobj_x0

instance Qcreate (QFontComboBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_create1" qtc_QFontComboBox_create1 :: Ptr (TQFontComboBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QFontComboBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create1 cobj_x0 cobj_x1

instance Qcreate (QFontComboBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QFontComboBox_create2" qtc_QFontComboBox_create2 :: Ptr (TQFontComboBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QFontComboBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QFontComboBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QFontComboBox_create3" qtc_QFontComboBox_create3 :: Ptr (TQFontComboBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QFontComboBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QFontComboBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy cobj_x0

foreign import ccall "qtc_QFontComboBox_destroy" qtc_QFontComboBox_destroy :: Ptr (TQFontComboBox a) -> IO ()

instance Qdestroy (QFontComboBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy cobj_x0

instance Qdestroy (QFontComboBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_destroy1" qtc_QFontComboBox_destroy1 :: Ptr (TQFontComboBox a) -> CBool -> IO ()

instance Qdestroy (QFontComboBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QFontComboBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QFontComboBox_destroy2" qtc_QFontComboBox_destroy2 :: Ptr (TQFontComboBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QFontComboBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QFontComboBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_devType_h cobj_x0

foreign import ccall "qtc_QFontComboBox_devType_h" qtc_QFontComboBox_devType_h :: Ptr (TQFontComboBox a) -> IO CInt

instance QdevType (QFontComboBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_devType_h cobj_x0

instance QdragEnterEvent (QFontComboBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_dragEnterEvent_h" qtc_QFontComboBox_dragEnterEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QFontComboBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QFontComboBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_dragLeaveEvent_h" qtc_QFontComboBox_dragLeaveEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QFontComboBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QFontComboBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_dragMoveEvent_h" qtc_QFontComboBox_dragMoveEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QFontComboBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QFontComboBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_dropEvent_h" qtc_QFontComboBox_dropEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QFontComboBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QFontComboBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_enabledChange" qtc_QFontComboBox_enabledChange :: Ptr (TQFontComboBox a) -> CBool -> IO ()

instance QenabledChange (QFontComboBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QFontComboBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_enterEvent_h" qtc_QFontComboBox_enterEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QFontComboBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QFontComboBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusNextChild cobj_x0

foreign import ccall "qtc_QFontComboBox_focusNextChild" qtc_QFontComboBox_focusNextChild :: Ptr (TQFontComboBox a) -> IO CBool

instance QfocusNextChild (QFontComboBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QFontComboBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_focusNextPrevChild" qtc_QFontComboBox_focusNextPrevChild :: Ptr (TQFontComboBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QFontComboBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QFontComboBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QFontComboBox_focusPreviousChild" qtc_QFontComboBox_focusPreviousChild :: Ptr (TQFontComboBox a) -> IO CBool

instance QfocusPreviousChild (QFontComboBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_focusPreviousChild cobj_x0

instance QfontChange (QFontComboBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_fontChange" qtc_QFontComboBox_fontChange :: Ptr (TQFontComboBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QFontComboBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QFontComboBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFontComboBox_heightForWidth_h" qtc_QFontComboBox_heightForWidth_h :: Ptr (TQFontComboBox a) -> CInt -> IO CInt

instance QheightForWidth (QFontComboBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QlanguageChange (QFontComboBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_languageChange cobj_x0

foreign import ccall "qtc_QFontComboBox_languageChange" qtc_QFontComboBox_languageChange :: Ptr (TQFontComboBox a) -> IO ()

instance QlanguageChange (QFontComboBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_languageChange cobj_x0

instance QleaveEvent (QFontComboBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_leaveEvent_h" qtc_QFontComboBox_leaveEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QFontComboBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QFontComboBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFontComboBox_metric" qtc_QFontComboBox_metric :: Ptr (TQFontComboBox a) -> CLong -> IO CInt

instance Qmetric (QFontComboBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QFontComboBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_mouseDoubleClickEvent_h" qtc_QFontComboBox_mouseDoubleClickEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QFontComboBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QFontComboBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_mouseMoveEvent_h" qtc_QFontComboBox_mouseMoveEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QFontComboBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance Qmove (QFontComboBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFontComboBox_move1" qtc_QFontComboBox_move1 :: Ptr (TQFontComboBox a) -> CInt -> CInt -> IO ()

instance Qmove (QFontComboBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QFontComboBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFontComboBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QFontComboBox_move_qth" qtc_QFontComboBox_move_qth :: Ptr (TQFontComboBox a) -> CInt -> CInt -> IO ()

instance Qmove (QFontComboBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFontComboBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QFontComboBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_move" qtc_QFontComboBox_move :: Ptr (TQFontComboBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QFontComboBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_move cobj_x0 cobj_x1

instance QmoveEvent (QFontComboBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_moveEvent_h" qtc_QFontComboBox_moveEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QFontComboBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QFontComboBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QFontComboBox_paintEngine_h" qtc_QFontComboBox_paintEngine_h :: Ptr (TQFontComboBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QFontComboBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_paintEngine_h cobj_x0

instance QpaletteChange (QFontComboBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_paletteChange" qtc_QFontComboBox_paletteChange :: Ptr (TQFontComboBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QFontComboBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QFontComboBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_repaint cobj_x0

foreign import ccall "qtc_QFontComboBox_repaint" qtc_QFontComboBox_repaint :: Ptr (TQFontComboBox a) -> IO ()

instance Qrepaint (QFontComboBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_repaint cobj_x0

instance Qrepaint (QFontComboBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFontComboBox_repaint2" qtc_QFontComboBox_repaint2 :: Ptr (TQFontComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QFontComboBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QFontComboBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_repaint1" qtc_QFontComboBox_repaint1 :: Ptr (TQFontComboBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QFontComboBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QFontComboBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_resetInputContext cobj_x0

foreign import ccall "qtc_QFontComboBox_resetInputContext" qtc_QFontComboBox_resetInputContext :: Ptr (TQFontComboBox a) -> IO ()

instance QresetInputContext (QFontComboBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_resetInputContext cobj_x0

instance Qresize (QFontComboBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFontComboBox_resize1" qtc_QFontComboBox_resize1 :: Ptr (TQFontComboBox a) -> CInt -> CInt -> IO ()

instance Qresize (QFontComboBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QFontComboBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_resize" qtc_QFontComboBox_resize :: Ptr (TQFontComboBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QFontComboBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_resize cobj_x0 cobj_x1

instance Qresize (QFontComboBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFontComboBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QFontComboBox_resize_qth" qtc_QFontComboBox_resize_qth :: Ptr (TQFontComboBox a) -> CInt -> CInt -> IO ()

instance Qresize (QFontComboBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFontComboBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QFontComboBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFontComboBox_setGeometry1" qtc_QFontComboBox_setGeometry1 :: Ptr (TQFontComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFontComboBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QFontComboBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_setGeometry" qtc_QFontComboBox_setGeometry :: Ptr (TQFontComboBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QFontComboBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QFontComboBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFontComboBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFontComboBox_setGeometry_qth" qtc_QFontComboBox_setGeometry_qth :: Ptr (TQFontComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFontComboBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFontComboBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QFontComboBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_setMouseTracking" qtc_QFontComboBox_setMouseTracking :: Ptr (TQFontComboBox a) -> CBool -> IO ()

instance QsetMouseTracking (QFontComboBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QFontComboBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_setVisible_h" qtc_QFontComboBox_setVisible_h :: Ptr (TQFontComboBox a) -> CBool -> IO ()

instance QsetVisible (QFontComboBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QFontComboBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_tabletEvent_h" qtc_QFontComboBox_tabletEvent_h :: Ptr (TQFontComboBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QFontComboBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QFontComboBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QFontComboBox_updateMicroFocus" qtc_QFontComboBox_updateMicroFocus :: Ptr (TQFontComboBox a) -> IO ()

instance QupdateMicroFocus (QFontComboBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_updateMicroFocus cobj_x0

instance QwindowActivationChange (QFontComboBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontComboBox_windowActivationChange" qtc_QFontComboBox_windowActivationChange :: Ptr (TQFontComboBox a) -> CBool -> IO ()

instance QwindowActivationChange (QFontComboBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QFontComboBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_childEvent" qtc_QFontComboBox_childEvent :: Ptr (TQFontComboBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFontComboBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFontComboBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFontComboBox_connectNotify" qtc_QFontComboBox_connectNotify :: Ptr (TQFontComboBox a) -> CWString -> IO ()

instance QconnectNotify (QFontComboBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFontComboBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_customEvent" qtc_QFontComboBox_customEvent :: Ptr (TQFontComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFontComboBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFontComboBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFontComboBox_disconnectNotify" qtc_QFontComboBox_disconnectNotify :: Ptr (TQFontComboBox a) -> CWString -> IO ()

instance QdisconnectNotify (QFontComboBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QFontComboBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontComboBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFontComboBox_eventFilter_h" qtc_QFontComboBox_eventFilter_h :: Ptr (TQFontComboBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFontComboBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFontComboBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QFontComboBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFontComboBox_receivers" qtc_QFontComboBox_receivers :: Ptr (TQFontComboBox a) -> CWString -> IO CInt

instance Qreceivers (QFontComboBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFontComboBox_receivers cobj_x0 cstr_x1

instance Qsender (QFontComboBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sender cobj_x0

foreign import ccall "qtc_QFontComboBox_sender" qtc_QFontComboBox_sender :: Ptr (TQFontComboBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QFontComboBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontComboBox_sender cobj_x0

instance QtimerEvent (QFontComboBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFontComboBox_timerEvent" qtc_QFontComboBox_timerEvent :: Ptr (TQFontComboBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFontComboBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontComboBox_timerEvent cobj_x0 cobj_x1

