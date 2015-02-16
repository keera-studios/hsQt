{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsPolygonItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsPolygonItem (
  QqGraphicsPolygonItem(..)
  ,QqGraphicsPolygonItem_nf(..)
  ,polygon
  ,setPolygon
  ,qGraphicsPolygonItem_delete, qGraphicsPolygonItem_delete1
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

instance QuserMethod (QGraphicsPolygonItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPolygonItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsPolygonItem_userMethod" qtc_QGraphicsPolygonItem_userMethod :: Ptr (TQGraphicsPolygonItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsPolygonItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPolygonItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsPolygonItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPolygonItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsPolygonItem_userMethodVariant" qtc_QGraphicsPolygonItem_userMethodVariant :: Ptr (TQGraphicsPolygonItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsPolygonItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPolygonItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsPolygonItem x1 where
  qGraphicsPolygonItem :: x1 -> IO (QGraphicsPolygonItem ())

instance QqGraphicsPolygonItem (()) where
 qGraphicsPolygonItem ()
  = withQGraphicsPolygonItemResult $
    qtc_QGraphicsPolygonItem

foreign import ccall "qtc_QGraphicsPolygonItem" qtc_QGraphicsPolygonItem :: IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QPolygonF t1)) where
 qGraphicsPolygonItem (x1)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem1 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem1" qtc_QGraphicsPolygonItem1 :: Ptr (TQPolygonF t1) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QGraphicsItem t1)) where
 qGraphicsPolygonItem (x1)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem2 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem2" qtc_QGraphicsPolygonItem2 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QGraphicsTextItem t1)) where
 qGraphicsPolygonItem (x1)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem2_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem2_graphicstextitem" qtc_QGraphicsPolygonItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPolygonItem (x1, x2)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem3 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem3" qtc_QGraphicsPolygonItem3 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPolygonItem (x1, x2)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem3_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem3_graphicstextitem" qtc_QGraphicsPolygonItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QPolygonF t1, QGraphicsItem t2)) where
 qGraphicsPolygonItem (x1, x2)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem4" qtc_QGraphicsPolygonItem4 :: Ptr (TQPolygonF t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QPolygonF t1, QGraphicsTextItem t2)) where
 qGraphicsPolygonItem (x1, x2)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem4_graphicstextitem" qtc_QGraphicsPolygonItem4_graphicstextitem :: Ptr (TQPolygonF t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QPolygonF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPolygonItem (x1, x2, x3)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem5 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPolygonItem5" qtc_QGraphicsPolygonItem5 :: Ptr (TQPolygonF t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QqGraphicsPolygonItem ((QPolygonF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPolygonItem (x1, x2, x3)
  = withQGraphicsPolygonItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPolygonItem5_graphicstextitem" qtc_QGraphicsPolygonItem5_graphicstextitem :: Ptr (TQPolygonF t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPolygonItem ()))

class QqGraphicsPolygonItem_nf x1 where
  qGraphicsPolygonItem_nf :: x1 -> IO (QGraphicsPolygonItem ())

instance QqGraphicsPolygonItem_nf (()) where
 qGraphicsPolygonItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsPolygonItem

instance QqGraphicsPolygonItem_nf ((QPolygonF t1)) where
 qGraphicsPolygonItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem1 cobj_x1

instance QqGraphicsPolygonItem_nf ((QGraphicsItem t1)) where
 qGraphicsPolygonItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem2 cobj_x1

instance QqGraphicsPolygonItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsPolygonItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem2_graphicstextitem cobj_x1

instance QqGraphicsPolygonItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPolygonItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem3 cobj_x1 cobj_x2

instance QqGraphicsPolygonItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPolygonItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem3_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPolygonItem_nf ((QPolygonF t1, QGraphicsItem t2)) where
 qGraphicsPolygonItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem4 cobj_x1 cobj_x2

instance QqGraphicsPolygonItem_nf ((QPolygonF t1, QGraphicsTextItem t2)) where
 qGraphicsPolygonItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPolygonItem_nf ((QPolygonF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPolygonItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem5 cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsPolygonItem_nf ((QPolygonF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPolygonItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsPolygonItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_boundingRect_h" qtc_QGraphicsPolygonItem_boundingRect_h :: Ptr (TQGraphicsPolygonItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsPolygonItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsPolygonItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsPolygonItem_boundingRect_qth_h" qtc_QGraphicsPolygonItem_boundingRect_qth_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsPolygonItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsPolygonItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPolygonItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsPolygonItem_contains_qth_h" qtc_QGraphicsPolygonItem_contains_qth_h :: Ptr (TQGraphicsPolygonItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsPolygonItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPolygonItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsPolygonItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_contains_h" qtc_QGraphicsPolygonItem_contains_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsPolygonItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsPolygonItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_extension" qtc_QGraphicsPolygonItem_extension :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsPolygonItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_extension cobj_x0 cobj_x1

instance QfillRule (QGraphicsPolygonItem a) (()) where
 fillRule x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_fillRule cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_fillRule" qtc_QGraphicsPolygonItem_fillRule :: Ptr (TQGraphicsPolygonItem a) -> IO CLong

instance QisObscuredBy (QGraphicsPolygonItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_isObscuredBy_h" qtc_QGraphicsPolygonItem_isObscuredBy_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPolygonItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsPolygonItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsPolygonItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPolygonItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsPolygonItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_opaqueArea_h" qtc_QGraphicsPolygonItem_opaqueArea_h :: Ptr (TQGraphicsPolygonItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsPolygonItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsPolygonItem a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem_paint" qtc_QGraphicsPolygonItem_paint :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsPolygonItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPolygonItem_paint1_h" qtc_QGraphicsPolygonItem_paint1_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsPolygonItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPolygonItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

polygon :: QGraphicsPolygonItem a -> (()) -> IO (QPolygonF ())
polygon x0 ()
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_polygon cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_polygon" qtc_QGraphicsPolygonItem_polygon :: Ptr (TQGraphicsPolygonItem a) -> IO (Ptr (TQPolygonF ()))

instance QsetExtension (QGraphicsPolygonItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem_setExtension" qtc_QGraphicsPolygonItem_setExtension :: Ptr (TQGraphicsPolygonItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsPolygonItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetFillRule (QGraphicsPolygonItem a) ((FillRule)) where
 setFillRule x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_setFillRule cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPolygonItem_setFillRule" qtc_QGraphicsPolygonItem_setFillRule :: Ptr (TQGraphicsPolygonItem a) -> CLong -> IO ()

setPolygon :: QGraphicsPolygonItem a -> ((QPolygonF t1)) -> IO ()
setPolygon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_setPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_setPolygon" qtc_QGraphicsPolygonItem_setPolygon :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPolygonF t1) -> IO ()

instance Qshape (QGraphicsPolygonItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_shape_h" qtc_QGraphicsPolygonItem_shape_h :: Ptr (TQGraphicsPolygonItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsPolygonItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsPolygonItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPolygonItem_supportsExtension" qtc_QGraphicsPolygonItem_supportsExtension :: Ptr (TQGraphicsPolygonItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsPolygonItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QGraphicsPolygonItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_type_h" qtc_QGraphicsPolygonItem_type_h :: Ptr (TQGraphicsPolygonItem a) -> IO CInt

instance Qqtype (QGraphicsPolygonItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_type_h cobj_x0

qGraphicsPolygonItem_delete :: QGraphicsPolygonItem a -> IO ()
qGraphicsPolygonItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_delete" qtc_QGraphicsPolygonItem_delete :: Ptr (TQGraphicsPolygonItem a) -> IO ()

qGraphicsPolygonItem_delete1 :: QGraphicsPolygonItem a -> IO ()
qGraphicsPolygonItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_delete1" qtc_QGraphicsPolygonItem_delete1 :: Ptr (TQGraphicsPolygonItem a) -> IO ()

instance QaddToIndex (QGraphicsPolygonItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_addToIndex" qtc_QGraphicsPolygonItem_addToIndex :: Ptr (TQGraphicsPolygonItem a) -> IO ()

instance QaddToIndex (QGraphicsPolygonItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_addToIndex cobj_x0

instance Qadvance (QGraphicsPolygonItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsPolygonItem_advance_h" qtc_QGraphicsPolygonItem_advance_h :: Ptr (TQGraphicsPolygonItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsPolygonItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsPolygonItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithItem_h" qtc_QGraphicsPolygonItem_collidesWithItem_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPolygonItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPolygonItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithItem1_h" qtc_QGraphicsPolygonItem_collidesWithItem1_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPolygonItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsPolygonItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsPolygonItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPolygonItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPolygonItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsPolygonItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPolygonItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsPolygonItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithPath_h" qtc_QGraphicsPolygonItem_collidesWithPath_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsPolygonItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsPolygonItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPolygonItem_collidesWithPath1_h" qtc_QGraphicsPolygonItem_collidesWithPath1_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsPolygonItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_contextMenuEvent_h" qtc_QGraphicsPolygonItem_contextMenuEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_dragEnterEvent_h" qtc_QGraphicsPolygonItem_dragEnterEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_dragLeaveEvent_h" qtc_QGraphicsPolygonItem_dragLeaveEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_dragMoveEvent_h" qtc_QGraphicsPolygonItem_dragMoveEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_dropEvent_h" qtc_QGraphicsPolygonItem_dropEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsPolygonItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_focusInEvent_h" qtc_QGraphicsPolygonItem_focusInEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsPolygonItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsPolygonItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_focusOutEvent_h" qtc_QGraphicsPolygonItem_focusOutEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsPolygonItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_hoverEnterEvent_h" qtc_QGraphicsPolygonItem_hoverEnterEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_hoverLeaveEvent_h" qtc_QGraphicsPolygonItem_hoverLeaveEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_hoverMoveEvent_h" qtc_QGraphicsPolygonItem_hoverMoveEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsPolygonItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_inputMethodEvent_h" qtc_QGraphicsPolygonItem_inputMethodEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsPolygonItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsPolygonItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPolygonItem_inputMethodQuery_h" qtc_QGraphicsPolygonItem_inputMethodQuery_h :: Ptr (TQGraphicsPolygonItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsPolygonItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsPolygonItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem_itemChange_h" qtc_QGraphicsPolygonItem_itemChange_h :: Ptr (TQGraphicsPolygonItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsPolygonItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsPolygonItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_keyPressEvent_h" qtc_QGraphicsPolygonItem_keyPressEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsPolygonItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsPolygonItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_keyReleaseEvent_h" qtc_QGraphicsPolygonItem_keyReleaseEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsPolygonItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_mouseDoubleClickEvent_h" qtc_QGraphicsPolygonItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_mouseMoveEvent_h" qtc_QGraphicsPolygonItem_mouseMoveEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_mousePressEvent_h" qtc_QGraphicsPolygonItem_mousePressEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_mouseReleaseEvent_h" qtc_QGraphicsPolygonItem_mouseReleaseEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsPolygonItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_prepareGeometryChange" qtc_QGraphicsPolygonItem_prepareGeometryChange :: Ptr (TQGraphicsPolygonItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsPolygonItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsPolygonItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsPolygonItem_removeFromIndex" qtc_QGraphicsPolygonItem_removeFromIndex :: Ptr (TQGraphicsPolygonItem a) -> IO ()

instance QremoveFromIndex (QGraphicsPolygonItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPolygonItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsPolygonItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_sceneEvent_h" qtc_QGraphicsPolygonItem_sceneEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsPolygonItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsPolygonItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem_sceneEventFilter_h" qtc_QGraphicsPolygonItem_sceneEventFilter_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPolygonItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsPolygonItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPolygonItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsPolygonItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPolygonItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPolygonItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsPolygonItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPolygonItem_wheelEvent_h" qtc_QGraphicsPolygonItem_wheelEvent_h :: Ptr (TQGraphicsPolygonItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsPolygonItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPolygonItem_wheelEvent_h cobj_x0 cobj_x1

