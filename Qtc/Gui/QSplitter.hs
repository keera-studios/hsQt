{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSplitter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSplitter (
  QqSplitter(..)
  ,childrenCollapsible
  ,QclosestLegalPosition(..)
  ,QcreateHandle(..)
  ,handleWidth
  ,isCollapsible
  ,QmoveSplitter(..)
  ,opaqueResize
  ,setChildrenCollapsible
  ,setCollapsible
  ,setHandleWidth
  ,QsetOpaqueResize(..)
  ,QsetRubberBand(..)
  ,sizes
  ,qSplitter_delete
  ,qSplitter_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QSplitter ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSplitter_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSplitter_userMethod" qtc_QSplitter_userMethod :: Ptr (TQSplitter a) -> CInt -> IO ()

instance QuserMethod (QSplitterSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSplitter_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSplitter ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSplitter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSplitter_userMethodVariant" qtc_QSplitter_userMethodVariant :: Ptr (TQSplitter a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSplitterSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSplitter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSplitter x1 where
  qSplitter :: x1 -> IO (QSplitter ())

instance QqSplitter (()) where
 qSplitter ()
  = withQSplitterResult $
    qtc_QSplitter

foreign import ccall "qtc_QSplitter" qtc_QSplitter :: IO (Ptr (TQSplitter ()))

instance QqSplitter ((QWidget t1)) where
 qSplitter (x1)
  = withQSplitterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter1 cobj_x1

foreign import ccall "qtc_QSplitter1" qtc_QSplitter1 :: Ptr (TQWidget t1) -> IO (Ptr (TQSplitter ()))

instance QqSplitter ((QtOrientation)) where
 qSplitter (x1)
  = withQSplitterResult $
    qtc_QSplitter2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplitter2" qtc_QSplitter2 :: CLong -> IO (Ptr (TQSplitter ()))

instance QqSplitter ((QtOrientation, QWidget t2)) where
 qSplitter (x1, x2)
  = withQSplitterResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplitter3 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QSplitter3" qtc_QSplitter3 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQSplitter ()))

instance QaddWidget (QSplitter ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_addWidget" qtc_QSplitter_addWidget :: Ptr (TQSplitter a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QSplitterSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_addWidget cobj_x0 cobj_x1

instance QchangeEvent (QSplitter ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_changeEvent_h" qtc_QSplitter_changeEvent_h :: Ptr (TQSplitter a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QSplitterSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_changeEvent_h cobj_x0 cobj_x1

instance QchildEvent (QSplitter ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_childEvent" qtc_QSplitter_childEvent :: Ptr (TQSplitter a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSplitterSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_childEvent cobj_x0 cobj_x1

childrenCollapsible :: QSplitter a -> (()) -> IO (Bool)
childrenCollapsible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_childrenCollapsible cobj_x0

foreign import ccall "qtc_QSplitter_childrenCollapsible" qtc_QSplitter_childrenCollapsible :: Ptr (TQSplitter a) -> IO CBool

class QclosestLegalPosition x0 x1 where
 closestLegalPosition :: x0 -> x1 -> IO (Int)

instance QclosestLegalPosition (QSplitter ()) ((Int, Int)) where
 closestLegalPosition x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_closestLegalPosition cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplitter_closestLegalPosition" qtc_QSplitter_closestLegalPosition :: Ptr (TQSplitter a) -> CInt -> CInt -> IO CInt

instance QclosestLegalPosition (QSplitterSc a) ((Int, Int)) where
 closestLegalPosition x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_closestLegalPosition cobj_x0 (toCInt x1) (toCInt x2)

instance Qcount (QSplitter a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_count cobj_x0

foreign import ccall "qtc_QSplitter_count" qtc_QSplitter_count :: Ptr (TQSplitter a) -> IO CInt

class QcreateHandle x0 x1 where
 createHandle :: x0 -> x1 -> IO (QSplitterHandle ())

instance QcreateHandle (QSplitter ()) (()) where
 createHandle x0 ()
  = withQSplitterHandleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_createHandle_h cobj_x0

foreign import ccall "qtc_QSplitter_createHandle_h" qtc_QSplitter_createHandle_h :: Ptr (TQSplitter a) -> IO (Ptr (TQSplitterHandle ()))

instance QcreateHandle (QSplitterSc a) (()) where
 createHandle x0 ()
  = withQSplitterHandleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_createHandle_h cobj_x0

instance Qevent (QSplitter ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_event_h" qtc_QSplitter_event_h :: Ptr (TQSplitter a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSplitterSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_event_h cobj_x0 cobj_x1

handleWidth :: QSplitter a -> (()) -> IO (Int)
handleWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_handleWidth cobj_x0

foreign import ccall "qtc_QSplitter_handleWidth" qtc_QSplitter_handleWidth :: Ptr (TQSplitter a) -> IO CInt

instance QindexOf (QSplitter a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_indexOf" qtc_QSplitter_indexOf :: Ptr (TQSplitter a) -> Ptr (TQWidget t1) -> IO CInt

instance QinsertWidget (QSplitter a) ((Int, QWidget t2)) (IO ()) where
 insertWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplitter_insertWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QSplitter_insertWidget" qtc_QSplitter_insertWidget :: Ptr (TQSplitter a) -> CInt -> Ptr (TQWidget t2) -> IO ()

isCollapsible :: QSplitter a -> ((Int)) -> IO (Bool)
isCollapsible x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_isCollapsible cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplitter_isCollapsible" qtc_QSplitter_isCollapsible :: Ptr (TQSplitter a) -> CInt -> IO CBool

instance QqminimumSizeHint (QSplitter ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QSplitter_minimumSizeHint_h" qtc_QSplitter_minimumSizeHint_h :: Ptr (TQSplitter a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QSplitterSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QSplitter ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSplitter_minimumSizeHint_qth_h" qtc_QSplitter_minimumSizeHint_qth_h :: Ptr (TQSplitter a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QSplitterSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

class QmoveSplitter x0 x1 where
 moveSplitter :: x0 -> x1 -> IO ()

instance QmoveSplitter (QSplitter ()) ((Int, Int)) where
 moveSplitter x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_moveSplitter cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplitter_moveSplitter" qtc_QSplitter_moveSplitter :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance QmoveSplitter (QSplitterSc a) ((Int, Int)) where
 moveSplitter x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_moveSplitter cobj_x0 (toCInt x1) (toCInt x2)

opaqueResize :: QSplitter a -> (()) -> IO (Bool)
opaqueResize x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_opaqueResize cobj_x0

foreign import ccall "qtc_QSplitter_opaqueResize" qtc_QSplitter_opaqueResize :: Ptr (TQSplitter a) -> IO CBool

instance Qorientation (QSplitter a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_orientation cobj_x0

foreign import ccall "qtc_QSplitter_orientation" qtc_QSplitter_orientation :: Ptr (TQSplitter a) -> IO CLong

instance Qrefresh (QSplitter a) (()) where
 refresh x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_refresh cobj_x0

foreign import ccall "qtc_QSplitter_refresh" qtc_QSplitter_refresh :: Ptr (TQSplitter a) -> IO ()

instance QresizeEvent (QSplitter ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_resizeEvent_h" qtc_QSplitter_resizeEvent_h :: Ptr (TQSplitter a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QSplitterSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_resizeEvent_h cobj_x0 cobj_x1

instance QrestoreState (QSplitter a) ((QByteArray ())) where
 restoreState x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_restoreState cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_restoreState" qtc_QSplitter_restoreState :: Ptr (TQSplitter a) -> Ptr (TQByteArray ()) -> IO CBool

instance QsaveState (QSplitter a) (()) where
 saveState x0 ()
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_saveState cobj_x0

foreign import ccall "qtc_QSplitter_saveState" qtc_QSplitter_saveState :: Ptr (TQSplitter a) -> IO (Ptr (TQByteArray ()))

setChildrenCollapsible :: QSplitter a -> ((Bool)) -> IO ()
setChildrenCollapsible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setChildrenCollapsible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_setChildrenCollapsible" qtc_QSplitter_setChildrenCollapsible :: Ptr (TQSplitter a) -> CBool -> IO ()

setCollapsible :: QSplitter a -> ((Int, Bool)) -> IO ()
setCollapsible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setCollapsible cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QSplitter_setCollapsible" qtc_QSplitter_setCollapsible :: Ptr (TQSplitter a) -> CInt -> CBool -> IO ()

setHandleWidth :: QSplitter a -> ((Int)) -> IO ()
setHandleWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setHandleWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplitter_setHandleWidth" qtc_QSplitter_setHandleWidth :: Ptr (TQSplitter a) -> CInt -> IO ()

class QsetOpaqueResize x1 where
 setOpaqueResize :: QSplitter a -> x1 -> IO ()

instance QsetOpaqueResize (()) where
 setOpaqueResize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setOpaqueResize cobj_x0

foreign import ccall "qtc_QSplitter_setOpaqueResize" qtc_QSplitter_setOpaqueResize :: Ptr (TQSplitter a) -> IO ()

instance QsetOpaqueResize ((Bool)) where
 setOpaqueResize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setOpaqueResize1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_setOpaqueResize1" qtc_QSplitter_setOpaqueResize1 :: Ptr (TQSplitter a) -> CBool -> IO ()

instance QsetOrientation (QSplitter a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplitter_setOrientation" qtc_QSplitter_setOrientation :: Ptr (TQSplitter a) -> CLong -> IO ()

class QsetRubberBand x0 x1 where
 setRubberBand :: x0 -> x1 -> IO ()

instance QsetRubberBand (QSplitter ()) ((Int)) where
 setRubberBand x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setRubberBand cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplitter_setRubberBand" qtc_QSplitter_setRubberBand :: Ptr (TQSplitter a) -> CInt -> IO ()

instance QsetRubberBand (QSplitterSc a) ((Int)) where
 setRubberBand x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setRubberBand cobj_x0 (toCInt x1)

instance QsetStretchFactor (QSplitter a) ((Int, Int)) (IO ()) where
 setStretchFactor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setStretchFactor cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplitter_setStretchFactor" qtc_QSplitter_setStretchFactor :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance QqsizeHint (QSplitter ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sizeHint_h cobj_x0

foreign import ccall "qtc_QSplitter_sizeHint_h" qtc_QSplitter_sizeHint_h :: Ptr (TQSplitter a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSplitterSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sizeHint_h cobj_x0

instance QsizeHint (QSplitter ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSplitter_sizeHint_qth_h" qtc_QSplitter_sizeHint_qth_h :: Ptr (TQSplitter a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSplitterSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

sizes :: QSplitter a -> (()) -> IO ([Int])
sizes x0 ()
  = withQListIntResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sizes cobj_x0 arr

foreign import ccall "qtc_QSplitter_sizes" qtc_QSplitter_sizes :: Ptr (TQSplitter a) -> Ptr CInt -> IO CInt

instance Qwidget (QSplitter a) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_widget cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplitter_widget" qtc_QSplitter_widget :: Ptr (TQSplitter a) -> CInt -> IO (Ptr (TQWidget ()))

qSplitter_delete :: QSplitter a -> IO ()
qSplitter_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_delete cobj_x0

foreign import ccall "qtc_QSplitter_delete" qtc_QSplitter_delete :: Ptr (TQSplitter a) -> IO ()

qSplitter_deleteLater :: QSplitter a -> IO ()
qSplitter_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_deleteLater cobj_x0

foreign import ccall "qtc_QSplitter_deleteLater" qtc_QSplitter_deleteLater :: Ptr (TQSplitter a) -> IO ()

instance QdrawFrame (QSplitter ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_drawFrame" qtc_QSplitter_drawFrame :: Ptr (TQSplitter a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QSplitterSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_drawFrame cobj_x0 cobj_x1

instance QpaintEvent (QSplitter ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_paintEvent_h" qtc_QSplitter_paintEvent_h :: Ptr (TQSplitter a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QSplitterSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_paintEvent_h cobj_x0 cobj_x1

instance QactionEvent (QSplitter ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_actionEvent_h" qtc_QSplitter_actionEvent_h :: Ptr (TQSplitter a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QSplitterSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QSplitter ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_addAction" qtc_QSplitter_addAction :: Ptr (TQSplitter a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QSplitterSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_addAction cobj_x0 cobj_x1

instance QcloseEvent (QSplitter ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_closeEvent_h" qtc_QSplitter_closeEvent_h :: Ptr (TQSplitter a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QSplitterSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QSplitter ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_contextMenuEvent_h" qtc_QSplitter_contextMenuEvent_h :: Ptr (TQSplitter a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QSplitterSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QSplitter ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_create cobj_x0

foreign import ccall "qtc_QSplitter_create" qtc_QSplitter_create :: Ptr (TQSplitter a) -> IO ()

instance Qcreate (QSplitterSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_create cobj_x0

instance Qcreate (QSplitter ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_create1" qtc_QSplitter_create1 :: Ptr (TQSplitter a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QSplitterSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create1 cobj_x0 cobj_x1

instance Qcreate (QSplitter ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QSplitter_create2" qtc_QSplitter_create2 :: Ptr (TQSplitter a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QSplitterSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QSplitter ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QSplitter_create3" qtc_QSplitter_create3 :: Ptr (TQSplitter a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QSplitterSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QSplitter ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy cobj_x0

foreign import ccall "qtc_QSplitter_destroy" qtc_QSplitter_destroy :: Ptr (TQSplitter a) -> IO ()

instance Qdestroy (QSplitterSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy cobj_x0

instance Qdestroy (QSplitter ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_destroy1" qtc_QSplitter_destroy1 :: Ptr (TQSplitter a) -> CBool -> IO ()

instance Qdestroy (QSplitterSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QSplitter ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QSplitter_destroy2" qtc_QSplitter_destroy2 :: Ptr (TQSplitter a) -> CBool -> CBool -> IO ()

instance Qdestroy (QSplitterSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QSplitter ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_devType_h cobj_x0

foreign import ccall "qtc_QSplitter_devType_h" qtc_QSplitter_devType_h :: Ptr (TQSplitter a) -> IO CInt

instance QdevType (QSplitterSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_devType_h cobj_x0

instance QdragEnterEvent (QSplitter ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_dragEnterEvent_h" qtc_QSplitter_dragEnterEvent_h :: Ptr (TQSplitter a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QSplitterSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QSplitter ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_dragLeaveEvent_h" qtc_QSplitter_dragLeaveEvent_h :: Ptr (TQSplitter a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QSplitterSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QSplitter ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_dragMoveEvent_h" qtc_QSplitter_dragMoveEvent_h :: Ptr (TQSplitter a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QSplitterSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QSplitter ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_dropEvent_h" qtc_QSplitter_dropEvent_h :: Ptr (TQSplitter a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QSplitterSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QSplitter ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_enabledChange" qtc_QSplitter_enabledChange :: Ptr (TQSplitter a) -> CBool -> IO ()

instance QenabledChange (QSplitterSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QSplitter ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_enterEvent_h" qtc_QSplitter_enterEvent_h :: Ptr (TQSplitter a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QSplitterSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QSplitter ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_focusInEvent_h" qtc_QSplitter_focusInEvent_h :: Ptr (TQSplitter a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QSplitterSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QSplitter ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusNextChild cobj_x0

foreign import ccall "qtc_QSplitter_focusNextChild" qtc_QSplitter_focusNextChild :: Ptr (TQSplitter a) -> IO CBool

instance QfocusNextChild (QSplitterSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusNextChild cobj_x0

instance QfocusNextPrevChild (QSplitter ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_focusNextPrevChild" qtc_QSplitter_focusNextPrevChild :: Ptr (TQSplitter a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QSplitterSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QSplitter ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_focusOutEvent_h" qtc_QSplitter_focusOutEvent_h :: Ptr (TQSplitter a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QSplitterSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QSplitter ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusPreviousChild cobj_x0

foreign import ccall "qtc_QSplitter_focusPreviousChild" qtc_QSplitter_focusPreviousChild :: Ptr (TQSplitter a) -> IO CBool

instance QfocusPreviousChild (QSplitterSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_focusPreviousChild cobj_x0

instance QfontChange (QSplitter ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_fontChange" qtc_QSplitter_fontChange :: Ptr (TQSplitter a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QSplitterSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QSplitter ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSplitter_heightForWidth_h" qtc_QSplitter_heightForWidth_h :: Ptr (TQSplitter a) -> CInt -> IO CInt

instance QheightForWidth (QSplitterSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QSplitter ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_hideEvent_h" qtc_QSplitter_hideEvent_h :: Ptr (TQSplitter a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QSplitterSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QSplitter ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_inputMethodEvent" qtc_QSplitter_inputMethodEvent :: Ptr (TQSplitter a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QSplitterSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QSplitter ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplitter_inputMethodQuery_h" qtc_QSplitter_inputMethodQuery_h :: Ptr (TQSplitter a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QSplitterSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QSplitter ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_keyPressEvent_h" qtc_QSplitter_keyPressEvent_h :: Ptr (TQSplitter a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QSplitterSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QSplitter ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_keyReleaseEvent_h" qtc_QSplitter_keyReleaseEvent_h :: Ptr (TQSplitter a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QSplitterSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QSplitter ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_languageChange cobj_x0

foreign import ccall "qtc_QSplitter_languageChange" qtc_QSplitter_languageChange :: Ptr (TQSplitter a) -> IO ()

instance QlanguageChange (QSplitterSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_languageChange cobj_x0

instance QleaveEvent (QSplitter ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_leaveEvent_h" qtc_QSplitter_leaveEvent_h :: Ptr (TQSplitter a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QSplitterSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QSplitter ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSplitter_metric" qtc_QSplitter_metric :: Ptr (TQSplitter a) -> CLong -> IO CInt

instance Qmetric (QSplitterSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QSplitter ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_mouseDoubleClickEvent_h" qtc_QSplitter_mouseDoubleClickEvent_h :: Ptr (TQSplitter a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QSplitterSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QSplitter ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_mouseMoveEvent_h" qtc_QSplitter_mouseMoveEvent_h :: Ptr (TQSplitter a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QSplitterSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QSplitter ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_mousePressEvent_h" qtc_QSplitter_mousePressEvent_h :: Ptr (TQSplitter a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QSplitterSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QSplitter ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_mouseReleaseEvent_h" qtc_QSplitter_mouseReleaseEvent_h :: Ptr (TQSplitter a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QSplitterSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QSplitter ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplitter_move1" qtc_QSplitter_move1 :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance Qmove (QSplitterSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QSplitter ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSplitter_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QSplitter_move_qth" qtc_QSplitter_move_qth :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance Qmove (QSplitterSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QSplitter_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QSplitter ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_move cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_move" qtc_QSplitter_move :: Ptr (TQSplitter a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QSplitterSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_move cobj_x0 cobj_x1

instance QmoveEvent (QSplitter ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_moveEvent_h" qtc_QSplitter_moveEvent_h :: Ptr (TQSplitter a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QSplitterSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QSplitter ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_paintEngine_h cobj_x0

foreign import ccall "qtc_QSplitter_paintEngine_h" qtc_QSplitter_paintEngine_h :: Ptr (TQSplitter a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QSplitterSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_paintEngine_h cobj_x0

instance QpaletteChange (QSplitter ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_paletteChange" qtc_QSplitter_paletteChange :: Ptr (TQSplitter a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QSplitterSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QSplitter ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_repaint cobj_x0

foreign import ccall "qtc_QSplitter_repaint" qtc_QSplitter_repaint :: Ptr (TQSplitter a) -> IO ()

instance Qrepaint (QSplitterSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_repaint cobj_x0

instance Qrepaint (QSplitter ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSplitter_repaint2" qtc_QSplitter_repaint2 :: Ptr (TQSplitter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QSplitterSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QSplitter ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_repaint1" qtc_QSplitter_repaint1 :: Ptr (TQSplitter a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QSplitterSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QSplitter ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_resetInputContext cobj_x0

foreign import ccall "qtc_QSplitter_resetInputContext" qtc_QSplitter_resetInputContext :: Ptr (TQSplitter a) -> IO ()

instance QresetInputContext (QSplitterSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_resetInputContext cobj_x0

instance Qresize (QSplitter ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSplitter_resize1" qtc_QSplitter_resize1 :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance Qresize (QSplitterSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QSplitter ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_resize" qtc_QSplitter_resize :: Ptr (TQSplitter a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QSplitterSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_resize cobj_x0 cobj_x1

instance Qresize (QSplitter ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSplitter_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QSplitter_resize_qth" qtc_QSplitter_resize_qth :: Ptr (TQSplitter a) -> CInt -> CInt -> IO ()

instance Qresize (QSplitterSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QSplitter_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QSplitter ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QSplitter_setGeometry1" qtc_QSplitter_setGeometry1 :: Ptr (TQSplitter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSplitterSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QSplitter ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_setGeometry" qtc_QSplitter_setGeometry :: Ptr (TQSplitter a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSplitterSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QSplitter ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSplitter_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSplitter_setGeometry_qth" qtc_QSplitter_setGeometry_qth :: Ptr (TQSplitter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSplitterSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSplitter_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QSplitter ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_setMouseTracking" qtc_QSplitter_setMouseTracking :: Ptr (TQSplitter a) -> CBool -> IO ()

instance QsetMouseTracking (QSplitterSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QSplitter ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_setVisible_h" qtc_QSplitter_setVisible_h :: Ptr (TQSplitter a) -> CBool -> IO ()

instance QsetVisible (QSplitterSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QSplitter ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_showEvent_h" qtc_QSplitter_showEvent_h :: Ptr (TQSplitter a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QSplitterSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QSplitter ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_tabletEvent_h" qtc_QSplitter_tabletEvent_h :: Ptr (TQSplitter a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QSplitterSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QSplitter ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_updateMicroFocus cobj_x0

foreign import ccall "qtc_QSplitter_updateMicroFocus" qtc_QSplitter_updateMicroFocus :: Ptr (TQSplitter a) -> IO ()

instance QupdateMicroFocus (QSplitterSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_updateMicroFocus cobj_x0

instance QwheelEvent (QSplitter ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_wheelEvent_h" qtc_QSplitter_wheelEvent_h :: Ptr (TQSplitter a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QSplitterSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QSplitter ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSplitter_windowActivationChange" qtc_QSplitter_windowActivationChange :: Ptr (TQSplitter a) -> CBool -> IO ()

instance QwindowActivationChange (QSplitterSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_windowActivationChange cobj_x0 (toCBool x1)

instance QconnectNotify (QSplitter ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSplitter_connectNotify" qtc_QSplitter_connectNotify :: Ptr (TQSplitter a) -> CWString -> IO ()

instance QconnectNotify (QSplitterSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSplitter ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_customEvent" qtc_QSplitter_customEvent :: Ptr (TQSplitter a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSplitterSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSplitter ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSplitter_disconnectNotify" qtc_QSplitter_disconnectNotify :: Ptr (TQSplitter a) -> CWString -> IO ()

instance QdisconnectNotify (QSplitterSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QSplitter ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplitter_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSplitter_eventFilter_h" qtc_QSplitter_eventFilter_h :: Ptr (TQSplitter a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSplitterSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSplitter_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSplitter ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSplitter_receivers" qtc_QSplitter_receivers :: Ptr (TQSplitter a) -> CWString -> IO CInt

instance Qreceivers (QSplitterSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSplitter_receivers cobj_x0 cstr_x1

instance Qsender (QSplitter ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sender cobj_x0

foreign import ccall "qtc_QSplitter_sender" qtc_QSplitter_sender :: Ptr (TQSplitter a) -> IO (Ptr (TQObject ()))

instance Qsender (QSplitterSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSplitter_sender cobj_x0

instance QtimerEvent (QSplitter ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSplitter_timerEvent" qtc_QSplitter_timerEvent :: Ptr (TQSplitter a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSplitterSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSplitter_timerEvent cobj_x0 cobj_x1

