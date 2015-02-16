{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsView (
  QqGraphicsView(..)
  ,QcenterOn(..), qcenterOn
  ,dragMode
  ,QfitInView(..), QqfitInView(..)
  ,QinvalidateScene(..), QqinvalidateScene(..)
  ,isInteractive
  ,optimizationFlags
  ,resetCachedContent
  ,resizeAnchor
  ,rubberBandSelectionMode
  ,setDragMode
  ,setInteractive
  ,QsetOptimizationFlag(..)
  ,setOptimizationFlags
  ,setResizeAnchor
  ,setRubberBandSelectionMode
  ,setScene
  ,setTransformationAnchor
  ,setViewportUpdateMode
  ,transformationAnchor
  ,qupdateSceneRect, updateSceneRect
  ,viewportTransform
  ,viewportUpdateMode
  ,qGraphicsView_delete
  ,qGraphicsView_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QGraphicsView
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsScene
import Qtc.Enums.Gui.QPainter

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QGraphicsView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsView_userMethod" qtc_QGraphicsView_userMethod :: Ptr (TQGraphicsView a) -> CInt -> IO ()

instance QuserMethod (QGraphicsViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsView_userMethodVariant" qtc_QGraphicsView_userMethodVariant :: Ptr (TQGraphicsView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsView x1 where
  qGraphicsView :: x1 -> IO (QGraphicsView ())

instance QqGraphicsView (()) where
 qGraphicsView ()
  = withQGraphicsViewResult $
    qtc_QGraphicsView

foreign import ccall "qtc_QGraphicsView" qtc_QGraphicsView :: IO (Ptr (TQGraphicsView ()))

instance QqGraphicsView ((QWidget t1)) where
 qGraphicsView (x1)
  = withQGraphicsViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView1 cobj_x1

foreign import ccall "qtc_QGraphicsView1" qtc_QGraphicsView1 :: Ptr (TQWidget t1) -> IO (Ptr (TQGraphicsView ()))

instance QqGraphicsView ((QGraphicsScene t1)) where
 qGraphicsView (x1)
  = withQGraphicsViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView2 cobj_x1

foreign import ccall "qtc_QGraphicsView2" qtc_QGraphicsView2 :: Ptr (TQGraphicsScene t1) -> IO (Ptr (TQGraphicsView ()))

instance QqGraphicsView ((QGraphicsScene t1, QWidget t2)) where
 qGraphicsView (x1, x2)
  = withQGraphicsViewResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView3 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsView3" qtc_QGraphicsView3 :: Ptr (TQGraphicsScene t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQGraphicsView ()))

instance Qalignment (QGraphicsView a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_alignment cobj_x0

foreign import ccall "qtc_QGraphicsView_alignment" qtc_QGraphicsView_alignment :: Ptr (TQGraphicsView a) -> IO CLong

instance QbackgroundBrush (QGraphicsView a) (()) where
 backgroundBrush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_backgroundBrush cobj_x0

foreign import ccall "qtc_QGraphicsView_backgroundBrush" qtc_QGraphicsView_backgroundBrush :: Ptr (TQGraphicsView a) -> IO (Ptr (TQBrush ()))

instance QcacheMode (QGraphicsView a) (()) (IO (QGraphicsViewCacheMode)) where
 cacheMode x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_cacheMode cobj_x0

foreign import ccall "qtc_QGraphicsView_cacheMode" qtc_QGraphicsView_cacheMode :: Ptr (TQGraphicsView a) -> IO CLong

class QcenterOn x1 where
 centerOn :: QGraphicsView a -> x1 -> IO ()

instance QcenterOn ((Double, Double)) where
 centerOn x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_centerOn2 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsView_centerOn2" qtc_QGraphicsView_centerOn2 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO ()

instance QcenterOn ((PointF)) where
 centerOn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsView_centerOn1_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsView_centerOn1_qth" qtc_QGraphicsView_centerOn1_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO ()

instance QcenterOn ((QGraphicsItem t1)) where
 centerOn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_centerOn cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_centerOn" qtc_QGraphicsView_centerOn :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QcenterOn ((QGraphicsTextItem t1)) where
 centerOn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_centerOn_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_centerOn_graphicstextitem" qtc_QGraphicsView_centerOn_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

qcenterOn :: QGraphicsView a -> ((QPointF t1)) -> IO ()
qcenterOn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_centerOn1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_centerOn1" qtc_QGraphicsView_centerOn1 :: Ptr (TQGraphicsView a) -> Ptr (TQPointF t1) -> IO ()

instance QcontextMenuEvent (QGraphicsView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_contextMenuEvent_h" qtc_QGraphicsView_contextMenuEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_dragEnterEvent_h" qtc_QGraphicsView_dragEnterEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_dragLeaveEvent_h" qtc_QGraphicsView_dragLeaveEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragLeaveEvent_h cobj_x0 cobj_x1

dragMode :: QGraphicsView a -> (()) -> IO (DragMode)
dragMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_dragMode cobj_x0

foreign import ccall "qtc_QGraphicsView_dragMode" qtc_QGraphicsView_dragMode :: Ptr (TQGraphicsView a) -> IO CLong

instance QdragMoveEvent (QGraphicsView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_dragMoveEvent_h" qtc_QGraphicsView_dragMoveEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dragMoveEvent_h cobj_x0 cobj_x1

instance QqdrawBackground (QGraphicsView ()) ((QPainter t1, QRectF t2)) where
 qdrawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_drawBackground_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsView_drawBackground_h" qtc_QGraphicsView_drawBackground_h :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawBackground (QGraphicsViewSc a) ((QPainter t1, QRectF t2)) where
 qdrawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_drawBackground_h cobj_x0 cobj_x1 cobj_x2

instance QdrawBackground (QGraphicsView ()) ((QPainter t1, RectF)) where
 drawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsView_drawBackground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsView_drawBackground_qth_h" qtc_QGraphicsView_drawBackground_qth_h :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawBackground (QGraphicsViewSc a) ((QPainter t1, RectF)) where
 drawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsView_drawBackground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QqdrawForeground (QGraphicsView ()) ((QPainter t1, QRectF t2)) where
 qdrawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_drawForeground_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsView_drawForeground_h" qtc_QGraphicsView_drawForeground_h :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawForeground (QGraphicsViewSc a) ((QPainter t1, QRectF t2)) where
 qdrawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_drawForeground_h cobj_x0 cobj_x1 cobj_x2

instance QdrawForeground (QGraphicsView ()) ((QPainter t1, RectF)) where
 drawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsView_drawForeground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsView_drawForeground_qth_h" qtc_QGraphicsView_drawForeground_qth_h :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawForeground (QGraphicsViewSc a) ((QPainter t1, RectF)) where
 drawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsView_drawForeground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QdrawItems (QGraphicsView ()) ((QPainter t1, Int, [QGraphicsItem t3], QStyleOptionGraphicsItem t4)) where
 drawItems x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGraphicsView_drawItems_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cobj_x4

foreign import ccall "qtc_QGraphicsView_drawItems_h" qtc_QGraphicsView_drawItems_h :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> Ptr (TQStyleOptionGraphicsItem t4) -> IO ()

instance QdrawItems (QGraphicsViewSc a) ((QPainter t1, Int, [QGraphicsItem t3], QStyleOptionGraphicsItem t4)) where
 drawItems x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QGraphicsView_drawItems_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cobj_x4

instance QdropEvent (QGraphicsView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_dropEvent_h" qtc_QGraphicsView_dropEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_dropEvent_h cobj_x0 cobj_x1

instance QensureVisible (QGraphicsView a) ((Double, Double, Double, Double)) where
 ensureVisible x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_ensureVisible6 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsView_ensureVisible6" qtc_QGraphicsView_ensureVisible6 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsView a) ((Double, Double, Double, Double, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_ensureVisible7 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5)

foreign import ccall "qtc_QGraphicsView_ensureVisible7" qtc_QGraphicsView_ensureVisible7 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((Double, Double, Double, Double, Int, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_ensureVisible8 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QGraphicsView_ensureVisible8" qtc_QGraphicsView_ensureVisible8 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsItem t1)) where
 ensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_ensureVisible" qtc_QGraphicsView_ensureVisible :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsItem t1, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGraphicsView_ensureVisible3" qtc_QGraphicsView_ensureVisible3 :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsItem t1, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible4 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsView_ensureVisible4" qtc_QGraphicsView_ensureVisible4 :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> CInt -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsTextItem t1)) where
 ensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_ensureVisible_graphicstextitem" qtc_QGraphicsView_ensureVisible_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsTextItem t1, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible3_graphicstextitem cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGraphicsView_ensureVisible3_graphicstextitem" qtc_QGraphicsView_ensureVisible3_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((QGraphicsTextItem t1, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible4_graphicstextitem cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsView_ensureVisible4_graphicstextitem" qtc_QGraphicsView_ensureVisible4_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> CInt -> CInt -> IO ()

instance QqensureVisible (QGraphicsView a) ((QRectF t1)) where
 qensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_ensureVisible1" qtc_QGraphicsView_ensureVisible1 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO ()

instance QqensureVisible (QGraphicsView a) ((QRectF t1, Int)) where
 qensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGraphicsView_ensureVisible2" qtc_QGraphicsView_ensureVisible2 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> CInt -> IO ()

instance QqensureVisible (QGraphicsView a) ((QRectF t1, Int, Int)) where
 qensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_ensureVisible5 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsView_ensureVisible5" qtc_QGraphicsView_ensureVisible5 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((RectF)) where
 ensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_ensureVisible1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_ensureVisible1_qth" qtc_QGraphicsView_ensureVisible1_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsView a) ((RectF, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_ensureVisible2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2)

foreign import ccall "qtc_QGraphicsView_ensureVisible2_qth" qtc_QGraphicsView_ensureVisible2_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsView a) ((RectF, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_ensureVisible5_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsView_ensureVisible5_qth" qtc_QGraphicsView_ensureVisible5_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance Qevent (QGraphicsView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_event_h" qtc_QGraphicsView_event_h :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGraphicsViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_event_h cobj_x0 cobj_x1

class QfitInView x1 where
 fitInView :: QGraphicsView a -> x1 -> IO ()

class QqfitInView x1 where
 qfitInView :: QGraphicsView a -> x1 -> IO ()

instance QfitInView ((Double, Double, Double, Double)) where
 fitInView x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_fitInView4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsView_fitInView4" qtc_QGraphicsView_fitInView4 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QfitInView ((Double, Double, Double, Double, AspectRatioMode)) where
 fitInView x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_fitInView5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QGraphicsView_fitInView5" qtc_QGraphicsView_fitInView5 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance QfitInView ((QGraphicsItem t1)) where
 fitInView x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_fitInView1" qtc_QGraphicsView_fitInView1 :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QfitInView ((QGraphicsItem t1, AspectRatioMode)) where
 fitInView x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsView_fitInView2" qtc_QGraphicsView_fitInView2 :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO ()

instance QfitInView ((QGraphicsTextItem t1)) where
 fitInView x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView1_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_fitInView1_graphicstextitem" qtc_QGraphicsView_fitInView1_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QfitInView ((QGraphicsTextItem t1, AspectRatioMode)) where
 fitInView x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView2_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsView_fitInView2_graphicstextitem" qtc_QGraphicsView_fitInView2_graphicstextitem :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO ()

instance QqfitInView ((QRectF t1)) where
 qfitInView x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_fitInView" qtc_QGraphicsView_fitInView :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO ()

instance QqfitInView ((QRectF t1, AspectRatioMode)) where
 qfitInView x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fitInView3 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsView_fitInView3" qtc_QGraphicsView_fitInView3 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> CLong -> IO ()

instance QfitInView ((RectF)) where
 fitInView x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_fitInView_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_fitInView_qth" qtc_QGraphicsView_fitInView_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QfitInView ((RectF, AspectRatioMode)) where
 fitInView x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_fitInView3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsView_fitInView3_qth" qtc_QGraphicsView_fitInView3_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance QfocusInEvent (QGraphicsView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_focusInEvent_h" qtc_QGraphicsView_focusInEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_focusOutEvent_h" qtc_QGraphicsView_focusOutEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_focusOutEvent_h cobj_x0 cobj_x1

instance QforegroundBrush (QGraphicsView a) (()) where
 foregroundBrush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_foregroundBrush cobj_x0

foreign import ccall "qtc_QGraphicsView_foregroundBrush" qtc_QGraphicsView_foregroundBrush :: Ptr (TQGraphicsView a) -> IO (Ptr (TQBrush ()))

instance QinputMethodEvent (QGraphicsView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_inputMethodEvent" qtc_QGraphicsView_inputMethodEvent :: Ptr (TQGraphicsView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_inputMethodQuery_h" qtc_QGraphicsView_inputMethodQuery_h :: Ptr (TQGraphicsView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

class QinvalidateScene x1 where
 invalidateScene :: QGraphicsView a -> x1 -> IO ()

class QqinvalidateScene x1 where
 qinvalidateScene :: QGraphicsView a -> x1 -> IO ()

instance QinvalidateScene (()) where
 invalidateScene x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_invalidateScene cobj_x0

foreign import ccall "qtc_QGraphicsView_invalidateScene" qtc_QGraphicsView_invalidateScene :: Ptr (TQGraphicsView a) -> IO ()

instance QqinvalidateScene ((QRectF t1)) where
 qinvalidateScene x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_invalidateScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_invalidateScene1" qtc_QGraphicsView_invalidateScene1 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO ()

instance QqinvalidateScene ((QRectF t1, SceneLayers)) where
 qinvalidateScene x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_invalidateScene2 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QGraphicsView_invalidateScene2" qtc_QGraphicsView_invalidateScene2 :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> CLong -> IO ()

instance QinvalidateScene ((RectF)) where
 invalidateScene x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_invalidateScene1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_invalidateScene1_qth" qtc_QGraphicsView_invalidateScene1_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QinvalidateScene ((RectF, SceneLayers)) where
 invalidateScene x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_invalidateScene2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QGraphicsView_invalidateScene2_qth" qtc_QGraphicsView_invalidateScene2_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

isInteractive :: QGraphicsView a -> (()) -> IO (Bool)
isInteractive x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_isInteractive cobj_x0

foreign import ccall "qtc_QGraphicsView_isInteractive" qtc_QGraphicsView_isInteractive :: Ptr (TQGraphicsView a) -> IO CBool

instance QitemAt (QGraphicsView a) ((Int, Int)) (IO (QGraphicsItem ())) where
 itemAt x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_itemAt1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGraphicsView_itemAt1" qtc_QGraphicsView_itemAt1 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO (Ptr (TQGraphicsItem ()))

instance QitemAt (QGraphicsView a) ((Point)) (IO (QGraphicsItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsView_itemAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsView_itemAt_qth" qtc_QGraphicsView_itemAt_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO (Ptr (TQGraphicsItem ()))

instance QqitemAt (QGraphicsView a) ((QPoint t1)) (IO (QGraphicsItem ())) where
 qitemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_itemAt cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_itemAt" qtc_QGraphicsView_itemAt :: Ptr (TQGraphicsView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQGraphicsItem ()))

instance Qitems (QGraphicsView a) (()) (IO ([QGraphicsItem ()])) where
 items x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_items cobj_x0 arr

foreign import ccall "qtc_QGraphicsView_items" qtc_QGraphicsView_items :: Ptr (TQGraphicsView a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Int, Int)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_items5 cobj_x0 (toCInt x1) (toCInt x2) arr

foreign import ccall "qtc_QGraphicsView_items5" qtc_QGraphicsView_items5 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Int, Int, Int, Int)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2, x3, x4)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_items9 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) arr

foreign import ccall "qtc_QGraphicsView_items9" qtc_QGraphicsView_items9 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Int, Int, Int, Int, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2, x3, x4, x5)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_items10 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCLong $ qEnum_toInt x5) arr

foreign import ccall "qtc_QGraphicsView_items10" qtc_QGraphicsView_items10 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Point)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsView_items2_qth cobj_x0 cpoint_x1_x cpoint_x1_y  arr

foreign import ccall "qtc_QGraphicsView_items2_qth" qtc_QGraphicsView_items2_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((QPainterPath t1)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items3 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsView_items3" qtc_QGraphicsView_items3 :: Ptr (TQGraphicsView a) -> Ptr (TQPainterPath t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((QPainterPath t1, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items8 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsView_items8" qtc_QGraphicsView_items8 :: Ptr (TQGraphicsView a) -> Ptr (TQPainterPath t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsView a) ((QPoint t1)) where
 qitems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items2 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsView_items2" qtc_QGraphicsView_items2 :: Ptr (TQGraphicsView a) -> Ptr (TQPoint t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((QPolygon t1)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items1 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsView_items1" qtc_QGraphicsView_items1 :: Ptr (TQGraphicsView a) -> Ptr (TQPolygon t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((QPolygon t1, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsView_items7" qtc_QGraphicsView_items7 :: Ptr (TQGraphicsView a) -> Ptr (TQPolygon t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsView a) ((QRect t1)) where
 qitems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items4 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsView_items4" qtc_QGraphicsView_items4 :: Ptr (TQGraphicsView a) -> Ptr (TQRect t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsView a) ((QRect t1, ItemSelectionMode)) where
 qitems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_items6 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsView_items6" qtc_QGraphicsView_items6 :: Ptr (TQGraphicsView a) -> Ptr (TQRect t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Rect)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGraphicsView_items4_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  arr

foreign import ccall "qtc_QGraphicsView_items4_qth" qtc_QGraphicsView_items4_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsView a) ((Rect, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGraphicsView_items6_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsView_items6_qth" qtc_QGraphicsView_items6_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QkeyPressEvent (QGraphicsView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_keyPressEvent_h" qtc_QGraphicsView_keyPressEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_keyReleaseEvent_h" qtc_QGraphicsView_keyReleaseEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmapFromScene (QGraphicsView a) ((Double, Double)) (IO (Point)) where
 mapFromScene x0 (x1, x2)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapFromScene4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsView_mapFromScene4_qth" qtc_QGraphicsView_mapFromScene4_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> Ptr CInt -> Ptr CInt -> IO ()

instance QmapFromScene (QGraphicsView a) ((PointF)) (IO (Point)) where
 mapFromScene x0 (x1)
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsView_mapFromScene2_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QGraphicsView_mapFromScene2_qth" qtc_QGraphicsView_mapFromScene2_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> Ptr CInt -> Ptr CInt -> IO ()

instance QmapFromScene (QGraphicsView a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapFromScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapFromScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapFromScene3" qtc_QGraphicsView_mapFromScene3 :: Ptr (TQGraphicsView a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromScene (QGraphicsView a) ((Double, Double)) (IO (QPoint ())) where
 qmapFromScene x0 (x1, x2)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapFromScene4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsView_mapFromScene4" qtc_QGraphicsView_mapFromScene4 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO (Ptr (TQPoint ()))

instance QqmapFromScene (QGraphicsView a) ((QPointF t1)) (IO (QPoint ())) where
 qmapFromScene x0 (x1)
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapFromScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapFromScene2" qtc_QGraphicsView_mapFromScene2 :: Ptr (TQGraphicsView a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPoint ()))

instance QmapFromScene (QGraphicsView a) ((Double, Double, Double, Double)) (IO (QPolygon ())) where
 mapFromScene x0 (x1, x2, x3, x4)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapFromScene5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsView_mapFromScene5" qtc_QGraphicsView_mapFromScene5 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygon ()))

instance QmapFromScene (QGraphicsView a) ((QPolygonF t1)) (IO (QPolygon ())) where
 mapFromScene x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapFromScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapFromScene1" qtc_QGraphicsView_mapFromScene1 :: Ptr (TQGraphicsView a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygon ()))

instance QqmapFromScene (QGraphicsView a) ((QRectF t1)) (IO (QPolygon ())) where
 qmapFromScene x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapFromScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapFromScene" qtc_QGraphicsView_mapFromScene :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygon ()))

instance QmapFromScene (QGraphicsView a) ((RectF)) (IO (QPolygon ())) where
 mapFromScene x0 (x1)
  = withQPolygonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_mapFromScene_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_mapFromScene_qth" qtc_QGraphicsView_mapFromScene_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygon ()))

instance QmapToScene (QGraphicsView a) ((Int, Int)) (IO (PointF)) where
 mapToScene x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapToScene4_qth cobj_x0 (toCInt x1) (toCInt x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsView_mapToScene4_qth" qtc_QGraphicsView_mapToScene4_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsView a) ((Point)) (IO (PointF)) where
 mapToScene x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsView_mapToScene1_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsView_mapToScene1_qth" qtc_QGraphicsView_mapToScene1_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsView a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapToScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapToScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapToScene" qtc_QGraphicsView_mapToScene :: Ptr (TQGraphicsView a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapToScene (QGraphicsView a) ((Int, Int)) (IO (QPointF ())) where
 qmapToScene x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapToScene4 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGraphicsView_mapToScene4" qtc_QGraphicsView_mapToScene4 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO (Ptr (TQPointF ()))

instance QqmapToScene (QGraphicsView a) ((QPoint t1)) (IO (QPointF ())) where
 qmapToScene x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapToScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapToScene1" qtc_QGraphicsView_mapToScene1 :: Ptr (TQGraphicsView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQPointF ()))

instance QmapToScene (QGraphicsView a) ((Int, Int, Int, Int)) (IO (QPolygonF ())) where
 mapToScene x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_mapToScene5 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGraphicsView_mapToScene5" qtc_QGraphicsView_mapToScene5 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsView a) ((QPolygon t1)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapToScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapToScene2" qtc_QGraphicsView_mapToScene2 :: Ptr (TQGraphicsView a) -> Ptr (TQPolygon t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapToScene (QGraphicsView a) ((QRect t1)) (IO (QPolygonF ())) where
 qmapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mapToScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mapToScene3" qtc_QGraphicsView_mapToScene3 :: Ptr (TQGraphicsView a) -> Ptr (TQRect t1) -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsView a) ((Rect)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGraphicsView_mapToScene3_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGraphicsView_mapToScene3_qth" qtc_QGraphicsView_mapToScene3_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPolygonF ()))

instance Qmatrix (QGraphicsView a) (()) where
 matrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_matrix cobj_x0

foreign import ccall "qtc_QGraphicsView_matrix" qtc_QGraphicsView_matrix :: Ptr (TQGraphicsView a) -> IO (Ptr (TQMatrix ()))

instance QmouseDoubleClickEvent (QGraphicsView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mouseDoubleClickEvent_h" qtc_QGraphicsView_mouseDoubleClickEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mouseMoveEvent_h" qtc_QGraphicsView_mouseMoveEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mousePressEvent_h" qtc_QGraphicsView_mousePressEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_mouseReleaseEvent_h" qtc_QGraphicsView_mouseReleaseEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_mouseReleaseEvent_h cobj_x0 cobj_x1

optimizationFlags :: QGraphicsView a -> (()) -> IO (OptimizationFlags)
optimizationFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_optimizationFlags cobj_x0

foreign import ccall "qtc_QGraphicsView_optimizationFlags" qtc_QGraphicsView_optimizationFlags :: Ptr (TQGraphicsView a) -> IO CLong

instance QpaintEvent (QGraphicsView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_paintEvent_h" qtc_QGraphicsView_paintEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QGraphicsViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_paintEvent_h cobj_x0 cobj_x1

instance Qrender (QGraphicsView a) ((QPainter t1)) where
 render x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_render cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_render" qtc_QGraphicsView_render :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> IO ()

instance Qqrender (QGraphicsView a) ((QPainter t1, QRectF t2)) where
 qrender x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_render1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsView_render1" qtc_QGraphicsView_render1 :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance Qqrender (QGraphicsView a) ((QPainter t1, QRectF t2, QRect t3)) where
 qrender x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsView_render2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsView_render2" qtc_QGraphicsView_render2 :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQRect t3) -> IO ()

instance Qqrender (QGraphicsView a) ((QPainter t1, QRectF t2, QRect t3, AspectRatioMode)) where
 qrender x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsView_render3 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QGraphicsView_render3" qtc_QGraphicsView_render3 :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQRect t3) -> CLong -> IO ()

instance Qrender (QGraphicsView a) ((QPainter t1, RectF)) where
 render x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsView_render1_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsView_render1_qth" qtc_QGraphicsView_render1_qth :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qrender (QGraphicsView a) ((QPainter t1, RectF, Rect)) where
 render x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QGraphicsView_render2_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QGraphicsView_render2_qth" qtc_QGraphicsView_render2_qth :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrender (QGraphicsView a) ((QPainter t1, RectF, Rect, AspectRatioMode)) where
 render x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QGraphicsView_render3_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  crect_x3_x crect_x3_y crect_x3_w crect_x3_h  (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QGraphicsView_render3_qth" qtc_QGraphicsView_render3_qth :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QrenderHints (QGraphicsView a) (()) where
 renderHints x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_renderHints cobj_x0

foreign import ccall "qtc_QGraphicsView_renderHints" qtc_QGraphicsView_renderHints :: Ptr (TQGraphicsView a) -> IO CLong

resetCachedContent :: QGraphicsView a -> (()) -> IO ()
resetCachedContent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resetCachedContent cobj_x0

foreign import ccall "qtc_QGraphicsView_resetCachedContent" qtc_QGraphicsView_resetCachedContent :: Ptr (TQGraphicsView a) -> IO ()

instance QresetMatrix (QGraphicsView a) (()) where
 resetMatrix x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resetMatrix cobj_x0

foreign import ccall "qtc_QGraphicsView_resetMatrix" qtc_QGraphicsView_resetMatrix :: Ptr (TQGraphicsView a) -> IO ()

instance QresetTransform (QGraphicsView a) (()) where
 resetTransform x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resetTransform cobj_x0

foreign import ccall "qtc_QGraphicsView_resetTransform" qtc_QGraphicsView_resetTransform :: Ptr (TQGraphicsView a) -> IO ()

resizeAnchor :: QGraphicsView a -> (()) -> IO (ViewportAnchor)
resizeAnchor x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resizeAnchor cobj_x0

foreign import ccall "qtc_QGraphicsView_resizeAnchor" qtc_QGraphicsView_resizeAnchor :: Ptr (TQGraphicsView a) -> IO CLong

instance QresizeEvent (QGraphicsView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_resizeEvent_h" qtc_QGraphicsView_resizeEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QGraphicsViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_resizeEvent_h cobj_x0 cobj_x1

instance Qrotate (QGraphicsView a) ((Double)) where
 rotate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_rotate cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsView_rotate" qtc_QGraphicsView_rotate :: Ptr (TQGraphicsView a) -> CDouble -> IO ()

rubberBandSelectionMode :: QGraphicsView a -> (()) -> IO (ItemSelectionMode)
rubberBandSelectionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_rubberBandSelectionMode cobj_x0

foreign import ccall "qtc_QGraphicsView_rubberBandSelectionMode" qtc_QGraphicsView_rubberBandSelectionMode :: Ptr (TQGraphicsView a) -> IO CLong

instance Qqscale (QGraphicsView a) ((Double, Double)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_scale cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsView_scale" qtc_QGraphicsView_scale :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO ()

instance Qscene (QGraphicsView a) (()) where
 scene x0 ()
  = withQGraphicsSceneResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_scene cobj_x0

foreign import ccall "qtc_QGraphicsView_scene" qtc_QGraphicsView_scene :: Ptr (TQGraphicsView a) -> IO (Ptr (TQGraphicsScene ()))

instance QqsceneRect (QGraphicsView a) (()) where
 qsceneRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sceneRect cobj_x0

foreign import ccall "qtc_QGraphicsView_sceneRect" qtc_QGraphicsView_sceneRect :: Ptr (TQGraphicsView a) -> IO (Ptr (TQRectF ()))

instance QsceneRect (QGraphicsView a) (()) where
 sceneRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sceneRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsView_sceneRect_qth" qtc_QGraphicsView_sceneRect_qth :: Ptr (TQGraphicsView a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QscrollContentsBy (QGraphicsView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGraphicsView_scrollContentsBy_h" qtc_QGraphicsView_scrollContentsBy_h :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QGraphicsViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QsetAlignment (QGraphicsView a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsView_setAlignment" qtc_QGraphicsView_setAlignment :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetBackgroundBrush (QGraphicsView a) ((QBrush t1)) where
 setBackgroundBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setBackgroundBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setBackgroundBrush" qtc_QGraphicsView_setBackgroundBrush :: Ptr (TQGraphicsView a) -> Ptr (TQBrush t1) -> IO ()

instance QsetCacheMode (QGraphicsView a) ((QGraphicsViewCacheMode)) where
 setCacheMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setCacheMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsView_setCacheMode" qtc_QGraphicsView_setCacheMode :: Ptr (TQGraphicsView a) -> CLong -> IO ()

setDragMode :: QGraphicsView a -> ((DragMode)) -> IO ()
setDragMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setDragMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setDragMode" qtc_QGraphicsView_setDragMode :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetForegroundBrush (QGraphicsView a) ((QBrush t1)) where
 setForegroundBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setForegroundBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setForegroundBrush" qtc_QGraphicsView_setForegroundBrush :: Ptr (TQGraphicsView a) -> Ptr (TQBrush t1) -> IO ()

setInteractive :: QGraphicsView a -> ((Bool)) -> IO ()
setInteractive x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setInteractive cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_setInteractive" qtc_QGraphicsView_setInteractive :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance QsetMatrix (QGraphicsView a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setMatrix" qtc_QGraphicsView_setMatrix :: Ptr (TQGraphicsView a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetMatrix (QGraphicsView a) ((QMatrix t1, Bool)) where
 setMatrix x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setMatrix1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsView_setMatrix1" qtc_QGraphicsView_setMatrix1 :: Ptr (TQGraphicsView a) -> Ptr (TQMatrix t1) -> CBool -> IO ()

class QsetOptimizationFlag x1 where
 setOptimizationFlag :: QGraphicsView a -> x1 -> IO ()

instance QsetOptimizationFlag ((OptimizationFlag)) where
 setOptimizationFlag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setOptimizationFlag cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setOptimizationFlag" qtc_QGraphicsView_setOptimizationFlag :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetOptimizationFlag ((OptimizationFlag, Bool)) where
 setOptimizationFlag x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setOptimizationFlag1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QGraphicsView_setOptimizationFlag1" qtc_QGraphicsView_setOptimizationFlag1 :: Ptr (TQGraphicsView a) -> CLong -> CBool -> IO ()

setOptimizationFlags :: QGraphicsView a -> ((OptimizationFlags)) -> IO ()
setOptimizationFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setOptimizationFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsView_setOptimizationFlags" qtc_QGraphicsView_setOptimizationFlags :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetRenderHint (QGraphicsView a) ((RenderHint)) where
 setRenderHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setRenderHint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setRenderHint" qtc_QGraphicsView_setRenderHint :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetRenderHint (QGraphicsView a) ((RenderHint, Bool)) where
 setRenderHint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setRenderHint1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QGraphicsView_setRenderHint1" qtc_QGraphicsView_setRenderHint1 :: Ptr (TQGraphicsView a) -> CLong -> CBool -> IO ()

instance QsetRenderHints (QGraphicsView a) ((RenderHints)) where
 setRenderHints x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setRenderHints cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsView_setRenderHints" qtc_QGraphicsView_setRenderHints :: Ptr (TQGraphicsView a) -> CLong -> IO ()

setResizeAnchor :: QGraphicsView a -> ((ViewportAnchor)) -> IO ()
setResizeAnchor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setResizeAnchor cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setResizeAnchor" qtc_QGraphicsView_setResizeAnchor :: Ptr (TQGraphicsView a) -> CLong -> IO ()

setRubberBandSelectionMode :: QGraphicsView a -> ((ItemSelectionMode)) -> IO ()
setRubberBandSelectionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setRubberBandSelectionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setRubberBandSelectionMode" qtc_QGraphicsView_setRubberBandSelectionMode :: Ptr (TQGraphicsView a) -> CLong -> IO ()

setScene :: QGraphicsView a -> ((QGraphicsScene t1)) -> IO ()
setScene x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setScene" qtc_QGraphicsView_setScene :: Ptr (TQGraphicsView a) -> Ptr (TQGraphicsScene t1) -> IO ()

instance QsetSceneRect (QGraphicsView a) ((Double, Double, Double, Double)) where
 setSceneRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setSceneRect1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsView_setSceneRect1" qtc_QGraphicsView_setSceneRect1 :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqsetSceneRect (QGraphicsView a) ((QRectF t1)) where
 qsetSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setSceneRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setSceneRect" qtc_QGraphicsView_setSceneRect :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO ()

instance QsetSceneRect (QGraphicsView a) ((RectF)) where
 setSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_setSceneRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_setSceneRect_qth" qtc_QGraphicsView_setSceneRect_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetTransform (QGraphicsView a) ((QTransform t1)) where
 setTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setTransform" qtc_QGraphicsView_setTransform :: Ptr (TQGraphicsView a) -> Ptr (TQTransform t1) -> IO ()

instance QsetTransform (QGraphicsView a) ((QTransform t1, Bool)) where
 setTransform x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setTransform1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsView_setTransform1" qtc_QGraphicsView_setTransform1 :: Ptr (TQGraphicsView a) -> Ptr (TQTransform t1) -> CBool -> IO ()

setTransformationAnchor :: QGraphicsView a -> ((ViewportAnchor)) -> IO ()
setTransformationAnchor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setTransformationAnchor cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setTransformationAnchor" qtc_QGraphicsView_setTransformationAnchor :: Ptr (TQGraphicsView a) -> CLong -> IO ()

setViewportUpdateMode :: QGraphicsView a -> ((ViewportUpdateMode)) -> IO ()
setViewportUpdateMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setViewportUpdateMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_setViewportUpdateMode" qtc_QGraphicsView_setViewportUpdateMode :: Ptr (TQGraphicsView a) -> CLong -> IO ()

instance QsetupViewport (QGraphicsView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setupViewport" qtc_QGraphicsView_setupViewport :: Ptr (TQGraphicsView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QGraphicsViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setupViewport cobj_x0 cobj_x1

instance Qshear (QGraphicsView a) ((Double, Double)) where
 shear x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_shear cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsView_shear" qtc_QGraphicsView_shear :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO ()

instance QshowEvent (QGraphicsView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_showEvent_h" qtc_QGraphicsView_showEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QGraphicsViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QGraphicsView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sizeHint_h cobj_x0

foreign import ccall "qtc_QGraphicsView_sizeHint_h" qtc_QGraphicsView_sizeHint_h :: Ptr (TQGraphicsView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QGraphicsViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sizeHint_h cobj_x0

instance QsizeHint (QGraphicsView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGraphicsView_sizeHint_qth_h" qtc_QGraphicsView_sizeHint_qth_h :: Ptr (TQGraphicsView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QGraphicsViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qtransform (QGraphicsView a) (()) where
 transform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_transform cobj_x0

foreign import ccall "qtc_QGraphicsView_transform" qtc_QGraphicsView_transform :: Ptr (TQGraphicsView a) -> IO (Ptr (TQTransform ()))

transformationAnchor :: QGraphicsView a -> (()) -> IO (ViewportAnchor)
transformationAnchor x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_transformationAnchor cobj_x0

foreign import ccall "qtc_QGraphicsView_transformationAnchor" qtc_QGraphicsView_transformationAnchor :: Ptr (TQGraphicsView a) -> IO CLong

instance Qqtranslate (QGraphicsView a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_translate cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsView_translate" qtc_QGraphicsView_translate :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> IO ()

qupdateSceneRect :: QGraphicsView a -> ((QRectF t1)) -> IO ()
qupdateSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_updateSceneRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_updateSceneRect" qtc_QGraphicsView_updateSceneRect :: Ptr (TQGraphicsView a) -> Ptr (TQRectF t1) -> IO ()

updateSceneRect :: QGraphicsView a -> ((RectF)) -> IO ()
updateSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsView_updateSceneRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsView_updateSceneRect_qth" qtc_QGraphicsView_updateSceneRect_qth :: Ptr (TQGraphicsView a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QviewportEvent (QGraphicsView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_viewportEvent_h" qtc_QGraphicsView_viewportEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QGraphicsViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_viewportEvent_h cobj_x0 cobj_x1

viewportTransform :: QGraphicsView a -> (()) -> IO (QTransform ())
viewportTransform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_viewportTransform cobj_x0

foreign import ccall "qtc_QGraphicsView_viewportTransform" qtc_QGraphicsView_viewportTransform :: Ptr (TQGraphicsView a) -> IO (Ptr (TQTransform ()))

viewportUpdateMode :: QGraphicsView a -> (()) -> IO (ViewportUpdateMode)
viewportUpdateMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_viewportUpdateMode cobj_x0

foreign import ccall "qtc_QGraphicsView_viewportUpdateMode" qtc_QGraphicsView_viewportUpdateMode :: Ptr (TQGraphicsView a) -> IO CLong

instance QwheelEvent (QGraphicsView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_wheelEvent_h" qtc_QGraphicsView_wheelEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_wheelEvent_h cobj_x0 cobj_x1

qGraphicsView_delete :: QGraphicsView a -> IO ()
qGraphicsView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_delete cobj_x0

foreign import ccall "qtc_QGraphicsView_delete" qtc_QGraphicsView_delete :: Ptr (TQGraphicsView a) -> IO ()

qGraphicsView_deleteLater :: QGraphicsView a -> IO ()
qGraphicsView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_deleteLater cobj_x0

foreign import ccall "qtc_QGraphicsView_deleteLater" qtc_QGraphicsView_deleteLater :: Ptr (TQGraphicsView a) -> IO ()

instance QqminimumSizeHint (QGraphicsView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QGraphicsView_minimumSizeHint_h" qtc_QGraphicsView_minimumSizeHint_h :: Ptr (TQGraphicsView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QGraphicsViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QGraphicsView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGraphicsView_minimumSizeHint_qth_h" qtc_QGraphicsView_minimumSizeHint_qth_h :: Ptr (TQGraphicsView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QGraphicsViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QGraphicsView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGraphicsView_setViewportMargins" qtc_QGraphicsView_setViewportMargins :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QGraphicsViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QchangeEvent (QGraphicsView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_changeEvent_h" qtc_QGraphicsView_changeEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QGraphicsViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QGraphicsView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_drawFrame" qtc_QGraphicsView_drawFrame :: Ptr (TQGraphicsView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QGraphicsViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QGraphicsView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_actionEvent_h" qtc_QGraphicsView_actionEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QGraphicsViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QGraphicsView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_addAction" qtc_QGraphicsView_addAction :: Ptr (TQGraphicsView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QGraphicsViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QGraphicsView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_closeEvent_h" qtc_QGraphicsView_closeEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QGraphicsViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QGraphicsView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_create cobj_x0

foreign import ccall "qtc_QGraphicsView_create" qtc_QGraphicsView_create :: Ptr (TQGraphicsView a) -> IO ()

instance Qcreate (QGraphicsViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_create cobj_x0

instance Qcreate (QGraphicsView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_create1" qtc_QGraphicsView_create1 :: Ptr (TQGraphicsView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QGraphicsViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create1 cobj_x0 cobj_x1

instance Qcreate (QGraphicsView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsView_create2" qtc_QGraphicsView_create2 :: Ptr (TQGraphicsView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QGraphicsViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QGraphicsView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QGraphicsView_create3" qtc_QGraphicsView_create3 :: Ptr (TQGraphicsView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QGraphicsViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QGraphicsView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy cobj_x0

foreign import ccall "qtc_QGraphicsView_destroy" qtc_QGraphicsView_destroy :: Ptr (TQGraphicsView a) -> IO ()

instance Qdestroy (QGraphicsViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy cobj_x0

instance Qdestroy (QGraphicsView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_destroy1" qtc_QGraphicsView_destroy1 :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance Qdestroy (QGraphicsViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QGraphicsView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QGraphicsView_destroy2" qtc_QGraphicsView_destroy2 :: Ptr (TQGraphicsView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QGraphicsViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QGraphicsView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_devType_h cobj_x0

foreign import ccall "qtc_QGraphicsView_devType_h" qtc_QGraphicsView_devType_h :: Ptr (TQGraphicsView a) -> IO CInt

instance QdevType (QGraphicsViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_devType_h cobj_x0

instance QenabledChange (QGraphicsView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_enabledChange" qtc_QGraphicsView_enabledChange :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance QenabledChange (QGraphicsViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QGraphicsView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_enterEvent_h" qtc_QGraphicsView_enterEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QGraphicsViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QGraphicsView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusNextChild cobj_x0

foreign import ccall "qtc_QGraphicsView_focusNextChild" qtc_QGraphicsView_focusNextChild :: Ptr (TQGraphicsView a) -> IO CBool

instance QfocusNextChild (QGraphicsViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusNextChild cobj_x0

instance QfocusNextPrevChild (QGraphicsView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_focusNextPrevChild" qtc_QGraphicsView_focusNextPrevChild :: Ptr (TQGraphicsView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QGraphicsViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QGraphicsView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QGraphicsView_focusPreviousChild" qtc_QGraphicsView_focusPreviousChild :: Ptr (TQGraphicsView a) -> IO CBool

instance QfocusPreviousChild (QGraphicsViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_focusPreviousChild cobj_x0

instance QfontChange (QGraphicsView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_fontChange" qtc_QGraphicsView_fontChange :: Ptr (TQGraphicsView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QGraphicsViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QGraphicsView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsView_heightForWidth_h" qtc_QGraphicsView_heightForWidth_h :: Ptr (TQGraphicsView a) -> CInt -> IO CInt

instance QheightForWidth (QGraphicsViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QGraphicsView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_hideEvent_h" qtc_QGraphicsView_hideEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QGraphicsViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_hideEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QGraphicsView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_languageChange cobj_x0

foreign import ccall "qtc_QGraphicsView_languageChange" qtc_QGraphicsView_languageChange :: Ptr (TQGraphicsView a) -> IO ()

instance QlanguageChange (QGraphicsViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_languageChange cobj_x0

instance QleaveEvent (QGraphicsView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_leaveEvent_h" qtc_QGraphicsView_leaveEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QGraphicsViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QGraphicsView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsView_metric" qtc_QGraphicsView_metric :: Ptr (TQGraphicsView a) -> CLong -> IO CInt

instance Qmetric (QGraphicsViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QGraphicsView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGraphicsView_move1" qtc_QGraphicsView_move1 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO ()

instance Qmove (QGraphicsViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QGraphicsView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QGraphicsView_move_qth" qtc_QGraphicsView_move_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO ()

instance Qmove (QGraphicsViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QGraphicsView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QGraphicsView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_move" qtc_QGraphicsView_move :: Ptr (TQGraphicsView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QGraphicsViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_move cobj_x0 cobj_x1

instance QmoveEvent (QGraphicsView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_moveEvent_h" qtc_QGraphicsView_moveEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QGraphicsViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QGraphicsView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_paintEngine_h cobj_x0

foreign import ccall "qtc_QGraphicsView_paintEngine_h" qtc_QGraphicsView_paintEngine_h :: Ptr (TQGraphicsView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QGraphicsViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_paintEngine_h cobj_x0

instance QpaletteChange (QGraphicsView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_paletteChange" qtc_QGraphicsView_paletteChange :: Ptr (TQGraphicsView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QGraphicsViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QGraphicsView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_repaint cobj_x0

foreign import ccall "qtc_QGraphicsView_repaint" qtc_QGraphicsView_repaint :: Ptr (TQGraphicsView a) -> IO ()

instance Qrepaint (QGraphicsViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_repaint cobj_x0

instance Qrepaint (QGraphicsView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGraphicsView_repaint2" qtc_QGraphicsView_repaint2 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QGraphicsViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QGraphicsView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_repaint1" qtc_QGraphicsView_repaint1 :: Ptr (TQGraphicsView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QGraphicsViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QGraphicsView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resetInputContext cobj_x0

foreign import ccall "qtc_QGraphicsView_resetInputContext" qtc_QGraphicsView_resetInputContext :: Ptr (TQGraphicsView a) -> IO ()

instance QresetInputContext (QGraphicsViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resetInputContext cobj_x0

instance Qresize (QGraphicsView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGraphicsView_resize1" qtc_QGraphicsView_resize1 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO ()

instance Qresize (QGraphicsViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QGraphicsView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_resize" qtc_QGraphicsView_resize :: Ptr (TQGraphicsView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QGraphicsViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_resize cobj_x0 cobj_x1

instance Qresize (QGraphicsView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGraphicsView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QGraphicsView_resize_qth" qtc_QGraphicsView_resize_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> IO ()

instance Qresize (QGraphicsViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QGraphicsView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QGraphicsView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QGraphicsView_setGeometry1" qtc_QGraphicsView_setGeometry1 :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGraphicsViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QGraphicsView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_setGeometry" qtc_QGraphicsView_setGeometry :: Ptr (TQGraphicsView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QGraphicsViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QGraphicsView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGraphicsView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGraphicsView_setGeometry_qth" qtc_QGraphicsView_setGeometry_qth :: Ptr (TQGraphicsView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGraphicsViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGraphicsView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QGraphicsView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_setMouseTracking" qtc_QGraphicsView_setMouseTracking :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance QsetMouseTracking (QGraphicsViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QGraphicsView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_setVisible_h" qtc_QGraphicsView_setVisible_h :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance QsetVisible (QGraphicsViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QGraphicsView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_tabletEvent_h" qtc_QGraphicsView_tabletEvent_h :: Ptr (TQGraphicsView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QGraphicsViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QGraphicsView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QGraphicsView_updateMicroFocus" qtc_QGraphicsView_updateMicroFocus :: Ptr (TQGraphicsView a) -> IO ()

instance QupdateMicroFocus (QGraphicsViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QGraphicsView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsView_windowActivationChange" qtc_QGraphicsView_windowActivationChange :: Ptr (TQGraphicsView a) -> CBool -> IO ()

instance QwindowActivationChange (QGraphicsViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QGraphicsView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_childEvent" qtc_QGraphicsView_childEvent :: Ptr (TQGraphicsView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGraphicsViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QGraphicsView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsView_connectNotify" qtc_QGraphicsView_connectNotify :: Ptr (TQGraphicsView a) -> CWString -> IO ()

instance QconnectNotify (QGraphicsViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGraphicsView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_customEvent" qtc_QGraphicsView_customEvent :: Ptr (TQGraphicsView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGraphicsViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGraphicsView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsView_disconnectNotify" qtc_QGraphicsView_disconnectNotify :: Ptr (TQGraphicsView a) -> CWString -> IO ()

instance QdisconnectNotify (QGraphicsViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QGraphicsView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsView_eventFilter_h" qtc_QGraphicsView_eventFilter_h :: Ptr (TQGraphicsView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGraphicsViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGraphicsView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsView_receivers" qtc_QGraphicsView_receivers :: Ptr (TQGraphicsView a) -> CWString -> IO CInt

instance Qreceivers (QGraphicsViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsView_receivers cobj_x0 cstr_x1

instance Qsender (QGraphicsView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sender cobj_x0

foreign import ccall "qtc_QGraphicsView_sender" qtc_QGraphicsView_sender :: Ptr (TQGraphicsView a) -> IO (Ptr (TQObject ()))

instance Qsender (QGraphicsViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsView_sender cobj_x0

instance QtimerEvent (QGraphicsView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsView_timerEvent" qtc_QGraphicsView_timerEvent :: Ptr (TQGraphicsView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGraphicsViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsView_timerEvent cobj_x0 cobj_x1

