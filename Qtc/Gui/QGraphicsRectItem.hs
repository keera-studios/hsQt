{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsRectItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsRectItem (
  QqqGraphicsRectItem(..), QqGraphicsRectItem(..)
  ,QqqGraphicsRectItem_nf(..), QqGraphicsRectItem_nf(..)
  ,qGraphicsRectItem_delete, qGraphicsRectItem_delete1
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

instance QuserMethod (QGraphicsRectItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsRectItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsRectItem_userMethod" qtc_QGraphicsRectItem_userMethod :: Ptr (TQGraphicsRectItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsRectItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsRectItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsRectItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsRectItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsRectItem_userMethodVariant" qtc_QGraphicsRectItem_userMethodVariant :: Ptr (TQGraphicsRectItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsRectItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsRectItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGraphicsRectItem x1 where
  qqGraphicsRectItem :: x1 -> IO (QGraphicsRectItem ())

class QqGraphicsRectItem x1 where
  qGraphicsRectItem :: x1 -> IO (QGraphicsRectItem ())

instance QqGraphicsRectItem (()) where
 qGraphicsRectItem ()
  = withQGraphicsRectItemResult $
    qtc_QGraphicsRectItem

foreign import ccall "qtc_QGraphicsRectItem" qtc_QGraphicsRectItem :: IO (Ptr (TQGraphicsRectItem ()))

instance QqqGraphicsRectItem ((QRectF t1)) where
 qqGraphicsRectItem (x1)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem1 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem1" qtc_QGraphicsRectItem1 :: Ptr (TQRectF t1) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((RectF)) where
 qGraphicsRectItem (x1)
  = withQGraphicsRectItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsRectItem2 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsRectItem2" qtc_QGraphicsRectItem2 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((QGraphicsItem t1)) where
 qGraphicsRectItem (x1)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem3 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem3" qtc_QGraphicsRectItem3 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((QGraphicsTextItem t1)) where
 qGraphicsRectItem (x1)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem3_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsRectItem3_graphicstextitem" qtc_QGraphicsRectItem3_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqqGraphicsRectItem ((QRectF t1, QGraphicsItem t2)) where
 qqGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem4" qtc_QGraphicsRectItem4 :: Ptr (TQRectF t1) -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqqGraphicsRectItem ((QRectF t1, QGraphicsTextItem t2)) where
 qqGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem4_graphicstextitem" qtc_QGraphicsRectItem4_graphicstextitem :: Ptr (TQRectF t1) -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((RectF, QGraphicsItem t2)) where
 qGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem5 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsRectItem5" qtc_QGraphicsRectItem5 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((RectF, QGraphicsTextItem t2)) where
 qGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem5_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsRectItem5_qth" qtc_QGraphicsRectItem5_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem6 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem6" qtc_QGraphicsRectItem6 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsRectItem (x1, x2)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem6_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem6_graphicstextitem" qtc_QGraphicsRectItem6_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqqGraphicsRectItem ((QRectF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsRectItem (x1, x2, x3)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem7 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsRectItem7" qtc_QGraphicsRectItem7 :: Ptr (TQRectF t1) -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqqGraphicsRectItem ((QRectF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsRectItem (x1, x2, x3)
  = withQGraphicsRectItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsRectItem7_graphicstextitem" qtc_QGraphicsRectItem7_graphicstextitem :: Ptr (TQRectF t1) -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((RectF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsRectItem (x1, x2, x3)
  = withQGraphicsRectItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem8 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsRectItem8" qtc_QGraphicsRectItem8 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((RectF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsRectItem (x1, x2, x3)
  = withQGraphicsRectItemResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem8_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsRectItem8_qth" qtc_QGraphicsRectItem8_qth :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((Double, Double, Double, Double)) where
 qGraphicsRectItem (x1, x2, x3, x4)
  = withQGraphicsRectItemResult $
    qtc_QGraphicsRectItem9 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsRectItem9" qtc_QGraphicsRectItem9 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((Double, Double, Double, Double, QGraphicsItem t5)) where
 qGraphicsRectItem (x1, x2, x3, x4, x5)
  = withQGraphicsRectItemResult $
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsRectItem10 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsRectItem10" qtc_QGraphicsRectItem10 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t5) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((Double, Double, Double, Double, QGraphicsTextItem t5)) where
 qGraphicsRectItem (x1, x2, x3, x4, x5)
  = withQGraphicsRectItemResult $
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsRectItem10_graphicstextitem (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsRectItem10_graphicstextitem" qtc_QGraphicsRectItem10_graphicstextitem :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t5) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((Double, Double, Double, Double, QGraphicsItem t5, QGraphicsScene t6)) where
 qGraphicsRectItem (x1, x2, x3, x4, x5, x6)
  = withQGraphicsRectItemResult $
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsRectItem11 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

foreign import ccall "qtc_QGraphicsRectItem11" qtc_QGraphicsRectItem11 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsItem t5) -> Ptr (TQGraphicsScene t6) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqGraphicsRectItem ((Double, Double, Double, Double, QGraphicsTextItem t5, QGraphicsScene t6)) where
 qGraphicsRectItem (x1, x2, x3, x4, x5, x6)
  = withQGraphicsRectItemResult $
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsRectItem11_graphicstextitem (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

foreign import ccall "qtc_QGraphicsRectItem11_graphicstextitem" qtc_QGraphicsRectItem11_graphicstextitem :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQGraphicsTextItem t5) -> Ptr (TQGraphicsScene t6) -> IO (Ptr (TQGraphicsRectItem ()))

class QqqGraphicsRectItem_nf x1 where
  qqGraphicsRectItem_nf :: x1 -> IO (QGraphicsRectItem ())

class QqGraphicsRectItem_nf x1 where
  qGraphicsRectItem_nf :: x1 -> IO (QGraphicsRectItem ())

instance QqGraphicsRectItem_nf (()) where
 qGraphicsRectItem_nf ()
  = withObjectRefResult $
    qtc_QGraphicsRectItem

instance QqqGraphicsRectItem_nf ((QRectF t1)) where
 qqGraphicsRectItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem1 cobj_x1

instance QqGraphicsRectItem_nf ((RectF)) where
 qGraphicsRectItem_nf (x1)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsRectItem2 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

instance QqGraphicsRectItem_nf ((QGraphicsItem t1)) where
 qGraphicsRectItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem3 cobj_x1

instance QqGraphicsRectItem_nf ((QGraphicsTextItem t1)) where
 qGraphicsRectItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem3_graphicstextitem cobj_x1

instance QqqGraphicsRectItem_nf ((QRectF t1, QGraphicsItem t2)) where
 qqGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem4 cobj_x1 cobj_x2

instance QqqGraphicsRectItem_nf ((QRectF t1, QGraphicsTextItem t2)) where
 qqGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem4_graphicstextitem cobj_x1 cobj_x2

instance QqGraphicsRectItem_nf ((RectF, QGraphicsItem t2)) where
 qGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem5 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

instance QqGraphicsRectItem_nf ((RectF, QGraphicsTextItem t2)) where
 qGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem5_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

instance QqGraphicsRectItem_nf ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem6 cobj_x1 cobj_x2

instance QqGraphicsRectItem_nf ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsRectItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem6_graphicstextitem cobj_x1 cobj_x2

instance QqqGraphicsRectItem_nf ((QRectF t1, QGraphicsItem t2, QGraphicsScene t3)) where
 qqGraphicsRectItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem7 cobj_x1 cobj_x2 cobj_x3

instance QqqGraphicsRectItem_nf ((QRectF t1, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qqGraphicsRectItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem7_graphicstextitem cobj_x1 cobj_x2 cobj_x3

instance QqGraphicsRectItem_nf ((RectF, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsRectItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem8 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

instance QqGraphicsRectItem_nf ((RectF, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsRectItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem8_qth crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

instance QqGraphicsRectItem_nf ((Double, Double, Double, Double)) where
 qGraphicsRectItem_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QGraphicsRectItem9 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

instance QqGraphicsRectItem_nf ((Double, Double, Double, Double, QGraphicsItem t5)) where
 qGraphicsRectItem_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsRectItem10 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

instance QqGraphicsRectItem_nf ((Double, Double, Double, Double, QGraphicsTextItem t5)) where
 qGraphicsRectItem_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsRectItem10_graphicstextitem (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

instance QqGraphicsRectItem_nf ((Double, Double, Double, Double, QGraphicsItem t5, QGraphicsScene t6)) where
 qGraphicsRectItem_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsRectItem11 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

instance QqGraphicsRectItem_nf ((Double, Double, Double, Double, QGraphicsTextItem t5, QGraphicsScene t6)) where
 qGraphicsRectItem_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsRectItem11_graphicstextitem (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

instance QqqboundingRect (QGraphicsRectItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_boundingRect_h" qtc_QGraphicsRectItem_boundingRect_h :: Ptr (TQGraphicsRectItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsRectItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsRectItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsRectItem_boundingRect_qth_h" qtc_QGraphicsRectItem_boundingRect_qth_h :: Ptr (TQGraphicsRectItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsRectItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsRectItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsRectItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsRectItem_contains_qth_h" qtc_QGraphicsRectItem_contains_qth_h :: Ptr (TQGraphicsRectItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsRectItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsRectItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsRectItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_contains_h" qtc_QGraphicsRectItem_contains_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsRectItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_contains_h cobj_x0 cobj_x1

instance Qextension (QGraphicsRectItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_extension" qtc_QGraphicsRectItem_extension :: Ptr (TQGraphicsRectItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsRectItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_extension cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsRectItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_isObscuredBy_h" qtc_QGraphicsRectItem_isObscuredBy_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsRectItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsRectItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsRectItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsRectItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsRectItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_opaqueArea_h" qtc_QGraphicsRectItem_opaqueArea_h :: Ptr (TQGraphicsRectItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsRectItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_opaqueArea_h cobj_x0

instance Qpaint (QGraphicsRectItem a) ((QPainter t1, QStyleOptionGraphicsItem t2)) where
 paint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_paint cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem_paint" qtc_QGraphicsRectItem_paint :: Ptr (TQGraphicsRectItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> IO ()

instance Qpaint (QGraphicsRectItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsRectItem_paint1_h" qtc_QGraphicsRectItem_paint1_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsRectItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsRectItem_paint1_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qqqrect (QGraphicsRectItem a) (()) (IO (QRectF ())) where
 qqrect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_rect cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_rect" qtc_QGraphicsRectItem_rect :: Ptr (TQGraphicsRectItem a) -> IO (Ptr (TQRectF ()))

instance Qqrect (QGraphicsRectItem a) (()) (IO (RectF)) where
 qrect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_rect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsRectItem_rect_qth" qtc_QGraphicsRectItem_rect_qth :: Ptr (TQGraphicsRectItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QsetExtension (QGraphicsRectItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsRectItem_setExtension" qtc_QGraphicsRectItem_setExtension :: Ptr (TQGraphicsRectItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsRectItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqsetRect (QGraphicsRectItem a) ((Double, Double, Double, Double)) where
 qsetRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_setRect1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsRectItem_setRect1" qtc_QGraphicsRectItem_setRect1 :: Ptr (TQGraphicsRectItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqqsetRect (QGraphicsRectItem a) ((QRectF t1)) where
 qqsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_setRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_setRect" qtc_QGraphicsRectItem_setRect :: Ptr (TQGraphicsRectItem a) -> Ptr (TQRectF t1) -> IO ()

instance QqsetRect (QGraphicsRectItem a) ((RectF)) where
 qsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsRectItem_setRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsRectItem_setRect_qth" qtc_QGraphicsRectItem_setRect_qth :: Ptr (TQGraphicsRectItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qshape (QGraphicsRectItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_shape_h" qtc_QGraphicsRectItem_shape_h :: Ptr (TQGraphicsRectItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsRectItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsRectItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsRectItem_supportsExtension" qtc_QGraphicsRectItem_supportsExtension :: Ptr (TQGraphicsRectItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsRectItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qqtype (QGraphicsRectItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_type_h" qtc_QGraphicsRectItem_type_h :: Ptr (TQGraphicsRectItem a) -> IO CInt

instance Qqtype (QGraphicsRectItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_type_h cobj_x0

qGraphicsRectItem_delete :: QGraphicsRectItem a -> IO ()
qGraphicsRectItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_delete" qtc_QGraphicsRectItem_delete :: Ptr (TQGraphicsRectItem a) -> IO ()

qGraphicsRectItem_delete1 :: QGraphicsRectItem a -> IO ()
qGraphicsRectItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_delete1 cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_delete1" qtc_QGraphicsRectItem_delete1 :: Ptr (TQGraphicsRectItem a) -> IO ()

instance QaddToIndex (QGraphicsRectItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_addToIndex" qtc_QGraphicsRectItem_addToIndex :: Ptr (TQGraphicsRectItem a) -> IO ()

instance QaddToIndex (QGraphicsRectItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_addToIndex cobj_x0

instance Qadvance (QGraphicsRectItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsRectItem_advance_h" qtc_QGraphicsRectItem_advance_h :: Ptr (TQGraphicsRectItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsRectItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_advance_h cobj_x0 (toCInt x1)

instance QcollidesWithItem (QGraphicsRectItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_collidesWithItem_h" qtc_QGraphicsRectItem_collidesWithItem_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsRectItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsRectItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsRectItem_collidesWithItem1_h" qtc_QGraphicsRectItem_collidesWithItem1_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsRectItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsRectItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsRectItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsRectItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsRectItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsRectItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsRectItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsRectItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsRectItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_collidesWithPath_h" qtc_QGraphicsRectItem_collidesWithPath_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsRectItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsRectItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsRectItem_collidesWithPath1_h" qtc_QGraphicsRectItem_collidesWithPath1_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsRectItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcontextMenuEvent (QGraphicsRectItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_contextMenuEvent_h" qtc_QGraphicsRectItem_contextMenuEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsRectItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_contextMenuEvent_h cobj_x0 cobj_x1

instance QdragEnterEvent (QGraphicsRectItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_dragEnterEvent_h" qtc_QGraphicsRectItem_dragEnterEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsRectItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsRectItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_dragLeaveEvent_h" qtc_QGraphicsRectItem_dragLeaveEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsRectItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsRectItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_dragMoveEvent_h" qtc_QGraphicsRectItem_dragMoveEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsRectItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsRectItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_dropEvent_h" qtc_QGraphicsRectItem_dropEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsRectItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_dropEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsRectItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_focusInEvent_h" qtc_QGraphicsRectItem_focusInEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsRectItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsRectItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_focusOutEvent_h" qtc_QGraphicsRectItem_focusOutEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsRectItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_focusOutEvent_h cobj_x0 cobj_x1

instance QhoverEnterEvent (QGraphicsRectItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_hoverEnterEvent_h" qtc_QGraphicsRectItem_hoverEnterEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsRectItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsRectItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_hoverLeaveEvent_h" qtc_QGraphicsRectItem_hoverLeaveEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsRectItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsRectItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_hoverMoveEvent_h" qtc_QGraphicsRectItem_hoverMoveEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsRectItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsRectItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_inputMethodEvent_h" qtc_QGraphicsRectItem_inputMethodEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsRectItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsRectItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsRectItem_inputMethodQuery_h" qtc_QGraphicsRectItem_inputMethodQuery_h :: Ptr (TQGraphicsRectItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsRectItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QitemChange (QGraphicsRectItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsRectItem_itemChange_h" qtc_QGraphicsRectItem_itemChange_h :: Ptr (TQGraphicsRectItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsRectItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QkeyPressEvent (QGraphicsRectItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_keyPressEvent_h" qtc_QGraphicsRectItem_keyPressEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsRectItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsRectItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_keyReleaseEvent_h" qtc_QGraphicsRectItem_keyReleaseEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsRectItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsRectItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_mouseDoubleClickEvent_h" qtc_QGraphicsRectItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsRectItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsRectItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_mouseMoveEvent_h" qtc_QGraphicsRectItem_mouseMoveEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsRectItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsRectItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_mousePressEvent_h" qtc_QGraphicsRectItem_mousePressEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsRectItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsRectItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_mouseReleaseEvent_h" qtc_QGraphicsRectItem_mouseReleaseEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsRectItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QprepareGeometryChange (QGraphicsRectItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_prepareGeometryChange" qtc_QGraphicsRectItem_prepareGeometryChange :: Ptr (TQGraphicsRectItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsRectItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsRectItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsRectItem_removeFromIndex" qtc_QGraphicsRectItem_removeFromIndex :: Ptr (TQGraphicsRectItem a) -> IO ()

instance QremoveFromIndex (QGraphicsRectItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsRectItem_removeFromIndex cobj_x0

instance QsceneEvent (QGraphicsRectItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_sceneEvent_h" qtc_QGraphicsRectItem_sceneEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsRectItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_sceneEvent_h cobj_x0 cobj_x1

instance QsceneEventFilter (QGraphicsRectItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem_sceneEventFilter_h" qtc_QGraphicsRectItem_sceneEventFilter_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsRectItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsRectItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsRectItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsRectItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsRectItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsRectItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QwheelEvent (QGraphicsRectItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsRectItem_wheelEvent_h" qtc_QGraphicsRectItem_wheelEvent_h :: Ptr (TQGraphicsRectItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsRectItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsRectItem_wheelEvent_h cobj_x0 cobj_x1

