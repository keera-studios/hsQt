{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsItemGroup.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsItemGroup (
  QqGraphicsItemGroup(..)
  ,QqGraphicsItemGroup_nf(..)
  ,QaddToGroup(..)
  ,QremoveFromGroup(..)
  ,qGraphicsItemGroup_delete, qGraphicsItemGroup_delete1
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

instance QuserMethod (QGraphicsItemGroup ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItemGroup_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsItemGroup_userMethod" qtc_QGraphicsItemGroup_userMethod :: Ptr (TQGraphicsItemGroup a) -> CInt -> IO ()

instance QuserMethod (QGraphicsItemGroupSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsItemGroup_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsItemGroup ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItemGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsItemGroup_userMethodVariant" qtc_QGraphicsItemGroup_userMethodVariant :: Ptr (TQGraphicsItemGroup a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsItemGroupSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsItemGroup_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsItemGroup x1 where
  qGraphicsItemGroup :: x1 -> IO (QGraphicsItemGroup ())

instance QqGraphicsItemGroup (()) where
 qGraphicsItemGroup ()
  = withQGraphicsItemGroupResult $
    qtc_QGraphicsItemGroup

foreign import ccall "qtc_QGraphicsItemGroup" qtc_QGraphicsItemGroup :: IO (Ptr (TQGraphicsItemGroup ()))

instance QqGraphicsItemGroup ((QGraphicsItem t1)) where
 qGraphicsItemGroup (x1)
  = withQGraphicsItemGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup1 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup1" qtc_QGraphicsItemGroup1 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsItemGroup ()))

instance QqGraphicsItemGroup ((QGraphicsTextItem t1)) where
 qGraphicsItemGroup (x1)
  = withQGraphicsItemGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup1_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup1_graphicstextitem" qtc_QGraphicsItemGroup1_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsItemGroup ()))

instance QqGraphicsItemGroup ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsItemGroup (x1, x2)
  = withQGraphicsItemGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup2 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup2" qtc_QGraphicsItemGroup2 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsItemGroup ()))

instance QqGraphicsItemGroup ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsItemGroup (x1, x2)
  = withQGraphicsItemGroupResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup2_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup2_graphicstextitem" qtc_QGraphicsItemGroup2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsItemGroup ()))

class QqGraphicsItemGroup_nf x1 where
  qGraphicsItemGroup_nf :: x1 -> IO (QGraphicsItemGroup ())

instance QqGraphicsItemGroup_nf (()) where
 qGraphicsItemGroup_nf ()
  = withObjectRefResult $
    qtc_QGraphicsItemGroup

instance QqGraphicsItemGroup_nf ((QGraphicsItem t1)) where
 qGraphicsItemGroup_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup1 cobj_x1

instance QqGraphicsItemGroup_nf ((QGraphicsTextItem t1)) where
 qGraphicsItemGroup_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup1_graphicstextitem cobj_x1

instance QqGraphicsItemGroup_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsItemGroup_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup2 cobj_x1 cobj_x2

instance QqGraphicsItemGroup_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsItemGroup_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup2_graphicstextitem cobj_x1 cobj_x2

class QaddToGroup x1 where
 addToGroup :: QGraphicsItemGroup a -> x1 -> IO ()

instance QaddToGroup ((QGraphicsItem t1)) where
 addToGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_addToGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_addToGroup" qtc_QGraphicsItemGroup_addToGroup :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QaddToGroup ((QGraphicsTextItem t1)) where
 addToGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_addToGroup_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_addToGroup_graphicstextitem" qtc_QGraphicsItemGroup_addToGroup_graphicstextitem :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QqqboundingRect (QGraphicsItemGroup ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_boundingRect_h" qtc_QGraphicsItemGroup_boundingRect_h :: Ptr (TQGraphicsItemGroup a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsItemGroupSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsItemGroup ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsItemGroup_boundingRect_qth_h" qtc_QGraphicsItemGroup_boundingRect_qth_h :: Ptr (TQGraphicsItemGroup a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsItemGroupSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance QisObscuredBy (QGraphicsItemGroup ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_isObscuredBy_h" qtc_QGraphicsItemGroup_isObscuredBy_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsItemGroupSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsItemGroup ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_isObscuredBy_graphicstextitem_h" qtc_QGraphicsItemGroup_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsItemGroupSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsItemGroup ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_opaqueArea_h" qtc_QGraphicsItemGroup_opaqueArea_h :: Ptr (TQGraphicsItemGroup a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsItemGroupSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsItemGroup a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup_paint" qtc_QGraphicsItemGroup_paint :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsItemGroup ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItemGroup_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsItemGroup_paint1_h" qtc_QGraphicsItemGroup_paint1_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsItemGroupSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsItemGroup_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

class QremoveFromGroup x1 where
 removeFromGroup :: QGraphicsItemGroup a -> x1 -> IO ()

instance QremoveFromGroup ((QGraphicsItem t1)) where
 removeFromGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_removeFromGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_removeFromGroup" qtc_QGraphicsItemGroup_removeFromGroup :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QremoveFromGroup ((QGraphicsTextItem t1)) where
 removeFromGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_removeFromGroup_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_removeFromGroup_graphicstextitem" qtc_QGraphicsItemGroup_removeFromGroup_graphicstextitem :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance Qqtype (QGraphicsItemGroup ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_type_h cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_type_h" qtc_QGraphicsItemGroup_type_h :: Ptr (TQGraphicsItemGroup a) -> IO CInt

instance Qqtype (QGraphicsItemGroupSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_type_h cobj_x0

qGraphicsItemGroup_delete :: QGraphicsItemGroup a -> IO ()
qGraphicsItemGroup_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_delete cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_delete" qtc_QGraphicsItemGroup_delete :: Ptr (TQGraphicsItemGroup a) -> IO ()

qGraphicsItemGroup_delete1 :: QGraphicsItemGroup a -> IO ()
qGraphicsItemGroup_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_delete1" qtc_QGraphicsItemGroup_delete1 :: Ptr (TQGraphicsItemGroup a) -> IO ()

instance QaddToIndex (QGraphicsItemGroup ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_addToIndex" qtc_QGraphicsItemGroup_addToIndex :: Ptr (TQGraphicsItemGroup a) -> IO ()

instance QaddToIndex (QGraphicsItemGroupSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_addToIndex cobj_x0

instance Qadvance (QGraphicsItemGroup ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsItemGroup_advance_h" qtc_QGraphicsItemGroup_advance_h :: Ptr (TQGraphicsItemGroup a) -> CInt -> IO ()

instance Qadvance (QGraphicsItemGroupSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsItemGroup ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithItem_h" qtc_QGraphicsItemGroup_collidesWithItem_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsItemGroupSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsItemGroup ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithItem1_h" qtc_QGraphicsItemGroup_collidesWithItem1_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsItemGroupSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsItemGroup ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithItem_graphicstextitem_h" qtc_QGraphicsItemGroup_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsItemGroupSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsItemGroup ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsItemGroup_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsItemGroupSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsItemGroup ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithPath_h" qtc_QGraphicsItemGroup_collidesWithPath_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsItemGroupSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsItemGroup ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsItemGroup_collidesWithPath1_h" qtc_QGraphicsItemGroup_collidesWithPath1_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsItemGroupSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance Qqcontains (QGraphicsItemGroup ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItemGroup_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsItemGroup_contains_qth_h" qtc_QGraphicsItemGroup_contains_qth_h :: Ptr (TQGraphicsItemGroup a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsItemGroupSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsItemGroup_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsItemGroup ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_contains_h" qtc_QGraphicsItemGroup_contains_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsItemGroupSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_contains_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QGraphicsItemGroup ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_contextMenuEvent_h" qtc_QGraphicsItemGroup_contextMenuEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsItemGroup ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_dragEnterEvent_h" qtc_QGraphicsItemGroup_dragEnterEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsItemGroup ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_dragLeaveEvent_h" qtc_QGraphicsItemGroup_dragLeaveEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsItemGroup ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_dragMoveEvent_h" qtc_QGraphicsItemGroup_dragMoveEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsItemGroup ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_dropEvent_h" qtc_QGraphicsItemGroup_dropEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_dropEvent_h cobj_x0 cobj_x1

instance Qextension (QGraphicsItemGroup ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_extension" qtc_QGraphicsItemGroup_extension :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsItemGroupSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_extension cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsItemGroup ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_focusInEvent_h" qtc_QGraphicsItemGroup_focusInEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsItemGroupSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsItemGroup ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_focusOutEvent_h" qtc_QGraphicsItemGroup_focusOutEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsItemGroupSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsItemGroup ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_hoverEnterEvent_h" qtc_QGraphicsItemGroup_hoverEnterEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsItemGroup ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_hoverLeaveEvent_h" qtc_QGraphicsItemGroup_hoverLeaveEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsItemGroup ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_hoverMoveEvent_h" qtc_QGraphicsItemGroup_hoverMoveEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsItemGroup ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_inputMethodEvent_h" qtc_QGraphicsItemGroup_inputMethodEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsItemGroupSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsItemGroup ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItemGroup_inputMethodQuery_h" qtc_QGraphicsItemGroup_inputMethodQuery_h :: Ptr (TQGraphicsItemGroup a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsItemGroupSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsItemGroup ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup_itemChange_h" qtc_QGraphicsItemGroup_itemChange_h :: Ptr (TQGraphicsItemGroup a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsItemGroupSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsItemGroup ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_keyPressEvent_h" qtc_QGraphicsItemGroup_keyPressEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsItemGroupSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsItemGroup ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_keyReleaseEvent_h" qtc_QGraphicsItemGroup_keyReleaseEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsItemGroupSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsItemGroup ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_mouseDoubleClickEvent_h" qtc_QGraphicsItemGroup_mouseDoubleClickEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsItemGroup ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_mouseMoveEvent_h" qtc_QGraphicsItemGroup_mouseMoveEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsItemGroup ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_mousePressEvent_h" qtc_QGraphicsItemGroup_mousePressEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsItemGroup ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_mouseReleaseEvent_h" qtc_QGraphicsItemGroup_mouseReleaseEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsItemGroup ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_prepareGeometryChange" qtc_QGraphicsItemGroup_prepareGeometryChange :: Ptr (TQGraphicsItemGroup a) -> IO ()

instance QprepareGeometryChange (QGraphicsItemGroupSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsItemGroup ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_removeFromIndex" qtc_QGraphicsItemGroup_removeFromIndex :: Ptr (TQGraphicsItemGroup a) -> IO ()

instance QremoveFromIndex (QGraphicsItemGroupSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsItemGroup ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_sceneEvent_h" qtc_QGraphicsItemGroup_sceneEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsItemGroupSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsItemGroup ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup_sceneEventFilter_h" qtc_QGraphicsItemGroup_sceneEventFilter_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsItemGroupSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsItemGroup ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsItemGroup_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsItemGroupSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QsetExtension (QGraphicsItemGroup ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsItemGroup_setExtension" qtc_QGraphicsItemGroup_setExtension :: Ptr (TQGraphicsItemGroup a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsItemGroupSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsItemGroup_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance Qshape (QGraphicsItemGroup ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsItemGroup_shape_h" qtc_QGraphicsItemGroup_shape_h :: Ptr (TQGraphicsItemGroup a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsItemGroupSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_shape_h cobj_x0

instance QsupportsExtension (QGraphicsItemGroup ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsItemGroup_supportsExtension" qtc_QGraphicsItemGroup_supportsExtension :: Ptr (TQGraphicsItemGroup a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsItemGroupSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsItemGroup_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance QwheelEvent (QGraphicsItemGroup ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsItemGroup_wheelEvent_h" qtc_QGraphicsItemGroup_wheelEvent_h :: Ptr (TQGraphicsItemGroup a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsItemGroupSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemGroup_wheelEvent_h cobj_x0 cobj_x1

