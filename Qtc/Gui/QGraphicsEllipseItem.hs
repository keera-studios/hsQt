{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsEllipseItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsEllipseItem (
  QqqGraphicsEllipseItem(..), QqGraphicsEllipseItem(..)
  ,QqqGraphicsEllipseItem_nf(..), QqGraphicsEllipseItem_nf(..)
  ,setSpanAngle
  ,setStartAngle
  ,spanAngle
  ,startAngle
  ,qGraphicsEllipseItem_delete, qGraphicsEllipseItem_delete1
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

instance QuserMethod (QGraphicsEllipseItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsEllipseItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsEllipseItem_userMethod" qtc_QGraphicsEllipseItem_userMethod :: Ptr (TQGraphicsEllipseItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsEllipseItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsEllipseItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsEllipseItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsEllipseItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsEllipseItem_userMethodVariant" qtc_QGraphicsEllipseItem_userMethodVariant :: Ptr (TQGraphicsEllipseItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsEllipseItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsEllipseItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGraphicsEllipseItem x1 where
  qqGraphicsEllipseItem :: x1 -> IO (QGraphicsEllipseItem ())

class QqGraphicsEllipseItem x1 where
  qGraphicsEllipseItem :: x1 -> IO (QGraphicsEllipseItem ())

instance QqGraphicsEllipseItem (()) where
 qGraphicsEllipseItem ()
  = withQGraphicsEllipseItemResult $
    qtc_QGraphicsEllipseItem

foreign import ccall "qtc_QGraphicsEllipseItem" qtc_QGraphicsEllipseItem :: IO (Ptr (TQGraphicsEllipseItem ()))

instance QqqGraphicsEllipseItem ((QRectF t1)) where
 qqGraphicsEllipseItem (x1)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem1 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem1" qtc_QGraphicsEllipseItem1 :: Ptr (TQRectF t1) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((RectF)) where
 qGraphicsEllipseItem (x1)
  = withQGraphicsEllipseItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsEllipseItem2 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsEllipseItem2" qtc_QGraphicsEllipseItem2 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((QGraphicsItem t1)) where
 qGraphicsEllipseItem (x1)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem3 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem3" qtc_QGraphicsEllipseItem3 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((QGraphicsTextItem t1)) where
 qGraphicsEllipseItem (x1)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem3_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem3_graphicstextitem" qtc_QGraphicsEllipseItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqqGraphicsEllipseItem ((QRectF t1, QGraphicsItem t2)) where
 qqGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem4" qtc_QGraphicsEllipseItem4 :: Ptr (TQRectF t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqqGraphicsEllipseItem ((QRectF t1, QGraphicsTextItem t2)) where
 qqGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem4_graphicstextitem" qtc_QGraphicsEllipseItem4_graphicstextitem :: Ptr (TQRectF t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((RectF, QGraphicsItem t2)) where
 qGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem5 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem5" qtc_QGraphicsEllipseItem5 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((RectF, QGraphicsTextItem t2)) where
 qGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem5_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem5_qth" qtc_QGraphicsEllipseItem5_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem6 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem6" qtc_QGraphicsEllipseItem6 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsEllipseItem (x1, x2)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem6_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem6_graphicstextitem" qtc_QGraphicsEllipseItem6_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqqGraphicsEllipseItem ((QRectF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsEllipseItem (x1, x2, x3)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem7 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsEllipseItem7" qtc_QGraphicsEllipseItem7 :: Ptr (TQRectF t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqqGraphicsEllipseItem ((QRectF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsEllipseItem (x1, x2, x3)
  = withQGraphicsEllipseItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsEllipseItem7_graphicstextitem" qtc_QGraphicsEllipseItem7_graphicstextitem :: Ptr (TQRectF t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((RectF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsEllipseItem (x1, x2, x3)
  = withQGraphicsEllipseItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem8 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsEllipseItem8" qtc_QGraphicsEllipseItem8 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqGraphicsEllipseItem ((RectF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsEllipseItem (x1, x2, x3)
  = withQGraphicsEllipseItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem8_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsEllipseItem8_qth" qtc_QGraphicsEllipseItem8_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

class QqqGraphicsEllipseItem_nf x1 where
  qqGraphicsEllipseItem_nf :: x1 -> IO (QGraphicsEllipseItem ())

class QqGraphicsEllipseItem_nf x1 where
  qGraphicsEllipseItem_nf :: x1 -> IO (QGraphicsEllipseItem ())

instance QqGraphicsEllipseItem_nf (()) where
 qGraphicsEllipseItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsEllipseItem

instance QqqGraphicsEllipseItem_nf ((QRectF t1)) where
 qqGraphicsEllipseItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem1 cobj_x1

instance QqGraphicsEllipseItem_nf ((RectF)) where
 qGraphicsEllipseItem_nf (x1)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsEllipseItem2 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

instance QqGraphicsEllipseItem_nf ((QGraphicsItem t1)) where
 qGraphicsEllipseItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem3 cobj_x1

instance QqGraphicsEllipseItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsEllipseItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem3_graphicstextitem cobj_x1

instance QqqGraphicsEllipseItem_nf ((QRectF t1, QGraphicsItem t2)) where
 qqGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem4 cobj_x1 cobj_x2

instance QqqGraphicsEllipseItem_nf ((QRectF t1, QGraphicsTextItem t2)) where
 qqGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsEllipseItem_nf ((RectF, QGraphicsItem t2)) where
 qGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem5 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

instance QqGraphicsEllipseItem_nf ((RectF, QGraphicsTextItem t2)) where
 qGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem5_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

instance QqGraphicsEllipseItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem6 cobj_x1 cobj_x2

instance QqGraphicsEllipseItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsEllipseItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem6_graphicstextitem cobj_x1 cobj_x2

instance QqqGraphicsEllipseItem_nf ((QRectF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsEllipseItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem7 cobj_x1 cobj_x2 cobj_x3

instance QqqGraphicsEllipseItem_nf ((QRectF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsEllipseItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsEllipseItem_nf ((RectF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsEllipseItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem8 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

instance QqGraphicsEllipseItem_nf ((RectF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsEllipseItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem8_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

instance QqqboundingRect (QGraphicsEllipseItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_boundingRect_h" qtc_QGraphicsEllipseItem_boundingRect_h :: Ptr (TQGraphicsEllipseItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsEllipseItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsEllipseItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsEllipseItem_boundingRect_qth_h" qtc_QGraphicsEllipseItem_boundingRect_qth_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsEllipseItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsEllipseItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsEllipseItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsEllipseItem_contains_qth_h" qtc_QGraphicsEllipseItem_contains_qth_h :: Ptr (TQGraphicsEllipseItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsEllipseItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsEllipseItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsEllipseItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_contains_h" qtc_QGraphicsEllipseItem_contains_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsEllipseItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsEllipseItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_extension" qtc_QGraphicsEllipseItem_extension :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsEllipseItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_extension cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsEllipseItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_isObscuredBy_h" qtc_QGraphicsEllipseItem_isObscuredBy_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsEllipseItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsEllipseItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsEllipseItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsEllipseItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsEllipseItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_opaqueArea_h" qtc_QGraphicsEllipseItem_opaqueArea_h :: Ptr (TQGraphicsEllipseItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsEllipseItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsEllipseItem a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem_paint" qtc_QGraphicsEllipseItem_paint :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsEllipseItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsEllipseItem_paint1_h" qtc_QGraphicsEllipseItem_paint1_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsEllipseItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsEllipseItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qqqrect (QGraphicsEllipseItem a) (()) (IO (QRectF ())) where
 qqrect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_rect cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_rect" qtc_QGraphicsEllipseItem_rect :: Ptr (TQGraphicsEllipseItem a) -> IO (Ptr (TQRectF ()))

instance Qqrect (QGraphicsEllipseItem a) (()) (IO (RectF)) where
 qrect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_rect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsEllipseItem_rect_qth" qtc_QGraphicsEllipseItem_rect_qth :: Ptr (TQGraphicsEllipseItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QsetExtension (QGraphicsEllipseItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem_setExtension" qtc_QGraphicsEllipseItem_setExtension :: Ptr (TQGraphicsEllipseItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsEllipseItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqsetRect (QGraphicsEllipseItem a) ((Double, Double, Double, Double)) where
 qsetRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_setRect1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsEllipseItem_setRect1" qtc_QGraphicsEllipseItem_setRect1 :: Ptr (TQGraphicsEllipseItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqqsetRect (QGraphicsEllipseItem a) ((QRectF t1)) where
 qqsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_setRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_setRect" qtc_QGraphicsEllipseItem_setRect :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQRectF t1) -> IO ()

instance QqsetRect (QGraphicsEllipseItem a) ((RectF)) where
 qsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsEllipseItem_setRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsEllipseItem_setRect_qth" qtc_QGraphicsEllipseItem_setRect_qth :: Ptr (TQGraphicsEllipseItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

setSpanAngle :: QGraphicsEllipseItem a -> ((Int)) -> IO ()
setSpanAngle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_setSpanAngle cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsEllipseItem_setSpanAngle" qtc_QGraphicsEllipseItem_setSpanAngle :: Ptr (TQGraphicsEllipseItem a) -> CInt -> IO ()

setStartAngle :: QGraphicsEllipseItem a -> ((Int)) -> IO ()
setStartAngle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_setStartAngle cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsEllipseItem_setStartAngle" qtc_QGraphicsEllipseItem_setStartAngle :: Ptr (TQGraphicsEllipseItem a) -> CInt -> IO ()

instance Qshape (QGraphicsEllipseItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_shape_h" qtc_QGraphicsEllipseItem_shape_h :: Ptr (TQGraphicsEllipseItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsEllipseItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_shape_h cobj_x0

spanAngle :: QGraphicsEllipseItem a -> (()) -> IO (Int)
spanAngle x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_spanAngle cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_spanAngle" qtc_QGraphicsEllipseItem_spanAngle :: Ptr (TQGraphicsEllipseItem a) -> IO CInt

startAngle :: QGraphicsEllipseItem a -> (()) -> IO (Int)
startAngle x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_startAngle cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_startAngle" qtc_QGraphicsEllipseItem_startAngle :: Ptr (TQGraphicsEllipseItem a) -> IO CInt

instance QsupportsExtension (QGraphicsEllipseItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsEllipseItem_supportsExtension" qtc_QGraphicsEllipseItem_supportsExtension :: Ptr (TQGraphicsEllipseItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsEllipseItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QGraphicsEllipseItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_type_h" qtc_QGraphicsEllipseItem_type_h :: Ptr (TQGraphicsEllipseItem a) -> IO CInt

instance Qqtype (QGraphicsEllipseItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_type_h cobj_x0

qGraphicsEllipseItem_delete :: QGraphicsEllipseItem a -> IO ()
qGraphicsEllipseItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_delete" qtc_QGraphicsEllipseItem_delete :: Ptr (TQGraphicsEllipseItem a) -> IO ()

qGraphicsEllipseItem_delete1 :: QGraphicsEllipseItem a -> IO ()
qGraphicsEllipseItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_delete1" qtc_QGraphicsEllipseItem_delete1 :: Ptr (TQGraphicsEllipseItem a) -> IO ()

instance QaddToIndex (QGraphicsEllipseItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_addToIndex" qtc_QGraphicsEllipseItem_addToIndex :: Ptr (TQGraphicsEllipseItem a) -> IO ()

instance QaddToIndex (QGraphicsEllipseItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_addToIndex cobj_x0

instance Qadvance (QGraphicsEllipseItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsEllipseItem_advance_h" qtc_QGraphicsEllipseItem_advance_h :: Ptr (TQGraphicsEllipseItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsEllipseItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsEllipseItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithItem_h" qtc_QGraphicsEllipseItem_collidesWithItem_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsEllipseItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsEllipseItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithItem1_h" qtc_QGraphicsEllipseItem_collidesWithItem1_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsEllipseItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsEllipseItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsEllipseItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsEllipseItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsEllipseItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsEllipseItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsEllipseItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsEllipseItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithPath_h" qtc_QGraphicsEllipseItem_collidesWithPath_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsEllipseItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsEllipseItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsEllipseItem_collidesWithPath1_h" qtc_QGraphicsEllipseItem_collidesWithPath1_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsEllipseItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_contextMenuEvent_h" qtc_QGraphicsEllipseItem_contextMenuEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_dragEnterEvent_h" qtc_QGraphicsEllipseItem_dragEnterEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_dragLeaveEvent_h" qtc_QGraphicsEllipseItem_dragLeaveEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_dragMoveEvent_h" qtc_QGraphicsEllipseItem_dragMoveEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_dropEvent_h" qtc_QGraphicsEllipseItem_dropEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsEllipseItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_focusInEvent_h" qtc_QGraphicsEllipseItem_focusInEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsEllipseItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsEllipseItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_focusOutEvent_h" qtc_QGraphicsEllipseItem_focusOutEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsEllipseItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_hoverEnterEvent_h" qtc_QGraphicsEllipseItem_hoverEnterEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_hoverLeaveEvent_h" qtc_QGraphicsEllipseItem_hoverLeaveEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_hoverMoveEvent_h" qtc_QGraphicsEllipseItem_hoverMoveEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsEllipseItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_inputMethodEvent_h" qtc_QGraphicsEllipseItem_inputMethodEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsEllipseItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsEllipseItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsEllipseItem_inputMethodQuery_h" qtc_QGraphicsEllipseItem_inputMethodQuery_h :: Ptr (TQGraphicsEllipseItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsEllipseItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsEllipseItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem_itemChange_h" qtc_QGraphicsEllipseItem_itemChange_h :: Ptr (TQGraphicsEllipseItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsEllipseItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsEllipseItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_keyPressEvent_h" qtc_QGraphicsEllipseItem_keyPressEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsEllipseItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsEllipseItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_keyReleaseEvent_h" qtc_QGraphicsEllipseItem_keyReleaseEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsEllipseItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_mouseDoubleClickEvent_h" qtc_QGraphicsEllipseItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_mouseMoveEvent_h" qtc_QGraphicsEllipseItem_mouseMoveEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_mousePressEvent_h" qtc_QGraphicsEllipseItem_mousePressEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_mouseReleaseEvent_h" qtc_QGraphicsEllipseItem_mouseReleaseEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsEllipseItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_prepareGeometryChange" qtc_QGraphicsEllipseItem_prepareGeometryChange :: Ptr (TQGraphicsEllipseItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsEllipseItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsEllipseItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsEllipseItem_removeFromIndex" qtc_QGraphicsEllipseItem_removeFromIndex :: Ptr (TQGraphicsEllipseItem a) -> IO ()

instance QremoveFromIndex (QGraphicsEllipseItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsEllipseItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsEllipseItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_sceneEvent_h" qtc_QGraphicsEllipseItem_sceneEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsEllipseItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsEllipseItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem_sceneEventFilter_h" qtc_QGraphicsEllipseItem_sceneEventFilter_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsEllipseItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsEllipseItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsEllipseItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsEllipseItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsEllipseItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsEllipseItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsEllipseItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsEllipseItem_wheelEvent_h" qtc_QGraphicsEllipseItem_wheelEvent_h :: Ptr (TQGraphicsEllipseItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsEllipseItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsEllipseItem_wheelEvent_h cobj_x0 cobj_x1

