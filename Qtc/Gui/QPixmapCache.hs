{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPixmapCache.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPixmapCache (
  QqPixmapCache(..)
  ,QqPixmapCache_nf(..)
  ,qPixmapCacheCacheLimit
  ,qPixmapCacheClear
  ,qPixmapCacheFind
  ,qPixmapCacheInsert
  ,qPixmapCacheRemove
  ,qPixmapCacheSetCacheLimit
  ,qPixmapCache_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqPixmapCache x1 where
  qPixmapCache :: x1 -> IO (QPixmapCache ())

instance QqPixmapCache (()) where
 qPixmapCache ()
  = withQPixmapCacheResult $
    qtc_QPixmapCache

foreign import ccall "qtc_QPixmapCache" qtc_QPixmapCache :: IO (Ptr (TQPixmapCache ()))

instance QqPixmapCache ((QPixmapCache t1)) where
 qPixmapCache (x1)
  = withQPixmapCacheResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmapCache1 cobj_x1

foreign import ccall "qtc_QPixmapCache1" qtc_QPixmapCache1 :: Ptr (TQPixmapCache t1) -> IO (Ptr (TQPixmapCache ()))

class QqPixmapCache_nf x1 where
  qPixmapCache_nf :: x1 -> IO (QPixmapCache ())

instance QqPixmapCache_nf (()) where
 qPixmapCache_nf ()
  = withObjectRefResult $
    qtc_QPixmapCache

instance QqPixmapCache_nf ((QPixmapCache t1)) where
 qPixmapCache_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPixmapCache1 cobj_x1

qPixmapCacheCacheLimit :: (()) -> IO (Int)
qPixmapCacheCacheLimit ()
  = withIntResult $
    qtc_QPixmapCache_cacheLimit

foreign import ccall "qtc_QPixmapCache_cacheLimit" qtc_QPixmapCache_cacheLimit :: IO CInt

qPixmapCacheClear :: (()) -> IO ()
qPixmapCacheClear ()
  = qtc_QPixmapCache_clear

foreign import ccall "qtc_QPixmapCache_clear" qtc_QPixmapCache_clear :: IO ()

qPixmapCacheFind :: ((String)) -> IO (QPixmap ())
qPixmapCacheFind (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QPixmapCache_find cstr_x1

foreign import ccall "qtc_QPixmapCache_find" qtc_QPixmapCache_find :: CWString -> IO (Ptr (TQPixmap ()))

qPixmapCacheInsert :: ((String, QPixmap t2)) -> IO (Bool)
qPixmapCacheInsert (x1, x2)
  = withBoolResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPixmapCache_insert cstr_x1 cobj_x2

foreign import ccall "qtc_QPixmapCache_insert" qtc_QPixmapCache_insert :: CWString -> Ptr (TQPixmap t2) -> IO CBool

qPixmapCacheRemove :: ((String)) -> IO ()
qPixmapCacheRemove (x1)
  = withCWString x1 $ \cstr_x1 ->
    qtc_QPixmapCache_remove cstr_x1

foreign import ccall "qtc_QPixmapCache_remove" qtc_QPixmapCache_remove :: CWString -> IO ()

qPixmapCacheSetCacheLimit :: ((Int)) -> IO ()
qPixmapCacheSetCacheLimit (x1)
  = qtc_QPixmapCache_setCacheLimit (toCInt x1)

foreign import ccall "qtc_QPixmapCache_setCacheLimit" qtc_QPixmapCache_setCacheLimit :: CInt -> IO ()

qPixmapCache_delete :: QPixmapCache a -> IO ()
qPixmapCache_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPixmapCache_delete cobj_x0

foreign import ccall "qtc_QPixmapCache_delete" qtc_QPixmapCache_delete :: Ptr (TQPixmapCache a) -> IO ()

