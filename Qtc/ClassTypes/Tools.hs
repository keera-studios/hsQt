{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Tools.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.ClassTypes.Tools (
  QUiLoader, TQUiLoader, CQUiLoader, qCast_QUiLoader, QUiLoaderSc, TQUiLoaderSc, CQUiLoaderSc, qCastList_QUiLoader, withQUiLoaderResult, qUiLoaderFromPtr, withQListQUiLoaderResult, qUiLoaderListFromPtrList
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui

type QUiLoader a = QObject (CQUiLoader a)
type TQUiLoader a = TQObject (CQUiLoader a)
data CQUiLoader a = CQUiLoader

type QUiLoaderSc a = QUiLoader (CQUiLoaderSc a)
type TQUiLoaderSc a = TQUiLoader (CQUiLoaderSc a)
data CQUiLoaderSc a = CQUiLoaderSc

qCast_QUiLoader :: Object a -> IO (QUiLoader ())
qCast_QUiLoader _qobj
  = return (objectCast _qobj)

withQUiLoaderResult :: IO (Ptr (TQUiLoader a)) -> IO (QUiLoader a)
withQUiLoaderResult f
  = withObjectResult qtc_QUiLoader_getFinalizer f

qUiLoaderFromPtr :: Ptr (TQUiLoader a) -> IO (QUiLoader a)
qUiLoaderFromPtr p
  = objectFromPtr qtc_QUiLoader_getFinalizer p

withQListQUiLoaderResult :: (Ptr (Ptr (TQUiLoader a)) -> IO CInt) -> IO [QUiLoader a]
withQListQUiLoaderResult f
  = withQListObjectResult qtc_QUiLoader_getFinalizer f

qUiLoaderListFromPtrList :: [Ptr (TQUiLoader a)] -> IO [QUiLoader a]
qUiLoaderListFromPtrList p
  = objectListFromPtrList qtc_QUiLoader_getFinalizer p

foreign import ccall qtc_QUiLoader_getFinalizer :: FunPtr (Ptr (TQUiLoader a) -> IO ())

class QqCastList_QUiLoader a r where
  qcl_QUiLoader :: [QUiLoader ()] -> a -> r

instance QqCastList_QUiLoader (QUiLoader ()) [QUiLoader ()] where
  qcl_QUiLoader l x = reverse $ x:l

instance QqCastList_QUiLoader a r => QqCastList_QUiLoader (QUiLoader ()) (a -> r) where
  qcl_QUiLoader l x sx = qcl_QUiLoader (x:l) sx

qCastList_QUiLoader x = qcl_QUiLoader [] x

