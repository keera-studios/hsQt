{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDir.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QDir (
  QqDir(..)
  ,QqDir_nf(..)
  ,qDirAddResourceSearchPath
  ,qDirAddSearchPath
  ,cdUp
  ,qDirCleanPath
  ,qDirConvertSeparators
  ,qDirCurrent
  ,qDirCurrentPath
  ,dirName
  ,qDirDrives
  ,QentryInfoList(..)
  ,QentryList(..)
  ,qDirFromNativeSeparators
  ,qDirHome
  ,qDirHomePath
  ,qDirIsAbsolutePath
  ,qDirIsRelativePath
  ,QqDirMatch(..)
  ,mkpath
  ,qDirNameFiltersFromString
  ,relativeFilePath
  ,rmpath
  ,qDirRoot
  ,qDirRootPath
  ,qDirSearchPaths
  ,qDirSeparator, qDirSeparator_nf
  ,qDirSetCurrent
  ,qDirSetSearchPaths
  ,qDirTemp
  ,qDirTempPath
  ,qDirToNativeSeparators
  ,qDir_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QDir

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqDir x1 where
  qDir :: x1 -> IO (QDir ())

instance QqDir (()) where
 qDir ()
  = withQDirResult $
    qtc_QDir

foreign import ccall "qtc_QDir" qtc_QDir :: IO (Ptr (TQDir ()))

instance QqDir ((QDir t1)) where
 qDir (x1)
  = withQDirResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDir1 cobj_x1

foreign import ccall "qtc_QDir1" qtc_QDir1 :: Ptr (TQDir t1) -> IO (Ptr (TQDir ()))

instance QqDir ((String)) where
 qDir (x1)
  = withQDirResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir2 cstr_x1

foreign import ccall "qtc_QDir2" qtc_QDir2 :: CWString -> IO (Ptr (TQDir ()))

instance QqDir ((String, String)) where
 qDir (x1, x2)
  = withQDirResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir3 cstr_x1 cstr_x2

foreign import ccall "qtc_QDir3" qtc_QDir3 :: CWString -> CWString -> IO (Ptr (TQDir ()))

instance QqDir ((String, String, SortFlags)) where
 qDir (x1, x2, x3)
  = withQDirResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir4 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QDir4" qtc_QDir4 :: CWString -> CWString -> CLong -> IO (Ptr (TQDir ()))

instance QqDir ((String, String, SortFlags, Filters)) where
 qDir (x1, x2, x3, x4)
  = withQDirResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir5 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QDir5" qtc_QDir5 :: CWString -> CWString -> CLong -> CLong -> IO (Ptr (TQDir ()))

class QqDir_nf x1 where
  qDir_nf :: x1 -> IO (QDir ())

instance QqDir_nf (()) where
 qDir_nf ()
  = withObjectRefResult $
    qtc_QDir

instance QqDir_nf ((QDir t1)) where
 qDir_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDir1 cobj_x1

instance QqDir_nf ((String)) where
 qDir_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir2 cstr_x1

instance QqDir_nf ((String, String)) where
 qDir_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir3 cstr_x1 cstr_x2

instance QqDir_nf ((String, String, SortFlags)) where
 qDir_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir4 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3)

instance QqDir_nf ((String, String, SortFlags, Filters)) where
 qDir_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir5 cstr_x1 cstr_x2 (toCLong $ qFlags_toInt x3) (toCLong $ qFlags_toInt x4)

instance QabsoluteFilePath (QDir a) ((String)) where
 absoluteFilePath x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_absoluteFilePath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_absoluteFilePath" qtc_QDir_absoluteFilePath :: Ptr (TQDir a) -> CWString -> IO (Ptr (TQString ()))

instance QabsolutePath (QDir a) (()) where
 absolutePath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_absolutePath cobj_x0

foreign import ccall "qtc_QDir_absolutePath" qtc_QDir_absolutePath :: Ptr (TQDir a) -> IO (Ptr (TQString ()))

qDirAddResourceSearchPath :: ((String)) -> IO ()
qDirAddResourceSearchPath (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QDir_addResourceSearchPath cstr_x1

foreign import ccall "qtc_QDir_addResourceSearchPath" qtc_QDir_addResourceSearchPath :: CWString -> IO ()

qDirAddSearchPath :: ((String, String)) -> IO ()
qDirAddSearchPath (x1, x2)
  = withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir_addSearchPath cstr_x1 cstr_x2

foreign import ccall "qtc_QDir_addSearchPath" qtc_QDir_addSearchPath :: CWString -> CWString -> IO ()

instance QcanonicalPath (QDir a) (()) where
 canonicalPath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_canonicalPath cobj_x0

foreign import ccall "qtc_QDir_canonicalPath" qtc_QDir_canonicalPath :: Ptr (TQDir a) -> IO (Ptr (TQString ()))

instance Qcd (QDir a) ((String)) (IO (Bool)) where
 cd x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_cd cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_cd" qtc_QDir_cd :: Ptr (TQDir a) -> CWString -> IO CBool

cdUp :: QDir a -> (()) -> IO (Bool)
cdUp x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_cdUp cobj_x0

foreign import ccall "qtc_QDir_cdUp" qtc_QDir_cdUp :: Ptr (TQDir a) -> IO CBool

qDirCleanPath :: ((String)) -> IO (String)
qDirCleanPath (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_cleanPath cstr_x1

foreign import ccall "qtc_QDir_cleanPath" qtc_QDir_cleanPath :: CWString -> IO (Ptr (TQString ()))

qDirConvertSeparators :: ((String)) -> IO (String)
qDirConvertSeparators (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_convertSeparators cstr_x1

foreign import ccall "qtc_QDir_convertSeparators" qtc_QDir_convertSeparators :: CWString -> IO (Ptr (TQString ()))

instance Qcount (QDir a) (()) where
 count x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_count cobj_x0

foreign import ccall "qtc_QDir_count" qtc_QDir_count :: Ptr (TQDir a) -> IO CUInt

qDirCurrent :: (()) -> IO (QDir ())
qDirCurrent ()
  = withQDirResult $
    qtc_QDir_current

foreign import ccall "qtc_QDir_current" qtc_QDir_current :: IO (Ptr (TQDir ()))

qDirCurrentPath :: (()) -> IO (String)
qDirCurrentPath ()
  = withStringResult $
    qtc_QDir_currentPath

foreign import ccall "qtc_QDir_currentPath" qtc_QDir_currentPath :: IO (Ptr (TQString ()))

dirName :: QDir a -> (()) -> IO (String)
dirName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_dirName cobj_x0

foreign import ccall "qtc_QDir_dirName" qtc_QDir_dirName :: Ptr (TQDir a) -> IO (Ptr (TQString ()))

qDirDrives :: (()) -> IO ([QFileInfo ()])
qDirDrives ()
  = withQListObjectRefResult $ \arr ->
    qtc_QDir_drives arr

foreign import ccall "qtc_QDir_drives" qtc_QDir_drives :: Ptr (Ptr (TQFileInfo ())) -> IO CInt

class QentryInfoList x1 where
 entryInfoList :: QDir a -> x1 -> IO ([QFileInfo ()])

instance QentryInfoList (()) where
 entryInfoList x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryInfoList cobj_x0 arr

foreign import ccall "qtc_QDir_entryInfoList" qtc_QDir_entryInfoList :: Ptr (TQDir a) -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

instance QentryInfoList ((Filters)) where
 entryInfoList x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryInfoList1 cobj_x0 (toCLong $ qFlags_toInt x1) arr

foreign import ccall "qtc_QDir_entryInfoList1" qtc_QDir_entryInfoList1 :: Ptr (TQDir a) -> CLong -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

instance QentryInfoList ((Filters, SortFlags)) where
 entryInfoList x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryInfoList4 cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QDir_entryInfoList4" qtc_QDir_entryInfoList4 :: Ptr (TQDir a) -> CLong -> CLong -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

instance QentryInfoList (([String])) where
 entryInfoList x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryInfoList2 cobj_x0 cqlistlen_x1 cqliststr_x1 arr

foreign import ccall "qtc_QDir_entryInfoList2" qtc_QDir_entryInfoList2 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

instance QentryInfoList (([String], Filters)) where
 entryInfoList x0 (x1, x2)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryInfoList3 cobj_x0 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QDir_entryInfoList3" qtc_QDir_entryInfoList3 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> CLong -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

instance QentryInfoList (([String], Filters, SortFlags)) where
 entryInfoList x0 (x1, x2, x3)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryInfoList5 cobj_x0 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) (toCLong $ qFlags_toInt x3) arr

foreign import ccall "qtc_QDir_entryInfoList5" qtc_QDir_entryInfoList5 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> CLong -> CLong -> Ptr (Ptr (TQFileInfo ())) -> IO CInt

class QentryList x1 where
 entryList :: QDir a -> x1 -> IO ([String])

instance QentryList (()) where
 entryList x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryList cobj_x0 arr

foreign import ccall "qtc_QDir_entryList" qtc_QDir_entryList :: Ptr (TQDir a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QentryList ((Filters)) where
 entryList x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryList2 cobj_x0 (toCLong $ qFlags_toInt x1) arr

foreign import ccall "qtc_QDir_entryList2" qtc_QDir_entryList2 :: Ptr (TQDir a) -> CLong -> Ptr (Ptr (TQString ())) -> IO CInt

instance QentryList ((Filters, SortFlags)) where
 entryList x0 (x1, x2)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_entryList4 cobj_x0 (toCLong $ qFlags_toInt x1) (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QDir_entryList4" qtc_QDir_entryList4 :: Ptr (TQDir a) -> CLong -> CLong -> Ptr (Ptr (TQString ())) -> IO CInt

instance QentryList (([String])) where
 entryList x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryList1 cobj_x0 cqlistlen_x1 cqliststr_x1 arr

foreign import ccall "qtc_QDir_entryList1" qtc_QDir_entryList1 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QentryList (([String], Filters)) where
 entryList x0 (x1, x2)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryList3 cobj_x0 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) arr

foreign import ccall "qtc_QDir_entryList3" qtc_QDir_entryList3 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> CLong -> Ptr (Ptr (TQString ())) -> IO CInt

instance QentryList (([String], Filters, SortFlags)) where
 entryList x0 (x1, x2, x3)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_entryList5 cobj_x0 cqlistlen_x1 cqliststr_x1 (toCLong $ qFlags_toInt x2) (toCLong $ qFlags_toInt x3) arr

foreign import ccall "qtc_QDir_entryList5" qtc_QDir_entryList5 :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> CLong -> CLong -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qexists (QDir a) (()) where
 exists x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_exists cobj_x0

foreign import ccall "qtc_QDir_exists" qtc_QDir_exists :: Ptr (TQDir a) -> IO CBool

instance Qexists (QDir a) ((String)) where
 exists x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_exists1 cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_exists1" qtc_QDir_exists1 :: Ptr (TQDir a) -> CWString -> IO CBool

instance QfilePath (QDir a) ((String)) where
 filePath x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_filePath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_filePath" qtc_QDir_filePath :: Ptr (TQDir a) -> CWString -> IO (Ptr (TQString ()))

instance Qqfilter (QDir a) (()) where
 qfilter x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_filter cobj_x0

foreign import ccall "qtc_QDir_filter" qtc_QDir_filter :: Ptr (TQDir a) -> IO CLong

qDirFromNativeSeparators :: ((String)) -> IO (String)
qDirFromNativeSeparators (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_fromNativeSeparators cstr_x1

foreign import ccall "qtc_QDir_fromNativeSeparators" qtc_QDir_fromNativeSeparators :: CWString -> IO (Ptr (TQString ()))

qDirHome :: (()) -> IO (QDir ())
qDirHome ()
  = withQDirResult $
    qtc_QDir_home

foreign import ccall "qtc_QDir_home" qtc_QDir_home :: IO (Ptr (TQDir ()))

qDirHomePath :: (()) -> IO (String)
qDirHomePath ()
  = withStringResult $
    qtc_QDir_homePath

foreign import ccall "qtc_QDir_homePath" qtc_QDir_homePath :: IO (Ptr (TQString ()))

instance QisAbsolute (QDir a) (()) where
 isAbsolute x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_isAbsolute cobj_x0

foreign import ccall "qtc_QDir_isAbsolute" qtc_QDir_isAbsolute :: Ptr (TQDir a) -> IO CBool

qDirIsAbsolutePath :: ((String)) -> IO (Bool)
qDirIsAbsolutePath (x1)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_isAbsolutePath cstr_x1

foreign import ccall "qtc_QDir_isAbsolutePath" qtc_QDir_isAbsolutePath :: CWString -> IO CBool

instance QisReadable (QDir a) (()) where
 isReadable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_isReadable cobj_x0

foreign import ccall "qtc_QDir_isReadable" qtc_QDir_isReadable :: Ptr (TQDir a) -> IO CBool

instance QisRelative (QDir a) (()) where
 isRelative x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_isRelative cobj_x0

foreign import ccall "qtc_QDir_isRelative" qtc_QDir_isRelative :: Ptr (TQDir a) -> IO CBool

qDirIsRelativePath :: ((String)) -> IO (Bool)
qDirIsRelativePath (x1)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_isRelativePath cstr_x1

foreign import ccall "qtc_QDir_isRelativePath" qtc_QDir_isRelativePath :: CWString -> IO CBool

instance QisRoot (QDir a) (()) where
 isRoot x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_isRoot cobj_x0

foreign import ccall "qtc_QDir_isRoot" qtc_QDir_isRoot :: Ptr (TQDir a) -> IO CBool

instance QmakeAbsolute (QDir a) (()) where
 makeAbsolute x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_makeAbsolute cobj_x0

foreign import ccall "qtc_QDir_makeAbsolute" qtc_QDir_makeAbsolute :: Ptr (TQDir a) -> IO CBool

class QqDirMatch x1 where
 qDirMatch :: x1 -> IO (Bool)

instance QqDirMatch ((String, String)) where
 qDirMatch (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir_match cstr_x1 cstr_x2

foreign import ccall "qtc_QDir_match" qtc_QDir_match :: CWString -> CWString -> IO CBool

instance QqDirMatch (([String], String)) where
 qDirMatch (x1, x2)
  = withBoolResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir_match1 cqlistlen_x1 cqliststr_x1 cstr_x2

foreign import ccall "qtc_QDir_match1" qtc_QDir_match1 :: CInt -> Ptr (Ptr CWchar) -> CWString -> IO CBool

instance Qmkdir (QDir a) ((String)) (IO (Bool)) where
 mkdir x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_mkdir cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_mkdir" qtc_QDir_mkdir :: Ptr (TQDir a) -> CWString -> IO CBool

mkpath :: QDir a -> ((String)) -> IO (Bool)
mkpath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_mkpath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_mkpath" qtc_QDir_mkpath :: Ptr (TQDir a) -> CWString -> IO CBool

instance QnameFilters (QDir a) (()) where
 nameFilters x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_nameFilters cobj_x0 arr

foreign import ccall "qtc_QDir_nameFilters" qtc_QDir_nameFilters :: Ptr (TQDir a) -> Ptr (Ptr (TQString ())) -> IO CInt

qDirNameFiltersFromString :: ((String)) -> IO ([String])
qDirNameFiltersFromString (x1)
  = withQListStringResult $ \arr ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_nameFiltersFromString cstr_x1 arr

foreign import ccall "qtc_QDir_nameFiltersFromString" qtc_QDir_nameFiltersFromString :: CWString -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qpath (QDir a) (()) (IO (String)) where
 path x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_path cobj_x0

foreign import ccall "qtc_QDir_path" qtc_QDir_path :: Ptr (TQDir a) -> IO (Ptr (TQString ()))

instance Qrefresh (QDir a) (()) where
 refresh x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_refresh cobj_x0

foreign import ccall "qtc_QDir_refresh" qtc_QDir_refresh :: Ptr (TQDir a) -> IO ()

relativeFilePath :: QDir a -> ((String)) -> IO (String)
relativeFilePath x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_relativeFilePath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_relativeFilePath" qtc_QDir_relativeFilePath :: Ptr (TQDir a) -> CWString -> IO (Ptr (TQString ()))

instance Qremove (QDir a) ((String)) (IO (Bool)) where
 remove x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_remove cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_remove" qtc_QDir_remove :: Ptr (TQDir a) -> CWString -> IO CBool

instance Qrename (QDir a) ((String, String)) (IO (Bool)) where
 rename x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDir_rename cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QDir_rename" qtc_QDir_rename :: Ptr (TQDir a) -> CWString -> CWString -> IO CBool

instance Qrmdir (QDir a) ((String)) (IO (Bool)) where
 rmdir x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_rmdir cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_rmdir" qtc_QDir_rmdir :: Ptr (TQDir a) -> CWString -> IO CBool

rmpath :: QDir a -> ((String)) -> IO (Bool)
rmpath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_rmpath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_rmpath" qtc_QDir_rmpath :: Ptr (TQDir a) -> CWString -> IO CBool

qDirRoot :: (()) -> IO (QDir ())
qDirRoot ()
  = withQDirResult $
    qtc_QDir_root

foreign import ccall "qtc_QDir_root" qtc_QDir_root :: IO (Ptr (TQDir ()))

qDirRootPath :: (()) -> IO (String)
qDirRootPath ()
  = withStringResult $
    qtc_QDir_rootPath

foreign import ccall "qtc_QDir_rootPath" qtc_QDir_rootPath :: IO (Ptr (TQString ()))

qDirSearchPaths :: ((String)) -> IO ([String])
qDirSearchPaths (x1)
  = withQListStringResult $ \arr ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_searchPaths cstr_x1 arr

foreign import ccall "qtc_QDir_searchPaths" qtc_QDir_searchPaths :: CWString -> Ptr (Ptr (TQString ())) -> IO CInt

qDirSeparator :: (()) -> IO (QChar ())
qDirSeparator ()
  = withQCharResult $
    qtc_QDir_separator

foreign import ccall "qtc_QDir_separator" qtc_QDir_separator :: IO (Ptr (TQChar ()))

qDirSeparator_nf :: (()) -> IO (QChar ())
qDirSeparator_nf ()
  = withObjectRefResult $
    qtc_QDir_separator

qDirSetCurrent :: ((String)) -> IO (Bool)
qDirSetCurrent (x1)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_setCurrent cstr_x1

foreign import ccall "qtc_QDir_setCurrent" qtc_QDir_setCurrent :: CWString -> IO CBool

instance QsetFilter (QDir a) ((Filters)) where
 setFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_setFilter cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDir_setFilter" qtc_QDir_setFilter :: Ptr (TQDir a) -> CLong -> IO ()

instance QsetNameFilters (QDir a) (([String])) where
 setNameFilters x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QDir_setNameFilters cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QDir_setNameFilters" qtc_QDir_setNameFilters :: Ptr (TQDir a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetPath (QDir a) ((String)) where
 setPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_setPath cobj_x0 cstr_x1

foreign import ccall "qtc_QDir_setPath" qtc_QDir_setPath :: Ptr (TQDir a) -> CWString -> IO ()

qDirSetSearchPaths :: ((String, [String])) -> IO ()
qDirSetSearchPaths (x1, x2)
  = withCWString x1 $ \cstr_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QDir_setSearchPaths cstr_x1 cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QDir_setSearchPaths" qtc_QDir_setSearchPaths :: CWString -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetSorting (QDir a) ((SortFlags)) where
 setSorting x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_setSorting cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDir_setSorting" qtc_QDir_setSorting :: Ptr (TQDir a) -> CLong -> IO ()

instance Qsorting (QDir a) (()) where
 sorting x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_sorting cobj_x0

foreign import ccall "qtc_QDir_sorting" qtc_QDir_sorting :: Ptr (TQDir a) -> IO CLong

qDirTemp :: (()) -> IO (QDir ())
qDirTemp ()
  = withQDirResult $
    qtc_QDir_temp

foreign import ccall "qtc_QDir_temp" qtc_QDir_temp :: IO (Ptr (TQDir ()))

qDirTempPath :: (()) -> IO (String)
qDirTempPath ()
  = withStringResult $
    qtc_QDir_tempPath

foreign import ccall "qtc_QDir_tempPath" qtc_QDir_tempPath :: IO (Ptr (TQString ()))

qDirToNativeSeparators :: ((String)) -> IO (String)
qDirToNativeSeparators (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDir_toNativeSeparators cstr_x1

foreign import ccall "qtc_QDir_toNativeSeparators" qtc_QDir_toNativeSeparators :: CWString -> IO (Ptr (TQString ()))

qDir_delete :: QDir a -> IO ()
qDir_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDir_delete cobj_x0

foreign import ccall "qtc_QDir_delete" qtc_QDir_delete :: Ptr (TQDir a) -> IO ()

