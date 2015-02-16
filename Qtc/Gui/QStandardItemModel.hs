{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QStandardItemModel.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QStandardItemModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStandardItemModel (
  QqStandardItemModel(..)
  ,qStandardItemModel_delete
  ,qStandardItemModel_deleteLater
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

instance QuserMethod (QStandardItemModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStandardItemModel_userMethod" qtc_QStandardItemModel_userMethod :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance QuserMethod (QStandardItemModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItemModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStandardItemModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStandardItemModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStandardItemModel_userMethodVariant" qtc_QStandardItemModel_userMethodVariant :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStandardItemModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStandardItemModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqStandardItemModel x1 where
  qStandardItemModel :: x1 -> IO (QStandardItemModel ())

instance QqStandardItemModel (()) where
 qStandardItemModel ()
  = withQStandardItemModelResult $
    qtc_QStandardItemModel

foreign import ccall "qtc_QStandardItemModel" qtc_QStandardItemModel :: IO (Ptr (TQStandardItemModel ()))

instance QqStandardItemModel ((QObject t1)) where
 qStandardItemModel (x1)
  = withQStandardItemModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel1 cobj_x1

foreign import ccall "qtc_QStandardItemModel1" qtc_QStandardItemModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQStandardItemModel ()))

instance QqStandardItemModel ((Int, Int)) where
 qStandardItemModel (x1, x2)
  = withQStandardItemModelResult $
    qtc_QStandardItemModel2 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel2" qtc_QStandardItemModel2 :: CInt -> CInt -> IO (Ptr (TQStandardItemModel ()))

instance QqStandardItemModel ((Int, Int, QObject t3)) where
 qStandardItemModel (x1, x2, x3)
  = withQStandardItemModelResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel3 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel3" qtc_QStandardItemModel3 :: CInt -> CInt -> Ptr (TQObject t3) -> IO (Ptr (TQStandardItemModel ()))

instance QappendRow (QStandardItemModel a) ((QStandardItem t1)) where
 appendRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_appendRow cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_appendRow" qtc_QStandardItemModel_appendRow :: Ptr (TQStandardItemModel a) -> Ptr (TQStandardItem t1) -> IO ()

instance Qclear (QStandardItemModel a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_clear cobj_x0

foreign import ccall "qtc_QStandardItemModel_clear" qtc_QStandardItemModel_clear :: Ptr (TQStandardItemModel a) -> IO ()

instance QcolumnCount (QStandardItemModel a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_columnCount cobj_x0

foreign import ccall "qtc_QStandardItemModel_columnCount" qtc_QStandardItemModel_columnCount :: Ptr (TQStandardItemModel a) -> IO CInt

instance QcolumnCount (QStandardItemModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_columnCount1_h" qtc_QStandardItemModel_columnCount1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QStandardItemModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_columnCount1_h cobj_x0 cobj_x1

instance Qqdata (QStandardItemModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_data" qtc_QStandardItemModel_data :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QStandardItemModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QStandardItemModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data cobj_x0 cobj_x1

instance Qqdata_nf (QStandardItemModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data cobj_x0 cobj_x1

instance Qqdata (QStandardItemModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_data1_h" qtc_QStandardItemModel_data1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QStandardItemModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QStandardItemModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QStandardItemModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QfindItems (QStandardItemModel a) ((String)) (IO ([QStandardItem ()])) where
 findItems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_findItems cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QStandardItemModel_findItems" qtc_QStandardItemModel_findItems :: Ptr (TQStandardItemModel a) -> CWString -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance QfindItems (QStandardItemModel a) ((String, MatchFlags)) (IO ([QStandardItem ()])) where
 findItems x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_findItems1 cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QStandardItemModel_findItems1" qtc_QStandardItemModel_findItems1 :: Ptr (TQStandardItemModel a) -> CWString -> CLong -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance QfindItems (QStandardItemModel a) ((String, MatchFlags, Int)) (IO ([QStandardItem ()])) where
 findItems x0 (x1, x2, x3)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_findItems2 cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2) (toCInt x3) arr

foreign import ccall "qtc_QStandardItemModel_findItems2" qtc_QStandardItemModel_findItems2 :: Ptr (TQStandardItemModel a) -> CWString -> CLong -> CInt -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance Qflags (QStandardItemModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_flags_h" qtc_QStandardItemModel_flags_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QStandardItemModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QStandardItemModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QStandardItemModel_hasChildren_h" qtc_QStandardItemModel_hasChildren_h :: Ptr (TQStandardItemModel a) -> IO CBool

instance QhasChildren (QStandardItemModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_hasChildren_h cobj_x0

instance QhasChildren (QStandardItemModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_hasChildren1_h" qtc_QStandardItemModel_hasChildren1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QStandardItemModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_hasChildren1_h cobj_x0 cobj_x1

instance QheaderData (QStandardItemModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QStandardItemModel_headerData_h" qtc_QStandardItemModel_headerData_h :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QStandardItemModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_nf (QStandardItemModel ()) ((Int, QtOrientation)) where
 headerData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData_nf (QStandardItemModelSc a) ((Int, QtOrientation)) where
 headerData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QStandardItemModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_headerData1_h" qtc_QStandardItemModel_headerData1_h :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QStandardItemModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QStandardItemModel ()) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QheaderData_nf (QStandardItemModelSc a) ((Int, QtOrientation, Int)) where
 headerData_nf x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance QhorizontalHeaderItem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 horizontalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_horizontalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_horizontalHeaderItem" qtc_QStandardItemModel_horizontalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance Qindex (QStandardItemModel a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_index cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_index" qtc_QStandardItemModel_index :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_index1_h" qtc_QStandardItemModel_index1_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_index1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QindexFromItem (QStandardItemModel a) ((QStandardItem t1)) where
 indexFromItem x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_indexFromItem cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_indexFromItem" qtc_QStandardItemModel_indexFromItem :: Ptr (TQStandardItemModel a) -> Ptr (TQStandardItem t1) -> IO (Ptr (TQModelIndex ()))

instance QinsertColumn (QStandardItemModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_insertColumn" qtc_QStandardItemModel_insertColumn :: Ptr (TQStandardItemModel a) -> CInt -> IO CBool

instance QinsertColumn (QStandardItemModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QStandardItemModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_insertColumn1" qtc_QStandardItemModel_insertColumn1 :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QStandardItemModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QStandardItemModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_insertColumns_h" qtc_QStandardItemModel_insertColumns_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QStandardItemModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_insertColumns1_h" qtc_QStandardItemModel_insertColumns1_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QStandardItemModel ()) ((Int, QStandardItem t2)) (IO ()) where
 insertRow x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_insertRow1" qtc_QStandardItemModel_insertRow1 :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QinsertRow (QStandardItemModelSc a) ((Int, QStandardItem t2)) (IO ()) where
 insertRow x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRow (QStandardItemModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_insertRow" qtc_QStandardItemModel_insertRow :: Ptr (TQStandardItemModel a) -> CInt -> IO CBool

instance QinsertRow (QStandardItemModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QStandardItemModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertRow2 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_insertRow2" qtc_QStandardItemModel_insertRow2 :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QStandardItemModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_insertRow2 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QStandardItemModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_insertRows_h" qtc_QStandardItemModel_insertRows_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QStandardItemModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_insertRows1_h" qtc_QStandardItemModel_insertRows1_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinvisibleRootItem (QStandardItemModel a) (()) (IO (QStandardItem ())) where
 invisibleRootItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_invisibleRootItem cobj_x0

foreign import ccall "qtc_QStandardItemModel_invisibleRootItem" qtc_QStandardItemModel_invisibleRootItem :: Ptr (TQStandardItemModel a) -> IO (Ptr (TQStandardItem ()))

instance Qitem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 item x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_item cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_item" qtc_QStandardItemModel_item :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance Qitem (QStandardItemModel a) ((Int, Int)) (IO (QStandardItem ())) where
 item x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_item1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_item1" qtc_QStandardItemModel_item1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO (Ptr (TQStandardItem ()))

instance QitemFromIndex (QStandardItemModel a) ((QModelIndex t1)) (IO (QStandardItem ())) where
 itemFromIndex x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_itemFromIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_itemFromIndex" qtc_QStandardItemModel_itemFromIndex :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQStandardItem ()))

instance QitemPrototype (QStandardItemModel a) (()) (IO (QStandardItem ())) where
 itemPrototype x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_itemPrototype cobj_x0

foreign import ccall "qtc_QStandardItemModel_itemPrototype" qtc_QStandardItemModel_itemPrototype :: Ptr (TQStandardItemModel a) -> IO (Ptr (TQStandardItem ()))

instance Qparent (QStandardItemModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_parent1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_parent1_h" qtc_QStandardItemModel_parent1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QStandardItemModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_parent1_h cobj_x0 cobj_x1

instance Qparent (QStandardItemModel a) (()) (IO (QObject ())) where
 parent x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_parent cobj_x0

foreign import ccall "qtc_QStandardItemModel_parent" qtc_QStandardItemModel_parent :: Ptr (TQStandardItemModel a) -> IO (Ptr (TQObject ()))

instance QremoveColumns (QStandardItemModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_removeColumns_h" qtc_QStandardItemModel_removeColumns_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QStandardItemModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_removeColumns1_h" qtc_QStandardItemModel_removeColumns1_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QStandardItemModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_removeRows_h" qtc_QStandardItemModel_removeRows_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QStandardItemModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QStandardItemModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_removeRows1_h" qtc_QStandardItemModel_removeRows1_h :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QStandardItemModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QrowCount (QStandardItemModel a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_rowCount cobj_x0

foreign import ccall "qtc_QStandardItemModel_rowCount" qtc_QStandardItemModel_rowCount :: Ptr (TQStandardItemModel a) -> IO CInt

instance QrowCount (QStandardItemModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_rowCount1_h" qtc_QStandardItemModel_rowCount1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QStandardItemModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_rowCount1_h cobj_x0 cobj_x1

instance QsetColumnCount (QStandardItemModel a) ((Int)) where
 setColumnCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_setColumnCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_setColumnCount" qtc_QStandardItemModel_setColumnCount :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance QsetData (QStandardItemModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStandardItemModel_setData_h" qtc_QStandardItemModel_setData_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QStandardItemModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QStandardItemModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_setData1_h" qtc_QStandardItemModel_setData1_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QStandardItemModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetHeaderData (QStandardItemModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_setHeaderData_h" qtc_QStandardItemModel_setHeaderData_h :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QStandardItemModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QStandardItemModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QStandardItemModel_setHeaderData1_h" qtc_QStandardItemModel_setHeaderData1_h :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QStandardItemModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance QsetHorizontalHeaderItem (QStandardItemModel a) ((Int, QStandardItem t2)) where
 setHorizontalHeaderItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setHorizontalHeaderItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_setHorizontalHeaderItem" qtc_QStandardItemModel_setHorizontalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QsetHorizontalHeaderLabels (QStandardItemModel a) (([String])) where
 setHorizontalHeaderLabels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QStandardItemModel_setHorizontalHeaderLabels cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QStandardItemModel_setHorizontalHeaderLabels" qtc_QStandardItemModel_setHorizontalHeaderLabels :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetItem (QStandardItemModel a) ((Int, Int, QStandardItem t3)) where
 setItem x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_setItem1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_setItem1" qtc_QStandardItemModel_setItem1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQStandardItem t3) -> IO ()

instance QsetItem (QStandardItemModel a) ((Int, QStandardItem t2)) where
 setItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_setItem" qtc_QStandardItemModel_setItem :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QsetItemPrototype (QStandardItemModel a) ((QStandardItem t1)) where
 setItemPrototype x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_setItemPrototype cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_setItemPrototype" qtc_QStandardItemModel_setItemPrototype :: Ptr (TQStandardItemModel a) -> Ptr (TQStandardItem t1) -> IO ()

instance QsetRowCount (QStandardItemModel a) ((Int)) where
 setRowCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_setRowCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_setRowCount" qtc_QStandardItemModel_setRowCount :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance QsetSortRole (QStandardItemModel a) ((Int)) where
 setSortRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_setSortRole cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_setSortRole" qtc_QStandardItemModel_setSortRole :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance QsetVerticalHeaderItem (QStandardItemModel a) ((Int, QStandardItem t2)) where
 setVerticalHeaderItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_setVerticalHeaderItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItemModel_setVerticalHeaderItem" qtc_QStandardItemModel_setVerticalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QsetVerticalHeaderLabels (QStandardItemModel a) (([String])) where
 setVerticalHeaderLabels x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QStandardItemModel_setVerticalHeaderLabels cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QStandardItemModel_setVerticalHeaderLabels" qtc_QStandardItemModel_setVerticalHeaderLabels :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance Qsort (QStandardItemModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_sort_h" qtc_QStandardItemModel_sort_h :: Ptr (TQStandardItemModel a) -> CInt -> IO ()

instance Qsort (QStandardItemModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QStandardItemModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QStandardItemModel_sort1_h" qtc_QStandardItemModel_sort1_h :: Ptr (TQStandardItemModel a) -> CInt -> CLong -> IO ()

instance Qsort (QStandardItemModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QsortRole (QStandardItemModel a) (()) where
 sortRole x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sortRole cobj_x0

foreign import ccall "qtc_QStandardItemModel_sortRole" qtc_QStandardItemModel_sortRole :: Ptr (TQStandardItemModel a) -> IO CInt

instance QsupportedDropActions (QStandardItemModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QStandardItemModel_supportedDropActions_h" qtc_QStandardItemModel_supportedDropActions_h :: Ptr (TQStandardItemModel a) -> IO CLong

instance QsupportedDropActions (QStandardItemModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_supportedDropActions_h cobj_x0

instance QtakeColumn (QStandardItemModel a) ((Int)) where
 takeColumn x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeColumn cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QStandardItemModel_takeColumn" qtc_QStandardItemModel_takeColumn :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance QtakeHorizontalHeaderItem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 takeHorizontalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeHorizontalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_takeHorizontalHeaderItem" qtc_QStandardItemModel_takeHorizontalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance QtakeItem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 takeItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_takeItem" qtc_QStandardItemModel_takeItem :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance QtakeItem (QStandardItemModel a) ((Int, Int)) (IO (QStandardItem ())) where
 takeItem x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeItem1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_takeItem1" qtc_QStandardItemModel_takeItem1 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO (Ptr (TQStandardItem ()))

instance QtakeRow (QStandardItemModel a) ((Int)) where
 takeRow x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeRow cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QStandardItemModel_takeRow" qtc_QStandardItemModel_takeRow :: Ptr (TQStandardItemModel a) -> CInt -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance QtakeVerticalHeaderItem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 takeVerticalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_takeVerticalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_takeVerticalHeaderItem" qtc_QStandardItemModel_takeVerticalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance QverticalHeaderItem (QStandardItemModel a) ((Int)) (IO (QStandardItem ())) where
 verticalHeaderItem x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_verticalHeaderItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItemModel_verticalHeaderItem" qtc_QStandardItemModel_verticalHeaderItem :: Ptr (TQStandardItemModel a) -> CInt -> IO (Ptr (TQStandardItem ()))

qStandardItemModel_delete :: QStandardItemModel a -> IO ()
qStandardItemModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_delete cobj_x0

foreign import ccall "qtc_QStandardItemModel_delete" qtc_QStandardItemModel_delete :: Ptr (TQStandardItemModel a) -> IO ()

qStandardItemModel_deleteLater :: QStandardItemModel a -> IO ()
qStandardItemModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_deleteLater cobj_x0

foreign import ccall "qtc_QStandardItemModel_deleteLater" qtc_QStandardItemModel_deleteLater :: Ptr (TQStandardItemModel a) -> IO ()

instance QbeginInsertColumns (QStandardItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_beginInsertColumns" qtc_QStandardItemModel_beginInsertColumns :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QStandardItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QStandardItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_beginInsertRows" qtc_QStandardItemModel_beginInsertRows :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QStandardItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QStandardItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_beginRemoveColumns" qtc_QStandardItemModel_beginRemoveColumns :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QStandardItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QStandardItemModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QStandardItemModel_beginRemoveRows" qtc_QStandardItemModel_beginRemoveRows :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QStandardItemModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QStandardItemModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_buddy_h" qtc_QStandardItemModel_buddy_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QStandardItemModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QStandardItemModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_canFetchMore_h" qtc_QStandardItemModel_canFetchMore_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QStandardItemModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QStandardItemModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStandardItemModel_changePersistentIndex" qtc_QStandardItemModel_changePersistentIndex :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QStandardItemModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcreateIndex (QStandardItemModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItemModel_createIndex" qtc_QStandardItemModel_createIndex :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QStandardItemModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QStandardItemModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QStandardItemModel_createIndex2" qtc_QStandardItemModel_createIndex2 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QStandardItemModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QStandardItemModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItemModel_createIndex3" qtc_QStandardItemModel_createIndex3 :: Ptr (TQStandardItemModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QStandardItemModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItemModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QdropMimeData (QStandardItemModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStandardItemModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QStandardItemModel_dropMimeData_h" qtc_QStandardItemModel_dropMimeData_h :: Ptr (TQStandardItemModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QStandardItemModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QStandardItemModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

instance QendInsertColumns (QStandardItemModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QStandardItemModel_endInsertColumns" qtc_QStandardItemModel_endInsertColumns :: Ptr (TQStandardItemModel a) -> IO ()

instance QendInsertColumns (QStandardItemModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endInsertColumns cobj_x0

instance QendInsertRows (QStandardItemModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endInsertRows cobj_x0

foreign import ccall "qtc_QStandardItemModel_endInsertRows" qtc_QStandardItemModel_endInsertRows :: Ptr (TQStandardItemModel a) -> IO ()

instance QendInsertRows (QStandardItemModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endInsertRows cobj_x0

instance QendRemoveColumns (QStandardItemModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QStandardItemModel_endRemoveColumns" qtc_QStandardItemModel_endRemoveColumns :: Ptr (TQStandardItemModel a) -> IO ()

instance QendRemoveColumns (QStandardItemModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QStandardItemModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QStandardItemModel_endRemoveRows" qtc_QStandardItemModel_endRemoveRows :: Ptr (TQStandardItemModel a) -> IO ()

instance QendRemoveRows (QStandardItemModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_endRemoveRows cobj_x0

instance QfetchMore (QStandardItemModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_fetchMore_h" qtc_QStandardItemModel_fetchMore_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QStandardItemModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_fetchMore_h cobj_x0 cobj_x1

instance Qreset (QStandardItemModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_reset cobj_x0

foreign import ccall "qtc_QStandardItemModel_reset" qtc_QStandardItemModel_reset :: Ptr (TQStandardItemModel a) -> IO ()

instance Qreset (QStandardItemModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_reset cobj_x0

instance Qrevert (QStandardItemModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_revert_h cobj_x0

foreign import ccall "qtc_QStandardItemModel_revert_h" qtc_QStandardItemModel_revert_h :: Ptr (TQStandardItemModel a) -> IO ()

instance Qrevert (QStandardItemModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_revert_h cobj_x0

instance Qqspan (QStandardItemModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_span_h" qtc_QStandardItemModel_span_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QStandardItemModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_h cobj_x0 cobj_x1

instance Qspan (QStandardItemModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStandardItemModel_span_qth_h" qtc_QStandardItemModel_span_qth_h :: Ptr (TQStandardItemModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QStandardItemModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit (QStandardItemModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_submit_h cobj_x0

foreign import ccall "qtc_QStandardItemModel_submit_h" qtc_QStandardItemModel_submit_h :: Ptr (TQStandardItemModel a) -> IO CBool

instance Qsubmit (QStandardItemModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_submit_h cobj_x0

instance QchildEvent (QStandardItemModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_childEvent" qtc_QStandardItemModel_childEvent :: Ptr (TQStandardItemModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QStandardItemModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QStandardItemModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItemModel_connectNotify" qtc_QStandardItemModel_connectNotify :: Ptr (TQStandardItemModel a) -> CWString -> IO ()

instance QconnectNotify (QStandardItemModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QStandardItemModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_customEvent" qtc_QStandardItemModel_customEvent :: Ptr (TQStandardItemModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QStandardItemModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QStandardItemModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItemModel_disconnectNotify" qtc_QStandardItemModel_disconnectNotify :: Ptr (TQStandardItemModel a) -> CWString -> IO ()

instance QdisconnectNotify (QStandardItemModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QStandardItemModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_event_h" qtc_QStandardItemModel_event_h :: Ptr (TQStandardItemModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QStandardItemModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QStandardItemModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStandardItemModel_eventFilter_h" qtc_QStandardItemModel_eventFilter_h :: Ptr (TQStandardItemModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QStandardItemModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItemModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QStandardItemModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItemModel_receivers" qtc_QStandardItemModel_receivers :: Ptr (TQStandardItemModel a) -> CWString -> IO CInt

instance Qreceivers (QStandardItemModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItemModel_receivers cobj_x0 cstr_x1

instance Qsender (QStandardItemModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sender cobj_x0

foreign import ccall "qtc_QStandardItemModel_sender" qtc_QStandardItemModel_sender :: Ptr (TQStandardItemModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QStandardItemModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItemModel_sender cobj_x0

instance QtimerEvent (QStandardItemModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItemModel_timerEvent" qtc_QStandardItemModel_timerEvent :: Ptr (TQStandardItemModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QStandardItemModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItemModel_timerEvent cobj_x0 cobj_x1

