{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDate.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QDate (
  QqDate(..)
  ,QqDate_nf(..)
  ,qDateCurrentDate
  ,day
  ,dayOfWeek
  ,dayOfYear
  ,daysInMonth
  ,daysInYear
  ,qDateFromJulianDay
  ,QqDateFromString(..)
  ,qDateGregorianToJulian
  ,qDateIsLeapYear
  ,qDateIsValid
  ,qDateLongDayName
  ,qDateLongMonthName
  ,month
  ,setYMD
  ,qDateShortDayName
  ,qDateShortMonthName
  ,toJulianDay
  ,weekNumber
  ,year
  ,qDate_delete
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

class QqDate x1 where
  qDate :: x1 -> IO (QDate ())

instance QqDate (()) where
 qDate ()
  = withQDateResult $
    qtc_QDate

foreign import ccall "qtc_QDate" qtc_QDate :: IO (Ptr (TQDate ()))

instance QqDate ((QDate t1)) where
 qDate (x1)
  = withQDateResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDate1 cobj_x1

foreign import ccall "qtc_QDate1" qtc_QDate1 :: Ptr (TQDate t1) -> IO (Ptr (TQDate ()))

instance QqDate ((Int, Int, Int)) where
 qDate (x1, x2, x3)
  = withQDateResult $
    qtc_QDate2 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDate2" qtc_QDate2 :: CInt -> CInt -> CInt -> IO (Ptr (TQDate ()))

class QqDate_nf x1 where
  qDate_nf :: x1 -> IO (QDate ())

instance QqDate_nf (()) where
 qDate_nf ()
  = withObjectRefResult $
    qtc_QDate

instance QqDate_nf ((QDate t1)) where
 qDate_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDate1 cobj_x1

instance QqDate_nf ((Int, Int, Int)) where
 qDate_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QDate2 (toCInt x1) (toCInt x2) (toCInt x3)

instance QaddDays (QDate a) ((Int)) (IO (QDate ())) where
 addDays x0 (x1)
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_addDays cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDate_addDays" qtc_QDate_addDays :: Ptr (TQDate a) -> CInt -> IO (Ptr (TQDate ()))

instance QaddMonths (QDate a) ((Int)) (IO (QDate ())) where
 addMonths x0 (x1)
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_addMonths cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDate_addMonths" qtc_QDate_addMonths :: Ptr (TQDate a) -> CInt -> IO (Ptr (TQDate ()))

instance QaddYears (QDate a) ((Int)) (IO (QDate ())) where
 addYears x0 (x1)
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_addYears cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDate_addYears" qtc_QDate_addYears :: Ptr (TQDate a) -> CInt -> IO (Ptr (TQDate ()))

qDateCurrentDate :: (()) -> IO (QDate ())
qDateCurrentDate ()
  = withQDateResult $
    qtc_QDate_currentDate

foreign import ccall "qtc_QDate_currentDate" qtc_QDate_currentDate :: IO (Ptr (TQDate ()))

day :: QDate a -> (()) -> IO (Int)
day x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_day cobj_x0

foreign import ccall "qtc_QDate_day" qtc_QDate_day :: Ptr (TQDate a) -> IO CInt

dayOfWeek :: QDate a -> (()) -> IO (Int)
dayOfWeek x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_dayOfWeek cobj_x0

foreign import ccall "qtc_QDate_dayOfWeek" qtc_QDate_dayOfWeek :: Ptr (TQDate a) -> IO CInt

dayOfYear :: QDate a -> (()) -> IO (Int)
dayOfYear x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_dayOfYear cobj_x0

foreign import ccall "qtc_QDate_dayOfYear" qtc_QDate_dayOfYear :: Ptr (TQDate a) -> IO CInt

daysInMonth :: QDate a -> (()) -> IO (Int)
daysInMonth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_daysInMonth cobj_x0

foreign import ccall "qtc_QDate_daysInMonth" qtc_QDate_daysInMonth :: Ptr (TQDate a) -> IO CInt

daysInYear :: QDate a -> (()) -> IO (Int)
daysInYear x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_daysInYear cobj_x0

foreign import ccall "qtc_QDate_daysInYear" qtc_QDate_daysInYear :: Ptr (TQDate a) -> IO CInt

instance QdaysTo (QDate a) ((QDate t1)) where
 daysTo x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDate_daysTo cobj_x0 cobj_x1

foreign import ccall "qtc_QDate_daysTo" qtc_QDate_daysTo :: Ptr (TQDate a) -> Ptr (TQDate t1) -> IO CInt

qDateFromJulianDay :: ((Int)) -> IO (QDate ())
qDateFromJulianDay (x1)
  = withQDateResult $
    qtc_QDate_fromJulianDay (toCInt x1)

foreign import ccall "qtc_QDate_fromJulianDay" qtc_QDate_fromJulianDay :: CInt -> IO (Ptr (TQDate ()))

class QqDateFromString x1 where
 qDateFromString :: x1 -> IO (QDate ())

instance QqDateFromString ((String)) where
 qDateFromString (x1)
  = withQDateResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDate_fromString cstr_x1

foreign import ccall "qtc_QDate_fromString" qtc_QDate_fromString :: CWString -> IO (Ptr (TQDate ()))

instance QqDateFromString ((String, DateFormat)) where
 qDateFromString (x1, x2)
  = withQDateResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QDate_fromString1 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDate_fromString1" qtc_QDate_fromString1 :: CWString -> CLong -> IO (Ptr (TQDate ()))

instance QqDateFromString ((String, String)) where
 qDateFromString (x1, x2)
  = withQDateResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QDate_fromString2 cstr_x1 cstr_x2

foreign import ccall "qtc_QDate_fromString2" qtc_QDate_fromString2 :: CWString -> CWString -> IO (Ptr (TQDate ()))

qDateGregorianToJulian :: ((Int, Int, Int)) -> IO (Int)
qDateGregorianToJulian (x1, x2, x3)
  = withUnsignedIntResult $
    qtc_QDate_gregorianToJulian (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDate_gregorianToJulian" qtc_QDate_gregorianToJulian :: CInt -> CInt -> CInt -> IO CUInt

qDateIsLeapYear :: ((Int)) -> IO (Bool)
qDateIsLeapYear (x1)
  = withBoolResult $
    qtc_QDate_isLeapYear (toCInt x1)

foreign import ccall "qtc_QDate_isLeapYear" qtc_QDate_isLeapYear :: CInt -> IO CBool

instance QqisNull (QDate a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_isNull cobj_x0

foreign import ccall "qtc_QDate_isNull" qtc_QDate_isNull :: Ptr (TQDate a) -> IO CBool

qDateIsValid :: ((Int, Int, Int)) -> IO (Bool)
qDateIsValid (x1, x2, x3)
  = withBoolResult $
    qtc_QDate_isValid1 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDate_isValid1" qtc_QDate_isValid1 :: CInt -> CInt -> CInt -> IO CBool

instance QqisValid (QDate ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_isValid cobj_x0

foreign import ccall "qtc_QDate_isValid" qtc_QDate_isValid :: Ptr (TQDate a) -> IO CBool

instance QqisValid (QDateSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_isValid cobj_x0

qDateLongDayName :: ((Int)) -> IO (String)
qDateLongDayName (x1)
  = withStringResult $
    qtc_QDate_longDayName (toCInt x1)

foreign import ccall "qtc_QDate_longDayName" qtc_QDate_longDayName :: CInt -> IO (Ptr (TQString ()))

qDateLongMonthName :: ((Int)) -> IO (String)
qDateLongMonthName (x1)
  = withStringResult $
    qtc_QDate_longMonthName (toCInt x1)

foreign import ccall "qtc_QDate_longMonthName" qtc_QDate_longMonthName :: CInt -> IO (Ptr (TQString ()))

month :: QDate a -> (()) -> IO (Int)
month x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_month cobj_x0

foreign import ccall "qtc_QDate_month" qtc_QDate_month :: Ptr (TQDate a) -> IO CInt

instance QsetDate (QDate a) ((Int, Int, Int)) (IO (Bool)) where
 setDate x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_setDate cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDate_setDate" qtc_QDate_setDate :: Ptr (TQDate a) -> CInt -> CInt -> CInt -> IO CBool

setYMD :: QDate a -> ((Int, Int, Int)) -> IO (Bool)
setYMD x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_setYMD cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QDate_setYMD" qtc_QDate_setYMD :: Ptr (TQDate a) -> CInt -> CInt -> CInt -> IO CBool

qDateShortDayName :: ((Int)) -> IO (String)
qDateShortDayName (x1)
  = withStringResult $
    qtc_QDate_shortDayName (toCInt x1)

foreign import ccall "qtc_QDate_shortDayName" qtc_QDate_shortDayName :: CInt -> IO (Ptr (TQString ()))

qDateShortMonthName :: ((Int)) -> IO (String)
qDateShortMonthName (x1)
  = withStringResult $
    qtc_QDate_shortMonthName (toCInt x1)

foreign import ccall "qtc_QDate_shortMonthName" qtc_QDate_shortMonthName :: CInt -> IO (Ptr (TQString ()))

toJulianDay :: QDate a -> (()) -> IO (Int)
toJulianDay x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_toJulianDay cobj_x0

foreign import ccall "qtc_QDate_toJulianDay" qtc_QDate_toJulianDay :: Ptr (TQDate a) -> IO CInt

instance QtoString (QDate a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_toString cobj_x0

foreign import ccall "qtc_QDate_toString" qtc_QDate_toString :: Ptr (TQDate a) -> IO (Ptr (TQString ()))

instance QtoString (QDate a) ((DateFormat)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_toString2 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDate_toString2" qtc_QDate_toString2 :: Ptr (TQDate a) -> CLong -> IO (Ptr (TQString ()))

instance QtoString (QDate a) ((String)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDate_toString1 cobj_x0 cstr_x1

foreign import ccall "qtc_QDate_toString1" qtc_QDate_toString1 :: Ptr (TQDate a) -> CWString -> IO (Ptr (TQString ()))

weekNumber :: QDate a -> (()) -> IO (Int)
weekNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_weekNumber cobj_x0

foreign import ccall "qtc_QDate_weekNumber" qtc_QDate_weekNumber :: Ptr (TQDate a) -> IO CInt

year :: QDate a -> (()) -> IO (Int)
year x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_year cobj_x0

foreign import ccall "qtc_QDate_year" qtc_QDate_year :: Ptr (TQDate a) -> IO CInt

qDate_delete :: QDate a -> IO ()
qDate_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDate_delete cobj_x0

foreign import ccall "qtc_QDate_delete" qtc_QDate_delete :: Ptr (TQDate a) -> IO ()

