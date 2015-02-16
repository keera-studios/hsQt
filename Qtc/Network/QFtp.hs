{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFtp.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QFtp (
  QqFtp(..)
  ,clearPendingCommands
  ,currentCommand
  ,currentDevice
  ,hasPendingCommands
  ,Qlist(..)
  ,Qlogin(..)
  ,Qput(..)
  ,rawCommand
  ,setTransferMode
  ,qFtp_delete
  ,qFtp_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Network.QFtp

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QFtp ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFtp_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QFtp_userMethod" qtc_QFtp_userMethod :: Ptr (TQFtp a) -> CInt -> IO ()

instance QuserMethod (QFtpSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QFtp_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QFtp ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFtp_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QFtp_userMethodVariant" qtc_QFtp_userMethodVariant :: Ptr (TQFtp a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QFtpSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QFtp_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqFtp x1 where
  qFtp :: x1 -> IO (QFtp ())

instance QqFtp (()) where
 qFtp ()
  = withQFtpResult $
    qtc_QFtp

foreign import ccall "qtc_QFtp" qtc_QFtp :: IO (Ptr (TQFtp ()))

instance QqFtp ((QObject t1)) where
 qFtp (x1)
  = withQFtpResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp1 cobj_x1

foreign import ccall "qtc_QFtp1" qtc_QFtp1 :: Ptr (TQObject t1) -> IO (Ptr (TQFtp ()))

instance Qabort (QFtp a) (()) (IO ()) where
 abort x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_abort cobj_x0

foreign import ccall "qtc_QFtp_abort" qtc_QFtp_abort :: Ptr (TQFtp a) -> IO ()

instance QbytesAvailable (QFtp a) (()) where
 bytesAvailable x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_bytesAvailable cobj_x0

foreign import ccall "qtc_QFtp_bytesAvailable" qtc_QFtp_bytesAvailable :: Ptr (TQFtp a) -> IO CLLong

instance Qcd (QFtp a) ((String)) (IO (Int)) where
 cd x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_cd cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_cd" qtc_QFtp_cd :: Ptr (TQFtp a) -> CWString -> IO CInt

clearPendingCommands :: QFtp a -> (()) -> IO ()
clearPendingCommands x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_clearPendingCommands cobj_x0

foreign import ccall "qtc_QFtp_clearPendingCommands" qtc_QFtp_clearPendingCommands :: Ptr (TQFtp a) -> IO ()

instance Qclose (QFtp a) (()) (IO (Int)) where
 close x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_close cobj_x0

foreign import ccall "qtc_QFtp_close" qtc_QFtp_close :: Ptr (TQFtp a) -> IO CInt

instance QconnectToHost (QFtp a) ((String)) (IO (Int)) where
 connectToHost x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_connectToHost cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_connectToHost" qtc_QFtp_connectToHost :: Ptr (TQFtp a) -> CWString -> IO CInt

instance QconnectToHost (QFtp a) ((String, Int)) (IO (Int)) where
 connectToHost x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_connectToHost1 cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QFtp_connectToHost1" qtc_QFtp_connectToHost1 :: Ptr (TQFtp a) -> CWString -> CUShort -> IO CInt

currentCommand :: QFtp a -> (()) -> IO (Command)
currentCommand x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_currentCommand cobj_x0

foreign import ccall "qtc_QFtp_currentCommand" qtc_QFtp_currentCommand :: Ptr (TQFtp a) -> IO CLong

currentDevice :: QFtp a -> (()) -> IO (QIODevice ())
currentDevice x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_currentDevice cobj_x0

foreign import ccall "qtc_QFtp_currentDevice" qtc_QFtp_currentDevice :: Ptr (TQFtp a) -> IO (Ptr (TQIODevice ()))

instance QcurrentId (QFtp a) (()) where
 currentId x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_currentId cobj_x0

foreign import ccall "qtc_QFtp_currentId" qtc_QFtp_currentId :: Ptr (TQFtp a) -> IO CInt

instance Qqerror (QFtp a) (()) (IO (QFtpError)) where
 qerror x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_error cobj_x0

foreign import ccall "qtc_QFtp_error" qtc_QFtp_error :: Ptr (TQFtp a) -> IO CLong

instance QerrorString (QFtp a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_errorString cobj_x0

foreign import ccall "qtc_QFtp_errorString" qtc_QFtp_errorString :: Ptr (TQFtp a) -> IO (Ptr (TQString ()))

instance Qqget (QFtp a) ((String)) where
 qget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_get cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_get" qtc_QFtp_get :: Ptr (TQFtp a) -> CWString -> IO CInt

instance Qqget (QFtp a) ((String, QIODevice t2)) where
 qget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFtp_get1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QFtp_get1" qtc_QFtp_get1 :: Ptr (TQFtp a) -> CWString -> Ptr (TQIODevice t2) -> IO CInt

instance Qqget (QFtp a) ((String, QIODevice t2, TransferType)) where
 qget x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFtp_get2 cobj_x0 cstr_x1 cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QFtp_get2" qtc_QFtp_get2 :: Ptr (TQFtp a) -> CWString -> Ptr (TQIODevice t2) -> CLong -> IO CInt

hasPendingCommands :: QFtp a -> (()) -> IO (Bool)
hasPendingCommands x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_hasPendingCommands cobj_x0

foreign import ccall "qtc_QFtp_hasPendingCommands" qtc_QFtp_hasPendingCommands :: Ptr (TQFtp a) -> IO CBool

class Qlist x1 where
 list :: QFtp a -> x1 -> IO (Int)

instance Qlist (()) where
 list x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_list cobj_x0

foreign import ccall "qtc_QFtp_list" qtc_QFtp_list :: Ptr (TQFtp a) -> IO CInt

instance Qlist ((String)) where
 list x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_list1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_list1" qtc_QFtp_list1 :: Ptr (TQFtp a) -> CWString -> IO CInt

class Qlogin x1 where
 login :: QFtp a -> x1 -> IO (Int)

instance Qlogin (()) where
 login x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_login cobj_x0

foreign import ccall "qtc_QFtp_login" qtc_QFtp_login :: Ptr (TQFtp a) -> IO CInt

instance Qlogin ((String)) where
 login x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_login1 cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_login1" qtc_QFtp_login1 :: Ptr (TQFtp a) -> CWString -> IO CInt

instance Qlogin ((String, String)) where
 login x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_login2 cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFtp_login2" qtc_QFtp_login2 :: Ptr (TQFtp a) -> CWString -> CWString -> IO CInt

instance Qmkdir (QFtp a) ((String)) (IO (Int)) where
 mkdir x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_mkdir cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_mkdir" qtc_QFtp_mkdir :: Ptr (TQFtp a) -> CWString -> IO CInt

class Qput x1 where
 put :: QFtp a -> x1 -> IO (Int)

instance Qput ((QIODevice t1, String)) where
 put x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_put1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QFtp_put1" qtc_QFtp_put1 :: Ptr (TQFtp a) -> Ptr (TQIODevice t1) -> CWString -> IO CInt

instance Qput ((QIODevice t1, String, TransferType)) where
 put x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_put2 cobj_x0 cobj_x1 cstr_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QFtp_put2" qtc_QFtp_put2 :: Ptr (TQFtp a) -> Ptr (TQIODevice t1) -> CWString -> CLong -> IO CInt

instance Qput ((String, String)) where
 put x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_put cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFtp_put" qtc_QFtp_put :: Ptr (TQFtp a) -> CWString -> CWString -> IO CInt

instance Qput ((String, String, TransferType)) where
 put x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_put3 cobj_x0 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QFtp_put3" qtc_QFtp_put3 :: Ptr (TQFtp a) -> CWString -> CWString -> CLong -> IO CInt

rawCommand :: QFtp a -> ((String)) -> IO (Int)
rawCommand x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_rawCommand cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_rawCommand" qtc_QFtp_rawCommand :: Ptr (TQFtp a) -> CWString -> IO CInt

instance QreadAll (QFtp a) (()) where
 readAll x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_readAll cobj_x0

foreign import ccall "qtc_QFtp_readAll" qtc_QFtp_readAll :: Ptr (TQFtp a) -> IO (Ptr (TQString ()))

instance Qremove (QFtp a) ((String)) (IO (Int)) where
 remove x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_remove cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_remove" qtc_QFtp_remove :: Ptr (TQFtp a) -> CWString -> IO CInt

instance Qrename (QFtp a) ((String, String)) (IO (Int)) where
 rename x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QFtp_rename cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QFtp_rename" qtc_QFtp_rename :: Ptr (TQFtp a) -> CWString -> CWString -> IO CInt

instance Qrmdir (QFtp a) ((String)) (IO (Int)) where
 rmdir x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_rmdir cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_rmdir" qtc_QFtp_rmdir :: Ptr (TQFtp a) -> CWString -> IO CInt

instance QsetProxy (QFtp a) ((String, Int)) (IO (Int)) where
 setProxy x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_setProxy cobj_x0 cstr_x1 (toCUShort x2)

foreign import ccall "qtc_QFtp_setProxy" qtc_QFtp_setProxy :: Ptr (TQFtp a) -> CWString -> CUShort -> IO CInt

setTransferMode :: QFtp a -> ((TransferMode)) -> IO (Int)
setTransferMode x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_setTransferMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QFtp_setTransferMode" qtc_QFtp_setTransferMode :: Ptr (TQFtp a) -> CLong -> IO CInt

instance Qstate (QFtp a) (()) (IO (QFtpState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_state cobj_x0

foreign import ccall "qtc_QFtp_state" qtc_QFtp_state :: Ptr (TQFtp a) -> IO CLong

qFtp_delete :: QFtp a -> IO ()
qFtp_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_delete cobj_x0

foreign import ccall "qtc_QFtp_delete" qtc_QFtp_delete :: Ptr (TQFtp a) -> IO ()

qFtp_deleteLater :: QFtp a -> IO ()
qFtp_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_deleteLater cobj_x0

foreign import ccall "qtc_QFtp_deleteLater" qtc_QFtp_deleteLater :: Ptr (TQFtp a) -> IO ()

instance QchildEvent (QFtp ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFtp_childEvent" qtc_QFtp_childEvent :: Ptr (TQFtp a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QFtpSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QFtp ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_connectNotify" qtc_QFtp_connectNotify :: Ptr (TQFtp a) -> CWString -> IO ()

instance QconnectNotify (QFtpSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QFtp ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFtp_customEvent" qtc_QFtp_customEvent :: Ptr (TQFtp a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QFtpSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QFtp ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_disconnectNotify" qtc_QFtp_disconnectNotify :: Ptr (TQFtp a) -> CWString -> IO ()

instance QdisconnectNotify (QFtpSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QFtp ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QFtp_event_h" qtc_QFtp_event_h :: Ptr (TQFtp a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QFtpSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_event_h cobj_x0 cobj_x1

instance QeventFilter (QFtp ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFtp_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QFtp_eventFilter_h" qtc_QFtp_eventFilter_h :: Ptr (TQFtp a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QFtpSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QFtp_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QFtp ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QFtp_receivers" qtc_QFtp_receivers :: Ptr (TQFtp a) -> CWString -> IO CInt

instance Qreceivers (QFtpSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QFtp_receivers cobj_x0 cstr_x1

instance Qsender (QFtp ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_sender cobj_x0

foreign import ccall "qtc_QFtp_sender" qtc_QFtp_sender :: Ptr (TQFtp a) -> IO (Ptr (TQObject ()))

instance Qsender (QFtpSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFtp_sender cobj_x0

instance QtimerEvent (QFtp ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QFtp_timerEvent" qtc_QFtp_timerEvent :: Ptr (TQFtp a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QFtpSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFtp_timerEvent cobj_x0 cobj_x1

