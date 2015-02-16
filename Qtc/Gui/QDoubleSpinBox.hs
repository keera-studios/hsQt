{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDoubleSpinBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDoubleSpinBox (
  QqDoubleSpinBox(..)
  ,QtextFromValue(..)
  ,qDoubleSpinBox_delete
  ,qDoubleSpinBox_deleteLater
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

instance QuserMethod (QDoubleSpinBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDoubleSpinBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDoubleSpinBox_userMethod" qtc_QDoubleSpinBox_userMethod :: Ptr (TQDoubleSpinBox a) -> CInt -> IO ()

instance QuserMethod (QDoubleSpinBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDoubleSpinBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDoubleSpinBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDoubleSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDoubleSpinBox_userMethodVariant" qtc_QDoubleSpinBox_userMethodVariant :: Ptr (TQDoubleSpinBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDoubleSpinBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDoubleSpinBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDoubleSpinBox x1 where
  qDoubleSpinBox :: x1 -> IO (QDoubleSpinBox ())

instance QqDoubleSpinBox (()) where
 qDoubleSpinBox ()
  = withQDoubleSpinBoxResult $
    qtc_QDoubleSpinBox

foreign import ccall "qtc_QDoubleSpinBox" qtc_QDoubleSpinBox :: IO (Ptr (TQDoubleSpinBox ()))

instance QqDoubleSpinBox ((QWidget t1)) where
 qDoubleSpinBox (x1)
  = withQDoubleSpinBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox1 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox1" qtc_QDoubleSpinBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQDoubleSpinBox ()))

instance QcleanText (QDoubleSpinBox a) (()) where
 cleanText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_cleanText cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_cleanText" qtc_QDoubleSpinBox_cleanText :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQString ()))

instance Qdecimals (QDoubleSpinBox a) (()) where
 decimals x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_decimals cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_decimals" qtc_QDoubleSpinBox_decimals :: Ptr (TQDoubleSpinBox a) -> IO CInt

instance Qqmaximum (QDoubleSpinBox a) (()) (IO (Double)) where
 qmaximum x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_maximum cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_maximum" qtc_QDoubleSpinBox_maximum :: Ptr (TQDoubleSpinBox a) -> IO CDouble

instance Qqminimum (QDoubleSpinBox a) (()) (IO (Double)) where
 qminimum x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_minimum cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_minimum" qtc_QDoubleSpinBox_minimum :: Ptr (TQDoubleSpinBox a) -> IO CDouble

instance Qprefix (QDoubleSpinBox a) (()) where
 prefix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_prefix cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_prefix" qtc_QDoubleSpinBox_prefix :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQString ()))

instance QsetDecimals (QDoubleSpinBox a) ((Int)) where
 setDecimals x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setDecimals cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDoubleSpinBox_setDecimals" qtc_QDoubleSpinBox_setDecimals :: Ptr (TQDoubleSpinBox a) -> CInt -> IO ()

instance QsetMaximum (QDoubleSpinBox a) ((Double)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setMaximum cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleSpinBox_setMaximum" qtc_QDoubleSpinBox_setMaximum :: Ptr (TQDoubleSpinBox a) -> CDouble -> IO ()

instance QsetMinimum (QDoubleSpinBox a) ((Double)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setMinimum cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleSpinBox_setMinimum" qtc_QDoubleSpinBox_setMinimum :: Ptr (TQDoubleSpinBox a) -> CDouble -> IO ()

instance QsetPrefix (QDoubleSpinBox a) ((String)) where
 setPrefix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_setPrefix cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_setPrefix" qtc_QDoubleSpinBox_setPrefix :: Ptr (TQDoubleSpinBox a) -> CWString -> IO ()

instance QsetRange (QDoubleSpinBox a) ((Double, Double)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setRange cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QDoubleSpinBox_setRange" qtc_QDoubleSpinBox_setRange :: Ptr (TQDoubleSpinBox a) -> CDouble -> CDouble -> IO ()

instance QsetSingleStep (QDoubleSpinBox a) ((Double)) where
 setSingleStep x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setSingleStep cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleSpinBox_setSingleStep" qtc_QDoubleSpinBox_setSingleStep :: Ptr (TQDoubleSpinBox a) -> CDouble -> IO ()

instance QsetSuffix (QDoubleSpinBox a) ((String)) where
 setSuffix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_setSuffix cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_setSuffix" qtc_QDoubleSpinBox_setSuffix :: Ptr (TQDoubleSpinBox a) -> CWString -> IO ()

instance QsetValue (QDoubleSpinBox a) ((Double)) where
 setValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setValue cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleSpinBox_setValue" qtc_QDoubleSpinBox_setValue :: Ptr (TQDoubleSpinBox a) -> CDouble -> IO ()

instance QsingleStep (QDoubleSpinBox a) (()) (IO (Double)) where
 singleStep x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_singleStep cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_singleStep" qtc_QDoubleSpinBox_singleStep :: Ptr (TQDoubleSpinBox a) -> IO CDouble

instance Qsuffix (QDoubleSpinBox a) (()) where
 suffix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_suffix cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_suffix" qtc_QDoubleSpinBox_suffix :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQString ()))

class QtextFromValue x0 x1 where
 textFromValue :: x0 -> x1 -> IO (String)

instance QtextFromValue (QDoubleSpinBox ()) ((Double)) where
 textFromValue x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_textFromValue_h cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QDoubleSpinBox_textFromValue_h" qtc_QDoubleSpinBox_textFromValue_h :: Ptr (TQDoubleSpinBox a) -> CDouble -> IO (Ptr (TQString ()))

instance QtextFromValue (QDoubleSpinBoxSc a) ((Double)) where
 textFromValue x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_textFromValue_h cobj_x0 (toCDouble x1)

instance Qvalue (QDoubleSpinBox a) (()) (IO (Double)) where
 value x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_value cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_value" qtc_QDoubleSpinBox_value :: Ptr (TQDoubleSpinBox a) -> IO CDouble

instance QvalueFromText (QDoubleSpinBox ()) ((String)) (IO (Double)) where
 valueFromText x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_valueFromText_h cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_valueFromText_h" qtc_QDoubleSpinBox_valueFromText_h :: Ptr (TQDoubleSpinBox a) -> CWString -> IO CDouble

instance QvalueFromText (QDoubleSpinBoxSc a) ((String)) (IO (Double)) where
 valueFromText x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_valueFromText_h cobj_x0 cstr_x1

qDoubleSpinBox_delete :: QDoubleSpinBox a -> IO ()
qDoubleSpinBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_delete cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_delete" qtc_QDoubleSpinBox_delete :: Ptr (TQDoubleSpinBox a) -> IO ()

qDoubleSpinBox_deleteLater :: QDoubleSpinBox a -> IO ()
qDoubleSpinBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_deleteLater cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_deleteLater" qtc_QDoubleSpinBox_deleteLater :: Ptr (TQDoubleSpinBox a) -> IO ()

instance QchangeEvent (QDoubleSpinBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_changeEvent_h" qtc_QDoubleSpinBox_changeEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDoubleSpinBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QDoubleSpinBox ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_clear_h cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_clear_h" qtc_QDoubleSpinBox_clear_h :: Ptr (TQDoubleSpinBox a) -> IO ()

instance Qclear (QDoubleSpinBoxSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_clear_h cobj_x0

instance QcloseEvent (QDoubleSpinBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_closeEvent_h" qtc_QDoubleSpinBox_closeEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDoubleSpinBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDoubleSpinBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_contextMenuEvent_h" qtc_QDoubleSpinBox_contextMenuEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDoubleSpinBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qevent (QDoubleSpinBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_event_h" qtc_QDoubleSpinBox_event_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDoubleSpinBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QDoubleSpinBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_focusInEvent_h" qtc_QDoubleSpinBox_focusInEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDoubleSpinBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QDoubleSpinBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_focusOutEvent_h" qtc_QDoubleSpinBox_focusOutEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDoubleSpinBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QDoubleSpinBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_hideEvent_h" qtc_QDoubleSpinBox_hideEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDoubleSpinBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_hideEvent_h cobj_x0 cobj_x1

instance QinitStyleOption (QDoubleSpinBox ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_initStyleOption" qtc_QDoubleSpinBox_initStyleOption :: Ptr (TQDoubleSpinBox a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QDoubleSpinBoxSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_initStyleOption cobj_x0 cobj_x1

instance QkeyPressEvent (QDoubleSpinBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_keyPressEvent_h" qtc_QDoubleSpinBox_keyPressEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDoubleSpinBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDoubleSpinBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_keyReleaseEvent_h" qtc_QDoubleSpinBox_keyReleaseEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDoubleSpinBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QDoubleSpinBox ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_lineEdit cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_lineEdit" qtc_QDoubleSpinBox_lineEdit :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QDoubleSpinBoxSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_lineEdit cobj_x0

instance QqminimumSizeHint (QDoubleSpinBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_minimumSizeHint_h" qtc_QDoubleSpinBox_minimumSizeHint_h :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDoubleSpinBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDoubleSpinBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDoubleSpinBox_minimumSizeHint_qth_h" qtc_QDoubleSpinBox_minimumSizeHint_qth_h :: Ptr (TQDoubleSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDoubleSpinBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QDoubleSpinBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_mouseMoveEvent_h" qtc_QDoubleSpinBox_mouseMoveEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDoubleSpinBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDoubleSpinBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_mousePressEvent_h" qtc_QDoubleSpinBox_mousePressEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDoubleSpinBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDoubleSpinBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_mouseReleaseEvent_h" qtc_QDoubleSpinBox_mouseReleaseEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDoubleSpinBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QDoubleSpinBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_paintEvent_h" qtc_QDoubleSpinBox_paintEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDoubleSpinBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_paintEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QDoubleSpinBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_resizeEvent_h" qtc_QDoubleSpinBox_resizeEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDoubleSpinBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetLineEdit (QDoubleSpinBox ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_setLineEdit" qtc_QDoubleSpinBox_setLineEdit :: Ptr (TQDoubleSpinBox a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QDoubleSpinBoxSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_setLineEdit cobj_x0 cobj_x1

instance QshowEvent (QDoubleSpinBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_showEvent_h" qtc_QDoubleSpinBox_showEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDoubleSpinBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QDoubleSpinBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_sizeHint_h" qtc_QDoubleSpinBox_sizeHint_h :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDoubleSpinBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sizeHint_h cobj_x0

instance QsizeHint (QDoubleSpinBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDoubleSpinBox_sizeHint_qth_h" qtc_QDoubleSpinBox_sizeHint_qth_h :: Ptr (TQDoubleSpinBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDoubleSpinBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstepBy (QDoubleSpinBox ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDoubleSpinBox_stepBy_h" qtc_QDoubleSpinBox_stepBy_h :: Ptr (TQDoubleSpinBox a) -> CInt -> IO ()

instance QstepBy (QDoubleSpinBoxSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_stepBy_h cobj_x0 (toCInt x1)

instance QstepEnabled (QDoubleSpinBox ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_stepEnabled cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_stepEnabled" qtc_QDoubleSpinBox_stepEnabled :: Ptr (TQDoubleSpinBox a) -> IO CLong

instance QstepEnabled (QDoubleSpinBoxSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_stepEnabled cobj_x0

instance QtimerEvent (QDoubleSpinBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_timerEvent" qtc_QDoubleSpinBox_timerEvent :: Ptr (TQDoubleSpinBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDoubleSpinBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_timerEvent cobj_x0 cobj_x1

instance QwheelEvent (QDoubleSpinBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_wheelEvent_h" qtc_QDoubleSpinBox_wheelEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDoubleSpinBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_wheelEvent_h cobj_x0 cobj_x1

instance QactionEvent (QDoubleSpinBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_actionEvent_h" qtc_QDoubleSpinBox_actionEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDoubleSpinBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDoubleSpinBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_addAction" qtc_QDoubleSpinBox_addAction :: Ptr (TQDoubleSpinBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDoubleSpinBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_addAction cobj_x0 cobj_x1

instance Qcreate (QDoubleSpinBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_create cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_create" qtc_QDoubleSpinBox_create :: Ptr (TQDoubleSpinBox a) -> IO ()

instance Qcreate (QDoubleSpinBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_create cobj_x0

instance Qcreate (QDoubleSpinBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_create1" qtc_QDoubleSpinBox_create1 :: Ptr (TQDoubleSpinBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDoubleSpinBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create1 cobj_x0 cobj_x1

instance Qcreate (QDoubleSpinBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDoubleSpinBox_create2" qtc_QDoubleSpinBox_create2 :: Ptr (TQDoubleSpinBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDoubleSpinBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDoubleSpinBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDoubleSpinBox_create3" qtc_QDoubleSpinBox_create3 :: Ptr (TQDoubleSpinBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDoubleSpinBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDoubleSpinBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_destroy" qtc_QDoubleSpinBox_destroy :: Ptr (TQDoubleSpinBox a) -> IO ()

instance Qdestroy (QDoubleSpinBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy cobj_x0

instance Qdestroy (QDoubleSpinBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_destroy1" qtc_QDoubleSpinBox_destroy1 :: Ptr (TQDoubleSpinBox a) -> CBool -> IO ()

instance Qdestroy (QDoubleSpinBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDoubleSpinBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDoubleSpinBox_destroy2" qtc_QDoubleSpinBox_destroy2 :: Ptr (TQDoubleSpinBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDoubleSpinBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDoubleSpinBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_devType_h cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_devType_h" qtc_QDoubleSpinBox_devType_h :: Ptr (TQDoubleSpinBox a) -> IO CInt

instance QdevType (QDoubleSpinBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_devType_h cobj_x0

instance QdragEnterEvent (QDoubleSpinBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_dragEnterEvent_h" qtc_QDoubleSpinBox_dragEnterEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDoubleSpinBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDoubleSpinBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_dragLeaveEvent_h" qtc_QDoubleSpinBox_dragLeaveEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDoubleSpinBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDoubleSpinBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_dragMoveEvent_h" qtc_QDoubleSpinBox_dragMoveEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDoubleSpinBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDoubleSpinBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_dropEvent_h" qtc_QDoubleSpinBox_dropEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDoubleSpinBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDoubleSpinBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_enabledChange" qtc_QDoubleSpinBox_enabledChange :: Ptr (TQDoubleSpinBox a) -> CBool -> IO ()

instance QenabledChange (QDoubleSpinBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDoubleSpinBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_enterEvent_h" qtc_QDoubleSpinBox_enterEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDoubleSpinBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDoubleSpinBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusNextChild cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_focusNextChild" qtc_QDoubleSpinBox_focusNextChild :: Ptr (TQDoubleSpinBox a) -> IO CBool

instance QfocusNextChild (QDoubleSpinBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDoubleSpinBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_focusNextPrevChild" qtc_QDoubleSpinBox_focusNextPrevChild :: Ptr (TQDoubleSpinBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDoubleSpinBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QDoubleSpinBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_focusPreviousChild" qtc_QDoubleSpinBox_focusPreviousChild :: Ptr (TQDoubleSpinBox a) -> IO CBool

instance QfocusPreviousChild (QDoubleSpinBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_focusPreviousChild cobj_x0

instance QfontChange (QDoubleSpinBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_fontChange" qtc_QDoubleSpinBox_fontChange :: Ptr (TQDoubleSpinBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDoubleSpinBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDoubleSpinBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDoubleSpinBox_heightForWidth_h" qtc_QDoubleSpinBox_heightForWidth_h :: Ptr (TQDoubleSpinBox a) -> CInt -> IO CInt

instance QheightForWidth (QDoubleSpinBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QDoubleSpinBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_inputMethodEvent" qtc_QDoubleSpinBox_inputMethodEvent :: Ptr (TQDoubleSpinBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDoubleSpinBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDoubleSpinBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDoubleSpinBox_inputMethodQuery_h" qtc_QDoubleSpinBox_inputMethodQuery_h :: Ptr (TQDoubleSpinBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDoubleSpinBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QDoubleSpinBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_languageChange cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_languageChange" qtc_QDoubleSpinBox_languageChange :: Ptr (TQDoubleSpinBox a) -> IO ()

instance QlanguageChange (QDoubleSpinBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_languageChange cobj_x0

instance QleaveEvent (QDoubleSpinBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_leaveEvent_h" qtc_QDoubleSpinBox_leaveEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDoubleSpinBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDoubleSpinBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDoubleSpinBox_metric" qtc_QDoubleSpinBox_metric :: Ptr (TQDoubleSpinBox a) -> CLong -> IO CInt

instance Qmetric (QDoubleSpinBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QDoubleSpinBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_mouseDoubleClickEvent_h" qtc_QDoubleSpinBox_mouseDoubleClickEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDoubleSpinBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QDoubleSpinBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDoubleSpinBox_move1" qtc_QDoubleSpinBox_move1 :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QDoubleSpinBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDoubleSpinBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDoubleSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDoubleSpinBox_move_qth" qtc_QDoubleSpinBox_move_qth :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> IO ()

instance Qmove (QDoubleSpinBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDoubleSpinBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDoubleSpinBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_move" qtc_QDoubleSpinBox_move :: Ptr (TQDoubleSpinBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDoubleSpinBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_move cobj_x0 cobj_x1

instance QmoveEvent (QDoubleSpinBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_moveEvent_h" qtc_QDoubleSpinBox_moveEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDoubleSpinBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDoubleSpinBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_paintEngine_h" qtc_QDoubleSpinBox_paintEngine_h :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDoubleSpinBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_paintEngine_h cobj_x0

instance QpaletteChange (QDoubleSpinBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_paletteChange" qtc_QDoubleSpinBox_paletteChange :: Ptr (TQDoubleSpinBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDoubleSpinBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDoubleSpinBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_repaint cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_repaint" qtc_QDoubleSpinBox_repaint :: Ptr (TQDoubleSpinBox a) -> IO ()

instance Qrepaint (QDoubleSpinBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_repaint cobj_x0

instance Qrepaint (QDoubleSpinBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDoubleSpinBox_repaint2" qtc_QDoubleSpinBox_repaint2 :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDoubleSpinBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDoubleSpinBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_repaint1" qtc_QDoubleSpinBox_repaint1 :: Ptr (TQDoubleSpinBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDoubleSpinBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDoubleSpinBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_resetInputContext cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_resetInputContext" qtc_QDoubleSpinBox_resetInputContext :: Ptr (TQDoubleSpinBox a) -> IO ()

instance QresetInputContext (QDoubleSpinBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_resetInputContext cobj_x0

instance Qresize (QDoubleSpinBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDoubleSpinBox_resize1" qtc_QDoubleSpinBox_resize1 :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QDoubleSpinBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDoubleSpinBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_resize" qtc_QDoubleSpinBox_resize :: Ptr (TQDoubleSpinBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDoubleSpinBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_resize cobj_x0 cobj_x1

instance Qresize (QDoubleSpinBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDoubleSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDoubleSpinBox_resize_qth" qtc_QDoubleSpinBox_resize_qth :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> IO ()

instance Qresize (QDoubleSpinBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDoubleSpinBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDoubleSpinBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDoubleSpinBox_setGeometry1" qtc_QDoubleSpinBox_setGeometry1 :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDoubleSpinBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDoubleSpinBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_setGeometry" qtc_QDoubleSpinBox_setGeometry :: Ptr (TQDoubleSpinBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDoubleSpinBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDoubleSpinBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDoubleSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDoubleSpinBox_setGeometry_qth" qtc_QDoubleSpinBox_setGeometry_qth :: Ptr (TQDoubleSpinBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDoubleSpinBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDoubleSpinBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDoubleSpinBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_setMouseTracking" qtc_QDoubleSpinBox_setMouseTracking :: Ptr (TQDoubleSpinBox a) -> CBool -> IO ()

instance QsetMouseTracking (QDoubleSpinBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDoubleSpinBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_setVisible_h" qtc_QDoubleSpinBox_setVisible_h :: Ptr (TQDoubleSpinBox a) -> CBool -> IO ()

instance QsetVisible (QDoubleSpinBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QDoubleSpinBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_tabletEvent_h" qtc_QDoubleSpinBox_tabletEvent_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDoubleSpinBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDoubleSpinBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_updateMicroFocus" qtc_QDoubleSpinBox_updateMicroFocus :: Ptr (TQDoubleSpinBox a) -> IO ()

instance QupdateMicroFocus (QDoubleSpinBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_updateMicroFocus cobj_x0

instance QwindowActivationChange (QDoubleSpinBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDoubleSpinBox_windowActivationChange" qtc_QDoubleSpinBox_windowActivationChange :: Ptr (TQDoubleSpinBox a) -> CBool -> IO ()

instance QwindowActivationChange (QDoubleSpinBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDoubleSpinBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_childEvent" qtc_QDoubleSpinBox_childEvent :: Ptr (TQDoubleSpinBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDoubleSpinBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDoubleSpinBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_connectNotify" qtc_QDoubleSpinBox_connectNotify :: Ptr (TQDoubleSpinBox a) -> CWString -> IO ()

instance QconnectNotify (QDoubleSpinBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDoubleSpinBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDoubleSpinBox_customEvent" qtc_QDoubleSpinBox_customEvent :: Ptr (TQDoubleSpinBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDoubleSpinBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDoubleSpinBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDoubleSpinBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_disconnectNotify" qtc_QDoubleSpinBox_disconnectNotify :: Ptr (TQDoubleSpinBox a) -> CWString -> IO ()

instance QdisconnectNotify (QDoubleSpinBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDoubleSpinBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDoubleSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDoubleSpinBox_eventFilter_h" qtc_QDoubleSpinBox_eventFilter_h :: Ptr (TQDoubleSpinBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDoubleSpinBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDoubleSpinBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDoubleSpinBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDoubleSpinBox_receivers" qtc_QDoubleSpinBox_receivers :: Ptr (TQDoubleSpinBox a) -> CWString -> IO CInt

instance Qreceivers (QDoubleSpinBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDoubleSpinBox_receivers cobj_x0 cstr_x1

instance Qsender (QDoubleSpinBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sender cobj_x0

foreign import ccall "qtc_QDoubleSpinBox_sender" qtc_QDoubleSpinBox_sender :: Ptr (TQDoubleSpinBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QDoubleSpinBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDoubleSpinBox_sender cobj_x0

