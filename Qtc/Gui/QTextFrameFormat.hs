{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFrameFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextFrameFormat (
  QqTextFrameFormat(..)
  ,QqTextFrameFormat_nf(..)
  ,border
  ,borderBrush
  ,borderStyle
  ,padding
  ,setBorder
  ,setBorderBrush
  ,setBorderStyle
  ,setPadding
  ,qTextFrameFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextFrameFormat
import Qtc.Enums.Gui.QTextFormat

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextFrameFormat x1 where
  qTextFrameFormat :: x1 -> IO (QTextFrameFormat ())

instance QqTextFrameFormat (()) where
 qTextFrameFormat ()
  = withQTextFrameFormatResult $
    qtc_QTextFrameFormat

foreign import ccall "qtc_QTextFrameFormat" qtc_QTextFrameFormat :: IO (Ptr (TQTextFrameFormat ()))

instance QqTextFrameFormat ((QTextFrameFormat t1)) where
 qTextFrameFormat (x1)
  = withQTextFrameFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrameFormat1 cobj_x1

foreign import ccall "qtc_QTextFrameFormat1" qtc_QTextFrameFormat1 :: Ptr (TQTextFrameFormat t1) -> IO (Ptr (TQTextFrameFormat ()))

class QqTextFrameFormat_nf x1 where
  qTextFrameFormat_nf :: x1 -> IO (QTextFrameFormat ())

instance QqTextFrameFormat_nf (()) where
 qTextFrameFormat_nf ()
  = withObjectRefResult $
    qtc_QTextFrameFormat

instance QqTextFrameFormat_nf ((QTextFrameFormat t1)) where
 qTextFrameFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrameFormat1 cobj_x1

border :: QTextFrameFormat a -> (()) -> IO (Double)
border x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_border cobj_x0

foreign import ccall "qtc_QTextFrameFormat_border" qtc_QTextFrameFormat_border :: Ptr (TQTextFrameFormat a) -> IO CDouble

borderBrush :: QTextFrameFormat a -> (()) -> IO (QBrush ())
borderBrush x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_borderBrush cobj_x0

foreign import ccall "qtc_QTextFrameFormat_borderBrush" qtc_QTextFrameFormat_borderBrush :: Ptr (TQTextFrameFormat a) -> IO (Ptr (TQBrush ()))

borderStyle :: QTextFrameFormat a -> (()) -> IO (BorderStyle)
borderStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_borderStyle cobj_x0

foreign import ccall "qtc_QTextFrameFormat_borderStyle" qtc_QTextFrameFormat_borderStyle :: Ptr (TQTextFrameFormat a) -> IO CLong

instance QbottomMargin (QTextFrameFormat a) (()) where
 bottomMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_bottomMargin cobj_x0

foreign import ccall "qtc_QTextFrameFormat_bottomMargin" qtc_QTextFrameFormat_bottomMargin :: Ptr (TQTextFrameFormat a) -> IO CDouble

instance Qqheight (QTextFrameFormat a) (()) (IO (QTextLength ())) where
 qheight x0 ()
  = withQTextLengthResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_height cobj_x0

foreign import ccall "qtc_QTextFrameFormat_height" qtc_QTextFrameFormat_height :: Ptr (TQTextFrameFormat a) -> IO (Ptr (TQTextLength ()))

instance QqisValid (QTextFrameFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_isValid cobj_x0

foreign import ccall "qtc_QTextFrameFormat_isValid" qtc_QTextFrameFormat_isValid :: Ptr (TQTextFrameFormat a) -> IO CBool

instance QqisValid (QTextFrameFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_isValid cobj_x0

instance QleftMargin (QTextFrameFormat a) (()) where
 leftMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_leftMargin cobj_x0

foreign import ccall "qtc_QTextFrameFormat_leftMargin" qtc_QTextFrameFormat_leftMargin :: Ptr (TQTextFrameFormat a) -> IO CDouble

instance Qmargin (QTextFrameFormat a) (()) (IO (Double)) where
 margin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_margin cobj_x0

foreign import ccall "qtc_QTextFrameFormat_margin" qtc_QTextFrameFormat_margin :: Ptr (TQTextFrameFormat a) -> IO CDouble

padding :: QTextFrameFormat a -> (()) -> IO (Double)
padding x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_padding cobj_x0

foreign import ccall "qtc_QTextFrameFormat_padding" qtc_QTextFrameFormat_padding :: Ptr (TQTextFrameFormat a) -> IO CDouble

instance QpageBreakPolicy (QTextFrameFormat a) (()) where
 pageBreakPolicy x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_pageBreakPolicy cobj_x0

foreign import ccall "qtc_QTextFrameFormat_pageBreakPolicy" qtc_QTextFrameFormat_pageBreakPolicy :: Ptr (TQTextFrameFormat a) -> IO CLong

instance Qposition (QTextFrameFormat a) (()) (IO (QTextFrameFormatPosition)) where
 position x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_position cobj_x0

foreign import ccall "qtc_QTextFrameFormat_position" qtc_QTextFrameFormat_position :: Ptr (TQTextFrameFormat a) -> IO CLong

instance QrightMargin (QTextFrameFormat a) (()) where
 rightMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_rightMargin cobj_x0

foreign import ccall "qtc_QTextFrameFormat_rightMargin" qtc_QTextFrameFormat_rightMargin :: Ptr (TQTextFrameFormat a) -> IO CDouble

setBorder :: QTextFrameFormat a -> ((Double)) -> IO ()
setBorder x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setBorder cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setBorder" qtc_QTextFrameFormat_setBorder :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

setBorderBrush :: QTextFrameFormat a -> ((QBrush t1)) -> IO ()
setBorderBrush x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrameFormat_setBorderBrush cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrameFormat_setBorderBrush" qtc_QTextFrameFormat_setBorderBrush :: Ptr (TQTextFrameFormat a) -> Ptr (TQBrush t1) -> IO ()

setBorderStyle :: QTextFrameFormat a -> ((BorderStyle)) -> IO ()
setBorderStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setBorderStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextFrameFormat_setBorderStyle" qtc_QTextFrameFormat_setBorderStyle :: Ptr (TQTextFrameFormat a) -> CLong -> IO ()

instance QsetBottomMargin (QTextFrameFormat a) ((Double)) where
 setBottomMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setBottomMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setBottomMargin" qtc_QTextFrameFormat_setBottomMargin :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QqsetHeight (QTextFrameFormat a) ((Double)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setHeight1 cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setHeight1" qtc_QTextFrameFormat_setHeight1 :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QqsetHeight (QTextFrameFormat a) ((QTextLength t1)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrameFormat_setHeight cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrameFormat_setHeight" qtc_QTextFrameFormat_setHeight :: Ptr (TQTextFrameFormat a) -> Ptr (TQTextLength t1) -> IO ()

instance QsetLeftMargin (QTextFrameFormat a) ((Double)) where
 setLeftMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setLeftMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setLeftMargin" qtc_QTextFrameFormat_setLeftMargin :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QsetMargin (QTextFrameFormat a) ((Double)) where
 setMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setMargin" qtc_QTextFrameFormat_setMargin :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

setPadding :: QTextFrameFormat a -> ((Double)) -> IO ()
setPadding x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setPadding cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setPadding" qtc_QTextFrameFormat_setPadding :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QsetPageBreakPolicy (QTextFrameFormat a) ((PageBreakFlags)) where
 setPageBreakPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setPageBreakPolicy cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextFrameFormat_setPageBreakPolicy" qtc_QTextFrameFormat_setPageBreakPolicy :: Ptr (TQTextFrameFormat a) -> CLong -> IO ()

instance QsetPosition (QTextFrameFormat a) ((QTextFrameFormatPosition)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextFrameFormat_setPosition" qtc_QTextFrameFormat_setPosition :: Ptr (TQTextFrameFormat a) -> CLong -> IO ()

instance QsetRightMargin (QTextFrameFormat a) ((Double)) where
 setRightMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setRightMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setRightMargin" qtc_QTextFrameFormat_setRightMargin :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QsetTopMargin (QTextFrameFormat a) ((Double)) where
 setTopMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setTopMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setTopMargin" qtc_QTextFrameFormat_setTopMargin :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QqsetWidth (QTextFrameFormat a) ((Double)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_setWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextFrameFormat_setWidth" qtc_QTextFrameFormat_setWidth :: Ptr (TQTextFrameFormat a) -> CDouble -> IO ()

instance QqsetWidth (QTextFrameFormat a) ((QTextLength t1)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFrameFormat_setWidth1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextFrameFormat_setWidth1" qtc_QTextFrameFormat_setWidth1 :: Ptr (TQTextFrameFormat a) -> Ptr (TQTextLength t1) -> IO ()

instance QtopMargin (QTextFrameFormat a) (()) where
 topMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_topMargin cobj_x0

foreign import ccall "qtc_QTextFrameFormat_topMargin" qtc_QTextFrameFormat_topMargin :: Ptr (TQTextFrameFormat a) -> IO CDouble

instance Qqwidth (QTextFrameFormat a) (()) (IO (QTextLength ())) where
 qwidth x0 ()
  = withQTextLengthResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_width cobj_x0

foreign import ccall "qtc_QTextFrameFormat_width" qtc_QTextFrameFormat_width :: Ptr (TQTextFrameFormat a) -> IO (Ptr (TQTextLength ()))

qTextFrameFormat_delete :: QTextFrameFormat a -> IO ()
qTextFrameFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFrameFormat_delete cobj_x0

foreign import ccall "qtc_QTextFrameFormat_delete" qtc_QTextFrameFormat_delete :: Ptr (TQTextFrameFormat a) -> IO ()

