{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCoreApplication.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QCoreApplication (
  qCoreApplicationAddLibraryPath
  ,qCoreApplicationApplicationDirPath
  ,qCoreApplicationApplicationFilePath
  ,qCoreApplicationApplicationName
  ,qCoreApplicationArgc
  ,qCoreApplicationArguments
  ,qCoreApplicationClosingDown
  ,qCoreApplicationExec
  ,QqCoreApplicationExit(..)
  ,qCoreApplicationFlush
  ,qCoreApplicationHasPendingEvents
  ,qCoreApplicationInstallTranslator
  ,qCoreApplicationInstance
  ,qCoreApplicationLibraryPaths
  ,qCoreApplicationOrganizationDomain
  ,qCoreApplicationOrganizationName
  ,QqCoreApplicationPostEvent(..)
  ,QqCoreApplicationProcessEvents(..)
  ,qCoreApplicationQuit
  ,qCoreApplicationRemoveLibraryPath
  ,QqCoreApplicationRemovePostedEvents(..)
  ,qCoreApplicationRemoveTranslator
  ,qCoreApplicationSendEvent
  ,QqCoreApplicationSendPostedEvents(..)
  ,qCoreApplicationSetApplicationName
  ,QqCoreApplicationSetAttribute(..)
  ,setEventFilter
  ,qCoreApplicationSetLibraryPaths
  ,qCoreApplicationSetOrganizationDomain
  ,qCoreApplicationSetOrganizationName
  ,qCoreApplicationStartingUp
  ,qCoreApplicationTestAttribute
  ,QqCoreApplicationTranslate(..)
  )
  where

import Foreign.C.Types

import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEventLoop
import Qtc.Enums.Core.QCoreApplication

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QCoreApplication ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCoreApplication_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QCoreApplication_userMethod" qtc_QCoreApplication_userMethod :: Ptr (TQCoreApplication a) -> CInt -> IO ()

instance QuserMethod (QCoreApplicationSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCoreApplication_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QCoreApplication ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCoreApplication_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QCoreApplication_userMethodVariant" qtc_QCoreApplication_userMethodVariant :: Ptr (TQCoreApplication a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QCoreApplicationSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCoreApplication_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qCoreApplicationAddLibraryPath :: ((String)) -> IO ()
qCoreApplicationAddLibraryPath (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_addLibraryPath cstr_x1

foreign import ccall "qtc_QCoreApplication_addLibraryPath" qtc_QCoreApplication_addLibraryPath :: CWString -> IO ()

qCoreApplicationApplicationDirPath :: (()) -> IO (String)
qCoreApplicationApplicationDirPath ()
  = withStringResult $
    qtc_QCoreApplication_applicationDirPath

foreign import ccall "qtc_QCoreApplication_applicationDirPath" qtc_QCoreApplication_applicationDirPath :: IO (Ptr (TQString ()))

qCoreApplicationApplicationFilePath :: (()) -> IO (String)
qCoreApplicationApplicationFilePath ()
  = withStringResult $
    qtc_QCoreApplication_applicationFilePath

foreign import ccall "qtc_QCoreApplication_applicationFilePath" qtc_QCoreApplication_applicationFilePath :: IO (Ptr (TQString ()))

qCoreApplicationApplicationName :: (()) -> IO (String)
qCoreApplicationApplicationName ()
  = withStringResult $
    qtc_QCoreApplication_applicationName

foreign import ccall "qtc_QCoreApplication_applicationName" qtc_QCoreApplication_applicationName :: IO (Ptr (TQString ()))

qCoreApplicationArgc :: (()) -> IO (QVoid ())
qCoreApplicationArgc ()
  = withObjectRefResult $
    qtc_QCoreApplication_argc

foreign import ccall "qtc_QCoreApplication_argc" qtc_QCoreApplication_argc :: IO (Ptr (TQVoid ()))

qCoreApplicationArguments :: (()) -> IO ([String])
qCoreApplicationArguments ()
  = withQListStringResult $ \arr ->
    qtc_QCoreApplication_arguments arr

foreign import ccall "qtc_QCoreApplication_arguments" qtc_QCoreApplication_arguments :: Ptr (Ptr (TQString ())) -> IO CInt

qCoreApplicationClosingDown :: (()) -> IO (Bool)
qCoreApplicationClosingDown ()
  = withBoolResult $
    qtc_QCoreApplication_closingDown

foreign import ccall "qtc_QCoreApplication_closingDown" qtc_QCoreApplication_closingDown :: IO CBool

instance Qevent (QCoreApplication ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_event cobj_x0 cobj_x1

foreign import ccall "qtc_QCoreApplication_event" qtc_QCoreApplication_event :: Ptr (TQCoreApplication a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QCoreApplicationSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_event cobj_x0 cobj_x1

qCoreApplicationExec :: (()) -> IO (Int)
qCoreApplicationExec ()
  = withIntResult $
    qtc_QCoreApplication_exec

foreign import ccall "qtc_QCoreApplication_exec" qtc_QCoreApplication_exec :: IO CInt

class QqCoreApplicationExit x1 where
 qCoreApplicationExit :: x1 -> IO ()

instance QqCoreApplicationExit (()) where
 qCoreApplicationExit ()
  = qtc_QCoreApplication_exit

foreign import ccall "qtc_QCoreApplication_exit" qtc_QCoreApplication_exit :: IO ()

instance QqCoreApplicationExit ((Int)) where
 qCoreApplicationExit (x1)
  = qtc_QCoreApplication_exit1 (toCInt x1)

foreign import ccall "qtc_QCoreApplication_exit1" qtc_QCoreApplication_exit1 :: CInt -> IO ()

qCoreApplicationFlush :: (()) -> IO ()
qCoreApplicationFlush ()
  = qtc_QCoreApplication_flush

foreign import ccall "qtc_QCoreApplication_flush" qtc_QCoreApplication_flush :: IO ()

qCoreApplicationHasPendingEvents :: (()) -> IO (Bool)
qCoreApplicationHasPendingEvents ()
  = withBoolResult $
    qtc_QCoreApplication_hasPendingEvents

foreign import ccall "qtc_QCoreApplication_hasPendingEvents" qtc_QCoreApplication_hasPendingEvents :: IO CBool

qCoreApplicationInstallTranslator :: ((QTranslator t1)) -> IO ()
qCoreApplicationInstallTranslator (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_installTranslator cobj_x1

foreign import ccall "qtc_QCoreApplication_installTranslator" qtc_QCoreApplication_installTranslator :: Ptr (TQTranslator t1) -> IO ()

qCoreApplicationInstance :: (()) -> IO (QCoreApplication ())
qCoreApplicationInstance ()
  = withQCoreApplicationResult $
    qtc_QCoreApplication_instance

foreign import ccall "qtc_QCoreApplication_instance" qtc_QCoreApplication_instance :: IO (Ptr (TQCoreApplication ()))

qCoreApplicationLibraryPaths :: (()) -> IO ([String])
qCoreApplicationLibraryPaths ()
  = withQListStringResult $ \arr ->
    qtc_QCoreApplication_libraryPaths arr

foreign import ccall "qtc_QCoreApplication_libraryPaths" qtc_QCoreApplication_libraryPaths :: Ptr (Ptr (TQString ())) -> IO CInt

instance Qnotify (QCoreApplication ()) ((QObject t1, QEvent t2)) where
 notify x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_notify_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCoreApplication_notify_h" qtc_QCoreApplication_notify_h :: Ptr (TQCoreApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance Qnotify (QCoreApplicationSc a) ((QObject t1, QEvent t2)) where
 notify x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_notify_h cobj_x0 cobj_x1 cobj_x2

qCoreApplicationOrganizationDomain :: (()) -> IO (String)
qCoreApplicationOrganizationDomain ()
  = withStringResult $
    qtc_QCoreApplication_organizationDomain

foreign import ccall "qtc_QCoreApplication_organizationDomain" qtc_QCoreApplication_organizationDomain :: IO (Ptr (TQString ()))

qCoreApplicationOrganizationName :: (()) -> IO (String)
qCoreApplicationOrganizationName ()
  = withStringResult $
    qtc_QCoreApplication_organizationName

foreign import ccall "qtc_QCoreApplication_organizationName" qtc_QCoreApplication_organizationName :: IO (Ptr (TQString ()))

class QqCoreApplicationPostEvent x1 where
 qCoreApplicationPostEvent :: x1 -> IO ()

instance QqCoreApplicationPostEvent ((QObject t1, QEvent t2)) where
 qCoreApplicationPostEvent (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_postEvent cobj_x1 cobj_x2

foreign import ccall "qtc_QCoreApplication_postEvent" qtc_QCoreApplication_postEvent :: Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO ()

instance QqCoreApplicationPostEvent ((QObject t1, QEvent t2, Int)) where
 qCoreApplicationPostEvent (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_postEvent1 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QCoreApplication_postEvent1" qtc_QCoreApplication_postEvent1 :: Ptr (TQObject t1) -> Ptr (TQEvent t2) -> CInt -> IO ()

class QqCoreApplicationProcessEvents x1 where
 qCoreApplicationProcessEvents :: x1 -> IO ()

instance QqCoreApplicationProcessEvents (()) where
 qCoreApplicationProcessEvents ()
  = qtc_QCoreApplication_processEvents

foreign import ccall "qtc_QCoreApplication_processEvents" qtc_QCoreApplication_processEvents :: IO ()

instance QqCoreApplicationProcessEvents ((ProcessEventsFlags)) where
 qCoreApplicationProcessEvents (x1)
  = qtc_QCoreApplication_processEvents1 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QCoreApplication_processEvents1" qtc_QCoreApplication_processEvents1 :: CLong -> IO ()

instance QqCoreApplicationProcessEvents ((ProcessEventsFlags, Int)) where
 qCoreApplicationProcessEvents (x1, x2)
  = qtc_QCoreApplication_processEvents2 (toCLong $ qFlags_toInt x1) (toCInt x2)

foreign import ccall "qtc_QCoreApplication_processEvents2" qtc_QCoreApplication_processEvents2 :: CLong -> CInt -> IO ()

qCoreApplicationQuit :: (()) -> IO ()
qCoreApplicationQuit ()
  = qtc_QCoreApplication_quit

foreign import ccall "qtc_QCoreApplication_quit" qtc_QCoreApplication_quit :: IO ()

qCoreApplicationRemoveLibraryPath :: ((String)) -> IO ()
qCoreApplicationRemoveLibraryPath (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_removeLibraryPath cstr_x1

foreign import ccall "qtc_QCoreApplication_removeLibraryPath" qtc_QCoreApplication_removeLibraryPath :: CWString -> IO ()

class QqCoreApplicationRemovePostedEvents x1 where
 qCoreApplicationRemovePostedEvents :: x1 -> IO ()

instance QqCoreApplicationRemovePostedEvents ((QObject t1)) where
 qCoreApplicationRemovePostedEvents (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_removePostedEvents cobj_x1

foreign import ccall "qtc_QCoreApplication_removePostedEvents" qtc_QCoreApplication_removePostedEvents :: Ptr (TQObject t1) -> IO ()

instance QqCoreApplicationRemovePostedEvents ((QObject t1, Int)) where
 qCoreApplicationRemovePostedEvents (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_removePostedEvents1 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QCoreApplication_removePostedEvents1" qtc_QCoreApplication_removePostedEvents1 :: Ptr (TQObject t1) -> CInt -> IO ()

qCoreApplicationRemoveTranslator :: ((QTranslator t1)) -> IO ()
qCoreApplicationRemoveTranslator (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_removeTranslator cobj_x1

foreign import ccall "qtc_QCoreApplication_removeTranslator" qtc_QCoreApplication_removeTranslator :: Ptr (TQTranslator t1) -> IO ()

qCoreApplicationSendEvent :: ((QObject t1, QEvent t2)) -> IO (Bool)
qCoreApplicationSendEvent (x1, x2)
  = withBoolResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_sendEvent cobj_x1 cobj_x2

foreign import ccall "qtc_QCoreApplication_sendEvent" qtc_QCoreApplication_sendEvent :: Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

class QqCoreApplicationSendPostedEvents x1 where
 qCoreApplicationSendPostedEvents :: x1 -> IO ()

instance QqCoreApplicationSendPostedEvents (()) where
 qCoreApplicationSendPostedEvents ()
  = qtc_QCoreApplication_sendPostedEvents

foreign import ccall "qtc_QCoreApplication_sendPostedEvents" qtc_QCoreApplication_sendPostedEvents :: IO ()

instance QqCoreApplicationSendPostedEvents ((QObject t1, Int)) where
 qCoreApplicationSendPostedEvents (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_sendPostedEvents1 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QCoreApplication_sendPostedEvents1" qtc_QCoreApplication_sendPostedEvents1 :: Ptr (TQObject t1) -> CInt -> IO ()

qCoreApplicationSetApplicationName :: ((String)) -> IO ()
qCoreApplicationSetApplicationName (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_setApplicationName cstr_x1

foreign import ccall "qtc_QCoreApplication_setApplicationName" qtc_QCoreApplication_setApplicationName :: CWString -> IO ()

class QqCoreApplicationSetAttribute x1 where
 qCoreApplicationSetAttribute :: x1 -> IO ()

instance QqCoreApplicationSetAttribute ((ApplicationAttribute)) where
 qCoreApplicationSetAttribute (x1)
  = qtc_QCoreApplication_setAttribute (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCoreApplication_setAttribute" qtc_QCoreApplication_setAttribute :: CLong -> IO ()

instance QqCoreApplicationSetAttribute ((ApplicationAttribute, Bool)) where
 qCoreApplicationSetAttribute (x1, x2)
  = qtc_QCoreApplication_setAttribute1 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QCoreApplication_setAttribute1" qtc_QCoreApplication_setAttribute1 :: CLong -> CBool -> IO ()

setEventFilter :: QCoreApplication a -> ((QVoid t1)) -> IO (QVoid ())
setEventFilter x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_setEventFilter cobj_x0 cobj_x1

foreign import ccall "qtc_QCoreApplication_setEventFilter" qtc_QCoreApplication_setEventFilter :: Ptr (TQCoreApplication a) -> Ptr (TQVoid t1) -> IO (Ptr (TQVoid ()))

qCoreApplicationSetLibraryPaths :: (([String])) -> IO ()
qCoreApplicationSetLibraryPaths (x1)
  = withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QCoreApplication_setLibraryPaths cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QCoreApplication_setLibraryPaths" qtc_QCoreApplication_setLibraryPaths :: CInt -> Ptr (Ptr CWchar) -> IO ()

qCoreApplicationSetOrganizationDomain :: ((String)) -> IO ()
qCoreApplicationSetOrganizationDomain (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_setOrganizationDomain cstr_x1

foreign import ccall "qtc_QCoreApplication_setOrganizationDomain" qtc_QCoreApplication_setOrganizationDomain :: CWString -> IO ()

qCoreApplicationSetOrganizationName :: ((String)) -> IO ()
qCoreApplicationSetOrganizationName (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_setOrganizationName cstr_x1

foreign import ccall "qtc_QCoreApplication_setOrganizationName" qtc_QCoreApplication_setOrganizationName :: CWString -> IO ()

qCoreApplicationStartingUp :: (()) -> IO (Bool)
qCoreApplicationStartingUp ()
  = withBoolResult $
    qtc_QCoreApplication_startingUp

foreign import ccall "qtc_QCoreApplication_startingUp" qtc_QCoreApplication_startingUp :: IO CBool

qCoreApplicationTestAttribute :: ((ApplicationAttribute)) -> IO (Bool)
qCoreApplicationTestAttribute (x1)
  = withBoolResult $
    qtc_QCoreApplication_testAttribute (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCoreApplication_testAttribute" qtc_QCoreApplication_testAttribute :: CLong -> IO CBool

class QqCoreApplicationTranslate x1 where
 qCoreApplicationTranslate :: x1 -> IO (String)

instance QqCoreApplicationTranslate ((String, String)) where
 qCoreApplicationTranslate (x1, x2)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QCoreApplication_translate cstr_x1 cstr_x2

foreign import ccall "qtc_QCoreApplication_translate" qtc_QCoreApplication_translate :: CWString -> CWString -> IO (Ptr (TQString ()))

instance QqCoreApplicationTranslate ((String, String, String)) where
 qCoreApplicationTranslate (x1, x2, x3)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QCoreApplication_translate1 cstr_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QCoreApplication_translate1" qtc_QCoreApplication_translate1 :: CWString -> CWString -> CWString -> IO (Ptr (TQString ()))

instance QqCoreApplicationTranslate ((String, String, String, Encoding)) where
 qCoreApplicationTranslate (x1, x2, x3, x4)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QCoreApplication_translate2 cstr_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QCoreApplication_translate2" qtc_QCoreApplication_translate2 :: CWString -> CWString -> CWString -> CLong -> IO (Ptr (TQString ()))

instance QqCoreApplicationTranslate ((String, String, String, Encoding, Int)) where
 qCoreApplicationTranslate (x1, x2, x3, x4, x5)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QCoreApplication_translate3 cstr_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4) (toCInt x5)

foreign import ccall "qtc_QCoreApplication_translate3" qtc_QCoreApplication_translate3 :: CWString -> CWString -> CWString -> CLong -> CInt -> IO (Ptr (TQString ()))

instance QchildEvent (QCoreApplication ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCoreApplication_childEvent" qtc_QCoreApplication_childEvent :: Ptr (TQCoreApplication a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QCoreApplicationSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QCoreApplication ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCoreApplication_connectNotify" qtc_QCoreApplication_connectNotify :: Ptr (TQCoreApplication a) -> CWString -> IO ()

instance QconnectNotify (QCoreApplicationSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QCoreApplication ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCoreApplication_customEvent" qtc_QCoreApplication_customEvent :: Ptr (TQCoreApplication a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QCoreApplicationSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QCoreApplication ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCoreApplication_disconnectNotify" qtc_QCoreApplication_disconnectNotify :: Ptr (TQCoreApplication a) -> CWString -> IO ()

instance QdisconnectNotify (QCoreApplicationSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QCoreApplication ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCoreApplication_eventFilter_h" qtc_QCoreApplication_eventFilter_h :: Ptr (TQCoreApplication a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QCoreApplicationSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCoreApplication_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QCoreApplication ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QCoreApplication_receivers" qtc_QCoreApplication_receivers :: Ptr (TQCoreApplication a) -> CWString -> IO CInt

instance Qreceivers (QCoreApplicationSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCoreApplication_receivers cobj_x0 cstr_x1

instance Qsender (QCoreApplication ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCoreApplication_sender cobj_x0

foreign import ccall "qtc_QCoreApplication_sender" qtc_QCoreApplication_sender :: Ptr (TQCoreApplication a) -> IO (Ptr (TQObject ()))

instance Qsender (QCoreApplicationSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCoreApplication_sender cobj_x0

instance QtimerEvent (QCoreApplication ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCoreApplication_timerEvent" qtc_QCoreApplication_timerEvent :: Ptr (TQCoreApplication a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QCoreApplicationSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCoreApplication_timerEvent cobj_x0 cobj_x1

