{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsSimpleTextItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsSimpleTextItem (
  QqGraphicsSimpleTextItem(..)
  ,QqGraphicsSimpleTextItem_nf(..)
  ,qGraphicsSimpleTextItem_delete, qGraphicsSimpleTextItem_delete1
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

instance QuserMethod (QGraphicsSimpleTextItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsSimpleTextItem_userMethod" qtc_QGraphicsSimpleTextItem_userMethod :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsSimpleTextItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsSimpleTextItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsSimpleTextItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsSimpleTextItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsSimpleTextItem_userMethodVariant" qtc_QGraphicsSimpleTextItem_userMethodVariant :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsSimpleTextItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsSimpleTextItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsSimpleTextItem x1 where
  qGraphicsSimpleTextItem :: x1 -> IO (QGraphicsSimpleTextItem ())

instance QqGraphicsSimpleTextItem (()) where
 qGraphicsSimpleTextItem ()
  = withQGraphicsSimpleTextItemResult $
    qtc_QGraphicsSimpleTextItem

foreign import ccall "qtc_QGraphicsSimpleTextItem" qtc_QGraphicsSimpleTextItem :: IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((String)) where
 qGraphicsSimpleTextItem (x1)
  = withQGraphicsSimpleTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsSimpleTextItem1 cstr_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem1" qtc_QGraphicsSimpleTextItem1 :: CWString -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((QGraphicsItem t1)) where
 qGraphicsSimpleTextItem (x1)
  = withQGraphicsSimpleTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem2 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem2" qtc_QGraphicsSimpleTextItem2 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((QGraphicsTextItem t1)) where
 qGraphicsSimpleTextItem (x1)
  = withQGraphicsSimpleTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem2_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem2_graphicstextitem" qtc_QGraphicsSimpleTextItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsSimpleTextItem (x1, x2)
  = withQGraphicsSimpleTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem3 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem3" qtc_QGraphicsSimpleTextItem3 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsSimpleTextItem (x1, x2)
  = withQGraphicsSimpleTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem3_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem3_graphicstextitem" qtc_QGraphicsSimpleTextItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((String, QGraphicsItem t2)) where
 qGraphicsSimpleTextItem (x1, x2)
  = withQGraphicsSimpleTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem4 cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem4" qtc_QGraphicsSimpleTextItem4 :: CWString -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((String, QGraphicsTextItem t2)) where
 qGraphicsSimpleTextItem (x1, x2)
  = withQGraphicsSimpleTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem4_graphicstextitem cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem4_graphicstextitem" qtc_QGraphicsSimpleTextItem4_graphicstextitem :: CWString -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((String, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsSimpleTextItem (x1, x2, x3)
  = withQGraphicsSimpleTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem5 cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsSimpleTextItem5" qtc_QGraphicsSimpleTextItem5 :: CWString -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QqGraphicsSimpleTextItem ((String, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsSimpleTextItem (x1, x2, x3)
  = withQGraphicsSimpleTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem5_graphicstextitem cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsSimpleTextItem5_graphicstextitem" qtc_QGraphicsSimpleTextItem5_graphicstextitem :: CWString -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

class QqGraphicsSimpleTextItem_nf x1 where
  qGraphicsSimpleTextItem_nf :: x1 -> IO (QGraphicsSimpleTextItem ())

instance QqGraphicsSimpleTextItem_nf (()) where
 qGraphicsSimpleTextItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsSimpleTextItem

instance QqGraphicsSimpleTextItem_nf ((String)) where
 qGraphicsSimpleTextItem_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsSimpleTextItem1 cstr_x1

instance QqGraphicsSimpleTextItem_nf ((QGraphicsItem t1)) where
 qGraphicsSimpleTextItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem2 cobj_x1

instance QqGraphicsSimpleTextItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsSimpleTextItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem2_graphicstextitem cobj_x1

instance QqGraphicsSimpleTextItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsSimpleTextItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem3 cobj_x1 cobj_x2

instance QqGraphicsSimpleTextItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsSimpleTextItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem3_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsSimpleTextItem_nf ((String, QGraphicsItem t2)) where
 qGraphicsSimpleTextItem_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem4 cstr_x1 cobj_x2

instance QqGraphicsSimpleTextItem_nf ((String, QGraphicsTextItem t2)) where
 qGraphicsSimpleTextItem_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem4_graphicstextitem cstr_x1 cobj_x2

instance QqGraphicsSimpleTextItem_nf ((String, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsSimpleTextItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem5 cstr_x1 cobj_x2 cobj_x3

instance QqGraphicsSimpleTextItem_nf ((String, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsSimpleTextItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem5_graphicstextitem cstr_x1 cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsSimpleTextItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_boundingRect_h" qtc_QGraphicsSimpleTextItem_boundingRect_h :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsSimpleTextItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsSimpleTextItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsSimpleTextItem_boundingRect_qth_h" qtc_QGraphicsSimpleTextItem_boundingRect_qth_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsSimpleTextItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsSimpleTextItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSimpleTextItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsSimpleTextItem_contains_qth_h" qtc_QGraphicsSimpleTextItem_contains_qth_h :: Ptr (TQGraphicsSimpleTextItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsSimpleTextItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsSimpleTextItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsSimpleTextItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_contains_h" qtc_QGraphicsSimpleTextItem_contains_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsSimpleTextItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsSimpleTextItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_extension" qtc_QGraphicsSimpleTextItem_extension :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsSimpleTextItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_extension cobj_x0 cobj_x1

instance Qfont (QGraphicsSimpleTextItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_font cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_font" qtc_QGraphicsSimpleTextItem_font :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQFont ()))

instance QisObscuredBy (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_isObscuredBy_h" qtc_QGraphicsSimpleTextItem_isObscuredBy_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsSimpleTextItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_opaqueArea_h" qtc_QGraphicsSimpleTextItem_opaqueArea_h :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsSimpleTextItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsSimpleTextItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsSimpleTextItem_paint_h" qtc_QGraphicsSimpleTextItem_paint_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsSimpleTextItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsSimpleTextItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsetExtension (QGraphicsSimpleTextItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_setExtension" qtc_QGraphicsSimpleTextItem_setExtension :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsSimpleTextItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetFont (QGraphicsSimpleTextItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_setFont" qtc_QGraphicsSimpleTextItem_setFont :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetText (QGraphicsSimpleTextItem a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsSimpleTextItem_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_setText" qtc_QGraphicsSimpleTextItem_setText :: Ptr (TQGraphicsSimpleTextItem a) -> CWString -> IO ()

instance Qshape (QGraphicsSimpleTextItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_shape_h" qtc_QGraphicsSimpleTextItem_shape_h :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsSimpleTextItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsSimpleTextItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSimpleTextItem_supportsExtension" qtc_QGraphicsSimpleTextItem_supportsExtension :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsSimpleTextItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qtext (QGraphicsSimpleTextItem a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_text cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_text" qtc_QGraphicsSimpleTextItem_text :: Ptr (TQGraphicsSimpleTextItem a) -> IO (Ptr (TQString ()))

instance Qqtype (QGraphicsSimpleTextItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_type_h" qtc_QGraphicsSimpleTextItem_type_h :: Ptr (TQGraphicsSimpleTextItem a) -> IO CInt

instance Qqtype (QGraphicsSimpleTextItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_type_h cobj_x0

qGraphicsSimpleTextItem_delete :: QGraphicsSimpleTextItem a -> IO ()
qGraphicsSimpleTextItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_delete" qtc_QGraphicsSimpleTextItem_delete :: Ptr (TQGraphicsSimpleTextItem a) -> IO ()

qGraphicsSimpleTextItem_delete1 :: QGraphicsSimpleTextItem a -> IO ()
qGraphicsSimpleTextItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_delete1" qtc_QGraphicsSimpleTextItem_delete1 :: Ptr (TQGraphicsSimpleTextItem a) -> IO ()

instance QaddToIndex (QGraphicsSimpleTextItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_addToIndex" qtc_QGraphicsSimpleTextItem_addToIndex :: Ptr (TQGraphicsSimpleTextItem a) -> IO ()

instance QaddToIndex (QGraphicsSimpleTextItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_addToIndex cobj_x0

instance Qadvance (QGraphicsSimpleTextItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsSimpleTextItem_advance_h" qtc_QGraphicsSimpleTextItem_advance_h :: Ptr (TQGraphicsSimpleTextItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsSimpleTextItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem_h" qtc_QGraphicsSimpleTextItem_collidesWithItem_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem1_h" qtc_QGraphicsSimpleTextItem_collidesWithItem1_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsSimpleTextItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithPath_h" qtc_QGraphicsSimpleTextItem_collidesWithPath_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsSimpleTextItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsSimpleTextItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsSimpleTextItem_collidesWithPath1_h" qtc_QGraphicsSimpleTextItem_collidesWithPath1_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsSimpleTextItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_contextMenuEvent_h" qtc_QGraphicsSimpleTextItem_contextMenuEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragEnterEvent_h" qtc_QGraphicsSimpleTextItem_dragEnterEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragLeaveEvent_h" qtc_QGraphicsSimpleTextItem_dragLeaveEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dragMoveEvent_h" qtc_QGraphicsSimpleTextItem_dragMoveEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_dropEvent_h" qtc_QGraphicsSimpleTextItem_dropEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsSimpleTextItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_focusInEvent_h" qtc_QGraphicsSimpleTextItem_focusInEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsSimpleTextItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsSimpleTextItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_focusOutEvent_h" qtc_QGraphicsSimpleTextItem_focusOutEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsSimpleTextItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverEnterEvent_h" qtc_QGraphicsSimpleTextItem_hoverEnterEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverLeaveEvent_h" qtc_QGraphicsSimpleTextItem_hoverLeaveEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_hoverMoveEvent_h" qtc_QGraphicsSimpleTextItem_hoverMoveEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsSimpleTextItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_inputMethodEvent_h" qtc_QGraphicsSimpleTextItem_inputMethodEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsSimpleTextItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsSimpleTextItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsSimpleTextItem_inputMethodQuery_h" qtc_QGraphicsSimpleTextItem_inputMethodQuery_h :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsSimpleTextItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsSimpleTextItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_itemChange_h" qtc_QGraphicsSimpleTextItem_itemChange_h :: Ptr (TQGraphicsSimpleTextItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsSimpleTextItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsSimpleTextItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_keyPressEvent_h" qtc_QGraphicsSimpleTextItem_keyPressEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsSimpleTextItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsSimpleTextItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_keyReleaseEvent_h" qtc_QGraphicsSimpleTextItem_keyReleaseEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsSimpleTextItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent_h" qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseMoveEvent_h" qtc_QGraphicsSimpleTextItem_mouseMoveEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mousePressEvent_h" qtc_QGraphicsSimpleTextItem_mousePressEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_mouseReleaseEvent_h" qtc_QGraphicsSimpleTextItem_mouseReleaseEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsSimpleTextItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_prepareGeometryChange" qtc_QGraphicsSimpleTextItem_prepareGeometryChange :: Ptr (TQGraphicsSimpleTextItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsSimpleTextItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsSimpleTextItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsSimpleTextItem_removeFromIndex" qtc_QGraphicsSimpleTextItem_removeFromIndex :: Ptr (TQGraphicsSimpleTextItem a) -> IO ()

instance QremoveFromIndex (QGraphicsSimpleTextItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsSimpleTextItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsSimpleTextItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEvent_h" qtc_QGraphicsSimpleTextItem_sceneEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsSimpleTextItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsSimpleTextItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEventFilter_h" qtc_QGraphicsSimpleTextItem_sceneEventFilter_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsSimpleTextItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsSimpleTextItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsSimpleTextItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsSimpleTextItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsSimpleTextItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsSimpleTextItem_wheelEvent_h" qtc_QGraphicsSimpleTextItem_wheelEvent_h :: Ptr (TQGraphicsSimpleTextItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsSimpleTextItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsSimpleTextItem_wheelEvent_h cobj_x0 cobj_x1

