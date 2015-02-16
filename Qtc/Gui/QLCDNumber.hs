{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLCDNumber.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLCDNumber (
  QqLCDNumber(..)
  ,QcheckOverflow(..)
  ,Qdisplay(..)
  ,intValue
  ,numDigits
  ,segmentStyle
  ,setBinMode
  ,setDecMode
  ,setHexMode
  ,setMode
  ,setNumDigits
  ,setOctMode
  ,setSegmentStyle
  ,setSmallDecimalPoint
  ,smallDecimalPoint
  ,qLCDNumber_delete
  ,qLCDNumber_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QLCDNumber
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QLCDNumber ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLCDNumber_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QLCDNumber_userMethod" qtc_QLCDNumber_userMethod :: Ptr (TQLCDNumber a) -> CInt -> IO ()

instance QuserMethod (QLCDNumberSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLCDNumber_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QLCDNumber ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLCDNumber_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QLCDNumber_userMethodVariant" qtc_QLCDNumber_userMethodVariant :: Ptr (TQLCDNumber a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QLCDNumberSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLCDNumber_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqLCDNumber x1 where
  qLCDNumber :: x1 -> IO (QLCDNumber ())

instance QqLCDNumber (()) where
 qLCDNumber ()
  = withQLCDNumberResult $
    qtc_QLCDNumber

foreign import ccall "qtc_QLCDNumber" qtc_QLCDNumber :: IO (Ptr (TQLCDNumber ()))

instance QqLCDNumber ((QWidget t1)) where
 qLCDNumber (x1)
  = withQLCDNumberResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber1 cobj_x1

foreign import ccall "qtc_QLCDNumber1" qtc_QLCDNumber1 :: Ptr (TQWidget t1) -> IO (Ptr (TQLCDNumber ()))

instance QqLCDNumber ((Int)) where
 qLCDNumber (x1)
  = withQLCDNumberResult $
    qtc_QLCDNumber2 (toCUInt x1)

foreign import ccall "qtc_QLCDNumber2" qtc_QLCDNumber2 :: CUInt -> IO (Ptr (TQLCDNumber ()))

instance QqLCDNumber ((Int, QWidget t2)) where
 qLCDNumber (x1, x2)
  = withQLCDNumberResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLCDNumber3 (toCUInt x1) cobj_x2

foreign import ccall "qtc_QLCDNumber3" qtc_QLCDNumber3 :: CUInt -> Ptr (TQWidget t2) -> IO (Ptr (TQLCDNumber ()))

class QcheckOverflow x1 where
 checkOverflow :: QLCDNumber a -> x1 -> IO (Bool)

instance QcheckOverflow ((Double)) where
 checkOverflow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_checkOverflow cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLCDNumber_checkOverflow" qtc_QLCDNumber_checkOverflow :: Ptr (TQLCDNumber a) -> CDouble -> IO CBool

instance QcheckOverflow ((Int)) where
 checkOverflow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_checkOverflow1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLCDNumber_checkOverflow1" qtc_QLCDNumber_checkOverflow1 :: Ptr (TQLCDNumber a) -> CInt -> IO CBool

class Qdisplay x1 where
 display :: QLCDNumber a -> x1 -> IO ()

instance Qdisplay ((Double)) where
 display x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_display1 cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLCDNumber_display1" qtc_QLCDNumber_display1 :: Ptr (TQLCDNumber a) -> CDouble -> IO ()

instance Qdisplay ((Int)) where
 display x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_display2 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLCDNumber_display2" qtc_QLCDNumber_display2 :: Ptr (TQLCDNumber a) -> CInt -> IO ()

instance Qdisplay ((String)) where
 display x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_display cobj_x0 cstr_x1

foreign import ccall "qtc_QLCDNumber_display" qtc_QLCDNumber_display :: Ptr (TQLCDNumber a) -> CWString -> IO ()

instance Qevent (QLCDNumber ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_event_h" qtc_QLCDNumber_event_h :: Ptr (TQLCDNumber a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QLCDNumberSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_event_h cobj_x0 cobj_x1

intValue :: QLCDNumber a -> (()) -> IO (Int)
intValue x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_intValue cobj_x0

foreign import ccall "qtc_QLCDNumber_intValue" qtc_QLCDNumber_intValue :: Ptr (TQLCDNumber a) -> IO CInt

instance Qmode (QLCDNumber a) (()) (IO (QLCDNumberMode)) where
 mode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_mode cobj_x0

foreign import ccall "qtc_QLCDNumber_mode" qtc_QLCDNumber_mode :: Ptr (TQLCDNumber a) -> IO CLong

numDigits :: QLCDNumber a -> (()) -> IO (Int)
numDigits x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_numDigits cobj_x0

foreign import ccall "qtc_QLCDNumber_numDigits" qtc_QLCDNumber_numDigits :: Ptr (TQLCDNumber a) -> IO CInt

instance QpaintEvent (QLCDNumber ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_paintEvent_h" qtc_QLCDNumber_paintEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QLCDNumberSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_paintEvent_h cobj_x0 cobj_x1

segmentStyle :: QLCDNumber a -> (()) -> IO (SegmentStyle)
segmentStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_segmentStyle cobj_x0

foreign import ccall "qtc_QLCDNumber_segmentStyle" qtc_QLCDNumber_segmentStyle :: Ptr (TQLCDNumber a) -> IO CLong

setBinMode :: QLCDNumber a -> (()) -> IO ()
setBinMode x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setBinMode cobj_x0

foreign import ccall "qtc_QLCDNumber_setBinMode" qtc_QLCDNumber_setBinMode :: Ptr (TQLCDNumber a) -> IO ()

setDecMode :: QLCDNumber a -> (()) -> IO ()
setDecMode x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setDecMode cobj_x0

foreign import ccall "qtc_QLCDNumber_setDecMode" qtc_QLCDNumber_setDecMode :: Ptr (TQLCDNumber a) -> IO ()

setHexMode :: QLCDNumber a -> (()) -> IO ()
setHexMode x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setHexMode cobj_x0

foreign import ccall "qtc_QLCDNumber_setHexMode" qtc_QLCDNumber_setHexMode :: Ptr (TQLCDNumber a) -> IO ()

setMode :: QLCDNumber a -> ((QLCDNumberMode)) -> IO ()
setMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLCDNumber_setMode" qtc_QLCDNumber_setMode :: Ptr (TQLCDNumber a) -> CLong -> IO ()

setNumDigits :: QLCDNumber a -> ((Int)) -> IO ()
setNumDigits x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setNumDigits cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLCDNumber_setNumDigits" qtc_QLCDNumber_setNumDigits :: Ptr (TQLCDNumber a) -> CInt -> IO ()

setOctMode :: QLCDNumber a -> (()) -> IO ()
setOctMode x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setOctMode cobj_x0

foreign import ccall "qtc_QLCDNumber_setOctMode" qtc_QLCDNumber_setOctMode :: Ptr (TQLCDNumber a) -> IO ()

setSegmentStyle :: QLCDNumber a -> ((SegmentStyle)) -> IO ()
setSegmentStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setSegmentStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLCDNumber_setSegmentStyle" qtc_QLCDNumber_setSegmentStyle :: Ptr (TQLCDNumber a) -> CLong -> IO ()

setSmallDecimalPoint :: QLCDNumber a -> ((Bool)) -> IO ()
setSmallDecimalPoint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setSmallDecimalPoint cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_setSmallDecimalPoint" qtc_QLCDNumber_setSmallDecimalPoint :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance QqsizeHint (QLCDNumber ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sizeHint_h cobj_x0

foreign import ccall "qtc_QLCDNumber_sizeHint_h" qtc_QLCDNumber_sizeHint_h :: Ptr (TQLCDNumber a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QLCDNumberSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sizeHint_h cobj_x0

instance QsizeHint (QLCDNumber ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLCDNumber_sizeHint_qth_h" qtc_QLCDNumber_sizeHint_qth_h :: Ptr (TQLCDNumber a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QLCDNumberSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

smallDecimalPoint :: QLCDNumber a -> (()) -> IO (Bool)
smallDecimalPoint x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_smallDecimalPoint cobj_x0

foreign import ccall "qtc_QLCDNumber_smallDecimalPoint" qtc_QLCDNumber_smallDecimalPoint :: Ptr (TQLCDNumber a) -> IO CBool

instance Qvalue (QLCDNumber a) (()) (IO (Double)) where
 value x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_value cobj_x0

foreign import ccall "qtc_QLCDNumber_value" qtc_QLCDNumber_value :: Ptr (TQLCDNumber a) -> IO CDouble

qLCDNumber_delete :: QLCDNumber a -> IO ()
qLCDNumber_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_delete cobj_x0

foreign import ccall "qtc_QLCDNumber_delete" qtc_QLCDNumber_delete :: Ptr (TQLCDNumber a) -> IO ()

qLCDNumber_deleteLater :: QLCDNumber a -> IO ()
qLCDNumber_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_deleteLater cobj_x0

foreign import ccall "qtc_QLCDNumber_deleteLater" qtc_QLCDNumber_deleteLater :: Ptr (TQLCDNumber a) -> IO ()

instance QchangeEvent (QLCDNumber ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_changeEvent_h" qtc_QLCDNumber_changeEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QLCDNumberSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QLCDNumber ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_drawFrame" qtc_QLCDNumber_drawFrame :: Ptr (TQLCDNumber a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QLCDNumberSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QLCDNumber ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_actionEvent_h" qtc_QLCDNumber_actionEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QLCDNumberSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QLCDNumber ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_addAction" qtc_QLCDNumber_addAction :: Ptr (TQLCDNumber a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QLCDNumberSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_addAction cobj_x0 cobj_x1

instance QcloseEvent (QLCDNumber ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_closeEvent_h" qtc_QLCDNumber_closeEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QLCDNumberSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QLCDNumber ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_contextMenuEvent_h" qtc_QLCDNumber_contextMenuEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QLCDNumberSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QLCDNumber ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_create cobj_x0

foreign import ccall "qtc_QLCDNumber_create" qtc_QLCDNumber_create :: Ptr (TQLCDNumber a) -> IO ()

instance Qcreate (QLCDNumberSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_create cobj_x0

instance Qcreate (QLCDNumber ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_create1" qtc_QLCDNumber_create1 :: Ptr (TQLCDNumber a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QLCDNumberSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create1 cobj_x0 cobj_x1

instance Qcreate (QLCDNumber ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QLCDNumber_create2" qtc_QLCDNumber_create2 :: Ptr (TQLCDNumber a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QLCDNumberSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QLCDNumber ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QLCDNumber_create3" qtc_QLCDNumber_create3 :: Ptr (TQLCDNumber a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QLCDNumberSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QLCDNumber ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy cobj_x0

foreign import ccall "qtc_QLCDNumber_destroy" qtc_QLCDNumber_destroy :: Ptr (TQLCDNumber a) -> IO ()

instance Qdestroy (QLCDNumberSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy cobj_x0

instance Qdestroy (QLCDNumber ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_destroy1" qtc_QLCDNumber_destroy1 :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance Qdestroy (QLCDNumberSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QLCDNumber ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QLCDNumber_destroy2" qtc_QLCDNumber_destroy2 :: Ptr (TQLCDNumber a) -> CBool -> CBool -> IO ()

instance Qdestroy (QLCDNumberSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QLCDNumber ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_devType_h cobj_x0

foreign import ccall "qtc_QLCDNumber_devType_h" qtc_QLCDNumber_devType_h :: Ptr (TQLCDNumber a) -> IO CInt

instance QdevType (QLCDNumberSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_devType_h cobj_x0

instance QdragEnterEvent (QLCDNumber ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_dragEnterEvent_h" qtc_QLCDNumber_dragEnterEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QLCDNumberSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QLCDNumber ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_dragLeaveEvent_h" qtc_QLCDNumber_dragLeaveEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QLCDNumberSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QLCDNumber ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_dragMoveEvent_h" qtc_QLCDNumber_dragMoveEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QLCDNumberSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QLCDNumber ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_dropEvent_h" qtc_QLCDNumber_dropEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QLCDNumberSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QLCDNumber ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_enabledChange" qtc_QLCDNumber_enabledChange :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance QenabledChange (QLCDNumberSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QLCDNumber ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_enterEvent_h" qtc_QLCDNumber_enterEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QLCDNumberSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QLCDNumber ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_focusInEvent_h" qtc_QLCDNumber_focusInEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QLCDNumberSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QLCDNumber ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusNextChild cobj_x0

foreign import ccall "qtc_QLCDNumber_focusNextChild" qtc_QLCDNumber_focusNextChild :: Ptr (TQLCDNumber a) -> IO CBool

instance QfocusNextChild (QLCDNumberSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusNextChild cobj_x0

instance QfocusNextPrevChild (QLCDNumber ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_focusNextPrevChild" qtc_QLCDNumber_focusNextPrevChild :: Ptr (TQLCDNumber a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QLCDNumberSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QLCDNumber ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_focusOutEvent_h" qtc_QLCDNumber_focusOutEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QLCDNumberSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QLCDNumber ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusPreviousChild cobj_x0

foreign import ccall "qtc_QLCDNumber_focusPreviousChild" qtc_QLCDNumber_focusPreviousChild :: Ptr (TQLCDNumber a) -> IO CBool

instance QfocusPreviousChild (QLCDNumberSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_focusPreviousChild cobj_x0

instance QfontChange (QLCDNumber ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_fontChange" qtc_QLCDNumber_fontChange :: Ptr (TQLCDNumber a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QLCDNumberSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QLCDNumber ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLCDNumber_heightForWidth_h" qtc_QLCDNumber_heightForWidth_h :: Ptr (TQLCDNumber a) -> CInt -> IO CInt

instance QheightForWidth (QLCDNumberSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QLCDNumber ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_hideEvent_h" qtc_QLCDNumber_hideEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QLCDNumberSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QLCDNumber ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_inputMethodEvent" qtc_QLCDNumber_inputMethodEvent :: Ptr (TQLCDNumber a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QLCDNumberSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QLCDNumber ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLCDNumber_inputMethodQuery_h" qtc_QLCDNumber_inputMethodQuery_h :: Ptr (TQLCDNumber a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QLCDNumberSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QLCDNumber ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_keyPressEvent_h" qtc_QLCDNumber_keyPressEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QLCDNumberSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QLCDNumber ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_keyReleaseEvent_h" qtc_QLCDNumber_keyReleaseEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QLCDNumberSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QLCDNumber ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_languageChange cobj_x0

foreign import ccall "qtc_QLCDNumber_languageChange" qtc_QLCDNumber_languageChange :: Ptr (TQLCDNumber a) -> IO ()

instance QlanguageChange (QLCDNumberSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_languageChange cobj_x0

instance QleaveEvent (QLCDNumber ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_leaveEvent_h" qtc_QLCDNumber_leaveEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QLCDNumberSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QLCDNumber ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLCDNumber_metric" qtc_QLCDNumber_metric :: Ptr (TQLCDNumber a) -> CLong -> IO CInt

instance Qmetric (QLCDNumberSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QLCDNumber ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QLCDNumber_minimumSizeHint_h" qtc_QLCDNumber_minimumSizeHint_h :: Ptr (TQLCDNumber a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QLCDNumberSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QLCDNumber ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLCDNumber_minimumSizeHint_qth_h" qtc_QLCDNumber_minimumSizeHint_qth_h :: Ptr (TQLCDNumber a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QLCDNumberSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QLCDNumber ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_mouseDoubleClickEvent_h" qtc_QLCDNumber_mouseDoubleClickEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QLCDNumberSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QLCDNumber ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_mouseMoveEvent_h" qtc_QLCDNumber_mouseMoveEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QLCDNumberSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QLCDNumber ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_mousePressEvent_h" qtc_QLCDNumber_mousePressEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QLCDNumberSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QLCDNumber ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_mouseReleaseEvent_h" qtc_QLCDNumber_mouseReleaseEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QLCDNumberSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QLCDNumber ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLCDNumber_move1" qtc_QLCDNumber_move1 :: Ptr (TQLCDNumber a) -> CInt -> CInt -> IO ()

instance Qmove (QLCDNumberSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QLCDNumber ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLCDNumber_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QLCDNumber_move_qth" qtc_QLCDNumber_move_qth :: Ptr (TQLCDNumber a) -> CInt -> CInt -> IO ()

instance Qmove (QLCDNumberSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLCDNumber_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QLCDNumber ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_move cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_move" qtc_QLCDNumber_move :: Ptr (TQLCDNumber a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QLCDNumberSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_move cobj_x0 cobj_x1

instance QmoveEvent (QLCDNumber ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_moveEvent_h" qtc_QLCDNumber_moveEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QLCDNumberSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QLCDNumber ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_paintEngine_h cobj_x0

foreign import ccall "qtc_QLCDNumber_paintEngine_h" qtc_QLCDNumber_paintEngine_h :: Ptr (TQLCDNumber a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QLCDNumberSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_paintEngine_h cobj_x0

instance QpaletteChange (QLCDNumber ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_paletteChange" qtc_QLCDNumber_paletteChange :: Ptr (TQLCDNumber a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QLCDNumberSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QLCDNumber ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_repaint cobj_x0

foreign import ccall "qtc_QLCDNumber_repaint" qtc_QLCDNumber_repaint :: Ptr (TQLCDNumber a) -> IO ()

instance Qrepaint (QLCDNumberSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_repaint cobj_x0

instance Qrepaint (QLCDNumber ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLCDNumber_repaint2" qtc_QLCDNumber_repaint2 :: Ptr (TQLCDNumber a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QLCDNumberSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QLCDNumber ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_repaint1" qtc_QLCDNumber_repaint1 :: Ptr (TQLCDNumber a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QLCDNumberSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QLCDNumber ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_resetInputContext cobj_x0

foreign import ccall "qtc_QLCDNumber_resetInputContext" qtc_QLCDNumber_resetInputContext :: Ptr (TQLCDNumber a) -> IO ()

instance QresetInputContext (QLCDNumberSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_resetInputContext cobj_x0

instance Qresize (QLCDNumber ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLCDNumber_resize1" qtc_QLCDNumber_resize1 :: Ptr (TQLCDNumber a) -> CInt -> CInt -> IO ()

instance Qresize (QLCDNumberSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QLCDNumber ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_resize" qtc_QLCDNumber_resize :: Ptr (TQLCDNumber a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QLCDNumberSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_resize cobj_x0 cobj_x1

instance Qresize (QLCDNumber ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLCDNumber_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QLCDNumber_resize_qth" qtc_QLCDNumber_resize_qth :: Ptr (TQLCDNumber a) -> CInt -> CInt -> IO ()

instance Qresize (QLCDNumberSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLCDNumber_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QLCDNumber ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_resizeEvent_h" qtc_QLCDNumber_resizeEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QLCDNumberSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QLCDNumber ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLCDNumber_setGeometry1" qtc_QLCDNumber_setGeometry1 :: Ptr (TQLCDNumber a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLCDNumberSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QLCDNumber ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_setGeometry" qtc_QLCDNumber_setGeometry :: Ptr (TQLCDNumber a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QLCDNumberSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QLCDNumber ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLCDNumber_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QLCDNumber_setGeometry_qth" qtc_QLCDNumber_setGeometry_qth :: Ptr (TQLCDNumber a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLCDNumberSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLCDNumber_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QLCDNumber ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_setMouseTracking" qtc_QLCDNumber_setMouseTracking :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance QsetMouseTracking (QLCDNumberSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QLCDNumber ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_setVisible_h" qtc_QLCDNumber_setVisible_h :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance QsetVisible (QLCDNumberSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QLCDNumber ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_showEvent_h" qtc_QLCDNumber_showEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QLCDNumberSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QLCDNumber ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_tabletEvent_h" qtc_QLCDNumber_tabletEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QLCDNumberSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QLCDNumber ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_updateMicroFocus cobj_x0

foreign import ccall "qtc_QLCDNumber_updateMicroFocus" qtc_QLCDNumber_updateMicroFocus :: Ptr (TQLCDNumber a) -> IO ()

instance QupdateMicroFocus (QLCDNumberSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_updateMicroFocus cobj_x0

instance QwheelEvent (QLCDNumber ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_wheelEvent_h" qtc_QLCDNumber_wheelEvent_h :: Ptr (TQLCDNumber a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QLCDNumberSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QLCDNumber ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLCDNumber_windowActivationChange" qtc_QLCDNumber_windowActivationChange :: Ptr (TQLCDNumber a) -> CBool -> IO ()

instance QwindowActivationChange (QLCDNumberSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QLCDNumber ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_childEvent" qtc_QLCDNumber_childEvent :: Ptr (TQLCDNumber a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QLCDNumberSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QLCDNumber ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLCDNumber_connectNotify" qtc_QLCDNumber_connectNotify :: Ptr (TQLCDNumber a) -> CWString -> IO ()

instance QconnectNotify (QLCDNumberSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QLCDNumber ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_customEvent" qtc_QLCDNumber_customEvent :: Ptr (TQLCDNumber a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QLCDNumberSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QLCDNumber ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLCDNumber_disconnectNotify" qtc_QLCDNumber_disconnectNotify :: Ptr (TQLCDNumber a) -> CWString -> IO ()

instance QdisconnectNotify (QLCDNumberSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QLCDNumber ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLCDNumber_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLCDNumber_eventFilter_h" qtc_QLCDNumber_eventFilter_h :: Ptr (TQLCDNumber a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QLCDNumberSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLCDNumber_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QLCDNumber ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QLCDNumber_receivers" qtc_QLCDNumber_receivers :: Ptr (TQLCDNumber a) -> CWString -> IO CInt

instance Qreceivers (QLCDNumberSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLCDNumber_receivers cobj_x0 cstr_x1

instance Qsender (QLCDNumber ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sender cobj_x0

foreign import ccall "qtc_QLCDNumber_sender" qtc_QLCDNumber_sender :: Ptr (TQLCDNumber a) -> IO (Ptr (TQObject ()))

instance Qsender (QLCDNumberSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLCDNumber_sender cobj_x0

instance QtimerEvent (QLCDNumber ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLCDNumber_timerEvent" qtc_QLCDNumber_timerEvent :: Ptr (TQLCDNumber a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QLCDNumberSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLCDNumber_timerEvent cobj_x0 cobj_x1

