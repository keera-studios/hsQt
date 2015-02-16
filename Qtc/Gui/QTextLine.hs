{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextLine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextLine (
  QqTextLine(..)
  ,QqTextLine_nf(..)
  ,QcursorToX(..)
  ,lineNumber
  ,qnaturalTextRect, naturalTextRect
  ,naturalTextWidth
  ,QsetNumColumns(..)
  ,textLength
  ,textStart
  ,QxToCursor(..)
  ,qTextLine_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextLine

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextLine x1 where
  qTextLine :: x1 -> IO (QTextLine ())

instance QqTextLine (()) where
 qTextLine ()
  = withQTextLineResult $
    qtc_QTextLine

foreign import ccall "qtc_QTextLine" qtc_QTextLine :: IO (Ptr (TQTextLine ()))

instance QqTextLine ((QTextLine t1)) where
 qTextLine (x1)
  = withQTextLineResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLine1 cobj_x1

foreign import ccall "qtc_QTextLine1" qtc_QTextLine1 :: Ptr (TQTextLine t1) -> IO (Ptr (TQTextLine ()))

class QqTextLine_nf x1 where
  qTextLine_nf :: x1 -> IO (QTextLine ())

instance QqTextLine_nf (()) where
 qTextLine_nf ()
  = withObjectRefResult $
    qtc_QTextLine

instance QqTextLine_nf ((QTextLine t1)) where
 qTextLine_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLine1 cobj_x1

instance Qascent (QTextLine a) (()) (IO (Double)) where
 ascent x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_ascent cobj_x0

foreign import ccall "qtc_QTextLine_ascent" qtc_QTextLine_ascent :: Ptr (TQTextLine a) -> IO CDouble

class QcursorToX x1 where
 cursorToX :: QTextLine a -> x1 -> IO (Double)

instance QcursorToX ((Int)) where
 cursorToX x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_cursorToX cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLine_cursorToX" qtc_QTextLine_cursorToX :: Ptr (TQTextLine a) -> CInt -> IO CDouble

instance QcursorToX ((Int, Edge)) where
 cursorToX x0 (x1, x2)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_cursorToX1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextLine_cursorToX1" qtc_QTextLine_cursorToX1 :: Ptr (TQTextLine a) -> CInt -> CLong -> IO CDouble

instance Qdescent (QTextLine a) (()) (IO (Double)) where
 descent x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_descent cobj_x0

foreign import ccall "qtc_QTextLine_descent" qtc_QTextLine_descent :: Ptr (TQTextLine a) -> IO CDouble

instance Qdraw (QTextLine a) ((QPainter t1, PointF)) where
 draw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QTextLine_draw_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QTextLine_draw_qth" qtc_QTextLine_draw_qth :: Ptr (TQTextLine a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> IO ()

instance Qqdraw (QTextLine a) ((QPainter t1, QPointF t2)) where
 qdraw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLine_draw cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextLine_draw" qtc_QTextLine_draw :: Ptr (TQTextLine a) -> Ptr (TQPainter t1) -> Ptr (TQPointF t2) -> IO ()

instance Qqheight (QTextLine a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_height cobj_x0

foreign import ccall "qtc_QTextLine_height" qtc_QTextLine_height :: Ptr (TQTextLine a) -> IO CDouble

instance QqisValid (QTextLine ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_isValid cobj_x0

foreign import ccall "qtc_QTextLine_isValid" qtc_QTextLine_isValid :: Ptr (TQTextLine a) -> IO CBool

instance QqisValid (QTextLineSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_isValid cobj_x0

lineNumber :: QTextLine a -> (()) -> IO (Int)
lineNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_lineNumber cobj_x0

foreign import ccall "qtc_QTextLine_lineNumber" qtc_QTextLine_lineNumber :: Ptr (TQTextLine a) -> IO CInt

qnaturalTextRect :: QTextLine a -> (()) -> IO (QRectF ())
qnaturalTextRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_naturalTextRect cobj_x0

foreign import ccall "qtc_QTextLine_naturalTextRect" qtc_QTextLine_naturalTextRect :: Ptr (TQTextLine a) -> IO (Ptr (TQRectF ()))

naturalTextRect :: QTextLine a -> (()) -> IO (RectF)
naturalTextRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_naturalTextRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QTextLine_naturalTextRect_qth" qtc_QTextLine_naturalTextRect_qth :: Ptr (TQTextLine a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

naturalTextWidth :: QTextLine a -> (()) -> IO (Double)
naturalTextWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_naturalTextWidth cobj_x0

foreign import ccall "qtc_QTextLine_naturalTextWidth" qtc_QTextLine_naturalTextWidth :: Ptr (TQTextLine a) -> IO CDouble

instance Qposition (QTextLine a) (()) (IO (PointF)) where
 position x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_position_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QTextLine_position_qth" qtc_QTextLine_position_qth :: Ptr (TQTextLine a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqposition (QTextLine a) (()) where
 qposition x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_position cobj_x0

foreign import ccall "qtc_QTextLine_position" qtc_QTextLine_position :: Ptr (TQTextLine a) -> IO (Ptr (TQPointF ()))

instance Qqqrect (QTextLine a) (()) (IO (QRectF ())) where
 qqrect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_rect cobj_x0

foreign import ccall "qtc_QTextLine_rect" qtc_QTextLine_rect :: Ptr (TQTextLine a) -> IO (Ptr (TQRectF ()))

instance Qqrect (QTextLine a) (()) (IO (RectF)) where
 qrect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_rect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QTextLine_rect_qth" qtc_QTextLine_rect_qth :: Ptr (TQTextLine a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QsetLineWidth (QTextLine a) ((Double)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_setLineWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextLine_setLineWidth" qtc_QTextLine_setLineWidth :: Ptr (TQTextLine a) -> CDouble -> IO ()

class QsetNumColumns x1 where
 setNumColumns :: QTextLine a -> x1 -> IO ()

instance QsetNumColumns ((Int)) where
 setNumColumns x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_setNumColumns cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLine_setNumColumns" qtc_QTextLine_setNumColumns :: Ptr (TQTextLine a) -> CInt -> IO ()

instance QsetNumColumns ((Int, Double)) where
 setNumColumns x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_setNumColumns1 cobj_x0 (toCInt x1) (toCDouble x2)

foreign import ccall "qtc_QTextLine_setNumColumns1" qtc_QTextLine_setNumColumns1 :: Ptr (TQTextLine a) -> CInt -> CDouble -> IO ()

instance QsetPosition (QTextLine a) ((PointF)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QTextLine_setPosition_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QTextLine_setPosition_qth" qtc_QTextLine_setPosition_qth :: Ptr (TQTextLine a) -> CDouble -> CDouble -> IO ()

instance QqsetPosition (QTextLine a) ((QPointF t1)) where
 qsetPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLine_setPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QTextLine_setPosition" qtc_QTextLine_setPosition :: Ptr (TQTextLine a) -> Ptr (TQPointF t1) -> IO ()

textLength :: QTextLine a -> (()) -> IO (Int)
textLength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_textLength cobj_x0

foreign import ccall "qtc_QTextLine_textLength" qtc_QTextLine_textLength :: Ptr (TQTextLine a) -> IO CInt

textStart :: QTextLine a -> (()) -> IO (Int)
textStart x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_textStart cobj_x0

foreign import ccall "qtc_QTextLine_textStart" qtc_QTextLine_textStart :: Ptr (TQTextLine a) -> IO CInt

instance Qqwidth (QTextLine a) (()) (IO (Double)) where
 qwidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_width cobj_x0

foreign import ccall "qtc_QTextLine_width" qtc_QTextLine_width :: Ptr (TQTextLine a) -> IO CDouble

instance Qqx (QTextLine a) (()) (IO (Double)) where
 qx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_x cobj_x0

foreign import ccall "qtc_QTextLine_x" qtc_QTextLine_x :: Ptr (TQTextLine a) -> IO CDouble

class QxToCursor x1 where
 xToCursor :: QTextLine a -> x1 -> IO (Int)

instance QxToCursor ((Double)) where
 xToCursor x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_xToCursor cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextLine_xToCursor" qtc_QTextLine_xToCursor :: Ptr (TQTextLine a) -> CDouble -> IO CInt

instance QxToCursor ((Double, CursorPosition)) where
 xToCursor x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_xToCursor1 cobj_x0 (toCDouble x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextLine_xToCursor1" qtc_QTextLine_xToCursor1 :: Ptr (TQTextLine a) -> CDouble -> CLong -> IO CInt

instance Qqy (QTextLine a) (()) (IO (Double)) where
 qy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_y cobj_x0

foreign import ccall "qtc_QTextLine_y" qtc_QTextLine_y :: Ptr (TQTextLine a) -> IO CDouble

qTextLine_delete :: QTextLine a -> IO ()
qTextLine_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLine_delete cobj_x0

foreign import ccall "qtc_QTextLine_delete" qtc_QTextLine_delete :: Ptr (TQTextLine a) -> IO ()

