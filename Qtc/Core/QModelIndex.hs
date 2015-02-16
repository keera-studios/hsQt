{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QModelIndex.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QModelIndex (
  QqModelIndex(..)
  ,QqModelIndex_nf(..)
  ,internalId
  ,internalPointer
  ,qModelIndex_delete
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

class QqModelIndex x1 where
  qModelIndex :: x1 -> IO (QModelIndex ())

instance QqModelIndex (()) where
 qModelIndex ()
  = withQModelIndexResult $
    qtc_QModelIndex

foreign import ccall "qtc_QModelIndex" qtc_QModelIndex :: IO (Ptr (TQModelIndex ()))

instance QqModelIndex ((QModelIndex t1)) where
 qModelIndex (x1)
  = withQModelIndexResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QModelIndex1 cobj_x1

foreign import ccall "qtc_QModelIndex1" qtc_QModelIndex1 :: Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

class QqModelIndex_nf x1 where
  qModelIndex_nf :: x1 -> IO (QModelIndex ())

instance QqModelIndex_nf (()) where
 qModelIndex_nf ()
  = withObjectRefResult $
    qtc_QModelIndex

instance QqModelIndex_nf ((QModelIndex t1)) where
 qModelIndex_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QModelIndex1 cobj_x1

instance Qchild (QModelIndex a) ((Int, Int)) (IO (QModelIndex ())) where
 child x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_child cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QModelIndex_child" qtc_QModelIndex_child :: Ptr (TQModelIndex a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qcolumn (QModelIndex a) (()) where
 column x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_column cobj_x0

foreign import ccall "qtc_QModelIndex_column" qtc_QModelIndex_column :: Ptr (TQModelIndex a) -> IO CInt

instance Qqdata (QModelIndex ()) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data cobj_x0

foreign import ccall "qtc_QModelIndex_data" qtc_QModelIndex_data :: Ptr (TQModelIndex a) -> IO (Ptr (TQVariant ()))

instance Qqdata (QModelIndexSc a) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data cobj_x0

instance Qqdata_nf (QModelIndex ()) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data cobj_x0

instance Qqdata_nf (QModelIndexSc a) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data cobj_x0

instance Qqdata (QModelIndex ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QModelIndex_data1" qtc_QModelIndex_data1 :: Ptr (TQModelIndex a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QModelIndexSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data1 cobj_x0 (toCInt x1)

instance Qqdata_nf (QModelIndex ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data1 cobj_x0 (toCInt x1)

instance Qqdata_nf (QModelIndexSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_data1 cobj_x0 (toCInt x1)

instance Qflags (QModelIndex a) (()) (IO (ItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_flags cobj_x0

foreign import ccall "qtc_QModelIndex_flags" qtc_QModelIndex_flags :: Ptr (TQModelIndex a) -> IO CLong

internalId :: QModelIndex a -> (()) -> IO (Int)
internalId x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_internalId cobj_x0

foreign import ccall "qtc_QModelIndex_internalId" qtc_QModelIndex_internalId :: Ptr (TQModelIndex a) -> IO CLLong

internalPointer :: QModelIndex a -> (()) -> IO (QVoid ())
internalPointer x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_internalPointer cobj_x0

foreign import ccall "qtc_QModelIndex_internalPointer" qtc_QModelIndex_internalPointer :: Ptr (TQModelIndex a) -> IO (Ptr (TQVoid ()))

instance QqisValid (QModelIndex ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_isValid cobj_x0

foreign import ccall "qtc_QModelIndex_isValid" qtc_QModelIndex_isValid :: Ptr (TQModelIndex a) -> IO CBool

instance QqisValid (QModelIndexSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_isValid cobj_x0

instance Qmodel (QModelIndex a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_model cobj_x0

foreign import ccall "qtc_QModelIndex_model" qtc_QModelIndex_model :: Ptr (TQModelIndex a) -> IO (Ptr (TQAbstractItemModel ()))

instance Qparent (QModelIndex a) (()) (IO (QModelIndex ())) where
 parent x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_parent cobj_x0

foreign import ccall "qtc_QModelIndex_parent" qtc_QModelIndex_parent :: Ptr (TQModelIndex a) -> IO (Ptr (TQModelIndex ()))

instance Qrow (QModelIndex a) (()) where
 row x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_row cobj_x0

foreign import ccall "qtc_QModelIndex_row" qtc_QModelIndex_row :: Ptr (TQModelIndex a) -> IO CInt

instance Qsibling (QModelIndex a) ((Int, Int)) where
 sibling x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_sibling cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QModelIndex_sibling" qtc_QModelIndex_sibling :: Ptr (TQModelIndex a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

qModelIndex_delete :: QModelIndex a -> IO ()
qModelIndex_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QModelIndex_delete cobj_x0

foreign import ccall "qtc_QModelIndex_delete" qtc_QModelIndex_delete :: Ptr (TQModelIndex a) -> IO ()

