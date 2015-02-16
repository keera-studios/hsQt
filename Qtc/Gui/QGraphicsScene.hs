{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsScene.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsScene (
  QqqGraphicsScene(..), QqGraphicsScene(..)
  ,QaddLine(..), QqaddLine(..)
  ,QaddSimpleText(..)
  ,bspTreeDepth
  ,destroyItemGroup
  ,focusItem
  ,Qqinvalidate(..)
  ,itemIndexMethod
  ,qitemsBoundingRect, itemsBoundingRect
  ,mouseGrabberItem
  ,selectionArea
  ,setBspTreeDepth
  ,QsetFocusItem(..)
  ,setItemIndexMethod
  ,QsetSelectionArea(..)
  ,views
  ,qGraphicsScene_delete
  ,qGraphicsScene_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsScene

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QGraphicsScene ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsScene_userMethod" qtc_QGraphicsScene_userMethod :: Ptr (TQGraphicsScene a) -> CInt -> IO ()

instance QuserMethod (QGraphicsSceneSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsScene_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsScene ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsScene_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsScene_userMethodVariant" qtc_QGraphicsScene_userMethodVariant :: Ptr (TQGraphicsScene a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsSceneSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsScene_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqqGraphicsScene x1 where
  qqGraphicsScene :: x1 -> IO (QGraphicsScene ())

class QqGraphicsScene x1 where
  qGraphicsScene :: x1 -> IO (QGraphicsScene ())

instance QqGraphicsScene (()) where
 qGraphicsScene ()
  = withQGraphicsSceneResult $
    qtc_QGraphicsScene

foreign import ccall "qtc_QGraphicsScene" qtc_QGraphicsScene :: IO (Ptr (TQGraphicsScene ()))

instance QqqGraphicsScene ((QRectF t1)) where
 qqGraphicsScene (x1)
  = withQGraphicsSceneResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene1 cobj_x1

foreign import ccall "qtc_QGraphicsScene1" qtc_QGraphicsScene1 :: Ptr (TQRectF t1) -> IO (Ptr (TQGraphicsScene ()))

instance QqGraphicsScene ((RectF)) where
 qGraphicsScene (x1)
  = withQGraphicsSceneResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene2 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene2" qtc_QGraphicsScene2 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsScene ()))

instance QqGraphicsScene ((QObject t1)) where
 qGraphicsScene (x1)
  = withQGraphicsSceneResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene3 cobj_x1

foreign import ccall "qtc_QGraphicsScene3" qtc_QGraphicsScene3 :: Ptr (TQObject t1) -> IO (Ptr (TQGraphicsScene ()))

instance QqqGraphicsScene ((QRectF t1, QObject t2)) where
 qqGraphicsScene (x1, x2)
  = withQGraphicsSceneResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene4" qtc_QGraphicsScene4 :: Ptr (TQRectF t1) -> Ptr (TQObject t2) -> IO (Ptr (TQGraphicsScene ()))

instance QqGraphicsScene ((RectF, QObject t2)) where
 qGraphicsScene (x1, x2)
  = withQGraphicsSceneResult $
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene5 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsScene5" qtc_QGraphicsScene5 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQObject t2) -> IO (Ptr (TQGraphicsScene ()))

instance QqGraphicsScene ((Double, Double, Double, Double)) where
 qGraphicsScene (x1, x2, x3, x4)
  = withQGraphicsSceneResult $
    qtc_QGraphicsScene6 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene6" qtc_QGraphicsScene6 :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsScene ()))

instance QqGraphicsScene ((Double, Double, Double, Double, QObject t5)) where
 qGraphicsScene (x1, x2, x3, x4, x5)
  = withQGraphicsSceneResult $
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene7 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsScene7" qtc_QGraphicsScene7 :: CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQObject t5) -> IO (Ptr (TQGraphicsScene ()))

instance QaddEllipse (QGraphicsScene a) ((Double, Double, Double, Double)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_addEllipse3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_addEllipse3" qtc_QGraphicsScene_addEllipse3 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddEllipse (QGraphicsScene a) ((Double, Double, Double, Double, QPen t5)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_addEllipse4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsScene_addEllipse4" qtc_QGraphicsScene_addEllipse4 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t5) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddEllipse (QGraphicsScene a) ((Double, Double, Double, Double, QPen t5, QBrush t6)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsScene_addEllipse5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

foreign import ccall "qtc_QGraphicsScene_addEllipse5" qtc_QGraphicsScene_addEllipse5 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t5) -> Ptr (TQBrush t6) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqaddEllipse (QGraphicsScene a) ((QRectF t1)) (IO (QGraphicsEllipseItem ())) where
 qaddEllipse x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addEllipse cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addEllipse" qtc_QGraphicsScene_addEllipse :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqaddEllipse (QGraphicsScene a) ((QRectF t1, QPen t2)) (IO (QGraphicsEllipseItem ())) where
 qaddEllipse x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addEllipse1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addEllipse1" qtc_QGraphicsScene_addEllipse1 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QqaddEllipse (QGraphicsScene a) ((QRectF t1, QPen t2, QBrush t3)) (IO (QGraphicsEllipseItem ())) where
 qaddEllipse x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addEllipse2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addEllipse2" qtc_QGraphicsScene_addEllipse2 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddEllipse (QGraphicsScene a) ((RectF)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_addEllipse_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene_addEllipse_qth" qtc_QGraphicsScene_addEllipse_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddEllipse (QGraphicsScene a) ((RectF, QPen t2)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addEllipse1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsScene_addEllipse1_qth" qtc_QGraphicsScene_addEllipse1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddEllipse (QGraphicsScene a) ((RectF, QPen t2, QBrush t3)) (IO (QGraphicsEllipseItem ())) where
 addEllipse x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addEllipse2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addEllipse2_qth" qtc_QGraphicsScene_addEllipse2_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsEllipseItem ()))

instance QaddItem (QGraphicsScene a) ((QGraphicsItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addItem" qtc_QGraphicsScene_addItem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QaddItem (QGraphicsScene a) ((QGraphicsTextItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addItem_graphicstextitem" qtc_QGraphicsScene_addItem_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

class QaddLine x1 where
 addLine :: QGraphicsScene a -> x1 -> IO (QGraphicsLineItem ())

class QqaddLine x1 where
 qaddLine :: QGraphicsScene a -> x1 -> IO (QGraphicsLineItem ())

instance QaddLine ((Double, Double, Double, Double)) where
 addLine x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_addLine2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_addLine2" qtc_QGraphicsScene_addLine2 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsLineItem ()))

instance QaddLine ((Double, Double, Double, Double, QPen t5)) where
 addLine x0 (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_addLine3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsScene_addLine3" qtc_QGraphicsScene_addLine3 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t5) -> IO (Ptr (TQGraphicsLineItem ()))

instance QaddLine ((LineF)) where
 addLine x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QGraphicsScene_addLine_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 

foreign import ccall "qtc_QGraphicsScene_addLine_qth" qtc_QGraphicsScene_addLine_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsLineItem ()))

instance QaddLine ((LineF, QPen t2)) where
 addLine x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addLine1_qth cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2  cobj_x2

foreign import ccall "qtc_QGraphicsScene_addLine1_qth" qtc_QGraphicsScene_addLine1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqaddLine ((QLineF t1)) where
 qaddLine x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addLine cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addLine" qtc_QGraphicsScene_addLine :: Ptr (TQGraphicsScene a) -> Ptr (TQLineF t1) -> IO (Ptr (TQGraphicsLineItem ()))

instance QqaddLine ((QLineF t1, QPen t2)) where
 qaddLine x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addLine1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addLine1" qtc_QGraphicsScene_addLine1 :: Ptr (TQGraphicsScene a) -> Ptr (TQLineF t1) -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsLineItem ()))

instance QaddPath (QGraphicsScene a) ((QPainterPath t1)) (IO (QGraphicsPathItem ())) where
 addPath x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addPath cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addPath" qtc_QGraphicsScene_addPath :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQGraphicsPathItem ()))

instance QaddPath (QGraphicsScene a) ((QPainterPath t1, QPen t2)) (IO (QGraphicsPathItem ())) where
 addPath x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addPath1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addPath1" qtc_QGraphicsScene_addPath1 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsPathItem ()))

instance QaddPath (QGraphicsScene a) ((QPainterPath t1, QPen t2, QBrush t3)) (IO (QGraphicsPathItem ())) where
 addPath x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addPath2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addPath2" qtc_QGraphicsScene_addPath2 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsPathItem ()))

instance QaddPixmap (QGraphicsScene a) ((QPixmap t1)) (IO (QGraphicsPixmapItem ())) where
 addPixmap x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addPixmap" qtc_QGraphicsScene_addPixmap :: Ptr (TQGraphicsScene a) -> Ptr (TQPixmap t1) -> IO (Ptr (TQGraphicsPixmapItem ()))

instance QaddPolygon (QGraphicsScene a) ((QPolygonF t1)) (IO (QGraphicsPolygonItem ())) where
 addPolygon x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addPolygon cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addPolygon" qtc_QGraphicsScene_addPolygon :: Ptr (TQGraphicsScene a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QaddPolygon (QGraphicsScene a) ((QPolygonF t1, QPen t2)) (IO (QGraphicsPolygonItem ())) where
 addPolygon x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addPolygon1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addPolygon1" qtc_QGraphicsScene_addPolygon1 :: Ptr (TQGraphicsScene a) -> Ptr (TQPolygonF t1) -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QaddPolygon (QGraphicsScene a) ((QPolygonF t1, QPen t2, QBrush t3)) (IO (QGraphicsPolygonItem ())) where
 addPolygon x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addPolygon2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addPolygon2" qtc_QGraphicsScene_addPolygon2 :: Ptr (TQGraphicsScene a) -> Ptr (TQPolygonF t1) -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsPolygonItem ()))

instance QaddRect (QGraphicsScene a) ((Double, Double, Double, Double)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_addRect3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_addRect3" qtc_QGraphicsScene_addRect3 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsRectItem ()))

instance QaddRect (QGraphicsScene a) ((Double, Double, Double, Double, QPen t5)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_addRect4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5

foreign import ccall "qtc_QGraphicsScene_addRect4" qtc_QGraphicsScene_addRect4 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t5) -> IO (Ptr (TQGraphicsRectItem ()))

instance QaddRect (QGraphicsScene a) ((Double, Double, Double, Double, QPen t5, QBrush t6)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    qtc_QGraphicsScene_addRect5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) cobj_x5 cobj_x6

foreign import ccall "qtc_QGraphicsScene_addRect5" qtc_QGraphicsScene_addRect5 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t5) -> Ptr (TQBrush t6) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqaddRect (QGraphicsScene a) ((QRectF t1)) (IO (QGraphicsRectItem ())) where
 qaddRect x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_addRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_addRect" qtc_QGraphicsScene_addRect :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqaddRect (QGraphicsScene a) ((QRectF t1, QPen t2)) (IO (QGraphicsRectItem ())) where
 qaddRect x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addRect1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addRect1" qtc_QGraphicsScene_addRect1 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QqaddRect (QGraphicsScene a) ((QRectF t1, QPen t2, QBrush t3)) (IO (QGraphicsRectItem ())) where
 qaddRect x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addRect2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addRect2" qtc_QGraphicsScene_addRect2 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsRectItem ()))

instance QaddRect (QGraphicsScene a) ((RectF)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_addRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene_addRect_qth" qtc_QGraphicsScene_addRect_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQGraphicsRectItem ()))

instance QaddRect (QGraphicsScene a) ((RectF, QPen t2)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addRect1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2

foreign import ccall "qtc_QGraphicsScene_addRect1_qth" qtc_QGraphicsScene_addRect1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t2) -> IO (Ptr (TQGraphicsRectItem ()))

instance QaddRect (QGraphicsScene a) ((RectF, QPen t2, QBrush t3)) (IO (QGraphicsRectItem ())) where
 addRect x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_addRect2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_addRect2_qth" qtc_QGraphicsScene_addRect2_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQPen t2) -> Ptr (TQBrush t3) -> IO (Ptr (TQGraphicsRectItem ()))

class QaddSimpleText x1 where
 addSimpleText :: QGraphicsScene a -> x1 -> IO (QGraphicsSimpleTextItem ())

instance QaddSimpleText ((String)) where
 addSimpleText x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_addSimpleText cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsScene_addSimpleText" qtc_QGraphicsScene_addSimpleText :: Ptr (TQGraphicsScene a) -> CWString -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QaddSimpleText ((String, QFont t2)) where
 addSimpleText x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addSimpleText1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addSimpleText1" qtc_QGraphicsScene_addSimpleText1 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (TQFont t2) -> IO (Ptr (TQGraphicsSimpleTextItem ()))

instance QaddText (QGraphicsScene a) ((String)) (IO (QGraphicsTextItem ())) where
 addText x0 (x1)
  = withQGraphicsTextItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_addText cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsScene_addText" qtc_QGraphicsScene_addText :: Ptr (TQGraphicsScene a) -> CWString -> IO (Ptr (TQGraphicsTextItem ()))

instance QaddText (QGraphicsScene a) ((String, QFont t2)) (IO (QGraphicsTextItem ())) where
 addText x0 (x1, x2)
  = withQGraphicsTextItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_addText1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_addText1" qtc_QGraphicsScene_addText1 :: Ptr (TQGraphicsScene a) -> CWString -> Ptr (TQFont t2) -> IO (Ptr (TQGraphicsTextItem ()))

instance Qadvance (QGraphicsScene a) (()) where
 advance x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_advance cobj_x0

foreign import ccall "qtc_QGraphicsScene_advance" qtc_QGraphicsScene_advance :: Ptr (TQGraphicsScene a) -> IO ()

instance QbackgroundBrush (QGraphicsScene a) (()) where
 backgroundBrush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_backgroundBrush cobj_x0

foreign import ccall "qtc_QGraphicsScene_backgroundBrush" qtc_QGraphicsScene_backgroundBrush :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQBrush ()))

bspTreeDepth :: QGraphicsScene a -> (()) -> IO (Int)
bspTreeDepth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_bspTreeDepth cobj_x0

foreign import ccall "qtc_QGraphicsScene_bspTreeDepth" qtc_QGraphicsScene_bspTreeDepth :: Ptr (TQGraphicsScene a) -> IO CInt

instance QclearFocus (QGraphicsScene a) (()) where
 clearFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_clearFocus cobj_x0

foreign import ccall "qtc_QGraphicsScene_clearFocus" qtc_QGraphicsScene_clearFocus :: Ptr (TQGraphicsScene a) -> IO ()

instance QclearSelection (QGraphicsScene a) (()) where
 clearSelection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_clearSelection cobj_x0

foreign import ccall "qtc_QGraphicsScene_clearSelection" qtc_QGraphicsScene_clearSelection :: Ptr (TQGraphicsScene a) -> IO ()

instance QcollidingItems (QGraphicsScene a) ((QGraphicsItem t1)) where
 collidingItems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_collidingItems cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_collidingItems" qtc_QGraphicsScene_collidingItems :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcollidingItems (QGraphicsScene a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidingItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_collidingItems1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_collidingItems1" qtc_QGraphicsScene_collidingItems1 :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcollidingItems (QGraphicsScene a) ((QGraphicsTextItem t1)) where
 collidingItems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_collidingItems_graphicstextitem cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_collidingItems_graphicstextitem" qtc_QGraphicsScene_collidingItems_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcollidingItems (QGraphicsScene a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidingItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_collidingItems1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_collidingItems1_graphicstextitem" qtc_QGraphicsScene_collidingItems1_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcontextMenuEvent (QGraphicsScene ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_contextMenuEvent_h" qtc_QGraphicsScene_contextMenuEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsSceneSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_contextMenuEvent_h cobj_x0 cobj_x1

destroyItemGroup :: QGraphicsScene a -> ((QGraphicsItemGroup t1)) -> IO ()
destroyItemGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_destroyItemGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_destroyItemGroup" qtc_QGraphicsScene_destroyItemGroup :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItemGroup t1) -> IO ()

instance QdragEnterEvent (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragEnterEvent_h" qtc_QGraphicsScene_dragEnterEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragLeaveEvent_h" qtc_QGraphicsScene_dragLeaveEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dragMoveEvent_h" qtc_QGraphicsScene_dragMoveEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dragMoveEvent_h cobj_x0 cobj_x1

instance QqdrawBackground (QGraphicsScene ()) ((QPainter t1, QRectF t2)) where
 qdrawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawBackground_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_drawBackground_h" qtc_QGraphicsScene_drawBackground_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawBackground (QGraphicsSceneSc a) ((QPainter t1, QRectF t2)) where
 qdrawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawBackground_h cobj_x0 cobj_x1 cobj_x2

instance QdrawBackground (QGraphicsScene ()) ((QPainter t1, RectF)) where
 drawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawBackground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsScene_drawBackground_qth_h" qtc_QGraphicsScene_drawBackground_qth_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawBackground (QGraphicsSceneSc a) ((QPainter t1, RectF)) where
 drawBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawBackground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QqdrawForeground (QGraphicsScene ()) ((QPainter t1, QRectF t2)) where
 qdrawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawForeground_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_drawForeground_h" qtc_QGraphicsScene_drawForeground_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QqdrawForeground (QGraphicsSceneSc a) ((QPainter t1, QRectF t2)) where
 qdrawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_drawForeground_h cobj_x0 cobj_x1 cobj_x2

instance QdrawForeground (QGraphicsScene ()) ((QPainter t1, RectF)) where
 drawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawForeground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsScene_drawForeground_qth_h" qtc_QGraphicsScene_drawForeground_qth_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QdrawForeground (QGraphicsSceneSc a) ((QPainter t1, RectF)) where
 drawForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_drawForeground_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

instance QdrawItems (QGraphicsScene ()) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4])) where
 drawItems x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    qtc_QGraphicsScene_drawItems_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4

foreign import ccall "qtc_QGraphicsScene_drawItems_h" qtc_QGraphicsScene_drawItems_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> IO ()

instance QdrawItems (QGraphicsSceneSc a) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4])) where
 drawItems x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    qtc_QGraphicsScene_drawItems_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4

