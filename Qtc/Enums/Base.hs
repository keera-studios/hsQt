{-# OPTIONS -fglasgow-exts -XUndecidableInstances #-}
-----------------------------------------------------------------------------
{-| Module    : Base.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Base (
  QEnum(..), QEnumC, qEnum_toInt, qEnum_fromInt, withQEnumResult, withQEnumListResult,
  QFlags(..), QFlagsC, qFlags_toInt, qFlags_fromInt, withQFlagsResult, withQFlagsListResult 
  )
  where

import Foreign.C.Types
import Data.Bits
import Foreign.C

data QEnum a = QEnum a

class QEnumC a where
  qEnum_toInt :: QEnum a -> Int
  qEnum_fromInt :: Int -> QEnum a
  withQEnumResult :: IO CLong -> IO (QEnum a)
  withQEnumListResult :: IO [Int] -> IO [QEnum a]

instance QEnumC a => Eq (QEnum a)  where
 (==) x1 x2 = (qEnum_toInt x1) == (qEnum_toInt x2)
 (/=) x1 x2 = (qEnum_toInt x1) /= (qEnum_toInt x2)

instance QEnumC a => Ord (QEnum a)  where
 compare x1 x2 = compare (qEnum_toInt x1) (qEnum_toInt x2)
 (<) x1 x2 = (qEnum_toInt x1) < (qEnum_toInt x2)
 (<=) x1 x2 = (qEnum_toInt x1) <= (qEnum_toInt x2)
 (>) x1 x2 = (qEnum_toInt x1) > (qEnum_toInt x2)
 (>=) x1 x2 = (qEnum_toInt x1) >= (qEnum_toInt x2)

instance QEnumC a => Show (QEnum a)  where
 show x1 = show (qEnum_toInt x1)

newtype QNFlags a = QNFlags (QEnum a)

data QFlags a = QFlags a

class QFlagsC a where
  qFlags_toInt :: QFlags a -> Int
  qFlags_fromInt :: Int -> QFlags a
  withQFlagsResult :: IO CLong -> IO (QFlags a)
  withQFlagsListResult :: IO [Int] -> IO [QFlags a]

instance QFlagsC a => Eq (QFlags a)  where
 (==) x1 x2 = (qFlags_toInt x1) == (qFlags_toInt x2)

instance QFlagsC a => Show (QFlags a)  where
 show x1 = show (qFlags_toInt x1)

instance (QFlagsC a, Eq (QFlags a), Show (QFlags a)) => Num (QFlags a) where
 (+) x1 x2 = qFlags_fromInt $ (qFlags_toInt x1) + (qFlags_toInt x2)

instance (QFlagsC a, Eq (QFlags a), Show (QFlags a), Num (QFlags a)) => Bits (QFlags a) where
 (.&.) x1 x2 = qFlags_fromInt $ (qFlags_toInt x1) .&. (qFlags_toInt x2)
 (.|.) x1 x2 = qFlags_fromInt $ (qFlags_toInt x1) .|. (qFlags_toInt x2)

