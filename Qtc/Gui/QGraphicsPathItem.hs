{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsPathItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsPathItem (
  QqGraphicsPathItem(..)
  ,QqGraphicsPathItem_nf(..)
  ,qGraphicsPathItem_delete, qGraphicsPathItem_delete1
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

instance QuserMethod (QGraphicsPathItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsPathItem_userMethod" qtc_QGraphicsPathItem_userMethod :: Ptr (TQGraphicsPathItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsPathItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsPathItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsPathItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPathItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsPathItem_userMethodVariant" qtc_QGraphicsPathItem_userMethodVariant :: Ptr (TQGraphicsPathItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsPathItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsPathItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsPathItem x1 where
  qGraphicsPathItem :: x1 -> IO (QGraphicsPathItem ())

instance QqGraphicsPathItem (()) where
 qGraphicsPathItem ()
  = withQGraphicsPathItemResult $
    qtc_QGraphicsPathItem

foreign import ccall "qtc_QGraphicsPathItem" qtc_QGraphicsPathItem :: IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QPainterPath t1)) where
 qGraphicsPathItem (x1)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem1 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem1" qtc_QGraphicsPathItem1 :: Ptr (TQPainterPath t1) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QGraphicsItem t1)) where
 qGraphicsPathItem (x1)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem2 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem2" qtc_QGraphicsPathItem2 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QGraphicsTextItem t1)) where
 qGraphicsPathItem (x1)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem2_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsPathItem2_graphicstextitem" qtc_QGraphicsPathItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPathItem (x1, x2)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem3 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem3" qtc_QGraphicsPathItem3 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPathItem (x1, x2)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem3_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem3_graphicstextitem" qtc_QGraphicsPathItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QPainterPath t1, QGraphicsItem t2)) where
 qGraphicsPathItem (x1, x2)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem4" qtc_QGraphicsPathItem4 :: Ptr (TQPainterPath t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QPainterPath t1, QGraphicsTextItem t2)) where
 qGraphicsPathItem (x1, x2)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem4_graphicstextitem" qtc_QGraphicsPathItem4_graphicstextitem :: Ptr (TQPainterPath t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QPainterPath t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPathItem (x1, x2, x3)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem5 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPathItem5" qtc_QGraphicsPathItem5 :: Ptr (TQPainterPath t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPathItem ()))

instance QqGraphicsPathItem ((QPainterPath t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPathItem (x1, x2, x3)
  = withQGraphicsPathItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPathItem5_graphicstextitem" qtc_QGraphicsPathItem5_graphicstextitem :: Ptr (TQPainterPath t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsPathItem ()))

class QqGraphicsPathItem_nf x1 where
  qGraphicsPathItem_nf :: x1 -> IO (QGraphicsPathItem ())

instance QqGraphicsPathItem_nf (()) where
 qGraphicsPathItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsPathItem

instance QqGraphicsPathItem_nf ((QPainterPath t1)) where
 qGraphicsPathItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem1 cobj_x1

instance QqGraphicsPathItem_nf ((QGraphicsItem t1)) where
 qGraphicsPathItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem2 cobj_x1

instance QqGraphicsPathItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsPathItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem2_graphicstextitem cobj_x1

instance QqGraphicsPathItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsPathItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem3 cobj_x1 cobj_x2

instance QqGraphicsPathItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsPathItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem3_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPathItem_nf ((QPainterPath t1, QGraphicsItem t2)) where
 qGraphicsPathItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem4 cobj_x1 cobj_x2

instance QqGraphicsPathItem_nf ((QPainterPath t1, QGraphicsTextItem t2)) where
 qGraphicsPathItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsPathItem_nf ((QPainterPath t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsPathItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem5 cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsPathItem_nf ((QPainterPath t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsPathItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem5_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsPathItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_boundingRect_h" qtc_QGraphicsPathItem_boundingRect_h :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsPathItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsPathItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsPathItem_boundingRect_qth_h" qtc_QGraphicsPathItem_boundingRect_qth_h :: Ptr (TQGraphicsPathItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsPathItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsPathItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPathItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsPathItem_contains_qth_h" qtc_QGraphicsPathItem_contains_qth_h :: Ptr (TQGraphicsPathItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsPathItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsPathItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsPathItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_contains_h" qtc_QGraphicsPathItem_contains_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsPathItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsPathItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_extension" qtc_QGraphicsPathItem_extension :: Ptr (TQGraphicsPathItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsPathItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_extension cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsPathItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_isObscuredBy_h" qtc_QGraphicsPathItem_isObscuredBy_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPathItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsPathItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsPathItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsPathItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_opaqueArea_h" qtc_QGraphicsPathItem_opaqueArea_h :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsPathItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsPathItem a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_paint" qtc_QGraphicsPathItem_paint :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsPathItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsPathItem_paint1_h" qtc_QGraphicsPathItem_paint1_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsPathItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsPathItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qpath (QGraphicsPathItem a) (()) (IO (QPainterPath ())) where
 path x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_path cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_path" qtc_QGraphicsPathItem_path :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQPainterPath ()))

instance QsetExtension (QGraphicsPathItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_setExtension" qtc_QGraphicsPathItem_setExtension :: Ptr (TQGraphicsPathItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsPathItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetPath (QGraphicsPathItem a) ((QPainterPath t1)) where
 setPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_setPath cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_setPath" qtc_QGraphicsPathItem_setPath :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainterPath t1) -> IO ()

instance Qshape (QGraphicsPathItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_shape_h" qtc_QGraphicsPathItem_shape_h :: Ptr (TQGraphicsPathItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsPathItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsPathItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPathItem_supportsExtension" qtc_QGraphicsPathItem_supportsExtension :: Ptr (TQGraphicsPathItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsPathItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QGraphicsPathItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_type_h" qtc_QGraphicsPathItem_type_h :: Ptr (TQGraphicsPathItem a) -> IO CInt

instance Qqtype (QGraphicsPathItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_type_h cobj_x0

qGraphicsPathItem_delete :: QGraphicsPathItem a -> IO ()
qGraphicsPathItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_delete" qtc_QGraphicsPathItem_delete :: Ptr (TQGraphicsPathItem a) -> IO ()

qGraphicsPathItem_delete1 :: QGraphicsPathItem a -> IO ()
qGraphicsPathItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_delete1" qtc_QGraphicsPathItem_delete1 :: Ptr (TQGraphicsPathItem a) -> IO ()

instance QaddToIndex (QGraphicsPathItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_addToIndex" qtc_QGraphicsPathItem_addToIndex :: Ptr (TQGraphicsPathItem a) -> IO ()

instance QaddToIndex (QGraphicsPathItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_addToIndex cobj_x0

instance Qadvance (QGraphicsPathItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsPathItem_advance_h" qtc_QGraphicsPathItem_advance_h :: Ptr (TQGraphicsPathItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsPathItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsPathItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem_h" qtc_QGraphicsPathItem_collidesWithItem_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPathItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPathItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem1_h" qtc_QGraphicsPathItem_collidesWithItem1_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPathItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsPathItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsPathItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsPathItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsPathItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsPathItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_collidesWithPath_h" qtc_QGraphicsPathItem_collidesWithPath_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsPathItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsPathItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsPathItem_collidesWithPath1_h" qtc_QGraphicsPathItem_collidesWithPath1_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsPathItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsPathItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_contextMenuEvent_h" qtc_QGraphicsPathItem_contextMenuEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsPathItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragEnterEvent_h" qtc_QGraphicsPathItem_dragEnterEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragLeaveEvent_h" qtc_QGraphicsPathItem_dragLeaveEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dragMoveEvent_h" qtc_QGraphicsPathItem_dragMoveEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsPathItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_dropEvent_h" qtc_QGraphicsPathItem_dropEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsPathItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsPathItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_focusInEvent_h" qtc_QGraphicsPathItem_focusInEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsPathItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsPathItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_focusOutEvent_h" qtc_QGraphicsPathItem_focusOutEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsPathItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverEnterEvent_h" qtc_QGraphicsPathItem_hoverEnterEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverLeaveEvent_h" qtc_QGraphicsPathItem_hoverLeaveEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsPathItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_hoverMoveEvent_h" qtc_QGraphicsPathItem_hoverMoveEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsPathItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsPathItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_inputMethodEvent_h" qtc_QGraphicsPathItem_inputMethodEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsPathItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsPathItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsPathItem_inputMethodQuery_h" qtc_QGraphicsPathItem_inputMethodQuery_h :: Ptr (TQGraphicsPathItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsPathItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsPathItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_itemChange_h" qtc_QGraphicsPathItem_itemChange_h :: Ptr (TQGraphicsPathItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsPathItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsPathItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_keyPressEvent_h" qtc_QGraphicsPathItem_keyPressEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsPathItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsPathItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_keyReleaseEvent_h" qtc_QGraphicsPathItem_keyReleaseEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsPathItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseDoubleClickEvent_h" qtc_QGraphicsPathItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseMoveEvent_h" qtc_QGraphicsPathItem_mouseMoveEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mousePressEvent_h" qtc_QGraphicsPathItem_mousePressEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsPathItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_mouseReleaseEvent_h" qtc_QGraphicsPathItem_mouseReleaseEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsPathItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsPathItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_prepareGeometryChange" qtc_QGraphicsPathItem_prepareGeometryChange :: Ptr (TQGraphicsPathItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsPathItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsPathItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsPathItem_removeFromIndex" qtc_QGraphicsPathItem_removeFromIndex :: Ptr (TQGraphicsPathItem a) -> IO ()

instance QremoveFromIndex (QGraphicsPathItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsPathItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsPathItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_sceneEvent_h" qtc_QGraphicsPathItem_sceneEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsPathItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsPathItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_sceneEventFilter_h" qtc_QGraphicsPathItem_sceneEventFilter_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPathItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsPathItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsPathItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsPathItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsPathItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsPathItem_wheelEvent_h" qtc_QGraphicsPathItem_wheelEvent_h :: Ptr (TQGraphicsPathItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsPathItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsPathItem_wheelEvent_h cobj_x0 cobj_x1

