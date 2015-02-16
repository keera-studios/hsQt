{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFrame (
  QqFrame(..)
  ,frameShadow
  ,frameShape
  ,frameStyle
  ,frameWidth
  ,qsetFrameRect, setFrameRect
  ,setFrameShadow
  ,setFrameShape
  ,setFrameStyle
  ,qFrame_delete
  ,qFrame_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QFrame

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QFrame ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFrame_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFrame_userMethod" qtc_QFrame_userMethod :: Ptr (TQFrame a) -> CInt -> IO ()

instance QuserMethod (QFrameSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFrame_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFrame ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFrame_userMethodVariant" qtc_QFrame_userMethodVariant :: Ptr (TQFrame a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFrameSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFrame_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFrame x1 where
  qFrame :: x1 -> IO (QFrame ())

instance QqFrame (()) where
 qFrame ()
  = withQFrameResult $
    qtc_QFrame

foreign import ccall "qtc_QFrame" qtc_QFrame :: IO (Ptr (TQFrame ()))

instance QqFrame ((QWidget t1)) where
 qFrame (x1)
  = withQFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame1 cobj_x1

foreign import ccall "qtc_QFrame1" qtc_QFrame1 :: Ptr (TQWidget t1) -> IO (Ptr (TQFrame ()))

instance QqFrame ((QWidget t1, WindowFlags)) where
 qFrame (x1, x2)
  = withQFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QFrame2" qtc_QFrame2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQFrame ()))

instance QchangeEvent (QFrame ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_changeEvent_h" qtc_QFrame_changeEvent_h :: Ptr (TQFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QFrameSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QFrame ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_drawFrame" qtc_QFrame_drawFrame :: Ptr (TQFrame a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QFrameSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_drawFrame cobj_x0 cobj_x1

instance Qevent (QFrame ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_event_h" qtc_QFrame_event_h :: Ptr (TQFrame a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFrameSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_event_h cobj_x0 cobj_x1

instance QqframeRect (QFrame a) (()) where
 qframeRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameRect cobj_x0

foreign import ccall "qtc_QFrame_frameRect" qtc_QFrame_frameRect :: Ptr (TQFrame a) -> IO (Ptr (TQRect ()))

instance QframeRect (QFrame a) (()) where
 frameRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QFrame_frameRect_qth" qtc_QFrame_frameRect_qth :: Ptr (TQFrame a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

frameShadow :: QFrame a -> (()) -> IO (Shadow)
frameShadow x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameShadow cobj_x0

foreign import ccall "qtc_QFrame_frameShadow" qtc_QFrame_frameShadow :: Ptr (TQFrame a) -> IO CLong

frameShape :: QFrame a -> (()) -> IO (QFrameShape)
frameShape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameShape cobj_x0

foreign import ccall "qtc_QFrame_frameShape" qtc_QFrame_frameShape :: Ptr (TQFrame a) -> IO CLong

frameStyle :: QFrame a -> (()) -> IO (Int)
frameStyle x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameStyle cobj_x0

foreign import ccall "qtc_QFrame_frameStyle" qtc_QFrame_frameStyle :: Ptr (TQFrame a) -> IO CInt

frameWidth :: QFrame a -> (()) -> IO (Int)
frameWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_frameWidth cobj_x0

foreign import ccall "qtc_QFrame_frameWidth" qtc_QFrame_frameWidth :: Ptr (TQFrame a) -> IO CInt

instance QlineWidth (QFrame a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_lineWidth cobj_x0

foreign import ccall "qtc_QFrame_lineWidth" qtc_QFrame_lineWidth :: Ptr (TQFrame a) -> IO CInt

instance QmidLineWidth (QFrame a) (()) where
 midLineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_midLineWidth cobj_x0

foreign import ccall "qtc_QFrame_midLineWidth" qtc_QFrame_midLineWidth :: Ptr (TQFrame a) -> IO CInt

instance QpaintEvent (QFrame ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_paintEvent_h" qtc_QFrame_paintEvent_h :: Ptr (TQFrame a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QFrameSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_paintEvent_h cobj_x0 cobj_x1

qsetFrameRect :: QFrame a -> ((QRect t1)) -> IO ()
qsetFrameRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_setFrameRect cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_setFrameRect" qtc_QFrame_setFrameRect :: Ptr (TQFrame a) -> Ptr (TQRect t1) -> IO ()

setFrameRect :: QFrame a -> ((Rect)) -> IO ()
setFrameRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFrame_setFrameRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFrame_setFrameRect_qth" qtc_QFrame_setFrameRect_qth :: Ptr (TQFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

setFrameShadow :: QFrame a -> ((Shadow)) -> IO ()
setFrameShadow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setFrameShadow cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFrame_setFrameShadow" qtc_QFrame_setFrameShadow :: Ptr (TQFrame a) -> CLong -> IO ()

setFrameShape :: QFrame a -> ((QFrameShape)) -> IO ()
setFrameShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setFrameShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFrame_setFrameShape" qtc_QFrame_setFrameShape :: Ptr (TQFrame a) -> CLong -> IO ()

setFrameStyle :: QFrame a -> ((Int)) -> IO ()
setFrameStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setFrameStyle cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFrame_setFrameStyle" qtc_QFrame_setFrameStyle :: Ptr (TQFrame a) -> CInt -> IO ()

instance QsetLineWidth (QFrame a) ((Int)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFrame_setLineWidth" qtc_QFrame_setLineWidth :: Ptr (TQFrame a) -> CInt -> IO ()

instance QsetMidLineWidth (QFrame a) ((Int)) where
 setMidLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setMidLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFrame_setMidLineWidth" qtc_QFrame_setMidLineWidth :: Ptr (TQFrame a) -> CInt -> IO ()

instance QqsizeHint (QFrame ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sizeHint_h cobj_x0

foreign import ccall "qtc_QFrame_sizeHint_h" qtc_QFrame_sizeHint_h :: Ptr (TQFrame a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QFrameSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sizeHint_h cobj_x0

instance QsizeHint (QFrame ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFrame_sizeHint_qth_h" qtc_QFrame_sizeHint_qth_h :: Ptr (TQFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QFrameSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

qFrame_delete :: QFrame a -> IO ()
qFrame_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_delete cobj_x0

foreign import ccall "qtc_QFrame_delete" qtc_QFrame_delete :: Ptr (TQFrame a) -> IO ()

qFrame_deleteLater :: QFrame a -> IO ()
qFrame_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_deleteLater cobj_x0

foreign import ccall "qtc_QFrame_deleteLater" qtc_QFrame_deleteLater :: Ptr (TQFrame a) -> IO ()

instance QactionEvent (QFrame ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_actionEvent_h" qtc_QFrame_actionEvent_h :: Ptr (TQFrame a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QFrameSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QFrame ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_addAction" qtc_QFrame_addAction :: Ptr (TQFrame a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QFrameSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_addAction cobj_x0 cobj_x1

instance QcloseEvent (QFrame ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_closeEvent_h" qtc_QFrame_closeEvent_h :: Ptr (TQFrame a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QFrameSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QFrame ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_contextMenuEvent_h" qtc_QFrame_contextMenuEvent_h :: Ptr (TQFrame a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QFrameSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QFrame ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_create cobj_x0

foreign import ccall "qtc_QFrame_create" qtc_QFrame_create :: Ptr (TQFrame a) -> IO ()

instance Qcreate (QFrameSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_create cobj_x0

instance Qcreate (QFrame ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_create1" qtc_QFrame_create1 :: Ptr (TQFrame a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QFrameSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create1 cobj_x0 cobj_x1

instance Qcreate (QFrame ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QFrame_create2" qtc_QFrame_create2 :: Ptr (TQFrame a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QFrameSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QFrame ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QFrame_create3" qtc_QFrame_create3 :: Ptr (TQFrame a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QFrameSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QFrame ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy cobj_x0

foreign import ccall "qtc_QFrame_destroy" qtc_QFrame_destroy :: Ptr (TQFrame a) -> IO ()

instance Qdestroy (QFrameSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy cobj_x0

instance Qdestroy (QFrame ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_destroy1" qtc_QFrame_destroy1 :: Ptr (TQFrame a) -> CBool -> IO ()

instance Qdestroy (QFrameSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QFrame ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QFrame_destroy2" qtc_QFrame_destroy2 :: Ptr (TQFrame a) -> CBool -> CBool -> IO ()

instance Qdestroy (QFrameSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QFrame ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_devType_h cobj_x0

foreign import ccall "qtc_QFrame_devType_h" qtc_QFrame_devType_h :: Ptr (TQFrame a) -> IO CInt

instance QdevType (QFrameSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_devType_h cobj_x0

instance QdragEnterEvent (QFrame ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_dragEnterEvent_h" qtc_QFrame_dragEnterEvent_h :: Ptr (TQFrame a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QFrameSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QFrame ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_dragLeaveEvent_h" qtc_QFrame_dragLeaveEvent_h :: Ptr (TQFrame a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QFrameSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QFrame ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_dragMoveEvent_h" qtc_QFrame_dragMoveEvent_h :: Ptr (TQFrame a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QFrameSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QFrame ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_dropEvent_h" qtc_QFrame_dropEvent_h :: Ptr (TQFrame a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QFrameSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QFrame ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_enabledChange" qtc_QFrame_enabledChange :: Ptr (TQFrame a) -> CBool -> IO ()

instance QenabledChange (QFrameSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QFrame ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_enterEvent_h" qtc_QFrame_enterEvent_h :: Ptr (TQFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QFrameSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QFrame ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_focusInEvent_h" qtc_QFrame_focusInEvent_h :: Ptr (TQFrame a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QFrameSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QFrame ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusNextChild cobj_x0

foreign import ccall "qtc_QFrame_focusNextChild" qtc_QFrame_focusNextChild :: Ptr (TQFrame a) -> IO CBool

instance QfocusNextChild (QFrameSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusNextChild cobj_x0

instance QfocusNextPrevChild (QFrame ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_focusNextPrevChild" qtc_QFrame_focusNextPrevChild :: Ptr (TQFrame a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QFrameSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QFrame ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_focusOutEvent_h" qtc_QFrame_focusOutEvent_h :: Ptr (TQFrame a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QFrameSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QFrame ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusPreviousChild cobj_x0

foreign import ccall "qtc_QFrame_focusPreviousChild" qtc_QFrame_focusPreviousChild :: Ptr (TQFrame a) -> IO CBool

instance QfocusPreviousChild (QFrameSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_focusPreviousChild cobj_x0

instance QfontChange (QFrame ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_fontChange" qtc_QFrame_fontChange :: Ptr (TQFrame a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QFrameSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QFrame ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFrame_heightForWidth_h" qtc_QFrame_heightForWidth_h :: Ptr (TQFrame a) -> CInt -> IO CInt

instance QheightForWidth (QFrameSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QFrame ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_hideEvent_h" qtc_QFrame_hideEvent_h :: Ptr (TQFrame a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QFrameSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QFrame ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_inputMethodEvent" qtc_QFrame_inputMethodEvent :: Ptr (TQFrame a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QFrameSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QFrame ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFrame_inputMethodQuery_h" qtc_QFrame_inputMethodQuery_h :: Ptr (TQFrame a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QFrameSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QFrame ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_keyPressEvent_h" qtc_QFrame_keyPressEvent_h :: Ptr (TQFrame a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QFrameSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QFrame ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_keyReleaseEvent_h" qtc_QFrame_keyReleaseEvent_h :: Ptr (TQFrame a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QFrameSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QFrame ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_languageChange cobj_x0

foreign import ccall "qtc_QFrame_languageChange" qtc_QFrame_languageChange :: Ptr (TQFrame a) -> IO ()

instance QlanguageChange (QFrameSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_languageChange cobj_x0

instance QleaveEvent (QFrame ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_leaveEvent_h" qtc_QFrame_leaveEvent_h :: Ptr (TQFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QFrameSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QFrame ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFrame_metric" qtc_QFrame_metric :: Ptr (TQFrame a) -> CLong -> IO CInt

instance Qmetric (QFrameSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QFrame ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QFrame_minimumSizeHint_h" qtc_QFrame_minimumSizeHint_h :: Ptr (TQFrame a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QFrameSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QFrame ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFrame_minimumSizeHint_qth_h" qtc_QFrame_minimumSizeHint_qth_h :: Ptr (TQFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QFrameSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QFrame ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_mouseDoubleClickEvent_h" qtc_QFrame_mouseDoubleClickEvent_h :: Ptr (TQFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QFrameSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QFrame ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_mouseMoveEvent_h" qtc_QFrame_mouseMoveEvent_h :: Ptr (TQFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QFrameSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QFrame ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_mousePressEvent_h" qtc_QFrame_mousePressEvent_h :: Ptr (TQFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QFrameSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QFrame ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_mouseReleaseEvent_h" qtc_QFrame_mouseReleaseEvent_h :: Ptr (TQFrame a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QFrameSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QFrame ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFrame_move1" qtc_QFrame_move1 :: Ptr (TQFrame a) -> CInt -> CInt -> IO ()

instance Qmove (QFrameSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QFrame ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFrame_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QFrame_move_qth" qtc_QFrame_move_qth :: Ptr (TQFrame a) -> CInt -> CInt -> IO ()

instance Qmove (QFrameSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFrame_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QFrame ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_move cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_move" qtc_QFrame_move :: Ptr (TQFrame a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QFrameSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_move cobj_x0 cobj_x1

instance QmoveEvent (QFrame ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_moveEvent_h" qtc_QFrame_moveEvent_h :: Ptr (TQFrame a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QFrameSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QFrame ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_paintEngine_h cobj_x0

foreign import ccall "qtc_QFrame_paintEngine_h" qtc_QFrame_paintEngine_h :: Ptr (TQFrame a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QFrameSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_paintEngine_h cobj_x0

instance QpaletteChange (QFrame ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_paletteChange" qtc_QFrame_paletteChange :: Ptr (TQFrame a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QFrameSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QFrame ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_repaint cobj_x0

foreign import ccall "qtc_QFrame_repaint" qtc_QFrame_repaint :: Ptr (TQFrame a) -> IO ()

instance Qrepaint (QFrameSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_repaint cobj_x0

instance Qrepaint (QFrame ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFrame_repaint2" qtc_QFrame_repaint2 :: Ptr (TQFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QFrameSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QFrame ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_repaint1" qtc_QFrame_repaint1 :: Ptr (TQFrame a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QFrameSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QFrame ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_resetInputContext cobj_x0

foreign import ccall "qtc_QFrame_resetInputContext" qtc_QFrame_resetInputContext :: Ptr (TQFrame a) -> IO ()

instance QresetInputContext (QFrameSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_resetInputContext cobj_x0

instance Qresize (QFrame ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFrame_resize1" qtc_QFrame_resize1 :: Ptr (TQFrame a) -> CInt -> CInt -> IO ()

instance Qresize (QFrameSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QFrame ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_resize" qtc_QFrame_resize :: Ptr (TQFrame a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QFrameSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_resize cobj_x0 cobj_x1

instance Qresize (QFrame ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFrame_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QFrame_resize_qth" qtc_QFrame_resize_qth :: Ptr (TQFrame a) -> CInt -> CInt -> IO ()

instance Qresize (QFrameSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFrame_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QFrame ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_resizeEvent_h" qtc_QFrame_resizeEvent_h :: Ptr (TQFrame a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QFrameSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QFrame ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFrame_setGeometry1" qtc_QFrame_setGeometry1 :: Ptr (TQFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFrameSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QFrame ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_setGeometry" qtc_QFrame_setGeometry :: Ptr (TQFrame a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QFrameSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QFrame ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFrame_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFrame_setGeometry_qth" qtc_QFrame_setGeometry_qth :: Ptr (TQFrame a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFrameSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFrame_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QFrame ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_setMouseTracking" qtc_QFrame_setMouseTracking :: Ptr (TQFrame a) -> CBool -> IO ()

instance QsetMouseTracking (QFrameSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QFrame ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_setVisible_h" qtc_QFrame_setVisible_h :: Ptr (TQFrame a) -> CBool -> IO ()

instance QsetVisible (QFrameSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QFrame ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_showEvent_h" qtc_QFrame_showEvent_h :: Ptr (TQFrame a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QFrameSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QFrame ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_tabletEvent_h" qtc_QFrame_tabletEvent_h :: Ptr (TQFrame a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QFrameSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QFrame ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_updateMicroFocus cobj_x0

foreign import ccall "qtc_QFrame_updateMicroFocus" qtc_QFrame_updateMicroFocus :: Ptr (TQFrame a) -> IO ()

instance QupdateMicroFocus (QFrameSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_updateMicroFocus cobj_x0

instance QwheelEvent (QFrame ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_wheelEvent_h" qtc_QFrame_wheelEvent_h :: Ptr (TQFrame a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QFrameSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QFrame ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFrame_windowActivationChange" qtc_QFrame_windowActivationChange :: Ptr (TQFrame a) -> CBool -> IO ()

instance QwindowActivationChange (QFrameSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QFrame ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_childEvent" qtc_QFrame_childEvent :: Ptr (TQFrame a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFrameSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFrame ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFrame_connectNotify" qtc_QFrame_connectNotify :: Ptr (TQFrame a) -> CWString -> IO ()

instance QconnectNotify (QFrameSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFrame ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_customEvent" qtc_QFrame_customEvent :: Ptr (TQFrame a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFrameSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFrame ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFrame_disconnectNotify" qtc_QFrame_disconnectNotify :: Ptr (TQFrame a) -> CWString -> IO ()

instance QdisconnectNotify (QFrameSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QFrame ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFrame_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFrame_eventFilter_h" qtc_QFrame_eventFilter_h :: Ptr (TQFrame a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFrameSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFrame_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QFrame ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFrame_receivers" qtc_QFrame_receivers :: Ptr (TQFrame a) -> CWString -> IO CInt

instance Qreceivers (QFrameSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFrame_receivers cobj_x0 cstr_x1

instance Qsender (QFrame ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sender cobj_x0

foreign import ccall "qtc_QFrame_sender" qtc_QFrame_sender :: Ptr (TQFrame a) -> IO (Ptr (TQObject ()))

instance Qsender (QFrameSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFrame_sender cobj_x0

instance QtimerEvent (QFrame ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFrame_timerEvent" qtc_QFrame_timerEvent :: Ptr (TQFrame a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFrameSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFrame_timerEvent cobj_x0 cobj_x1

