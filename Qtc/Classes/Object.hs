{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Object.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Object (
 Object(..), objectNull, objectIsNull, objectCast, objectFromPtr, objectFromPtr_nf, withObjectPtr, ptrFromObject, objectListFromPtrList, objectListFromPtrList_nf
 ) where

import Foreign.C.Types
import Control.Exception 
import System.IO.Unsafe( unsafePerformIO )
import Foreign.C
import Foreign.Ptr 
import Foreign.ForeignPtr 
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array

data Object a = Object ! (ForeignPtr a)

instance Eq (Object a) where
  fobj1 == fobj2
    = unsafePerformIO $
      withObjectPtr fobj1 $ \p1 ->
      withObjectPtr fobj2 $ \p2 ->
      return (p1 == p2)

instance Ord (Object a) where
  compare fobj1 fobj2
    = unsafePerformIO $
      withObjectPtr fobj1 $ \p1 ->
      withObjectPtr fobj2 $ \p2 ->
      return (compare p1 p2)

instance Show (Object a) where
  show fobj
    = unsafePerformIO $
      withObjectPtr fobj $ \p ->
      return (show p)

objectNull :: Object a
objectNull
  = Object $ unsafePerformIO (newForeignPtr_ nullPtr)
 
objectIsNull :: Object a -> Bool
objectIsNull fobj
  = unsafePerformIO $
    withObjectPtr fobj $ \p -> return (p == nullPtr)

objectCast :: Object a -> Object b
objectCast (Object fp) = Object (castForeignPtr fp)

withObjectPtr :: Object a -> (Ptr a -> IO b) -> IO b
withObjectPtr (Object fp) f = withForeignPtr fp f

objectFromPtr :: FunPtr (Ptr a -> IO ()) -> Ptr a -> IO (Object a)
objectFromPtr f p
  = do 
    nfp <- newForeignPtr f p
    return $ Object nfp

objectFromPtr_nf :: Ptr a -> IO (Object a)
objectFromPtr_nf p
  = do 
    nfp <- newForeignPtr_ p
    return $ Object nfp

ptrFromObject :: Object a -> Ptr a
ptrFromObject (Object fp) = unsafeForeignPtrToPtr fp

objectListFromPtrList :: FunPtr (Ptr a -> IO ()) -> [Ptr a] -> IO [Object a]
objectListFromPtrList f pl = objectListFromPtrList_r f [] pl

objectListFromPtrList_r :: FunPtr (Ptr a -> IO ()) -> [Object a] -> [Ptr a] -> IO [Object a]
objectListFromPtrList_r _ fol [] = return fol
objectListFromPtrList_r f fol (x:xs)
  = do 
    nfp <- newForeignPtr f x
    objectListFromPtrList_r f (fol ++ [Object nfp]) xs

objectListFromPtrList_nf :: [Ptr a] -> IO [Object a]
objectListFromPtrList_nf pl = objectListFromPtrList_nf_r [] pl

objectListFromPtrList_nf_r :: [Object a] -> [Ptr a] -> IO [Object a]
objectListFromPtrList_nf_r fol [] = return fol
objectListFromPtrList_nf_r fol (x:xs)
  = do 
    nfp <- newForeignPtr_ x
    objectListFromPtrList_nf_r (fol ++ [Object nfp]) xs

