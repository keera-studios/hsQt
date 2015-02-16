{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Base.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.Base (
  qApplication
  , qPainterPath_elementAt, qPainterPath__Element_x, qPainterPath__Element_y
  , qAbstractTextDocumentLayout__PaintContext
  , qAbstractTextDocumentLayout__PaintContext_setPalette
  , qAbstractTextDocumentLayout__PaintContext_setClip
  , qObject_setStyle
  , setStyleChildren 
  , qIconPixmap, qIconPixmap_nf
  , qGraphicsItemCast_QGraphicsTextItem
  )
  where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Core.Base
import Qtc.Gui.QWidget as QWidget
import Qtc.Enums.Base
import Qtc.Enums.Gui.QGraphicsItem
import Qtc.Enums.Core.QLineF
import Foreign.Storable
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTabWidget

qApplication :: () -> IO (QApplication ())
qApplication _
  = do
    progName <- getProgName
    args     <- getArgs
    let argv =  (progName:args)
    withQApplicationResult $ withQListString argv $ \qargc qargv -> qtc_QApplication qargc qargv

foreign import ccall "qtc_QApplication" qtc_QApplication :: CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQApplication ()))

qAbstractTextDocumentLayout__PaintContext :: IO (PaintContext ())
qAbstractTextDocumentLayout__PaintContext
  = withPaintContextResult $ qtc_PaintContext

foreign import ccall "qtc_PaintContext" qtc_PaintContext :: IO (Ptr (TPaintContext ()))

qAbstractTextDocumentLayout__PaintContext_setPalette :: PaintContext () -> QPalette a -> IO ()
qAbstractTextDocumentLayout__PaintContext_setPalette x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_PaintContext_setPalette cobj_x0 cobj_x1

foreign import ccall "qtc_PaintContext_setPalette" qtc_PaintContext_setPalette :: Ptr (TPaintContext ()) -> Ptr (TQPalette a) -> IO ()

qAbstractTextDocumentLayout__PaintContext_setClip :: PaintContext () -> QRectF () -> IO ()
qAbstractTextDocumentLayout__PaintContext_setClip x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_PaintContext_setClip cobj_x0 cobj_x1

foreign import ccall "qtc_PaintContext_setClip" qtc_PaintContext_setClip :: Ptr (TPaintContext ()) -> Ptr (TQRectF ()) -> IO ()

qPainterPath_elementAt :: QPainterPath a -> Int -> IO (Element ())
qPainterPath_elementAt x0 x1
  = withElementResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPainterPath_elementAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPainterPath_elementAt" qtc_QPainterPath_elementAt :: Ptr (TQPainterPath a) -> CInt -> IO (Ptr (TElement ()))

qPainterPath__Element_x :: Element a -> IO Double
qPainterPath__Element_x x0
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_Element_x cobj_x0

foreign import ccall "qtc_Element_x" qtc_Element_x :: Ptr (TElement a) -> IO CDouble

qPainterPath__Element_y :: Element a -> IO Double
qPainterPath__Element_y x0
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_Element_y cobj_x0

foreign import ccall "qtc_Element_y" qtc_Element_y :: Ptr (TElement a) -> IO CDouble

qObject_setStyle :: [QObject ()] -> QStyle a -> IO ()
qObject_setStyle [] _ = return ()
qObject_setStyle (x:xs) style
  = do
    tw <- qCast_QWidget x
    setStyle tw style
    qObject_setStyle xs style

setStyleChildren :: QWidget a -> QStyle b -> IO ()
setStyleChildren w s
  = do
    setStyle w s
    cdl <- findChildren w "<QWidget*>"
    qObject_setStyle cdl s

qIconPixmap :: QPixmap a -> IO (QIcon ())
qIconPixmap x1
  = withQIconResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconPixmap cobj_x1

foreign import ccall "qtc_QIconPixmap" qtc_QIconPixmap :: Ptr (TQPixmap a) -> IO (Ptr (TQIcon ()))

qIconPixmap_nf :: QPixmap a -> IO (QIcon ())
qIconPixmap_nf x1
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QIconPixmap cobj_x1

qGraphicsItemCast_QGraphicsTextItem :: QGraphicsItem () -> IO (QGraphicsTextItem ())
qGraphicsItemCast_QGraphicsTextItem x1
  = withQGraphicsTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsItemCast_QGraphicsTextItem cobj_x1

foreign import ccall "qtc_QGraphicsItemCast_QGraphicsTextItem" qtc_QGraphicsItemCast_QGraphicsTextItem :: Ptr (TQGraphicsItem ()) -> IO (Ptr (TQGraphicsTextItem ()))

withLineIntersectResult :: (Ptr CDouble -> Ptr CDouble -> IO CLong) -> IO (IntersectType, PointF)
withLineIntersectResult f
  = alloca $ \cx ->
    alloca $ \cy ->
    do it <- f cx cy
       x <- peek cx
       y <- peek cy
       return (qEnum_fromInt $ fromCLong it, fromCPointF x y)

instance Qqintersect (QLineF a) ((LineF)) (IO (IntersectType, PointF)) where
 qintersect x0 x1
  = withLineIntersectResult $ \cpointf_xr_x cpointf_xr_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1  clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QLineF_intersect_qthp cobj_x0 clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 cpointf_xr_x cpointf_xr_y

foreign import ccall "qtc_QLineF_intersect_qthp" qtc_QLineF_intersect_qthp :: Ptr (TQLineF a) -> CDouble -> CDouble -> CDouble -> CDouble ->  Ptr CDouble -> Ptr CDouble -> IO CLong
{-
class Qscaled_nf a b | a -> b where
  scaled_nf :: a -> (Int, Int) -> b

instance Qscaled_nf (QPixmap a) (IO (QPixmap ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmap_scaled1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPixmap_scaled1" qtc_QPixmap_scaled1 :: Ptr (TQPixmap a) -> CInt -> CInt -> IO (Ptr (TQPixmap ()))

instance Qscaled_nf (QImage a) (IO (QImage ())) where
 scaled_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QImage_scaled2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QImage_scaled2" qtc_QImage_scaled2 :: Ptr (TQImage a) -> CInt -> CInt -> IO (Ptr (TQImage ()))
-}

instance QsetTabPosition (QMainWindow a) ((DockWidgetAreas, QTabWidgetTabPosition)) where
 setTabPosition x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMainWindow_setTabPosition cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMainWindow_setTabPosition" qtc_QMainWindow_setTabPosition :: Ptr (TQMainWindow a) -> CLong -> CLong -> IO ()

instance Qmodifiers (QMouseEvent ()) (()) where
 modifiers x0 ()
  = do
    i0 <- qCast_QInputEvent x0
    withQFlagsResult $
      withObjectPtr i0 $ \cobj_x0 ->
      qtc_QInputEvent_modifiers cobj_x0

instance Qmodifiers (QInputEvent ()) (()) where
 modifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QInputEvent_modifiers cobj_x0

foreign import ccall "qtc_QInputEvent_modifiers" qtc_QInputEvent_modifiers :: Ptr (TQInputEvent ()) -> IO CLong

