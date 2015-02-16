{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemSelectionRange.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemSelectionRange.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:29
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemSelectionRange (
  QqItemSelectionRange(..)
  ,QqItemSelectionRange_nf(..)
  ,qItemSelectionRange_delete
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

class QqItemSelectionRange x1 where
  qItemSelectionRange :: x1 -> IO (QItemSelectionRange ())

instance QqItemSelectionRange (()) where
 qItemSelectionRange ()
  = withQItemSelectionRangeResult $
    qtc_QItemSelectionRange

foreign import ccall "qtc_QItemSelectionRange" qtc_QItemSelectionRange :: IO (Ptr (TQItemSelectionRange ()))

instance QqItemSelectionRange ((QItemSelectionRange t1)) where
 qItemSelectionRange (x1)
  = withQItemSelectionRangeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange1 cobj_x1

foreign import ccall "qtc_QItemSelectionRange1" qtc_QItemSelectionRange1 :: Ptr (TQItemSelectionRange t1) -> IO (Ptr (TQItemSelectionRange ()))

instance QqItemSelectionRange ((QModelIndex t1)) where
 qItemSelectionRange (x1)
  = withQItemSelectionRangeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange2 cobj_x1

foreign import ccall "qtc_QItemSelectionRange2" qtc_QItemSelectionRange2 :: Ptr (TQModelIndex t1) -> IO (Ptr (TQItemSelectionRange ()))

instance QqItemSelectionRange ((QModelIndex t1, QModelIndex t2)) where
 qItemSelectionRange (x1, x2)
  = withQItemSelectionRangeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionRange3 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemSelectionRange3" qtc_QItemSelectionRange3 :: Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQItemSelectionRange ()))

class QqItemSelectionRange_nf x1 where
  qItemSelectionRange_nf :: x1 -> IO (QItemSelectionRange ())

instance QqItemSelectionRange_nf (()) where
 qItemSelectionRange_nf ()
  = withObjectRefResult $
    qtc_QItemSelectionRange

instance QqItemSelectionRange_nf ((QItemSelectionRange t1)) where
 qItemSelectionRange_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange1 cobj_x1

instance QqItemSelectionRange_nf ((QModelIndex t1)) where
 qItemSelectionRange_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange2 cobj_x1

instance QqItemSelectionRange_nf ((QModelIndex t1, QModelIndex t2)) where
 qItemSelectionRange_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemSelectionRange3 cobj_x1 cobj_x2

instance Qqbottom (QItemSelectionRange a) (()) (IO (Int)) where
 qbottom x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_bottom cobj_x0

foreign import ccall "qtc_QItemSelectionRange_bottom" qtc_QItemSelectionRange_bottom :: Ptr (TQItemSelectionRange a) -> IO CInt

instance QqbottomRight (QItemSelectionRange a) (()) (IO (QModelIndex ())) where
 qbottomRight x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_bottomRight cobj_x0

foreign import ccall "qtc_QItemSelectionRange_bottomRight" qtc_QItemSelectionRange_bottomRight :: Ptr (TQItemSelectionRange a) -> IO (Ptr (TQModelIndex ()))

instance Qqcontains (QItemSelectionRange a) ((Int, Int, QModelIndex t3)) where
 qcontains x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemSelectionRange_contains1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QItemSelectionRange_contains1" qtc_QItemSelectionRange_contains1 :: Ptr (TQItemSelectionRange a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance Qqcontains (QItemSelectionRange a) ((QModelIndex t1)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionRange_contains" qtc_QItemSelectionRange_contains :: Ptr (TQItemSelectionRange a) -> Ptr (TQModelIndex t1) -> IO CBool

instance Qqheight (QItemSelectionRange a) (()) (IO (Int)) where
 qheight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_height cobj_x0

foreign import ccall "qtc_QItemSelectionRange_height" qtc_QItemSelectionRange_height :: Ptr (TQItemSelectionRange a) -> IO CInt

instance Qindexes (QItemSelectionRange a) (()) where
 indexes x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_indexes cobj_x0 arr

foreign import ccall "qtc_QItemSelectionRange_indexes" qtc_QItemSelectionRange_indexes :: Ptr (TQItemSelectionRange a) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qqintersect (QItemSelectionRange a) ((QItemSelectionRange t1)) (IO (QItemSelectionRange ())) where
 qintersect x0 (x1)
  = withQItemSelectionRangeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange_intersect cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionRange_intersect" qtc_QItemSelectionRange_intersect :: Ptr (TQItemSelectionRange a) -> Ptr (TQItemSelectionRange t1) -> IO (Ptr (TQItemSelectionRange ()))

instance Qqintersected (QItemSelectionRange a) ((QItemSelectionRange t1)) (IO (QItemSelectionRange ())) where
 qintersected x0 (x1)
  = withQItemSelectionRangeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionRange_intersected" qtc_QItemSelectionRange_intersected :: Ptr (TQItemSelectionRange a) -> Ptr (TQItemSelectionRange t1) -> IO (Ptr (TQItemSelectionRange ()))

instance Qqintersects (QItemSelectionRange a) ((QItemSelectionRange t1)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemSelectionRange_intersects cobj_x0 cobj_x1

foreign import ccall "qtc_QItemSelectionRange_intersects" qtc_QItemSelectionRange_intersects :: Ptr (TQItemSelectionRange a) -> Ptr (TQItemSelectionRange t1) -> IO CBool

instance QqisValid (QItemSelectionRange ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_isValid cobj_x0

foreign import ccall "qtc_QItemSelectionRange_isValid" qtc_QItemSelectionRange_isValid :: Ptr (TQItemSelectionRange a) -> IO CBool

instance QqisValid (QItemSelectionRangeSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_isValid cobj_x0

instance Qqleft(QItemSelectionRange a) (()) (IO (Int)) where
 qleft x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_left cobj_x0

foreign import ccall "qtc_QItemSelectionRange_left" qtc_QItemSelectionRange_left :: Ptr (TQItemSelectionRange a) -> IO CInt

instance Qmodel (QItemSelectionRange a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_model cobj_x0

foreign import ccall "qtc_QItemSelectionRange_model" qtc_QItemSelectionRange_model :: Ptr (TQItemSelectionRange a) -> IO (Ptr (TQAbstractItemModel ()))

instance Qparent (QItemSelectionRange a) (()) (IO (QModelIndex ())) where
 parent x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_parent cobj_x0

foreign import ccall "qtc_QItemSelectionRange_parent" qtc_QItemSelectionRange_parent :: Ptr (TQItemSelectionRange a) -> IO (Ptr (TQModelIndex ()))

instance Qqright(QItemSelectionRange a) (()) (IO (Int)) where
 qright x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_right cobj_x0

foreign import ccall "qtc_QItemSelectionRange_right" qtc_QItemSelectionRange_right :: Ptr (TQItemSelectionRange a) -> IO CInt

instance Qqtop (QItemSelectionRange a) (()) (IO (Int)) where
 qtop x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_top cobj_x0

foreign import ccall "qtc_QItemSelectionRange_top" qtc_QItemSelectionRange_top :: Ptr (TQItemSelectionRange a) -> IO CInt

instance QqtopLeft(QItemSelectionRange a) (()) (IO (QModelIndex ())) where
 qtopLeft x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_topLeft cobj_x0

foreign import ccall "qtc_QItemSelectionRange_topLeft" qtc_QItemSelectionRange_topLeft :: Ptr (TQItemSelectionRange a) -> IO (Ptr (TQModelIndex ()))

instance Qqwidth (QItemSelectionRange a) (()) (IO (Int)) where
 qwidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_width cobj_x0

foreign import ccall "qtc_QItemSelectionRange_width" qtc_QItemSelectionRange_width :: Ptr (TQItemSelectionRange a) -> IO CInt

qItemSelectionRange_delete :: QItemSelectionRange a -> IO ()
qItemSelectionRange_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemSelectionRange_delete cobj_x0

foreign import ccall "qtc_QItemSelectionRange_delete" qtc_QItemSelectionRange_delete :: Ptr (TQItemSelectionRange a) -> IO ()