instance QdrawItems (QGraphicsScene ()) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4], QWidget t5)) where
 drawItems x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_drawItems1_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4 cobj_x5

foreign import ccall "qtc_QGraphicsScene_drawItems1_h" qtc_QGraphicsScene_drawItems1_h :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CInt -> CInt -> Ptr (Ptr (TQGraphicsItem t3)) -> CInt -> Ptr (Ptr (TQStyleOptionGraphicsItem t4)) -> Ptr (TQWidget t5) -> IO ()

instance QdrawItems (QGraphicsSceneSc a) ((QPainter t1, Int, [QGraphicsItem t3], [QStyleOptionGraphicsItem t4], QWidget t5)) where
 drawItems x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withQListObject x3 $ \cqlistlen_x3 cqlistobj_x3 ->
    withQListObject x4 $ \cqlistlen_x4 cqlistobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QGraphicsScene_drawItems1_h cobj_x0 cobj_x1 (toCInt x2) cqlistlen_x3 cqlistobj_x3 cqlistlen_x4 cqlistobj_x4 cobj_x5

instance QdropEvent (QGraphicsScene ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_dropEvent_h" qtc_QGraphicsScene_dropEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsSceneSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_dropEvent_h cobj_x0 cobj_x1

instance Qevent (QGraphicsScene ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_event_h" qtc_QGraphicsScene_event_h :: Ptr (TQGraphicsScene a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGraphicsSceneSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsScene ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_focusInEvent_h" qtc_QGraphicsScene_focusInEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsSceneSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusInEvent_h cobj_x0 cobj_x1

focusItem :: QGraphicsScene a -> (()) -> IO (QGraphicsItem ())
focusItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_focusItem cobj_x0

foreign import ccall "qtc_QGraphicsScene_focusItem" qtc_QGraphicsScene_focusItem :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQGraphicsItem ()))

