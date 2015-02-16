{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsLineItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsLineItem (
  QqqGraphicsLineItem(..), QqGraphicsLineItem(..)
  ,QqqGraphicsLineItem_nf(..), QqGraphicsLineItem_nf(..)
  ,qline, qqline
  ,QsetLine(..), qsetLine
  ,qGraphicsLineItem_delete, qGraphicsLineItem_delete1
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

instance QuserMethod (QGraphicsLineItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsLineItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsLineItem_userMethod" qtc_QGraphicsLineItem_userMethod :: Ptr (TQGraphicsLineItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsLineItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsLineItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsLineItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsLineItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsLineItem_userMethodVariant" qtc_QGraphicsLineItem_userMethodVariant :: Ptr (TQGraphicsLineItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsLineItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsLineItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGraphicsLineItem x1 where
  qqGraphicsLineItem :: x1 -> IO (QGraphicsLineItem ())

class QqGraphicsLineItem x1 where
  qGraphicsLineItem :: x1 -> IO (QGraphicsLineItem ())

instance QqGraphicsLineItem (()) where
 qGraphicsLineItem ()
  = withQGraphicsLineItemResult $
    qtc_QGraphicsLineItem

foreign import ccall "qtc_QGraphicsLineItem" qtc_QGraphicsLineItem :: IO (Ptr (TQGraphicsLineItem ()))

instance QqqGraphicsLineItem ((QLineF t1)) where
 qqGraphicsLineItem (x1)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem1 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem1" qtc_QGraphicsLineItem1 :: Ptr (TQLineF t1) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((LineF)) where
 qGraphicsLineItem (x1)
  = withQGraphicsLineItemResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QGraphicsLineItem2 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QGraphicsLineItem2" qtc_QGraphicsLineItem2 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((QGraphicsItem t1)) where
 qGraphicsLineItem (x1)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem3 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem3" qtc_QGraphicsLineItem3 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((QGraphicsTextItem t1)) where
 qGraphicsLineItem (x1)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem3_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsLineItem3_graphicstextitem" qtc_QGraphicsLineItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqqGraphicsLineItem ((QLineF t1, QGraphicsItem t2)) where
 qqGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem4" qtc_QGraphicsLineItem4 :: Ptr (TQLineF t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqqGraphicsLineItem ((QLineF t1, QGraphicsTextItem t2)) where
 qqGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem4_graphicstextitem" qtc_QGraphicsLineItem4_graphicstextitem :: Ptr (TQLineF t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((LineF, QGraphicsItem t2)) where
 qGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem5 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2

foreign import ccall "qtc_QGraphicsLineItem5" qtc_QGraphicsLineItem5 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((LineF, QGraphicsTextItem t2)) where
 qGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem5_qth clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2

foreign import ccall "qtc_QGraphicsLineItem5_qth" qtc_QGraphicsLineItem5_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem6 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem6" qtc_QGraphicsLineItem6 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsLineItem (x1, x2)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem6_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem6_graphicstextitem" qtc_QGraphicsLineItem6_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqqGraphicsLineItem ((QLineF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsLineItem (x1, x2, x3)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem7 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsLineItem7" qtc_QGraphicsLineItem7 :: Ptr (TQLineF t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqqGraphicsLineItem ((QLineF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsLineItem (x1, x2, x3)
  = withQGraphicsLineItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsLineItem7_graphicstextitem" qtc_QGraphicsLineItem7_graphicstextitem :: Ptr (TQLineF t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((LineF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsLineItem (x1, x2, x3)
  = withQGraphicsLineItemResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem8 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsLineItem8" qtc_QGraphicsLineItem8 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqGraphicsLineItem ((LineF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsLineItem (x1, x2, x3)
  = withQGraphicsLineItemResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem8_qth clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsLineItem8_qth" qtc_QGraphicsLineItem8_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsLineItem ()))

class QqqGraphicsLineItem_nf x1 where
  qqGraphicsLineItem_nf :: x1 -> IO (QGraphicsLineItem ())

class QqGraphicsLineItem_nf x1 where
  qGraphicsLineItem_nf :: x1 -> IO (QGraphicsLineItem ())

instance QqGraphicsLineItem_nf (()) where
 qGraphicsLineItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsLineItem

instance QqqGraphicsLineItem_nf ((QLineF t1)) where
 qqGraphicsLineItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem1 cobj_x1

instance QqGraphicsLineItem_nf ((LineF)) where
 qGraphicsLineItem_nf (x1)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QGraphicsLineItem2 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

instance QqGraphicsLineItem_nf ((QGraphicsItem t1)) where
 qGraphicsLineItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem3 cobj_x1

instance QqGraphicsLineItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsLineItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem3_graphicstextitem cobj_x1

instance QqqGraphicsLineItem_nf ((QLineF t1, QGraphicsItem t2)) where
 qqGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem4 cobj_x1 cobj_x2

instance QqqGraphicsLineItem_nf ((QLineF t1, QGraphicsTextItem t2)) where
 qqGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsLineItem_nf ((LineF, QGraphicsItem t2)) where
 qGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem5 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2

instance QqGraphicsLineItem_nf ((LineF, QGraphicsTextItem t2)) where
 qGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem5_qth clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2

instance QqGraphicsLineItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem6 cobj_x1 cobj_x2

instance QqGraphicsLineItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsLineItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem6_graphicstextitem cobj_x1 cobj_x2

instance QqqGraphicsLineItem_nf ((QLineF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsLineItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem7 cobj_x1 cobj_x2 cobj_x3

instance QqqGraphicsLineItem_nf ((QLineF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsLineItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsLineItem_nf ((LineF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsLineItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem8 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2 cobj_x3

instance QqGraphicsLineItem_nf ((LineF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsLineItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem8_qth clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsLineItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_boundingRect_h" qtc_QGraphicsLineItem_boundingRect_h :: Ptr (TQGraphicsLineItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsLineItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsLineItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsLineItem_boundingRect_qth_h" qtc_QGraphicsLineItem_boundingRect_qth_h :: Ptr (TQGraphicsLineItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsLineItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsLineItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsLineItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsLineItem_contains_qth_h" qtc_QGraphicsLineItem_contains_qth_h :: Ptr (TQGraphicsLineItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsLineItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsLineItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsLineItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_contains_h" qtc_QGraphicsLineItem_contains_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsLineItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsLineItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_extension" qtc_QGraphicsLineItem_extension :: Ptr (TQGraphicsLineItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsLineItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_extension cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsLineItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_isObscuredBy_h" qtc_QGraphicsLineItem_isObscuredBy_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsLineItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsLineItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsLineItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsLineItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

qline :: QGraphicsLineItem a -> (()) -> IO (LineF)
qline x0 ()
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_line_qth cobj_x0 clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QGraphicsLineItem_line_qth" qtc_QGraphicsLineItem_line_qth :: Ptr (TQGraphicsLineItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqline :: QGraphicsLineItem a -> (()) -> IO (QLineF ())
qqline x0 ()
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_line cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_line" qtc_QGraphicsLineItem_line :: Ptr (TQGraphicsLineItem a) -> IO (Ptr (TQLineF ()))

instance QopaqueArea (QGraphicsLineItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_opaqueArea_h" qtc_QGraphicsLineItem_opaqueArea_h :: Ptr (TQGraphicsLineItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsLineItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsLineItem a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem_paint" qtc_QGraphicsLineItem_paint :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsLineItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsLineItem_paint1_h" qtc_QGraphicsLineItem_paint1_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsLineItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsLineItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qpen (QGraphicsLineItem a) (()) where
 pen x0 ()
  = withQPenResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_pen cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_pen" qtc_QGraphicsLineItem_pen :: Ptr (TQGraphicsLineItem a) -> IO (Ptr (TQPen ()))

instance QsetExtension (QGraphicsLineItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsLineItem_setExtension" qtc_QGraphicsLineItem_setExtension :: Ptr (TQGraphicsLineItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsLineItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

class QsetLine x1 where
 setLine :: QGraphicsLineItem a -> x1 -> IO ()

instance QsetLine ((Double, Double, Double, Double)) where
 setLine x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_setLine1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsLineItem_setLine1" qtc_QGraphicsLineItem_setLine1 :: Ptr (TQGraphicsLineItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetLine ((LineF)) where
 setLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QGraphicsLineItem_setLine_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QGraphicsLineItem_setLine_qth" qtc_QGraphicsLineItem_setLine_qth :: Ptr (TQGraphicsLineItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

qsetLine :: QGraphicsLineItem a -> ((QLineF t1)) -> IO ()
qsetLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_setLine cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_setLine" qtc_QGraphicsLineItem_setLine :: Ptr (TQGraphicsLineItem a) -> Ptr (TQLineF t1) -> IO ()

instance QsetPen (QGraphicsLineItem a) ((QPen t1)) where
 setPen x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_setPen cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_setPen" qtc_QGraphicsLineItem_setPen :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPen t1) -> IO ()

instance Qshape (QGraphicsLineItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_shape_h" qtc_QGraphicsLineItem_shape_h :: Ptr (TQGraphicsLineItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsLineItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsLineItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsLineItem_supportsExtension" qtc_QGraphicsLineItem_supportsExtension :: Ptr (TQGraphicsLineItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsLineItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QGraphicsLineItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_type_h" qtc_QGraphicsLineItem_type_h :: Ptr (TQGraphicsLineItem a) -> IO CInt

instance Qqtype (QGraphicsLineItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_type_h cobj_x0

qGraphicsLineItem_delete :: QGraphicsLineItem a -> IO ()
qGraphicsLineItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_delete" qtc_QGraphicsLineItem_delete :: Ptr (TQGraphicsLineItem a) -> IO ()

qGraphicsLineItem_delete1 :: QGraphicsLineItem a -> IO ()
qGraphicsLineItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_delete1" qtc_QGraphicsLineItem_delete1 :: Ptr (TQGraphicsLineItem a) -> IO ()

instance QaddToIndex (QGraphicsLineItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_addToIndex" qtc_QGraphicsLineItem_addToIndex :: Ptr (TQGraphicsLineItem a) -> IO ()

instance QaddToIndex (QGraphicsLineItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_addToIndex cobj_x0

instance Qadvance (QGraphicsLineItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsLineItem_advance_h" qtc_QGraphicsLineItem_advance_h :: Ptr (TQGraphicsLineItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsLineItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsLineItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_collidesWithItem_h" qtc_QGraphicsLineItem_collidesWithItem_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsLineItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsLineItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsLineItem_collidesWithItem1_h" qtc_QGraphicsLineItem_collidesWithItem1_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsLineItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsLineItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsLineItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsLineItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsLineItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsLineItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsLineItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsLineItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsLineItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_collidesWithPath_h" qtc_QGraphicsLineItem_collidesWithPath_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsLineItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsLineItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsLineItem_collidesWithPath1_h" qtc_QGraphicsLineItem_collidesWithPath1_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsLineItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsLineItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_contextMenuEvent_h" qtc_QGraphicsLineItem_contextMenuEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsLineItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsLineItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_dragEnterEvent_h" qtc_QGraphicsLineItem_dragEnterEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsLineItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsLineItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_dragLeaveEvent_h" qtc_QGraphicsLineItem_dragLeaveEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsLineItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsLineItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_dragMoveEvent_h" qtc_QGraphicsLineItem_dragMoveEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsLineItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsLineItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_dropEvent_h" qtc_QGraphicsLineItem_dropEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsLineItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsLineItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_focusInEvent_h" qtc_QGraphicsLineItem_focusInEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsLineItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsLineItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_focusOutEvent_h" qtc_QGraphicsLineItem_focusOutEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsLineItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsLineItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_hoverEnterEvent_h" qtc_QGraphicsLineItem_hoverEnterEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsLineItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsLineItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_hoverLeaveEvent_h" qtc_QGraphicsLineItem_hoverLeaveEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsLineItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsLineItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_hoverMoveEvent_h" qtc_QGraphicsLineItem_hoverMoveEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsLineItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsLineItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_inputMethodEvent_h" qtc_QGraphicsLineItem_inputMethodEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsLineItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsLineItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsLineItem_inputMethodQuery_h" qtc_QGraphicsLineItem_inputMethodQuery_h :: Ptr (TQGraphicsLineItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsLineItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsLineItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsLineItem_itemChange_h" qtc_QGraphicsLineItem_itemChange_h :: Ptr (TQGraphicsLineItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsLineItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsLineItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_keyPressEvent_h" qtc_QGraphicsLineItem_keyPressEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsLineItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsLineItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_keyReleaseEvent_h" qtc_QGraphicsLineItem_keyReleaseEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsLineItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsLineItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_mouseDoubleClickEvent_h" qtc_QGraphicsLineItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsLineItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsLineItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_mouseMoveEvent_h" qtc_QGraphicsLineItem_mouseMoveEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsLineItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsLineItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_mousePressEvent_h" qtc_QGraphicsLineItem_mousePressEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsLineItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsLineItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_mouseReleaseEvent_h" qtc_QGraphicsLineItem_mouseReleaseEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsLineItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsLineItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_prepareGeometryChange" qtc_QGraphicsLineItem_prepareGeometryChange :: Ptr (TQGraphicsLineItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsLineItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsLineItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsLineItem_removeFromIndex" qtc_QGraphicsLineItem_removeFromIndex :: Ptr (TQGraphicsLineItem a) -> IO ()

instance QremoveFromIndex (QGraphicsLineItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsLineItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsLineItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_sceneEvent_h" qtc_QGraphicsLineItem_sceneEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsLineItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsLineItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem_sceneEventFilter_h" qtc_QGraphicsLineItem_sceneEventFilter_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsLineItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsLineItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsLineItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsLineItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsLineItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsLineItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsLineItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsLineItem_wheelEvent_h" qtc_QGraphicsLineItem_wheelEvent_h :: Ptr (TQGraphicsLineItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsLineItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsLineItem_wheelEvent_h cobj_x0 cobj_x1

