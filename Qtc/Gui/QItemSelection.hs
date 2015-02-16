{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemSelection.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemSelection.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemSelection (
  QqItemSelection(..)
  ,QqItemSelection_nf(..)
  ,qItemSelectionSplit
  ,qItemSelection_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqItemSelection x1 where
  qItemSelection :: x1 -> IO (QItemSelection ())

instance QqItemSelection (()) where
 qItemSelection ()
  = withQItemSelectionResult $
    qtc_QItemSelection

foreign import ccall "qtc_QItemSelection" qtc_QItemSelection :: IO (Ptr (TQItemSelection ()))

instance QqItemSelection ((QModelIndex t1, QModelIndex t2)) where
 qItemSelection (x1, x2)
  = withQItemSelectionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelection1 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelection1" qtc_QItemSelection1 :: Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQItemSelection ()))

class QqItemSelection_nf x1 where
  qItemSelection_nf :: x1 -> IO (QItemSelection ())

instance QqItemSelection_nf (()) where
 qItemSelection_nf ()
  = withObjectRefResult $
    qtc_QItemSelection

instance QqItemSelection_nf ((QModelIndex t1, QModelIndex t2)) where
 qItemSelection_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelection1 cobj_x1 cobj_x2

instance Qqcontains (QItemSelection a) ((QModelIndex t1)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelection_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelection_contains" qtc_QItemSelection_contains :: Ptr (TQItemSelection a) -> Ptr (TQModelIndex t1) -> IO CBool

instance Qindexes (QItemSelection a) (()) where
 indexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelection_indexes cobj_x0 arr

foreign import ccall "qtc_QItemSelection_indexes" qtc_QItemSelection_indexes :: Ptr (TQItemSelection a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qmerge (QItemSelection a) ((QItemSelection t1, SelectionFlags)) where
 merge x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelection_merge cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QItemSelection_merge" qtc_QItemSelection_merge :: Ptr (TQItemSelection a) -> Ptr (TQItemSelection t1) -> CLong -> IO ()

instance Qselect (QItemSelection a) ((QModelIndex t1, QModelIndex t2)) where
 select x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelection_select cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelection_select" qtc_QItemSelection_select :: Ptr (TQItemSelection a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

qItemSelectionSplit :: ((QItemSelectionRange t1, QItemSelectionRange t2, QItemSelection t3)) -> IO ()
qItemSelectionSplit (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemSelection_split cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemSelection_split" qtc_QItemSelection_split :: Ptr (TQItemSelectionRange t1) -> Ptr (TQItemSelectionRange t2) -> Ptr (TQItemSelection t3) -> IO ()

qItemSelection_delete :: QItemSelection a -> IO ()
qItemSelection_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelection_delete cobj_x0

foreign import ccall "qtc_QItemSelection_delete" qtc_QItemSelection_delete :: Ptr (TQItemSelection a) -> IO ()

