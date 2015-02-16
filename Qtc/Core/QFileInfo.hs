{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFileInfo.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QFileInfo (
  QqFileInfo(..)
  ,QqFileInfo_nf(..)
  ,absoluteDir
  ,baseName
  ,bundleName
  ,caching
  ,canonicalFilePath
  ,completeBaseName
  ,completeSuffix
  ,created
  ,dir
  ,groupId
  ,isBundle
  ,ownerId
  ,permission
  ,setCaching
  ,qFileInfo_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QFile

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqFileInfo x1 where
  qFileInfo :: x1 -> IO (QFileInfo ())

instance QqFileInfo (()) where
 qFileInfo ()
  = withQFileInfoResult $
    qtc_QFileInfo

foreign import ccall "qtc_QFileInfo" qtc_QFileInfo :: IO (Ptr (TQFileInfo ()))

instance QqFileInfo ((QFile t1)) where
 qFileInfo (x1)
  = withQFileInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileInfo1 cobj_x1

foreign import ccall "qtc_QFileInfo1" qtc_QFileInfo1 :: Ptr (TQFile t1) -> IO (Ptr (TQFileInfo ()))

instance QqFileInfo ((QFileInfo t1)) where
 qFileInfo (x1)
  = withQFileInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileInfo2 cobj_x1

foreign import ccall "qtc_QFileInfo2" qtc_QFileInfo2 :: Ptr (TQFileInfo t1) -> IO (Ptr (TQFileInfo ()))

instance QqFileInfo ((String)) where
 qFileInfo (x1)
  = withQFileInfoResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileInfo3 cstr_x1

foreign import ccall "qtc_QFileInfo3" qtc_QFileInfo3 :: CWString -> IO (Ptr (TQFileInfo ()))

instance QqFileInfo ((QDir t1, String)) where
 qFileInfo (x1, x2)
  = withQFileInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileInfo4 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileInfo4" qtc_QFileInfo4 :: Ptr (TQDir t1) -> CWString -> IO (Ptr (TQFileInfo ()))

class QqFileInfo_nf x1 where
  qFileInfo_nf :: x1 -> IO (QFileInfo ())

instance QqFileInfo_nf (()) where
 qFileInfo_nf ()
  = withObjectRefResult $
    qtc_QFileInfo

instance QqFileInfo_nf ((QFile t1)) where
 qFileInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileInfo1 cobj_x1

instance QqFileInfo_nf ((QFileInfo t1)) where
 qFileInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileInfo2 cobj_x1

instance QqFileInfo_nf ((String)) where
 qFileInfo_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileInfo3 cstr_x1

instance QqFileInfo_nf ((QDir t1, String)) where
 qFileInfo_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileInfo4 cobj_x1 cstr_x2

absoluteDir :: QFileInfo a -> (()) -> IO (QDir ())
absoluteDir x0 ()
  = withQDirResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_absoluteDir cobj_x0

foreign import ccall "qtc_QFileInfo_absoluteDir" qtc_QFileInfo_absoluteDir :: Ptr (TQFileInfo a) -> IO (Ptr (TQDir ()))

instance QabsoluteFilePath (QFileInfo a) (()) where
 absoluteFilePath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_absoluteFilePath cobj_x0

foreign import ccall "qtc_QFileInfo_absoluteFilePath" qtc_QFileInfo_absoluteFilePath :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance QabsolutePath (QFileInfo a) (()) where
 absolutePath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_absolutePath cobj_x0

foreign import ccall "qtc_QFileInfo_absolutePath" qtc_QFileInfo_absolutePath :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

baseName :: QFileInfo a -> (()) -> IO (String)
baseName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_baseName cobj_x0

foreign import ccall "qtc_QFileInfo_baseName" qtc_QFileInfo_baseName :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

bundleName :: QFileInfo a -> (()) -> IO (String)
bundleName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_bundleName cobj_x0

foreign import ccall "qtc_QFileInfo_bundleName" qtc_QFileInfo_bundleName :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

caching :: QFileInfo a -> (()) -> IO (Bool)
caching x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_caching cobj_x0

foreign import ccall "qtc_QFileInfo_caching" qtc_QFileInfo_caching :: Ptr (TQFileInfo a) -> IO CBool

canonicalFilePath :: QFileInfo a -> (()) -> IO (String)
canonicalFilePath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_canonicalFilePath cobj_x0

foreign import ccall "qtc_QFileInfo_canonicalFilePath" qtc_QFileInfo_canonicalFilePath :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance QcanonicalPath (QFileInfo a) (()) where
 canonicalPath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_canonicalPath cobj_x0

foreign import ccall "qtc_QFileInfo_canonicalPath" qtc_QFileInfo_canonicalPath :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

completeBaseName :: QFileInfo a -> (()) -> IO (String)
completeBaseName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_completeBaseName cobj_x0

foreign import ccall "qtc_QFileInfo_completeBaseName" qtc_QFileInfo_completeBaseName :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

completeSuffix :: QFileInfo a -> (()) -> IO (String)
completeSuffix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_completeSuffix cobj_x0

foreign import ccall "qtc_QFileInfo_completeSuffix" qtc_QFileInfo_completeSuffix :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

created :: QFileInfo a -> (()) -> IO (QDateTime ())
created x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_created cobj_x0

foreign import ccall "qtc_QFileInfo_created" qtc_QFileInfo_created :: Ptr (TQFileInfo a) -> IO (Ptr (TQDateTime ()))

instance Qdetach (QFileInfo a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_detach cobj_x0

foreign import ccall "qtc_QFileInfo_detach" qtc_QFileInfo_detach :: Ptr (TQFileInfo a) -> IO ()

dir :: QFileInfo a -> (()) -> IO (QDir ())
dir x0 ()
  = withQDirResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_dir cobj_x0

foreign import ccall "qtc_QFileInfo_dir" qtc_QFileInfo_dir :: Ptr (TQFileInfo a) -> IO (Ptr (TQDir ()))

instance Qexists (QFileInfo a) (()) where
 exists x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_exists cobj_x0

foreign import ccall "qtc_QFileInfo_exists" qtc_QFileInfo_exists :: Ptr (TQFileInfo a) -> IO CBool

instance QfileName (QFileInfo a) (()) where
 fileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_fileName cobj_x0

foreign import ccall "qtc_QFileInfo_fileName" qtc_QFileInfo_fileName :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance QfilePath (QFileInfo a) (()) where
 filePath x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_filePath cobj_x0

foreign import ccall "qtc_QFileInfo_filePath" qtc_QFileInfo_filePath :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance Qgroup (QFileInfo a) (()) (IO (String)) where
 group x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_group cobj_x0

foreign import ccall "qtc_QFileInfo_group" qtc_QFileInfo_group :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

groupId :: QFileInfo a -> (()) -> IO (Int)
groupId x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_groupId cobj_x0

foreign import ccall "qtc_QFileInfo_groupId" qtc_QFileInfo_groupId :: Ptr (TQFileInfo a) -> IO CUInt

instance QisAbsolute (QFileInfo a) (()) where
 isAbsolute x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isAbsolute cobj_x0

foreign import ccall "qtc_QFileInfo_isAbsolute" qtc_QFileInfo_isAbsolute :: Ptr (TQFileInfo a) -> IO CBool

isBundle :: QFileInfo a -> (()) -> IO (Bool)
isBundle x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isBundle cobj_x0

foreign import ccall "qtc_QFileInfo_isBundle" qtc_QFileInfo_isBundle :: Ptr (TQFileInfo a) -> IO CBool

instance QisDir (QFileInfo a) (()) where
 isDir x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isDir cobj_x0

foreign import ccall "qtc_QFileInfo_isDir" qtc_QFileInfo_isDir :: Ptr (TQFileInfo a) -> IO CBool

instance QisExecutable (QFileInfo a) (()) where
 isExecutable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isExecutable cobj_x0

foreign import ccall "qtc_QFileInfo_isExecutable" qtc_QFileInfo_isExecutable :: Ptr (TQFileInfo a) -> IO CBool

instance QisFile (QFileInfo a) (()) where
 isFile x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isFile cobj_x0

foreign import ccall "qtc_QFileInfo_isFile" qtc_QFileInfo_isFile :: Ptr (TQFileInfo a) -> IO CBool

instance QisHidden (QFileInfo a) (()) where
 isHidden x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isHidden cobj_x0

foreign import ccall "qtc_QFileInfo_isHidden" qtc_QFileInfo_isHidden :: Ptr (TQFileInfo a) -> IO CBool

instance QisReadable (QFileInfo a) (()) where
 isReadable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isReadable cobj_x0

foreign import ccall "qtc_QFileInfo_isReadable" qtc_QFileInfo_isReadable :: Ptr (TQFileInfo a) -> IO CBool

instance QisRelative (QFileInfo a) (()) where
 isRelative x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isRelative cobj_x0

foreign import ccall "qtc_QFileInfo_isRelative" qtc_QFileInfo_isRelative :: Ptr (TQFileInfo a) -> IO CBool

instance QisRoot (QFileInfo a) (()) where
 isRoot x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isRoot cobj_x0

foreign import ccall "qtc_QFileInfo_isRoot" qtc_QFileInfo_isRoot :: Ptr (TQFileInfo a) -> IO CBool

instance QisSymLink (QFileInfo a) (()) where
 isSymLink x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isSymLink cobj_x0

foreign import ccall "qtc_QFileInfo_isSymLink" qtc_QFileInfo_isSymLink :: Ptr (TQFileInfo a) -> IO CBool

instance QisWritable (QFileInfo a) (()) where
 isWritable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_isWritable cobj_x0

foreign import ccall "qtc_QFileInfo_isWritable" qtc_QFileInfo_isWritable :: Ptr (TQFileInfo a) -> IO CBool

instance QlastModified (QFileInfo a) (()) where
 lastModified x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_lastModified cobj_x0

foreign import ccall "qtc_QFileInfo_lastModified" qtc_QFileInfo_lastModified :: Ptr (TQFileInfo a) -> IO (Ptr (TQDateTime ()))

instance QlastRead (QFileInfo a) (()) where
 lastRead x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_lastRead cobj_x0

foreign import ccall "qtc_QFileInfo_lastRead" qtc_QFileInfo_lastRead :: Ptr (TQFileInfo a) -> IO (Ptr (TQDateTime ()))

instance QmakeAbsolute (QFileInfo a) (()) where
 makeAbsolute x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_makeAbsolute cobj_x0

foreign import ccall "qtc_QFileInfo_makeAbsolute" qtc_QFileInfo_makeAbsolute :: Ptr (TQFileInfo a) -> IO CBool

instance Qowner (QFileInfo a) (()) where
 owner x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_owner cobj_x0

foreign import ccall "qtc_QFileInfo_owner" qtc_QFileInfo_owner :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

ownerId :: QFileInfo a -> (()) -> IO (Int)
ownerId x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_ownerId cobj_x0

foreign import ccall "qtc_QFileInfo_ownerId" qtc_QFileInfo_ownerId :: Ptr (TQFileInfo a) -> IO CUInt

instance Qpath (QFileInfo a) (()) (IO (String)) where
 path x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_path cobj_x0

foreign import ccall "qtc_QFileInfo_path" qtc_QFileInfo_path :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

permission :: QFileInfo a -> ((Permissions)) -> IO (Bool)
permission x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_permission cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QFileInfo_permission" qtc_QFileInfo_permission :: Ptr (TQFileInfo a) -> CLong -> IO CBool

instance Qpermissions (QFileInfo a) (()) (IO (Permissions)) where
 permissions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_permissions cobj_x0

foreign import ccall "qtc_QFileInfo_permissions" qtc_QFileInfo_permissions :: Ptr (TQFileInfo a) -> IO CLong

instance QreadLink (QFileInfo a) (()) where
 readLink x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_readLink cobj_x0

foreign import ccall "qtc_QFileInfo_readLink" qtc_QFileInfo_readLink :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance Qrefresh (QFileInfo a) (()) where
 refresh x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_refresh cobj_x0

foreign import ccall "qtc_QFileInfo_refresh" qtc_QFileInfo_refresh :: Ptr (TQFileInfo a) -> IO ()

setCaching :: QFileInfo a -> ((Bool)) -> IO ()
setCaching x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_setCaching cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileInfo_setCaching" qtc_QFileInfo_setCaching :: Ptr (TQFileInfo a) -> CBool -> IO ()

instance QsetFile (QFileInfo a) ((QDir t1, String)) where
 setFile x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileInfo_setFile2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileInfo_setFile2" qtc_QFileInfo_setFile2 :: Ptr (TQFileInfo a) -> Ptr (TQDir t1) -> CWString -> IO ()

instance QsetFile (QFileInfo a) ((QFile t1)) where
 setFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileInfo_setFile1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFileInfo_setFile1" qtc_QFileInfo_setFile1 :: Ptr (TQFileInfo a) -> Ptr (TQFile t1) -> IO ()

instance QsetFile (QFileInfo a) ((String)) where
 setFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileInfo_setFile cobj_x0 cstr_x1

foreign import ccall "qtc_QFileInfo_setFile" qtc_QFileInfo_setFile :: Ptr (TQFileInfo a) -> CWString -> IO ()

instance Qqsize (QFileInfo a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_size cobj_x0

foreign import ccall "qtc_QFileInfo_size" qtc_QFileInfo_size :: Ptr (TQFileInfo a) -> IO CLLong

instance Qsuffix (QFileInfo a) (()) where
 suffix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_suffix cobj_x0

foreign import ccall "qtc_QFileInfo_suffix" qtc_QFileInfo_suffix :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

instance QsymLinkTarget (QFileInfo a) (()) where
 symLinkTarget x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_symLinkTarget cobj_x0

foreign import ccall "qtc_QFileInfo_symLinkTarget" qtc_QFileInfo_symLinkTarget :: Ptr (TQFileInfo a) -> IO (Ptr (TQString ()))

qFileInfo_delete :: QFileInfo a -> IO ()
qFileInfo_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileInfo_delete cobj_x0

foreign import ccall "qtc_QFileInfo_delete" qtc_QFileInfo_delete :: Ptr (TQFileInfo a) -> IO ()

