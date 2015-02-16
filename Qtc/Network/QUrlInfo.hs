{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUrlInfo.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QUrlInfo (
  QqUrlInfo(..)
  ,QqUrlInfo_nf(..)
  ,qUrlInfoEqual
  ,qUrlInfoGreaterThan
  ,qUrlInfoLessThan
  ,QsetDir(..)
  ,QsetLastModified(..)
  ,QsetOwner(..)
  ,QsetReadable(..)
  ,QsetSymLink(..)
  ,QsetWritable(..)
  ,qUrlInfo_delete, qUrlInfo_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QUrlInfo ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUrlInfo_userMethod" qtc_QUrlInfo_userMethod :: Ptr (TQUrlInfo a) -> CInt -> IO ()

instance QuserMethod (QUrlInfoSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUrlInfo_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUrlInfo ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUrlInfo_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUrlInfo_userMethodVariant" qtc_QUrlInfo_userMethodVariant :: Ptr (TQUrlInfo a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUrlInfoSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUrlInfo_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUrlInfo x1 where
  qUrlInfo :: x1 -> IO (QUrlInfo ())

instance QqUrlInfo (()) where
 qUrlInfo ()
  = withQUrlInfoResult $
    qtc_QUrlInfo

foreign import ccall "qtc_QUrlInfo" qtc_QUrlInfo :: IO (Ptr (TQUrlInfo ()))

instance QqUrlInfo ((QUrlInfo t1)) where
 qUrlInfo (x1)
  = withQUrlInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo1 cobj_x1

foreign import ccall "qtc_QUrlInfo1" qtc_QUrlInfo1 :: Ptr (TQUrlInfo t1) -> IO (Ptr (TQUrlInfo ()))

instance QqUrlInfo ((QUrl t1, Int, String, String, Int, QDateTime t6, QDateTime t7, Bool, Bool, Bool, Bool, Bool, Bool)) where
 qUrlInfo (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13)
  = withQUrlInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QUrlInfo2 cobj_x1 (toCInt x2) cstr_x3 cstr_x4 (toCLLong x5) cobj_x6 cobj_x7 (toCBool x8) (toCBool x9) (toCBool x10) (toCBool x11) (toCBool x12) (toCBool x13)

foreign import ccall "qtc_QUrlInfo2" qtc_QUrlInfo2 :: Ptr (TQUrl t1) -> CInt -> CWString -> CWString -> CLLong -> Ptr (TQDateTime t6) -> Ptr (TQDateTime t7) -> CBool -> CBool -> CBool -> CBool -> CBool -> CBool -> IO (Ptr (TQUrlInfo ()))

instance QqUrlInfo ((String, Int, String, String, Int, QDateTime t6, QDateTime t7, Bool, Bool, Bool, Bool, Bool, Bool)) where
 qUrlInfo (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13)
  = withQUrlInfoResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QUrlInfo3 cstr_x1 (toCInt x2) cstr_x3 cstr_x4 (toCLLong x5) cobj_x6 cobj_x7 (toCBool x8) (toCBool x9) (toCBool x10) (toCBool x11) (toCBool x12) (toCBool x13)

foreign import ccall "qtc_QUrlInfo3" qtc_QUrlInfo3 :: CWString -> CInt -> CWString -> CWString -> CLLong -> Ptr (TQDateTime t6) -> Ptr (TQDateTime t7) -> CBool -> CBool -> CBool -> CBool -> CBool -> CBool -> IO (Ptr (TQUrlInfo ()))

class QqUrlInfo_nf x1 where
  qUrlInfo_nf :: x1 -> IO (QUrlInfo ())

instance QqUrlInfo_nf (()) where
 qUrlInfo_nf ()
  = withObjectRefResult $
    qtc_QUrlInfo

instance QqUrlInfo_nf ((QUrlInfo t1)) where
 qUrlInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo1 cobj_x1

instance QqUrlInfo_nf ((QUrl t1, Int, String, String, Int, QDateTime t6, QDateTime t7, Bool, Bool, Bool, Bool, Bool, Bool)) where
 qUrlInfo_nf (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QUrlInfo2 cobj_x1 (toCInt x2) cstr_x3 cstr_x4 (toCLLong x5) cobj_x6 cobj_x7 (toCBool x8) (toCBool x9) (toCBool x10) (toCBool x11) (toCBool x12) (toCBool x13)

instance QqUrlInfo_nf ((String, Int, String, String, Int, QDateTime t6, QDateTime t7, Bool, Bool, Bool, Bool, Bool, Bool)) where
 qUrlInfo_nf (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QUrlInfo3 cstr_x1 (toCInt x2) cstr_x3 cstr_x4 (toCLLong x5) cobj_x6 cobj_x7 (toCBool x8) (toCBool x9) (toCBool x10) (toCBool x11) (toCBool x12) (toCBool x13)

qUrlInfoEqual :: ((QUrlInfo t1, QUrlInfo t2, Int)) -> IO (Bool)
qUrlInfoEqual (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUrlInfo_equal cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QUrlInfo_equal" qtc_QUrlInfo_equal :: Ptr (TQUrlInfo t1) -> Ptr (TQUrlInfo t2) -> CInt -> IO CBool

qUrlInfoGreaterThan :: ((QUrlInfo t1, QUrlInfo t2, Int)) -> IO (Bool)
qUrlInfoGreaterThan (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUrlInfo_greaterThan cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QUrlInfo_greaterThan" qtc_QUrlInfo_greaterThan :: Ptr (TQUrlInfo t1) -> Ptr (TQUrlInfo t2) -> CInt -> IO CBool

instance Qgroup (QUrlInfo a) (()) (IO (String)) where
 group x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_group cobj_x0

foreign import ccall "qtc_QUrlInfo_group" qtc_QUrlInfo_group :: Ptr (TQUrlInfo a) -> IO (Ptr (TQString ()))

instance QisDir (QUrlInfo a) (()) where
 isDir x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isDir cobj_x0

foreign import ccall "qtc_QUrlInfo_isDir" qtc_QUrlInfo_isDir :: Ptr (TQUrlInfo a) -> IO CBool

instance QisExecutable (QUrlInfo a) (()) where
 isExecutable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isExecutable cobj_x0

foreign import ccall "qtc_QUrlInfo_isExecutable" qtc_QUrlInfo_isExecutable :: Ptr (TQUrlInfo a) -> IO CBool

instance QisFile (QUrlInfo a) (()) where
 isFile x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isFile cobj_x0

foreign import ccall "qtc_QUrlInfo_isFile" qtc_QUrlInfo_isFile :: Ptr (TQUrlInfo a) -> IO CBool

instance QisReadable (QUrlInfo a) (()) where
 isReadable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isReadable cobj_x0

foreign import ccall "qtc_QUrlInfo_isReadable" qtc_QUrlInfo_isReadable :: Ptr (TQUrlInfo a) -> IO CBool

instance QisSymLink (QUrlInfo a) (()) where
 isSymLink x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isSymLink cobj_x0

foreign import ccall "qtc_QUrlInfo_isSymLink" qtc_QUrlInfo_isSymLink :: Ptr (TQUrlInfo a) -> IO CBool

instance QqisValid (QUrlInfo ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isValid cobj_x0

foreign import ccall "qtc_QUrlInfo_isValid" qtc_QUrlInfo_isValid :: Ptr (TQUrlInfo a) -> IO CBool

instance QqisValid (QUrlInfoSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isValid cobj_x0

instance QisWritable (QUrlInfo a) (()) where
 isWritable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_isWritable cobj_x0

foreign import ccall "qtc_QUrlInfo_isWritable" qtc_QUrlInfo_isWritable :: Ptr (TQUrlInfo a) -> IO CBool

instance QlastModified (QUrlInfo a) (()) where
 lastModified x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_lastModified cobj_x0

foreign import ccall "qtc_QUrlInfo_lastModified" qtc_QUrlInfo_lastModified :: Ptr (TQUrlInfo a) -> IO (Ptr (TQDateTime ()))

instance QlastRead (QUrlInfo a) (()) where
 lastRead x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_lastRead cobj_x0

foreign import ccall "qtc_QUrlInfo_lastRead" qtc_QUrlInfo_lastRead :: Ptr (TQUrlInfo a) -> IO (Ptr (TQDateTime ()))

qUrlInfoLessThan :: ((QUrlInfo t1, QUrlInfo t2, Int)) -> IO (Bool)
qUrlInfoLessThan (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUrlInfo_lessThan cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QUrlInfo_lessThan" qtc_QUrlInfo_lessThan :: Ptr (TQUrlInfo t1) -> Ptr (TQUrlInfo t2) -> CInt -> IO CBool

instance Qname (QUrlInfo a) (()) where
 name x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_name cobj_x0

foreign import ccall "qtc_QUrlInfo_name" qtc_QUrlInfo_name :: Ptr (TQUrlInfo a) -> IO (Ptr (TQString ()))

instance Qowner (QUrlInfo a) (()) where
 owner x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_owner cobj_x0

foreign import ccall "qtc_QUrlInfo_owner" qtc_QUrlInfo_owner :: Ptr (TQUrlInfo a) -> IO (Ptr (TQString ()))

instance Qpermissions (QUrlInfo a) (()) (IO (Int)) where
 permissions x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_permissions cobj_x0

foreign import ccall "qtc_QUrlInfo_permissions" qtc_QUrlInfo_permissions :: Ptr (TQUrlInfo a) -> IO CInt

class QsetDir x0 x1 where
 setDir :: x0 -> x1 -> IO ()

instance QsetDir (QUrlInfo ()) ((Bool)) where
 setDir x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setDir_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setDir_h" qtc_QUrlInfo_setDir_h :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetDir (QUrlInfoSc a) ((Bool)) where
 setDir x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setDir_h cobj_x0 (toCBool x1)

instance QsetFile (QUrlInfo ()) ((Bool)) where
 setFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setFile_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setFile_h" qtc_QUrlInfo_setFile_h :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetFile (QUrlInfoSc a) ((Bool)) where
 setFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setFile_h cobj_x0 (toCBool x1)

instance QsetGroup (QUrlInfo ()) ((String)) where
 setGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setGroup_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setGroup_h" qtc_QUrlInfo_setGroup_h :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetGroup (QUrlInfoSc a) ((String)) where
 setGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setGroup_h cobj_x0 cstr_x1

class QsetLastModified x0 x1 where
 setLastModified :: x0 -> x1 -> IO ()

instance QsetLastModified (QUrlInfo ()) ((QDateTime t1)) where
 setLastModified x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo_setLastModified_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUrlInfo_setLastModified_h" qtc_QUrlInfo_setLastModified_h :: Ptr (TQUrlInfo a) -> Ptr (TQDateTime t1) -> IO ()

instance QsetLastModified (QUrlInfoSc a) ((QDateTime t1)) where
 setLastModified x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrlInfo_setLastModified_h cobj_x0 cobj_x1

instance QsetName (QUrlInfo ()) ((String)) where
 setName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setName_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setName_h" qtc_QUrlInfo_setName_h :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetName (QUrlInfoSc a) ((String)) where
 setName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setName_h cobj_x0 cstr_x1

class QsetOwner x0 x1 where
 setOwner :: x0 -> x1 -> IO ()

instance QsetOwner (QUrlInfo ()) ((String)) where
 setOwner x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setOwner_h cobj_x0 cstr_x1

foreign import ccall "qtc_QUrlInfo_setOwner_h" qtc_QUrlInfo_setOwner_h :: Ptr (TQUrlInfo a) -> CWString -> IO ()

instance QsetOwner (QUrlInfoSc a) ((String)) where
 setOwner x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrlInfo_setOwner_h cobj_x0 cstr_x1

instance QsetPermissions (QUrlInfo ()) ((Int)) (IO ()) where
 setPermissions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setPermissions_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUrlInfo_setPermissions_h" qtc_QUrlInfo_setPermissions_h :: Ptr (TQUrlInfo a) -> CInt -> IO ()

instance QsetPermissions (QUrlInfoSc a) ((Int)) (IO ()) where
 setPermissions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setPermissions_h cobj_x0 (toCInt x1)

class QsetReadable x0 x1 where
 setReadable :: x0 -> x1 -> IO ()

instance QsetReadable (QUrlInfo ()) ((Bool)) where
 setReadable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setReadable_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setReadable_h" qtc_QUrlInfo_setReadable_h :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetReadable (QUrlInfoSc a) ((Bool)) where
 setReadable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setReadable_h cobj_x0 (toCBool x1)

instance QqsetSize (QUrlInfo ()) ((Int)) where
 qsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSize_h cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QUrlInfo_setSize_h" qtc_QUrlInfo_setSize_h :: Ptr (TQUrlInfo a) -> CLLong -> IO ()

instance QqsetSize (QUrlInfoSc a) ((Int)) where
 qsetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSize_h cobj_x0 (toCLLong x1)

class QsetSymLink x0 x1 where
 setSymLink :: x0 -> x1 -> IO ()

instance QsetSymLink (QUrlInfo ()) ((Bool)) where
 setSymLink x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSymLink_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setSymLink_h" qtc_QUrlInfo_setSymLink_h :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetSymLink (QUrlInfoSc a) ((Bool)) where
 setSymLink x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setSymLink_h cobj_x0 (toCBool x1)

class QsetWritable x0 x1 where
 setWritable :: x0 -> x1 -> IO ()

instance QsetWritable (QUrlInfo ()) ((Bool)) where
 setWritable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setWritable_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QUrlInfo_setWritable_h" qtc_QUrlInfo_setWritable_h :: Ptr (TQUrlInfo a) -> CBool -> IO ()

instance QsetWritable (QUrlInfoSc a) ((Bool)) where
 setWritable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_setWritable_h cobj_x0 (toCBool x1)

instance Qqsize (QUrlInfo a) (()) (IO (Int)) where
 qsize x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_size cobj_x0

foreign import ccall "qtc_QUrlInfo_size" qtc_QUrlInfo_size :: Ptr (TQUrlInfo a) -> IO CLLong

qUrlInfo_delete :: QUrlInfo a -> IO ()
qUrlInfo_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_delete cobj_x0

foreign import ccall "qtc_QUrlInfo_delete" qtc_QUrlInfo_delete :: Ptr (TQUrlInfo a) -> IO ()

qUrlInfo_delete1 :: QUrlInfo a -> IO ()
qUrlInfo_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrlInfo_delete1 cobj_x0

foreign import ccall "qtc_QUrlInfo_delete1" qtc_QUrlInfo_delete1 :: Ptr (TQUrlInfo a) -> IO ()

