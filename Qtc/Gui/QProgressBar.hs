{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QProgressBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QProgressBar (
  QqProgressBar(..)
  ,isTextVisible
  ,qProgressBar_delete
  ,qProgressBar_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QProgressBar

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QProgressBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QProgressBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QProgressBar_userMethod" qtc_QProgressBar_userMethod :: Ptr (TQProgressBar a) -> CInt -> IO ()

instance QuserMethod (QProgressBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QProgressBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QProgressBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QProgressBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QProgressBar_userMethodVariant" qtc_QProgressBar_userMethodVariant :: Ptr (TQProgressBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QProgressBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QProgressBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqProgressBar x1 where
  qProgressBar :: x1 -> IO (QProgressBar ())

instance QqProgressBar (()) where
 qProgressBar ()
  = withQProgressBarResult $
    qtc_QProgressBar

foreign import ccall "qtc_QProgressBar" qtc_QProgressBar :: IO (Ptr (TQProgressBar ()))

instance QqProgressBar ((QWidget t1)) where
 qProgressBar (x1)
  = withQProgressBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar1 cobj_x1

foreign import ccall "qtc_QProgressBar1" qtc_QProgressBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQProgressBar ()))

instance Qalignment (QProgressBar a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_alignment cobj_x0

foreign import ccall "qtc_QProgressBar_alignment" qtc_QProgressBar_alignment :: Ptr (TQProgressBar a) -> IO CLong

instance Qevent (QProgressBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_event_h" qtc_QProgressBar_event_h :: Ptr (TQProgressBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QProgressBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_event_h cobj_x0 cobj_x1

instance Qformat (QProgressBar a) (()) (IO (String)) where
 format x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_format cobj_x0

foreign import ccall "qtc_QProgressBar_format" qtc_QProgressBar_format :: Ptr (TQProgressBar a) -> IO (Ptr (TQString ()))

instance QinitStyleOption (QProgressBar ()) ((QStyleOptionProgressBar t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_initStyleOption" qtc_QProgressBar_initStyleOption :: Ptr (TQProgressBar a) -> Ptr (TQStyleOptionProgressBar t1) -> IO ()

instance QinitStyleOption (QProgressBarSc a) ((QStyleOptionProgressBar t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_initStyleOption cobj_x0 cobj_x1

instance QinvertedAppearance (QProgressBar a) (()) where
 invertedAppearance x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_invertedAppearance cobj_x0

foreign import ccall "qtc_QProgressBar_invertedAppearance" qtc_QProgressBar_invertedAppearance :: Ptr (TQProgressBar a) -> IO CBool

isTextVisible :: QProgressBar a -> (()) -> IO (Bool)
isTextVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_isTextVisible cobj_x0

foreign import ccall "qtc_QProgressBar_isTextVisible" qtc_QProgressBar_isTextVisible :: Ptr (TQProgressBar a) -> IO CBool

instance Qqmaximum (QProgressBar a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_maximum cobj_x0

foreign import ccall "qtc_QProgressBar_maximum" qtc_QProgressBar_maximum :: Ptr (TQProgressBar a) -> IO CInt

instance Qqminimum (QProgressBar a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_minimum cobj_x0

foreign import ccall "qtc_QProgressBar_minimum" qtc_QProgressBar_minimum :: Ptr (TQProgressBar a) -> IO CInt

instance QqminimumSizeHint (QProgressBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QProgressBar_minimumSizeHint_h" qtc_QProgressBar_minimumSizeHint_h :: Ptr (TQProgressBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QProgressBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QProgressBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QProgressBar_minimumSizeHint_qth_h" qtc_QProgressBar_minimumSizeHint_qth_h :: Ptr (TQProgressBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QProgressBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qorientation (QProgressBar a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_orientation cobj_x0

foreign import ccall "qtc_QProgressBar_orientation" qtc_QProgressBar_orientation :: Ptr (TQProgressBar a) -> IO CLong

instance QpaintEvent (QProgressBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_paintEvent_h" qtc_QProgressBar_paintEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QProgressBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_paintEvent_h cobj_x0 cobj_x1

instance Qreset (QProgressBar a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_reset cobj_x0

foreign import ccall "qtc_QProgressBar_reset" qtc_QProgressBar_reset :: Ptr (TQProgressBar a) -> IO ()

instance QsetAlignment (QProgressBar a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QProgressBar_setAlignment" qtc_QProgressBar_setAlignment :: Ptr (TQProgressBar a) -> CLong -> IO ()

instance QsetFormat (QProgressBar a) ((String)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_setFormat cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressBar_setFormat" qtc_QProgressBar_setFormat :: Ptr (TQProgressBar a) -> CWString -> IO ()

instance QsetInvertedAppearance (QProgressBar a) ((Bool)) where
 setInvertedAppearance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setInvertedAppearance cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_setInvertedAppearance" qtc_QProgressBar_setInvertedAppearance :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QsetMaximum (QProgressBar a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressBar_setMaximum" qtc_QProgressBar_setMaximum :: Ptr (TQProgressBar a) -> CInt -> IO ()

instance QsetMinimum (QProgressBar a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressBar_setMinimum" qtc_QProgressBar_setMinimum :: Ptr (TQProgressBar a) -> CInt -> IO ()

instance QsetOrientation (QProgressBar a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressBar_setOrientation" qtc_QProgressBar_setOrientation :: Ptr (TQProgressBar a) -> CLong -> IO ()

instance QsetRange (QProgressBar a) ((Int, Int)) where
 setRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setRange cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressBar_setRange" qtc_QProgressBar_setRange :: Ptr (TQProgressBar a) -> CInt -> CInt -> IO ()

instance QsetTextDirection (QProgressBar a) ((QProgressBarDirection)) where
 setTextDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setTextDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressBar_setTextDirection" qtc_QProgressBar_setTextDirection :: Ptr (TQProgressBar a) -> CLong -> IO ()

instance QsetTextVisible (QProgressBar a) ((Bool)) where
 setTextVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setTextVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_setTextVisible" qtc_QProgressBar_setTextVisible :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QsetValue (QProgressBar a) ((Int)) where
 setValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setValue cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressBar_setValue" qtc_QProgressBar_setValue :: Ptr (TQProgressBar a) -> CInt -> IO ()

instance QqsizeHint (QProgressBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QProgressBar_sizeHint_h" qtc_QProgressBar_sizeHint_h :: Ptr (TQProgressBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QProgressBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sizeHint_h cobj_x0

instance QsizeHint (QProgressBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QProgressBar_sizeHint_qth_h" qtc_QProgressBar_sizeHint_qth_h :: Ptr (TQProgressBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QProgressBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qtext (QProgressBar ()) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_text_h cobj_x0

foreign import ccall "qtc_QProgressBar_text_h" qtc_QProgressBar_text_h :: Ptr (TQProgressBar a) -> IO (Ptr (TQString ()))

instance Qtext (QProgressBarSc a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_text_h cobj_x0

instance QtextDirection (QProgressBar a) (()) (IO (QProgressBarDirection)) where
 textDirection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_textDirection cobj_x0

foreign import ccall "qtc_QProgressBar_textDirection" qtc_QProgressBar_textDirection :: Ptr (TQProgressBar a) -> IO CLong

instance Qvalue (QProgressBar a) (()) (IO (Int)) where
 value x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_value cobj_x0

foreign import ccall "qtc_QProgressBar_value" qtc_QProgressBar_value :: Ptr (TQProgressBar a) -> IO CInt

qProgressBar_delete :: QProgressBar a -> IO ()
qProgressBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_delete cobj_x0

foreign import ccall "qtc_QProgressBar_delete" qtc_QProgressBar_delete :: Ptr (TQProgressBar a) -> IO ()

qProgressBar_deleteLater :: QProgressBar a -> IO ()
qProgressBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_deleteLater cobj_x0

foreign import ccall "qtc_QProgressBar_deleteLater" qtc_QProgressBar_deleteLater :: Ptr (TQProgressBar a) -> IO ()

instance QactionEvent (QProgressBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_actionEvent_h" qtc_QProgressBar_actionEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QProgressBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QProgressBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_addAction" qtc_QProgressBar_addAction :: Ptr (TQProgressBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QProgressBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_addAction cobj_x0 cobj_x1

instance QchangeEvent (QProgressBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_changeEvent_h" qtc_QProgressBar_changeEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QProgressBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QProgressBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_closeEvent_h" qtc_QProgressBar_closeEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QProgressBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QProgressBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_contextMenuEvent_h" qtc_QProgressBar_contextMenuEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QProgressBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QProgressBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_create cobj_x0

foreign import ccall "qtc_QProgressBar_create" qtc_QProgressBar_create :: Ptr (TQProgressBar a) -> IO ()

instance Qcreate (QProgressBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_create cobj_x0

instance Qcreate (QProgressBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_create1" qtc_QProgressBar_create1 :: Ptr (TQProgressBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QProgressBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create1 cobj_x0 cobj_x1

instance Qcreate (QProgressBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QProgressBar_create2" qtc_QProgressBar_create2 :: Ptr (TQProgressBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QProgressBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QProgressBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QProgressBar_create3" qtc_QProgressBar_create3 :: Ptr (TQProgressBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QProgressBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QProgressBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy cobj_x0

foreign import ccall "qtc_QProgressBar_destroy" qtc_QProgressBar_destroy :: Ptr (TQProgressBar a) -> IO ()

instance Qdestroy (QProgressBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy cobj_x0

instance Qdestroy (QProgressBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_destroy1" qtc_QProgressBar_destroy1 :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance Qdestroy (QProgressBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QProgressBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QProgressBar_destroy2" qtc_QProgressBar_destroy2 :: Ptr (TQProgressBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QProgressBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QProgressBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_devType_h cobj_x0

foreign import ccall "qtc_QProgressBar_devType_h" qtc_QProgressBar_devType_h :: Ptr (TQProgressBar a) -> IO CInt

instance QdevType (QProgressBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_devType_h cobj_x0

instance QdragEnterEvent (QProgressBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_dragEnterEvent_h" qtc_QProgressBar_dragEnterEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QProgressBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QProgressBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_dragLeaveEvent_h" qtc_QProgressBar_dragLeaveEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QProgressBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QProgressBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_dragMoveEvent_h" qtc_QProgressBar_dragMoveEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QProgressBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QProgressBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_dropEvent_h" qtc_QProgressBar_dropEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QProgressBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QProgressBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_enabledChange" qtc_QProgressBar_enabledChange :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QenabledChange (QProgressBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QProgressBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_enterEvent_h" qtc_QProgressBar_enterEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QProgressBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QProgressBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_focusInEvent_h" qtc_QProgressBar_focusInEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QProgressBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QProgressBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusNextChild cobj_x0

foreign import ccall "qtc_QProgressBar_focusNextChild" qtc_QProgressBar_focusNextChild :: Ptr (TQProgressBar a) -> IO CBool

instance QfocusNextChild (QProgressBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QProgressBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_focusNextPrevChild" qtc_QProgressBar_focusNextPrevChild :: Ptr (TQProgressBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QProgressBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QProgressBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_focusOutEvent_h" qtc_QProgressBar_focusOutEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QProgressBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QProgressBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QProgressBar_focusPreviousChild" qtc_QProgressBar_focusPreviousChild :: Ptr (TQProgressBar a) -> IO CBool

instance QfocusPreviousChild (QProgressBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_focusPreviousChild cobj_x0

instance QfontChange (QProgressBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_fontChange" qtc_QProgressBar_fontChange :: Ptr (TQProgressBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QProgressBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QProgressBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QProgressBar_heightForWidth_h" qtc_QProgressBar_heightForWidth_h :: Ptr (TQProgressBar a) -> CInt -> IO CInt

instance QheightForWidth (QProgressBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QProgressBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_hideEvent_h" qtc_QProgressBar_hideEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QProgressBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QProgressBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_inputMethodEvent" qtc_QProgressBar_inputMethodEvent :: Ptr (TQProgressBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QProgressBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QProgressBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressBar_inputMethodQuery_h" qtc_QProgressBar_inputMethodQuery_h :: Ptr (TQProgressBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QProgressBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QProgressBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_keyPressEvent_h" qtc_QProgressBar_keyPressEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QProgressBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QProgressBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_keyReleaseEvent_h" qtc_QProgressBar_keyReleaseEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QProgressBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QProgressBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_languageChange cobj_x0

foreign import ccall "qtc_QProgressBar_languageChange" qtc_QProgressBar_languageChange :: Ptr (TQProgressBar a) -> IO ()

instance QlanguageChange (QProgressBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_languageChange cobj_x0

instance QleaveEvent (QProgressBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_leaveEvent_h" qtc_QProgressBar_leaveEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QProgressBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QProgressBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QProgressBar_metric" qtc_QProgressBar_metric :: Ptr (TQProgressBar a) -> CLong -> IO CInt

instance Qmetric (QProgressBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QProgressBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_mouseDoubleClickEvent_h" qtc_QProgressBar_mouseDoubleClickEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QProgressBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QProgressBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_mouseMoveEvent_h" qtc_QProgressBar_mouseMoveEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QProgressBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QProgressBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_mousePressEvent_h" qtc_QProgressBar_mousePressEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QProgressBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QProgressBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_mouseReleaseEvent_h" qtc_QProgressBar_mouseReleaseEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QProgressBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QProgressBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressBar_move1" qtc_QProgressBar_move1 :: Ptr (TQProgressBar a) -> CInt -> CInt -> IO ()

instance Qmove (QProgressBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QProgressBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QProgressBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QProgressBar_move_qth" qtc_QProgressBar_move_qth :: Ptr (TQProgressBar a) -> CInt -> CInt -> IO ()

instance Qmove (QProgressBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QProgressBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QProgressBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_move" qtc_QProgressBar_move :: Ptr (TQProgressBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QProgressBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_move cobj_x0 cobj_x1

instance QmoveEvent (QProgressBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_moveEvent_h" qtc_QProgressBar_moveEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QProgressBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QProgressBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QProgressBar_paintEngine_h" qtc_QProgressBar_paintEngine_h :: Ptr (TQProgressBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QProgressBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_paintEngine_h cobj_x0

instance QpaletteChange (QProgressBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_paletteChange" qtc_QProgressBar_paletteChange :: Ptr (TQProgressBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QProgressBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QProgressBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_repaint cobj_x0

foreign import ccall "qtc_QProgressBar_repaint" qtc_QProgressBar_repaint :: Ptr (TQProgressBar a) -> IO ()

instance Qrepaint (QProgressBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_repaint cobj_x0

instance Qrepaint (QProgressBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QProgressBar_repaint2" qtc_QProgressBar_repaint2 :: Ptr (TQProgressBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QProgressBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QProgressBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_repaint1" qtc_QProgressBar_repaint1 :: Ptr (TQProgressBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QProgressBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QProgressBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_resetInputContext cobj_x0

foreign import ccall "qtc_QProgressBar_resetInputContext" qtc_QProgressBar_resetInputContext :: Ptr (TQProgressBar a) -> IO ()

instance QresetInputContext (QProgressBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_resetInputContext cobj_x0

instance Qresize (QProgressBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QProgressBar_resize1" qtc_QProgressBar_resize1 :: Ptr (TQProgressBar a) -> CInt -> CInt -> IO ()

instance Qresize (QProgressBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QProgressBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_resize" qtc_QProgressBar_resize :: Ptr (TQProgressBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QProgressBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_resize cobj_x0 cobj_x1

instance Qresize (QProgressBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QProgressBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QProgressBar_resize_qth" qtc_QProgressBar_resize_qth :: Ptr (TQProgressBar a) -> CInt -> CInt -> IO ()

instance Qresize (QProgressBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QProgressBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QProgressBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_resizeEvent_h" qtc_QProgressBar_resizeEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QProgressBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QProgressBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QProgressBar_setGeometry1" qtc_QProgressBar_setGeometry1 :: Ptr (TQProgressBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QProgressBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QProgressBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_setGeometry" qtc_QProgressBar_setGeometry :: Ptr (TQProgressBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QProgressBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QProgressBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QProgressBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QProgressBar_setGeometry_qth" qtc_QProgressBar_setGeometry_qth :: Ptr (TQProgressBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QProgressBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QProgressBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QProgressBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_setMouseTracking" qtc_QProgressBar_setMouseTracking :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QsetMouseTracking (QProgressBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QProgressBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_setVisible_h" qtc_QProgressBar_setVisible_h :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QsetVisible (QProgressBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QProgressBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_showEvent_h" qtc_QProgressBar_showEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QProgressBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QProgressBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_tabletEvent_h" qtc_QProgressBar_tabletEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QProgressBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QProgressBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QProgressBar_updateMicroFocus" qtc_QProgressBar_updateMicroFocus :: Ptr (TQProgressBar a) -> IO ()

instance QupdateMicroFocus (QProgressBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_updateMicroFocus cobj_x0

instance QwheelEvent (QProgressBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_wheelEvent_h" qtc_QProgressBar_wheelEvent_h :: Ptr (TQProgressBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QProgressBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QProgressBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QProgressBar_windowActivationChange" qtc_QProgressBar_windowActivationChange :: Ptr (TQProgressBar a) -> CBool -> IO ()

instance QwindowActivationChange (QProgressBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QProgressBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_childEvent" qtc_QProgressBar_childEvent :: Ptr (TQProgressBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QProgressBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QProgressBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressBar_connectNotify" qtc_QProgressBar_connectNotify :: Ptr (TQProgressBar a) -> CWString -> IO ()

instance QconnectNotify (QProgressBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QProgressBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_customEvent" qtc_QProgressBar_customEvent :: Ptr (TQProgressBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QProgressBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QProgressBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressBar_disconnectNotify" qtc_QProgressBar_disconnectNotify :: Ptr (TQProgressBar a) -> CWString -> IO ()

instance QdisconnectNotify (QProgressBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QProgressBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QProgressBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QProgressBar_eventFilter_h" qtc_QProgressBar_eventFilter_h :: Ptr (TQProgressBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QProgressBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QProgressBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QProgressBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QProgressBar_receivers" qtc_QProgressBar_receivers :: Ptr (TQProgressBar a) -> CWString -> IO CInt

instance Qreceivers (QProgressBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QProgressBar_receivers cobj_x0 cstr_x1

instance Qsender (QProgressBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sender cobj_x0

foreign import ccall "qtc_QProgressBar_sender" qtc_QProgressBar_sender :: Ptr (TQProgressBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QProgressBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QProgressBar_sender cobj_x0

instance QtimerEvent (QProgressBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QProgressBar_timerEvent" qtc_QProgressBar_timerEvent :: Ptr (TQProgressBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QProgressBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QProgressBar_timerEvent cobj_x0 cobj_x1

