{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextStream.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTextStream (
  QqTextStream(..)
  ,QqTextStream_nf(..)
  ,autoDetectUnicode
  ,codec
  ,fieldAlignment
  ,fieldWidth
  ,generateByteOrderMark
  ,integerBase
  ,numberFlags
  ,QpadChar(..), QpadChar_nf(..)
  ,realNumberNotation
  ,realNumberPrecision
  ,setAutoDetectUnicode
  ,QsetCodec(..)
  ,setFieldAlignment
  ,setFieldWidth
  ,setGenerateByteOrderMark
  ,setIntegerBase
  ,setNumberFlags
  ,setPadChar
  ,setRealNumberNotation
  ,setRealNumberPrecision
  ,skipWhiteSpace
  ,qTextStream_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QTextStream

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqTextStream x1 where
  qTextStream :: x1 -> IO (QTextStream ())

instance QqTextStream (()) where
 qTextStream ()
  = withQTextStreamResult $
    qtc_QTextStream

foreign import ccall "qtc_QTextStream" qtc_QTextStream :: IO (Ptr (TQTextStream ()))

instance QqTextStream ((QIODevice t1)) where
 qTextStream (x1)
  = withQTextStreamResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextStream1 cobj_x1

foreign import ccall "qtc_QTextStream1" qtc_QTextStream1 :: Ptr (TQIODevice t1) -> IO (Ptr (TQTextStream ()))

class QqTextStream_nf x1 where
  qTextStream_nf :: x1 -> IO (QTextStream ())

instance QqTextStream_nf (()) where
 qTextStream_nf ()
  = withObjectRefResult $
    qtc_QTextStream

instance QqTextStream_nf ((QIODevice t1)) where
 qTextStream_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextStream1 cobj_x1

instance QatEnd (QTextStream a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_atEnd cobj_x0

foreign import ccall "qtc_QTextStream_atEnd" qtc_QTextStream_atEnd :: Ptr (TQTextStream a) -> IO CBool

autoDetectUnicode :: QTextStream a -> (()) -> IO (Bool)
autoDetectUnicode x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_autoDetectUnicode cobj_x0

foreign import ccall "qtc_QTextStream_autoDetectUnicode" qtc_QTextStream_autoDetectUnicode :: Ptr (TQTextStream a) -> IO CBool

codec :: QTextStream a -> (()) -> IO (QTextCodec ())
codec x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_codec cobj_x0

foreign import ccall "qtc_QTextStream_codec" qtc_QTextStream_codec :: Ptr (TQTextStream a) -> IO (Ptr (TQTextCodec ()))

instance Qdevice (QTextStream a) (()) (IO (QIODevice ())) where
 device x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_device cobj_x0

foreign import ccall "qtc_QTextStream_device" qtc_QTextStream_device :: Ptr (TQTextStream a) -> IO (Ptr (TQIODevice ()))

fieldAlignment :: QTextStream a -> (()) -> IO (FieldAlignment)
fieldAlignment x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_fieldAlignment cobj_x0

foreign import ccall "qtc_QTextStream_fieldAlignment" qtc_QTextStream_fieldAlignment :: Ptr (TQTextStream a) -> IO CLong

fieldWidth :: QTextStream a -> (()) -> IO (Int)
fieldWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_fieldWidth cobj_x0

foreign import ccall "qtc_QTextStream_fieldWidth" qtc_QTextStream_fieldWidth :: Ptr (TQTextStream a) -> IO CInt

instance Qflush (QTextStream a) (()) (IO ()) where
 flush x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_flush cobj_x0

foreign import ccall "qtc_QTextStream_flush" qtc_QTextStream_flush :: Ptr (TQTextStream a) -> IO ()

generateByteOrderMark :: QTextStream a -> (()) -> IO (Bool)
generateByteOrderMark x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_generateByteOrderMark cobj_x0

foreign import ccall "qtc_QTextStream_generateByteOrderMark" qtc_QTextStream_generateByteOrderMark :: Ptr (TQTextStream a) -> IO CBool

integerBase :: QTextStream a -> (()) -> IO (Int)
integerBase x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_integerBase cobj_x0

foreign import ccall "qtc_QTextStream_integerBase" qtc_QTextStream_integerBase :: Ptr (TQTextStream a) -> IO CInt

numberFlags :: QTextStream a -> (()) -> IO (NumberFlags)
numberFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_numberFlags cobj_x0

foreign import ccall "qtc_QTextStream_numberFlags" qtc_QTextStream_numberFlags :: Ptr (TQTextStream a) -> IO CLong

class QpadChar x0 x1 where
 padChar :: x0 -> x1 -> IO (QChar ())

class QpadChar_nf x0 x1 where
 padChar_nf :: x0 -> x1 -> IO (QChar ())

instance QpadChar (QTextStream ()) (()) where
 padChar x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_padChar cobj_x0

foreign import ccall "qtc_QTextStream_padChar" qtc_QTextStream_padChar :: Ptr (TQTextStream a) -> IO (Ptr (TQChar ()))

instance QpadChar (QTextStreamSc a) (()) where
 padChar x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_padChar cobj_x0

instance QpadChar_nf (QTextStream ()) (()) where
 padChar_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_padChar cobj_x0

instance QpadChar_nf (QTextStreamSc a) (()) where
 padChar_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_padChar cobj_x0

instance Qpos (QTextStream a) (()) (IO (Int)) where
 pos x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_pos cobj_x0

foreign import ccall "qtc_QTextStream_pos" qtc_QTextStream_pos :: Ptr (TQTextStream a) -> IO CLLong

instance Qqread (QTextStream a) ((Int)) where
 qread x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_read cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QTextStream_read" qtc_QTextStream_read :: Ptr (TQTextStream a) -> CLLong -> IO (Ptr (TQString ()))

instance QreadAll (QTextStream a) (()) where
 readAll x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_readAll cobj_x0

foreign import ccall "qtc_QTextStream_readAll" qtc_QTextStream_readAll :: Ptr (TQTextStream a) -> IO (Ptr (TQString ()))

instance QreadLine (QTextStream a) (()) where
 readLine x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_readLine cobj_x0

foreign import ccall "qtc_QTextStream_readLine" qtc_QTextStream_readLine :: Ptr (TQTextStream a) -> IO (Ptr (TQString ()))

instance QreadLine (QTextStream a) ((Int)) where
 readLine x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_readLine1 cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QTextStream_readLine1" qtc_QTextStream_readLine1 :: Ptr (TQTextStream a) -> CLLong -> IO (Ptr (TQString ()))

realNumberNotation :: QTextStream a -> (()) -> IO (RealNumberNotation)
realNumberNotation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_realNumberNotation cobj_x0

foreign import ccall "qtc_QTextStream_realNumberNotation" qtc_QTextStream_realNumberNotation :: Ptr (TQTextStream a) -> IO CLong

realNumberPrecision :: QTextStream a -> (()) -> IO (Int)
realNumberPrecision x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_realNumberPrecision cobj_x0

foreign import ccall "qtc_QTextStream_realNumberPrecision" qtc_QTextStream_realNumberPrecision :: Ptr (TQTextStream a) -> IO CInt

instance Qreset (QTextStream a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_reset cobj_x0

foreign import ccall "qtc_QTextStream_reset" qtc_QTextStream_reset :: Ptr (TQTextStream a) -> IO ()

instance QresetStatus (QTextStream a) (()) where
 resetStatus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_resetStatus cobj_x0

foreign import ccall "qtc_QTextStream_resetStatus" qtc_QTextStream_resetStatus :: Ptr (TQTextStream a) -> IO ()

instance Qseek (QTextStream a) ((Int)) where
 seek x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_seek cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QTextStream_seek" qtc_QTextStream_seek :: Ptr (TQTextStream a) -> CLLong -> IO CBool

setAutoDetectUnicode :: QTextStream a -> ((Bool)) -> IO ()
setAutoDetectUnicode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setAutoDetectUnicode cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextStream_setAutoDetectUnicode" qtc_QTextStream_setAutoDetectUnicode :: Ptr (TQTextStream a) -> CBool -> IO ()

class QsetCodec x1 where
 setCodec :: QTextStream a -> x1 -> IO ()

instance QsetCodec ((QTextCodec t1)) where
 setCodec x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextStream_setCodec cobj_x0 cobj_x1

foreign import ccall "qtc_QTextStream_setCodec" qtc_QTextStream_setCodec :: Ptr (TQTextStream a) -> Ptr (TQTextCodec t1) -> IO ()

instance QsetCodec ((String)) where
 setCodec x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextStream_setCodec1 cobj_x0 cstr_x1

foreign import ccall "qtc_QTextStream_setCodec1" qtc_QTextStream_setCodec1 :: Ptr (TQTextStream a) -> CWString -> IO ()

instance QsetDevice (QTextStream a) ((QIODevice t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextStream_setDevice cobj_x0 cobj_x1

foreign import ccall "qtc_QTextStream_setDevice" qtc_QTextStream_setDevice :: Ptr (TQTextStream a) -> Ptr (TQIODevice t1) -> IO ()

setFieldAlignment :: QTextStream a -> ((FieldAlignment)) -> IO ()
setFieldAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setFieldAlignment cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextStream_setFieldAlignment" qtc_QTextStream_setFieldAlignment :: Ptr (TQTextStream a) -> CLong -> IO ()

setFieldWidth :: QTextStream a -> ((Int)) -> IO ()
setFieldWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setFieldWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextStream_setFieldWidth" qtc_QTextStream_setFieldWidth :: Ptr (TQTextStream a) -> CInt -> IO ()

setGenerateByteOrderMark :: QTextStream a -> ((Bool)) -> IO ()
setGenerateByteOrderMark x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setGenerateByteOrderMark cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextStream_setGenerateByteOrderMark" qtc_QTextStream_setGenerateByteOrderMark :: Ptr (TQTextStream a) -> CBool -> IO ()

setIntegerBase :: QTextStream a -> ((Int)) -> IO ()
setIntegerBase x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setIntegerBase cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextStream_setIntegerBase" qtc_QTextStream_setIntegerBase :: Ptr (TQTextStream a) -> CInt -> IO ()

setNumberFlags :: QTextStream a -> ((NumberFlags)) -> IO ()
setNumberFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setNumberFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextStream_setNumberFlags" qtc_QTextStream_setNumberFlags :: Ptr (TQTextStream a) -> CLong -> IO ()

setPadChar :: QTextStream a -> ((QChar t1)) -> IO ()
setPadChar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextStream_setPadChar cobj_x0 cobj_x1

foreign import ccall "qtc_QTextStream_setPadChar" qtc_QTextStream_setPadChar :: Ptr (TQTextStream a) -> Ptr (TQChar t1) -> IO ()

setRealNumberNotation :: QTextStream a -> ((RealNumberNotation)) -> IO ()
setRealNumberNotation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setRealNumberNotation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextStream_setRealNumberNotation" qtc_QTextStream_setRealNumberNotation :: Ptr (TQTextStream a) -> CLong -> IO ()

setRealNumberPrecision :: QTextStream a -> ((Int)) -> IO ()
setRealNumberPrecision x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setRealNumberPrecision cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextStream_setRealNumberPrecision" qtc_QTextStream_setRealNumberPrecision :: Ptr (TQTextStream a) -> CInt -> IO ()

instance QsetStatus (QTextStream a) ((QTextStreamStatus)) where
 setStatus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_setStatus cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextStream_setStatus" qtc_QTextStream_setStatus :: Ptr (TQTextStream a) -> CLong -> IO ()

skipWhiteSpace :: QTextStream a -> (()) -> IO ()
skipWhiteSpace x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_skipWhiteSpace cobj_x0

foreign import ccall "qtc_QTextStream_skipWhiteSpace" qtc_QTextStream_skipWhiteSpace :: Ptr (TQTextStream a) -> IO ()

instance Qstatus (QTextStream a) (()) (IO (QTextStreamStatus)) where
 status x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_status cobj_x0

foreign import ccall "qtc_QTextStream_status" qtc_QTextStream_status :: Ptr (TQTextStream a) -> IO CLong

qTextStream_delete :: QTextStream a -> IO ()
qTextStream_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextStream_delete cobj_x0

foreign import ccall "qtc_QTextStream_delete" qtc_QTextStream_delete :: Ptr (TQTextStream a) -> IO ()