instance QfocusOutEvent (QGraphicsScene ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_focusOutEvent_h" qtc_QGraphicsScene_focusOutEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsSceneSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_focusOutEvent_h cobj_x0 cobj_x1

instance QforegroundBrush (QGraphicsScene a) (()) where
 foregroundBrush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_foregroundBrush cobj_x0

foreign import ccall "qtc_QGraphicsScene_foregroundBrush" qtc_QGraphicsScene_foregroundBrush :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQBrush ()))

instance QhasFocus (QGraphicsScene a) (()) where
 hasFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_hasFocus cobj_x0

foreign import ccall "qtc_QGraphicsScene_hasFocus" qtc_QGraphicsScene_hasFocus :: Ptr (TQGraphicsScene a) -> IO CBool

instance Qqheight (QGraphicsScene a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_height cobj_x0

foreign import ccall "qtc_QGraphicsScene_height" qtc_QGraphicsScene_height :: Ptr (TQGraphicsScene a) -> IO CDouble

instance QhelpEvent (QGraphicsScene ()) ((QGraphicsSceneHelpEvent t1)) (IO ()) where
 helpEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_helpEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_helpEvent_h" qtc_QGraphicsScene_helpEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneHelpEvent t1) -> IO ()

instance QhelpEvent (QGraphicsSceneSc a) ((QGraphicsSceneHelpEvent t1)) (IO ()) where
 helpEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_helpEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsScene ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_inputMethodEvent_h" qtc_QGraphicsScene_inputMethodEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsSceneSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsScene ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsScene_inputMethodQuery_h" qtc_QGraphicsScene_inputMethodQuery_h :: Ptr (TQGraphicsScene a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsSceneSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

class Qqinvalidate x1 where
 qinvalidate :: QGraphicsScene a -> x1 -> IO ()

instance Qinvalidate (QGraphicsScene a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_invalidate cobj_x0

foreign import ccall "qtc_QGraphicsScene_invalidate" qtc_QGraphicsScene_invalidate :: Ptr (TQGraphicsScene a) -> IO ()

instance Qinvalidate (QGraphicsScene a) ((Double, Double, Double, Double)) where
 invalidate x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_invalidate3 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_invalidate3" qtc_QGraphicsScene_invalidate3 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qinvalidate (QGraphicsScene a) ((Double, Double, Double, Double, SceneLayers)) where
 invalidate x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_invalidate4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QGraphicsScene_invalidate4" qtc_QGraphicsScene_invalidate4 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance Qqinvalidate ((QRectF t1)) where
 qinvalidate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_invalidate1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_invalidate1" qtc_QGraphicsScene_invalidate1 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> IO ()

instance Qqinvalidate ((QRectF t1, SceneLayers)) where
 qinvalidate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_invalidate2 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QGraphicsScene_invalidate2" qtc_QGraphicsScene_invalidate2 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> CLong -> IO ()

instance Qinvalidate (QGraphicsScene a) ((RectF)) where
 invalidate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_invalidate1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene_invalidate1_qth" qtc_QGraphicsScene_invalidate1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qinvalidate (QGraphicsScene a) ((RectF, SceneLayers)) where
 invalidate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_invalidate2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QGraphicsScene_invalidate2_qth" qtc_QGraphicsScene_invalidate2_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance QitemAt (QGraphicsScene a) ((Double, Double)) (IO (QGraphicsItem ())) where
 itemAt x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_itemAt1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsScene_itemAt1" qtc_QGraphicsScene_itemAt1 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> IO (Ptr (TQGraphicsItem ()))

instance QitemAt (QGraphicsScene a) ((PointF)) (IO (QGraphicsItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsScene_itemAt_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsScene_itemAt_qth" qtc_QGraphicsScene_itemAt_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> IO (Ptr (TQGraphicsItem ()))

instance QqitemAt (QGraphicsScene a) ((QPointF t1)) (IO (QGraphicsItem ())) where
 qitemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_itemAt cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_itemAt" qtc_QGraphicsScene_itemAt :: Ptr (TQGraphicsScene a) -> Ptr (TQPointF t1) -> IO (Ptr (TQGraphicsItem ()))

itemIndexMethod :: QGraphicsScene a -> (()) -> IO (ItemIndexMethod)
itemIndexMethod x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_itemIndexMethod cobj_x0

foreign import ccall "qtc_QGraphicsScene_itemIndexMethod" qtc_QGraphicsScene_itemIndexMethod :: Ptr (TQGraphicsScene a) -> IO CLong

instance Qitems (QGraphicsScene a) (()) (IO ([QGraphicsItem ()])) where
 items x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_items cobj_x0 arr

foreign import ccall "qtc_QGraphicsScene_items" qtc_QGraphicsScene_items :: Ptr (TQGraphicsScene a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((Double, Double, Double, Double)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2, x3, x4)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_items8 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) arr

foreign import ccall "qtc_QGraphicsScene_items8" qtc_QGraphicsScene_items8 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((Double, Double, Double, Double, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2, x3, x4, x5)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_items9 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCLong $ qEnum_toInt x5) arr

foreign import ccall "qtc_QGraphicsScene_items9" qtc_QGraphicsScene_items9 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((PointF)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsScene_items3_qth cobj_x0 cpointf_x1_x cpointf_x1_y  arr

foreign import ccall "qtc_QGraphicsScene_items3_qth" qtc_QGraphicsScene_items3_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((QPainterPath t1)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items4 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_items4" qtc_QGraphicsScene_items4 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((QPainterPath t1, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items5 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_items5" qtc_QGraphicsScene_items5 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsScene a) ((QPointF t1)) where
 qitems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items3 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_items3" qtc_QGraphicsScene_items3 :: Ptr (TQGraphicsScene a) -> Ptr (TQPointF t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((QPolygonF t1)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items2 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_items2" qtc_QGraphicsScene_items2 :: Ptr (TQGraphicsScene a) -> Ptr (TQPolygonF t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((QPolygonF t1, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items6 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_items6" qtc_QGraphicsScene_items6 :: Ptr (TQGraphicsScene a) -> Ptr (TQPolygonF t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsScene a) ((QRectF t1)) where
 qitems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items1 cobj_x0 cobj_x1 arr

foreign import ccall "qtc_QGraphicsScene_items1" qtc_QGraphicsScene_items1 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qqitems (QGraphicsScene a) ((QRectF t1, ItemSelectionMode)) where
 qitems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_items7 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_items7" qtc_QGraphicsScene_items7 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((RectF)) (IO ([QGraphicsItem ()])) where
 items x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_items1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  arr

foreign import ccall "qtc_QGraphicsScene_items1_qth" qtc_QGraphicsScene_items1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qitems (QGraphicsScene a) ((RectF, ItemSelectionMode)) (IO ([QGraphicsItem ()])) where
 items x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_items7_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCLong $ qEnum_toInt x2) arr

foreign import ccall "qtc_QGraphicsScene_items7_qth" qtc_QGraphicsScene_items7_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

qitemsBoundingRect :: QGraphicsScene a -> (()) -> IO (QRectF ())
qitemsBoundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_itemsBoundingRect cobj_x0

foreign import ccall "qtc_QGraphicsScene_itemsBoundingRect" qtc_QGraphicsScene_itemsBoundingRect :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQRectF ()))

itemsBoundingRect :: QGraphicsScene a -> (()) -> IO (RectF)
itemsBoundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_itemsBoundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsScene_itemsBoundingRect_qth" qtc_QGraphicsScene_itemsBoundingRect_qth :: Ptr (TQGraphicsScene a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QkeyPressEvent (QGraphicsScene ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_keyPressEvent_h" qtc_QGraphicsScene_keyPressEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsSceneSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsScene ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_keyReleaseEvent_h" qtc_QGraphicsScene_keyReleaseEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsSceneSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseDoubleClickEvent_h" qtc_QGraphicsScene_mouseDoubleClickEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseDoubleClickEvent_h cobj_x0 cobj_x1

mouseGrabberItem :: QGraphicsScene a -> (()) -> IO (QGraphicsItem ())
mouseGrabberItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_mouseGrabberItem cobj_x0

foreign import ccall "qtc_QGraphicsScene_mouseGrabberItem" qtc_QGraphicsScene_mouseGrabberItem :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQGraphicsItem ()))

instance QmouseMoveEvent (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseMoveEvent_h" qtc_QGraphicsScene_mouseMoveEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mousePressEvent_h" qtc_QGraphicsScene_mousePressEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsScene ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_mouseReleaseEvent_h" qtc_QGraphicsScene_mouseReleaseEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsSceneSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QremoveItem (QGraphicsScene a) ((QGraphicsItem t1)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_removeItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_removeItem" qtc_QGraphicsScene_removeItem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QremoveItem (QGraphicsScene a) ((QGraphicsTextItem t1)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_removeItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_removeItem_graphicstextitem" qtc_QGraphicsScene_removeItem_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance Qrender (QGraphicsScene a) ((QPainter t1)) where
 render x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_render cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_render" qtc_QGraphicsScene_render :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> IO ()

instance Qqrender (QGraphicsScene a) ((QPainter t1, QRectF t2)) where
 qrender x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_render1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_render1" qtc_QGraphicsScene_render1 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance Qqrender (QGraphicsScene a) ((QPainter t1, QRectF t2, QRectF t3)) where
 qrender x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_render2 cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsScene_render2" qtc_QGraphicsScene_render2 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQRectF t3) -> IO ()

instance Qqrender (QGraphicsScene a) ((QPainter t1, QRectF t2, QRectF t3, AspectRatioMode)) where
 qrender x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsScene_render3 cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QGraphicsScene_render3" qtc_QGraphicsScene_render3 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQRectF t3) -> CLong -> IO ()

instance Qrender (QGraphicsScene a) ((QPainter t1, RectF)) where
 render x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsScene_render1_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsScene_render1_qth" qtc_QGraphicsScene_render1_qth :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qrender (QGraphicsScene a) ((QPainter t1, RectF, RectF)) where
 render x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QGraphicsScene_render2_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h 

foreign import ccall "qtc_QGraphicsScene_render2_qth" qtc_QGraphicsScene_render2_qth :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qrender (QGraphicsScene a) ((QPainter t1, RectF, RectF, AspectRatioMode)) where
 render x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withCRectF x3 $ \crectf_x3_x crectf_x3_y  crectf_x3_w crectf_x3_h -> 
    qtc_QGraphicsScene_render3_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  crectf_x3_x crectf_x3_y crectf_x3_w crectf_x3_h  (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QGraphicsScene_render3_qth" qtc_QGraphicsScene_render3_qth :: Ptr (TQGraphicsScene a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CLong -> IO ()

instance QqsceneRect (QGraphicsScene a) (()) where
 qsceneRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_sceneRect cobj_x0

foreign import ccall "qtc_QGraphicsScene_sceneRect" qtc_QGraphicsScene_sceneRect :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQRectF ()))

instance QsceneRect (QGraphicsScene a) (()) where
 sceneRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_sceneRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsScene_sceneRect_qth" qtc_QGraphicsScene_sceneRect_qth :: Ptr (TQGraphicsScene a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QselectedItems (QGraphicsScene a) (()) (IO ([QGraphicsItem ()])) where
 selectedItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_selectedItems cobj_x0 arr

foreign import ccall "qtc_QGraphicsScene_selectedItems" qtc_QGraphicsScene_selectedItems :: Ptr (TQGraphicsScene a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

selectionArea :: QGraphicsScene a -> (()) -> IO (QPainterPath ())
selectionArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_selectionArea cobj_x0

foreign import ccall "qtc_QGraphicsScene_selectionArea" qtc_QGraphicsScene_selectionArea :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQPainterPath ()))

instance QsetBackgroundBrush (QGraphicsScene a) ((QBrush t1)) where
 setBackgroundBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setBackgroundBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setBackgroundBrush" qtc_QGraphicsScene_setBackgroundBrush :: Ptr (TQGraphicsScene a) -> Ptr (TQBrush t1) -> IO ()

setBspTreeDepth :: QGraphicsScene a -> ((Int)) -> IO ()
setBspTreeDepth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_setBspTreeDepth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsScene_setBspTreeDepth" qtc_QGraphicsScene_setBspTreeDepth :: Ptr (TQGraphicsScene a) -> CInt -> IO ()

instance QsetFocus (QGraphicsScene a) (()) where
 setFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_setFocus cobj_x0

foreign import ccall "qtc_QGraphicsScene_setFocus" qtc_QGraphicsScene_setFocus :: Ptr (TQGraphicsScene a) -> IO ()

instance QsetFocus (QGraphicsScene a) ((FocusReason)) where
 setFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_setFocus1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsScene_setFocus1" qtc_QGraphicsScene_setFocus1 :: Ptr (TQGraphicsScene a) -> CLong -> IO ()

class QsetFocusItem x1 where
 setFocusItem :: QGraphicsScene a -> x1 -> IO ()

instance QsetFocusItem ((QGraphicsItem t1)) where
 setFocusItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setFocusItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setFocusItem" qtc_QGraphicsScene_setFocusItem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QsetFocusItem ((QGraphicsItem t1, FocusReason)) where
 setFocusItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setFocusItem1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsScene_setFocusItem1" qtc_QGraphicsScene_setFocusItem1 :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO ()

instance QsetFocusItem ((QGraphicsTextItem t1)) where
 setFocusItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setFocusItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setFocusItem_graphicstextitem" qtc_QGraphicsScene_setFocusItem_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QsetFocusItem ((QGraphicsTextItem t1, FocusReason)) where
 setFocusItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setFocusItem1_graphicstextitem cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsScene_setFocusItem1_graphicstextitem" qtc_QGraphicsScene_setFocusItem1_graphicstextitem :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO ()

instance QsetForegroundBrush (QGraphicsScene a) ((QBrush t1)) where
 setForegroundBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setForegroundBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setForegroundBrush" qtc_QGraphicsScene_setForegroundBrush :: Ptr (TQGraphicsScene a) -> Ptr (TQBrush t1) -> IO ()

setItemIndexMethod :: QGraphicsScene a -> ((ItemIndexMethod)) -> IO ()
setItemIndexMethod x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_setItemIndexMethod cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsScene_setItemIndexMethod" qtc_QGraphicsScene_setItemIndexMethod :: Ptr (TQGraphicsScene a) -> CLong -> IO ()

instance QsetSceneRect (QGraphicsScene a) ((Double, Double, Double, Double)) where
 setSceneRect x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_setSceneRect1 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_setSceneRect1" qtc_QGraphicsScene_setSceneRect1 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqsetSceneRect (QGraphicsScene a) ((QRectF t1)) where
 qsetSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setSceneRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setSceneRect" qtc_QGraphicsScene_setSceneRect :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> IO ()

instance QsetSceneRect (QGraphicsScene a) ((RectF)) where
 setSceneRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_setSceneRect_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene_setSceneRect_qth" qtc_QGraphicsScene_setSceneRect_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

class QsetSelectionArea x1 where
 setSelectionArea :: QGraphicsScene a -> x1 -> IO ()

instance QsetSelectionArea ((QPainterPath t1)) where
 setSelectionArea x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setSelectionArea cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_setSelectionArea" qtc_QGraphicsScene_setSelectionArea :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> IO ()

instance QsetSelectionArea ((QPainterPath t1, ItemSelectionMode)) where
 setSelectionArea x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_setSelectionArea1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsScene_setSelectionArea1" qtc_QGraphicsScene_setSelectionArea1 :: Ptr (TQGraphicsScene a) -> Ptr (TQPainterPath t1) -> CLong -> IO ()

instance Qupdate (QGraphicsScene a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_update cobj_x0

foreign import ccall "qtc_QGraphicsScene_update" qtc_QGraphicsScene_update :: Ptr (TQGraphicsScene a) -> IO ()

instance Qupdate (QGraphicsScene a) ((Double, Double, Double, Double)) where
 update x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_update2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsScene_update2" qtc_QGraphicsScene_update2 :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qqupdate (QGraphicsScene a) ((QRectF t1)) where
 qupdate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_update1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_update1" qtc_QGraphicsScene_update1 :: Ptr (TQGraphicsScene a) -> Ptr (TQRectF t1) -> IO ()

instance Qupdate (QGraphicsScene a) ((RectF)) where
 update x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsScene_update1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsScene_update1_qth" qtc_QGraphicsScene_update1_qth :: Ptr (TQGraphicsScene a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

views :: QGraphicsScene a -> (()) -> IO ([QGraphicsView ()])
views x0 ()
  = withQListQGraphicsViewResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_views cobj_x0 arr

foreign import ccall "qtc_QGraphicsScene_views" qtc_QGraphicsScene_views :: Ptr (TQGraphicsScene a) -> Ptr (Ptr (TQGraphicsView ())) -> IO CInt

instance QwheelEvent (QGraphicsScene ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_wheelEvent_h" qtc_QGraphicsScene_wheelEvent_h :: Ptr (TQGraphicsScene a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsSceneSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_wheelEvent_h cobj_x0 cobj_x1

instance Qqwidth (QGraphicsScene a) (()) (IO (Double)) where
 qwidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_width cobj_x0

foreign import ccall "qtc_QGraphicsScene_width" qtc_QGraphicsScene_width :: Ptr (TQGraphicsScene a) -> IO CDouble

qGraphicsScene_delete :: QGraphicsScene a -> IO ()
qGraphicsScene_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_delete cobj_x0

foreign import ccall "qtc_QGraphicsScene_delete" qtc_QGraphicsScene_delete :: Ptr (TQGraphicsScene a) -> IO ()

qGraphicsScene_deleteLater :: QGraphicsScene a -> IO ()
qGraphicsScene_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_deleteLater cobj_x0

foreign import ccall "qtc_QGraphicsScene_deleteLater" qtc_QGraphicsScene_deleteLater :: Ptr (TQGraphicsScene a) -> IO ()

instance QchildEvent (QGraphicsScene ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_childEvent" qtc_QGraphicsScene_childEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGraphicsSceneSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QGraphicsScene ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsScene_connectNotify" qtc_QGraphicsScene_connectNotify :: Ptr (TQGraphicsScene a) -> CWString -> IO ()

instance QconnectNotify (QGraphicsSceneSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGraphicsScene ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_customEvent" qtc_QGraphicsScene_customEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGraphicsSceneSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGraphicsScene ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsScene_disconnectNotify" qtc_QGraphicsScene_disconnectNotify :: Ptr (TQGraphicsScene a) -> CWString -> IO ()

instance QdisconnectNotify (QGraphicsSceneSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QGraphicsScene ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsScene_eventFilter_h" qtc_QGraphicsScene_eventFilter_h :: Ptr (TQGraphicsScene a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGraphicsSceneSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsScene_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGraphicsScene ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsScene_receivers" qtc_QGraphicsScene_receivers :: Ptr (TQGraphicsScene a) -> CWString -> IO CInt

instance Qreceivers (QGraphicsSceneSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsScene_receivers cobj_x0 cstr_x1

instance Qsender (QGraphicsScene ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_sender cobj_x0

foreign import ccall "qtc_QGraphicsScene_sender" qtc_QGraphicsScene_sender :: Ptr (TQGraphicsScene a) -> IO (Ptr (TQObject ()))

instance Qsender (QGraphicsSceneSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsScene_sender cobj_x0

instance QtimerEvent (QGraphicsScene ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsScene_timerEvent" qtc_QGraphicsScene_timerEvent :: Ptr (TQGraphicsScene a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGraphicsSceneSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsScene_timerEvent cobj_x0 cobj_x1

