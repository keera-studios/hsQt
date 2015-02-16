{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsPixmapItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsPixmapItem (
  QqGraphicsPixmapItem(..)
  ,QqGraphicsPixmapItem_nf(..)
  ,setShapeMode
  ,setTransformationMode
  ,shapeMode
  ,transformationMode
  ,qGraphicsPixmapItem_delete, qGraphicsPixmapItem_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsItem
import Qtc.Enums.Gui.QGraphicsPixmapItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QGraphicsPixmapItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPixmapItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsPixmapItem_userMethod" qtc_QGraphicsPixmapItem_userMethod :: Ptr (TQGraphicsPixmapItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsPixmapItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPixmapItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsPixmapItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPixmapItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsPixmapItem_userMethodVariant" qtc_QGraphicsPixmapItem_userMethodVariant :: Ptr (TQGraphicsPixmapItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsPixmapItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPixmapItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsPixmapItem x1 where
  qGraphicsPixmapItem :: x1 -> IO (QGraphicsPixmapItem ())

instance QqGraphicsPixmapItem (()) where
 qGraphicsPixmapItem ()
  = withQGraphicsPixmapItemResult $
    qtc_QGraphicsPixmapItem

foreign import ccall "qtc_QGraphicsPixmapItem" qtc_QGraphicsPixmapItem :: IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QGraphicsItem t1)) where
 qGraphicsPixmapItem (x1)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem1 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem1" qtc_QGraphicsPixmapItem1 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QGraphicsTextItem t1)) where
 qGraphicsPixmapItem (x1)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem1_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem1_graphicstextitem" qtc_QGraphicsPixmapItem1_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QPixmap t1)) where
 qGraphicsPixmapItem (x1)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem2 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem2" qtc_QGraphicsPixmapItem2 :: Ptr (TQPixmap t1) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QPixmap t1, QGraphicsItem t2)) where
 qGraphicsPixmapItem (x1, x2)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem3 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem3" qtc_QGraphicsPixmapItem3 :: Ptr (TQPixmap t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QPixmap t1, QGraphicsTextItem t2)) where
 qGraphicsPixmapItem (x1, x2)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem3_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem3_graphicstextitem" qtc_QGraphicsPixmapItem3_graphicstextitem :: Ptr (TQPixmap t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPixmapItem (x1, x2)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem4" qtc_QGraphicsPixmapItem4 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPixmapItem (x1, x2)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem4_graphicstextitem" qtc_QGraphicsPixmapItem4_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QPixmap t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPixmapItem (x1, x2, x3)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem5 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPixmapItem5" qtc_QGraphicsPixmapItem5 :: Ptr (TQPixmap t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QqGraphicsPixmapItem ((QPixmap t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPixmapItem (x1, x2, x3)
  = withQGraphicsPixmapItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPixmapItem5_graphicstextitem" qtc_QGraphicsPixmapItem5_graphicstextitem :: Ptr (TQPixmap t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPixmapItem ()))

class QqGraphicsPixmapItem_nf x1 where
  qGraphicsPixmapItem_nf :: x1 -> IO (QGraphicsPixmapItem ())

instance QqGraphicsPixmapItem_nf (()) where
 qGraphicsPixmapItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsPixmapItem

instance QqGraphicsPixmapItem_nf ((QGraphicsItem t1)) where
 qGraphicsPixmapItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem1 cobj_x1

instance QqGraphicsPixmapItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsPixmapItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem1_graphicstextitem cobj_x1

instance QqGraphicsPixmapItem_nf ((QPixmap t1)) where
 qGraphicsPixmapItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem2 cobj_x1

instance QqGraphicsPixmapItem_nf ((QPixmap t1, QGraphicsItem t2)) where
 qGraphicsPixmapItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem3 cobj_x1 cobj_x2

instance QqGraphicsPixmapItem_nf ((QPixmap t1, QGraphicsTextItem t2)) where
 qGraphicsPixmapItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem3_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPixmapItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPixmapItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem4 cobj_x1 cobj_x2

instance QqGraphicsPixmapItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPixmapItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPixmapItem_nf ((QPixmap t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPixmapItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem5 cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsPixmapItem_nf ((QPixmap t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPixmapItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsPixmapItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_boundingRect_h" qtc_QGraphicsPixmapItem_boundingRect_h :: Ptr (TQGraphicsPixmapItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsPixmapItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsPixmapItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsPixmapItem_boundingRect_qth_h" qtc_QGraphicsPixmapItem_boundingRect_qth_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsPixmapItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsPixmapItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPixmapItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsPixmapItem_contains_qth_h" qtc_QGraphicsPixmapItem_contains_qth_h :: Ptr (TQGraphicsPixmapItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsPixmapItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPixmapItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsPixmapItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_contains_h" qtc_QGraphicsPixmapItem_contains_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsPixmapItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsPixmapItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_extension" qtc_QGraphicsPixmapItem_extension :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsPixmapItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_extension cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsPixmapItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_isObscuredBy_h" qtc_QGraphicsPixmapItem_isObscuredBy_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPixmapItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsPixmapItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsPixmapItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPixmapItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance Qoffset (QGraphicsPixmapItem a) (()) (IO (PointF)) where
 offset x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_offset_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsPixmapItem_offset_qth" qtc_QGraphicsPixmapItem_offset_qth :: Ptr (TQGraphicsPixmapItem a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqoffset (QGraphicsPixmapItem a) (()) (IO (QPointF ())) where
 qoffset x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_offset cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_offset" qtc_QGraphicsPixmapItem_offset :: Ptr (TQGraphicsPixmapItem a) -> IO (Ptr (TQPointF ()))

instance QopaqueArea (QGraphicsPixmapItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_opaqueArea_h" qtc_QGraphicsPixmapItem_opaqueArea_h :: Ptr (TQGraphicsPixmapItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsPixmapItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsPixmapItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPixmapItem_paint_h" qtc_QGraphicsPixmapItem_paint_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsPixmapItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPixmapItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qpixmap (QGraphicsPixmapItem ()) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_pixmap cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_pixmap" qtc_QGraphicsPixmapItem_pixmap :: Ptr (TQGraphicsPixmapItem a) -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QGraphicsPixmapItemSc a) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_pixmap cobj_x0

instance Qpixmap_nf (QGraphicsPixmapItem ()) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_pixmap cobj_x0

instance Qpixmap_nf (QGraphicsPixmapItemSc a) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_pixmap cobj_x0

instance QsetExtension (QGraphicsPixmapItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem_setExtension" qtc_QGraphicsPixmapItem_setExtension :: Ptr (TQGraphicsPixmapItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsPixmapItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetOffset (QGraphicsPixmapItem a) ((Double, Double)) where
 setOffset x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_setOffset1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsPixmapItem_setOffset1" qtc_QGraphicsPixmapItem_setOffset1 :: Ptr (TQGraphicsPixmapItem a) -> CDouble -> CDouble -> IO ()

instance QsetOffset (QGraphicsPixmapItem a) ((PointF)) where
 setOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPixmapItem_setOffset_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsPixmapItem_setOffset_qth" qtc_QGraphicsPixmapItem_setOffset_qth :: Ptr (TQGraphicsPixmapItem a) -> CDouble -> CDouble -> IO ()

instance QqsetOffset (QGraphicsPixmapItem a) ((QPointF t1)) where
 qsetOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_setOffset cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_setOffset" qtc_QGraphicsPixmapItem_setOffset :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPointF t1) -> IO ()

instance QsetPixmap (QGraphicsPixmapItem a) ((QPixmap t1)) where
 setPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_setPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_setPixmap" qtc_QGraphicsPixmapItem_setPixmap :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPixmap t1) -> IO ()

setShapeMode :: QGraphicsPixmapItem a -> ((ShapeMode)) -> IO ()
setShapeMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_setShapeMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPixmapItem_setShapeMode" qtc_QGraphicsPixmapItem_setShapeMode :: Ptr (TQGraphicsPixmapItem a) -> CLong -> IO ()

setTransformationMode :: QGraphicsPixmapItem a -> ((TransformationMode)) -> IO ()
setTransformationMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_setTransformationMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPixmapItem_setTransformationMode" qtc_QGraphicsPixmapItem_setTransformationMode :: Ptr (TQGraphicsPixmapItem a) -> CLong -> IO ()

instance Qshape (QGraphicsPixmapItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_shape_h" qtc_QGraphicsPixmapItem_shape_h :: Ptr (TQGraphicsPixmapItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsPixmapItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_shape_h cobj_x0

shapeMode :: QGraphicsPixmapItem a -> (()) -> IO (ShapeMode)
shapeMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_shapeMode cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_shapeMode" qtc_QGraphicsPixmapItem_shapeMode :: Ptr (TQGraphicsPixmapItem a) -> IO CLong

instance QsupportsExtension (QGraphicsPixmapItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPixmapItem_supportsExtension" qtc_QGraphicsPixmapItem_supportsExtension :: Ptr (TQGraphicsPixmapItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsPixmapItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

transformationMode :: QGraphicsPixmapItem a -> (()) -> IO (TransformationMode)
transformationMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_transformationMode cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_transformationMode" qtc_QGraphicsPixmapItem_transformationMode :: Ptr (TQGraphicsPixmapItem a) -> IO CLong

instance Qqtype (QGraphicsPixmapItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_type_h" qtc_QGraphicsPixmapItem_type_h :: Ptr (TQGraphicsPixmapItem a) -> IO CInt

instance Qqtype (QGraphicsPixmapItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_type_h cobj_x0

qGraphicsPixmapItem_delete :: QGraphicsPixmapItem a -> IO ()
qGraphicsPixmapItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_delete" qtc_QGraphicsPixmapItem_delete :: Ptr (TQGraphicsPixmapItem a) -> IO ()

qGraphicsPixmapItem_delete1 :: QGraphicsPixmapItem a -> IO ()
qGraphicsPixmapItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_delete1" qtc_QGraphicsPixmapItem_delete1 :: Ptr (TQGraphicsPixmapItem a) -> IO ()

instance QaddToIndex (QGraphicsPixmapItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_addToIndex" qtc_QGraphicsPixmapItem_addToIndex :: Ptr (TQGraphicsPixmapItem a) -> IO ()

instance QaddToIndex (QGraphicsPixmapItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_addToIndex cobj_x0

instance Qadvance (QGraphicsPixmapItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsPixmapItem_advance_h" qtc_QGraphicsPixmapItem_advance_h :: Ptr (TQGraphicsPixmapItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsPixmapItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsPixmapItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithItem_h" qtc_QGraphicsPixmapItem_collidesWithItem_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPixmapItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPixmapItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithItem1_h" qtc_QGraphicsPixmapItem_collidesWithItem1_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPixmapItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsPixmapItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsPixmapItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPixmapItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPixmapItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsPixmapItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPixmapItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsPixmapItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithPath_h" qtc_QGraphicsPixmapItem_collidesWithPath_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsPixmapItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsPixmapItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPixmapItem_collidesWithPath1_h" qtc_QGraphicsPixmapItem_collidesWithPath1_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsPixmapItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_contextMenuEvent_h" qtc_QGraphicsPixmapItem_contextMenuEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_dragEnterEvent_h" qtc_QGraphicsPixmapItem_dragEnterEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_dragLeaveEvent_h" qtc_QGraphicsPixmapItem_dragLeaveEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_dragMoveEvent_h" qtc_QGraphicsPixmapItem_dragMoveEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_dropEvent_h" qtc_QGraphicsPixmapItem_dropEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsPixmapItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_focusInEvent_h" qtc_QGraphicsPixmapItem_focusInEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsPixmapItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsPixmapItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_focusOutEvent_h" qtc_QGraphicsPixmapItem_focusOutEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsPixmapItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_hoverEnterEvent_h" qtc_QGraphicsPixmapItem_hoverEnterEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_hoverLeaveEvent_h" qtc_QGraphicsPixmapItem_hoverLeaveEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_hoverMoveEvent_h" qtc_QGraphicsPixmapItem_hoverMoveEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsPixmapItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_inputMethodEvent_h" qtc_QGraphicsPixmapItem_inputMethodEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsPixmapItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsPixmapItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPixmapItem_inputMethodQuery_h" qtc_QGraphicsPixmapItem_inputMethodQuery_h :: Ptr (TQGraphicsPixmapItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsPixmapItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsPixmapItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem_itemChange_h" qtc_QGraphicsPixmapItem_itemChange_h :: Ptr (TQGraphicsPixmapItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsPixmapItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsPixmapItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_keyPressEvent_h" qtc_QGraphicsPixmapItem_keyPressEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsPixmapItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsPixmapItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_keyReleaseEvent_h" qtc_QGraphicsPixmapItem_keyReleaseEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsPixmapItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_mouseDoubleClickEvent_h" qtc_QGraphicsPixmapItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_mouseMoveEvent_h" qtc_QGraphicsPixmapItem_mouseMoveEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_mousePressEvent_h" qtc_QGraphicsPixmapItem_mousePressEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_mouseReleaseEvent_h" qtc_QGraphicsPixmapItem_mouseReleaseEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsPixmapItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_prepareGeometryChange" qtc_QGraphicsPixmapItem_prepareGeometryChange :: Ptr (TQGraphicsPixmapItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsPixmapItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsPixmapItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsPixmapItem_removeFromIndex" qtc_QGraphicsPixmapItem_removeFromIndex :: Ptr (TQGraphicsPixmapItem a) -> IO ()

instance QremoveFromIndex (QGraphicsPixmapItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPixmapItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsPixmapItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_sceneEvent_h" qtc_QGraphicsPixmapItem_sceneEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsPixmapItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsPixmapItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem_sceneEventFilter_h" qtc_QGraphicsPixmapItem_sceneEventFilter_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPixmapItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsPixmapItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPixmapItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsPixmapItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPixmapItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPixmapItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsPixmapItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPixmapItem_wheelEvent_h" qtc_QGraphicsPixmapItem_wheelEvent_h :: Ptr (TQGraphicsPixmapItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsPixmapItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPixmapItem_wheelEvent_h cobj_x0 cobj_x1

