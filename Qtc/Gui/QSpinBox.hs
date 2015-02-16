{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSpinBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSpinBox (
  QqSpinBox(..)
  ,qSpinBox_delete
  ,qSpinBox_deleteLater
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

instance QuserMethod (QSpinBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSpinBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSpinBox_userMethod" qtc_QSpinBox_userMethod :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QuserMethod (QSpinBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSpinBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSpinBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSpinBox_userMethodVariant" qtc_QSpinBox_userMethodVariant :: Ptr (TQSpinBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSpinBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSpinBox x1 where
  qSpinBox :: x1 -> IO (QSpinBox ())

instance QqSpinBox (()) where
 qSpinBox ()
  = withQSpinBoxResult $
    qtc_QSpinBox

foreign import ccall "qtc_QSpinBox" qtc_QSpinBox :: IO (Ptr (TQSpinBox ()))

instance QqSpinBox ((QWidget t1)) where
 qSpinBox (x1)
  = withQSpinBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox1 cobj_x1

foreign import ccall "qtc_QSpinBox1" qtc_QSpinBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQSpinBox ()))

instance QcleanText (QSpinBox a) (()) where
 cleanText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_cleanText cobj_x0

foreign import ccall "qtc_QSpinBox_cleanText" qtc_QSpinBox_cleanText :: Ptr (TQSpinBox a) -> IO (Ptr (TQString ()))

instance Qevent (QSpinBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_event_h" qtc_QSpinBox_event_h :: Ptr (TQSpinBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSpinBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_event_h cobj_x0 cobj_x1

instance Qqmaximum (QSpinBox a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_maximum cobj_x0

foreign import ccall "qtc_QSpinBox_maximum" qtc_QSpinBox_maximum :: Ptr (TQSpinBox a) -> IO CInt

instance Qqminimum (QSpinBox a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_minimum cobj_x0

foreign import ccall "qtc_QSpinBox_minimum" qtc_QSpinBox_minimum :: Ptr (TQSpinBox a) -> IO CInt

instance Qprefix (QSpinBox a) (()) where
 prefix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_prefix cobj_x0

foreign import ccall "qtc_QSpinBox_prefix" qtc_QSpinBox_prefix :: Ptr (TQSpinBox a) -> IO (Ptr (TQString ()))

instance QsetMaximum (QSpinBox a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_setMaximum" qtc_QSpinBox_setMaximum :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QsetMinimum (QSpinBox a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_setMinimum" qtc_QSpinBox_setMinimum :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QsetPrefix (QSpinBox a) ((String)) where
 setPrefix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_setPrefix cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_setPrefix" qtc_QSpinBox_setPrefix :: Ptr (TQSpinBox a) -> CWString -> IO ()

instance QsetRange (QSpinBox a) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setRange cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSpinBox_setRange" qtc_QSpinBox_setRange :: Ptr (TQSpinBox a) -> CInt -> CInt -> IO ()

instance QsetSingleStep (QSpinBox a) ((Int)) where
 setSingleStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setSingleStep cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_setSingleStep" qtc_QSpinBox_setSingleStep :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QsetSuffix (QSpinBox a) ((String)) where
 setSuffix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_setSuffix cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_setSuffix" qtc_QSpinBox_setSuffix :: Ptr (TQSpinBox a) -> CWString -> IO ()

instance QsetValue (QSpinBox a) ((Int)) where
 setValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setValue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_setValue" qtc_QSpinBox_setValue :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QsingleStep (QSpinBox a) (()) (IO (Int)) where
 singleStep x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_singleStep cobj_x0

foreign import ccall "qtc_QSpinBox_singleStep" qtc_QSpinBox_singleStep :: Ptr (TQSpinBox a) -> IO CInt

instance Qsuffix (QSpinBox a) (()) where
 suffix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_suffix cobj_x0

foreign import ccall "qtc_QSpinBox_suffix" qtc_QSpinBox_suffix :: Ptr (TQSpinBox a) -> IO (Ptr (TQString ()))

instance Qvalue (QSpinBox a) (()) (IO (Int)) where
 value x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_value cobj_x0

foreign import ccall "qtc_QSpinBox_value" qtc_QSpinBox_value :: Ptr (TQSpinBox a) -> IO CInt

instance QvalueFromText (QSpinBox ()) ((String)) (IO (Int)) where
 valueFromText x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_valueFromText_h cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_valueFromText_h" qtc_QSpinBox_valueFromText_h :: Ptr (TQSpinBox a) -> CWString -> IO CInt

instance QvalueFromText (QSpinBoxSc a) ((String)) (IO (Int)) where
 valueFromText x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_valueFromText_h cobj_x0 cstr_x1

qSpinBox_delete :: QSpinBox a -> IO ()
qSpinBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_delete cobj_x0

foreign import ccall "qtc_QSpinBox_delete" qtc_QSpinBox_delete :: Ptr (TQSpinBox a) -> IO ()

qSpinBox_deleteLater :: QSpinBox a -> IO ()
qSpinBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_deleteLater cobj_x0

foreign import ccall "qtc_QSpinBox_deleteLater" qtc_QSpinBox_deleteLater :: Ptr (TQSpinBox a) -> IO ()

instance QchangeEvent (QSpinBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_changeEvent_h" qtc_QSpinBox_changeEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QSpinBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QSpinBox ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_clear_h cobj_x0

foreign import ccall "qtc_QSpinBox_clear_h" qtc_QSpinBox_clear_h :: Ptr (TQSpinBox a) -> IO ()

instance Qclear (QSpinBoxSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_clear_h cobj_x0

instance QcloseEvent (QSpinBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_closeEvent_h" qtc_QSpinBox_closeEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QSpinBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QSpinBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_contextMenuEvent_h" qtc_QSpinBox_contextMenuEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QSpinBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QSpinBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_focusInEvent_h" qtc_QSpinBox_focusInEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QSpinBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QSpinBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_focusOutEvent_h" qtc_QSpinBox_focusOutEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QSpinBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QSpinBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_hideEvent_h" qtc_QSpinBox_hideEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QSpinBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_hideEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QSpinBox ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_initStyleOption" qtc_QSpinBox_initStyleOption :: Ptr (TQSpinBox a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QSpinBoxSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_initStyleOption cobj_x0 cobj_x1

instance QkeyPressEvent (QSpinBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_keyPressEvent_h" qtc_QSpinBox_keyPressEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QSpinBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QSpinBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_keyReleaseEvent_h" qtc_QSpinBox_keyReleaseEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QSpinBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QSpinBox ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_lineEdit cobj_x0

foreign import ccall "qtc_QSpinBox_lineEdit" qtc_QSpinBox_lineEdit :: Ptr (TQSpinBox a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QSpinBoxSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_lineEdit cobj_x0

instance QqminimumSizeHint (QSpinBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QSpinBox_minimumSizeHint_h" qtc_QSpinBox_minimumSizeHint_h :: Ptr (TQSpinBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QSpinBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QSpinBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSpinBox_minimumSizeHint_qth_h" qtc_QSpinBox_minimumSizeHint_qth_h :: Ptr (TQSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QSpinBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QSpinBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_mouseMoveEvent_h" qtc_QSpinBox_mouseMoveEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QSpinBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QSpinBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_mousePressEvent_h" qtc_QSpinBox_mousePressEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QSpinBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QSpinBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_mouseReleaseEvent_h" qtc_QSpinBox_mouseReleaseEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QSpinBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QSpinBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_paintEvent_h" qtc_QSpinBox_paintEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QSpinBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QSpinBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_resizeEvent_h" qtc_QSpinBox_resizeEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QSpinBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetLineEdit (QSpinBox ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_setLineEdit" qtc_QSpinBox_setLineEdit :: Ptr (TQSpinBox a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QSpinBoxSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_setLineEdit cobj_x0 cobj_x1

instance QshowEvent (QSpinBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_showEvent_h" qtc_QSpinBox_showEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QSpinBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QSpinBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QSpinBox_sizeHint_h" qtc_QSpinBox_sizeHint_h :: Ptr (TQSpinBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSpinBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sizeHint_h cobj_x0

instance QsizeHint (QSpinBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSpinBox_sizeHint_qth_h" qtc_QSpinBox_sizeHint_qth_h :: Ptr (TQSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSpinBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstepBy (QSpinBox ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_stepBy_h" qtc_QSpinBox_stepBy_h :: Ptr (TQSpinBox a) -> CInt -> IO ()

instance QstepBy (QSpinBoxSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_stepBy_h cobj_x0 (toCInt x1)

instance QstepEnabled (QSpinBox ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_stepEnabled cobj_x0

foreign import ccall "qtc_QSpinBox_stepEnabled" qtc_QSpinBox_stepEnabled :: Ptr (TQSpinBox a) -> IO CLong

instance QstepEnabled (QSpinBoxSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_stepEnabled cobj_x0

instance QtimerEvent (QSpinBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_timerEvent" qtc_QSpinBox_timerEvent :: Ptr (TQSpinBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSpinBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QSpinBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_wheelEvent_h" qtc_QSpinBox_wheelEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QSpinBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QSpinBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_actionEvent_h" qtc_QSpinBox_actionEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QSpinBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QSpinBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_addAction" qtc_QSpinBox_addAction :: Ptr (TQSpinBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QSpinBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_addAction cobj_x0 cobj_x1

instance Qcreate (QSpinBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_create cobj_x0

foreign import ccall "qtc_QSpinBox_create" qtc_QSpinBox_create :: Ptr (TQSpinBox a) -> IO ()

instance Qcreate (QSpinBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_create cobj_x0

instance Qcreate (QSpinBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_create1" qtc_QSpinBox_create1 :: Ptr (TQSpinBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QSpinBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create1 cobj_x0 cobj_x1

instance Qcreate (QSpinBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QSpinBox_create2" qtc_QSpinBox_create2 :: Ptr (TQSpinBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QSpinBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QSpinBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QSpinBox_create3" qtc_QSpinBox_create3 :: Ptr (TQSpinBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QSpinBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QSpinBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy cobj_x0

foreign import ccall "qtc_QSpinBox_destroy" qtc_QSpinBox_destroy :: Ptr (TQSpinBox a) -> IO ()

instance Qdestroy (QSpinBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy cobj_x0

instance Qdestroy (QSpinBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_destroy1" qtc_QSpinBox_destroy1 :: Ptr (TQSpinBox a) -> CBool -> IO ()

instance Qdestroy (QSpinBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QSpinBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QSpinBox_destroy2" qtc_QSpinBox_destroy2 :: Ptr (TQSpinBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QSpinBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QSpinBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_devType_h cobj_x0

foreign import ccall "qtc_QSpinBox_devType_h" qtc_QSpinBox_devType_h :: Ptr (TQSpinBox a) -> IO CInt

instance QdevType (QSpinBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_devType_h cobj_x0

instance QdragEnterEvent (QSpinBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_dragEnterEvent_h" qtc_QSpinBox_dragEnterEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QSpinBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QSpinBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_dragLeaveEvent_h" qtc_QSpinBox_dragLeaveEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QSpinBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QSpinBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_dragMoveEvent_h" qtc_QSpinBox_dragMoveEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QSpinBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QSpinBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_dropEvent_h" qtc_QSpinBox_dropEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QSpinBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QSpinBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_enabledChange" qtc_QSpinBox_enabledChange :: Ptr (TQSpinBox a) -> CBool -> IO ()

instance QenabledChange (QSpinBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QSpinBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_enterEvent_h" qtc_QSpinBox_enterEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QSpinBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QSpinBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusNextChild cobj_x0

foreign import ccall "qtc_QSpinBox_focusNextChild" qtc_QSpinBox_focusNextChild :: Ptr (TQSpinBox a) -> IO CBool

instance QfocusNextChild (QSpinBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QSpinBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_focusNextPrevChild" qtc_QSpinBox_focusNextPrevChild :: Ptr (TQSpinBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QSpinBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QSpinBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QSpinBox_focusPreviousChild" qtc_QSpinBox_focusPreviousChild :: Ptr (TQSpinBox a) -> IO CBool

instance QfocusPreviousChild (QSpinBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_focusPreviousChild cobj_x0

instance QfontChange (QSpinBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_fontChange" qtc_QSpinBox_fontChange :: Ptr (TQSpinBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QSpinBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QSpinBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpinBox_heightForWidth_h" qtc_QSpinBox_heightForWidth_h :: Ptr (TQSpinBox a) -> CInt -> IO CInt

instance QheightForWidth (QSpinBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QSpinBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_inputMethodEvent" qtc_QSpinBox_inputMethodEvent :: Ptr (TQSpinBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QSpinBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QSpinBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSpinBox_inputMethodQuery_h" qtc_QSpinBox_inputMethodQuery_h :: Ptr (TQSpinBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QSpinBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QSpinBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_languageChange cobj_x0

foreign import ccall "qtc_QSpinBox_languageChange" qtc_QSpinBox_languageChange :: Ptr (TQSpinBox a) -> IO ()

instance QlanguageChange (QSpinBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_languageChange cobj_x0

instance QleaveEvent (QSpinBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_leaveEvent_h" qtc_QSpinBox_leaveEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QSpinBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QSpinBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSpinBox_metric" qtc_QSpinBox_metric :: Ptr (TQSpinBox a) -> CLong -> IO CInt

instance Qmetric (QSpinBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QSpinBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_mouseDoubleClickEvent_h" qtc_QSpinBox_mouseDoubleClickEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QSpinBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QSpinBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSpinBox_move1" qtc_QSpinBox_move1 :: Ptr (TQSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QSpinBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QSpinBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QSpinBox_move_qth" qtc_QSpinBox_move_qth :: Ptr (TQSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QSpinBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QSpinBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_move" qtc_QSpinBox_move :: Ptr (TQSpinBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QSpinBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_move cobj_x0 cobj_x1

instance QmoveEvent (QSpinBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_moveEvent_h" qtc_QSpinBox_moveEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QSpinBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QSpinBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QSpinBox_paintEngine_h" qtc_QSpinBox_paintEngine_h :: Ptr (TQSpinBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QSpinBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_paintEngine_h cobj_x0

instance QpaletteChange (QSpinBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_paletteChange" qtc_QSpinBox_paletteChange :: Ptr (TQSpinBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QSpinBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QSpinBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_repaint cobj_x0

foreign import ccall "qtc_QSpinBox_repaint" qtc_QSpinBox_repaint :: Ptr (TQSpinBox a) -> IO ()

instance Qrepaint (QSpinBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_repaint cobj_x0

instance Qrepaint (QSpinBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSpinBox_repaint2" qtc_QSpinBox_repaint2 :: Ptr (TQSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QSpinBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QSpinBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_repaint1" qtc_QSpinBox_repaint1 :: Ptr (TQSpinBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QSpinBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QSpinBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_resetInputContext cobj_x0

foreign import ccall "qtc_QSpinBox_resetInputContext" qtc_QSpinBox_resetInputContext :: Ptr (TQSpinBox a) -> IO ()

instance QresetInputContext (QSpinBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_resetInputContext cobj_x0

instance Qresize (QSpinBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSpinBox_resize1" qtc_QSpinBox_resize1 :: Ptr (TQSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QSpinBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QSpinBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_resize" qtc_QSpinBox_resize :: Ptr (TQSpinBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QSpinBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_resize cobj_x0 cobj_x1

instance Qresize (QSpinBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSpinBox_resize_qth" qtc_QSpinBox_resize_qth :: Ptr (TQSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QSpinBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QSpinBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSpinBox_setGeometry1" qtc_QSpinBox_setGeometry1 :: Ptr (TQSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSpinBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QSpinBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_setGeometry" qtc_QSpinBox_setGeometry :: Ptr (TQSpinBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSpinBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QSpinBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSpinBox_setGeometry_qth" qtc_QSpinBox_setGeometry_qth :: Ptr (TQSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSpinBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QSpinBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_setMouseTracking" qtc_QSpinBox_setMouseTracking :: Ptr (TQSpinBox a) -> CBool -> IO ()

instance QsetMouseTracking (QSpinBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QSpinBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_setVisible_h" qtc_QSpinBox_setVisible_h :: Ptr (TQSpinBox a) -> CBool -> IO ()

instance QsetVisible (QSpinBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QSpinBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_tabletEvent_h" qtc_QSpinBox_tabletEvent_h :: Ptr (TQSpinBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QSpinBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QSpinBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QSpinBox_updateMicroFocus" qtc_QSpinBox_updateMicroFocus :: Ptr (TQSpinBox a) -> IO ()

instance QupdateMicroFocus (QSpinBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_updateMicroFocus cobj_x0

instance QwindowActivationChange (QSpinBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSpinBox_windowActivationChange" qtc_QSpinBox_windowActivationChange :: Ptr (TQSpinBox a) -> CBool -> IO ()

instance QwindowActivationChange (QSpinBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QSpinBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_childEvent" qtc_QSpinBox_childEvent :: Ptr (TQSpinBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSpinBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSpinBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_connectNotify" qtc_QSpinBox_connectNotify :: Ptr (TQSpinBox a) -> CWString -> IO ()

instance QconnectNotify (QSpinBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSpinBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSpinBox_customEvent" qtc_QSpinBox_customEvent :: Ptr (TQSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSpinBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpinBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSpinBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_disconnectNotify" qtc_QSpinBox_disconnectNotify :: Ptr (TQSpinBox a) -> CWString -> IO ()

instance QdisconnectNotify (QSpinBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QSpinBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSpinBox_eventFilter_h" qtc_QSpinBox_eventFilter_h :: Ptr (TQSpinBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSpinBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSpinBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSpinBox_receivers" qtc_QSpinBox_receivers :: Ptr (TQSpinBox a) -> CWString -> IO CInt

instance Qreceivers (QSpinBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSpinBox_receivers cobj_x0 cstr_x1

instance Qsender (QSpinBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sender cobj_x0

foreign import ccall "qtc_QSpinBox_sender" qtc_QSpinBox_sender :: Ptr (TQSpinBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QSpinBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpinBox_sender cobj_x0

