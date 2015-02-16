{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractTableModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QAbstractTableModel (
  QqAbstractTableModel(..)
  ,qAbstractTableModel_delete
  ,qAbstractTableModel_deleteLater
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

instance QuserMethod (QAbstractTableModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTableModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractTableModel_userMethod" qtc_QAbstractTableModel_userMethod :: Ptr (TQAbstractTableModel a) -> CInt -> IO ()

instance QuserMethod (QAbstractTableModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTableModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractTableModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractTableModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractTableModel_userMethodVariant" qtc_QAbstractTableModel_userMethodVariant :: Ptr (TQAbstractTableModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractTableModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractTableModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractTableModel x1 where
  qAbstractTableModel :: x1 -> IO (QAbstractTableModel ())

instance QqAbstractTableModel (()) where
 qAbstractTableModel ()
  = withQAbstractTableModelResult $
    qtc_QAbstractTableModel

foreign import ccall "qtc_QAbstractTableModel" qtc_QAbstractTableModel :: IO (Ptr (TQAbstractTableModel ()))

instance QqAbstractTableModel ((QObject t1)) where
 qAbstractTableModel (x1)
  = withQAbstractTableModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel1 cobj_x1

foreign import ccall "qtc_QAbstractTableModel1" qtc_QAbstractTableModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQAbstractTableModel ()))

instance QdropMimeData (QAbstractTableModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTableModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractTableModel_dropMimeData_h" qtc_QAbstractTableModel_dropMimeData_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QAbstractTableModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTableModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance Qindex (QAbstractTableModel a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_index cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_index" qtc_QAbstractTableModel_index :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractTableModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_index1_h" qtc_QAbstractTableModel_index1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractTableModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

qAbstractTableModel_delete :: QAbstractTableModel a -> IO ()
qAbstractTableModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_delete cobj_x0

foreign import ccall "qtc_QAbstractTableModel_delete" qtc_QAbstractTableModel_delete :: Ptr (TQAbstractTableModel a) -> IO ()

qAbstractTableModel_deleteLater :: QAbstractTableModel a -> IO ()
qAbstractTableModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractTableModel_deleteLater" qtc_QAbstractTableModel_deleteLater :: Ptr (TQAbstractTableModel a) -> IO ()

instance QbeginInsertColumns (QAbstractTableModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_beginInsertColumns" qtc_QAbstractTableModel_beginInsertColumns :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QAbstractTableModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QAbstractTableModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_beginInsertRows" qtc_QAbstractTableModel_beginInsertRows :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QAbstractTableModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QAbstractTableModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_beginRemoveColumns" qtc_QAbstractTableModel_beginRemoveColumns :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QAbstractTableModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QAbstractTableModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_beginRemoveRows" qtc_QAbstractTableModel_beginRemoveRows :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QAbstractTableModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QAbstractTableModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_buddy_h" qtc_QAbstractTableModel_buddy_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QAbstractTableModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QAbstractTableModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_canFetchMore_h" qtc_QAbstractTableModel_canFetchMore_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QAbstractTableModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QAbstractTableModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTableModel_changePersistentIndex" qtc_QAbstractTableModel_changePersistentIndex :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QAbstractTableModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcolumnCount (QAbstractTableModel ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_columnCount_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_columnCount_h" qtc_QAbstractTableModel_columnCount_h :: Ptr (TQAbstractTableModel a) -> IO CInt

instance QcolumnCount (QAbstractTableModelSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_columnCount_h cobj_x0

instance QcolumnCount (QAbstractTableModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_columnCount1_h" qtc_QAbstractTableModel_columnCount1_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QAbstractTableModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_columnCount1_h cobj_x0 cobj_x1

instance QcreateIndex (QAbstractTableModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_createIndex" qtc_QAbstractTableModel_createIndex :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractTableModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QAbstractTableModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QAbstractTableModel_createIndex2" qtc_QAbstractTableModel_createIndex2 :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractTableModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QAbstractTableModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_createIndex3" qtc_QAbstractTableModel_createIndex3 :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractTableModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qqdata (QAbstractTableModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_data_h" qtc_QAbstractTableModel_data_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractTableModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractTableModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractTableModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data_h cobj_x0 cobj_x1

instance Qqdata (QAbstractTableModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_data1_h" qtc_QAbstractTableModel_data1_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractTableModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractTableModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractTableModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QendInsertColumns (QAbstractTableModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QAbstractTableModel_endInsertColumns" qtc_QAbstractTableModel_endInsertColumns :: Ptr (TQAbstractTableModel a) -> IO ()

instance QendInsertColumns (QAbstractTableModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endInsertColumns cobj_x0

instance QendInsertRows (QAbstractTableModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endInsertRows cobj_x0

foreign import ccall "qtc_QAbstractTableModel_endInsertRows" qtc_QAbstractTableModel_endInsertRows :: Ptr (TQAbstractTableModel a) -> IO ()

instance QendInsertRows (QAbstractTableModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endInsertRows cobj_x0

instance QendRemoveColumns (QAbstractTableModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QAbstractTableModel_endRemoveColumns" qtc_QAbstractTableModel_endRemoveColumns :: Ptr (TQAbstractTableModel a) -> IO ()

instance QendRemoveColumns (QAbstractTableModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QAbstractTableModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QAbstractTableModel_endRemoveRows" qtc_QAbstractTableModel_endRemoveRows :: Ptr (TQAbstractTableModel a) -> IO ()

instance QendRemoveRows (QAbstractTableModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_endRemoveRows cobj_x0

instance QfetchMore (QAbstractTableModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_fetchMore_h" qtc_QAbstractTableModel_fetchMore_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QAbstractTableModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_fetchMore_h cobj_x0 cobj_x1

instance Qflags (QAbstractTableModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_flags_h" qtc_QAbstractTableModel_flags_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QAbstractTableModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QAbstractTableModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_hasChildren_h" qtc_QAbstractTableModel_hasChildren_h :: Ptr (TQAbstractTableModel a) -> IO CBool

instance QhasChildren (QAbstractTableModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_hasChildren_h cobj_x0

instance QhasChildren (QAbstractTableModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_hasChildren1_h" qtc_QAbstractTableModel_hasChildren1_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QAbstractTableModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_hasChildren1_h cobj_x0 cobj_x1

instance QheaderData (QAbstractTableModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTableModel_headerData_h" qtc_QAbstractTableModel_headerData_h :: Ptr (TQAbstractTableModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractTableModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QAbstractTableModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_headerData1_h" qtc_QAbstractTableModel_headerData1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractTableModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QinsertColumn (QAbstractTableModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTableModel_insertColumn" qtc_QAbstractTableModel_insertColumn :: Ptr (TQAbstractTableModel a) -> CInt -> IO CBool

instance QinsertColumn (QAbstractTableModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QAbstractTableModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractTableModel_insertColumn1" qtc_QAbstractTableModel_insertColumn1 :: Ptr (TQAbstractTableModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QAbstractTableModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QAbstractTableModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_insertColumns_h" qtc_QAbstractTableModel_insertColumns_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QAbstractTableModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QAbstractTableModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_insertColumns1_h" qtc_QAbstractTableModel_insertColumns1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QAbstractTableModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QAbstractTableModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTableModel_insertRow" qtc_QAbstractTableModel_insertRow :: Ptr (TQAbstractTableModel a) -> CInt -> IO CBool

instance QinsertRow (QAbstractTableModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QAbstractTableModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractTableModel_insertRow1" qtc_QAbstractTableModel_insertRow1 :: Ptr (TQAbstractTableModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QAbstractTableModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QAbstractTableModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_insertRows_h" qtc_QAbstractTableModel_insertRows_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QAbstractTableModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QAbstractTableModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_insertRows1_h" qtc_QAbstractTableModel_insertRows1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QAbstractTableModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qparent (QAbstractTableModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_parent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_parent_h" qtc_QAbstractTableModel_parent_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QAbstractTableModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_parent_h cobj_x0 cobj_x1

instance QremoveColumns (QAbstractTableModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_removeColumns_h" qtc_QAbstractTableModel_removeColumns_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QAbstractTableModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QAbstractTableModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_removeColumns1_h" qtc_QAbstractTableModel_removeColumns1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QAbstractTableModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QAbstractTableModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractTableModel_removeRows_h" qtc_QAbstractTableModel_removeRows_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QAbstractTableModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QAbstractTableModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_removeRows1_h" qtc_QAbstractTableModel_removeRows1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QAbstractTableModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qreset (QAbstractTableModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_reset cobj_x0

foreign import ccall "qtc_QAbstractTableModel_reset" qtc_QAbstractTableModel_reset :: Ptr (TQAbstractTableModel a) -> IO ()

instance Qreset (QAbstractTableModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_reset cobj_x0

instance Qrevert (QAbstractTableModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_revert_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_revert_h" qtc_QAbstractTableModel_revert_h :: Ptr (TQAbstractTableModel a) -> IO ()

instance Qrevert (QAbstractTableModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_revert_h cobj_x0

instance QrowCount (QAbstractTableModel ()) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_rowCount_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_rowCount_h" qtc_QAbstractTableModel_rowCount_h :: Ptr (TQAbstractTableModel a) -> IO CInt

instance QrowCount (QAbstractTableModelSc a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_rowCount_h cobj_x0

instance QrowCount (QAbstractTableModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_rowCount1_h" qtc_QAbstractTableModel_rowCount1_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QAbstractTableModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QAbstractTableModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTableModel_setData_h" qtc_QAbstractTableModel_setData_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QAbstractTableModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QAbstractTableModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QAbstractTableModel_setData1_h" qtc_QAbstractTableModel_setData1_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QAbstractTableModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHeaderData (QAbstractTableModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTableModel_setHeaderData_h" qtc_QAbstractTableModel_setHeaderData_h :: Ptr (TQAbstractTableModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QAbstractTableModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QAbstractTableModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QAbstractTableModel_setHeaderData1_h" qtc_QAbstractTableModel_setHeaderData1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QAbstractTableModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTableModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance Qsort (QAbstractTableModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTableModel_sort_h" qtc_QAbstractTableModel_sort_h :: Ptr (TQAbstractTableModel a) -> CInt -> IO ()

instance Qsort (QAbstractTableModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QAbstractTableModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTableModel_sort1_h" qtc_QAbstractTableModel_sort1_h :: Ptr (TQAbstractTableModel a) -> CInt -> CLong -> IO ()

instance Qsort (QAbstractTableModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qqspan (QAbstractTableModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_span_h" qtc_QAbstractTableModel_span_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QAbstractTableModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_span_h cobj_x0 cobj_x1

instance Qspan (QAbstractTableModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractTableModel_span_qth_h" qtc_QAbstractTableModel_span_qth_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QAbstractTableModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit (QAbstractTableModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_submit_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_submit_h" qtc_QAbstractTableModel_submit_h :: Ptr (TQAbstractTableModel a) -> IO CBool

instance Qsubmit (QAbstractTableModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_submit_h cobj_x0

instance QsupportedDropActions (QAbstractTableModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QAbstractTableModel_supportedDropActions_h" qtc_QAbstractTableModel_supportedDropActions_h :: Ptr (TQAbstractTableModel a) -> IO CLong

instance QsupportedDropActions (QAbstractTableModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_supportedDropActions_h cobj_x0

instance QchildEvent (QAbstractTableModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_childEvent" qtc_QAbstractTableModel_childEvent :: Ptr (TQAbstractTableModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractTableModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractTableModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTableModel_connectNotify" qtc_QAbstractTableModel_connectNotify :: Ptr (TQAbstractTableModel a) -> CWString -> IO ()

instance QconnectNotify (QAbstractTableModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractTableModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_customEvent" qtc_QAbstractTableModel_customEvent :: Ptr (TQAbstractTableModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractTableModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractTableModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTableModel_disconnectNotify" qtc_QAbstractTableModel_disconnectNotify :: Ptr (TQAbstractTableModel a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractTableModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractTableModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_event_h" qtc_QAbstractTableModel_event_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractTableModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractTableModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTableModel_eventFilter_h" qtc_QAbstractTableModel_eventFilter_h :: Ptr (TQAbstractTableModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractTableModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTableModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractTableModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTableModel_receivers" qtc_QAbstractTableModel_receivers :: Ptr (TQAbstractTableModel a) -> CWString -> IO CInt

instance Qreceivers (QAbstractTableModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTableModel_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractTableModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sender cobj_x0

foreign import ccall "qtc_QAbstractTableModel_sender" qtc_QAbstractTableModel_sender :: Ptr (TQAbstractTableModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractTableModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTableModel_sender cobj_x0

instance QtimerEvent (QAbstractTableModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTableModel_timerEvent" qtc_QAbstractTableModel_timerEvent :: Ptr (TQAbstractTableModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractTableModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTableModel_timerEvent cobj_x0 cobj_x1

