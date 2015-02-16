{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPen.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPen (
  QqPen(..)
  ,QqPen_nf(..)
  ,capStyle
  ,dashOffset
  ,isCosmetic
  ,isSolid
  ,joinStyle
  ,miterLimit
  ,setCapStyle
  ,setCosmetic
  ,setDashOffset
  ,setDashPattern
  ,setJoinStyle
  ,setMiterLimit
  ,setWidthF
  ,widthF
  ,qPen_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqPen x1 where
  qPen :: x1 -> IO (QPen ())

instance QqPen (()) where
 qPen ()
  = withQPenResult $
    qtc_QPen

foreign import ccall "qtc_QPen" qtc_QPen :: IO (Ptr (TQPen ()))

instance QqPen ((PenStyle)) where
 qPen (x1)
  = withQPenResult $
    qtc_QPen1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPen1" qtc_QPen1 :: CLong -> IO (Ptr (TQPen ()))

instance QqPen ((QColor t1)) where
 qPen (x1)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen2 cobj_x1

foreign import ccall "qtc_QPen2" qtc_QPen2 :: Ptr (TQColor t1) -> IO (Ptr (TQPen ()))

instance QqPen ((QPen t1)) where
 qPen (x1)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen3 cobj_x1

foreign import ccall "qtc_QPen3" qtc_QPen3 :: Ptr (TQPen t1) -> IO (Ptr (TQPen ()))

instance QqPen ((QBrush t1, Double)) where
 qPen (x1, x2)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen4 cobj_x1 (toCDouble x2)

foreign import ccall "qtc_QPen4" qtc_QPen4 :: Ptr (TQBrush t1) -> CDouble -> IO (Ptr (TQPen ()))

instance QqPen ((QBrush t1, Double, PenStyle)) where
 qPen (x1, x2, x3)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen5 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QPen5" qtc_QPen5 :: Ptr (TQBrush t1) -> CDouble -> CLong -> IO (Ptr (TQPen ()))

instance QqPen ((QBrush t1, Double, PenStyle, PenCapStyle)) where
 qPen (x1, x2, x3, x4)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen6 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QPen6" qtc_QPen6 :: Ptr (TQBrush t1) -> CDouble -> CLong -> CLong -> IO (Ptr (TQPen ()))

instance QqPen ((QBrush t1, Double, PenStyle, PenCapStyle, PenJoinStyle)) where
 qPen (x1, x2, x3, x4, x5)
  = withQPenResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen7 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QPen7" qtc_QPen7 :: Ptr (TQBrush t1) -> CDouble -> CLong -> CLong -> CLong -> IO (Ptr (TQPen ()))

class QqPen_nf x1 where
  qPen_nf :: x1 -> IO (QPen ())

instance QqPen_nf (()) where
 qPen_nf ()
  = withObjectRefResult $
    qtc_QPen

instance QqPen_nf ((PenStyle)) where
 qPen_nf (x1)
  = withObjectRefResult $
    qtc_QPen1 (toCLong $ qEnum_toInt x1)

instance QqPen_nf ((QColor t1)) where
 qPen_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen2 cobj_x1

instance QqPen_nf ((QPen t1)) where
 qPen_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen3 cobj_x1

instance QqPen_nf ((QBrush t1, Double)) where
 qPen_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen4 cobj_x1 (toCDouble x2)

instance QqPen_nf ((QBrush t1, Double, PenStyle)) where
 qPen_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen5 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3)

instance QqPen_nf ((QBrush t1, Double, PenStyle, PenCapStyle)) where
 qPen_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen6 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

instance QqPen_nf ((QBrush t1, Double, PenStyle, PenCapStyle, PenJoinStyle)) where
 qPen_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen7 cobj_x1 (toCDouble x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

instance Qbrush (QPen a) (()) where
 brush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_brush cobj_x0

foreign import ccall "qtc_QPen_brush" qtc_QPen_brush :: Ptr (TQPen a) -> IO (Ptr (TQBrush ()))

capStyle :: QPen a -> (()) -> IO (PenCapStyle)
capStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_capStyle cobj_x0

foreign import ccall "qtc_QPen_capStyle" qtc_QPen_capStyle :: Ptr (TQPen a) -> IO CLong

instance Qcolor (QPen a) (()) (IO (QColor ())) where
 color x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_color cobj_x0

foreign import ccall "qtc_QPen_color" qtc_QPen_color :: Ptr (TQPen a) -> IO (Ptr (TQColor ()))

dashOffset :: QPen a -> (()) -> IO (Double)
dashOffset x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_dashOffset cobj_x0

foreign import ccall "qtc_QPen_dashOffset" qtc_QPen_dashOffset :: Ptr (TQPen a) -> IO CDouble

isCosmetic :: QPen a -> (()) -> IO (Bool)
isCosmetic x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_isCosmetic cobj_x0

foreign import ccall "qtc_QPen_isCosmetic" qtc_QPen_isCosmetic :: Ptr (TQPen a) -> IO CBool

instance QisDetached (QPen a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_isDetached cobj_x0

foreign import ccall "qtc_QPen_isDetached" qtc_QPen_isDetached :: Ptr (TQPen a) -> IO CBool

isSolid :: QPen a -> (()) -> IO (Bool)
isSolid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_isSolid cobj_x0

foreign import ccall "qtc_QPen_isSolid" qtc_QPen_isSolid :: Ptr (TQPen a) -> IO CBool

joinStyle :: QPen a -> (()) -> IO (PenJoinStyle)
joinStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_joinStyle cobj_x0

foreign import ccall "qtc_QPen_joinStyle" qtc_QPen_joinStyle :: Ptr (TQPen a) -> IO CLong

miterLimit :: QPen a -> (()) -> IO (Double)
miterLimit x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_miterLimit cobj_x0

foreign import ccall "qtc_QPen_miterLimit" qtc_QPen_miterLimit :: Ptr (TQPen a) -> IO CDouble

instance QsetBrush (QPen a) ((QBrush t1)) where
 setBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen_setBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QPen_setBrush" qtc_QPen_setBrush :: Ptr (TQPen a) -> Ptr (TQBrush t1) -> IO ()

setCapStyle :: QPen a -> ((PenCapStyle)) -> IO ()
setCapStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setCapStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPen_setCapStyle" qtc_QPen_setCapStyle :: Ptr (TQPen a) -> CLong -> IO ()

instance QsetColor (QPen a) ((QColor t1)) where
 setColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPen_setColor cobj_x0 cobj_x1

foreign import ccall "qtc_QPen_setColor" qtc_QPen_setColor :: Ptr (TQPen a) -> Ptr (TQColor t1) -> IO ()

setCosmetic :: QPen a -> ((Bool)) -> IO ()
setCosmetic x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setCosmetic cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPen_setCosmetic" qtc_QPen_setCosmetic :: Ptr (TQPen a) -> CBool -> IO ()

setDashOffset :: QPen a -> ((Double)) -> IO ()
setDashOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setDashOffset cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPen_setDashOffset" qtc_QPen_setDashOffset :: Ptr (TQPen a) -> CDouble -> IO ()

setDashPattern :: QPen a -> (([Double])) -> IO ()
setDashPattern x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListDouble x1 $ \cqlistlen_x1 cqlistdouble_x1 ->
    qtc_QPen_setDashPattern cobj_x0 cqlistlen_x1 cqlistdouble_x1

foreign import ccall "qtc_QPen_setDashPattern" qtc_QPen_setDashPattern :: Ptr (TQPen a) -> CInt -> Ptr (CDouble) -> IO ()

setJoinStyle :: QPen a -> ((PenJoinStyle)) -> IO ()
setJoinStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setJoinStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPen_setJoinStyle" qtc_QPen_setJoinStyle :: Ptr (TQPen a) -> CLong -> IO ()

setMiterLimit :: QPen a -> ((Double)) -> IO ()
setMiterLimit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setMiterLimit cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPen_setMiterLimit" qtc_QPen_setMiterLimit :: Ptr (TQPen a) -> CDouble -> IO ()

instance QsetStyle (QPen a) ((PenStyle)) where
 setStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPen_setStyle" qtc_QPen_setStyle :: Ptr (TQPen a) -> CLong -> IO ()

instance QqsetWidth (QPen a) ((Int)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPen_setWidth" qtc_QPen_setWidth :: Ptr (TQPen a) -> CInt -> IO ()

setWidthF :: QPen a -> ((Double)) -> IO ()
setWidthF x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_setWidthF cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QPen_setWidthF" qtc_QPen_setWidthF :: Ptr (TQPen a) -> CDouble -> IO ()

instance Qstyle (QPen a) (()) (IO (PenStyle)) where
 style x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_style cobj_x0

foreign import ccall "qtc_QPen_style" qtc_QPen_style :: Ptr (TQPen a) -> IO CLong

instance Qqwidth (QPen a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_width cobj_x0

foreign import ccall "qtc_QPen_width" qtc_QPen_width :: Ptr (TQPen a) -> IO CInt

widthF :: QPen a -> (()) -> IO (Double)
widthF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_widthF cobj_x0

foreign import ccall "qtc_QPen_widthF" qtc_QPen_widthF :: Ptr (TQPen a) -> IO CDouble

qPen_delete :: QPen a -> IO ()
qPen_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPen_delete cobj_x0

foreign import ccall "qtc_QPen_delete" qtc_QPen_delete :: Ptr (TQPen a) -> IO ()

