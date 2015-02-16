{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateTime.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QDateTime (
  QqDateTime(..)
  ,QqDateTime_nf(..)
  ,qDateTimeCurrentDateTime
  ,QqDateTimeFromString(..)
  ,qDateTimeFromTime_t
  ,setTimeSpec
  ,setTime_t
  ,timeSpec
  ,toLocalTime
  ,toTimeSpec
  ,toTime_t
  ,toUTC
  ,qDateTime_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqDateTime x1 where
  qDateTime :: x1 -> IO (QDateTime ())

instance QqDateTime (()) where
 qDateTime ()
  = withQDateTimeResult $
    qtc_QDateTime

foreign import ccall "qtc_QDateTime" qtc_QDateTime :: IO (Ptr (TQDateTime ()))

instance QqDateTime ((QDate t1)) where
 qDateTime (x1)
  = withQDateTimeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime1 cobj_x1

foreign import ccall "qtc_QDateTime1" qtc_QDateTime1 :: Ptr (TQDate t1) -> IO (Ptr (TQDateTime ()))

instance QqDateTime ((QDateTime t1)) where
 qDateTime (x1)
  = withQDateTimeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime2 cobj_x1

foreign import ccall "qtc_QDateTime2" qtc_QDateTime2 :: Ptr (TQDateTime t1) -> IO (Ptr (TQDateTime ()))

instance QqDateTime ((QDate t1, QTime t2)) where
 qDateTime (x1, x2)
  = withQDateTimeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTime3 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTime3" qtc_QDateTime3 :: Ptr (TQDate t1) -> Ptr (TQTime t2) -> IO (Ptr (TQDateTime ()))

instance QqDateTime ((QDate t1, QTime t2, TimeSpec)) where
 qDateTime (x1, x2, x3)
  = withQDateTimeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTime4 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QDateTime4" qtc_QDateTime4 :: Ptr (TQDate t1) -> Ptr (TQTime t2) -> CLong -> IO (Ptr (TQDateTime ()))

class QqDateTime_nf x1 where
  qDateTime_nf :: x1 -> IO (QDateTime ())

instance QqDateTime_nf (()) where
 qDateTime_nf ()
  = withObjectRefResult $
    qtc_QDateTime

instance QqDateTime_nf ((QDate t1)) where
 qDateTime_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime1 cobj_x1

instance QqDateTime_nf ((QDateTime t1)) where
 qDateTime_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime2 cobj_x1

instance QqDateTime_nf ((QDate t1, QTime t2)) where
 qDateTime_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTime3 cobj_x1 cobj_x2

instance QqDateTime_nf ((QDate t1, QTime t2, TimeSpec)) where
 qDateTime_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTime4 cobj_x1 cobj_x2 (toCLong $ qEnum_toInt x3)

instance QaddDays (QDateTime a) ((Int)) (IO (QDateTime ())) where
 addDays x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_addDays cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTime_addDays" qtc_QDateTime_addDays :: Ptr (TQDateTime a) -> CInt -> IO (Ptr (TQDateTime ()))

instance QaddMSecs (QDateTime a) ((Int)) (IO (QDateTime ())) where
 addMSecs x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_addMSecs cobj_x0 (toCLLong x1)

foreign import ccall "qtc_QDateTime_addMSecs" qtc_QDateTime_addMSecs :: Ptr (TQDateTime a) -> CLLong -> IO (Ptr (TQDateTime ()))

instance QaddMonths (QDateTime a) ((Int)) (IO (QDateTime ())) where
 addMonths x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_addMonths cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTime_addMonths" qtc_QDateTime_addMonths :: Ptr (TQDateTime a) -> CInt -> IO (Ptr (TQDateTime ()))

instance QaddSecs (QDateTime a) ((Int)) (IO (QDateTime ())) where
 addSecs x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_addSecs cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTime_addSecs" qtc_QDateTime_addSecs :: Ptr (TQDateTime a) -> CInt -> IO (Ptr (TQDateTime ()))

instance QaddYears (QDateTime a) ((Int)) (IO (QDateTime ())) where
 addYears x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_addYears cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTime_addYears" qtc_QDateTime_addYears :: Ptr (TQDateTime a) -> CInt -> IO (Ptr (TQDateTime ()))

qDateTimeCurrentDateTime :: (()) -> IO (QDateTime ())
qDateTimeCurrentDateTime ()
  = withQDateTimeResult $
    qtc_QDateTime_currentDateTime

foreign import ccall "qtc_QDateTime_currentDateTime" qtc_QDateTime_currentDateTime :: IO (Ptr (TQDateTime ()))

instance Qdate (QDateTime a) (()) where
 date x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_date cobj_x0

foreign import ccall "qtc_QDateTime_date" qtc_QDateTime_date :: Ptr (TQDateTime a) -> IO (Ptr (TQDate ()))

instance QdaysTo (QDateTime a) ((QDateTime t1)) where
 daysTo x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime_daysTo cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTime_daysTo" qtc_QDateTime_daysTo :: Ptr (TQDateTime a) -> Ptr (TQDateTime t1) -> IO CInt

class QqDateTimeFromString x1 where
 qDateTimeFromString :: x1 -> IO (QDateTime ())

instance QqDateTimeFromString ((String)) where
 qDateTimeFromString (x1)
  = withQDateTimeResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTime_fromString cstr_x1

foreign import ccall "qtc_QDateTime_fromString" qtc_QDateTime_fromString :: CWString -> IO (Ptr (TQDateTime ()))

instance QqDateTimeFromString ((String, DateFormat)) where
 qDateTimeFromString (x1, x2)
  = withQDateTimeResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTime_fromString1 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDateTime_fromString1" qtc_QDateTime_fromString1 :: CWString -> CLong -> IO (Ptr (TQDateTime ()))

instance QqDateTimeFromString ((String, String)) where
 qDateTimeFromString (x1, x2)
  = withQDateTimeResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDateTime_fromString2 cstr_x1 cstr_x2

foreign import ccall "qtc_QDateTime_fromString2" qtc_QDateTime_fromString2 :: CWString -> CWString -> IO (Ptr (TQDateTime ()))

qDateTimeFromTime_t :: ((Int)) -> IO (QDateTime ())
qDateTimeFromTime_t (x1)
  = withQDateTimeResult $
    qtc_QDateTime_fromTime_t (toCUInt x1)

foreign import ccall "qtc_QDateTime_fromTime_t" qtc_QDateTime_fromTime_t :: CUInt -> IO (Ptr (TQDateTime ()))

instance QqisNull (QDateTime a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_isNull cobj_x0

foreign import ccall "qtc_QDateTime_isNull" qtc_QDateTime_isNull :: Ptr (TQDateTime a) -> IO CBool

instance QqisValid (QDateTime ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_isValid cobj_x0

foreign import ccall "qtc_QDateTime_isValid" qtc_QDateTime_isValid :: Ptr (TQDateTime a) -> IO CBool

instance QqisValid (QDateTimeSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_isValid cobj_x0

instance QsecsTo (QDateTime a) ((QDateTime t1)) where
 secsTo x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime_secsTo cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTime_secsTo" qtc_QDateTime_secsTo :: Ptr (TQDateTime a) -> Ptr (TQDateTime t1) -> IO CInt

instance QsetDate (QDateTime a) ((QDate t1)) (IO ()) where
 setDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime_setDate cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTime_setDate" qtc_QDateTime_setDate :: Ptr (TQDateTime a) -> Ptr (TQDate t1) -> IO ()

instance QsetTime (QDateTime a) ((QTime t1)) where
 setTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTime_setTime cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTime_setTime" qtc_QDateTime_setTime :: Ptr (TQDateTime a) -> Ptr (TQTime t1) -> IO ()

setTimeSpec :: QDateTime a -> ((TimeSpec)) -> IO ()
setTimeSpec x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_setTimeSpec cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTime_setTimeSpec" qtc_QDateTime_setTimeSpec :: Ptr (TQDateTime a) -> CLong -> IO ()

setTime_t :: QDateTime a -> ((Int)) -> IO ()
setTime_t x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_setTime_t cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QDateTime_setTime_t" qtc_QDateTime_setTime_t :: Ptr (TQDateTime a) -> CUInt -> IO ()

instance Qtime (QDateTime a) (()) where
 time x0 ()
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_time cobj_x0

foreign import ccall "qtc_QDateTime_time" qtc_QDateTime_time :: Ptr (TQDateTime a) -> IO (Ptr (TQTime ()))

timeSpec :: QDateTime a -> (()) -> IO (TimeSpec)
timeSpec x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_timeSpec cobj_x0

foreign import ccall "qtc_QDateTime_timeSpec" qtc_QDateTime_timeSpec :: Ptr (TQDateTime a) -> IO CLong

toLocalTime :: QDateTime a -> (()) -> IO (QDateTime ())
toLocalTime x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toLocalTime cobj_x0

foreign import ccall "qtc_QDateTime_toLocalTime" qtc_QDateTime_toLocalTime :: Ptr (TQDateTime a) -> IO (Ptr (TQDateTime ()))

instance QtoString (QDateTime a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toString cobj_x0

foreign import ccall "qtc_QDateTime_toString" qtc_QDateTime_toString :: Ptr (TQDateTime a) -> IO (Ptr (TQString ()))

instance QtoString (QDateTime a) ((DateFormat)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toString1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTime_toString1" qtc_QDateTime_toString1 :: Ptr (TQDateTime a) -> CLong -> IO (Ptr (TQString ()))

instance QtoString (QDateTime a) ((String)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTime_toString2 cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTime_toString2" qtc_QDateTime_toString2 :: Ptr (TQDateTime a) -> CWString -> IO (Ptr (TQString ()))

toTimeSpec :: QDateTime a -> ((TimeSpec)) -> IO (QDateTime ())
toTimeSpec x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toTimeSpec cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTime_toTimeSpec" qtc_QDateTime_toTimeSpec :: Ptr (TQDateTime a) -> CLong -> IO (Ptr (TQDateTime ()))

toTime_t :: QDateTime a -> (()) -> IO (Int)
toTime_t x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toTime_t cobj_x0

foreign import ccall "qtc_QDateTime_toTime_t" qtc_QDateTime_toTime_t :: Ptr (TQDateTime a) -> IO CUInt

toUTC :: QDateTime a -> (()) -> IO (QDateTime ())
toUTC x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_toUTC cobj_x0

foreign import ccall "qtc_QDateTime_toUTC" qtc_QDateTime_toUTC :: Ptr (TQDateTime a) -> IO (Ptr (TQDateTime ()))

qDateTime_delete :: QDateTime a -> IO ()
qDateTime_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTime_delete cobj_x0

foreign import ccall "qtc_QDateTime_delete" qtc_QDateTime_delete :: Ptr (TQDateTime a) -> IO ()

