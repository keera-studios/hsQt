{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLocale.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QLocale (
  QqLocale(..)
  ,QqLocale_nf(..)
  ,qLocaleC
  ,qLocaleCountriesForLanguage
  ,country
  ,qLocaleCountryToString
  ,QdateFormat(..)
  ,QdayName(..)
  ,QdecimalPoint(..), QdecimalPoint_nf(..)
  ,Qexponential(..), Qexponential_nf(..)
  ,QgroupSeparator(..), QgroupSeparator_nf(..)
  ,language
  ,qLocaleLanguageToString
  ,QmonthName(..)
  ,QnegativeSign(..), QnegativeSign_nf(..)
  ,numberOptions
  ,Qpercent(..), Qpercent_nf(..)
  ,qLocaleSetDefault
  ,setNumberOptions
  ,qLocaleSystem
  ,QtimeFormat(..)
  ,toDouble
  ,toInt
  ,toLongLong
  ,toUInt
  ,toULongLong
  ,toUShort
  ,QzeroDigit(..), QzeroDigit_nf(..)
  ,qLocale_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QLocale

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqLocale x1 where
  qLocale :: x1 -> IO (QLocale ())

instance QqLocale (()) where
 qLocale ()
  = withQLocaleResult $
    qtc_QLocale

foreign import ccall "qtc_QLocale" qtc_QLocale :: IO (Ptr (TQLocale ()))

instance QqLocale ((QLocale t1)) where
 qLocale (x1)
  = withQLocaleResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale1 cobj_x1

foreign import ccall "qtc_QLocale1" qtc_QLocale1 :: Ptr (TQLocale t1) -> IO (Ptr (TQLocale ()))

instance QqLocale ((String)) where
 qLocale (x1)
  = withQLocaleResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale2 cstr_x1

foreign import ccall "qtc_QLocale2" qtc_QLocale2 :: CWString -> IO (Ptr (TQLocale ()))

instance QqLocale ((Language)) where
 qLocale (x1)
  = withQLocaleResult $
    qtc_QLocale3 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLocale3" qtc_QLocale3 :: CLong -> IO (Ptr (TQLocale ()))

instance QqLocale ((Language, Country)) where
 qLocale (x1, x2)
  = withQLocaleResult $
    qtc_QLocale4 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QLocale4" qtc_QLocale4 :: CLong -> CLong -> IO (Ptr (TQLocale ()))

class QqLocale_nf x1 where
  qLocale_nf :: x1 -> IO (QLocale ())

instance QqLocale_nf (()) where
 qLocale_nf ()
  = withObjectRefResult $
    qtc_QLocale

instance QqLocale_nf ((QLocale t1)) where
 qLocale_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale1 cobj_x1

instance QqLocale_nf ((String)) where
 qLocale_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale2 cstr_x1

instance QqLocale_nf ((Language)) where
 qLocale_nf (x1)
  = withObjectRefResult $
    qtc_QLocale3 (toCLong $ qEnum_toInt x1)

instance QqLocale_nf ((Language, Country)) where
 qLocale_nf (x1, x2)
  = withObjectRefResult $
    qtc_QLocale4 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

qLocaleC :: (()) -> IO (QLocale ())
qLocaleC ()
  = withQLocaleResult $
    qtc_QLocale_c

foreign import ccall "qtc_QLocale_c" qtc_QLocale_c :: IO (Ptr (TQLocale ()))

qLocaleCountriesForLanguage :: ((Language)) -> IO ([Country])
qLocaleCountriesForLanguage (x1)
  = withQEnumListResult $
    withQListLongResult $ \arr ->
    qtc_QLocale_countriesForLanguage (toCLong $ qEnum_toInt x1) arr

foreign import ccall "qtc_QLocale_countriesForLanguage" qtc_QLocale_countriesForLanguage :: CLong -> Ptr CLong -> IO CInt

country :: QLocale a -> (()) -> IO (Country)
country x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_country cobj_x0

foreign import ccall "qtc_QLocale_country" qtc_QLocale_country :: Ptr (TQLocale a) -> IO CLong

qLocaleCountryToString :: ((Country)) -> IO (String)
qLocaleCountryToString (x1)
  = withStringResult $
    qtc_QLocale_countryToString (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLocale_countryToString" qtc_QLocale_countryToString :: CLong -> IO (Ptr (TQString ()))

class QdateFormat x1 where
 dateFormat :: QLocale a -> x1 -> IO (String)

instance QdateFormat (()) where
 dateFormat x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_dateFormat cobj_x0

foreign import ccall "qtc_QLocale_dateFormat" qtc_QLocale_dateFormat :: Ptr (TQLocale a) -> IO (Ptr (TQString ()))

instance QdateFormat ((QLocaleFormatType)) where
 dateFormat x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_dateFormat1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLocale_dateFormat1" qtc_QLocale_dateFormat1 :: Ptr (TQLocale a) -> CLong -> IO (Ptr (TQString ()))

class QdayName x1 where
 dayName :: QLocale a -> x1 -> IO (String)

instance QdayName ((Int)) where
 dayName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_dayName cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLocale_dayName" qtc_QLocale_dayName :: Ptr (TQLocale a) -> CInt -> IO (Ptr (TQString ()))

instance QdayName ((Int, QLocaleFormatType)) where
 dayName x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_dayName1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QLocale_dayName1" qtc_QLocale_dayName1 :: Ptr (TQLocale a) -> CInt -> CLong -> IO (Ptr (TQString ()))

class QdecimalPoint x0 x1 where
 decimalPoint :: x0 -> x1 -> IO (QChar ())

class QdecimalPoint_nf x0 x1 where
 decimalPoint_nf :: x0 -> x1 -> IO (QChar ())

instance QdecimalPoint (QLocale ()) (()) where
 decimalPoint x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_decimalPoint cobj_x0

foreign import ccall "qtc_QLocale_decimalPoint" qtc_QLocale_decimalPoint :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance QdecimalPoint (QLocaleSc a) (()) where
 decimalPoint x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_decimalPoint cobj_x0

instance QdecimalPoint_nf (QLocale ()) (()) where
 decimalPoint_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_decimalPoint cobj_x0

instance QdecimalPoint_nf (QLocaleSc a) (()) where
 decimalPoint_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_decimalPoint cobj_x0

class Qexponential x0 x1 where
 exponential :: x0 -> x1 -> IO (QChar ())

class Qexponential_nf x0 x1 where
 exponential_nf :: x0 -> x1 -> IO (QChar ())

instance Qexponential (QLocale ()) (()) where
 exponential x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_exponential cobj_x0

foreign import ccall "qtc_QLocale_exponential" qtc_QLocale_exponential :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance Qexponential (QLocaleSc a) (()) where
 exponential x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_exponential cobj_x0

instance Qexponential_nf (QLocale ()) (()) where
 exponential_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_exponential cobj_x0

instance Qexponential_nf (QLocaleSc a) (()) where
 exponential_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_exponential cobj_x0

class QgroupSeparator x0 x1 where
 groupSeparator :: x0 -> x1 -> IO (QChar ())

class QgroupSeparator_nf x0 x1 where
 groupSeparator_nf :: x0 -> x1 -> IO (QChar ())

instance QgroupSeparator (QLocale ()) (()) where
 groupSeparator x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_groupSeparator cobj_x0

foreign import ccall "qtc_QLocale_groupSeparator" qtc_QLocale_groupSeparator :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance QgroupSeparator (QLocaleSc a) (()) where
 groupSeparator x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_groupSeparator cobj_x0

instance QgroupSeparator_nf (QLocale ()) (()) where
 groupSeparator_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_groupSeparator cobj_x0

instance QgroupSeparator_nf (QLocaleSc a) (()) where
 groupSeparator_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_groupSeparator cobj_x0

language :: QLocale a -> (()) -> IO (Language)
language x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_language cobj_x0

foreign import ccall "qtc_QLocale_language" qtc_QLocale_language :: Ptr (TQLocale a) -> IO CLong

qLocaleLanguageToString :: ((Language)) -> IO (String)
qLocaleLanguageToString (x1)
  = withStringResult $
    qtc_QLocale_languageToString (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLocale_languageToString" qtc_QLocale_languageToString :: CLong -> IO (Ptr (TQString ()))

class QmonthName x1 where
 monthName :: QLocale a -> x1 -> IO (String)

instance QmonthName ((Int)) where
 monthName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_monthName cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLocale_monthName" qtc_QLocale_monthName :: Ptr (TQLocale a) -> CInt -> IO (Ptr (TQString ()))

instance QmonthName ((Int, QLocaleFormatType)) where
 monthName x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_monthName1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QLocale_monthName1" qtc_QLocale_monthName1 :: Ptr (TQLocale a) -> CInt -> CLong -> IO (Ptr (TQString ()))

instance Qname (QLocale a) (()) where
 name x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_name cobj_x0

foreign import ccall "qtc_QLocale_name" qtc_QLocale_name :: Ptr (TQLocale a) -> IO (Ptr (TQString ()))

class QnegativeSign x0 x1 where
 negativeSign :: x0 -> x1 -> IO (QChar ())

class QnegativeSign_nf x0 x1 where
 negativeSign_nf :: x0 -> x1 -> IO (QChar ())

instance QnegativeSign (QLocale ()) (()) where
 negativeSign x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_negativeSign cobj_x0

foreign import ccall "qtc_QLocale_negativeSign" qtc_QLocale_negativeSign :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance QnegativeSign (QLocaleSc a) (()) where
 negativeSign x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_negativeSign cobj_x0

instance QnegativeSign_nf (QLocale ()) (()) where
 negativeSign_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_negativeSign cobj_x0

instance QnegativeSign_nf (QLocaleSc a) (()) where
 negativeSign_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_negativeSign cobj_x0

numberOptions :: QLocale a -> (()) -> IO (NumberOptions)
numberOptions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_numberOptions cobj_x0

foreign import ccall "qtc_QLocale_numberOptions" qtc_QLocale_numberOptions :: Ptr (TQLocale a) -> IO CLong

class Qpercent x0 x1 where
 percent :: x0 -> x1 -> IO (QChar ())

class Qpercent_nf x0 x1 where
 percent_nf :: x0 -> x1 -> IO (QChar ())

instance Qpercent (QLocale ()) (()) where
 percent x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_percent cobj_x0

foreign import ccall "qtc_QLocale_percent" qtc_QLocale_percent :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance Qpercent (QLocaleSc a) (()) where
 percent x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_percent cobj_x0

instance Qpercent_nf (QLocale ()) (()) where
 percent_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_percent cobj_x0

instance Qpercent_nf (QLocaleSc a) (()) where
 percent_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_percent cobj_x0

qLocaleSetDefault :: ((QLocale t1)) -> IO ()
qLocaleSetDefault (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale_setDefault cobj_x1

foreign import ccall "qtc_QLocale_setDefault" qtc_QLocale_setDefault :: Ptr (TQLocale t1) -> IO ()

setNumberOptions :: QLocale a -> ((NumberOptions)) -> IO ()
setNumberOptions x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_setNumberOptions cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QLocale_setNumberOptions" qtc_QLocale_setNumberOptions :: Ptr (TQLocale a) -> CLong -> IO ()

qLocaleSystem :: (()) -> IO (QLocale ())
qLocaleSystem ()
  = withQLocaleResult $
    qtc_QLocale_system

foreign import ccall "qtc_QLocale_system" qtc_QLocale_system :: IO (Ptr (TQLocale ()))

class QtimeFormat x1 where
 timeFormat :: QLocale a -> x1 -> IO (String)

instance QtimeFormat (()) where
 timeFormat x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_timeFormat cobj_x0

foreign import ccall "qtc_QLocale_timeFormat" qtc_QLocale_timeFormat :: Ptr (TQLocale a) -> IO (Ptr (TQString ()))

instance QtimeFormat ((QLocaleFormatType)) where
 timeFormat x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_timeFormat1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLocale_timeFormat1" qtc_QLocale_timeFormat1 :: Ptr (TQLocale a) -> CLong -> IO (Ptr (TQString ()))

toDouble :: QLocale a -> ((String)) -> IO (Double)
toDouble x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toDouble cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toDouble" qtc_QLocale_toDouble :: Ptr (TQLocale a) -> CWString -> IO CDouble

toInt :: QLocale a -> ((String)) -> IO (Int)
toInt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toInt cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toInt" qtc_QLocale_toInt :: Ptr (TQLocale a) -> CWString -> IO CInt

toLongLong :: QLocale a -> ((String)) -> IO (Int)
toLongLong x0 (x1)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toLongLong cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toLongLong" qtc_QLocale_toLongLong :: Ptr (TQLocale a) -> CWString -> IO CLLong

instance QtoString (QLocale a) ((Double)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_toString7 cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLocale_toString7" qtc_QLocale_toString7 :: Ptr (TQLocale a) -> CDouble -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((Int)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_toString1 cobj_x0 (toCUShort x1)

foreign import ccall "qtc_QLocale_toString1" qtc_QLocale_toString1 :: Ptr (TQLocale a) -> CUShort -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QDate t1)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale_toString cobj_x0 cobj_x1

foreign import ccall "qtc_QLocale_toString" qtc_QLocale_toString :: Ptr (TQLocale a) -> Ptr (TQDate t1) -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QDate t1, QLocaleFormatType)) where
 toString x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale_toString9 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QLocale_toString9" qtc_QLocale_toString9 :: Ptr (TQLocale a) -> Ptr (TQDate t1) -> CLong -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QDate t1, String)) where
 toString x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QLocale_toString8 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QLocale_toString8" qtc_QLocale_toString8 :: Ptr (TQLocale a) -> Ptr (TQDate t1) -> CWString -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QTime t1)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale_toString6 cobj_x0 cobj_x1

foreign import ccall "qtc_QLocale_toString6" qtc_QLocale_toString6 :: Ptr (TQLocale a) -> Ptr (TQTime t1) -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QTime t1, QLocaleFormatType)) where
 toString x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLocale_toString11 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QLocale_toString11" qtc_QLocale_toString11 :: Ptr (TQLocale a) -> Ptr (TQTime t1) -> CLong -> IO (Ptr (TQString ()))

instance QtoString (QLocale a) ((QTime t1, String)) where
 toString x0 (x1, x2)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QLocale_toString10 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QLocale_toString10" qtc_QLocale_toString10 :: Ptr (TQLocale a) -> Ptr (TQTime t1) -> CWString -> IO (Ptr (TQString ()))

toUInt :: QLocale a -> ((String)) -> IO (Int)
toUInt x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toUInt cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toUInt" qtc_QLocale_toUInt :: Ptr (TQLocale a) -> CWString -> IO CUInt

toULongLong :: QLocale a -> ((String)) -> IO (Int)
toULongLong x0 (x1)
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toULongLong cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toULongLong" qtc_QLocale_toULongLong :: Ptr (TQLocale a) -> CWString -> IO CLLong

toUShort :: QLocale a -> ((String)) -> IO (Int)
toUShort x0 (x1)
  = withUnsignedShortResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLocale_toUShort cobj_x0 cstr_x1

foreign import ccall "qtc_QLocale_toUShort" qtc_QLocale_toUShort :: Ptr (TQLocale a) -> CWString -> IO CUShort

class QzeroDigit x0 x1 where
 zeroDigit :: x0 -> x1 -> IO (QChar ())

class QzeroDigit_nf x0 x1 where
 zeroDigit_nf :: x0 -> x1 -> IO (QChar ())

instance QzeroDigit (QLocale ()) (()) where
 zeroDigit x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_zeroDigit cobj_x0

foreign import ccall "qtc_QLocale_zeroDigit" qtc_QLocale_zeroDigit :: Ptr (TQLocale a) -> IO (Ptr (TQChar ()))

instance QzeroDigit (QLocaleSc a) (()) where
 zeroDigit x0 ()
  = withQCharResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_zeroDigit cobj_x0

instance QzeroDigit_nf (QLocale ()) (()) where
 zeroDigit_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_zeroDigit cobj_x0

instance QzeroDigit_nf (QLocaleSc a) (()) where
 zeroDigit_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_zeroDigit cobj_x0

qLocale_delete :: QLocale a -> IO ()
qLocale_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLocale_delete cobj_x0

foreign import ccall "qtc_QLocale_delete" qtc_QLocale_delete :: Ptr (TQLocale a) -> IO ()

