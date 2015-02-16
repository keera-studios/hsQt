{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFile.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QFile (
  QqFile(..)
  ,qFileCopy
  ,QqFileDecodeName(..)
  ,qFileEncodeName
  ,qFileExists
  ,QfileEngine(..)
  ,qFileLink
  ,qFilePermissions
  ,qFileReadLink
  ,qFileRemove
  ,qFileRename
  ,qFileResize
  ,qFileSetPermissions
  ,qFileSymLinkTarget
  ,unsetError
  ,qFile_delete
  ,qFile_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice
import Qtc.Enums.Core.QFile

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QFile ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFile_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFile_userMethod" qtc_QFile_userMethod :: Ptr (TQFile a) -> CInt -> IO ()

instance QuserMethod (QFileSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFile_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFile ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFile_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFile_userMethodVariant" qtc_QFile_userMethodVariant :: Ptr (TQFile a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFileSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFile_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFile x1 where
  qFile :: x1 -> IO (QFile ())

instance QqFile (()) where
 qFile ()
  = withQFileResult $
    qtc_QFile

foreign import ccall "qtc_QFile" qtc_QFile :: IO (Ptr (TQFile ()))

instance QqFile ((String)) where
 qFile (x1)
  = withQFileResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile1 cstr_x1

foreign import ccall "qtc_QFile1" qtc_QFile1 :: CWString -> IO (Ptr (TQFile ()))

instance QqFile ((QObject t1)) where
 qFile (x1)
  = withQFileResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile2 cobj_x1

foreign import ccall "qtc_QFile2" qtc_QFile2 :: Ptr (TQObject t1) -> IO (Ptr (TQFile ()))

instance QqFile ((String, QObject t2)) where
 qFile (x1, x2)
  = withQFileResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFile3 cstr_x1 cobj_x2

foreign import ccall "qtc_QFile3" qtc_QFile3 :: CWString -> Ptr (TQObject t2) -> IO (Ptr (TQFile ()))

instance QatEnd (QFile ()) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_atEnd_h cobj_x0

foreign import ccall "qtc_QFile_atEnd_h" qtc_QFile_atEnd_h :: Ptr (TQFile a) -> IO CBool

instance QatEnd (QFileSc a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_atEnd_h cobj_x0

instance Qclose (QFile ()) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_close_h cobj_x0

foreign import ccall "qtc_QFile_close_h" qtc_QFile_close_h :: Ptr (TQFile a) -> IO ()

instance Qclose (QFileSc a) (()) (IO ()) where
 close x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_close_h cobj_x0

qFileCopy :: ((String, String)) -> IO (Bool)
qFileCopy (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFile_copy1 cstr_x1 cstr_x2

foreign import ccall "qtc_QFile_copy1" qtc_QFile_copy1 :: CWString -> CWString -> IO CBool

instance Qcopy (QFile a) ((String)) (IO (Bool)) where
 copy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_copy cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_copy" qtc_QFile_copy :: Ptr (TQFile a) -> CWString -> IO CBool

class QqFileDecodeName x1 where
 qFileDecodeName :: x1 -> IO (String)

instance QqFileDecodeName ((String)) where
 qFileDecodeName (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_decodeName cstr_x1

foreign import ccall "qtc_QFile_decodeName" qtc_QFile_decodeName :: CWString -> IO (Ptr (TQString ()))

qFileEncodeName :: ((String)) -> IO (String)
qFileEncodeName (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_encodeName cstr_x1

foreign import ccall "qtc_QFile_encodeName" qtc_QFile_encodeName :: CWString -> IO (Ptr (TQString ()))

instance Qqerror (QFile a) (()) (IO (FileError)) where
 qerror x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_error cobj_x0

foreign import ccall "qtc_QFile_error" qtc_QFile_error :: Ptr (TQFile a) -> IO CLong

qFileExists :: ((String)) -> IO (Bool)
qFileExists (x1)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_exists1 cstr_x1

foreign import ccall "qtc_QFile_exists1" qtc_QFile_exists1 :: CWString -> IO CBool

instance Qexists (QFile a) (()) where
 exists x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_exists cobj_x0

foreign import ccall "qtc_QFile_exists" qtc_QFile_exists :: Ptr (TQFile a) -> IO CBool

class QfileEngine x0 x1 where
 fileEngine :: x0 -> x1 -> IO (QAbstractFileEngine ())

instance QfileEngine (QFile ()) (()) where
 fileEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_fileEngine_h cobj_x0

foreign import ccall "qtc_QFile_fileEngine_h" qtc_QFile_fileEngine_h :: Ptr (TQFile a) -> IO (Ptr (TQAbstractFileEngine ()))

instance QfileEngine (QFileSc a) (()) where
 fileEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_fileEngine_h cobj_x0

instance QfileName (QFile a) (()) where
 fileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_fileName cobj_x0

foreign import ccall "qtc_QFile_fileName" qtc_QFile_fileName :: Ptr (TQFile a) -> IO (Ptr (TQString ()))

instance Qflush (QFile a) (()) (IO (Bool)) where
 flush x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_flush cobj_x0

foreign import ccall "qtc_QFile_flush" qtc_QFile_flush :: Ptr (TQFile a) -> IO CBool

instance QisSequential (QFile ()) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_isSequential_h cobj_x0

foreign import ccall "qtc_QFile_isSequential_h" qtc_QFile_isSequential_h :: Ptr (TQFile a) -> IO CBool

instance QisSequential (QFileSc a) (()) where
 isSequential x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_isSequential_h cobj_x0

qFileLink :: ((String, String)) -> IO (Bool)
qFileLink (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFile_link1 cstr_x1 cstr_x2

foreign import ccall "qtc_QFile_link1" qtc_QFile_link1 :: CWString -> CWString -> IO CBool

instance Qlink (QFile a) ((String)) (IO (Bool)) where
 link x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_link cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_link" qtc_QFile_link :: Ptr (TQFile a) -> CWString -> IO CBool

instance Qopen (QFile a) ((Int, OpenMode)) where
 open x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_open1 cobj_x0 (toCInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QFile_open1" qtc_QFile_open1 :: Ptr (TQFile a) -> CInt -> CLong -> IO CBool

instance Qopen (QFile ()) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QFile_open_h" qtc_QFile_open_h :: Ptr (TQFile a) -> CLong -> IO CBool

instance Qopen (QFileSc a) ((OpenMode)) where
 open x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_open_h cobj_x0 (toCLong $ qFlags_toInt x1)

qFilePermissions :: ((String)) -> IO (Permissions)
qFilePermissions (x1)
  = withQFlagsResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_permissions1 cstr_x1

foreign import ccall "qtc_QFile_permissions1" qtc_QFile_permissions1 :: CWString -> IO CLong

instance Qpermissions (QFile a) (()) (IO (Permissions)) where
 permissions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_permissions cobj_x0

foreign import ccall "qtc_QFile_permissions" qtc_QFile_permissions :: Ptr (TQFile a) -> IO CLong

instance Qpos (QFile ()) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_pos_h cobj_x0

foreign import ccall "qtc_QFile_pos_h" qtc_QFile_pos_h :: Ptr (TQFile a) -> IO CLLong

instance Qpos (QFileSc a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_pos_h cobj_x0

qFileReadLink :: ((String)) -> IO (String)
qFileReadLink (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_readLink1 cstr_x1

foreign import ccall "qtc_QFile_readLink1" qtc_QFile_readLink1 :: CWString -> IO (Ptr (TQString ()))

instance QreadLink (QFile a) (()) where
 readLink x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_readLink cobj_x0

foreign import ccall "qtc_QFile_readLink" qtc_QFile_readLink :: Ptr (TQFile a) -> IO (Ptr (TQString ()))

qFileRemove :: ((String)) -> IO (Bool)
qFileRemove (x1)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_remove1 cstr_x1

foreign import ccall "qtc_QFile_remove1" qtc_QFile_remove1 :: CWString -> IO CBool

instance Qremove (QFile a) (()) (IO (Bool)) where
 remove x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_remove cobj_x0

foreign import ccall "qtc_QFile_remove" qtc_QFile_remove :: Ptr (TQFile a) -> IO CBool

qFileRename :: ((String, String)) -> IO (Bool)
qFileRename (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFile_rename1 cstr_x1 cstr_x2

foreign import ccall "qtc_QFile_rename1" qtc_QFile_rename1 :: CWString -> CWString -> IO CBool

instance Qrename (QFile a) ((String)) (IO (Bool)) where
 rename x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_rename cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_rename" qtc_QFile_rename :: Ptr (TQFile a) -> CWString -> IO CBool

qFileResize :: ((String, Int)) -> IO (Bool)
qFileResize (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_resize1 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QFile_resize1" qtc_QFile_resize1 :: CWString -> CLLong -> IO CBool

instance Qresize (QFile ()) ((Int)) (IO (Bool)) where
 resize x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_resize cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QFile_resize" qtc_QFile_resize :: Ptr (TQFile a) -> CLLong -> IO CBool

instance Qresize (QFileSc a) ((Int)) (IO (Bool)) where
 resize x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_resize cobj_x0 (toCLLong x1)

instance Qseek (QFile ()) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_seek_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QFile_seek_h" qtc_QFile_seek_h :: Ptr (TQFile a) -> CLLong -> IO CBool

instance Qseek (QFileSc a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_seek_h cobj_x0 (toCLLong x1)

instance QsetFileName (QFile a) ((String)) where
 setFileName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_setFileName cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_setFileName" qtc_QFile_setFileName :: Ptr (TQFile a) -> CWString -> IO ()

qFileSetPermissions :: ((String, Permissions)) -> IO (Bool)
qFileSetPermissions (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_setPermissions1 cstr_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QFile_setPermissions1" qtc_QFile_setPermissions1 :: CWString -> CLong -> IO CBool

instance QsetPermissions (QFile a) ((Permissions)) (IO (Bool)) where
 setPermissions x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_setPermissions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QFile_setPermissions" qtc_QFile_setPermissions :: Ptr (TQFile a) -> CLong -> IO CBool

instance Qqsize (QFile ()) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_size_h cobj_x0

foreign import ccall "qtc_QFile_size_h" qtc_QFile_size_h :: Ptr (TQFile a) -> IO CLLong

instance Qqsize (QFileSc a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_size_h cobj_x0

qFileSymLinkTarget :: ((String)) -> IO (String)
qFileSymLinkTarget (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_symLinkTarget1 cstr_x1

foreign import ccall "qtc_QFile_symLinkTarget1" qtc_QFile_symLinkTarget1 :: CWString -> IO (Ptr (TQString ()))

instance QsymLinkTarget (QFile a) (()) where
 symLinkTarget x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_symLinkTarget cobj_x0

foreign import ccall "qtc_QFile_symLinkTarget" qtc_QFile_symLinkTarget :: Ptr (TQFile a) -> IO (Ptr (TQString ()))

unsetError :: QFile a -> (()) -> IO ()
unsetError x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_unsetError cobj_x0

foreign import ccall "qtc_QFile_unsetError" qtc_QFile_unsetError :: Ptr (TQFile a) -> IO ()

qFile_delete :: QFile a -> IO ()
qFile_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_delete cobj_x0

foreign import ccall "qtc_QFile_delete" qtc_QFile_delete :: Ptr (TQFile a) -> IO ()

qFile_deleteLater :: QFile a -> IO ()
qFile_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_deleteLater cobj_x0

foreign import ccall "qtc_QFile_deleteLater" qtc_QFile_deleteLater :: Ptr (TQFile a) -> IO ()

instance QbytesAvailable (QFile ()) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_bytesAvailable_h cobj_x0

foreign import ccall "qtc_QFile_bytesAvailable_h" qtc_QFile_bytesAvailable_h :: Ptr (TQFile a) -> IO CLLong

instance QbytesAvailable (QFileSc a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_bytesAvailable_h cobj_x0

instance QbytesToWrite (QFile ()) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_bytesToWrite_h cobj_x0

foreign import ccall "qtc_QFile_bytesToWrite_h" qtc_QFile_bytesToWrite_h :: Ptr (TQFile a) -> IO CLLong

instance QbytesToWrite (QFileSc a) (()) where
 bytesToWrite x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_bytesToWrite_h cobj_x0

instance QcanReadLine (QFile ()) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_canReadLine_h cobj_x0

foreign import ccall "qtc_QFile_canReadLine_h" qtc_QFile_canReadLine_h :: Ptr (TQFile a) -> IO CBool

instance QcanReadLine (QFileSc a) (()) where
 canReadLine x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_canReadLine_h cobj_x0

instance Qreset (QFile ()) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_reset_h cobj_x0

foreign import ccall "qtc_QFile_reset_h" qtc_QFile_reset_h :: Ptr (TQFile a) -> IO CBool

instance Qreset (QFileSc a) (()) (IO (Bool)) where
 reset x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_reset_h cobj_x0

instance QsetErrorString (QFile ()) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_setErrorString cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_setErrorString" qtc_QFile_setErrorString :: Ptr (TQFile a) -> CWString -> IO ()

instance QsetErrorString (QFileSc a) ((String)) where
 setErrorString x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_setErrorString cobj_x0 cstr_x1

instance QsetOpenMode (QFile ()) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QFile_setOpenMode" qtc_QFile_setOpenMode :: Ptr (TQFile a) -> CLong -> IO ()

instance QsetOpenMode (QFileSc a) ((OpenMode)) where
 setOpenMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_setOpenMode cobj_x0 (toCLong $ qFlags_toInt x1)

instance QwaitForBytesWritten (QFile ()) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_waitForBytesWritten_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFile_waitForBytesWritten_h" qtc_QFile_waitForBytesWritten_h :: Ptr (TQFile a) -> CInt -> IO CBool

instance QwaitForBytesWritten (QFileSc a) ((Int)) where
 waitForBytesWritten x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_waitForBytesWritten_h cobj_x0 (toCInt x1)

instance QwaitForReadyRead (QFile ()) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_waitForReadyRead_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFile_waitForReadyRead_h" qtc_QFile_waitForReadyRead_h :: Ptr (TQFile a) -> CInt -> IO CBool

instance QwaitForReadyRead (QFileSc a) ((Int)) where
 waitForReadyRead x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_waitForReadyRead_h cobj_x0 (toCInt x1)

instance QwriteData (QFile ()) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_writeData_h cobj_x0 cstr_x1 (toCLLong x2)

foreign import ccall "qtc_QFile_writeData_h" qtc_QFile_writeData_h :: Ptr (TQFile a) -> CWString -> CLLong -> IO CLLong

instance QwriteData (QFileSc a) ((String, Int)) where
 writeData x0 (x1, x2)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_writeData_h cobj_x0 cstr_x1 (toCLLong x2)

instance QchildEvent (QFile ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFile_childEvent" qtc_QFile_childEvent :: Ptr (TQFile a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFileSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFile ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_connectNotify" qtc_QFile_connectNotify :: Ptr (TQFile a) -> CWString -> IO ()

instance QconnectNotify (QFileSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFile ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFile_customEvent" qtc_QFile_customEvent :: Ptr (TQFile a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFileSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFile ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_disconnectNotify" qtc_QFile_disconnectNotify :: Ptr (TQFile a) -> CWString -> IO ()

instance QdisconnectNotify (QFileSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QFile ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFile_event_h" qtc_QFile_event_h :: Ptr (TQFile a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFileSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_event_h cobj_x0 cobj_x1

instance QeventFilter (QFile ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFile_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFile_eventFilter_h" qtc_QFile_eventFilter_h :: Ptr (TQFile a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFileSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFile_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QFile ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFile_receivers" qtc_QFile_receivers :: Ptr (TQFile a) -> CWString -> IO CInt

instance Qreceivers (QFileSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFile_receivers cobj_x0 cstr_x1

instance Qsender (QFile ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_sender cobj_x0

foreign import ccall "qtc_QFile_sender" qtc_QFile_sender :: Ptr (TQFile a) -> IO (Ptr (TQObject ()))

instance Qsender (QFileSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFile_sender cobj_x0

instance QtimerEvent (QFile ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFile_timerEvent" qtc_QFile_timerEvent :: Ptr (TQFile a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFileSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFile_timerEvent cobj_x0 cobj_x1

