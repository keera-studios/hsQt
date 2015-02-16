{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QAbstractItemModel (
  QqAbstractItemModel(..)
  ,QhasIndex(..)
  ,setSupportedDragActions
  ,supportedDragActions
  ,qAbstractItemModel_delete
  ,qAbstractItemModel_deleteLater
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

instance QuserMethod (QAbstractItemModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractItemModel_userMethod" qtc_QAbstractItemModel_userMethod :: Ptr (TQAbstractItemModel a) -> CInt -> IO ()

instance QuserMethod (QAbstractItemModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractItemModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractItemModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractItemModel_userMethodVariant" qtc_QAbstractItemModel_userMethodVariant :: Ptr (TQAbstractItemModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractItemModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractItemModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractItemModel x1 where
  qAbstractItemModel :: x1 -> IO (QAbstractItemModel ())

instance QqAbstractItemModel (()) where
 qAbstractItemModel ()
  = withQAbstractItemModelResult $
    qtc_QAbstractItemModel

foreign import ccall "qtc_QAbstractItemModel" qtc_QAbstractItemModel :: IO (Ptr (TQAbstractItemModel ()))

instance QqAbstractItemModel ((QObject t1)) where
 qAbstractItemModel (x1)
  = withQAbstractItemModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel1 cobj_x1

foreign import ccall "qtc_QAbstractItemModel1" qtc_QAbstractItemModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQAbstractItemModel ()))

instance QbeginInsertColumns (QAbstractItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_beginInsertColumns" qtc_QAbstractItemModel_beginInsertColumns :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QAbstractItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QAbstractItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_beginInsertRows" qtc_QAbstractItemModel_beginInsertRows :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QAbstractItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QAbstractItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_beginRemoveColumns" qtc_QAbstractItemModel_beginRemoveColumns :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QAbstractItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QAbstractItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_beginRemoveRows" qtc_QAbstractItemModel_beginRemoveRows :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QAbstractItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QAbstractItemModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_buddy_h" qtc_QAbstractItemModel_buddy_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QAbstractItemModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QAbstractItemModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_canFetchMore_h" qtc_QAbstractItemModel_canFetchMore_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QAbstractItemModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QAbstractItemModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemModel_changePersistentIndex" qtc_QAbstractItemModel_changePersistentIndex :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QAbstractItemModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcolumnCount (QAbstractItemModel ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_columnCount_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_columnCount_h" qtc_QAbstractItemModel_columnCount_h :: Ptr (TQAbstractItemModel a) -> IO CInt

instance QcolumnCount (QAbstractItemModelSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_columnCount_h cobj_x0

instance QcolumnCount (QAbstractItemModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_columnCount1_h" qtc_QAbstractItemModel_columnCount1_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QAbstractItemModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_columnCount1_h cobj_x0 cobj_x1

instance QcreateIndex (QAbstractItemModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_createIndex" qtc_QAbstractItemModel_createIndex :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractItemModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QAbstractItemModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QAbstractItemModel_createIndex2" qtc_QAbstractItemModel_createIndex2 :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractItemModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QAbstractItemModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_createIndex3" qtc_QAbstractItemModel_createIndex3 :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractItemModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qqdata (QAbstractItemModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_data_h" qtc_QAbstractItemModel_data_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractItemModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractItemModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractItemModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data_h cobj_x0 cobj_x1

instance Qqdata (QAbstractItemModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_data1_h" qtc_QAbstractItemModel_data1_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractItemModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractItemModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractItemModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QdropMimeData (QAbstractItemModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractItemModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractItemModel_dropMimeData_h" qtc_QAbstractItemModel_dropMimeData_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QAbstractItemModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractItemModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QendInsertColumns (QAbstractItemModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QAbstractItemModel_endInsertColumns" qtc_QAbstractItemModel_endInsertColumns :: Ptr (TQAbstractItemModel a) -> IO ()

instance QendInsertColumns (QAbstractItemModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endInsertColumns cobj_x0

instance QendInsertRows (QAbstractItemModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endInsertRows cobj_x0

foreign import ccall "qtc_QAbstractItemModel_endInsertRows" qtc_QAbstractItemModel_endInsertRows :: Ptr (TQAbstractItemModel a) -> IO ()

instance QendInsertRows (QAbstractItemModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endInsertRows cobj_x0

instance QendRemoveColumns (QAbstractItemModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QAbstractItemModel_endRemoveColumns" qtc_QAbstractItemModel_endRemoveColumns :: Ptr (TQAbstractItemModel a) -> IO ()

instance QendRemoveColumns (QAbstractItemModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QAbstractItemModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QAbstractItemModel_endRemoveRows" qtc_QAbstractItemModel_endRemoveRows :: Ptr (TQAbstractItemModel a) -> IO ()

instance QendRemoveRows (QAbstractItemModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_endRemoveRows cobj_x0

instance QfetchMore (QAbstractItemModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_fetchMore_h" qtc_QAbstractItemModel_fetchMore_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QAbstractItemModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_fetchMore_h cobj_x0 cobj_x1

instance Qflags (QAbstractItemModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_flags_h" qtc_QAbstractItemModel_flags_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QAbstractItemModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QAbstractItemModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_hasChildren_h" qtc_QAbstractItemModel_hasChildren_h :: Ptr (TQAbstractItemModel a) -> IO CBool

instance QhasChildren (QAbstractItemModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_hasChildren_h cobj_x0

instance QhasChildren (QAbstractItemModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_hasChildren1_h" qtc_QAbstractItemModel_hasChildren1_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QAbstractItemModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_hasChildren1_h cobj_x0 cobj_x1

class QhasIndex x1 where
 hasIndex :: QAbstractItemModel a -> x1 -> IO (Bool)

instance QhasIndex ((Int, Int)) where
 hasIndex x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_hasIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_hasIndex" qtc_QAbstractItemModel_hasIndex :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO CBool

instance QhasIndex ((Int, Int, QModelIndex t3)) where
 hasIndex x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_hasIndex1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_hasIndex1" qtc_QAbstractItemModel_hasIndex1 :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QheaderData (QAbstractItemModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractItemModel_headerData_h" qtc_QAbstractItemModel_headerData_h :: Ptr (TQAbstractItemModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractItemModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QAbstractItemModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_headerData1_h" qtc_QAbstractItemModel_headerData1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractItemModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance Qindex (QAbstractItemModel ()) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_index_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_index_h" qtc_QAbstractItemModel_index_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractItemModelSc a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_index_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex (QAbstractItemModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_index1_h" qtc_QAbstractItemModel_index1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertColumn (QAbstractItemModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemModel_insertColumn" qtc_QAbstractItemModel_insertColumn :: Ptr (TQAbstractItemModel a) -> CInt -> IO CBool

instance QinsertColumn (QAbstractItemModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QAbstractItemModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemModel_insertColumn1" qtc_QAbstractItemModel_insertColumn1 :: Ptr (TQAbstractItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QAbstractItemModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QAbstractItemModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_insertColumns_h" qtc_QAbstractItemModel_insertColumns_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QAbstractItemModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QAbstractItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_insertColumns1_h" qtc_QAbstractItemModel_insertColumns1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QAbstractItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QAbstractItemModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemModel_insertRow" qtc_QAbstractItemModel_insertRow :: Ptr (TQAbstractItemModel a) -> CInt -> IO CBool

instance QinsertRow (QAbstractItemModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QAbstractItemModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemModel_insertRow1" qtc_QAbstractItemModel_insertRow1 :: Ptr (TQAbstractItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QAbstractItemModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QAbstractItemModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_insertRows_h" qtc_QAbstractItemModel_insertRows_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QAbstractItemModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QAbstractItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_insertRows1_h" qtc_QAbstractItemModel_insertRows1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QAbstractItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qparent (QAbstractItemModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_parent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_parent_h" qtc_QAbstractItemModel_parent_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QAbstractItemModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_parent_h cobj_x0 cobj_x1

instance QremoveColumn (QAbstractItemModel a) ((Int)) (IO (Bool)) where
 removeColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemModel_removeColumn" qtc_QAbstractItemModel_removeColumn :: Ptr (TQAbstractItemModel a) -> CInt -> IO CBool

instance QremoveColumn (QAbstractItemModel a) ((Int, QModelIndex t2)) (IO (Bool)) where
 removeColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_removeColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemModel_removeColumn1" qtc_QAbstractItemModel_removeColumn1 :: Ptr (TQAbstractItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QremoveColumns (QAbstractItemModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_removeColumns_h" qtc_QAbstractItemModel_removeColumns_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QAbstractItemModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QAbstractItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_removeColumns1_h" qtc_QAbstractItemModel_removeColumns1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QAbstractItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRow (QAbstractItemModel a) ((Int)) (IO (Bool)) where
 removeRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemModel_removeRow" qtc_QAbstractItemModel_removeRow :: Ptr (TQAbstractItemModel a) -> CInt -> IO CBool

instance QremoveRow (QAbstractItemModel a) ((Int, QModelIndex t2)) (IO (Bool)) where
 removeRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_removeRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractItemModel_removeRow1" qtc_QAbstractItemModel_removeRow1 :: Ptr (TQAbstractItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QremoveRows (QAbstractItemModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractItemModel_removeRows_h" qtc_QAbstractItemModel_removeRows_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QAbstractItemModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QAbstractItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_removeRows1_h" qtc_QAbstractItemModel_removeRows1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QAbstractItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qreset (QAbstractItemModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_reset cobj_x0

foreign import ccall "qtc_QAbstractItemModel_reset" qtc_QAbstractItemModel_reset :: Ptr (TQAbstractItemModel a) -> IO ()

instance Qreset (QAbstractItemModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_reset cobj_x0

instance Qrevert (QAbstractItemModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_revert_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_revert_h" qtc_QAbstractItemModel_revert_h :: Ptr (TQAbstractItemModel a) -> IO ()

instance Qrevert (QAbstractItemModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_revert_h cobj_x0

instance QrowCount (QAbstractItemModel ()) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_rowCount_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_rowCount_h" qtc_QAbstractItemModel_rowCount_h :: Ptr (TQAbstractItemModel a) -> IO CInt

instance QrowCount (QAbstractItemModelSc a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_rowCount_h cobj_x0

instance QrowCount (QAbstractItemModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_rowCount1_h" qtc_QAbstractItemModel_rowCount1_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QAbstractItemModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QAbstractItemModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemModel_setData_h" qtc_QAbstractItemModel_setData_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QAbstractItemModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QAbstractItemModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QAbstractItemModel_setData1_h" qtc_QAbstractItemModel_setData1_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QAbstractItemModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHeaderData (QAbstractItemModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_setHeaderData_h" qtc_QAbstractItemModel_setHeaderData_h :: Ptr (TQAbstractItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QAbstractItemModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QAbstractItemModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QAbstractItemModel_setHeaderData1_h" qtc_QAbstractItemModel_setHeaderData1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QAbstractItemModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

setSupportedDragActions :: QAbstractItemModel a -> ((DropActions)) -> IO ()
setSupportedDragActions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_setSupportedDragActions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QAbstractItemModel_setSupportedDragActions" qtc_QAbstractItemModel_setSupportedDragActions :: Ptr (TQAbstractItemModel a) -> CLong -> IO ()

instance Qsibling (QAbstractItemModel a) ((Int, Int, QModelIndex t3)) where
 sibling x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractItemModel_sibling cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractItemModel_sibling" qtc_QAbstractItemModel_sibling :: Ptr (TQAbstractItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qsort (QAbstractItemModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractItemModel_sort_h" qtc_QAbstractItemModel_sort_h :: Ptr (TQAbstractItemModel a) -> CInt -> IO ()

instance Qsort (QAbstractItemModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QAbstractItemModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractItemModel_sort1_h" qtc_QAbstractItemModel_sort1_h :: Ptr (TQAbstractItemModel a) -> CInt -> CLong -> IO ()

instance Qsort (QAbstractItemModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qqspan (QAbstractItemModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_span_h" qtc_QAbstractItemModel_span_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QAbstractItemModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_span_h cobj_x0 cobj_x1

instance Qspan (QAbstractItemModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractItemModel_span_qth_h" qtc_QAbstractItemModel_span_qth_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QAbstractItemModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit (QAbstractItemModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_submit_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_submit_h" qtc_QAbstractItemModel_submit_h :: Ptr (TQAbstractItemModel a) -> IO CBool

instance Qsubmit (QAbstractItemModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_submit_h cobj_x0

supportedDragActions :: QAbstractItemModel a -> (()) -> IO (DropActions)
supportedDragActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_supportedDragActions cobj_x0

foreign import ccall "qtc_QAbstractItemModel_supportedDragActions" qtc_QAbstractItemModel_supportedDragActions :: Ptr (TQAbstractItemModel a) -> IO CLong

instance QsupportedDropActions (QAbstractItemModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QAbstractItemModel_supportedDropActions_h" qtc_QAbstractItemModel_supportedDropActions_h :: Ptr (TQAbstractItemModel a) -> IO CLong

instance QsupportedDropActions (QAbstractItemModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_supportedDropActions_h cobj_x0

qAbstractItemModel_delete :: QAbstractItemModel a -> IO ()
qAbstractItemModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_delete cobj_x0

foreign import ccall "qtc_QAbstractItemModel_delete" qtc_QAbstractItemModel_delete :: Ptr (TQAbstractItemModel a) -> IO ()

qAbstractItemModel_deleteLater :: QAbstractItemModel a -> IO ()
qAbstractItemModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractItemModel_deleteLater" qtc_QAbstractItemModel_deleteLater :: Ptr (TQAbstractItemModel a) -> IO ()

instance QchildEvent (QAbstractItemModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_childEvent" qtc_QAbstractItemModel_childEvent :: Ptr (TQAbstractItemModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractItemModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractItemModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemModel_connectNotify" qtc_QAbstractItemModel_connectNotify :: Ptr (TQAbstractItemModel a) -> CWString -> IO ()

instance QconnectNotify (QAbstractItemModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractItemModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_customEvent" qtc_QAbstractItemModel_customEvent :: Ptr (TQAbstractItemModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractItemModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractItemModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemModel_disconnectNotify" qtc_QAbstractItemModel_disconnectNotify :: Ptr (TQAbstractItemModel a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractItemModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractItemModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_event_h" qtc_QAbstractItemModel_event_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractItemModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractItemModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractItemModel_eventFilter_h" qtc_QAbstractItemModel_eventFilter_h :: Ptr (TQAbstractItemModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractItemModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractItemModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractItemModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractItemModel_receivers" qtc_QAbstractItemModel_receivers :: Ptr (TQAbstractItemModel a) -> CWString -> IO CInt

instance Qreceivers (QAbstractItemModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractItemModel_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractItemModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sender cobj_x0

foreign import ccall "qtc_QAbstractItemModel_sender" qtc_QAbstractItemModel_sender :: Ptr (TQAbstractItemModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractItemModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractItemModel_sender cobj_x0

instance QtimerEvent (QAbstractItemModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractItemModel_timerEvent" qtc_QAbstractItemModel_timerEvent :: Ptr (TQAbstractItemModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractItemModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractItemModel_timerEvent cobj_x0 cobj_x1

