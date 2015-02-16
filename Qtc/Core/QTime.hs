{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTime.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QTime (
  QqTime(..)
  ,QqTime_nf(..)
  ,qTimeCurrentTime
  ,elapsed
  ,QqTimeFromString(..)
  ,hour
  ,QqTimeIsValid(..)
  ,minute
  ,msec
  ,msecsTo
  ,restart
  ,second
  ,QsetHMS(..)
  ,qTime_delete
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

class QqTime x1 where
  qTime :: x1 -> IO (QTime ())

instance QqTime (()) where
 qTime ()
  = withQTimeResult $
    qtc_QTime

foreign import ccall "qtc_QTime" qtc_QTime :: IO (Ptr (TQTime ()))

instance QqTime ((QTime t1)) where
 qTime (x1)
  = withQTimeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTime1 cobj_x1

foreign import ccall "qtc_QTime1" qtc_QTime1 :: Ptr (TQTime t1) -> IO (Ptr (TQTime ()))

instance QqTime ((Int, Int)) where
 qTime (x1, x2)
  = withQTimeResult $
    qtc_QTime2 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTime2" qtc_QTime2 :: CInt -> CInt -> IO (Ptr (TQTime ()))

instance QqTime ((Int, Int, Int)) where
 qTime (x1, x2, x3)
  = withQTimeResult $
    qtc_QTime3 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTime3" qtc_QTime3 :: CInt -> CInt -> CInt -> IO (Ptr (TQTime ()))

instance QqTime ((Int, Int, Int, Int)) where
 qTime (x1, x2, x3, x4)
  = withQTimeResult $
    qtc_QTime4 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTime4" qtc_QTime4 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQTime ()))

class QqTime_nf x1 where
  qTime_nf :: x1 -> IO (QTime ())

instance QqTime_nf (()) where
 qTime_nf ()
  = withObjectRefResult $
    qtc_QTime

instance QqTime_nf ((QTime t1)) where
 qTime_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTime1 cobj_x1

instance QqTime_nf ((Int, Int)) where
 qTime_nf (x1, x2)
  = withObjectRefResult $
    qtc_QTime2 (toCInt x1) (toCInt x2)

instance QqTime_nf ((Int, Int, Int)) where
 qTime_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QTime3 (toCInt x1) (toCInt x2) (toCInt x3)

instance QqTime_nf ((Int, Int, Int, Int)) where
 qTime_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QTime4 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QaddMSecs (QTime a) ((Int)) (IO (QTime ())) where
 addMSecs x0 (x1)
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_addMSecs cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTime_addMSecs" qtc_QTime_addMSecs :: Ptr (TQTime a) -> CInt -> IO (Ptr (TQTime ()))

instance QaddSecs (QTime a) ((Int)) (IO (QTime ())) where
 addSecs x0 (x1)
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_addSecs cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTime_addSecs" qtc_QTime_addSecs :: Ptr (TQTime a) -> CInt -> IO (Ptr (TQTime ()))

qTimeCurrentTime :: (()) -> IO (QTime ())
qTimeCurrentTime ()
  = withQTimeResult $
    qtc_QTime_currentTime

foreign import ccall "qtc_QTime_currentTime" qtc_QTime_currentTime :: IO (Ptr (TQTime ()))

elapsed :: QTime a -> (()) -> IO (Int)
elapsed x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_elapsed cobj_x0

foreign import ccall "qtc_QTime_elapsed" qtc_QTime_elapsed :: Ptr (TQTime a) -> IO CInt

class QqTimeFromString x1 where
 qTimeFromString :: x1 -> IO (QTime ())

instance QqTimeFromString ((String)) where
 qTimeFromString (x1)
  = withQTimeResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTime_fromString cstr_x1

foreign import ccall "qtc_QTime_fromString" qtc_QTime_fromString :: CWString -> IO (Ptr (TQTime ()))

instance QqTimeFromString ((String, DateFormat)) where
 qTimeFromString (x1, x2)
  = withQTimeResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTime_fromString1 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTime_fromString1" qtc_QTime_fromString1 :: CWString -> CLong -> IO (Ptr (TQTime ()))

instance QqTimeFromString ((String, String)) where
 qTimeFromString (x1, x2)
  = withQTimeResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTime_fromString2 cstr_x1 cstr_x2

foreign import ccall "qtc_QTime_fromString2" qtc_QTime_fromString2 :: CWString -> CWString -> IO (Ptr (TQTime ()))

hour :: QTime a -> (()) -> IO (Int)
hour x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_hour cobj_x0

foreign import ccall "qtc_QTime_hour" qtc_QTime_hour :: Ptr (TQTime a) -> IO CInt

instance QqisNull (QTime a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_isNull cobj_x0

foreign import ccall "qtc_QTime_isNull" qtc_QTime_isNull :: Ptr (TQTime a) -> IO CBool

class QqTimeIsValid x1 where
 qTimeIsValid :: x1 -> IO (Bool)

instance QqTimeIsValid ((Int, Int, Int)) where
 qTimeIsValid (x1, x2, x3)
  = withBoolResult $
    qtc_QTime_isValid1 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTime_isValid1" qtc_QTime_isValid1 :: CInt -> CInt -> CInt -> IO CBool

instance QqTimeIsValid ((Int, Int, Int, Int)) where
 qTimeIsValid (x1, x2, x3, x4)
  = withBoolResult $
    qtc_QTime_isValid2 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTime_isValid2" qtc_QTime_isValid2 :: CInt -> CInt -> CInt -> CInt -> IO CBool

instance QqisValid (QTime ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_isValid cobj_x0

foreign import ccall "qtc_QTime_isValid" qtc_QTime_isValid :: Ptr (TQTime a) -> IO CBool

instance QqisValid (QTimeSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_isValid cobj_x0

minute :: QTime a -> (()) -> IO (Int)
minute x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_minute cobj_x0

foreign import ccall "qtc_QTime_minute" qtc_QTime_minute :: Ptr (TQTime a) -> IO CInt

msec :: QTime a -> (()) -> IO (Int)
msec x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_msec cobj_x0

foreign import ccall "qtc_QTime_msec" qtc_QTime_msec :: Ptr (TQTime a) -> IO CInt

msecsTo :: QTime a -> ((QTime t1)) -> IO (Int)
msecsTo x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTime_msecsTo cobj_x0 cobj_x1

foreign import ccall "qtc_QTime_msecsTo" qtc_QTime_msecsTo :: Ptr (TQTime a) -> Ptr (TQTime t1) -> IO CInt

restart :: QTime a -> (()) -> IO (Int)
restart x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_restart cobj_x0

foreign import ccall "qtc_QTime_restart" qtc_QTime_restart :: Ptr (TQTime a) -> IO CInt

second :: QTime a -> (()) -> IO (Int)
second x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_second cobj_x0

foreign import ccall "qtc_QTime_second" qtc_QTime_second :: Ptr (TQTime a) -> IO CInt

instance QsecsTo (QTime a) ((QTime t1)) where
 secsTo x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTime_secsTo cobj_x0 cobj_x1

foreign import ccall "qtc_QTime_secsTo" qtc_QTime_secsTo :: Ptr (TQTime a) -> Ptr (TQTime t1) -> IO CInt

class QsetHMS x1 where
 setHMS :: QTime a -> x1 -> IO (Bool)

instance QsetHMS ((Int, Int, Int)) where
 setHMS x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_setHMS cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QTime_setHMS" qtc_QTime_setHMS :: Ptr (TQTime a) -> CInt -> CInt -> CInt -> IO CBool

instance QsetHMS ((Int, Int, Int, Int)) where
 setHMS x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_setHMS1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTime_setHMS1" qtc_QTime_setHMS1 :: Ptr (TQTime a) -> CInt -> CInt -> CInt -> CInt -> IO CBool

instance Qstart (QTime a) (()) (IO ()) where
 start x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_start cobj_x0

foreign import ccall "qtc_QTime_start" qtc_QTime_start :: Ptr (TQTime a) -> IO ()

instance QtoString (QTime a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_toString cobj_x0

foreign import ccall "qtc_QTime_toString" qtc_QTime_toString :: Ptr (TQTime a) -> IO (Ptr (TQString ()))

instance QtoString (QTime a) ((DateFormat)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_toString1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTime_toString1" qtc_QTime_toString1 :: Ptr (TQTime a) -> CLong -> IO (Ptr (TQString ()))

instance QtoString (QTime a) ((String)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTime_toString2 cobj_x0 cstr_x1

foreign import ccall "qtc_QTime_toString2" qtc_QTime_toString2 :: Ptr (TQTime a) -> CWString -> IO (Ptr (TQString ()))

qTime_delete :: QTime a -> IO ()
qTime_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTime_delete cobj_x0

foreign import ccall "qtc_QTime_delete" qtc_QTime_delete :: Ptr (TQTime a) -> IO ()

