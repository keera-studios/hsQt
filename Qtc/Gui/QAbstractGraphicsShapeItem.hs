{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractGraphicsShapeItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractGraphicsShapeItem (
  QqAbstractGraphicsShapeItem(..)
  ,QqAbstractGraphicsShapeItem_nf(..)
  ,qAbstractGraphicsShapeItem_delete, qAbstractGraphicsShapeItem_delete1
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

instance QuserMethod (QAbstractGraphicsShapeItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_userMethod" qtc_QAbstractGraphicsShapeItem_userMethod :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> IO ()

instance QuserMethod (QAbstractGraphicsShapeItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractGraphicsShapeItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractGraphicsShapeItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractGraphicsShapeItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractGraphicsShapeItem_userMethodVariant" qtc_QAbstractGraphicsShapeItem_userMethodVariant :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractGraphicsShapeItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractGraphicsShapeItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractGraphicsShapeItem x1 where
  qAbstractGraphicsShapeItem :: x1 -> IO (QAbstractGraphicsShapeItem ())

instance QqAbstractGraphicsShapeItem (()) where
 qAbstractGraphicsShapeItem ()
  = withQAbstractGraphicsShapeItemResult $
    qtc_QAbstractGraphicsShapeItem

foreign import ccall "qtc_QAbstractGraphicsShapeItem" qtc_QAbstractGraphicsShapeItem :: IO (Ptr (TQAbstractGraphicsShapeItem ()))

instance QqAbstractGraphicsShapeItem ((QGraphicsItem t1)) where
 qAbstractGraphicsShapeItem (x1)
  = withQAbstractGraphicsShapeItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem1 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem1" qtc_QAbstractGraphicsShapeItem1 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQAbstractGraphicsShapeItem ()))

instance QqAbstractGraphicsShapeItem ((QGraphicsTextItem t1)) where
 qAbstractGraphicsShapeItem (x1)
  = withQAbstractGraphicsShapeItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem1_graphicstextitem cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem1_graphicstextitem" qtc_QAbstractGraphicsShapeItem1_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQAbstractGraphicsShapeItem ()))

instance QqAbstractGraphicsShapeItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qAbstractGraphicsShapeItem (x1, x2)
  = withQAbstractGraphicsShapeItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem2 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem2" qtc_QAbstractGraphicsShapeItem2 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQAbstractGraphicsShapeItem ()))

instance QqAbstractGraphicsShapeItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qAbstractGraphicsShapeItem (x1, x2)
  = withQAbstractGraphicsShapeItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem2_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem2_graphicstextitem" qtc_QAbstractGraphicsShapeItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQAbstractGraphicsShapeItem ()))

class QqAbstractGraphicsShapeItem_nf x1 where
  qAbstractGraphicsShapeItem_nf :: x1 -> IO (QAbstractGraphicsShapeItem ())

instance QqAbstractGraphicsShapeItem_nf (()) where
 qAbstractGraphicsShapeItem_nf ()
  = withObjectRefResult $
    qtc_QAbstractGraphicsShapeItem

instance QqAbstractGraphicsShapeItem_nf ((QGraphicsItem t1)) where
 qAbstractGraphicsShapeItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem1 cobj_x1

instance QqAbstractGraphicsShapeItem_nf ((QGraphicsTextItem t1)) where
 qAbstractGraphicsShapeItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem1_graphicstextitem cobj_x1

instance QqAbstractGraphicsShapeItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qAbstractGraphicsShapeItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem2 cobj_x1 cobj_x2

instance QqAbstractGraphicsShapeItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qAbstractGraphicsShapeItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem2_graphicstextitem cobj_x1 cobj_x2

instance Qbrush (QAbstractGraphicsShapeItem a) (()) where
 brush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_brush cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_brush" qtc_QAbstractGraphicsShapeItem_brush :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQBrush ()))

instance QisObscuredBy (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_isObscuredBy_h" qtc_QAbstractGraphicsShapeItem_isObscuredBy_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem_h" qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QAbstractGraphicsShapeItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_opaqueArea_h" qtc_QAbstractGraphicsShapeItem_opaqueArea_h :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QAbstractGraphicsShapeItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_opaqueArea_h cobj_x0

instance Qpen (QAbstractGraphicsShapeItem a) (()) where
 pen x0 ()
  = withQPenResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_pen cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_pen" qtc_QAbstractGraphicsShapeItem_pen :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQPen ()))

instance QsetBrush (QAbstractGraphicsShapeItem a) ((QBrush t1)) where
 setBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_setBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setBrush" qtc_QAbstractGraphicsShapeItem_setBrush :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetPen (QAbstractGraphicsShapeItem a) ((QPen t1)) where
 setPen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_setPen cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setPen" qtc_QAbstractGraphicsShapeItem_setPen :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPen t1) -> IO ()

qAbstractGraphicsShapeItem_delete :: QAbstractGraphicsShapeItem a -> IO ()
qAbstractGraphicsShapeItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_delete cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_delete" qtc_QAbstractGraphicsShapeItem_delete :: Ptr (TQAbstractGraphicsShapeItem a) -> IO ()

qAbstractGraphicsShapeItem_delete1 :: QAbstractGraphicsShapeItem a -> IO ()
qAbstractGraphicsShapeItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_delete1 cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_delete1" qtc_QAbstractGraphicsShapeItem_delete1 :: Ptr (TQAbstractGraphicsShapeItem a) -> IO ()

instance QaddToIndex (QAbstractGraphicsShapeItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_addToIndex cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_addToIndex" qtc_QAbstractGraphicsShapeItem_addToIndex :: Ptr (TQAbstractGraphicsShapeItem a) -> IO ()

instance QaddToIndex (QAbstractGraphicsShapeItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_addToIndex cobj_x0

instance Qadvance (QAbstractGraphicsShapeItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_advance_h" qtc_QAbstractGraphicsShapeItem_advance_h :: Ptr (TQAbstractGraphicsShapeItem a) -> CInt -> IO ()

instance Qadvance (QAbstractGraphicsShapeItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_advance_h cobj_x0 (toCInt x1)

instance QqqboundingRect (QAbstractGraphicsShapeItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_boundingRect_h" qtc_QAbstractGraphicsShapeItem_boundingRect_h :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QAbstractGraphicsShapeItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_h cobj_x0

instance QqboundingRect (QAbstractGraphicsShapeItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractGraphicsShapeItem_boundingRect_qth_h" qtc_QAbstractGraphicsShapeItem_boundingRect_qth_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QAbstractGraphicsShapeItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QcollidesWithItem (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem_h" qtc_QAbstractGraphicsShapeItem_collidesWithItem_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem1_h" qtc_QAbstractGraphicsShapeItem_collidesWithItem1_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem_h" qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem_h" qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QAbstractGraphicsShapeItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithPath_h" qtc_QAbstractGraphicsShapeItem_collidesWithPath_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QAbstractGraphicsShapeItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QAbstractGraphicsShapeItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_collidesWithPath1_h" qtc_QAbstractGraphicsShapeItem_collidesWithPath1_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QAbstractGraphicsShapeItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqcontains (QAbstractGraphicsShapeItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractGraphicsShapeItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contains_qth_h" qtc_QAbstractGraphicsShapeItem_contains_qth_h :: Ptr (TQAbstractGraphicsShapeItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QAbstractGraphicsShapeItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractGraphicsShapeItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QAbstractGraphicsShapeItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contains_h" qtc_QAbstractGraphicsShapeItem_contains_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QAbstractGraphicsShapeItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contains_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_contextMenuEvent_h" qtc_QAbstractGraphicsShapeItem_contextMenuEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragEnterEvent_h" qtc_QAbstractGraphicsShapeItem_dragEnterEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragLeaveEvent_h" qtc_QAbstractGraphicsShapeItem_dragLeaveEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dragMoveEvent_h" qtc_QAbstractGraphicsShapeItem_dragMoveEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_dropEvent_h" qtc_QAbstractGraphicsShapeItem_dropEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_dropEvent_h cobj_x0 cobj_x1

instance Qextension (QAbstractGraphicsShapeItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_extension" qtc_QAbstractGraphicsShapeItem_extension :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QAbstractGraphicsShapeItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_extension cobj_x0 cobj_x1

instance QfocusInEvent (QAbstractGraphicsShapeItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_focusInEvent_h" qtc_QAbstractGraphicsShapeItem_focusInEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QAbstractGraphicsShapeItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QAbstractGraphicsShapeItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_focusOutEvent_h" qtc_QAbstractGraphicsShapeItem_focusOutEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QAbstractGraphicsShapeItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverEnterEvent_h" qtc_QAbstractGraphicsShapeItem_hoverEnterEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent_h" qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_hoverMoveEvent_h" qtc_QAbstractGraphicsShapeItem_hoverMoveEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QAbstractGraphicsShapeItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_inputMethodEvent_h" qtc_QAbstractGraphicsShapeItem_inputMethodEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QAbstractGraphicsShapeItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QAbstractGraphicsShapeItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_inputMethodQuery_h" qtc_QAbstractGraphicsShapeItem_inputMethodQuery_h :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QAbstractGraphicsShapeItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QAbstractGraphicsShapeItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_itemChange_h" qtc_QAbstractGraphicsShapeItem_itemChange_h :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QAbstractGraphicsShapeItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QAbstractGraphicsShapeItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_keyPressEvent_h" qtc_QAbstractGraphicsShapeItem_keyPressEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QAbstractGraphicsShapeItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QAbstractGraphicsShapeItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_keyReleaseEvent_h" qtc_QAbstractGraphicsShapeItem_keyReleaseEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QAbstractGraphicsShapeItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent_h" qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseMoveEvent_h" qtc_QAbstractGraphicsShapeItem_mouseMoveEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mousePressEvent_h" qtc_QAbstractGraphicsShapeItem_mousePressEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent_h" qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qpaint (QAbstractGraphicsShapeItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_paint_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_paint_h" qtc_QAbstractGraphicsShapeItem_paint_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QAbstractGraphicsShapeItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_paint_h cobj_x0 cobj_x1 cobj_x2

instance Qpaint (QAbstractGraphicsShapeItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractGraphicsShapeItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QAbstractGraphicsShapeItem_paint1_h" qtc_QAbstractGraphicsShapeItem_paint1_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QAbstractGraphicsShapeItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractGraphicsShapeItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QprepareGeometryChange (QAbstractGraphicsShapeItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_prepareGeometryChange" qtc_QAbstractGraphicsShapeItem_prepareGeometryChange :: Ptr (TQAbstractGraphicsShapeItem a) -> IO ()

instance QprepareGeometryChange (QAbstractGraphicsShapeItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QAbstractGraphicsShapeItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_removeFromIndex" qtc_QAbstractGraphicsShapeItem_removeFromIndex :: Ptr (TQAbstractGraphicsShapeItem a) -> IO ()

instance QremoveFromIndex (QAbstractGraphicsShapeItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_removeFromIndex cobj_x0

instance QsceneEvent (QAbstractGraphicsShapeItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEvent_h" qtc_QAbstractGraphicsShapeItem_sceneEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QAbstractGraphicsShapeItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QAbstractGraphicsShapeItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEventFilter_h" qtc_QAbstractGraphicsShapeItem_sceneEventFilter_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QAbstractGraphicsShapeItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QAbstractGraphicsShapeItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem_h" qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QAbstractGraphicsShapeItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QsetExtension (QAbstractGraphicsShapeItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QAbstractGraphicsShapeItem_setExtension" qtc_QAbstractGraphicsShapeItem_setExtension :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QAbstractGraphicsShapeItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractGraphicsShapeItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance Qshape (QAbstractGraphicsShapeItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_shape_h cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_shape_h" qtc_QAbstractGraphicsShapeItem_shape_h :: Ptr (TQAbstractGraphicsShapeItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QAbstractGraphicsShapeItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_shape_h cobj_x0

instance QsupportsExtension (QAbstractGraphicsShapeItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QAbstractGraphicsShapeItem_supportsExtension" qtc_QAbstractGraphicsShapeItem_supportsExtension :: Ptr (TQAbstractGraphicsShapeItem a) -> CLong -> IO CBool

instance QsupportsExtension (QAbstractGraphicsShapeItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QAbstractGraphicsShapeItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_type_h cobj_x0

foreign import ccall "qtc_QAbstractGraphicsShapeItem_type_h" qtc_QAbstractGraphicsShapeItem_type_h :: Ptr (TQAbstractGraphicsShapeItem a) -> IO CInt

instance Qqtype (QAbstractGraphicsShapeItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractGraphicsShapeItem_type_h cobj_x0

instance QwheelEvent (QAbstractGraphicsShapeItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractGraphicsShapeItem_wheelEvent_h" qtc_QAbstractGraphicsShapeItem_wheelEvent_h :: Ptr (TQAbstractGraphicsShapeItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QAbstractGraphicsShapeItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractGraphicsShapeItem_wheelEvent_h cobj_x0 cobj_x1

