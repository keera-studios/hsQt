{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QSortFilterProxyModel.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QSortFilterProxyModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSortFilterProxyModel (
  QqSortFilterProxyModel(..)
  ,dynamicSortFilter
  ,QfilterAcceptsColumn(..)
  ,QfilterAcceptsRow(..)
  ,filterCaseSensitivity
  ,QfilterChanged(..)
  ,filterKeyColumn
  ,filterRegExp
  ,filterRole
  ,QinvalidateFilter(..)
  ,isSortLocaleAware
  ,QlessThan(..)
  ,Qmatch(..)
  ,setDynamicSortFilter
  ,setFilterCaseSensitivity
  ,setFilterFixedString
  ,setFilterKeyColumn
  ,QsetFilterRegExp(..)
  ,setFilterRole
  ,setFilterWildcard
  ,setSortCaseSensitivity
  ,setSortLocaleAware
  ,sortCaseSensitivity
  ,qSortFilterProxyModel_delete
  ,qSortFilterProxyModel_deleteLater
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

instance QuserMethod (QSortFilterProxyModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSortFilterProxyModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSortFilterProxyModel_userMethod" qtc_QSortFilterProxyModel_userMethod :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO ()

instance QuserMethod (QSortFilterProxyModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSortFilterProxyModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSortFilterProxyModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSortFilterProxyModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSortFilterProxyModel_userMethodVariant" qtc_QSortFilterProxyModel_userMethodVariant :: Ptr (TQSortFilterProxyModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSortFilterProxyModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSortFilterProxyModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSortFilterProxyModel x1 where
  qSortFilterProxyModel :: x1 -> IO (QSortFilterProxyModel ())

instance QqSortFilterProxyModel (()) where
 qSortFilterProxyModel ()
  = withQSortFilterProxyModelResult $
    qtc_QSortFilterProxyModel

foreign import ccall "qtc_QSortFilterProxyModel" qtc_QSortFilterProxyModel :: IO (Ptr (TQSortFilterProxyModel ()))

instance QqSortFilterProxyModel ((QObject t1)) where
 qSortFilterProxyModel (x1)
  = withQSortFilterProxyModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel1 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel1" qtc_QSortFilterProxyModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQSortFilterProxyModel ()))

instance Qbuddy (QSortFilterProxyModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_buddy_h" qtc_QSortFilterProxyModel_buddy_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QSortFilterProxyModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_canFetchMore_h" qtc_QSortFilterProxyModel_canFetchMore_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_canFetchMore_h cobj_x0 cobj_x1

instance Qclear (QSortFilterProxyModel a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_clear cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_clear" qtc_QSortFilterProxyModel_clear :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QcolumnCount (QSortFilterProxyModel a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_columnCount cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_columnCount" qtc_QSortFilterProxyModel_columnCount :: Ptr (TQSortFilterProxyModel a) -> IO CInt

instance QcolumnCount (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_columnCount1_h" qtc_QSortFilterProxyModel_columnCount1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_columnCount1_h cobj_x0 cobj_x1

instance Qqdata (QSortFilterProxyModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_data" qtc_QSortFilterProxyModel_data :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QSortFilterProxyModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QSortFilterProxyModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QSortFilterProxyModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data cobj_x0 cobj_x1

instance Qqdata (QSortFilterProxyModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_data1_h" qtc_QSortFilterProxyModel_data1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QSortFilterProxyModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QSortFilterProxyModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QSortFilterProxyModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QdropMimeData (QSortFilterProxyModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QSortFilterProxyModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QSortFilterProxyModel_dropMimeData_h" qtc_QSortFilterProxyModel_dropMimeData_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QSortFilterProxyModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QSortFilterProxyModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

dynamicSortFilter :: QSortFilterProxyModel a -> (()) -> IO (Bool)
dynamicSortFilter x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_dynamicSortFilter cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_dynamicSortFilter" qtc_QSortFilterProxyModel_dynamicSortFilter :: Ptr (TQSortFilterProxyModel a) -> IO CBool

instance QfetchMore (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_fetchMore_h" qtc_QSortFilterProxyModel_fetchMore_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_fetchMore_h cobj_x0 cobj_x1

class QfilterAcceptsColumn x0 x1 where
 filterAcceptsColumn :: x0 -> x1 -> IO (Bool)

instance QfilterAcceptsColumn (QSortFilterProxyModel ()) ((Int, QModelIndex t2)) where
 filterAcceptsColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_filterAcceptsColumn cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_filterAcceptsColumn" qtc_QSortFilterProxyModel_filterAcceptsColumn :: Ptr (TQSortFilterProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QfilterAcceptsColumn (QSortFilterProxyModelSc a) ((Int, QModelIndex t2)) where
 filterAcceptsColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_filterAcceptsColumn cobj_x0 (toCInt x1) cobj_x2

class QfilterAcceptsRow x0 x1 where
 filterAcceptsRow :: x0 -> x1 -> IO (Bool)

instance QfilterAcceptsRow (QSortFilterProxyModel ()) ((Int, QModelIndex t2)) where
 filterAcceptsRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_filterAcceptsRow cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_filterAcceptsRow" qtc_QSortFilterProxyModel_filterAcceptsRow :: Ptr (TQSortFilterProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QfilterAcceptsRow (QSortFilterProxyModelSc a) ((Int, QModelIndex t2)) where
 filterAcceptsRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_filterAcceptsRow cobj_x0 (toCInt x1) cobj_x2

filterCaseSensitivity :: QSortFilterProxyModel a -> (()) -> IO (CaseSensitivity)
filterCaseSensitivity x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterCaseSensitivity cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_filterCaseSensitivity" qtc_QSortFilterProxyModel_filterCaseSensitivity :: Ptr (TQSortFilterProxyModel a) -> IO CLong

class QfilterChanged x0 x1 where
 filterChanged :: x0 -> x1 -> IO ()

instance QfilterChanged (QSortFilterProxyModel ()) (()) where
 filterChanged x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterChanged cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_filterChanged" qtc_QSortFilterProxyModel_filterChanged :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QfilterChanged (QSortFilterProxyModelSc a) (()) where
 filterChanged x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterChanged cobj_x0

filterKeyColumn :: QSortFilterProxyModel a -> (()) -> IO (Int)
filterKeyColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterKeyColumn cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_filterKeyColumn" qtc_QSortFilterProxyModel_filterKeyColumn :: Ptr (TQSortFilterProxyModel a) -> IO CInt

filterRegExp :: QSortFilterProxyModel a -> (()) -> IO (QRegExp ())
filterRegExp x0 ()
  = withQRegExpResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterRegExp cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_filterRegExp" qtc_QSortFilterProxyModel_filterRegExp :: Ptr (TQSortFilterProxyModel a) -> IO (Ptr (TQRegExp ()))

filterRole :: QSortFilterProxyModel a -> (()) -> IO (Int)
filterRole x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_filterRole cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_filterRole" qtc_QSortFilterProxyModel_filterRole :: Ptr (TQSortFilterProxyModel a) -> IO CInt

instance Qflags (QSortFilterProxyModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_flags_h" qtc_QSortFilterProxyModel_flags_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QSortFilterProxyModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QSortFilterProxyModel a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_hasChildren cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_hasChildren" qtc_QSortFilterProxyModel_hasChildren :: Ptr (TQSortFilterProxyModel a) -> IO CBool

instance QhasChildren (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_hasChildren1_h" qtc_QSortFilterProxyModel_hasChildren1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_hasChildren1_h cobj_x0 cobj_x1

instance QheaderData (QSortFilterProxyModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_headerData" qtc_QSortFilterProxyModel_headerData :: Ptr (TQSortFilterProxyModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QSortFilterProxyModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_nf (QSortFilterProxyModel ()) ((Int, QtOrientation)) where
 headerData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_nf (QSortFilterProxyModelSc a) ((Int, QtOrientation)) where
 headerData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QSortFilterProxyModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_headerData1_h" qtc_QSortFilterProxyModel_headerData1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QSortFilterProxyModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QSortFilterProxyModel ()) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QSortFilterProxyModelSc a) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance Qindex (QSortFilterProxyModel a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_index cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_index" qtc_QSortFilterProxyModel_index :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QSortFilterProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_index1_h" qtc_QSortFilterProxyModel_index1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QSortFilterProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertColumns (QSortFilterProxyModel a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_insertColumns" qtc_QSortFilterProxyModel_insertColumns :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QSortFilterProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_insertColumns1_h" qtc_QSortFilterProxyModel_insertColumns1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QSortFilterProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRows (QSortFilterProxyModel a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_insertRows" qtc_QSortFilterProxyModel_insertRows :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QSortFilterProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_insertRows1_h" qtc_QSortFilterProxyModel_insertRows1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QSortFilterProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qinvalidate (QSortFilterProxyModel a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_invalidate cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_invalidate" qtc_QSortFilterProxyModel_invalidate :: Ptr (TQSortFilterProxyModel a) -> IO ()

class QinvalidateFilter x0 x1 where
 invalidateFilter :: x0 -> x1 -> IO ()

instance QinvalidateFilter (QSortFilterProxyModel ()) (()) where
 invalidateFilter x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_invalidateFilter cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_invalidateFilter" qtc_QSortFilterProxyModel_invalidateFilter :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QinvalidateFilter (QSortFilterProxyModelSc a) (()) where
 invalidateFilter x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_invalidateFilter cobj_x0

isSortLocaleAware :: QSortFilterProxyModel a -> (()) -> IO (Bool)
isSortLocaleAware x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_isSortLocaleAware cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_isSortLocaleAware" qtc_QSortFilterProxyModel_isSortLocaleAware :: Ptr (TQSortFilterProxyModel a) -> IO CBool

class QlessThan x0 x1 where
 lessThan :: x0 -> x1 -> IO (Bool)

instance QlessThan (QSortFilterProxyModel ()) ((QModelIndex t1, QModelIndex t2)) where
 lessThan x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_lessThan cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_lessThan" qtc_QSortFilterProxyModel_lessThan :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO CBool

instance QlessThan (QSortFilterProxyModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 lessThan x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_lessThan cobj_x0 cobj_x1 cobj_x2

instance QmapFromSource (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 mapFromSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapFromSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_mapFromSource_h" qtc_QSortFilterProxyModel_mapFromSource_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QmapFromSource (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 mapFromSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapFromSource_h cobj_x0 cobj_x1

instance QmapSelectionFromSource (QSortFilterProxyModel ()) ((QItemSelection t1)) where
 mapSelectionFromSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapSelectionFromSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_mapSelectionFromSource_h" qtc_QSortFilterProxyModel_mapSelectionFromSource_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQItemSelection ()))

instance QmapSelectionFromSource (QSortFilterProxyModelSc a) ((QItemSelection t1)) where
 mapSelectionFromSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapSelectionFromSource_h cobj_x0 cobj_x1

instance QmapSelectionToSource (QSortFilterProxyModel ()) ((QItemSelection t1)) where
 mapSelectionToSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapSelectionToSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_mapSelectionToSource_h" qtc_QSortFilterProxyModel_mapSelectionToSource_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQItemSelection ()))

instance QmapSelectionToSource (QSortFilterProxyModelSc a) ((QItemSelection t1)) where
 mapSelectionToSource x0 (x1)
  = withQItemSelectionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapSelectionToSource_h cobj_x0 cobj_x1

instance QmapToSource (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 mapToSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapToSource_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_mapToSource_h" qtc_QSortFilterProxyModel_mapToSource_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance QmapToSource (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 mapToSource x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_mapToSource_h cobj_x0 cobj_x1

class Qmatch x0 x1 where
 match :: x0 -> x1 -> IO ([QModelIndex ()])

instance Qmatch (QSortFilterProxyModel ()) ((QModelIndex t1, Int, QVariant t3)) where
 match x0 (x1, x2, x3)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match cobj_x0 cobj_x1 (toCInt x2) cobj_x3 arr

foreign import ccall "qtc_QSortFilterProxyModel_match" qtc_QSortFilterProxyModel_match :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> Ptr (TQVariant t3) -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qmatch (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, QVariant t3)) where
 match x0 (x1, x2, x3)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match cobj_x0 cobj_x1 (toCInt x2) cobj_x3 arr

instance Qmatch (QSortFilterProxyModel ()) ((QModelIndex t1, Int, QVariant t3, Int)) where
 match x0 (x1, x2, x3, x4)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match1 cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCInt x4) arr

foreign import ccall "qtc_QSortFilterProxyModel_match1" qtc_QSortFilterProxyModel_match1 :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> Ptr (TQVariant t3) -> CInt -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qmatch (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, QVariant t3, Int)) where
 match x0 (x1, x2, x3, x4)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match1 cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCInt x4) arr

instance Qmatch (QSortFilterProxyModel ()) ((QModelIndex t1, Int, QVariant t3, Int, MatchFlags)) where
 match x0 (x1, x2, x3, x4, x5)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match2_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCInt x4) (toCLong $ qFlags_toInt x5) arr

foreign import ccall "qtc_QSortFilterProxyModel_match2_h" qtc_QSortFilterProxyModel_match2_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> Ptr (TQVariant t3) -> CInt -> CLong -> Ptr (Ptr (TQModelIndex ())) -> IO CInt

instance Qmatch (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, QVariant t3, Int, MatchFlags)) where
 match x0 (x1, x2, x3, x4, x5)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_match2_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3 (toCInt x4) (toCLong $ qFlags_toInt x5) arr

instance Qparent (QSortFilterProxyModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_parent1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_parent1_h" qtc_QSortFilterProxyModel_parent1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QSortFilterProxyModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_parent1_h cobj_x0 cobj_x1

instance Qparent (QSortFilterProxyModel a) (()) (IO (QObject ())) where
 parent x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_parent cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_parent" qtc_QSortFilterProxyModel_parent :: Ptr (TQSortFilterProxyModel a) -> IO (Ptr (TQObject ()))

instance QremoveColumns (QSortFilterProxyModel a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_removeColumns" qtc_QSortFilterProxyModel_removeColumns :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QSortFilterProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_removeColumns1_h" qtc_QSortFilterProxyModel_removeColumns1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QSortFilterProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QSortFilterProxyModel a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_removeRows" qtc_QSortFilterProxyModel_removeRows :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QSortFilterProxyModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_removeRows1_h" qtc_QSortFilterProxyModel_removeRows1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QSortFilterProxyModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QrowCount (QSortFilterProxyModel a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_rowCount cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_rowCount" qtc_QSortFilterProxyModel_rowCount :: Ptr (TQSortFilterProxyModel a) -> IO CInt

instance QrowCount (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_rowCount1_h" qtc_QSortFilterProxyModel_rowCount1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QSortFilterProxyModel a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_setData cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_setData" qtc_QSortFilterProxyModel_setData :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QSortFilterProxyModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_setData1_h" qtc_QSortFilterProxyModel_setData1_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QSortFilterProxyModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

setDynamicSortFilter :: QSortFilterProxyModel a -> ((Bool)) -> IO ()
setDynamicSortFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setDynamicSortFilter cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSortFilterProxyModel_setDynamicSortFilter" qtc_QSortFilterProxyModel_setDynamicSortFilter :: Ptr (TQSortFilterProxyModel a) -> CBool -> IO ()

setFilterCaseSensitivity :: QSortFilterProxyModel a -> ((CaseSensitivity)) -> IO ()
setFilterCaseSensitivity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setFilterCaseSensitivity cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_setFilterCaseSensitivity" qtc_QSortFilterProxyModel_setFilterCaseSensitivity :: Ptr (TQSortFilterProxyModel a) -> CLong -> IO ()

setFilterFixedString :: QSortFilterProxyModel a -> ((String)) -> IO ()
setFilterFixedString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_setFilterFixedString cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_setFilterFixedString" qtc_QSortFilterProxyModel_setFilterFixedString :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO ()

setFilterKeyColumn :: QSortFilterProxyModel a -> ((Int)) -> IO ()
setFilterKeyColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setFilterKeyColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_setFilterKeyColumn" qtc_QSortFilterProxyModel_setFilterKeyColumn :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO ()

class QsetFilterRegExp x1 where
 setFilterRegExp :: QSortFilterProxyModel a -> x1 -> IO ()

instance QsetFilterRegExp ((QRegExp t1)) where
 setFilterRegExp x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_setFilterRegExp1 cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_setFilterRegExp1" qtc_QSortFilterProxyModel_setFilterRegExp1 :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQRegExp t1) -> IO ()

instance QsetFilterRegExp ((String)) where
 setFilterRegExp x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_setFilterRegExp cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_setFilterRegExp" qtc_QSortFilterProxyModel_setFilterRegExp :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO ()

setFilterRole :: QSortFilterProxyModel a -> ((Int)) -> IO ()
setFilterRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setFilterRole cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_setFilterRole" qtc_QSortFilterProxyModel_setFilterRole :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO ()

setFilterWildcard :: QSortFilterProxyModel a -> ((String)) -> IO ()
setFilterWildcard x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_setFilterWildcard cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_setFilterWildcard" qtc_QSortFilterProxyModel_setFilterWildcard :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO ()

instance QsetHeaderData (QSortFilterProxyModel a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_setHeaderData cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_setHeaderData" qtc_QSortFilterProxyModel_setHeaderData :: Ptr (TQSortFilterProxyModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QSortFilterProxyModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QSortFilterProxyModel_setHeaderData1_h" qtc_QSortFilterProxyModel_setHeaderData1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QSortFilterProxyModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

setSortCaseSensitivity :: QSortFilterProxyModel a -> ((CaseSensitivity)) -> IO ()
setSortCaseSensitivity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setSortCaseSensitivity cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_setSortCaseSensitivity" qtc_QSortFilterProxyModel_setSortCaseSensitivity :: Ptr (TQSortFilterProxyModel a) -> CLong -> IO ()

setSortLocaleAware :: QSortFilterProxyModel a -> ((Bool)) -> IO ()
setSortLocaleAware x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setSortLocaleAware cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSortFilterProxyModel_setSortLocaleAware" qtc_QSortFilterProxyModel_setSortLocaleAware :: Ptr (TQSortFilterProxyModel a) -> CBool -> IO ()

instance QsetSortRole (QSortFilterProxyModel a) ((Int)) where
 setSortRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_setSortRole cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_setSortRole" qtc_QSortFilterProxyModel_setSortRole :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO ()

instance QsetSourceModel (QSortFilterProxyModel ()) ((QAbstractItemModel t1)) where
 setSourceModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_setSourceModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_setSourceModel_h" qtc_QSortFilterProxyModel_setSourceModel_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetSourceModel (QSortFilterProxyModelSc a) ((QAbstractItemModel t1)) where
 setSourceModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_setSourceModel_h cobj_x0 cobj_x1

instance Qsort (QSortFilterProxyModel a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sort cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_sort" qtc_QSortFilterProxyModel_sort :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO ()

instance Qsort (QSortFilterProxyModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_sort1_h" qtc_QSortFilterProxyModel_sort1_h :: Ptr (TQSortFilterProxyModel a) -> CInt -> CLong -> IO ()

instance Qsort (QSortFilterProxyModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

sortCaseSensitivity :: QSortFilterProxyModel a -> (()) -> IO (CaseSensitivity)
sortCaseSensitivity x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sortCaseSensitivity cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_sortCaseSensitivity" qtc_QSortFilterProxyModel_sortCaseSensitivity :: Ptr (TQSortFilterProxyModel a) -> IO CLong

instance QsortRole (QSortFilterProxyModel a) (()) where
 sortRole x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sortRole cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_sortRole" qtc_QSortFilterProxyModel_sortRole :: Ptr (TQSortFilterProxyModel a) -> IO CInt

instance Qqspan (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_span_h" qtc_QSortFilterProxyModel_span_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_span_h cobj_x0 cobj_x1

instance Qspan (QSortFilterProxyModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSortFilterProxyModel_span_qth_h" qtc_QSortFilterProxyModel_span_qth_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QSortFilterProxyModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance QsupportedDropActions (QSortFilterProxyModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_supportedDropActions_h" qtc_QSortFilterProxyModel_supportedDropActions_h :: Ptr (TQSortFilterProxyModel a) -> IO CLong

instance QsupportedDropActions (QSortFilterProxyModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_supportedDropActions_h cobj_x0

qSortFilterProxyModel_delete :: QSortFilterProxyModel a -> IO ()
qSortFilterProxyModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_delete cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_delete" qtc_QSortFilterProxyModel_delete :: Ptr (TQSortFilterProxyModel a) -> IO ()

qSortFilterProxyModel_deleteLater :: QSortFilterProxyModel a -> IO ()
qSortFilterProxyModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_deleteLater cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_deleteLater" qtc_QSortFilterProxyModel_deleteLater :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance Qrevert (QSortFilterProxyModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_revert_h cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_revert_h" qtc_QSortFilterProxyModel_revert_h :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance Qrevert (QSortFilterProxyModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_revert_h cobj_x0

instance Qsubmit (QSortFilterProxyModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_submit_h cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_submit_h" qtc_QSortFilterProxyModel_submit_h :: Ptr (TQSortFilterProxyModel a) -> IO CBool

instance Qsubmit (QSortFilterProxyModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_submit_h cobj_x0

instance QbeginInsertColumns (QSortFilterProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_beginInsertColumns" qtc_QSortFilterProxyModel_beginInsertColumns :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QSortFilterProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_beginInsertRows" qtc_QSortFilterProxyModel_beginInsertRows :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QSortFilterProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_beginRemoveColumns" qtc_QSortFilterProxyModel_beginRemoveColumns :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QSortFilterProxyModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_beginRemoveRows" qtc_QSortFilterProxyModel_beginRemoveRows :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QSortFilterProxyModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QchangePersistentIndex (QSortFilterProxyModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_changePersistentIndex" qtc_QSortFilterProxyModel_changePersistentIndex :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QSortFilterProxyModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcreateIndex (QSortFilterProxyModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSortFilterProxyModel_createIndex" qtc_QSortFilterProxyModel_createIndex :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QSortFilterProxyModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QSortFilterProxyModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QSortFilterProxyModel_createIndex2" qtc_QSortFilterProxyModel_createIndex2 :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QSortFilterProxyModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QSortFilterProxyModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSortFilterProxyModel_createIndex3" qtc_QSortFilterProxyModel_createIndex3 :: Ptr (TQSortFilterProxyModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QSortFilterProxyModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSortFilterProxyModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QendInsertColumns (QSortFilterProxyModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_endInsertColumns" qtc_QSortFilterProxyModel_endInsertColumns :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QendInsertColumns (QSortFilterProxyModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endInsertColumns cobj_x0

instance QendInsertRows (QSortFilterProxyModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endInsertRows cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_endInsertRows" qtc_QSortFilterProxyModel_endInsertRows :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QendInsertRows (QSortFilterProxyModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endInsertRows cobj_x0

instance QendRemoveColumns (QSortFilterProxyModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_endRemoveColumns" qtc_QSortFilterProxyModel_endRemoveColumns :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QendRemoveColumns (QSortFilterProxyModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QSortFilterProxyModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_endRemoveRows" qtc_QSortFilterProxyModel_endRemoveRows :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance QendRemoveRows (QSortFilterProxyModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_endRemoveRows cobj_x0

instance QinsertColumn (QSortFilterProxyModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_insertColumn" qtc_QSortFilterProxyModel_insertColumn :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO CBool

instance QinsertColumn (QSortFilterProxyModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QSortFilterProxyModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_insertColumn1" qtc_QSortFilterProxyModel_insertColumn1 :: Ptr (TQSortFilterProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QSortFilterProxyModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRow (QSortFilterProxyModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSortFilterProxyModel_insertRow" qtc_QSortFilterProxyModel_insertRow :: Ptr (TQSortFilterProxyModel a) -> CInt -> IO CBool

instance QinsertRow (QSortFilterProxyModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QSortFilterProxyModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_insertRow1" qtc_QSortFilterProxyModel_insertRow1 :: Ptr (TQSortFilterProxyModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QSortFilterProxyModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance Qreset (QSortFilterProxyModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_reset cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_reset" qtc_QSortFilterProxyModel_reset :: Ptr (TQSortFilterProxyModel a) -> IO ()

instance Qreset (QSortFilterProxyModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_reset cobj_x0

instance QchildEvent (QSortFilterProxyModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_childEvent" qtc_QSortFilterProxyModel_childEvent :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSortFilterProxyModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSortFilterProxyModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_connectNotify" qtc_QSortFilterProxyModel_connectNotify :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO ()

instance QconnectNotify (QSortFilterProxyModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSortFilterProxyModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_customEvent" qtc_QSortFilterProxyModel_customEvent :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSortFilterProxyModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSortFilterProxyModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_disconnectNotify" qtc_QSortFilterProxyModel_disconnectNotify :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO ()

instance QdisconnectNotify (QSortFilterProxyModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QSortFilterProxyModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_event_h" qtc_QSortFilterProxyModel_event_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSortFilterProxyModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QSortFilterProxyModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSortFilterProxyModel_eventFilter_h" qtc_QSortFilterProxyModel_eventFilter_h :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSortFilterProxyModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSortFilterProxyModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSortFilterProxyModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSortFilterProxyModel_receivers" qtc_QSortFilterProxyModel_receivers :: Ptr (TQSortFilterProxyModel a) -> CWString -> IO CInt

instance Qreceivers (QSortFilterProxyModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSortFilterProxyModel_receivers cobj_x0 cstr_x1

instance Qsender (QSortFilterProxyModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sender cobj_x0

foreign import ccall "qtc_QSortFilterProxyModel_sender" qtc_QSortFilterProxyModel_sender :: Ptr (TQSortFilterProxyModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QSortFilterProxyModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSortFilterProxyModel_sender cobj_x0

instance QtimerEvent (QSortFilterProxyModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSortFilterProxyModel_timerEvent" qtc_QSortFilterProxyModel_timerEvent :: Ptr (TQSortFilterProxyModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSortFilterProxyModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSortFilterProxyModel_timerEvent cobj_x0 cobj_x1

