{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTableWidgetSelectionRange.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTableWidgetSelectionRange (
  QqTableWidgetSelectionRange(..)
  ,QqTableWidgetSelectionRange_nf(..)
  ,bottomRow
  ,leftColumn
  ,rightColumn
  ,topRow
  ,qTableWidgetSelectionRange_delete
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

class QqTableWidgetSelectionRange x1 where
  qTableWidgetSelectionRange :: x1 -> IO (QTableWidgetSelectionRange ())

instance QqTableWidgetSelectionRange (()) where
 qTableWidgetSelectionRange ()
  = withQTableWidgetSelectionRangeResult $
    qtc_QTableWidgetSelectionRange

foreign import ccall "qtc_QTableWidgetSelectionRange" qtc_QTableWidgetSelectionRange :: IO (Ptr (TQTableWidgetSelectionRange ()))

instance QqTableWidgetSelectionRange ((QTableWidgetSelectionRange t1)) where
 qTableWidgetSelectionRange (x1)
  = withQTableWidgetSelectionRangeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetSelectionRange1 cobj_x1

foreign import ccall "qtc_QTableWidgetSelectionRange1" qtc_QTableWidgetSelectionRange1 :: Ptr (TQTableWidgetSelectionRange t1) -> IO (Ptr (TQTableWidgetSelectionRange ()))

instance QqTableWidgetSelectionRange ((Int, Int, Int, Int)) where
 qTableWidgetSelectionRange (x1, x2, x3, x4)
  = withQTableWidgetSelectionRangeResult $
    qtc_QTableWidgetSelectionRange2 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTableWidgetSelectionRange2" qtc_QTableWidgetSelectionRange2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQTableWidgetSelectionRange ()))

class QqTableWidgetSelectionRange_nf x1 where
  qTableWidgetSelectionRange_nf :: x1 -> IO (QTableWidgetSelectionRange ())

instance QqTableWidgetSelectionRange_nf (()) where
 qTableWidgetSelectionRange_nf ()
  = withObjectRefResult $
    qtc_QTableWidgetSelectionRange

instance QqTableWidgetSelectionRange_nf ((QTableWidgetSelectionRange t1)) where
 qTableWidgetSelectionRange_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetSelectionRange1 cobj_x1

instance QqTableWidgetSelectionRange_nf ((Int, Int, Int, Int)) where
 qTableWidgetSelectionRange_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QTableWidgetSelectionRange2 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

bottomRow :: QTableWidgetSelectionRange a -> (()) -> IO (Int)
bottomRow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_bottomRow cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_bottomRow" qtc_QTableWidgetSelectionRange_bottomRow :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

instance QcolumnCount (QTableWidgetSelectionRange a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_columnCount cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_columnCount" qtc_QTableWidgetSelectionRange_columnCount :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

leftColumn :: QTableWidgetSelectionRange a -> (()) -> IO (Int)
leftColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_leftColumn cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_leftColumn" qtc_QTableWidgetSelectionRange_leftColumn :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

rightColumn :: QTableWidgetSelectionRange a -> (()) -> IO (Int)
rightColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_rightColumn cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_rightColumn" qtc_QTableWidgetSelectionRange_rightColumn :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

instance QrowCount (QTableWidgetSelectionRange a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_rowCount cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_rowCount" qtc_QTableWidgetSelectionRange_rowCount :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

topRow :: QTableWidgetSelectionRange a -> (()) -> IO (Int)
topRow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_topRow cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_topRow" qtc_QTableWidgetSelectionRange_topRow :: Ptr (TQTableWidgetSelectionRange a) -> IO CInt

qTableWidgetSelectionRange_delete :: QTableWidgetSelectionRange a -> IO ()
qTableWidgetSelectionRange_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetSelectionRange_delete cobj_x0

foreign import ccall "qtc_QTableWidgetSelectionRange_delete" qtc_QTableWidgetSelectionRange_delete :: Ptr (TQTableWidgetSelectionRange a) -> IO ()

