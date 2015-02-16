{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFileDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFileDialog (
  QqFileDialog(..)
  ,acceptMode
  ,confirmOverwrite
  ,defaultSuffix
  ,directory
  ,fileMode
  ,filters
  ,QqFileDialogGetExistingDirectory(..)
  ,QqFileDialogGetOpenFileName(..)
  ,QqFileDialogGetOpenFileNames(..)
  ,QqFileDialogGetSaveFileName(..)
  ,history
  ,proxyModel
  ,selectFile
  ,selectFilter
  ,selectedFiles
  ,selectedFilter
  ,setAcceptMode
  ,setConfirmOverwrite
  ,setDefaultSuffix
  ,QsetDirectory(..)
  ,setFileMode
  ,setFilters
  ,setHistory
  ,setProxyModel
  ,sidebarUrls
  ,qFileDialog_delete
  ,qFileDialog_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QFileDialog

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QFileDialog ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFileDialog_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFileDialog_userMethod" qtc_QFileDialog_userMethod :: Ptr (TQFileDialog a) -> CInt -> IO ()

instance QuserMethod (QFileDialogSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFileDialog_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFileDialog ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFileDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFileDialog_userMethodVariant" qtc_QFileDialog_userMethodVariant :: Ptr (TQFileDialog a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFileDialogSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFileDialog_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFileDialog x1 where
  qFileDialog :: x1 -> IO (QFileDialog ())

instance QqFileDialog (()) where
 qFileDialog ()
  = withQFileDialogResult $
    qtc_QFileDialog

foreign import ccall "qtc_QFileDialog" qtc_QFileDialog :: IO (Ptr (TQFileDialog ()))

instance QqFileDialog ((QWidget t1)) where
 qFileDialog (x1)
  = withQFileDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog1 cobj_x1

foreign import ccall "qtc_QFileDialog1" qtc_QFileDialog1 :: Ptr (TQWidget t1) -> IO (Ptr (TQFileDialog ()))

instance QqFileDialog ((QWidget t1, String)) where
 qFileDialog (x1, x2)
  = withQFileDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog2 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileDialog2" qtc_QFileDialog2 :: Ptr (TQWidget t1) -> CWString -> IO (Ptr (TQFileDialog ()))

instance QqFileDialog ((QWidget t1, WindowFlags)) where
 qFileDialog (x1, x2)
  = withQFileDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog3 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QFileDialog3" qtc_QFileDialog3 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQFileDialog ()))

instance QqFileDialog ((QWidget t1, String, String)) where
 qFileDialog (x1, x2, x3)
  = withQFileDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog4 cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QFileDialog4" qtc_QFileDialog4 :: Ptr (TQWidget t1) -> CWString -> CWString -> IO (Ptr (TQFileDialog ()))

instance QqFileDialog ((QWidget t1, String, String, String)) where
 qFileDialog (x1, x2, x3, x4)
  = withQFileDialogResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QFileDialog5 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QFileDialog5" qtc_QFileDialog5 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO (Ptr (TQFileDialog ()))

instance Qaccept (QFileDialog ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_accept cobj_x0

foreign import ccall "qtc_QFileDialog_accept" qtc_QFileDialog_accept :: Ptr (TQFileDialog a) -> IO ()

instance Qaccept (QFileDialogSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_accept cobj_x0

acceptMode :: QFileDialog a -> (()) -> IO (AcceptMode)
acceptMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_acceptMode cobj_x0

foreign import ccall "qtc_QFileDialog_acceptMode" qtc_QFileDialog_acceptMode :: Ptr (TQFileDialog a) -> IO CLong

instance QchangeEvent (QFileDialog ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_changeEvent_h" qtc_QFileDialog_changeEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QFileDialogSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_changeEvent_h cobj_x0 cobj_x1

confirmOverwrite :: QFileDialog a -> (()) -> IO (Bool)
confirmOverwrite x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_confirmOverwrite cobj_x0

foreign import ccall "qtc_QFileDialog_confirmOverwrite" qtc_QFileDialog_confirmOverwrite :: Ptr (TQFileDialog a) -> IO CBool

defaultSuffix :: QFileDialog a -> (()) -> IO (String)
defaultSuffix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_defaultSuffix cobj_x0

foreign import ccall "qtc_QFileDialog_defaultSuffix" qtc_QFileDialog_defaultSuffix :: Ptr (TQFileDialog a) -> IO (Ptr (TQString ()))

directory :: QFileDialog a -> (()) -> IO (QDir ())
directory x0 ()
  = withQDirResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_directory cobj_x0

foreign import ccall "qtc_QFileDialog_directory" qtc_QFileDialog_directory :: Ptr (TQFileDialog a) -> IO (Ptr (TQDir ()))

instance Qdone (QFileDialog ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_done cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFileDialog_done" qtc_QFileDialog_done :: Ptr (TQFileDialog a) -> CInt -> IO ()

instance Qdone (QFileDialogSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_done cobj_x0 (toCInt x1)

fileMode :: QFileDialog a -> (()) -> IO (FileMode)
fileMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_fileMode cobj_x0

foreign import ccall "qtc_QFileDialog_fileMode" qtc_QFileDialog_fileMode :: Ptr (TQFileDialog a) -> IO CLong

filters :: QFileDialog a -> (()) -> IO ([String])
filters x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_filters cobj_x0 arr

foreign import ccall "qtc_QFileDialog_filters" qtc_QFileDialog_filters :: Ptr (TQFileDialog a) -> Ptr (Ptr (TQString ())) -> IO CInt

class QqFileDialogGetExistingDirectory x1 where
 qFileDialogGetExistingDirectory :: x1 -> IO (String)

instance QqFileDialogGetExistingDirectory (()) where
 qFileDialogGetExistingDirectory ()
  = withStringResult $
    qtc_QFileDialog_getExistingDirectory

foreign import ccall "qtc_QFileDialog_getExistingDirectory" qtc_QFileDialog_getExistingDirectory :: IO (Ptr (TQString ()))

instance QqFileDialogGetExistingDirectory ((QWidget t1)) where
 qFileDialogGetExistingDirectory (x1)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_getExistingDirectory1 cobj_x1

foreign import ccall "qtc_QFileDialog_getExistingDirectory1" qtc_QFileDialog_getExistingDirectory1 :: Ptr (TQWidget t1) -> IO (Ptr (TQString ()))

instance QqFileDialogGetExistingDirectory ((QWidget t1, String)) where
 qFileDialogGetExistingDirectory (x1, x2)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog_getExistingDirectory2 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileDialog_getExistingDirectory2" qtc_QFileDialog_getExistingDirectory2 :: Ptr (TQWidget t1) -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetExistingDirectory ((QWidget t1, String, String)) where
 qFileDialogGetExistingDirectory (x1, x2, x3)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog_getExistingDirectory3 cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QFileDialog_getExistingDirectory3" qtc_QFileDialog_getExistingDirectory3 :: Ptr (TQWidget t1) -> CWString -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetExistingDirectory ((QWidget t1, String, String, Options)) where
 qFileDialogGetExistingDirectory (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog_getExistingDirectory4 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QFileDialog_getExistingDirectory4" qtc_QFileDialog_getExistingDirectory4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO (Ptr (TQString ()))

class QqFileDialogGetOpenFileName x1 where
 qFileDialogGetOpenFileName :: x1 -> IO (String)

instance QqFileDialogGetOpenFileName (()) where
 qFileDialogGetOpenFileName ()
  = withStringResult $
    qtc_QFileDialog_getOpenFileName

foreign import ccall "qtc_QFileDialog_getOpenFileName" qtc_QFileDialog_getOpenFileName :: IO (Ptr (TQString ()))

instance QqFileDialogGetOpenFileName ((QWidget t1)) where
 qFileDialogGetOpenFileName (x1)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_getOpenFileName1 cobj_x1

foreign import ccall "qtc_QFileDialog_getOpenFileName1" qtc_QFileDialog_getOpenFileName1 :: Ptr (TQWidget t1) -> IO (Ptr (TQString ()))

instance QqFileDialogGetOpenFileName ((QWidget t1, String)) where
 qFileDialogGetOpenFileName (x1, x2)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog_getOpenFileName2 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileDialog_getOpenFileName2" qtc_QFileDialog_getOpenFileName2 :: Ptr (TQWidget t1) -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetOpenFileName ((QWidget t1, String, String)) where
 qFileDialogGetOpenFileName (x1, x2, x3)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog_getOpenFileName3 cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QFileDialog_getOpenFileName3" qtc_QFileDialog_getOpenFileName3 :: Ptr (TQWidget t1) -> CWString -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetOpenFileName ((QWidget t1, String, String, String)) where
 qFileDialogGetOpenFileName (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QFileDialog_getOpenFileName4 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QFileDialog_getOpenFileName4" qtc_QFileDialog_getOpenFileName4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO (Ptr (TQString ()))

class QqFileDialogGetOpenFileNames x1 where
 qFileDialogGetOpenFileNames :: x1 -> IO ([String])

instance QqFileDialogGetOpenFileNames (()) where
 qFileDialogGetOpenFileNames ()
  = withQListStringResult $ \arr ->
    qtc_QFileDialog_getOpenFileNames arr

foreign import ccall "qtc_QFileDialog_getOpenFileNames" qtc_QFileDialog_getOpenFileNames :: Ptr (Ptr (TQString ())) -> IO CInt

instance QqFileDialogGetOpenFileNames ((QWidget t1)) where
 qFileDialogGetOpenFileNames (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_getOpenFileNames1 cobj_x1 arr

foreign import ccall "qtc_QFileDialog_getOpenFileNames1" qtc_QFileDialog_getOpenFileNames1 :: Ptr (TQWidget t1) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QqFileDialogGetOpenFileNames ((QWidget t1, String)) where
 qFileDialogGetOpenFileNames (x1, x2)
  = withQListStringResult $ \arr ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog_getOpenFileNames2 cobj_x1 cstr_x2 arr

foreign import ccall "qtc_QFileDialog_getOpenFileNames2" qtc_QFileDialog_getOpenFileNames2 :: Ptr (TQWidget t1) -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

instance QqFileDialogGetOpenFileNames ((QWidget t1, String, String)) where
 qFileDialogGetOpenFileNames (x1, x2, x3)
  = withQListStringResult $ \arr ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog_getOpenFileNames3 cobj_x1 cstr_x2 cstr_x3 arr

foreign import ccall "qtc_QFileDialog_getOpenFileNames3" qtc_QFileDialog_getOpenFileNames3 :: Ptr (TQWidget t1) -> CWString -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

instance QqFileDialogGetOpenFileNames ((QWidget t1, String, String, String)) where
 qFileDialogGetOpenFileNames (x1, x2, x3, x4)
  = withQListStringResult $ \arr ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QFileDialog_getOpenFileNames4 cobj_x1 cstr_x2 cstr_x3 cstr_x4 arr

foreign import ccall "qtc_QFileDialog_getOpenFileNames4" qtc_QFileDialog_getOpenFileNames4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

class QqFileDialogGetSaveFileName x1 where
 qFileDialogGetSaveFileName :: x1 -> IO (String)

instance QqFileDialogGetSaveFileName (()) where
 qFileDialogGetSaveFileName ()
  = withStringResult $
    qtc_QFileDialog_getSaveFileName

foreign import ccall "qtc_QFileDialog_getSaveFileName" qtc_QFileDialog_getSaveFileName :: IO (Ptr (TQString ()))

instance QqFileDialogGetSaveFileName ((QWidget t1)) where
 qFileDialogGetSaveFileName (x1)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_getSaveFileName1 cobj_x1

foreign import ccall "qtc_QFileDialog_getSaveFileName1" qtc_QFileDialog_getSaveFileName1 :: Ptr (TQWidget t1) -> IO (Ptr (TQString ()))

instance QqFileDialogGetSaveFileName ((QWidget t1, String)) where
 qFileDialogGetSaveFileName (x1, x2)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog_getSaveFileName2 cobj_x1 cstr_x2

foreign import ccall "qtc_QFileDialog_getSaveFileName2" qtc_QFileDialog_getSaveFileName2 :: Ptr (TQWidget t1) -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetSaveFileName ((QWidget t1, String, String)) where
 qFileDialogGetSaveFileName (x1, x2, x3)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QFileDialog_getSaveFileName3 cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QFileDialog_getSaveFileName3" qtc_QFileDialog_getSaveFileName3 :: Ptr (TQWidget t1) -> CWString -> CWString -> IO (Ptr (TQString ()))

instance QqFileDialogGetSaveFileName ((QWidget t1, String, String, String)) where
 qFileDialogGetSaveFileName (x1, x2, x3, x4)
  = withStringResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QFileDialog_getSaveFileName4 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QFileDialog_getSaveFileName4" qtc_QFileDialog_getSaveFileName4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO (Ptr (TQString ()))

history :: QFileDialog a -> (()) -> IO ([String])
history x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_history cobj_x0 arr

foreign import ccall "qtc_QFileDialog_history" qtc_QFileDialog_history :: Ptr (TQFileDialog a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QisReadOnly (QFileDialog a) (()) where
 isReadOnly x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_isReadOnly cobj_x0

foreign import ccall "qtc_QFileDialog_isReadOnly" qtc_QFileDialog_isReadOnly :: Ptr (TQFileDialog a) -> IO CBool

instance QitemDelegate (QFileDialog a) (()) where
 itemDelegate x0 ()
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_itemDelegate cobj_x0

foreign import ccall "qtc_QFileDialog_itemDelegate" qtc_QFileDialog_itemDelegate :: Ptr (TQFileDialog a) -> IO (Ptr (TQAbstractItemDelegate ()))

instance QlabelText (QFileDialog a) ((DialogLabel)) where
 labelText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_labelText cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_labelText" qtc_QFileDialog_labelText :: Ptr (TQFileDialog a) -> CLong -> IO (Ptr (TQString ()))

proxyModel :: QFileDialog a -> (()) -> IO (QAbstractProxyModel ())
proxyModel x0 ()
  = withQAbstractProxyModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_proxyModel cobj_x0

foreign import ccall "qtc_QFileDialog_proxyModel" qtc_QFileDialog_proxyModel :: Ptr (TQFileDialog a) -> IO (Ptr (TQAbstractProxyModel ()))

instance QresolveSymlinks (QFileDialog a) (()) where
 resolveSymlinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_resolveSymlinks cobj_x0

foreign import ccall "qtc_QFileDialog_resolveSymlinks" qtc_QFileDialog_resolveSymlinks :: Ptr (TQFileDialog a) -> IO CBool

instance QrestoreState (QFileDialog a) ((QByteArray ())) where
 restoreState x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_restoreState cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_restoreState" qtc_QFileDialog_restoreState :: Ptr (TQFileDialog a) -> Ptr (TQByteArray ()) -> IO CBool

instance QsaveState (QFileDialog a) (()) where
 saveState x0 ()
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_saveState cobj_x0

foreign import ccall "qtc_QFileDialog_saveState" qtc_QFileDialog_saveState :: Ptr (TQFileDialog a) -> IO (Ptr (TQByteArray ()))

selectFile :: QFileDialog a -> ((String)) -> IO ()
selectFile x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_selectFile cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_selectFile" qtc_QFileDialog_selectFile :: Ptr (TQFileDialog a) -> CWString -> IO ()

selectFilter :: QFileDialog a -> ((String)) -> IO ()
selectFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_selectFilter cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_selectFilter" qtc_QFileDialog_selectFilter :: Ptr (TQFileDialog a) -> CWString -> IO ()

selectedFiles :: QFileDialog a -> (()) -> IO ([String])
selectedFiles x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_selectedFiles cobj_x0 arr

foreign import ccall "qtc_QFileDialog_selectedFiles" qtc_QFileDialog_selectedFiles :: Ptr (TQFileDialog a) -> Ptr (Ptr (TQString ())) -> IO CInt

selectedFilter :: QFileDialog a -> (()) -> IO (String)
selectedFilter x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_selectedFilter cobj_x0

foreign import ccall "qtc_QFileDialog_selectedFilter" qtc_QFileDialog_selectedFilter :: Ptr (TQFileDialog a) -> IO (Ptr (TQString ()))

setAcceptMode :: QFileDialog a -> ((AcceptMode)) -> IO ()
setAcceptMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setAcceptMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_setAcceptMode" qtc_QFileDialog_setAcceptMode :: Ptr (TQFileDialog a) -> CLong -> IO ()

setConfirmOverwrite :: QFileDialog a -> ((Bool)) -> IO ()
setConfirmOverwrite x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setConfirmOverwrite cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_setConfirmOverwrite" qtc_QFileDialog_setConfirmOverwrite :: Ptr (TQFileDialog a) -> CBool -> IO ()

setDefaultSuffix :: QFileDialog a -> ((String)) -> IO ()
setDefaultSuffix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_setDefaultSuffix cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_setDefaultSuffix" qtc_QFileDialog_setDefaultSuffix :: Ptr (TQFileDialog a) -> CWString -> IO ()

class QsetDirectory x1 where
 setDirectory :: QFileDialog a -> x1 -> IO ()

instance QsetDirectory ((QDir t1)) where
 setDirectory x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_setDirectory cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_setDirectory" qtc_QFileDialog_setDirectory :: Ptr (TQFileDialog a) -> Ptr (TQDir t1) -> IO ()

instance QsetDirectory ((String)) where
 setDirectory x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_setDirectory1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_setDirectory1" qtc_QFileDialog_setDirectory1 :: Ptr (TQFileDialog a) -> CWString -> IO ()

setFileMode :: QFileDialog a -> ((FileMode)) -> IO ()
setFileMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setFileMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_setFileMode" qtc_QFileDialog_setFileMode :: Ptr (TQFileDialog a) -> CLong -> IO ()

instance QsetFilter (QFileDialog a) ((String)) where
 setFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_setFilter cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_setFilter" qtc_QFileDialog_setFilter :: Ptr (TQFileDialog a) -> CWString -> IO ()

setFilters :: QFileDialog a -> (([String])) -> IO ()
setFilters x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QFileDialog_setFilters cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QFileDialog_setFilters" qtc_QFileDialog_setFilters :: Ptr (TQFileDialog a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

setHistory :: QFileDialog a -> (([String])) -> IO ()
setHistory x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QFileDialog_setHistory cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QFileDialog_setHistory" qtc_QFileDialog_setHistory :: Ptr (TQFileDialog a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetItemDelegate (QFileDialog a) ((QAbstractItemDelegate t1)) where
 setItemDelegate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_setItemDelegate cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_setItemDelegate" qtc_QFileDialog_setItemDelegate :: Ptr (TQFileDialog a) -> Ptr (TQAbstractItemDelegate t1) -> IO ()

instance QsetLabelText (QFileDialog a) ((DialogLabel, String)) where
 setLabelText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFileDialog_setLabelText cobj_x0 (toCLong $ qEnum_toInt x1) cstr_x2

foreign import ccall "qtc_QFileDialog_setLabelText" qtc_QFileDialog_setLabelText :: Ptr (TQFileDialog a) -> CLong -> CWString -> IO ()

setProxyModel :: QFileDialog a -> ((QAbstractProxyModel t1)) -> IO ()
setProxyModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_setProxyModel cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_setProxyModel" qtc_QFileDialog_setProxyModel :: Ptr (TQFileDialog a) -> Ptr (TQAbstractProxyModel t1) -> IO ()

instance QsetReadOnly (QFileDialog a) ((Bool)) where
 setReadOnly x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setReadOnly cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_setReadOnly" qtc_QFileDialog_setReadOnly :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QsetResolveSymlinks (QFileDialog a) ((Bool)) where
 setResolveSymlinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setResolveSymlinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_setResolveSymlinks" qtc_QFileDialog_setResolveSymlinks :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QsetViewMode (QFileDialog a) ((QFileDialogViewMode)) where
 setViewMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setViewMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_setViewMode" qtc_QFileDialog_setViewMode :: Ptr (TQFileDialog a) -> CLong -> IO ()

sidebarUrls :: QFileDialog a -> (()) -> IO ([QUrl ()])
sidebarUrls x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sidebarUrls cobj_x0 arr

foreign import ccall "qtc_QFileDialog_sidebarUrls" qtc_QFileDialog_sidebarUrls :: Ptr (TQFileDialog a) -> Ptr (Ptr (TQUrl ())) -> IO CInt

instance QviewMode (QFileDialog a) (()) (IO (QFileDialogViewMode)) where
 viewMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_viewMode cobj_x0

foreign import ccall "qtc_QFileDialog_viewMode" qtc_QFileDialog_viewMode :: Ptr (TQFileDialog a) -> IO CLong

qFileDialog_delete :: QFileDialog a -> IO ()
qFileDialog_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_delete cobj_x0

foreign import ccall "qtc_QFileDialog_delete" qtc_QFileDialog_delete :: Ptr (TQFileDialog a) -> IO ()

qFileDialog_deleteLater :: QFileDialog a -> IO ()
qFileDialog_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_deleteLater cobj_x0

foreign import ccall "qtc_QFileDialog_deleteLater" qtc_QFileDialog_deleteLater :: Ptr (TQFileDialog a) -> IO ()

instance QadjustPosition (QFileDialog ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_adjustPosition" qtc_QFileDialog_adjustPosition :: Ptr (TQFileDialog a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QFileDialogSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_adjustPosition cobj_x0 cobj_x1

instance QcloseEvent (QFileDialog ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_closeEvent_h" qtc_QFileDialog_closeEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QFileDialogSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QFileDialog ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_contextMenuEvent_h" qtc_QFileDialog_contextMenuEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QFileDialogSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_contextMenuEvent_h cobj_x0 cobj_x1

instance Qevent (QFileDialog ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_event_h" qtc_QFileDialog_event_h :: Ptr (TQFileDialog a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFileDialogSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_event_h cobj_x0 cobj_x1

instance QeventFilter (QFileDialog ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFileDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFileDialog_eventFilter" qtc_QFileDialog_eventFilter :: Ptr (TQFileDialog a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFileDialogSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFileDialog_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QkeyPressEvent (QFileDialog ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_keyPressEvent_h" qtc_QFileDialog_keyPressEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QFileDialogSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QFileDialog ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QFileDialog_minimumSizeHint_h" qtc_QFileDialog_minimumSizeHint_h :: Ptr (TQFileDialog a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QFileDialogSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QFileDialog ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFileDialog_minimumSizeHint_qth_h" qtc_QFileDialog_minimumSizeHint_qth_h :: Ptr (TQFileDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QFileDialogSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QFileDialog ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_reject_h cobj_x0

foreign import ccall "qtc_QFileDialog_reject_h" qtc_QFileDialog_reject_h :: Ptr (TQFileDialog a) -> IO ()

instance Qreject (QFileDialogSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_reject_h cobj_x0

instance QresizeEvent (QFileDialog ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_resizeEvent_h" qtc_QFileDialog_resizeEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QFileDialogSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_resizeEvent_h cobj_x0 cobj_x1

instance QsetVisible (QFileDialog ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_setVisible_h" qtc_QFileDialog_setVisible_h :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QsetVisible (QFileDialogSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QFileDialog ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_showEvent_h" qtc_QFileDialog_showEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QFileDialogSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QFileDialog ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sizeHint_h cobj_x0

foreign import ccall "qtc_QFileDialog_sizeHint_h" qtc_QFileDialog_sizeHint_h :: Ptr (TQFileDialog a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QFileDialogSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sizeHint_h cobj_x0

instance QsizeHint (QFileDialog ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QFileDialog_sizeHint_qth_h" qtc_QFileDialog_sizeHint_qth_h :: Ptr (TQFileDialog a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QFileDialogSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QFileDialog ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_actionEvent_h" qtc_QFileDialog_actionEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QFileDialogSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QFileDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_addAction" qtc_QFileDialog_addAction :: Ptr (TQFileDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QFileDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_addAction cobj_x0 cobj_x1

instance Qcreate (QFileDialog ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_create cobj_x0

foreign import ccall "qtc_QFileDialog_create" qtc_QFileDialog_create :: Ptr (TQFileDialog a) -> IO ()

instance Qcreate (QFileDialogSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_create cobj_x0

instance Qcreate (QFileDialog ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_create1" qtc_QFileDialog_create1 :: Ptr (TQFileDialog a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QFileDialogSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create1 cobj_x0 cobj_x1

instance Qcreate (QFileDialog ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QFileDialog_create2" qtc_QFileDialog_create2 :: Ptr (TQFileDialog a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QFileDialogSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QFileDialog ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QFileDialog_create3" qtc_QFileDialog_create3 :: Ptr (TQFileDialog a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QFileDialogSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QFileDialog ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy cobj_x0

foreign import ccall "qtc_QFileDialog_destroy" qtc_QFileDialog_destroy :: Ptr (TQFileDialog a) -> IO ()

instance Qdestroy (QFileDialogSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy cobj_x0

instance Qdestroy (QFileDialog ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_destroy1" qtc_QFileDialog_destroy1 :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance Qdestroy (QFileDialogSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QFileDialog ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QFileDialog_destroy2" qtc_QFileDialog_destroy2 :: Ptr (TQFileDialog a) -> CBool -> CBool -> IO ()

instance Qdestroy (QFileDialogSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QFileDialog ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_devType_h cobj_x0

foreign import ccall "qtc_QFileDialog_devType_h" qtc_QFileDialog_devType_h :: Ptr (TQFileDialog a) -> IO CInt

instance QdevType (QFileDialogSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_devType_h cobj_x0

instance QdragEnterEvent (QFileDialog ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_dragEnterEvent_h" qtc_QFileDialog_dragEnterEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QFileDialogSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QFileDialog ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_dragLeaveEvent_h" qtc_QFileDialog_dragLeaveEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QFileDialogSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QFileDialog ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_dragMoveEvent_h" qtc_QFileDialog_dragMoveEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QFileDialogSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QFileDialog ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_dropEvent_h" qtc_QFileDialog_dropEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QFileDialogSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QFileDialog ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_enabledChange" qtc_QFileDialog_enabledChange :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QenabledChange (QFileDialogSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QFileDialog ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_enterEvent_h" qtc_QFileDialog_enterEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QFileDialogSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QFileDialog ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_focusInEvent_h" qtc_QFileDialog_focusInEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QFileDialogSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QFileDialog ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusNextChild cobj_x0

foreign import ccall "qtc_QFileDialog_focusNextChild" qtc_QFileDialog_focusNextChild :: Ptr (TQFileDialog a) -> IO CBool

instance QfocusNextChild (QFileDialogSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusNextChild cobj_x0

instance QfocusNextPrevChild (QFileDialog ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_focusNextPrevChild" qtc_QFileDialog_focusNextPrevChild :: Ptr (TQFileDialog a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QFileDialogSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QFileDialog ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_focusOutEvent_h" qtc_QFileDialog_focusOutEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QFileDialogSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QFileDialog ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusPreviousChild cobj_x0

foreign import ccall "qtc_QFileDialog_focusPreviousChild" qtc_QFileDialog_focusPreviousChild :: Ptr (TQFileDialog a) -> IO CBool

instance QfocusPreviousChild (QFileDialogSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_focusPreviousChild cobj_x0

instance QfontChange (QFileDialog ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_fontChange" qtc_QFileDialog_fontChange :: Ptr (TQFileDialog a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QFileDialogSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QFileDialog ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QFileDialog_heightForWidth_h" qtc_QFileDialog_heightForWidth_h :: Ptr (TQFileDialog a) -> CInt -> IO CInt

instance QheightForWidth (QFileDialogSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QFileDialog ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_hideEvent_h" qtc_QFileDialog_hideEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QFileDialogSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QFileDialog ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_inputMethodEvent" qtc_QFileDialog_inputMethodEvent :: Ptr (TQFileDialog a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QFileDialogSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QFileDialog ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_inputMethodQuery_h" qtc_QFileDialog_inputMethodQuery_h :: Ptr (TQFileDialog a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QFileDialogSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QFileDialog ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_keyReleaseEvent_h" qtc_QFileDialog_keyReleaseEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QFileDialogSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QFileDialog ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_languageChange cobj_x0

foreign import ccall "qtc_QFileDialog_languageChange" qtc_QFileDialog_languageChange :: Ptr (TQFileDialog a) -> IO ()

instance QlanguageChange (QFileDialogSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_languageChange cobj_x0

instance QleaveEvent (QFileDialog ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_leaveEvent_h" qtc_QFileDialog_leaveEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QFileDialogSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QFileDialog ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFileDialog_metric" qtc_QFileDialog_metric :: Ptr (TQFileDialog a) -> CLong -> IO CInt

instance Qmetric (QFileDialogSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QFileDialog ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_mouseDoubleClickEvent_h" qtc_QFileDialog_mouseDoubleClickEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QFileDialogSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QFileDialog ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_mouseMoveEvent_h" qtc_QFileDialog_mouseMoveEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QFileDialogSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QFileDialog ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_mousePressEvent_h" qtc_QFileDialog_mousePressEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QFileDialogSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QFileDialog ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_mouseReleaseEvent_h" qtc_QFileDialog_mouseReleaseEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QFileDialogSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QFileDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFileDialog_move1" qtc_QFileDialog_move1 :: Ptr (TQFileDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QFileDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QFileDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFileDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QFileDialog_move_qth" qtc_QFileDialog_move_qth :: Ptr (TQFileDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QFileDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFileDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QFileDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_move" qtc_QFileDialog_move :: Ptr (TQFileDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QFileDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_move cobj_x0 cobj_x1

instance QmoveEvent (QFileDialog ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_moveEvent_h" qtc_QFileDialog_moveEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QFileDialogSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QFileDialog ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_paintEngine_h cobj_x0

foreign import ccall "qtc_QFileDialog_paintEngine_h" qtc_QFileDialog_paintEngine_h :: Ptr (TQFileDialog a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QFileDialogSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_paintEngine_h cobj_x0

instance QpaintEvent (QFileDialog ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_paintEvent_h" qtc_QFileDialog_paintEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QFileDialogSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QFileDialog ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_paletteChange" qtc_QFileDialog_paletteChange :: Ptr (TQFileDialog a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QFileDialogSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QFileDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_repaint cobj_x0

foreign import ccall "qtc_QFileDialog_repaint" qtc_QFileDialog_repaint :: Ptr (TQFileDialog a) -> IO ()

instance Qrepaint (QFileDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_repaint cobj_x0

instance Qrepaint (QFileDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFileDialog_repaint2" qtc_QFileDialog_repaint2 :: Ptr (TQFileDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QFileDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QFileDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_repaint1" qtc_QFileDialog_repaint1 :: Ptr (TQFileDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QFileDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QFileDialog ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_resetInputContext cobj_x0

foreign import ccall "qtc_QFileDialog_resetInputContext" qtc_QFileDialog_resetInputContext :: Ptr (TQFileDialog a) -> IO ()

instance QresetInputContext (QFileDialogSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_resetInputContext cobj_x0

instance Qresize (QFileDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFileDialog_resize1" qtc_QFileDialog_resize1 :: Ptr (TQFileDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QFileDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QFileDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_resize" qtc_QFileDialog_resize :: Ptr (TQFileDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QFileDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_resize cobj_x0 cobj_x1

instance Qresize (QFileDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFileDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QFileDialog_resize_qth" qtc_QFileDialog_resize_qth :: Ptr (TQFileDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QFileDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFileDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QFileDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFileDialog_setGeometry1" qtc_QFileDialog_setGeometry1 :: Ptr (TQFileDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFileDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QFileDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_setGeometry" qtc_QFileDialog_setGeometry :: Ptr (TQFileDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QFileDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QFileDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFileDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFileDialog_setGeometry_qth" qtc_QFileDialog_setGeometry_qth :: Ptr (TQFileDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFileDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFileDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QFileDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_setMouseTracking" qtc_QFileDialog_setMouseTracking :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QFileDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QFileDialog ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_tabletEvent_h" qtc_QFileDialog_tabletEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QFileDialogSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QFileDialog ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_updateMicroFocus cobj_x0

foreign import ccall "qtc_QFileDialog_updateMicroFocus" qtc_QFileDialog_updateMicroFocus :: Ptr (TQFileDialog a) -> IO ()

instance QupdateMicroFocus (QFileDialogSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_updateMicroFocus cobj_x0

instance QwheelEvent (QFileDialog ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_wheelEvent_h" qtc_QFileDialog_wheelEvent_h :: Ptr (TQFileDialog a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QFileDialogSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QFileDialog ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFileDialog_windowActivationChange" qtc_QFileDialog_windowActivationChange :: Ptr (TQFileDialog a) -> CBool -> IO ()

instance QwindowActivationChange (QFileDialogSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QFileDialog ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_childEvent" qtc_QFileDialog_childEvent :: Ptr (TQFileDialog a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFileDialogSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFileDialog ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_connectNotify" qtc_QFileDialog_connectNotify :: Ptr (TQFileDialog a) -> CWString -> IO ()

instance QconnectNotify (QFileDialogSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFileDialog ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_customEvent" qtc_QFileDialog_customEvent :: Ptr (TQFileDialog a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFileDialogSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFileDialog ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_disconnectNotify" qtc_QFileDialog_disconnectNotify :: Ptr (TQFileDialog a) -> CWString -> IO ()

instance QdisconnectNotify (QFileDialogSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QFileDialog ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFileDialog_receivers" qtc_QFileDialog_receivers :: Ptr (TQFileDialog a) -> CWString -> IO CInt

instance Qreceivers (QFileDialogSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFileDialog_receivers cobj_x0 cstr_x1

instance Qsender (QFileDialog ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sender cobj_x0

foreign import ccall "qtc_QFileDialog_sender" qtc_QFileDialog_sender :: Ptr (TQFileDialog a) -> IO (Ptr (TQObject ()))

instance Qsender (QFileDialogSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFileDialog_sender cobj_x0

instance QtimerEvent (QFileDialog ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFileDialog_timerEvent" qtc_QFileDialog_timerEvent :: Ptr (TQFileDialog a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFileDialogSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFileDialog_timerEvent cobj_x0 cobj_x1

