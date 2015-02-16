{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRubberBand.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QRubberBand (
  QqRubberBand(..)
  ,qRubberBand_delete
  ,qRubberBand_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QRubberBand

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QRubberBand ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRubberBand_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QRubberBand_userMethod" qtc_QRubberBand_userMethod :: Ptr (TQRubberBand a) -> CInt -> IO ()

instance QuserMethod (QRubberBandSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QRubberBand_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QRubberBand ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRubberBand_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QRubberBand_userMethodVariant" qtc_QRubberBand_userMethodVariant :: Ptr (TQRubberBand a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QRubberBandSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QRubberBand_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqRubberBand x1 where
  qRubberBand :: x1 -> IO (QRubberBand ())

instance QqRubberBand ((QRubberBandShape)) where
 qRubberBand (x1)
  = withQRubberBandResult $
    qtc_QRubberBand (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRubberBand" qtc_QRubberBand :: CLong -> IO (Ptr (TQRubberBand ()))

instance QqRubberBand ((QRubberBandShape, QWidget t2)) where
 qRubberBand (x1, x2)
  = withQRubberBandResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRubberBand1 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QRubberBand1" qtc_QRubberBand1 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQRubberBand ()))

instance QchangeEvent (QRubberBand ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_changeEvent_h" qtc_QRubberBand_changeEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QRubberBandSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_changeEvent_h cobj_x0 cobj_x1

instance Qevent (QRubberBand ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_event_h" qtc_QRubberBand_event_h :: Ptr (TQRubberBand a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QRubberBandSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_event_h cobj_x0 cobj_x1

instance QinitStyleOption (QRubberBand ()) ((QStyleOptionRubberBand t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_initStyleOption" qtc_QRubberBand_initStyleOption :: Ptr (TQRubberBand a) -> Ptr (TQStyleOptionRubberBand t1) -> IO ()

instance QinitStyleOption (QRubberBandSc a) ((QStyleOptionRubberBand t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_initStyleOption cobj_x0 cobj_x1

instance Qmove (QRubberBand ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRubberBand_move1" qtc_QRubberBand_move1 :: Ptr (TQRubberBand a) -> CInt -> CInt -> IO ()

instance Qmove (QRubberBandSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QRubberBand ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRubberBand_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRubberBand_move_qth" qtc_QRubberBand_move_qth :: Ptr (TQRubberBand a) -> CInt -> CInt -> IO ()

instance Qmove (QRubberBandSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRubberBand_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QRubberBand ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_move cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_move" qtc_QRubberBand_move :: Ptr (TQRubberBand a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QRubberBandSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_move cobj_x0 cobj_x1

instance QmoveEvent (QRubberBand ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_moveEvent_h" qtc_QRubberBand_moveEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QRubberBandSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_moveEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QRubberBand ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_paintEvent_h" qtc_QRubberBand_paintEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QRubberBandSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_paintEvent_h cobj_x0 cobj_x1

instance Qresize (QRubberBand ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRubberBand_resize1" qtc_QRubberBand_resize1 :: Ptr (TQRubberBand a) -> CInt -> CInt -> IO ()

instance Qresize (QRubberBandSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QRubberBand ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_resize" qtc_QRubberBand_resize :: Ptr (TQRubberBand a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QRubberBandSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_resize cobj_x0 cobj_x1

instance Qresize (QRubberBand ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QRubberBand_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QRubberBand_resize_qth" qtc_QRubberBand_resize_qth :: Ptr (TQRubberBand a) -> CInt -> CInt -> IO ()

instance Qresize (QRubberBandSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QRubberBand_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QRubberBand ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_resizeEvent_h" qtc_QRubberBand_resizeEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QRubberBandSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QRubberBand ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRubberBand_setGeometry1" qtc_QRubberBand_setGeometry1 :: Ptr (TQRubberBand a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QRubberBandSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QRubberBand ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_setGeometry" qtc_QRubberBand_setGeometry :: Ptr (TQRubberBand a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QRubberBandSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QRubberBand ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRubberBand_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRubberBand_setGeometry_qth" qtc_QRubberBand_setGeometry_qth :: Ptr (TQRubberBand a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QRubberBandSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRubberBand_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance Qshape (QRubberBand a) (()) (IO (QRubberBandShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_shape cobj_x0

foreign import ccall "qtc_QRubberBand_shape" qtc_QRubberBand_shape :: Ptr (TQRubberBand a) -> IO CLong

instance QshowEvent (QRubberBand ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_showEvent_h" qtc_QRubberBand_showEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QRubberBandSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_showEvent_h cobj_x0 cobj_x1

qRubberBand_delete :: QRubberBand a -> IO ()
qRubberBand_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_delete cobj_x0

foreign import ccall "qtc_QRubberBand_delete" qtc_QRubberBand_delete :: Ptr (TQRubberBand a) -> IO ()

qRubberBand_deleteLater :: QRubberBand a -> IO ()
qRubberBand_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_deleteLater cobj_x0

foreign import ccall "qtc_QRubberBand_deleteLater" qtc_QRubberBand_deleteLater :: Ptr (TQRubberBand a) -> IO ()

instance QactionEvent (QRubberBand ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_actionEvent_h" qtc_QRubberBand_actionEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QRubberBandSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QRubberBand ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_addAction" qtc_QRubberBand_addAction :: Ptr (TQRubberBand a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QRubberBandSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_addAction cobj_x0 cobj_x1

instance QcloseEvent (QRubberBand ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_closeEvent_h" qtc_QRubberBand_closeEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QRubberBandSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QRubberBand ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_contextMenuEvent_h" qtc_QRubberBand_contextMenuEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QRubberBandSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QRubberBand ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_create cobj_x0

foreign import ccall "qtc_QRubberBand_create" qtc_QRubberBand_create :: Ptr (TQRubberBand a) -> IO ()

instance Qcreate (QRubberBandSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_create cobj_x0

instance Qcreate (QRubberBand ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_create1" qtc_QRubberBand_create1 :: Ptr (TQRubberBand a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QRubberBandSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create1 cobj_x0 cobj_x1

instance Qcreate (QRubberBand ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QRubberBand_create2" qtc_QRubberBand_create2 :: Ptr (TQRubberBand a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QRubberBandSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QRubberBand ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QRubberBand_create3" qtc_QRubberBand_create3 :: Ptr (TQRubberBand a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QRubberBandSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QRubberBand ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy cobj_x0

foreign import ccall "qtc_QRubberBand_destroy" qtc_QRubberBand_destroy :: Ptr (TQRubberBand a) -> IO ()

instance Qdestroy (QRubberBandSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy cobj_x0

instance Qdestroy (QRubberBand ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_destroy1" qtc_QRubberBand_destroy1 :: Ptr (TQRubberBand a) -> CBool -> IO ()

instance Qdestroy (QRubberBandSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QRubberBand ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QRubberBand_destroy2" qtc_QRubberBand_destroy2 :: Ptr (TQRubberBand a) -> CBool -> CBool -> IO ()

instance Qdestroy (QRubberBandSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QRubberBand ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_devType_h cobj_x0

foreign import ccall "qtc_QRubberBand_devType_h" qtc_QRubberBand_devType_h :: Ptr (TQRubberBand a) -> IO CInt

instance QdevType (QRubberBandSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_devType_h cobj_x0

instance QdragEnterEvent (QRubberBand ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_dragEnterEvent_h" qtc_QRubberBand_dragEnterEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QRubberBandSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QRubberBand ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_dragLeaveEvent_h" qtc_QRubberBand_dragLeaveEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QRubberBandSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QRubberBand ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_dragMoveEvent_h" qtc_QRubberBand_dragMoveEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QRubberBandSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QRubberBand ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_dropEvent_h" qtc_QRubberBand_dropEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QRubberBandSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QRubberBand ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_enabledChange" qtc_QRubberBand_enabledChange :: Ptr (TQRubberBand a) -> CBool -> IO ()

instance QenabledChange (QRubberBandSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QRubberBand ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_enterEvent_h" qtc_QRubberBand_enterEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QRubberBandSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QRubberBand ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_focusInEvent_h" qtc_QRubberBand_focusInEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QRubberBandSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QRubberBand ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusNextChild cobj_x0

foreign import ccall "qtc_QRubberBand_focusNextChild" qtc_QRubberBand_focusNextChild :: Ptr (TQRubberBand a) -> IO CBool

instance QfocusNextChild (QRubberBandSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusNextChild cobj_x0

instance QfocusNextPrevChild (QRubberBand ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_focusNextPrevChild" qtc_QRubberBand_focusNextPrevChild :: Ptr (TQRubberBand a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QRubberBandSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QRubberBand ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_focusOutEvent_h" qtc_QRubberBand_focusOutEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QRubberBandSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QRubberBand ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusPreviousChild cobj_x0

foreign import ccall "qtc_QRubberBand_focusPreviousChild" qtc_QRubberBand_focusPreviousChild :: Ptr (TQRubberBand a) -> IO CBool

instance QfocusPreviousChild (QRubberBandSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_focusPreviousChild cobj_x0

instance QfontChange (QRubberBand ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_fontChange" qtc_QRubberBand_fontChange :: Ptr (TQRubberBand a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QRubberBandSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QRubberBand ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRubberBand_heightForWidth_h" qtc_QRubberBand_heightForWidth_h :: Ptr (TQRubberBand a) -> CInt -> IO CInt

instance QheightForWidth (QRubberBandSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QRubberBand ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_hideEvent_h" qtc_QRubberBand_hideEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QRubberBandSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QRubberBand ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_inputMethodEvent" qtc_QRubberBand_inputMethodEvent :: Ptr (TQRubberBand a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QRubberBandSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QRubberBand ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRubberBand_inputMethodQuery_h" qtc_QRubberBand_inputMethodQuery_h :: Ptr (TQRubberBand a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QRubberBandSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QRubberBand ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_keyPressEvent_h" qtc_QRubberBand_keyPressEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QRubberBandSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QRubberBand ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_keyReleaseEvent_h" qtc_QRubberBand_keyReleaseEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QRubberBandSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QRubberBand ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_languageChange cobj_x0

foreign import ccall "qtc_QRubberBand_languageChange" qtc_QRubberBand_languageChange :: Ptr (TQRubberBand a) -> IO ()

instance QlanguageChange (QRubberBandSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_languageChange cobj_x0

instance QleaveEvent (QRubberBand ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_leaveEvent_h" qtc_QRubberBand_leaveEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QRubberBandSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QRubberBand ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRubberBand_metric" qtc_QRubberBand_metric :: Ptr (TQRubberBand a) -> CLong -> IO CInt

instance Qmetric (QRubberBandSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QRubberBand ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QRubberBand_minimumSizeHint_h" qtc_QRubberBand_minimumSizeHint_h :: Ptr (TQRubberBand a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QRubberBandSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QRubberBand ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QRubberBand_minimumSizeHint_qth_h" qtc_QRubberBand_minimumSizeHint_qth_h :: Ptr (TQRubberBand a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QRubberBandSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QRubberBand ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_mouseDoubleClickEvent_h" qtc_QRubberBand_mouseDoubleClickEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QRubberBandSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QRubberBand ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_mouseMoveEvent_h" qtc_QRubberBand_mouseMoveEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QRubberBandSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QRubberBand ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_mousePressEvent_h" qtc_QRubberBand_mousePressEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QRubberBandSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QRubberBand ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_mouseReleaseEvent_h" qtc_QRubberBand_mouseReleaseEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QRubberBandSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QRubberBand ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_paintEngine_h cobj_x0

foreign import ccall "qtc_QRubberBand_paintEngine_h" qtc_QRubberBand_paintEngine_h :: Ptr (TQRubberBand a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QRubberBandSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_paintEngine_h cobj_x0

instance QpaletteChange (QRubberBand ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_paletteChange" qtc_QRubberBand_paletteChange :: Ptr (TQRubberBand a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QRubberBandSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QRubberBand ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_repaint cobj_x0

foreign import ccall "qtc_QRubberBand_repaint" qtc_QRubberBand_repaint :: Ptr (TQRubberBand a) -> IO ()

instance Qrepaint (QRubberBandSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_repaint cobj_x0

instance Qrepaint (QRubberBand ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRubberBand_repaint2" qtc_QRubberBand_repaint2 :: Ptr (TQRubberBand a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QRubberBandSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QRubberBand ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_repaint1" qtc_QRubberBand_repaint1 :: Ptr (TQRubberBand a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QRubberBandSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QRubberBand ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_resetInputContext cobj_x0

foreign import ccall "qtc_QRubberBand_resetInputContext" qtc_QRubberBand_resetInputContext :: Ptr (TQRubberBand a) -> IO ()

instance QresetInputContext (QRubberBandSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_resetInputContext cobj_x0

instance QsetMouseTracking (QRubberBand ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_setMouseTracking" qtc_QRubberBand_setMouseTracking :: Ptr (TQRubberBand a) -> CBool -> IO ()

instance QsetMouseTracking (QRubberBandSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QRubberBand ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_setVisible_h" qtc_QRubberBand_setVisible_h :: Ptr (TQRubberBand a) -> CBool -> IO ()

instance QsetVisible (QRubberBandSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_setVisible_h cobj_x0 (toCBool x1)

instance QqsizeHint (QRubberBand ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sizeHint_h cobj_x0

foreign import ccall "qtc_QRubberBand_sizeHint_h" qtc_QRubberBand_sizeHint_h :: Ptr (TQRubberBand a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QRubberBandSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sizeHint_h cobj_x0

instance QsizeHint (QRubberBand ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QRubberBand_sizeHint_qth_h" qtc_QRubberBand_sizeHint_qth_h :: Ptr (TQRubberBand a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QRubberBandSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QRubberBand ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_tabletEvent_h" qtc_QRubberBand_tabletEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QRubberBandSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QRubberBand ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_updateMicroFocus cobj_x0

foreign import ccall "qtc_QRubberBand_updateMicroFocus" qtc_QRubberBand_updateMicroFocus :: Ptr (TQRubberBand a) -> IO ()

instance QupdateMicroFocus (QRubberBandSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_updateMicroFocus cobj_x0

instance QwheelEvent (QRubberBand ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_wheelEvent_h" qtc_QRubberBand_wheelEvent_h :: Ptr (TQRubberBand a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QRubberBandSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QRubberBand ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRubberBand_windowActivationChange" qtc_QRubberBand_windowActivationChange :: Ptr (TQRubberBand a) -> CBool -> IO ()

instance QwindowActivationChange (QRubberBandSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QRubberBand ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_childEvent" qtc_QRubberBand_childEvent :: Ptr (TQRubberBand a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QRubberBandSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QRubberBand ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRubberBand_connectNotify" qtc_QRubberBand_connectNotify :: Ptr (TQRubberBand a) -> CWString -> IO ()

instance QconnectNotify (QRubberBandSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QRubberBand ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_customEvent" qtc_QRubberBand_customEvent :: Ptr (TQRubberBand a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QRubberBandSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QRubberBand ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QRubberBand_disconnectNotify" qtc_QRubberBand_disconnectNotify :: Ptr (TQRubberBand a) -> CWString -> IO ()

instance QdisconnectNotify (QRubberBandSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QRubberBand ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRubberBand_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QRubberBand_eventFilter_h" qtc_QRubberBand_eventFilter_h :: Ptr (TQRubberBand a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QRubberBandSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QRubberBand_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QRubberBand ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QRubberBand_receivers" qtc_QRubberBand_receivers :: Ptr (TQRubberBand a) -> CWString -> IO CInt

instance Qreceivers (QRubberBandSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRubberBand_receivers cobj_x0 cstr_x1

instance Qsender (QRubberBand ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sender cobj_x0

foreign import ccall "qtc_QRubberBand_sender" qtc_QRubberBand_sender :: Ptr (TQRubberBand a) -> IO (Ptr (TQObject ()))

instance Qsender (QRubberBandSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRubberBand_sender cobj_x0

instance QtimerEvent (QRubberBand ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QRubberBand_timerEvent" qtc_QRubberBand_timerEvent :: Ptr (TQRubberBand a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QRubberBandSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRubberBand_timerEvent cobj_x0 cobj_x1

