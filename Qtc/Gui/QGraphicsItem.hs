{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsItem (
  QqGraphicsItem(..)
  ,QqGraphicsItem_nf(..)
  ,children
  ,qGraphicsItem_delete, qGraphicsItem_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QGraphicsItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsItem_userMethod" qtc_QGraphicsItem_userMethod :: Ptr (TQGraphicsItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsItem_userMethodVariant" qtc_QGraphicsItem_userMethodVariant :: Ptr (TQGraphicsItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsItem x1 where
  qGraphicsItem :: x1 -> IO (QGraphicsItem ())

instance QqGraphicsItem (()) where
 qGraphicsItem ()
  = withQGraphicsItemResult $
    qtc_QGraphicsItem

foreign import ccall "qtc_QGraphicsItem" qtc_QGraphicsItem :: IO (Ptr (TQGraphicsItem ()))

instance QqGraphicsItem ((QGraphicsItem t1)) where
 qGraphicsItem (x1)
  = withQGraphicsItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem1 cobj_x1

foreign import ccall "qtc_QGraphicsItem1" qtc_QGraphicsItem1 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsItem ()))

instance QqGraphicsItem ((QGraphicsTextItem t1)) where
 qGraphicsItem (x1)
  = withQGraphicsItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem1_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsItem1_graphicstextitem" qtc_QGraphicsItem1_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsItem ()))

instance QqGraphicsItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsItem (x1, x2)
  = withQGraphicsItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem2 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem2" qtc_QGraphicsItem2 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsItem ()))

instance QqGraphicsItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsItem (x1, x2)
  = withQGraphicsItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem2_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem2_graphicstextitem" qtc_QGraphicsItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsItem ()))

class QqGraphicsItem_nf x1 where
  qGraphicsItem_nf :: x1 -> IO (QGraphicsItem ())

instance QqGraphicsItem_nf (()) where
 qGraphicsItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsItem

instance QqGraphicsItem_nf ((QGraphicsItem t1)) where
 qGraphicsItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem1 cobj_x1

instance QqGraphicsItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem1_graphicstextitem cobj_x1

instance QqGraphicsItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem2 cobj_x1 cobj_x2

instance QqGraphicsItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem2_graphicstextitem cobj_x1 cobj_x2

instance QacceptDrops (QGraphicsItem a) (()) where
 acceptDrops x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_acceptDrops cobj_x0

foreign import ccall "qtc_QGraphicsItem_acceptDrops" qtc_QGraphicsItem_acceptDrops :: Ptr (TQGraphicsItem a) -> IO CBool

instance QacceptedMouseButtons (QGraphicsItem a) (()) where
 acceptedMouseButtons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_acceptedMouseButtons cobj_x0

foreign import ccall "qtc_QGraphicsItem_acceptedMouseButtons" qtc_QGraphicsItem_acceptedMouseButtons :: Ptr (TQGraphicsItem a) -> IO CLong

instance QacceptsHoverEvents (QGraphicsItem a) (()) where
 acceptsHoverEvents x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_acceptsHoverEvents cobj_x0

foreign import ccall "qtc_QGraphicsItem_acceptsHoverEvents" qtc_QGraphicsItem_acceptsHoverEvents :: Ptr (TQGraphicsItem a) -> IO CBool

instance QaddToIndex (QGraphicsItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsItem_addToIndex" qtc_QGraphicsItem_addToIndex :: Ptr (TQGraphicsItem a) -> IO ()

instance QaddToIndex (QGraphicsItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_addToIndex cobj_x0

instance Qadvance (QGraphicsItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsItem_advance_h" qtc_QGraphicsItem_advance_h :: Ptr (TQGraphicsItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_advance_h cobj_x0 (toCInt x1)

instance QqqboundingRect (QGraphicsItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsItem_boundingRect_h" qtc_QGraphicsItem_boundingRect_h :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsItem_boundingRect_qth_h" qtc_QGraphicsItem_boundingRect_qth_h :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

children :: QGraphicsItem a -> (()) -> IO ([QGraphicsItem ()])
children x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_children cobj_x0 arr

foreign import ccall "qtc_QGraphicsItem_children" qtc_QGraphicsItem_children :: Ptr (TQGraphicsItem a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QqchildrenBoundingRect (QGraphicsItem a) (()) where
 qchildrenBoundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_childrenBoundingRect cobj_x0

foreign import ccall "qtc_QGraphicsItem_childrenBoundingRect" qtc_QGraphicsItem_childrenBoundingRect :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQRectF ()))

instance QchildrenBoundingRect (QGraphicsItem a) (()) where
 childrenBoundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_childrenBoundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsItem_childrenBoundingRect_qth" qtc_QGraphicsItem_childrenBoundingRect_qth :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QclearFocus (QGraphicsItem a) (()) where
 clearFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_clearFocus cobj_x0

foreign import ccall "qtc_QGraphicsItem_clearFocus" qtc_QGraphicsItem_clearFocus :: Ptr (TQGraphicsItem a) -> IO ()

instance QcollidesWithItem (QGraphicsItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithItem_h" qtc_QGraphicsItem_collidesWithItem_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithItem1_h" qtc_QGraphicsItem_collidesWithItem1_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_collidesWithPath_h" qtc_QGraphicsItem_collidesWithPath_h :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItem_collidesWithPath1_h" qtc_QGraphicsItem_collidesWithPath1_h :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidingItems (QGraphicsItem a) (()) where
 collidingItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_collidingItems cobj_x0 arr

foreign import ccall "qtc_QGraphicsItem_collidingItems" qtc_QGraphicsItem_collidingItems :: Ptr (TQGraphicsItem a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcollidingItems (QGraphicsItem a) ((ItemSelectionMode)) where
 collidingItems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_collidingItems1 cobj_x0 (toCLong $ qEnum_toInt x1) arr

foreign import ccall "qtc_QGraphicsItem_collidingItems1" qtc_QGraphicsItem_collidingItems1 :: Ptr (TQGraphicsItem a) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqcontains (QGraphicsItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsItem_contains_qth_h" qtc_QGraphicsItem_contains_qth_h :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_contains_h" qtc_QGraphicsItem_contains_h :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contains_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QGraphicsItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_contextMenuEvent_h" qtc_QGraphicsItem_contextMenuEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcursor (QGraphicsItem a) (()) where
 cursor x0 ()
  = withQCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_cursor cobj_x0

foreign import ccall "qtc_QGraphicsItem_cursor" qtc_QGraphicsItem_cursor :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQCursor ()))

instance Qqdata (QGraphicsItem ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_data cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsItem_data" qtc_QGraphicsItem_data :: Ptr (TQGraphicsItem a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QGraphicsItemSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_data cobj_x0 (toCInt x1)

instance Qqdata_nf (QGraphicsItem ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_data cobj_x0 (toCInt x1)

instance Qqdata_nf (QGraphicsItemSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_data cobj_x0 (toCInt x1)

instance QdeviceTransform (QGraphicsItem a) ((QTransform t1)) where
 deviceTransform x0 (x1)
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_deviceTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_deviceTransform" qtc_QGraphicsItem_deviceTransform :: Ptr (TQGraphicsItem a) -> Ptr (TQTransform t1) -> IO (Ptr (TQTransform ()))

instance QdragEnterEvent (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragEnterEvent_h" qtc_QGraphicsItem_dragEnterEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragLeaveEvent_h" qtc_QGraphicsItem_dragLeaveEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dragMoveEvent_h" qtc_QGraphicsItem_dragMoveEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_dropEvent_h" qtc_QGraphicsItem_dropEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_dropEvent_h cobj_x0 cobj_x1

instance QensureVisible (QGraphicsItem a) (()) where
 ensureVisible x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_ensureVisible cobj_x0

foreign import ccall "qtc_QGraphicsItem_ensureVisible" qtc_QGraphicsItem_ensureVisible :: Ptr (TQGraphicsItem a) -> IO ()

instance QensureVisible (QGraphicsItem a) ((Double, Double, Double, Double)) where
 ensureVisible x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_ensureVisible4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_ensureVisible4" qtc_QGraphicsItem_ensureVisible4 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsItem a) ((Double, Double, Double, Double, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_ensureVisible5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5)

foreign import ccall "qtc_QGraphicsItem_ensureVisible5" qtc_QGraphicsItem_ensureVisible5 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsItem a) ((Double, Double, Double, Double, Int, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_ensureVisible6 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QGraphicsItem_ensureVisible6" qtc_QGraphicsItem_ensureVisible6 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QqensureVisible (QGraphicsItem a) ((QRectF t1)) where
 qensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_ensureVisible1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_ensureVisible1" qtc_QGraphicsItem_ensureVisible1 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO ()

instance QqensureVisible (QGraphicsItem a) ((QRectF t1, Int)) where
 qensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_ensureVisible2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGraphicsItem_ensureVisible2" qtc_QGraphicsItem_ensureVisible2 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> CInt -> IO ()

instance QqensureVisible (QGraphicsItem a) ((QRectF t1, Int, Int)) where
 qensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_ensureVisible3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsItem_ensureVisible3" qtc_QGraphicsItem_ensureVisible3 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QensureVisible (QGraphicsItem a) ((RectF)) where
 ensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_ensureVisible1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_ensureVisible1_qth" qtc_QGraphicsItem_ensureVisible1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsItem a) ((RectF, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_ensureVisible2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2)

foreign import ccall "qtc_QGraphicsItem_ensureVisible2_qth" qtc_QGraphicsItem_ensureVisible2_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsItem a) ((RectF, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_ensureVisible3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsItem_ensureVisible3_qth" qtc_QGraphicsItem_ensureVisible3_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance Qextension (QGraphicsItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_extension" qtc_QGraphicsItem_extension :: Ptr (TQGraphicsItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_extension cobj_x0 cobj_x1

instance Qflags (QGraphicsItem a) (()) (IO (GraphicsItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_flags cobj_x0

foreign import ccall "qtc_QGraphicsItem_flags" qtc_QGraphicsItem_flags :: Ptr (TQGraphicsItem a) -> IO CLong

instance QfocusInEvent (QGraphicsItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_focusInEvent_h" qtc_QGraphicsItem_focusInEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_focusOutEvent_h" qtc_QGraphicsItem_focusOutEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_focusOutEvent_h cobj_x0 cobj_x1

instance Qgroup (QGraphicsItem a) (()) (IO (QGraphicsItemGroup ())) where
 group x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_group cobj_x0

foreign import ccall "qtc_QGraphicsItem_group" qtc_QGraphicsItem_group :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQGraphicsItemGroup ()))

instance QhandlesChildEvents (QGraphicsItem a) (()) where
 handlesChildEvents x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_handlesChildEvents cobj_x0

foreign import ccall "qtc_QGraphicsItem_handlesChildEvents" qtc_QGraphicsItem_handlesChildEvents :: Ptr (TQGraphicsItem a) -> IO CBool

instance QhasCursor (QGraphicsItem a) (()) where
 hasCursor x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_hasCursor cobj_x0

foreign import ccall "qtc_QGraphicsItem_hasCursor" qtc_QGraphicsItem_hasCursor :: Ptr (TQGraphicsItem a) -> IO CBool

instance QhasFocus (QGraphicsItem a) (()) where
 hasFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_hasFocus cobj_x0

foreign import ccall "qtc_QGraphicsItem_hasFocus" qtc_QGraphicsItem_hasFocus :: Ptr (TQGraphicsItem a) -> IO CBool

instance Qhide (QGraphicsItem a) (()) where
 hide x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_hide cobj_x0

foreign import ccall "qtc_QGraphicsItem_hide" qtc_QGraphicsItem_hide :: Ptr (TQGraphicsItem a) -> IO ()

instance QhoverEnterEvent (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverEnterEvent_h" qtc_QGraphicsItem_hoverEnterEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverLeaveEvent_h" qtc_QGraphicsItem_hoverLeaveEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_hoverMoveEvent_h" qtc_QGraphicsItem_hoverMoveEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_inputMethodEvent_h" qtc_QGraphicsItem_inputMethodEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItem_inputMethodQuery_h" qtc_QGraphicsItem_inputMethodQuery_h :: Ptr (TQGraphicsItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QinstallSceneEventFilter (QGraphicsItem a) ((QGraphicsItem t1)) where
 installSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_installSceneEventFilter cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_installSceneEventFilter" qtc_QGraphicsItem_installSceneEventFilter :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QinstallSceneEventFilter (QGraphicsItem a) ((QGraphicsTextItem t1)) where
 installSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_installSceneEventFilter_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_installSceneEventFilter_graphicstextitem" qtc_QGraphicsItem_installSceneEventFilter_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QisAncestorOf (QGraphicsItem a) ((QGraphicsItem t1)) where
 isAncestorOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isAncestorOf cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isAncestorOf" qtc_QGraphicsItem_isAncestorOf :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisAncestorOf (QGraphicsItem a) ((QGraphicsTextItem t1)) where
 isAncestorOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isAncestorOf_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isAncestorOf_graphicstextitem" qtc_QGraphicsItem_isAncestorOf_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisEnabled (QGraphicsItem a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_isEnabled cobj_x0

foreign import ccall "qtc_QGraphicsItem_isEnabled" qtc_QGraphicsItem_isEnabled :: Ptr (TQGraphicsItem a) -> IO CBool

instance QisObscured (QGraphicsItem a) (()) where
 isObscured x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_isObscured cobj_x0

foreign import ccall "qtc_QGraphicsItem_isObscured" qtc_QGraphicsItem_isObscured :: Ptr (TQGraphicsItem a) -> IO CBool

instance QisObscured (QGraphicsItem a) ((Double, Double, Double, Double)) where
 isObscured x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_isObscured2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_isObscured2" qtc_QGraphicsItem_isObscured2 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QqisObscured (QGraphicsItem a) ((QRectF t1)) where
 qisObscured x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscured1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isObscured1" qtc_QGraphicsItem_isObscured1 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO CBool

instance QisObscured (QGraphicsItem a) ((RectF)) where
 isObscured x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_isObscured1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_isObscured1_qth" qtc_QGraphicsItem_isObscured1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QisObscuredBy (QGraphicsItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isObscuredBy_h" qtc_QGraphicsItem_isObscuredBy_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QisSelected (QGraphicsItem a) (()) where
 isSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_isSelected cobj_x0

foreign import ccall "qtc_QGraphicsItem_isSelected" qtc_QGraphicsItem_isSelected :: Ptr (TQGraphicsItem a) -> IO CBool

instance QisVisible (QGraphicsItem a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_isVisible cobj_x0

foreign import ccall "qtc_QGraphicsItem_isVisible" qtc_QGraphicsItem_isVisible :: Ptr (TQGraphicsItem a) -> IO CBool

instance QitemChange (QGraphicsItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItem_itemChange_h" qtc_QGraphicsItem_itemChange_h :: Ptr (TQGraphicsItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_keyPressEvent_h" qtc_QGraphicsItem_keyPressEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_keyReleaseEvent_h" qtc_QGraphicsItem_keyReleaseEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double)) (IO (PointF)) where
 mapFromItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem4_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromItem4_qth" qtc_QGraphicsItem_mapFromItem4_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, PointF)) (IO (PointF)) where
 mapFromItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsItem_mapFromItem2_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromItem2_qth" qtc_QGraphicsItem_mapFromItem2_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (PointF)) where
 mapFromItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem4_graphicstextitem_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromItem4_graphicstextitem_qth" qtc_QGraphicsItem_mapFromItem4_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, PointF)) (IO (PointF)) where
 mapFromItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsItem_mapFromItem2_graphicstextitem_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromItem2_graphicstextitem_qth" qtc_QGraphicsItem_mapFromItem2_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapFromItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem3" qtc_QGraphicsItem_mapFromItem3 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapFromItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem3_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem3_graphicstextitem" qtc_QGraphicsItem_mapFromItem3_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem4 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItem_mapFromItem4" qtc_QGraphicsItem_mapFromItem4 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem2" qtc_QGraphicsItem_mapFromItem2 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem4_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItem_mapFromItem4_graphicstextitem" qtc_QGraphicsItem_mapFromItem4_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem2_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem2_graphicstextitem" qtc_QGraphicsItem_mapFromItem2_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem5 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsItem_mapFromItem5" qtc_QGraphicsItem_mapFromItem5 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem1" qtc_QGraphicsItem_mapFromItem1 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem" qtc_QGraphicsItem_mapFromItem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsItem t1, RectF)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsItem_mapFromItem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsItem_mapFromItem_qth" qtc_QGraphicsItem_mapFromItem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromItem5_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsItem_mapFromItem5_graphicstextitem" qtc_QGraphicsItem_mapFromItem5_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem1_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem1_graphicstextitem" qtc_QGraphicsItem_mapFromItem1_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapFromItem_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapFromItem_graphicstextitem" qtc_QGraphicsItem_mapFromItem_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsItem a) ((QGraphicsTextItem t1, RectF)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsItem_mapFromItem_graphicstextitem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsItem_mapFromItem_graphicstextitem_qth" qtc_QGraphicsItem_mapFromItem_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsItem a) ((Double, Double)) (IO (PointF)) where
 mapFromParent x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromParent4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromParent4_qth" qtc_QGraphicsItem_mapFromParent4_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromParent (QGraphicsItem a) ((PointF)) (IO (PointF)) where
 mapFromParent x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_mapFromParent1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromParent1_qth" qtc_QGraphicsItem_mapFromParent1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromParent (QGraphicsItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapFromParent x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromParent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromParent" qtc_QGraphicsItem_mapFromParent :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromParent (QGraphicsItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapFromParent x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromParent4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_mapFromParent4" qtc_QGraphicsItem_mapFromParent4 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromParent (QGraphicsItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapFromParent x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromParent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromParent1" qtc_QGraphicsItem_mapFromParent1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapFromParent (QGraphicsItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromParent5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_mapFromParent5" qtc_QGraphicsItem_mapFromParent5 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromParent2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromParent2" qtc_QGraphicsItem_mapFromParent2 :: Ptr (TQGraphicsItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromParent (QGraphicsItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromParent3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromParent3" qtc_QGraphicsItem_mapFromParent3 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsItem a) ((RectF)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_mapFromParent3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_mapFromParent3_qth" qtc_QGraphicsItem_mapFromParent3_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsItem a) ((Double, Double)) (IO (PointF)) where
 mapFromScene x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromScene4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromScene4_qth" qtc_QGraphicsItem_mapFromScene4_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromScene (QGraphicsItem a) ((PointF)) (IO (PointF)) where
 mapFromScene x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_mapFromScene1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapFromScene1_qth" qtc_QGraphicsItem_mapFromScene1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromScene (QGraphicsItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapFromScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromScene" qtc_QGraphicsItem_mapFromScene :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromScene (QGraphicsItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapFromScene x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromScene4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_mapFromScene4" qtc_QGraphicsItem_mapFromScene4 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromScene (QGraphicsItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapFromScene x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromScene1" qtc_QGraphicsItem_mapFromScene1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapFromScene (QGraphicsItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapFromScene5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_mapFromScene5" qtc_QGraphicsItem_mapFromScene5 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromScene2" qtc_QGraphicsItem_mapFromScene2 :: Ptr (TQGraphicsItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromScene (QGraphicsItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapFromScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapFromScene3" qtc_QGraphicsItem_mapFromScene3 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsItem a) ((RectF)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_mapFromScene3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_mapFromScene3_qth" qtc_QGraphicsItem_mapFromScene3_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double)) (IO (PointF)) where
 mapToItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem4_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToItem4_qth" qtc_QGraphicsItem_mapToItem4_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, PointF)) (IO (PointF)) where
 mapToItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsItem_mapToItem1_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToItem1_qth" qtc_QGraphicsItem_mapToItem1_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (PointF)) where
 mapToItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem4_graphicstextitem_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToItem4_graphicstextitem_qth" qtc_QGraphicsItem_mapToItem4_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, PointF)) (IO (PointF)) where
 mapToItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsItem_mapToItem1_graphicstextitem_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToItem1_graphicstextitem_qth" qtc_QGraphicsItem_mapToItem1_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapToItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem" qtc_QGraphicsItem_mapToItem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapToItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem_graphicstextitem" qtc_QGraphicsItem_mapToItem_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem4 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItem_mapToItem4" qtc_QGraphicsItem_mapToItem4 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem1" qtc_QGraphicsItem_mapToItem1 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem4_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsItem_mapToItem4_graphicstextitem" qtc_QGraphicsItem_mapToItem4_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem1_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem1_graphicstextitem" qtc_QGraphicsItem_mapToItem1_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem5 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsItem_mapToItem5" qtc_QGraphicsItem_mapToItem5 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem2" qtc_QGraphicsItem_mapToItem2 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem3" qtc_QGraphicsItem_mapToItem3 :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsItem t1, RectF)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsItem_mapToItem3_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsItem_mapToItem3_qth" qtc_QGraphicsItem_mapToItem3_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToItem5_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsItem_mapToItem5_graphicstextitem" qtc_QGraphicsItem_mapToItem5_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem2_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem2_graphicstextitem" qtc_QGraphicsItem_mapToItem2_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_mapToItem3_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_mapToItem3_graphicstextitem" qtc_QGraphicsItem_mapToItem3_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsItem a) ((QGraphicsTextItem t1, RectF)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsItem_mapToItem3_graphicstextitem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsItem_mapToItem3_graphicstextitem_qth" qtc_QGraphicsItem_mapToItem3_graphicstextitem_qth :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsItem a) ((Double, Double)) (IO (PointF)) where
 mapToParent x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToParent4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToParent4_qth" qtc_QGraphicsItem_mapToParent4_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToParent (QGraphicsItem a) ((PointF)) (IO (PointF)) where
 mapToParent x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_mapToParent1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToParent1_qth" qtc_QGraphicsItem_mapToParent1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToParent (QGraphicsItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapToParent x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToParent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToParent" qtc_QGraphicsItem_mapToParent :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapToParent (QGraphicsItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapToParent x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToParent4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_mapToParent4" qtc_QGraphicsItem_mapToParent4 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToParent (QGraphicsItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapToParent x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToParent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToParent1" qtc_QGraphicsItem_mapToParent1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapToParent (QGraphicsItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToParent x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToParent5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_mapToParent5" qtc_QGraphicsItem_mapToParent5 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToParent2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToParent2" qtc_QGraphicsItem_mapToParent2 :: Ptr (TQGraphicsItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapToParent (QGraphicsItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToParent3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToParent3" qtc_QGraphicsItem_mapToParent3 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsItem a) ((RectF)) (IO (QPolygonF ())) where
 mapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_mapToParent3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_mapToParent3_qth" qtc_QGraphicsItem_mapToParent3_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsItem a) ((Double, Double)) (IO (PointF)) where
 mapToScene x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToScene4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToScene4_qth" qtc_QGraphicsItem_mapToScene4_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsItem a) ((PointF)) (IO (PointF)) where
 mapToScene x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_mapToScene1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_mapToScene1_qth" qtc_QGraphicsItem_mapToScene1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapToScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToScene" qtc_QGraphicsItem_mapToScene :: Ptr (TQGraphicsItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapToScene (QGraphicsItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapToScene x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToScene4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_mapToScene4" qtc_QGraphicsItem_mapToScene4 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToScene (QGraphicsItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapToScene x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToScene1" qtc_QGraphicsItem_mapToScene1 :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapToScene (QGraphicsItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToScene x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_mapToScene5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_mapToScene5" qtc_QGraphicsItem_mapToScene5 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToScene2" qtc_QGraphicsItem_mapToScene2 :: Ptr (TQGraphicsItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapToScene (QGraphicsItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mapToScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mapToScene3" qtc_QGraphicsItem_mapToScene3 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsItem a) ((RectF)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_mapToScene3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_mapToScene3_qth" qtc_QGraphicsItem_mapToScene3_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance Qmatrix (QGraphicsItem a) (()) where
 matrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_matrix cobj_x0

foreign import ccall "qtc_QGraphicsItem_matrix" qtc_QGraphicsItem_matrix :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQMatrix ()))

instance QmouseDoubleClickEvent (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseDoubleClickEvent_h" qtc_QGraphicsItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseMoveEvent_h" qtc_QGraphicsItem_mouseMoveEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mousePressEvent_h" qtc_QGraphicsItem_mousePressEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_mouseReleaseEvent_h" qtc_QGraphicsItem_mouseReleaseEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveBy (QGraphicsItem a) ((Double, Double)) where
 moveBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_moveBy cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_moveBy" qtc_QGraphicsItem_moveBy :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance QopaqueArea (QGraphicsItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsItem_opaqueArea_h" qtc_QGraphicsItem_opaqueArea_h :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_paint_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_paint_h" qtc_QGraphicsItem_paint_h :: Ptr (TQGraphicsItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_paint_h cobj_x0 cobj_x1 cobj_x2

instance Qpaint (QGraphicsItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsItem_paint1_h" qtc_QGraphicsItem_paint1_h :: Ptr (TQGraphicsItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QparentItem (QGraphicsItem a) (()) where
 parentItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_parentItem cobj_x0

foreign import ccall "qtc_QGraphicsItem_parentItem" qtc_QGraphicsItem_parentItem :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQGraphicsItem ()))

instance Qpos (QGraphicsItem a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_pos_qth" qtc_QGraphicsItem_pos_qth :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsItem a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_pos cobj_x0

foreign import ccall "qtc_QGraphicsItem_pos" qtc_QGraphicsItem_pos :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPointF ()))

instance QprepareGeometryChange (QGraphicsItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsItem_prepareGeometryChange" qtc_QGraphicsItem_prepareGeometryChange :: Ptr (TQGraphicsItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsItem_removeFromIndex" qtc_QGraphicsItem_removeFromIndex :: Ptr (TQGraphicsItem a) -> IO ()

instance QremoveFromIndex (QGraphicsItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_removeFromIndex cobj_x0

instance QremoveSceneEventFilter (QGraphicsItem a) ((QGraphicsItem t1)) where
 removeSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_removeSceneEventFilter cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_removeSceneEventFilter" qtc_QGraphicsItem_removeSceneEventFilter :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QremoveSceneEventFilter (QGraphicsItem a) ((QGraphicsTextItem t1)) where
 removeSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_removeSceneEventFilter_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_removeSceneEventFilter_graphicstextitem" qtc_QGraphicsItem_removeSceneEventFilter_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QresetMatrix (QGraphicsItem a) (()) where
 resetMatrix x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_resetMatrix cobj_x0

foreign import ccall "qtc_QGraphicsItem_resetMatrix" qtc_QGraphicsItem_resetMatrix :: Ptr (TQGraphicsItem a) -> IO ()

instance QresetTransform (QGraphicsItem a) (()) where
 resetTransform x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_resetTransform cobj_x0

foreign import ccall "qtc_QGraphicsItem_resetTransform" qtc_QGraphicsItem_resetTransform :: Ptr (TQGraphicsItem a) -> IO ()

instance Qrotate (QGraphicsItem a) ((Double)) where
 rotate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_rotate cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItem_rotate" qtc_QGraphicsItem_rotate :: Ptr (TQGraphicsItem a) -> CDouble -> IO ()

instance Qqscale (QGraphicsItem a) ((Double, Double)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_scale cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_scale" qtc_QGraphicsItem_scale :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance Qscene (QGraphicsItem a) (()) where
 scene x0 ()
  = withQGraphicsSceneResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_scene cobj_x0

foreign import ccall "qtc_QGraphicsItem_scene" qtc_QGraphicsItem_scene :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQGraphicsScene ()))

instance QqsceneBoundingRect (QGraphicsItem a) (()) where
 qsceneBoundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_sceneBoundingRect cobj_x0

foreign import ccall "qtc_QGraphicsItem_sceneBoundingRect" qtc_QGraphicsItem_sceneBoundingRect :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQRectF ()))

instance QsceneBoundingRect (QGraphicsItem a) (()) where
 sceneBoundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_sceneBoundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsItem_sceneBoundingRect_qth" qtc_QGraphicsItem_sceneBoundingRect_qth :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QsceneEvent (QGraphicsItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_sceneEvent_h" qtc_QGraphicsItem_sceneEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_sceneEventFilter_h" qtc_QGraphicsItem_sceneEventFilter_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QsceneMatrix (QGraphicsItem a) (()) where
 sceneMatrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_sceneMatrix cobj_x0

foreign import ccall "qtc_QGraphicsItem_sceneMatrix" qtc_QGraphicsItem_sceneMatrix :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQMatrix ()))

instance QscenePos (QGraphicsItem a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsItem_scenePos_qth" qtc_QGraphicsItem_scenePos_qth :: Ptr (TQGraphicsItem a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsItem a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsItem_scenePos" qtc_QGraphicsItem_scenePos :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPointF ()))

instance QsceneTransform (QGraphicsItem a) (()) where
 sceneTransform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_sceneTransform cobj_x0

foreign import ccall "qtc_QGraphicsItem_sceneTransform" qtc_QGraphicsItem_sceneTransform :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQTransform ()))

instance QsetAcceptDrops (QGraphicsItem a) ((Bool)) where
 setAcceptDrops x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setAcceptDrops cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setAcceptDrops" qtc_QGraphicsItem_setAcceptDrops :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetAcceptedMouseButtons (QGraphicsItem a) ((MouseButtons)) where
 setAcceptedMouseButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setAcceptedMouseButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsItem_setAcceptedMouseButtons" qtc_QGraphicsItem_setAcceptedMouseButtons :: Ptr (TQGraphicsItem a) -> CLong -> IO ()

instance QsetAcceptsHoverEvents (QGraphicsItem a) ((Bool)) where
 setAcceptsHoverEvents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setAcceptsHoverEvents cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setAcceptsHoverEvents" qtc_QGraphicsItem_setAcceptsHoverEvents :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetCursor (QGraphicsItem a) ((QCursor t1)) where
 setCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setCursor cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setCursor" qtc_QGraphicsItem_setCursor :: Ptr (TQGraphicsItem a) -> Ptr (TQCursor t1) -> IO ()

instance QsetData (QGraphicsItem a) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_setData cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItem_setData" qtc_QGraphicsItem_setData :: Ptr (TQGraphicsItem a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetEnabled (QGraphicsItem a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setEnabled" qtc_QGraphicsItem_setEnabled :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetExtension (QGraphicsItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItem_setExtension" qtc_QGraphicsItem_setExtension :: Ptr (TQGraphicsItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetFlag (QGraphicsItem a) ((GraphicsItemFlag)) where
 setFlag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setFlag cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItem_setFlag" qtc_QGraphicsItem_setFlag :: Ptr (TQGraphicsItem a) -> CLong -> IO ()

instance QsetFlag (QGraphicsItem a) ((GraphicsItemFlag, Bool)) where
 setFlag x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setFlag1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QGraphicsItem_setFlag1" qtc_QGraphicsItem_setFlag1 :: Ptr (TQGraphicsItem a) -> CLong -> CBool -> IO ()

instance QsetFlags (QGraphicsItem a) ((GraphicsItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsItem_setFlags" qtc_QGraphicsItem_setFlags :: Ptr (TQGraphicsItem a) -> CLong -> IO ()

instance QsetFocus (QGraphicsItem a) (()) where
 setFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setFocus cobj_x0

foreign import ccall "qtc_QGraphicsItem_setFocus" qtc_QGraphicsItem_setFocus :: Ptr (TQGraphicsItem a) -> IO ()

instance QsetFocus (QGraphicsItem a) ((FocusReason)) where
 setFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setFocus1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItem_setFocus1" qtc_QGraphicsItem_setFocus1 :: Ptr (TQGraphicsItem a) -> CLong -> IO ()

instance QsetGroup (QGraphicsItem a) ((QGraphicsItemGroup t1)) where
 setGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setGroup" qtc_QGraphicsItem_setGroup :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItemGroup t1) -> IO ()

instance QsetHandlesChildEvents (QGraphicsItem a) ((Bool)) where
 setHandlesChildEvents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setHandlesChildEvents cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setHandlesChildEvents" qtc_QGraphicsItem_setHandlesChildEvents :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetMatrix (QGraphicsItem a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setMatrix" qtc_QGraphicsItem_setMatrix :: Ptr (TQGraphicsItem a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetMatrix (QGraphicsItem a) ((QMatrix t1, Bool)) where
 setMatrix x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setMatrix1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsItem_setMatrix1" qtc_QGraphicsItem_setMatrix1 :: Ptr (TQGraphicsItem a) -> Ptr (TQMatrix t1) -> CBool -> IO ()

instance QsetParentItem (QGraphicsItem a) ((QGraphicsItem t1)) where
 setParentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setParentItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setParentItem" qtc_QGraphicsItem_setParentItem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QsetParentItem (QGraphicsItem a) ((QGraphicsTextItem t1)) where
 setParentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setParentItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setParentItem_graphicstextitem" qtc_QGraphicsItem_setParentItem_graphicstextitem :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QsetPos (QGraphicsItem a) ((Double, Double)) where
 setPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setPos1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_setPos1" qtc_QGraphicsItem_setPos1 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance QsetPos (QGraphicsItem a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItem_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsItem_setPos_qth" qtc_QGraphicsItem_setPos_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsItem a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setPos" qtc_QGraphicsItem_setPos :: Ptr (TQGraphicsItem a) -> Ptr (TQPointF t1) -> IO ()

instance QsetSelected (QGraphicsItem a) ((Bool)) where
 setSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setSelected" qtc_QGraphicsItem_setSelected :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetToolTip (QGraphicsItem a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsItem_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsItem_setToolTip" qtc_QGraphicsItem_setToolTip :: Ptr (TQGraphicsItem a) -> CWString -> IO ()

instance QsetTransform (QGraphicsItem a) ((QTransform t1)) where
 setTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_setTransform" qtc_QGraphicsItem_setTransform :: Ptr (TQGraphicsItem a) -> Ptr (TQTransform t1) -> IO ()

instance QsetTransform (QGraphicsItem a) ((QTransform t1, Bool)) where
 setTransform x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_setTransform1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsItem_setTransform1" qtc_QGraphicsItem_setTransform1 :: Ptr (TQGraphicsItem a) -> Ptr (TQTransform t1) -> CBool -> IO ()

instance QsetVisible (QGraphicsItem a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsItem_setVisible" qtc_QGraphicsItem_setVisible :: Ptr (TQGraphicsItem a) -> CBool -> IO ()

instance QsetZValue (QGraphicsItem a) ((Double)) where
 setZValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_setZValue cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsItem_setZValue" qtc_QGraphicsItem_setZValue :: Ptr (TQGraphicsItem a) -> CDouble -> IO ()

instance Qshape (QGraphicsItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsItem_shape_h" qtc_QGraphicsItem_shape_h :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_shape_h cobj_x0

instance Qshear (QGraphicsItem a) ((Double, Double)) where
 shear x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_shear cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_shear" qtc_QGraphicsItem_shear :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance Qqshow (QGraphicsItem a) (()) where
 qshow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_show cobj_x0

foreign import ccall "qtc_QGraphicsItem_show" qtc_QGraphicsItem_show :: Ptr (TQGraphicsItem a) -> IO ()

instance QsupportsExtension (QGraphicsItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItem_supportsExtension" qtc_QGraphicsItem_supportsExtension :: Ptr (TQGraphicsItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance QtoolTip (QGraphicsItem a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_toolTip cobj_x0

foreign import ccall "qtc_QGraphicsItem_toolTip" qtc_QGraphicsItem_toolTip :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQString ()))

instance QtopLevelItem (QGraphicsItem a) (()) (IO (QGraphicsItem ())) where
 topLevelItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_topLevelItem cobj_x0

foreign import ccall "qtc_QGraphicsItem_topLevelItem" qtc_QGraphicsItem_topLevelItem :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQGraphicsItem ()))

instance Qtransform (QGraphicsItem a) (()) where
 transform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_transform cobj_x0

foreign import ccall "qtc_QGraphicsItem_transform" qtc_QGraphicsItem_transform :: Ptr (TQGraphicsItem a) -> IO (Ptr (TQTransform ()))

instance Qqtranslate (QGraphicsItem a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_translate cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsItem_translate" qtc_QGraphicsItem_translate :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> IO ()

instance Qqtype (QGraphicsItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsItem_type_h" qtc_QGraphicsItem_type_h :: Ptr (TQGraphicsItem a) -> IO CInt

instance Qqtype (QGraphicsItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_type_h cobj_x0

instance QunsetCursor (QGraphicsItem a) (()) where
 unsetCursor x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_unsetCursor cobj_x0

foreign import ccall "qtc_QGraphicsItem_unsetCursor" qtc_QGraphicsItem_unsetCursor :: Ptr (TQGraphicsItem a) -> IO ()

instance Qupdate (QGraphicsItem a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_update cobj_x0

foreign import ccall "qtc_QGraphicsItem_update" qtc_QGraphicsItem_update :: Ptr (TQGraphicsItem a) -> IO ()

instance Qupdate (QGraphicsItem a) ((Double, Double, Double, Double)) where
 update x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_update2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsItem_update2" qtc_QGraphicsItem_update2 :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qqupdate (QGraphicsItem a) ((QRectF t1)) where
 qupdate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_update1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_update1" qtc_QGraphicsItem_update1 :: Ptr (TQGraphicsItem a) -> Ptr (TQRectF t1) -> IO ()

instance Qupdate (QGraphicsItem a) ((RectF)) where
 update x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsItem_update1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsItem_update1_qth" qtc_QGraphicsItem_update1_qth :: Ptr (TQGraphicsItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QwheelEvent (QGraphicsItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItem_wheelEvent_h" qtc_QGraphicsItem_wheelEvent_h :: Ptr (TQGraphicsItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItem_wheelEvent_h cobj_x0 cobj_x1

instance Qqx (QGraphicsItem a) (()) (IO (Double)) where
 qx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_x cobj_x0

foreign import ccall "qtc_QGraphicsItem_x" qtc_QGraphicsItem_x :: Ptr (TQGraphicsItem a) -> IO CDouble

instance Qqy (QGraphicsItem a) (()) (IO (Double)) where
 qy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_y cobj_x0

foreign import ccall "qtc_QGraphicsItem_y" qtc_QGraphicsItem_y :: Ptr (TQGraphicsItem a) -> IO CDouble

instance QzValue (QGraphicsItem a) (()) where
 zValue x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_zValue cobj_x0

foreign import ccall "qtc_QGraphicsItem_zValue" qtc_QGraphicsItem_zValue :: Ptr (TQGraphicsItem a) -> IO CDouble

qGraphicsItem_delete :: QGraphicsItem a -> IO ()
qGraphicsItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsItem_delete" qtc_QGraphicsItem_delete :: Ptr (TQGraphicsItem a) -> IO ()

qGraphicsItem_delete1 :: QGraphicsItem a -> IO ()
qGraphicsItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsItem_delete1" qtc_QGraphicsItem_delete1 :: Ptr (TQGraphicsItem a) -> IO ()

