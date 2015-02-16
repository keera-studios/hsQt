{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDataStream.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QDataStream (
  QqDataStream(..)
  ,QqDataStream_nf(..)
  ,byteOrder
  ,setByteOrder
  ,skipRawData
  ,unsetDevice
  ,qDataStream_delete
  ,read_qint8
  ,read_qint32
  ,read_Bool
  ,read_String
  ,write_qint8
  ,write_qint32
  ,write_Bool
  ,write_String
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QIODevice
import Qtc.Enums.Core.QDataStream

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqDataStream x1 where
  qDataStream :: x1 -> IO (QDataStream ())

instance QqDataStream (()) where
 qDataStream ()
  = withQDataStreamResult $
    qtc_QDataStream

foreign import ccall "qtc_QDataStream" qtc_QDataStream :: IO (Ptr (TQDataStream ()))

instance QqDataStream ((QIODevice t1)) where
 qDataStream (x1)
  = withQDataStreamResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream1 cobj_x1

foreign import ccall "qtc_QDataStream1" qtc_QDataStream1 :: Ptr (TQIODevice t1) -> IO (Ptr (TQDataStream ()))

instance QqDataStream ((QByteArray t1, OpenMode)) where
 qDataStream (x1, x2)
  = withQDataStreamResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QDataStream2" qtc_QDataStream2 :: Ptr (TQByteArray t1) -> CLong -> IO (Ptr (TQDataStream ()))

instance QqDataStream ((QByteArray t1)) where
 qDataStream (x1)
  = withQDataStreamResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream3 cobj_x1

foreign import ccall "qtc_QDataStream3" qtc_QDataStream3 :: Ptr (TQByteArray t1) -> IO (Ptr (TQDataStream ()))

class QqDataStream_nf x1 where
  qDataStream_nf :: x1 -> IO (QDataStream ())

instance QqDataStream_nf (()) where
 qDataStream_nf ()
  = withObjectRefResult $
    qtc_QDataStream

instance QqDataStream_nf ((QIODevice t1)) where
 qDataStream_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream1 cobj_x1

instance QqDataStream_nf ((QByteArray t1, OpenMode)) where
 qDataStream_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream2 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QqDataStream_nf ((QByteArray t1)) where
 qDataStream_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream3 cobj_x1

instance QatEnd (QDataStream a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_atEnd cobj_x0

foreign import ccall "qtc_QDataStream_atEnd" qtc_QDataStream_atEnd :: Ptr (TQDataStream a) -> IO CBool

byteOrder :: QDataStream a -> (()) -> IO (ByteOrder)
byteOrder x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_byteOrder cobj_x0

foreign import ccall "qtc_QDataStream_byteOrder" qtc_QDataStream_byteOrder :: Ptr (TQDataStream a) -> IO CLong

instance Qdevice (QDataStream a) (()) (IO (QIODevice ())) where
 device x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_device cobj_x0

foreign import ccall "qtc_QDataStream_device" qtc_QDataStream_device :: Ptr (TQDataStream a) -> IO (Ptr (TQIODevice ()))

instance QresetStatus (QDataStream a) (()) where
 resetStatus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_resetStatus cobj_x0

foreign import ccall "qtc_QDataStream_resetStatus" qtc_QDataStream_resetStatus :: Ptr (TQDataStream a) -> IO ()

setByteOrder :: QDataStream a -> ((ByteOrder)) -> IO ()
setByteOrder x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_setByteOrder cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDataStream_setByteOrder" qtc_QDataStream_setByteOrder :: Ptr (TQDataStream a) -> CLong -> IO ()

instance QsetDevice (QDataStream a) ((QIODevice t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataStream_setDevice cobj_x0 cobj_x1

foreign import ccall "qtc_QDataStream_setDevice" qtc_QDataStream_setDevice :: Ptr (TQDataStream a) -> Ptr (TQIODevice t1) -> IO ()

instance QsetStatus (QDataStream a) ((QDataStreamStatus)) where
 setStatus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_setStatus cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDataStream_setStatus" qtc_QDataStream_setStatus :: Ptr (TQDataStream a) -> CLong -> IO ()

instance QsetVersion (QDataStream a) ((Int)) where
 setVersion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_setVersion cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDataStream_setVersion" qtc_QDataStream_setVersion :: Ptr (TQDataStream a) -> CInt -> IO ()

skipRawData :: QDataStream a -> ((Int)) -> IO (Int)
skipRawData x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_skipRawData cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDataStream_skipRawData" qtc_QDataStream_skipRawData :: Ptr (TQDataStream a) -> CInt -> IO CInt

instance Qstatus (QDataStream a) (()) (IO (QDataStreamStatus)) where
 status x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_status cobj_x0

foreign import ccall "qtc_QDataStream_status" qtc_QDataStream_status :: Ptr (TQDataStream a) -> IO CLong

unsetDevice :: QDataStream a -> (()) -> IO ()
unsetDevice x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_unsetDevice cobj_x0

foreign import ccall "qtc_QDataStream_unsetDevice" qtc_QDataStream_unsetDevice :: Ptr (TQDataStream a) -> IO ()

instance Qversion (QDataStream a) (()) (IO (Int)) where
 version x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_version cobj_x0

foreign import ccall "qtc_QDataStream_version" qtc_QDataStream_version :: Ptr (TQDataStream a) -> IO CInt

qDataStream_delete :: QDataStream a -> IO ()
qDataStream_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_delete cobj_x0

foreign import ccall "qtc_QDataStream_delete" qtc_QDataStream_delete :: Ptr (TQDataStream a) -> IO ()

read_qint8 :: QDataStream a -> IO Int
read_qint8 x0
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_read_qint8 cobj_x0
   
foreign import ccall "qtc_QDataStream_read_qint8" qtc_QDataStream_read_qint8 :: Ptr (TQDataStream a) -> IO CInt

read_qint32 :: QDataStream a -> IO Int
read_qint32 x0
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_read_qint32 cobj_x0
   
foreign import ccall "qtc_QDataStream_read_qint32" qtc_QDataStream_read_qint32 :: Ptr (TQDataStream a) -> IO CInt

read_Bool :: QDataStream a -> IO Bool
read_Bool x0
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_read_bool cobj_x0
   
foreign import ccall "qtc_QDataStream_read_bool" qtc_QDataStream_read_bool :: Ptr (TQDataStream a) -> IO CBool

read_String :: QDataStream a -> IO String
read_String x0
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_read_str cobj_x0
   
foreign import ccall "qtc_QDataStream_read_str" qtc_QDataStream_read_str :: Ptr (TQDataStream a) -> IO (Ptr (TQString ()))

write_qint8 :: QDataStream a -> Int -> IO ()
write_qint8 x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_write_qint8 cobj_x0 (toCInt x1)
   
foreign import ccall "qtc_QDataStream_write_qint8" qtc_QDataStream_write_qint8 :: Ptr (TQDataStream a) -> CInt -> IO ()

write_qint32 :: QDataStream a -> Int -> IO ()
write_qint32 x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_write_qint32 cobj_x0 (toCInt x1)
   
foreign import ccall "qtc_QDataStream_write_qint32" qtc_QDataStream_write_qint32 :: Ptr (TQDataStream a) -> CInt -> IO ()

write_Bool :: QDataStream a -> Bool -> IO ()
write_Bool x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataStream_write_bool cobj_x0 (toCBool x1)
   
foreign import ccall "qtc_QDataStream_write_bool" qtc_QDataStream_write_bool :: Ptr (TQDataStream a) -> CBool -> IO ()

write_String :: QDataStream a -> String -> IO ()
write_String x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataStream_write_str cobj_x0 cstr_x1
   
foreign import ccall "qtc_QDataStream_write_str" qtc_QDataStream_write_str :: Ptr (TQDataStream a) -> CWString -> IO ()

