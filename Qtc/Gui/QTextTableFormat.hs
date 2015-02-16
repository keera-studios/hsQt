{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextTableFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextTableFormat (
  QqTextTableFormat(..)
  ,QqTextTableFormat_nf(..)
  ,cellPadding
  ,cellSpacing
  ,clearColumnWidthConstraints
  ,headerRowCount
  ,setCellPadding
  ,setCellSpacing
  ,setColumns
  ,setHeaderRowCount
  ,qTextTableFormat_delete
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

class QqTextTableFormat x1 where
  qTextTableFormat :: x1 -> IO (QTextTableFormat ())

instance QqTextTableFormat (()) where
 qTextTableFormat ()
  = withQTextTableFormatResult $
    qtc_QTextTableFormat

foreign import ccall "qtc_QTextTableFormat" qtc_QTextTableFormat :: IO (Ptr (TQTextTableFormat ()))

instance QqTextTableFormat ((QTextTableFormat t1)) where
 qTextTableFormat (x1)
  = withQTextTableFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTableFormat1 cobj_x1

foreign import ccall "qtc_QTextTableFormat1" qtc_QTextTableFormat1 :: Ptr (TQTextTableFormat t1) -> IO (Ptr (TQTextTableFormat ()))

class QqTextTableFormat_nf x1 where
  qTextTableFormat_nf :: x1 -> IO (QTextTableFormat ())

instance QqTextTableFormat_nf (()) where
 qTextTableFormat_nf ()
  = withObjectRefResult $
    qtc_QTextTableFormat

instance QqTextTableFormat_nf ((QTextTableFormat t1)) where
 qTextTableFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTableFormat1 cobj_x1

instance Qalignment (QTextTableFormat a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_alignment cobj_x0

foreign import ccall "qtc_QTextTableFormat_alignment" qtc_QTextTableFormat_alignment :: Ptr (TQTextTableFormat a) -> IO CLong

cellPadding :: QTextTableFormat a -> (()) -> IO (Double)
cellPadding x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_cellPadding cobj_x0

foreign import ccall "qtc_QTextTableFormat_cellPadding" qtc_QTextTableFormat_cellPadding :: Ptr (TQTextTableFormat a) -> IO CDouble

cellSpacing :: QTextTableFormat a -> (()) -> IO (Double)
cellSpacing x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_cellSpacing cobj_x0

foreign import ccall "qtc_QTextTableFormat_cellSpacing" qtc_QTextTableFormat_cellSpacing :: Ptr (TQTextTableFormat a) -> IO CDouble

clearColumnWidthConstraints :: QTextTableFormat a -> (()) -> IO ()
clearColumnWidthConstraints x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_clearColumnWidthConstraints cobj_x0

foreign import ccall "qtc_QTextTableFormat_clearColumnWidthConstraints" qtc_QTextTableFormat_clearColumnWidthConstraints :: Ptr (TQTextTableFormat a) -> IO ()

instance Qcolumns (QTextTableFormat a) (()) where
 columns x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_columns cobj_x0

foreign import ccall "qtc_QTextTableFormat_columns" qtc_QTextTableFormat_columns :: Ptr (TQTextTableFormat a) -> IO CInt

headerRowCount :: QTextTableFormat a -> (()) -> IO (Int)
headerRowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_headerRowCount cobj_x0

foreign import ccall "qtc_QTextTableFormat_headerRowCount" qtc_QTextTableFormat_headerRowCount :: Ptr (TQTextTableFormat a) -> IO CInt

instance QqisValid (QTextTableFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_isValid cobj_x0

foreign import ccall "qtc_QTextTableFormat_isValid" qtc_QTextTableFormat_isValid :: Ptr (TQTextTableFormat a) -> IO CBool

instance QqisValid (QTextTableFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_isValid cobj_x0

instance QsetAlignment (QTextTableFormat a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextTableFormat_setAlignment" qtc_QTextTableFormat_setAlignment :: Ptr (TQTextTableFormat a) -> CLong -> IO ()

setCellPadding :: QTextTableFormat a -> ((Double)) -> IO ()
setCellPadding x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_setCellPadding cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextTableFormat_setCellPadding" qtc_QTextTableFormat_setCellPadding :: Ptr (TQTextTableFormat a) -> CDouble -> IO ()

setCellSpacing :: QTextTableFormat a -> ((Double)) -> IO ()
setCellSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_setCellSpacing cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextTableFormat_setCellSpacing" qtc_QTextTableFormat_setCellSpacing :: Ptr (TQTextTableFormat a) -> CDouble -> IO ()

setColumns :: QTextTableFormat a -> ((Int)) -> IO ()
setColumns x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_setColumns cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextTableFormat_setColumns" qtc_QTextTableFormat_setColumns :: Ptr (TQTextTableFormat a) -> CInt -> IO ()

setHeaderRowCount :: QTextTableFormat a -> ((Int)) -> IO ()
setHeaderRowCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_setHeaderRowCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextTableFormat_setHeaderRowCount" qtc_QTextTableFormat_setHeaderRowCount :: Ptr (TQTextTableFormat a) -> CInt -> IO ()

qTextTableFormat_delete :: QTextTableFormat a -> IO ()
qTextTableFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTableFormat_delete cobj_x0

foreign import ccall "qtc_QTextTableFormat_delete" qtc_QTextTableFormat_delete :: Ptr (TQTextTableFormat a) -> IO ()

