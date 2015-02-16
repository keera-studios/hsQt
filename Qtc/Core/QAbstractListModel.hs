{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractListModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QAbstractListModel (
  QqAbstractListModel(..)
  ,qAbstractListModel_delete
  ,qAbstractListModel_deleteLater
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

instance QuserMethod (QAbstractListModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractListModel_userMethod" qtc_QAbstractListModel_userMethod :: Ptr (TQAbstractListModel a) -> CInt -> IO ()

instance QuserMethod (QAbstractListModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractListModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractListModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractListModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractListModel_userMethodVariant" qtc_QAbstractListModel_userMethodVariant :: Ptr (TQAbstractListModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractListModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractListModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractListModel x1 where
  qAbstractListModel :: x1 -> IO (QAbstractListModel ())

instance QqAbstractListModel (()) where
 qAbstractListModel ()
  = withQAbstractListModelResult $
    qtc_QAbstractListModel

foreign import ccall "qtc_QAbstractListModel" qtc_QAbstractListModel :: IO (Ptr (TQAbstractListModel ()))

instance QqAbstractListModel ((QObject t1)) where
 qAbstractListModel (x1)
  = withQAbstractListModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel1 cobj_x1

foreign import ccall "qtc_QAbstractListModel1" qtc_QAbstractListModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQAbstractListModel ()))

instance QdropMimeData (QAbstractListModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractListModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractListModel_dropMimeData_h" qtc_QAbstractListModel_dropMimeData_h :: Ptr (TQAbstractListModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QAbstractListModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractListModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance Qindex (QAbstractListModel ()) ((Int)) (IO (QModelIndex ())) where
 index x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_index_h" qtc_QAbstractListModel_index_h :: Ptr (TQAbstractListModel a) -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractListModelSc a) ((Int)) (IO (QModelIndex ())) where
 index x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index_h cobj_x0 (toCInt x1)

instance Qindex (QAbstractListModel ()) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index1_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_index1_h" qtc_QAbstractListModel_index1_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractListModelSc a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_index1_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_index2_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_index2_h" qtc_QAbstractListModel_index2_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_index2_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

qAbstractListModel_delete :: QAbstractListModel a -> IO ()
qAbstractListModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_delete cobj_x0

foreign import ccall "qtc_QAbstractListModel_delete" qtc_QAbstractListModel_delete :: Ptr (TQAbstractListModel a) -> IO ()

qAbstractListModel_deleteLater :: QAbstractListModel a -> IO ()
qAbstractListModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractListModel_deleteLater" qtc_QAbstractListModel_deleteLater :: Ptr (TQAbstractListModel a) -> IO ()

instance QbeginInsertColumns (QAbstractListModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_beginInsertColumns" qtc_QAbstractListModel_beginInsertColumns :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QAbstractListModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QAbstractListModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_beginInsertRows" qtc_QAbstractListModel_beginInsertRows :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QAbstractListModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QAbstractListModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_beginRemoveColumns" qtc_QAbstractListModel_beginRemoveColumns :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QAbstractListModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QAbstractListModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_beginRemoveRows" qtc_QAbstractListModel_beginRemoveRows :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QAbstractListModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QAbstractListModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_buddy_h" qtc_QAbstractListModel_buddy_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QAbstractListModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QAbstractListModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_canFetchMore_h" qtc_QAbstractListModel_canFetchMore_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QAbstractListModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QAbstractListModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractListModel_changePersistentIndex" qtc_QAbstractListModel_changePersistentIndex :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QAbstractListModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcolumnCount (QAbstractListModel ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_columnCount_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_columnCount_h" qtc_QAbstractListModel_columnCount_h :: Ptr (TQAbstractListModel a) -> IO CInt

instance QcolumnCount (QAbstractListModelSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_columnCount_h cobj_x0

instance QcolumnCount (QAbstractListModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_columnCount1_h" qtc_QAbstractListModel_columnCount1_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QAbstractListModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_columnCount1_h cobj_x0 cobj_x1

instance QcreateIndex (QAbstractListModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_createIndex" qtc_QAbstractListModel_createIndex :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractListModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QAbstractListModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QAbstractListModel_createIndex2" qtc_QAbstractListModel_createIndex2 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractListModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QAbstractListModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_createIndex3" qtc_QAbstractListModel_createIndex3 :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractListModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qqdata (QAbstractListModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_data_h" qtc_QAbstractListModel_data_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractListModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractListModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractListModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data_h cobj_x0 cobj_x1

instance Qqdata (QAbstractListModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_data1_h" qtc_QAbstractListModel_data1_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractListModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractListModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractListModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QendInsertColumns (QAbstractListModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QAbstractListModel_endInsertColumns" qtc_QAbstractListModel_endInsertColumns :: Ptr (TQAbstractListModel a) -> IO ()

instance QendInsertColumns (QAbstractListModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endInsertColumns cobj_x0

instance QendInsertRows (QAbstractListModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endInsertRows cobj_x0

foreign import ccall "qtc_QAbstractListModel_endInsertRows" qtc_QAbstractListModel_endInsertRows :: Ptr (TQAbstractListModel a) -> IO ()

instance QendInsertRows (QAbstractListModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endInsertRows cobj_x0

instance QendRemoveColumns (QAbstractListModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QAbstractListModel_endRemoveColumns" qtc_QAbstractListModel_endRemoveColumns :: Ptr (TQAbstractListModel a) -> IO ()

instance QendRemoveColumns (QAbstractListModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QAbstractListModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QAbstractListModel_endRemoveRows" qtc_QAbstractListModel_endRemoveRows :: Ptr (TQAbstractListModel a) -> IO ()

instance QendRemoveRows (QAbstractListModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_endRemoveRows cobj_x0

instance QfetchMore (QAbstractListModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_fetchMore_h" qtc_QAbstractListModel_fetchMore_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QAbstractListModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_fetchMore_h cobj_x0 cobj_x1

instance Qflags (QAbstractListModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_flags_h" qtc_QAbstractListModel_flags_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QAbstractListModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QAbstractListModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_hasChildren_h" qtc_QAbstractListModel_hasChildren_h :: Ptr (TQAbstractListModel a) -> IO CBool

instance QhasChildren (QAbstractListModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_hasChildren_h cobj_x0

instance QhasChildren (QAbstractListModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_hasChildren1_h" qtc_QAbstractListModel_hasChildren1_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QAbstractListModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_hasChildren1_h cobj_x0 cobj_x1

instance QheaderData (QAbstractListModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractListModel_headerData_h" qtc_QAbstractListModel_headerData_h :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractListModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QAbstractListModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_headerData1_h" qtc_QAbstractListModel_headerData1_h :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractListModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QinsertColumn (QAbstractListModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_insertColumn" qtc_QAbstractListModel_insertColumn :: Ptr (TQAbstractListModel a) -> CInt -> IO CBool

instance QinsertColumn (QAbstractListModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QAbstractListModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractListModel_insertColumn1" qtc_QAbstractListModel_insertColumn1 :: Ptr (TQAbstractListModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QAbstractListModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QAbstractListModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_insertColumns_h" qtc_QAbstractListModel_insertColumns_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QAbstractListModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_insertColumns1_h" qtc_QAbstractListModel_insertColumns1_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QAbstractListModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_insertRow" qtc_QAbstractListModel_insertRow :: Ptr (TQAbstractListModel a) -> CInt -> IO CBool

instance QinsertRow (QAbstractListModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QAbstractListModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractListModel_insertRow1" qtc_QAbstractListModel_insertRow1 :: Ptr (TQAbstractListModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QAbstractListModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QAbstractListModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_insertRows_h" qtc_QAbstractListModel_insertRows_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QAbstractListModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_insertRows1_h" qtc_QAbstractListModel_insertRows1_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qparent (QAbstractListModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_parent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_parent_h" qtc_QAbstractListModel_parent_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QAbstractListModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_parent_h cobj_x0 cobj_x1

instance QremoveColumns (QAbstractListModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_removeColumns_h" qtc_QAbstractListModel_removeColumns_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QAbstractListModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_removeColumns1_h" qtc_QAbstractListModel_removeColumns1_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QAbstractListModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractListModel_removeRows_h" qtc_QAbstractListModel_removeRows_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QAbstractListModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QAbstractListModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_removeRows1_h" qtc_QAbstractListModel_removeRows1_h :: Ptr (TQAbstractListModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QAbstractListModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qreset (QAbstractListModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_reset cobj_x0

foreign import ccall "qtc_QAbstractListModel_reset" qtc_QAbstractListModel_reset :: Ptr (TQAbstractListModel a) -> IO ()

instance Qreset (QAbstractListModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_reset cobj_x0

instance Qrevert (QAbstractListModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_revert_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_revert_h" qtc_QAbstractListModel_revert_h :: Ptr (TQAbstractListModel a) -> IO ()

instance Qrevert (QAbstractListModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_revert_h cobj_x0

instance QrowCount (QAbstractListModel ()) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_rowCount_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_rowCount_h" qtc_QAbstractListModel_rowCount_h :: Ptr (TQAbstractListModel a) -> IO CInt

instance QrowCount (QAbstractListModelSc a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_rowCount_h cobj_x0

instance QrowCount (QAbstractListModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_rowCount1_h" qtc_QAbstractListModel_rowCount1_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QAbstractListModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QAbstractListModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractListModel_setData_h" qtc_QAbstractListModel_setData_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QAbstractListModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QAbstractListModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QAbstractListModel_setData1_h" qtc_QAbstractListModel_setData1_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QAbstractListModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHeaderData (QAbstractListModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractListModel_setHeaderData_h" qtc_QAbstractListModel_setHeaderData_h :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QAbstractListModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QAbstractListModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QAbstractListModel_setHeaderData1_h" qtc_QAbstractListModel_setHeaderData1_h :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QAbstractListModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractListModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance Qsort (QAbstractListModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractListModel_sort_h" qtc_QAbstractListModel_sort_h :: Ptr (TQAbstractListModel a) -> CInt -> IO ()

instance Qsort (QAbstractListModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QAbstractListModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractListModel_sort1_h" qtc_QAbstractListModel_sort1_h :: Ptr (TQAbstractListModel a) -> CInt -> CLong -> IO ()

instance Qsort (QAbstractListModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qqspan (QAbstractListModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_span_h" qtc_QAbstractListModel_span_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QAbstractListModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_h cobj_x0 cobj_x1

instance Qspan (QAbstractListModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractListModel_span_qth_h" qtc_QAbstractListModel_span_qth_h :: Ptr (TQAbstractListModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QAbstractListModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit (QAbstractListModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_submit_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_submit_h" qtc_QAbstractListModel_submit_h :: Ptr (TQAbstractListModel a) -> IO CBool

instance Qsubmit (QAbstractListModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_submit_h cobj_x0

instance QsupportedDropActions (QAbstractListModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QAbstractListModel_supportedDropActions_h" qtc_QAbstractListModel_supportedDropActions_h :: Ptr (TQAbstractListModel a) -> IO CLong

instance QsupportedDropActions (QAbstractListModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_supportedDropActions_h cobj_x0

instance QchildEvent (QAbstractListModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_childEvent" qtc_QAbstractListModel_childEvent :: Ptr (TQAbstractListModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractListModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractListModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractListModel_connectNotify" qtc_QAbstractListModel_connectNotify :: Ptr (TQAbstractListModel a) -> CWString -> IO ()

instance QconnectNotify (QAbstractListModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractListModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_customEvent" qtc_QAbstractListModel_customEvent :: Ptr (TQAbstractListModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractListModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractListModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractListModel_disconnectNotify" qtc_QAbstractListModel_disconnectNotify :: Ptr (TQAbstractListModel a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractListModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractListModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_event_h" qtc_QAbstractListModel_event_h :: Ptr (TQAbstractListModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractListModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractListModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractListModel_eventFilter_h" qtc_QAbstractListModel_eventFilter_h :: Ptr (TQAbstractListModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractListModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractListModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractListModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractListModel_receivers" qtc_QAbstractListModel_receivers :: Ptr (TQAbstractListModel a) -> CWString -> IO CInt

instance Qreceivers (QAbstractListModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractListModel_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractListModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sender cobj_x0

foreign import ccall "qtc_QAbstractListModel_sender" qtc_QAbstractListModel_sender :: Ptr (TQAbstractListModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractListModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractListModel_sender cobj_x0

instance QtimerEvent (QAbstractListModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractListModel_timerEvent" qtc_QAbstractListModel_timerEvent :: Ptr (TQAbstractListModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractListModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractListModel_timerEvent cobj_x0 cobj_x1

