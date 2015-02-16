{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextLayout (
  QqTextLayout(..)
  ,QqTextLayout_nf(..)
  ,additionalFormats
  ,beginLayout
  ,cacheEnabled
  ,clearAdditionalFormats
  ,createLine
  ,QdrawCursor(..), QqdrawCursor(..)
  ,endLayout
  ,isValidCursorPosition
  ,lineAt
  ,lineCount
  ,lineForTextPosition
  ,QnextCursorPosition(..)
  ,preeditAreaPosition
  ,preeditAreaText
  ,QpreviousCursorPosition(..)
  ,setCacheEnabled
  ,setPreeditArea
  ,setTextOption
  ,textOption
  ,qTextLayout_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextLayout

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextLayout x1 where
  qTextLayout :: x1 -> IO (QTextLayout ())

instance QqTextLayout (()) where
 qTextLayout ()
  = withQTextLayoutResult $
    qtc_QTextLayout

foreign import ccall "qtc_QTextLayout" qtc_QTextLayout :: IO (Ptr (TQTextLayout ()))

instance QqTextLayout ((String)) where
 qTextLayout (x1)
  = withQTextLayoutResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextLayout1 cstr_x1

foreign import ccall "qtc_QTextLayout1" qtc_QTextLayout1 :: CWString -> IO (Ptr (TQTextLayout ()))

instance QqTextLayout ((QTextBlock t1)) where
 qTextLayout (x1)
  = withQTextLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLayout2 cobj_x1

foreign import ccall "qtc_QTextLayout2" qtc_QTextLayout2 :: Ptr (TQTextBlock t1) -> IO (Ptr (TQTextLayout ()))

instance QqTextLayout ((String, QFont t2)) where
 qTextLayout (x1, x2)
  = withQTextLayoutResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLayout3 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextLayout3" qtc_QTextLayout3 :: CWString -> Ptr (TQFont t2) -> IO (Ptr (TQTextLayout ()))

instance QqTextLayout ((String, QFont t2, QPaintDevice t3)) where
 qTextLayout (x1, x2, x3)
  = withQTextLayoutResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextLayout4 cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTextLayout4" qtc_QTextLayout4 :: CWString -> Ptr (TQFont t2) -> Ptr (TQPaintDevice t3) -> IO (Ptr (TQTextLayout ()))

instance QqTextLayout ((String, QFont t2, QWidget t3)) where
 qTextLayout (x1, x2, x3)
  = withQTextLayoutResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextLayout4_widget cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QTextLayout4_widget" qtc_QTextLayout4_widget :: CWString -> Ptr (TQFont t2) -> Ptr (TQWidget t3) -> IO (Ptr (TQTextLayout ()))

class QqTextLayout_nf x1 where
  qTextLayout_nf :: x1 -> IO (QTextLayout ())

instance QqTextLayout_nf (()) where
 qTextLayout_nf ()
  = withObjectRefResult $
    qtc_QTextLayout

instance QqTextLayout_nf ((String)) where
 qTextLayout_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextLayout1 cstr_x1

instance QqTextLayout_nf ((QTextBlock t1)) where
 qTextLayout_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLayout2 cobj_x1

instance QqTextLayout_nf ((String, QFont t2)) where
 qTextLayout_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLayout3 cstr_x1 cobj_x2

instance QqTextLayout_nf ((String, QFont t2, QPaintDevice t3)) where
 qTextLayout_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextLayout4 cstr_x1 cobj_x2 cobj_x3

instance QqTextLayout_nf ((String, QFont t2, QWidget t3)) where
 qTextLayout_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextLayout4_widget cstr_x1 cobj_x2 cobj_x3

additionalFormats :: QTextLayout a -> (()) -> IO ([QTextLayout__FormatRange ()])
additionalFormats x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_additionalFormats cobj_x0 arr

foreign import ccall "qtc_QTextLayout_additionalFormats" qtc_QTextLayout_additionalFormats :: Ptr (TQTextLayout a) -> Ptr (Ptr (TQTextLayout__FormatRange ())) -> IO CInt

beginLayout :: QTextLayout a -> (()) -> IO ()
beginLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_beginLayout cobj_x0

foreign import ccall "qtc_QTextLayout_beginLayout" qtc_QTextLayout_beginLayout :: Ptr (TQTextLayout a) -> IO ()

instance QqqboundingRect (QTextLayout a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_boundingRect cobj_x0

foreign import ccall "qtc_QTextLayout_boundingRect" qtc_QTextLayout_boundingRect :: Ptr (TQTextLayout a) -> IO (Ptr (TQRectF ()))

instance QqboundingRect (QTextLayout a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_boundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QTextLayout_boundingRect_qth" qtc_QTextLayout_boundingRect_qth :: Ptr (TQTextLayout a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

cacheEnabled :: QTextLayout a -> (()) -> IO (Bool)
cacheEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_cacheEnabled cobj_x0

foreign import ccall "qtc_QTextLayout_cacheEnabled" qtc_QTextLayout_cacheEnabled :: Ptr (TQTextLayout a) -> IO CBool

clearAdditionalFormats :: QTextLayout a -> (()) -> IO ()
clearAdditionalFormats x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_clearAdditionalFormats cobj_x0

foreign import ccall "qtc_QTextLayout_clearAdditionalFormats" qtc_QTextLayout_clearAdditionalFormats :: Ptr (TQTextLayout a) -> IO ()

createLine :: QTextLayout a -> (()) -> IO (QTextLine ())
createLine x0 ()
  = withQTextLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_createLine cobj_x0

foreign import ccall "qtc_QTextLayout_createLine" qtc_QTextLayout_createLine :: Ptr (TQTextLayout a) -> IO (Ptr (TQTextLine ()))

instance Qdraw (QTextLayout a) ((QPainter t1, PointF)) where
 draw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QTextLayout_draw_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y 

foreign import ccall "qtc_QTextLayout_draw_qth" qtc_QTextLayout_draw_qth :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> IO ()

instance Qqdraw (QTextLayout a) ((QPainter t1, QPointF t2)) where
 qdraw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLayout_draw cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextLayout_draw" qtc_QTextLayout_draw :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> Ptr (TQPointF t2) -> IO ()

class QdrawCursor x1 where
 drawCursor :: QTextLayout a -> x1 -> IO ()

class QqdrawCursor x1 where
 qdrawCursor :: QTextLayout a -> x1 -> IO ()

instance QdrawCursor ((QPainter t1, PointF, Int)) where
 drawCursor x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QTextLayout_drawCursor_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  (toCInt x3)

foreign import ccall "qtc_QTextLayout_drawCursor_qth" qtc_QTextLayout_drawCursor_qth :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CInt -> IO ()

instance QdrawCursor ((QPainter t1, PointF, Int, Int)) where
 drawCursor x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QTextLayout_drawCursor1_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextLayout_drawCursor1_qth" qtc_QTextLayout_drawCursor1_qth :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QqdrawCursor ((QPainter t1, QPointF t2, Int)) where
 qdrawCursor x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLayout_drawCursor cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QTextLayout_drawCursor" qtc_QTextLayout_drawCursor :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> Ptr (TQPointF t2) -> CInt -> IO ()

instance QqdrawCursor ((QPainter t1, QPointF t2, Int, Int)) where
 qdrawCursor x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextLayout_drawCursor1 cobj_x0 cobj_x1 cobj_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextLayout_drawCursor1" qtc_QTextLayout_drawCursor1 :: Ptr (TQTextLayout a) -> Ptr (TQPainter t1) -> Ptr (TQPointF t2) -> CInt -> CInt -> IO ()

endLayout :: QTextLayout a -> (()) -> IO ()
endLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_endLayout cobj_x0

foreign import ccall "qtc_QTextLayout_endLayout" qtc_QTextLayout_endLayout :: Ptr (TQTextLayout a) -> IO ()

instance Qfont (QTextLayout a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_font cobj_x0

foreign import ccall "qtc_QTextLayout_font" qtc_QTextLayout_font :: Ptr (TQTextLayout a) -> IO (Ptr (TQFont ()))

isValidCursorPosition :: QTextLayout a -> ((Int)) -> IO (Bool)
isValidCursorPosition x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_isValidCursorPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLayout_isValidCursorPosition" qtc_QTextLayout_isValidCursorPosition :: Ptr (TQTextLayout a) -> CInt -> IO CBool

lineAt :: QTextLayout a -> ((Int)) -> IO (QTextLine ())
lineAt x0 (x1)
  = withQTextLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_lineAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLayout_lineAt" qtc_QTextLayout_lineAt :: Ptr (TQTextLayout a) -> CInt -> IO (Ptr (TQTextLine ()))

lineCount :: QTextLayout a -> (()) -> IO (Int)
lineCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_lineCount cobj_x0

foreign import ccall "qtc_QTextLayout_lineCount" qtc_QTextLayout_lineCount :: Ptr (TQTextLayout a) -> IO CInt

lineForTextPosition :: QTextLayout a -> ((Int)) -> IO (QTextLine ())
lineForTextPosition x0 (x1)
  = withQTextLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_lineForTextPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLayout_lineForTextPosition" qtc_QTextLayout_lineForTextPosition :: Ptr (TQTextLayout a) -> CInt -> IO (Ptr (TQTextLine ()))

instance QmaximumWidth (QTextLayout a) (()) (IO (Double)) where
 maximumWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_maximumWidth cobj_x0

foreign import ccall "qtc_QTextLayout_maximumWidth" qtc_QTextLayout_maximumWidth :: Ptr (TQTextLayout a) -> IO CDouble

instance QminimumWidth (QTextLayout a) (()) (IO (Double)) where
 minimumWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_minimumWidth cobj_x0

foreign import ccall "qtc_QTextLayout_minimumWidth" qtc_QTextLayout_minimumWidth :: Ptr (TQTextLayout a) -> IO CDouble

class QnextCursorPosition x1 where
 nextCursorPosition :: QTextLayout a -> x1 -> IO (Int)

instance QnextCursorPosition ((Int)) where
 nextCursorPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_nextCursorPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLayout_nextCursorPosition" qtc_QTextLayout_nextCursorPosition :: Ptr (TQTextLayout a) -> CInt -> IO CInt

instance QnextCursorPosition ((Int, CursorMode)) where
 nextCursorPosition x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_nextCursorPosition1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextLayout_nextCursorPosition1" qtc_QTextLayout_nextCursorPosition1 :: Ptr (TQTextLayout a) -> CInt -> CLong -> IO CInt

instance Qposition (QTextLayout a) (()) (IO (PointF)) where
 position x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_position_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QTextLayout_position_qth" qtc_QTextLayout_position_qth :: Ptr (TQTextLayout a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqposition (QTextLayout a) (()) where
 qposition x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_position cobj_x0

foreign import ccall "qtc_QTextLayout_position" qtc_QTextLayout_position :: Ptr (TQTextLayout a) -> IO (Ptr (TQPointF ()))

preeditAreaPosition :: QTextLayout a -> (()) -> IO (Int)
preeditAreaPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_preeditAreaPosition cobj_x0

foreign import ccall "qtc_QTextLayout_preeditAreaPosition" qtc_QTextLayout_preeditAreaPosition :: Ptr (TQTextLayout a) -> IO CInt

preeditAreaText :: QTextLayout a -> (()) -> IO (String)
preeditAreaText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_preeditAreaText cobj_x0

foreign import ccall "qtc_QTextLayout_preeditAreaText" qtc_QTextLayout_preeditAreaText :: Ptr (TQTextLayout a) -> IO (Ptr (TQString ()))

class QpreviousCursorPosition x1 where
 previousCursorPosition :: QTextLayout a -> x1 -> IO (Int)

instance QpreviousCursorPosition ((Int)) where
 previousCursorPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_previousCursorPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextLayout_previousCursorPosition" qtc_QTextLayout_previousCursorPosition :: Ptr (TQTextLayout a) -> CInt -> IO CInt

instance QpreviousCursorPosition ((Int, CursorMode)) where
 previousCursorPosition x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_previousCursorPosition1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextLayout_previousCursorPosition1" qtc_QTextLayout_previousCursorPosition1 :: Ptr (TQTextLayout a) -> CInt -> CLong -> IO CInt

setCacheEnabled :: QTextLayout a -> ((Bool)) -> IO ()
setCacheEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_setCacheEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextLayout_setCacheEnabled" qtc_QTextLayout_setCacheEnabled :: Ptr (TQTextLayout a) -> CBool -> IO ()

instance QsetFont (QTextLayout a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLayout_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QTextLayout_setFont" qtc_QTextLayout_setFont :: Ptr (TQTextLayout a) -> Ptr (TQFont t1) -> IO ()

instance QsetPosition (QTextLayout a) ((PointF)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QTextLayout_setPosition_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QTextLayout_setPosition_qth" qtc_QTextLayout_setPosition_qth :: Ptr (TQTextLayout a) -> CDouble -> CDouble -> IO ()

instance QqsetPosition (QTextLayout a) ((QPointF t1)) where
 qsetPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLayout_setPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QTextLayout_setPosition" qtc_QTextLayout_setPosition :: Ptr (TQTextLayout a) -> Ptr (TQPointF t1) -> IO ()

setPreeditArea :: QTextLayout a -> ((Int, String)) -> IO ()
setPreeditArea x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTextLayout_setPreeditArea cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTextLayout_setPreeditArea" qtc_QTextLayout_setPreeditArea :: Ptr (TQTextLayout a) -> CInt -> CWString -> IO ()

instance QsetText (QTextLayout a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextLayout_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextLayout_setText" qtc_QTextLayout_setText :: Ptr (TQTextLayout a) -> CWString -> IO ()

setTextOption :: QTextLayout a -> ((QTextOption t1)) -> IO ()
setTextOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLayout_setTextOption cobj_x0 cobj_x1

foreign import ccall "qtc_QTextLayout_setTextOption" qtc_QTextLayout_setTextOption :: Ptr (TQTextLayout a) -> Ptr (TQTextOption t1) -> IO ()

instance Qtext (QTextLayout a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_text cobj_x0

foreign import ccall "qtc_QTextLayout_text" qtc_QTextLayout_text :: Ptr (TQTextLayout a) -> IO (Ptr (TQString ()))

textOption :: QTextLayout a -> (()) -> IO (QTextOption ())
textOption x0 ()
  = withQTextOptionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_textOption cobj_x0

foreign import ccall "qtc_QTextLayout_textOption" qtc_QTextLayout_textOption :: Ptr (TQTextLayout a) -> IO (Ptr (TQTextOption ()))

qTextLayout_delete :: QTextLayout a -> IO ()
qTextLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLayout_delete cobj_x0

foreign import ccall "qtc_QTextLayout_delete" qtc_QTextLayout_delete :: Ptr (TQTextLayout a) -> IO ()

