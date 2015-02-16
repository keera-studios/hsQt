{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDirModel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDirModel (
  QqDirModel(..)
  ,fileIcon
  ,fileInfo
  ,lazyChildCount
  ,setLazyChildCount
  ,qDirModel_delete
  ,qDirModel_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QDir
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDirModel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDirModel_userMethod" qtc_QDirModel_userMethod :: Ptr (TQDirModel a) -> CInt -> IO ()

instance QuserMethod (QDirModelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDirModel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDirModel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDirModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDirModel_userMethodVariant" qtc_QDirModel_userMethodVariant :: Ptr (TQDirModel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDirModelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDirModel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDirModel x1 where
  qDirModel :: x1 -> IO (QDirModel ())

instance QqDirModel (()) where
 qDirModel ()
  = withQDirModelResult $
    qtc_QDirModel

foreign import ccall "qtc_QDirModel" qtc_QDirModel :: IO (Ptr (TQDirModel ()))

instance QqDirModel ((QObject t1)) where
 qDirModel (x1)
  = withQDirModelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel1 cobj_x1

foreign import ccall "qtc_QDirModel1" qtc_QDirModel1 :: Ptr (TQObject t1) -> IO (Ptr (TQDirModel ()))

instance QqDirModel (([String], Filters, SortFlags)) where
 qDirModel (x1, x2, x3)
  = withQDirModelResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDirModel2 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QDirModel2" qtc_QDirModel2 :: CInt -> Ptr (Ptr CWchar) -> CLong -> CLong -> IO (Ptr (TQDirModel ()))

instance QqDirModel (([String], Filters, SortFlags, QObject t4)) where
 qDirModel (x1, x2, x3, x4)
  = withQDirModelResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QDirModel3 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) (toCLong $ qFlags_toInt x3) cobj_x4

foreign import ccall "qtc_QDirModel3" qtc_QDirModel3 :: CInt -> Ptr (Ptr CWchar) -> CLong -> CLong -> Ptr (TQObject t4) -> IO (Ptr (TQDirModel ()))

instance QcolumnCount (QDirModel ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_columnCount_h cobj_x0

foreign import ccall "qtc_QDirModel_columnCount_h" qtc_QDirModel_columnCount_h :: Ptr (TQDirModel a) -> IO CInt

instance QcolumnCount (QDirModelSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_columnCount_h cobj_x0

instance QcolumnCount (QDirModel ()) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_columnCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_columnCount1_h" qtc_QDirModel_columnCount1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QcolumnCount (QDirModelSc a) ((QModelIndex t1)) where
 columnCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_columnCount1_h cobj_x0 cobj_x1

instance Qqdata (QDirModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_data_h" qtc_QDirModel_data_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQVariant ()))

instance Qqdata (QDirModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QDirModel ()) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data_h cobj_x0 cobj_x1

instance Qqdata_nf (QDirModelSc a) ((QModelIndex t1)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data_h cobj_x0 cobj_x1

instance Qqdata (QDirModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QDirModel_data1_h" qtc_QDirModel_data1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QDirModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QDirModel ()) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance Qqdata_nf (QDirModelSc a) ((QModelIndex t1, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_data1_h cobj_x0 cobj_x1 (toCInt x2)

instance QdropMimeData (QDirModel ()) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QDirModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

foreign import ccall "qtc_QDirModel_dropMimeData_h" qtc_QDirModel_dropMimeData_h :: Ptr (TQDirModel a) -> Ptr (TQMimeData t1) -> CLong -> CInt -> CInt -> Ptr (TQModelIndex t5) -> IO CBool

instance QdropMimeData (QDirModelSc a) ((QMimeData t1, DropAction, Int, Int, QModelIndex t5)) where
 dropMimeData x0 (x1, x2, x3, x4, x5)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QDirModel_dropMimeData_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) (toCInt x3) (toCInt x4) cobj_x5

fileIcon :: QDirModel a -> ((QModelIndex t1)) -> IO (QIcon ())
fileIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fileIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_fileIcon" qtc_QDirModel_fileIcon :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQIcon ()))

fileInfo :: QDirModel a -> ((QModelIndex t1)) -> IO (QFileInfo ())
fileInfo x0 (x1)
  = withQFileInfoResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fileInfo cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_fileInfo" qtc_QDirModel_fileInfo :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQFileInfo ()))

instance QfileName (QDirModel a) ((QModelIndex t1)) where
 fileName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fileName cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_fileName" qtc_QDirModel_fileName :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQString ()))

instance QfilePath (QDirModel a) ((QModelIndex t1)) where
 filePath x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_filePath cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_filePath" qtc_QDirModel_filePath :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQString ()))

instance Qqfilter (QDirModel a) (()) where
 qfilter x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_filter cobj_x0

foreign import ccall "qtc_QDirModel_filter" qtc_QDirModel_filter :: Ptr (TQDirModel a) -> IO CLong

instance Qflags (QDirModel ()) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_flags_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_flags_h" qtc_QDirModel_flags_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CLong

instance Qflags (QDirModelSc a) ((QModelIndex t1)) (IO (ItemFlags)) where
 flags x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_flags_h cobj_x0 cobj_x1

instance QhasChildren (QDirModel ()) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_hasChildren_h cobj_x0

foreign import ccall "qtc_QDirModel_hasChildren_h" qtc_QDirModel_hasChildren_h :: Ptr (TQDirModel a) -> IO CBool

instance QhasChildren (QDirModelSc a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_hasChildren_h cobj_x0

instance QhasChildren (QDirModel ()) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_hasChildren1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_hasChildren1_h" qtc_QDirModel_hasChildren1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QhasChildren (QDirModelSc a) ((QModelIndex t1)) where
 hasChildren x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_hasChildren1_h cobj_x0 cobj_x1

instance QheaderData (QDirModel ()) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDirModel_headerData_h" qtc_QDirModel_headerData_h :: Ptr (TQDirModel a) -> CInt -> CLong -> IO (Ptr (TQVariant ()))

instance QheaderData (QDirModelSc a) ((Int, QtOrientation)) where
 headerData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance QheaderData (QDirModel ()) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_headerData1_h" qtc_QDirModel_headerData1_h :: Ptr (TQDirModel a) -> CInt -> CLong -> CInt -> IO (Ptr (TQVariant ()))

instance QheaderData (QDirModelSc a) ((Int, QtOrientation, Int)) where
 headerData x0 (x1, x2, x3)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_headerData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

instance Qindex (QDirModel ()) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_index2_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_index2_h" qtc_QDirModel_index2_h :: Ptr (TQDirModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance Qindex (QDirModelSc a) ((Int, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_index2_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qindex (QDirModel ()) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_index3_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_index3_h" qtc_QDirModel_index3_h :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO (Ptr (TQModelIndex ()))

instance Qindex (QDirModelSc a) ((Int, Int, QModelIndex t3)) (IO (QModelIndex ())) where
 index x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_index3_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qindex (QDirModel a) ((String)) (IO (QModelIndex ())) where
 index x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_index cobj_x0 cstr_x1

foreign import ccall "qtc_QDirModel_index" qtc_QDirModel_index :: Ptr (TQDirModel a) -> CWString -> IO (Ptr (TQModelIndex ()))

instance Qindex (QDirModel a) ((String, Int)) (IO (QModelIndex ())) where
 index x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_index1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QDirModel_index1" qtc_QDirModel_index1 :: Ptr (TQDirModel a) -> CWString -> CInt -> IO (Ptr (TQModelIndex ()))

instance QisDir (QDirModel a) ((QModelIndex t1)) where
 isDir x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_isDir cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_isDir" qtc_QDirModel_isDir :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisReadOnly (QDirModel a) (()) where
 isReadOnly x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_isReadOnly cobj_x0

foreign import ccall "qtc_QDirModel_isReadOnly" qtc_QDirModel_isReadOnly :: Ptr (TQDirModel a) -> IO CBool

lazyChildCount :: QDirModel a -> (()) -> IO (Bool)
lazyChildCount x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_lazyChildCount cobj_x0

foreign import ccall "qtc_QDirModel_lazyChildCount" qtc_QDirModel_lazyChildCount :: Ptr (TQDirModel a) -> IO CBool

instance Qmkdir (QDirModel a) ((QModelIndex t1, String)) (IO (QModelIndex ())) where
 mkdir x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDirModel_mkdir cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QDirModel_mkdir" qtc_QDirModel_mkdir :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CWString -> IO (Ptr (TQModelIndex ()))

instance QnameFilters (QDirModel a) (()) where
 nameFilters x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_nameFilters cobj_x0 arr

foreign import ccall "qtc_QDirModel_nameFilters" qtc_QDirModel_nameFilters :: Ptr (TQDirModel a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qparent (QDirModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_parent1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_parent1_h" qtc_QDirModel_parent1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qparent (QDirModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 parent x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_parent1_h cobj_x0 cobj_x1

instance Qparent (QDirModel a) (()) (IO (QObject ())) where
 parent x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_parent cobj_x0

foreign import ccall "qtc_QDirModel_parent" qtc_QDirModel_parent :: Ptr (TQDirModel a) -> IO (Ptr (TQObject ()))

instance Qrefresh (QDirModel a) (()) where
 refresh x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_refresh cobj_x0

foreign import ccall "qtc_QDirModel_refresh" qtc_QDirModel_refresh :: Ptr (TQDirModel a) -> IO ()

instance Qrefresh (QDirModel a) ((QModelIndex t1)) where
 refresh x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_refresh1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_refresh1" qtc_QDirModel_refresh1 :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance Qremove (QDirModel a) ((QModelIndex t1)) (IO (Bool)) where
 remove x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_remove cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_remove" qtc_QDirModel_remove :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QresolveSymlinks (QDirModel a) (()) where
 resolveSymlinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_resolveSymlinks cobj_x0

foreign import ccall "qtc_QDirModel_resolveSymlinks" qtc_QDirModel_resolveSymlinks :: Ptr (TQDirModel a) -> IO CBool

instance Qrmdir (QDirModel a) ((QModelIndex t1)) (IO (Bool)) where
 rmdir x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_rmdir cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_rmdir" qtc_QDirModel_rmdir :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QrowCount (QDirModel ()) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_rowCount_h cobj_x0

foreign import ccall "qtc_QDirModel_rowCount_h" qtc_QDirModel_rowCount_h :: Ptr (TQDirModel a) -> IO CInt

instance QrowCount (QDirModelSc a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_rowCount_h cobj_x0

instance QrowCount (QDirModel ()) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_rowCount1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_rowCount1_h" qtc_QDirModel_rowCount1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CInt

instance QrowCount (QDirModelSc a) ((QModelIndex t1)) where
 rowCount x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_rowCount1_h cobj_x0 cobj_x1

instance QsetData (QDirModel ()) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDirModel_setData_h" qtc_QDirModel_setData_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> IO CBool

instance QsetData (QDirModelSc a) ((QModelIndex t1, QVariant t2)) (IO (Bool)) where
 setData x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData_h cobj_x0 cobj_x1 cobj_x2

instance QsetData (QDirModel ()) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QDirModel_setData1_h" qtc_QDirModel_setData1_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQVariant t2) -> CInt -> IO CBool

instance QsetData (QDirModelSc a) ((QModelIndex t1, QVariant t2, Int)) (IO (Bool)) where
 setData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_setData1_h cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QsetFilter (QDirModel a) ((Filters)) where
 setFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_setFilter cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDirModel_setFilter" qtc_QDirModel_setFilter :: Ptr (TQDirModel a) -> CLong -> IO ()

setLazyChildCount :: QDirModel a -> ((Bool)) -> IO ()
setLazyChildCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_setLazyChildCount cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDirModel_setLazyChildCount" qtc_QDirModel_setLazyChildCount :: Ptr (TQDirModel a) -> CBool -> IO ()

instance QsetNameFilters (QDirModel a) (([String])) where
 setNameFilters x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDirModel_setNameFilters cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QDirModel_setNameFilters" qtc_QDirModel_setNameFilters :: Ptr (TQDirModel a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetReadOnly (QDirModel a) ((Bool)) where
 setReadOnly x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_setReadOnly cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDirModel_setReadOnly" qtc_QDirModel_setReadOnly :: Ptr (TQDirModel a) -> CBool -> IO ()

instance QsetResolveSymlinks (QDirModel a) ((Bool)) where
 setResolveSymlinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_setResolveSymlinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDirModel_setResolveSymlinks" qtc_QDirModel_setResolveSymlinks :: Ptr (TQDirModel a) -> CBool -> IO ()

instance QsetSorting (QDirModel a) ((SortFlags)) where
 setSorting x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_setSorting cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDirModel_setSorting" qtc_QDirModel_setSorting :: Ptr (TQDirModel a) -> CLong -> IO ()

instance Qsort (QDirModel ()) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDirModel_sort_h" qtc_QDirModel_sort_h :: Ptr (TQDirModel a) -> CInt -> IO ()

instance Qsort (QDirModelSc a) ((Int)) where
 sort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort_h cobj_x0 (toCInt x1)

instance Qsort (QDirModel ()) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDirModel_sort1_h" qtc_QDirModel_sort1_h :: Ptr (TQDirModel a) -> CInt -> CLong -> IO ()

instance Qsort (QDirModelSc a) ((Int, SortOrder)) where
 sort x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sort1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

instance Qsorting (QDirModel a) (()) where
 sorting x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sorting cobj_x0

foreign import ccall "qtc_QDirModel_sorting" qtc_QDirModel_sorting :: Ptr (TQDirModel a) -> IO CLong

instance QsupportedDropActions (QDirModel ()) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_supportedDropActions_h cobj_x0

foreign import ccall "qtc_QDirModel_supportedDropActions_h" qtc_QDirModel_supportedDropActions_h :: Ptr (TQDirModel a) -> IO CLong

instance QsupportedDropActions (QDirModelSc a) (()) where
 supportedDropActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_supportedDropActions_h cobj_x0

qDirModel_delete :: QDirModel a -> IO ()
qDirModel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_delete cobj_x0

foreign import ccall "qtc_QDirModel_delete" qtc_QDirModel_delete :: Ptr (TQDirModel a) -> IO ()

qDirModel_deleteLater :: QDirModel a -> IO ()
qDirModel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_deleteLater cobj_x0

foreign import ccall "qtc_QDirModel_deleteLater" qtc_QDirModel_deleteLater :: Ptr (TQDirModel a) -> IO ()

instance QbeginInsertColumns (QDirModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_beginInsertColumns" qtc_QDirModel_beginInsertColumns :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertColumns (QDirModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginInsertColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginInsertRows (QDirModel ()) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_beginInsertRows" qtc_QDirModel_beginInsertRows :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginInsertRows (QDirModelSc a) ((QModelIndex t1, Int, Int)) where
 beginInsertRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginInsertRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveColumns (QDirModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_beginRemoveColumns" qtc_QDirModel_beginRemoveColumns :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveColumns (QDirModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveColumns x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginRemoveColumns cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QbeginRemoveRows (QDirModel ()) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDirModel_beginRemoveRows" qtc_QDirModel_beginRemoveRows :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QbeginRemoveRows (QDirModelSc a) ((QModelIndex t1, Int, Int)) where
 beginRemoveRows x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_beginRemoveRows cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance Qbuddy (QDirModel ()) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_buddy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_buddy_h" qtc_QDirModel_buddy_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQModelIndex ()))

instance Qbuddy (QDirModelSc a) ((QModelIndex t1)) (IO (QModelIndex ())) where
 buddy x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_buddy_h cobj_x0 cobj_x1

instance QcanFetchMore (QDirModel ()) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_canFetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_canFetchMore_h" qtc_QDirModel_canFetchMore_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QcanFetchMore (QDirModelSc a) ((QModelIndex t1)) where
 canFetchMore x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_canFetchMore_h cobj_x0 cobj_x1

instance QchangePersistentIndex (QDirModel ()) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDirModel_changePersistentIndex" qtc_QDirModel_changePersistentIndex :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QchangePersistentIndex (QDirModelSc a) ((QModelIndex t1, QModelIndex t2)) where
 changePersistentIndex x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_changePersistentIndex cobj_x0 cobj_x1 cobj_x2

instance QcreateIndex (QDirModel ()) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_createIndex" qtc_QDirModel_createIndex :: Ptr (TQDirModel a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QDirModelSc a) ((Int, Int)) where
 createIndex x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_createIndex cobj_x0 (toCInt x1) (toCInt x2)

instance QcreateIndex (QDirModel ()) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

foreign import ccall "qtc_QDirModel_createIndex2" qtc_QDirModel_createIndex2 :: Ptr (TQDirModel a) -> CInt -> CInt -> CUInt -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QDirModelSc a) ((Int, Int, Int)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_createIndex2 cobj_x0 (toCInt x1) (toCInt x2) (toCUInt x3)

instance QcreateIndex (QDirModel ()) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_createIndex3" qtc_QDirModel_createIndex3 :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQVoid t3) -> IO (Ptr (TQModelIndex ()))

instance QcreateIndex (QDirModelSc a) ((Int, Int, QVoid t3)) where
 createIndex x0 (x1, x2, x3)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_createIndex3 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QendInsertColumns (QDirModel ()) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endInsertColumns cobj_x0

foreign import ccall "qtc_QDirModel_endInsertColumns" qtc_QDirModel_endInsertColumns :: Ptr (TQDirModel a) -> IO ()

instance QendInsertColumns (QDirModelSc a) (()) where
 endInsertColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endInsertColumns cobj_x0

instance QendInsertRows (QDirModel ()) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endInsertRows cobj_x0

foreign import ccall "qtc_QDirModel_endInsertRows" qtc_QDirModel_endInsertRows :: Ptr (TQDirModel a) -> IO ()

instance QendInsertRows (QDirModelSc a) (()) where
 endInsertRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endInsertRows cobj_x0

instance QendRemoveColumns (QDirModel ()) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endRemoveColumns cobj_x0

foreign import ccall "qtc_QDirModel_endRemoveColumns" qtc_QDirModel_endRemoveColumns :: Ptr (TQDirModel a) -> IO ()

instance QendRemoveColumns (QDirModelSc a) (()) where
 endRemoveColumns x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endRemoveColumns cobj_x0

instance QendRemoveRows (QDirModel ()) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endRemoveRows cobj_x0

foreign import ccall "qtc_QDirModel_endRemoveRows" qtc_QDirModel_endRemoveRows :: Ptr (TQDirModel a) -> IO ()

instance QendRemoveRows (QDirModelSc a) (()) where
 endRemoveRows x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_endRemoveRows cobj_x0

instance QfetchMore (QDirModel ()) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fetchMore_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_fetchMore_h" qtc_QDirModel_fetchMore_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO ()

instance QfetchMore (QDirModelSc a) ((QModelIndex t1)) where
 fetchMore x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_fetchMore_h cobj_x0 cobj_x1

instance QinsertColumn (QDirModel ()) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDirModel_insertColumn" qtc_QDirModel_insertColumn :: Ptr (TQDirModel a) -> CInt -> IO CBool

instance QinsertColumn (QDirModelSc a) ((Int)) (IO (Bool)) where
 insertColumn x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumn cobj_x0 (toCInt x1)

instance QinsertColumn (QDirModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QDirModel_insertColumn1" qtc_QDirModel_insertColumn1 :: Ptr (TQDirModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertColumn (QDirModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertColumn x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_insertColumn1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertColumns (QDirModel ()) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_insertColumns_h" qtc_QDirModel_insertColumns_h :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QinsertColumns (QDirModelSc a) ((Int, Int)) (IO (Bool)) where
 insertColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertColumns (QDirModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_insertColumns1_h" qtc_QDirModel_insertColumns1_h :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertColumns (QDirModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QinsertRow (QDirModel ()) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDirModel_insertRow" qtc_QDirModel_insertRow :: Ptr (TQDirModel a) -> CInt -> IO CBool

instance QinsertRow (QDirModelSc a) ((Int)) (IO (Bool)) where
 insertRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRow cobj_x0 (toCInt x1)

instance QinsertRow (QDirModel ()) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QDirModel_insertRow1" qtc_QDirModel_insertRow1 :: Ptr (TQDirModel a) -> CInt -> Ptr (TQModelIndex t2) -> IO CBool

instance QinsertRow (QDirModelSc a) ((Int, QModelIndex t2)) (IO (Bool)) where
 insertRow x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_insertRow1 cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QDirModel ()) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_insertRows_h" qtc_QDirModel_insertRows_h :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QinsertRows (QDirModelSc a) ((Int, Int)) (IO (Bool)) where
 insertRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_insertRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QinsertRows (QDirModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_insertRows1_h" qtc_QDirModel_insertRows1_h :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QinsertRows (QDirModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 insertRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_insertRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveColumns (QDirModel ()) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_removeColumns_h" qtc_QDirModel_removeColumns_h :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QremoveColumns (QDirModelSc a) ((Int, Int)) (IO (Bool)) where
 removeColumns x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeColumns_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveColumns (QDirModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_removeColumns1_h" qtc_QDirModel_removeColumns1_h :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveColumns (QDirModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeColumns x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeColumns1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QremoveRows (QDirModel ()) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDirModel_removeRows_h" qtc_QDirModel_removeRows_h :: Ptr (TQDirModel a) -> CInt -> CInt -> IO CBool

instance QremoveRows (QDirModelSc a) ((Int, Int)) (IO (Bool)) where
 removeRows x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_removeRows_h cobj_x0 (toCInt x1) (toCInt x2)

instance QremoveRows (QDirModel ()) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_removeRows1_h" qtc_QDirModel_removeRows1_h :: Ptr (TQDirModel a) -> CInt -> CInt -> Ptr (TQModelIndex t3) -> IO CBool

instance QremoveRows (QDirModelSc a) ((Int, Int, QModelIndex t3)) (IO (Bool)) where
 removeRows x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_removeRows1_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance Qreset (QDirModel ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_reset cobj_x0

foreign import ccall "qtc_QDirModel_reset" qtc_QDirModel_reset :: Ptr (TQDirModel a) -> IO ()

instance Qreset (QDirModelSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_reset cobj_x0

instance Qrevert (QDirModel ()) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_revert_h cobj_x0

foreign import ccall "qtc_QDirModel_revert_h" qtc_QDirModel_revert_h :: Ptr (TQDirModel a) -> IO ()

instance Qrevert (QDirModelSc a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_revert_h cobj_x0

instance QsetHeaderData (QDirModel ()) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QDirModel_setHeaderData_h" qtc_QDirModel_setHeaderData_h :: Ptr (TQDirModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> IO CBool

instance QsetHeaderData (QDirModelSc a) ((Int, QtOrientation, QVariant t3)) where
 setHeaderData x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

instance QsetHeaderData (QDirModel ()) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

foreign import ccall "qtc_QDirModel_setHeaderData1_h" qtc_QDirModel_setHeaderData1_h :: Ptr (TQDirModel a) -> CInt -> CLong -> Ptr (TQVariant t3) -> CInt -> IO CBool

instance QsetHeaderData (QDirModelSc a) ((Int, QtOrientation, QVariant t3, Int)) where
 setHeaderData x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDirModel_setHeaderData1_h cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2) cobj_x3 (toCInt x4)

instance Qqspan (QDirModel ()) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_span_h" qtc_QDirModel_span_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQSize ()))

instance Qqspan (QDirModelSc a) ((QModelIndex t1)) where
 qspan x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_h cobj_x0 cobj_x1

instance Qspan (QDirModel ()) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDirModel_span_qth_h" qtc_QDirModel_span_qth_h :: Ptr (TQDirModel a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qspan (QDirModelSc a) ((QModelIndex t1)) where
 span x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_span_qth_h cobj_x0 cobj_x1 csize_ret_w csize_ret_h

instance Qsubmit (QDirModel ()) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_submit_h cobj_x0

foreign import ccall "qtc_QDirModel_submit_h" qtc_QDirModel_submit_h :: Ptr (TQDirModel a) -> IO CBool

instance Qsubmit (QDirModelSc a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_submit_h cobj_x0

instance QchildEvent (QDirModel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_childEvent" qtc_QDirModel_childEvent :: Ptr (TQDirModel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDirModelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDirModel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDirModel_connectNotify" qtc_QDirModel_connectNotify :: Ptr (TQDirModel a) -> CWString -> IO ()

instance QconnectNotify (QDirModelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDirModel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_customEvent" qtc_QDirModel_customEvent :: Ptr (TQDirModel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDirModelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDirModel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDirModel_disconnectNotify" qtc_QDirModel_disconnectNotify :: Ptr (TQDirModel a) -> CWString -> IO ()

instance QdisconnectNotify (QDirModelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QDirModel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_event_h" qtc_QDirModel_event_h :: Ptr (TQDirModel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDirModelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_event_h cobj_x0 cobj_x1

instance QeventFilter (QDirModel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDirModel_eventFilter_h" qtc_QDirModel_eventFilter_h :: Ptr (TQDirModel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDirModelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDirModel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDirModel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDirModel_receivers" qtc_QDirModel_receivers :: Ptr (TQDirModel a) -> CWString -> IO CInt

instance Qreceivers (QDirModelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDirModel_receivers cobj_x0 cstr_x1

instance Qsender (QDirModel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sender cobj_x0

foreign import ccall "qtc_QDirModel_sender" qtc_QDirModel_sender :: Ptr (TQDirModel a) -> IO (Ptr (TQObject ()))

instance Qsender (QDirModelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDirModel_sender cobj_x0

instance QtimerEvent (QDirModel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDirModel_timerEvent" qtc_QDirModel_timerEvent :: Ptr (TQDirModel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDirModelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDirModel_timerEvent cobj_x0 cobj_x1

