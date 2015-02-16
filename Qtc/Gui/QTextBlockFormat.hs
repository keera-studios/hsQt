{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextBlockFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextBlockFormat (
  QqTextBlockFormat(..)
  ,QqTextBlockFormat_nf(..)
  ,nonBreakableLines
  ,setNonBreakableLines
  ,setTextIndent
  ,textIndent
  ,qTextBlockFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTextFormat

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextBlockFormat x1 where
  qTextBlockFormat :: x1 -> IO (QTextBlockFormat ())

instance QqTextBlockFormat (()) where
 qTextBlockFormat ()
  = withQTextBlockFormatResult $
    qtc_QTextBlockFormat

foreign import ccall "qtc_QTextBlockFormat" qtc_QTextBlockFormat :: IO (Ptr (TQTextBlockFormat ()))

instance QqTextBlockFormat ((QTextBlockFormat t1)) where
 qTextBlockFormat (x1)
  = withQTextBlockFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockFormat1 cobj_x1

foreign import ccall "qtc_QTextBlockFormat1" qtc_QTextBlockFormat1 :: Ptr (TQTextBlockFormat t1) -> IO (Ptr (TQTextBlockFormat ()))

class QqTextBlockFormat_nf x1 where
  qTextBlockFormat_nf :: x1 -> IO (QTextBlockFormat ())

instance QqTextBlockFormat_nf (()) where
 qTextBlockFormat_nf ()
  = withObjectRefResult $
    qtc_QTextBlockFormat

instance QqTextBlockFormat_nf ((QTextBlockFormat t1)) where
 qTextBlockFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlockFormat1 cobj_x1

instance Qalignment (QTextBlockFormat a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_alignment cobj_x0

foreign import ccall "qtc_QTextBlockFormat_alignment" qtc_QTextBlockFormat_alignment :: Ptr (TQTextBlockFormat a) -> IO CLong

instance QbottomMargin (QTextBlockFormat a) (()) where
 bottomMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_bottomMargin cobj_x0

foreign import ccall "qtc_QTextBlockFormat_bottomMargin" qtc_QTextBlockFormat_bottomMargin :: Ptr (TQTextBlockFormat a) -> IO CDouble

instance Qindent (QTextBlockFormat a) (()) where
 indent x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_indent cobj_x0

foreign import ccall "qtc_QTextBlockFormat_indent" qtc_QTextBlockFormat_indent :: Ptr (TQTextBlockFormat a) -> IO CInt

instance QqisValid (QTextBlockFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_isValid cobj_x0

foreign import ccall "qtc_QTextBlockFormat_isValid" qtc_QTextBlockFormat_isValid :: Ptr (TQTextBlockFormat a) -> IO CBool

instance QqisValid (QTextBlockFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_isValid cobj_x0

instance QleftMargin (QTextBlockFormat a) (()) where
 leftMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_leftMargin cobj_x0

foreign import ccall "qtc_QTextBlockFormat_leftMargin" qtc_QTextBlockFormat_leftMargin :: Ptr (TQTextBlockFormat a) -> IO CDouble

nonBreakableLines :: QTextBlockFormat a -> (()) -> IO (Bool)
nonBreakableLines x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_nonBreakableLines cobj_x0

foreign import ccall "qtc_QTextBlockFormat_nonBreakableLines" qtc_QTextBlockFormat_nonBreakableLines :: Ptr (TQTextBlockFormat a) -> IO CBool

instance QpageBreakPolicy (QTextBlockFormat a) (()) where
 pageBreakPolicy x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_pageBreakPolicy cobj_x0

foreign import ccall "qtc_QTextBlockFormat_pageBreakPolicy" qtc_QTextBlockFormat_pageBreakPolicy :: Ptr (TQTextBlockFormat a) -> IO CLong

instance QrightMargin (QTextBlockFormat a) (()) where
 rightMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_rightMargin cobj_x0

foreign import ccall "qtc_QTextBlockFormat_rightMargin" qtc_QTextBlockFormat_rightMargin :: Ptr (TQTextBlockFormat a) -> IO CDouble

instance QsetAlignment (QTextBlockFormat a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextBlockFormat_setAlignment" qtc_QTextBlockFormat_setAlignment :: Ptr (TQTextBlockFormat a) -> CLong -> IO ()

instance QsetBottomMargin (QTextBlockFormat a) ((Double)) where
 setBottomMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setBottomMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextBlockFormat_setBottomMargin" qtc_QTextBlockFormat_setBottomMargin :: Ptr (TQTextBlockFormat a) -> CDouble -> IO ()

instance QsetIndent (QTextBlockFormat a) ((Int)) where
 setIndent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setIndent cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextBlockFormat_setIndent" qtc_QTextBlockFormat_setIndent :: Ptr (TQTextBlockFormat a) -> CInt -> IO ()

instance QsetLeftMargin (QTextBlockFormat a) ((Double)) where
 setLeftMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setLeftMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextBlockFormat_setLeftMargin" qtc_QTextBlockFormat_setLeftMargin :: Ptr (TQTextBlockFormat a) -> CDouble -> IO ()

setNonBreakableLines :: QTextBlockFormat a -> ((Bool)) -> IO ()
setNonBreakableLines x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setNonBreakableLines cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextBlockFormat_setNonBreakableLines" qtc_QTextBlockFormat_setNonBreakableLines :: Ptr (TQTextBlockFormat a) -> CBool -> IO ()

instance QsetPageBreakPolicy (QTextBlockFormat a) ((PageBreakFlags)) where
 setPageBreakPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setPageBreakPolicy cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextBlockFormat_setPageBreakPolicy" qtc_QTextBlockFormat_setPageBreakPolicy :: Ptr (TQTextBlockFormat a) -> CLong -> IO ()

instance QsetRightMargin (QTextBlockFormat a) ((Double)) where
 setRightMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setRightMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextBlockFormat_setRightMargin" qtc_QTextBlockFormat_setRightMargin :: Ptr (TQTextBlockFormat a) -> CDouble -> IO ()

setTextIndent :: QTextBlockFormat a -> ((Double)) -> IO ()
setTextIndent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setTextIndent cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextBlockFormat_setTextIndent" qtc_QTextBlockFormat_setTextIndent :: Ptr (TQTextBlockFormat a) -> CDouble -> IO ()

instance QsetTopMargin (QTextBlockFormat a) ((Double)) where
 setTopMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_setTopMargin cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextBlockFormat_setTopMargin" qtc_QTextBlockFormat_setTopMargin :: Ptr (TQTextBlockFormat a) -> CDouble -> IO ()

textIndent :: QTextBlockFormat a -> (()) -> IO (Double)
textIndent x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_textIndent cobj_x0

foreign import ccall "qtc_QTextBlockFormat_textIndent" qtc_QTextBlockFormat_textIndent :: Ptr (TQTextBlockFormat a) -> IO CDouble

instance QtopMargin (QTextBlockFormat a) (()) where
 topMargin x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_topMargin cobj_x0

foreign import ccall "qtc_QTextBlockFormat_topMargin" qtc_QTextBlockFormat_topMargin :: Ptr (TQTextBlockFormat a) -> IO CDouble

qTextBlockFormat_delete :: QTextBlockFormat a -> IO ()
qTextBlockFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlockFormat_delete cobj_x0

foreign import ccall "qtc_QTextBlockFormat_delete" qtc_QTextBlockFormat_delete :: Ptr (TQTextBlockFormat a) -> IO ()

