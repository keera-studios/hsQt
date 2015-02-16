{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QAbstractProxyModel.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractProxyModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractProxyModel (
  QqAbstractProxyModel(..)
  ,sourceModel
  ,qAbstractProxyModel_delete
  ,qAbstractProxyModel_deleteLater
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

instance QuserMethod (QAbstractProxyModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractProxyModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractProxyModel_userMethod" qtc_QAbstractProxyModel_userMethod :: Ptr (TQAbstractProxyModel a) -> CInt -> IO ()

instance QuserMethod (QAbstractProxyModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractProxyModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractProxyModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractProxyModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractProxyModel_userMethodVariant" qtc_QAbstractProxyModel_userMethodVariant :: Ptr (TQAbstractProxyModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractProxyModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractProxyModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqAbstractProxyModel x1 where
  qAbstractProxyModel :: x1 -> IO (QAbstractProxyModel ())

instance QqAbstractProxyModel (()) where
 qAbstractProxyModel ()
  = withQAbstractProxyModelResult $
    qtc_QAbstractProxyModel

foreign import ccall "qtc_QAbstractProxyModel" qtc_QAbstractProxyModel :: IO (Ptr (TQAbstractProxyModel ()))

instance QqAbstractProxyModel ((QObject t1)) where
 qAbstractProxyModel (x1)
  = withQAbstractProxyModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel1 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel1" qtc_QAbstractProxyModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQAbstractProxyModel ()))

instance Qqdata (QAbstractProxyModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_data" qtc_QAbstractProxyModel_data :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractProxyModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractProxyModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QAbstractProxyModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data cobj_x0 cobj_x1

instance Qqdata (QAbstractProxyModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_data1_h" qtc_QAbstractProxyModel_data1_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QAbstractProxyModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractProxyModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QAbstractProxyModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qflags (QAbstractProxyModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_flags_h" qtc_QAbstractProxyModel_flags_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QAbstractProxyModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_flags_h cobj_x0 cobj_x1

instance QheaderData (QAbstractProxyModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_headerData_h" qtc_QAbstractProxyModel_headerData_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QAbstractProxyModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QAbstractProxyModel ()) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QAbstractProxyModelSc a) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QmapFromSource (QAbstractProxyModel ()) ((QModelIndex t1)) where
 mapFromSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapFromSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_mapFromSource_h" qtc_QAbstractProxyModel_mapFromSource_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QmapFromSource (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 mapFromSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapFromSource_h cobj_x0 cobj_x1

instance QmapSelectionFromSource (QAbstractProxyModel ()) ((QItemSelection t1)) where
 mapSelectionFromSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapSelectionFromSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_mapSelectionFromSource_h" qtc_QAbstractProxyModel_mapSelectionFromSource_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQItemSelection ()))

instance QmapSelectionFromSource (QAbstractProxyModelSc a) ((QItemSelection t1)) where
 mapSelectionFromSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapSelectionFromSource_h cobj_x0 cobj_x1

instance QmapSelectionToSource (QAbstractProxyModel ()) ((QItemSelection t1)) where
 mapSelectionToSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapSelectionToSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_mapSelectionToSource_h" qtc_QAbstractProxyModel_mapSelectionToSource_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQItemSelection ()))

instance QmapSelectionToSource (QAbstractProxyModelSc a) ((QItemSelection t1)) where
 mapSelectionToSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapSelectionToSource_h cobj_x0 cobj_x1

instance QmapToSource (QAbstractProxyModel ()) ((QModelIndex t1)) where
 mapToSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapToSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_mapToSource_h" qtc_QAbstractProxyModel_mapToSource_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QmapToSource (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 mapToSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_mapToSource_h cobj_x0 cobj_x1

instance Qrevert (QAbstractProxyModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_revert_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_revert_h" qtc_QAbstractProxyModel_revert_h :: Ptr (TQAbstractProxyModel a) -> IO ()

instance Qrevert (QAbstractProxyModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_revert_h cobj_x0

instance QsetSourceModel (QAbstractProxyModel ()) ((QAbstractItemModel t1)) where
 setSourceModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_setSourceModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_setSourceModel_h" qtc_QAbstractProxyModel_setSourceModel_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetSourceModel (QAbstractProxyModelSc a) ((QAbstractItemModel t1)) where
 setSourceModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_setSourceModel_h cobj_x0 cobj_x1

sourceModel :: QAbstractProxyModel a -> (()) -> IO (QAbstractItemModel ())
sourceModel x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sourceModel cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_sourceModel" qtc_QAbstractProxyModel_sourceModel :: Ptr (TQAbstractProxyModel a) -> IO (Ptr (TQAbstractItemModel ()))

instance Qsubmit (QAbstractProxyModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_submit_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_submit_h" qtc_QAbstractProxyModel_submit_h :: Ptr (TQAbstractProxyModel a) -> IO CBool

instance Qsubmit (QAbstractProxyModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_submit_h cobj_x0

qAbstractProxyModel_delete :: QAbstractProxyModel a -> IO ()
qAbstractProxyModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_delete cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_delete" qtc_QAbstractProxyModel_delete :: Ptr (TQAbstractProxyModel a) -> IO ()

qAbstractProxyModel_deleteLater :: QAbstractProxyModel a -> IO ()
qAbstractProxyModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_deleteLater" qtc_QAbstractProxyModel_deleteLater :: Ptr (TQAbstractProxyModel a) -> IO ()

instance QbeginInsertColumns (QAbstractProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_beginInsertColumns" qtc_QAbstractProxyModel_beginInsertColumns :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QAbstractProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QAbstractProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_beginInsertRows" qtc_QAbstractProxyModel_beginInsertRows :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QAbstractProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QAbstractProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_beginRemoveColumns" qtc_QAbstractProxyModel_beginRemoveColumns :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QAbstractProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QAbstractProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_beginRemoveRows" qtc_QAbstractProxyModel_beginRemoveRows :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QAbstractProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QAbstractProxyModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_buddy_h" qtc_QAbstractProxyModel_buddy_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QAbstractProxyModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QAbstractProxyModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_canFetchMore_h" qtc_QAbstractProxyModel_canFetchMore_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QAbstractProxyModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractProxyModel_changePersistentIndex" qtc_QAbstractProxyModel_changePersistentIndex :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QAbstractProxyModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcolumnCount (QAbstractProxyModel ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_columnCount_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_columnCount_h" qtc_QAbstractProxyModel_columnCount_h :: Ptr (TQAbstractProxyModel a) -> IO CInt

instance QcolumnCount (QAbstractProxyModelSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_columnCount_h cobj_x0

instance QcolumnCount (QAbstractProxyModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_columnCount1_h" qtc_QAbstractProxyModel_columnCount1_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_columnCount1_h cobj_x0 cobj_x1

instance QcreateIndex (QAbstractProxyModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_createIndex" qtc_QAbstractProxyModel_createIndex :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractProxyModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QAbstractProxyModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QAbstractProxyModel_createIndex2" qtc_QAbstractProxyModel_createIndex2 :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractProxyModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QAbstractProxyModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_createIndex3" qtc_QAbstractProxyModel_createIndex3 :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QAbstractProxyModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QdropMimeData (QAbstractProxyModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractProxyModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractProxyModel_dropMimeData_h" qtc_QAbstractProxyModel_dropMimeData_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QAbstractProxyModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractProxyModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QendInsertColumns (QAbstractProxyModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_endInsertColumns" qtc_QAbstractProxyModel_endInsertColumns :: Ptr (TQAbstractProxyModel a) -> IO ()

instance QendInsertColumns (QAbstractProxyModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endInsertColumns cobj_x0

instance QendInsertRows (QAbstractProxyModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endInsertRows cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_endInsertRows" qtc_QAbstractProxyModel_endInsertRows :: Ptr (TQAbstractProxyModel a) -> IO ()

instance QendInsertRows (QAbstractProxyModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endInsertRows cobj_x0

instance QendRemoveColumns (QAbstractProxyModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_endRemoveColumns" qtc_QAbstractProxyModel_endRemoveColumns :: Ptr (TQAbstractProxyModel a) -> IO ()

instance QendRemoveColumns (QAbstractProxyModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QAbstractProxyModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_endRemoveRows" qtc_QAbstractProxyModel_endRemoveRows :: Ptr (TQAbstractProxyModel a) -> IO ()

instance QendRemoveRows (QAbstractProxyModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_endRemoveRows cobj_x0

instance QfetchMore (QAbstractProxyModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_fetchMore_h" qtc_QAbstractProxyModel_fetchMore_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_fetchMore_h cobj_x0 cobj_x1

instance QhasChildren (QAbstractProxyModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_hasChildren_h" qtc_QAbstractProxyModel_hasChildren_h :: Ptr (TQAbstractProxyModel a) -> IO CBool

instance QhasChildren (QAbstractProxyModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_hasChildren_h cobj_x0

instance QhasChildren (QAbstractProxyModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_hasChildren1_h" qtc_QAbstractProxyModel_hasChildren1_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_hasChildren1_h cobj_x0 cobj_x1

instance Qindex (QAbstractProxyModel ()) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_index_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_index_h" qtc_QAbstractProxyModel_index_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractProxyModelSc a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_index_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex (QAbstractProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_index1_h" qtc_QAbstractProxyModel_index1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QAbstractProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertColumn (QAbstractProxyModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractProxyModel_insertColumn" qtc_QAbstractProxyModel_insertColumn :: Ptr (TQAbstractProxyModel a) -> CInt -> IO CBool

instance QinsertColumn (QAbstractProxyModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QAbstractProxyModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractProxyModel_insertColumn1" qtc_QAbstractProxyModel_insertColumn1 :: Ptr (TQAbstractProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QAbstractProxyModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QAbstractProxyModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_insertColumns_h" qtc_QAbstractProxyModel_insertColumns_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QAbstractProxyModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QAbstractProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_insertColumns1_h" qtc_QAbstractProxyModel_insertColumns1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QAbstractProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QAbstractProxyModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractProxyModel_insertRow" qtc_QAbstractProxyModel_insertRow :: Ptr (TQAbstractProxyModel a) -> CInt -> IO CBool

instance QinsertRow (QAbstractProxyModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QAbstractProxyModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractProxyModel_insertRow1" qtc_QAbstractProxyModel_insertRow1 :: Ptr (TQAbstractProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QAbstractProxyModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QAbstractProxyModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_insertRows_h" qtc_QAbstractProxyModel_insertRows_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QAbstractProxyModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QAbstractProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_insertRows1_h" qtc_QAbstractProxyModel_insertRows1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QAbstractProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qparent (QAbstractProxyModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_parent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_parent_h" qtc_QAbstractProxyModel_parent_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QAbstractProxyModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_parent_h cobj_x0 cobj_x1

instance QremoveColumns (QAbstractProxyModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_removeColumns_h" qtc_QAbstractProxyModel_removeColumns_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QAbstractProxyModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QAbstractProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_removeColumns1_h" qtc_QAbstractProxyModel_removeColumns1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QAbstractProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QAbstractProxyModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QAbstractProxyModel_removeRows_h" qtc_QAbstractProxyModel_removeRows_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QAbstractProxyModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QAbstractProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_removeRows1_h" qtc_QAbstractProxyModel_removeRows1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QAbstractProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qreset (QAbstractProxyModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_reset cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_reset" qtc_QAbstractProxyModel_reset :: Ptr (TQAbstractProxyModel a) -> IO ()

instance Qreset (QAbstractProxyModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_reset cobj_x0

instance QrowCount (QAbstractProxyModel ()) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_rowCount_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_rowCount_h" qtc_QAbstractProxyModel_rowCount_h :: Ptr (TQAbstractProxyModel a) -> IO CInt

instance QrowCount (QAbstractProxyModelSc a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_rowCount_h cobj_x0

instance QrowCount (QAbstractProxyModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_rowCount1_h" qtc_QAbstractProxyModel_rowCount1_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QAbstractProxyModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractProxyModel_setData_h" qtc_QAbstractProxyModel_setData_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QAbstractProxyModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QAbstractProxyModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QAbstractProxyModel_setData1_h" qtc_QAbstractProxyModel_setData1_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QAbstractProxyModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHeaderData (QAbstractProxyModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QAbstractProxyModel_setHeaderData_h" qtc_QAbstractProxyModel_setHeaderData_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QAbstractProxyModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QAbstractProxyModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QAbstractProxyModel_setHeaderData1_h" qtc_QAbstractProxyModel_setHeaderData1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QAbstractProxyModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractProxyModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance Qsort (QAbstractProxyModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractProxyModel_sort_h" qtc_QAbstractProxyModel_sort_h :: Ptr (TQAbstractProxyModel a) -> CInt -> IO ()

instance Qsort (QAbstractProxyModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QAbstractProxyModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractProxyModel_sort1_h" qtc_QAbstractProxyModel_sort1_h :: Ptr (TQAbstractProxyModel a) -> CInt -> CLong -> IO ()

instance Qsort (QAbstractProxyModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qqspan (QAbstractProxyModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_span_h" qtc_QAbstractProxyModel_span_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_span_h cobj_x0 cobj_x1

instance Qspan (QAbstractProxyModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QAbstractProxyModel_span_qth_h" qtc_QAbstractProxyModel_span_qth_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QAbstractProxyModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance QsupportedDropActions (QAbstractProxyModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_supportedDropActions_h" qtc_QAbstractProxyModel_supportedDropActions_h :: Ptr (TQAbstractProxyModel a) -> IO CLong

instance QsupportedDropActions (QAbstractProxyModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_supportedDropActions_h cobj_x0

instance QchildEvent (QAbstractProxyModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_childEvent" qtc_QAbstractProxyModel_childEvent :: Ptr (TQAbstractProxyModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractProxyModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractProxyModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractProxyModel_connectNotify" qtc_QAbstractProxyModel_connectNotify :: Ptr (TQAbstractProxyModel a) -> CWString -> IO ()

instance QconnectNotify (QAbstractProxyModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractProxyModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_customEvent" qtc_QAbstractProxyModel_customEvent :: Ptr (TQAbstractProxyModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractProxyModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractProxyModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractProxyModel_disconnectNotify" qtc_QAbstractProxyModel_disconnectNotify :: Ptr (TQAbstractProxyModel a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractProxyModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractProxyModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_event_h" qtc_QAbstractProxyModel_event_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractProxyModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractProxyModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractProxyModel_eventFilter_h" qtc_QAbstractProxyModel_eventFilter_h :: Ptr (TQAbstractProxyModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractProxyModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractProxyModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractProxyModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractProxyModel_receivers" qtc_QAbstractProxyModel_receivers :: Ptr (TQAbstractProxyModel a) -> CWString -> IO CInt

instance Qreceivers (QAbstractProxyModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractProxyModel_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractProxyModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sender cobj_x0

foreign import ccall "qtc_QAbstractProxyModel_sender" qtc_QAbstractProxyModel_sender :: Ptr (TQAbstractProxyModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractProxyModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractProxyModel_sender cobj_x0

instance QtimerEvent (QAbstractProxyModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractProxyModel_timerEvent" qtc_QAbstractProxyModel_timerEvent :: Ptr (TQAbstractProxyModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractProxyModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractProxyModel_timerEvent cobj_x0 cobj_x1

