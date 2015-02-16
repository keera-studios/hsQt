{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextTableCell.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextTableCell (
  QqTextTableCell(..)
  ,QqTextTableCell_nf(..)
  ,qTextTableCell_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextTableCell x1 where
  qTextTableCell :: x1 -> IO (QTextTableCell ())

instance QqTextTableCell (()) where
 qTextTableCell ()
  = withQTextTableCellResult $
    qtc_QTextTableCell

foreign import ccall "qtc_QTextTableCell" qtc_QTextTableCell :: IO (Ptr (TQTextTableCell ()))

instance QqTextTableCell ((QTextTableCell t1)) where
 qTextTableCell (x1)
  = withQTextTableCellResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTableCell1 cobj_x1

foreign import ccall "qtc_QTextTableCell1" qtc_QTextTableCell1 :: Ptr (TQTextTableCell t1) -> IO (Ptr (TQTextTableCell ()))

class QqTextTableCell_nf x1 where
  qTextTableCell_nf :: x1 -> IO (QTextTableCell ())

instance QqTextTableCell_nf (()) where
 qTextTableCell_nf ()
  = withObjectRefResult $
    qtc_QTextTableCell

instance QqTextTableCell_nf ((QTextTableCell t1)) where
 qTextTableCell_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTableCell1 cobj_x1

instance Qcolumn (QTextTableCell a) (()) where
 column x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_column cobj_x0

foreign import ccall "qtc_QTextTableCell_column" qtc_QTextTableCell_column :: Ptr (TQTextTableCell a) -> IO CInt

instance QcolumnSpan (QTextTableCell a) (()) where
 columnSpan x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_columnSpan cobj_x0

foreign import ccall "qtc_QTextTableCell_columnSpan" qtc_QTextTableCell_columnSpan :: Ptr (TQTextTableCell a) -> IO CInt

instance QfirstCursorPosition (QTextTableCell a) (()) where
 firstCursorPosition x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_firstCursorPosition cobj_x0

foreign import ccall "qtc_QTextTableCell_firstCursorPosition" qtc_QTextTableCell_firstCursorPosition :: Ptr (TQTextTableCell a) -> IO (Ptr (TQTextCursor ()))

instance QfirstPosition (QTextTableCell a) (()) where
 firstPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_firstPosition cobj_x0

foreign import ccall "qtc_QTextTableCell_firstPosition" qtc_QTextTableCell_firstPosition :: Ptr (TQTextTableCell a) -> IO CInt

instance Qformat (QTextTableCell a) (()) (IO (QTextCharFormat ())) where
 format x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_format cobj_x0

foreign import ccall "qtc_QTextTableCell_format" qtc_QTextTableCell_format :: Ptr (TQTextTableCell a) -> IO (Ptr (TQTextCharFormat ()))

instance QqisValid (QTextTableCell ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_isValid cobj_x0

foreign import ccall "qtc_QTextTableCell_isValid" qtc_QTextTableCell_isValid :: Ptr (TQTextTableCell a) -> IO CBool

instance QqisValid (QTextTableCellSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_isValid cobj_x0

instance QlastCursorPosition (QTextTableCell a) (()) where
 lastCursorPosition x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_lastCursorPosition cobj_x0

foreign import ccall "qtc_QTextTableCell_lastCursorPosition" qtc_QTextTableCell_lastCursorPosition :: Ptr (TQTextTableCell a) -> IO (Ptr (TQTextCursor ()))

instance QlastPosition (QTextTableCell a) (()) where
 lastPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_lastPosition cobj_x0

foreign import ccall "qtc_QTextTableCell_lastPosition" qtc_QTextTableCell_lastPosition :: Ptr (TQTextTableCell a) -> IO CInt

instance Qrow (QTextTableCell a) (()) where
 row x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_row cobj_x0

foreign import ccall "qtc_QTextTableCell_row" qtc_QTextTableCell_row :: Ptr (TQTextTableCell a) -> IO CInt

instance QrowSpan (QTextTableCell a) (()) where
 rowSpan x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_rowSpan cobj_x0

foreign import ccall "qtc_QTextTableCell_rowSpan" qtc_QTextTableCell_rowSpan :: Ptr (TQTextTableCell a) -> IO CInt

instance QsetFormat (QTextTableCell a) ((QTextCharFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTableCell_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTableCell_setFormat" qtc_QTextTableCell_setFormat :: Ptr (TQTextTableCell a) -> Ptr (TQTextCharFormat t1) -> IO ()

qTextTableCell_delete :: QTextTableCell a -> IO ()
qTextTableCell_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableCell_delete cobj_x0

foreign import ccall "qtc_QTextTableCell_delete" qtc_QTextTableCell_delete :: Ptr (TQTextTableCell a) -> IO ()

