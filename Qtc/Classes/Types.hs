{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Types.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:33
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Types (
  Object(..), objectNull, objectIsNull, objectCast, objectFromPtr, objectFromPtr_nf, withObjectPtr, ptrFromObject, objectListFromPtrList, objectListFromPtrList_nf
  , QVoid, TQVoid, CQVoid, withQVoidResult
  , QMetaObject, TQMetaObject, CQMetaObject, withQMetaObjectResult
  , QString, TQString, CQString
  , QByteArray, TQByteArray, CQByteArray, withQByteArrayResult
  , QResource, TQResource, CQResource, withQResourceResult
  , QTransform, TQTransform, CQTransform, withQTransformResult
  , Element, TElement, CElement, withElementResult 
  , PaintContext, TPaintContext, CPaintContext, withPaintContextResult 
  , ExtraSelection, TExtraSelection, CExtraSelection
  , QTextInlineObject, TQTextInlineObject, CQTextInlineObject
  , QTextObjectInterface, TQTextObjectInterface, CQTextObjectInterface
  , QImageTextKeyLang, TQImageTextKeyLang, CQImageTextKeyLang
  , Q_IPV6ADDR, TQ_IPV6ADDR, CQ_IPV6ADDR, withQ_IPV6ADDRResult
  , withObjectResult, withObjectRefResult
  , intFromBool, boolFromInt
  , withQListObject, withPtrPtrObject, withQListString
  , withQListObjectResult, withQListObjectRefResult, withPtrPtrObjectResult, withQListStringResult
  , withQListDouble, withQListDoubleResult, withQListIntResult, withQListLongResult
  , CString, withCString
  , withStringResult, withCStringResult
  , stringFromPtr, cstringFromPtr
  , newCWString, CWString, withCWString
  , CDouble, toCDouble, fromCDouble, withDoubleResult
  , CInt, toCInt, fromCInt, withIntResult
  , CUInt, toCUInt, fromCUInt, withUnsignedIntResult
  , CShort, toCShort, fromCShort, withShortResult
  , CUShort, toCUShort, fromCUShort, withUnsignedShortResult
  , CLong, toCLong, fromCLong, withLongResult
  , CULong, toCULong, fromCULong, withUnsignedLongResult
  , CLLong, toCLLong, fromCLLong, withLongLongResult
  , CULLong, toCULLong, fromCULLong, withUnsignedLongLongResult
  , CChar, toCChar, fromCChar, withCharResult
  , CWchar, toCWchar
  , CBool, toCBool, fromCBool, withBoolResult
  , Ptr, nullPtr, ptrNull, ptrIsNull, ptrCast 
  , ForeignPtr, fptrNull, fptrIsNull, fptrCast 
  , FunPtr, toCFunPtr, freeHaskellFunPtr, castPtrToFunPtr
  , addForeignPtrFinalizer
  ) where

import Foreign.C.Types
import System.IO.Unsafe (unsafePerformIO)
import Foreign.C
import Foreign.Ptr
import Foreign.ForeignPtr 
import Foreign.Storable
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array

import Qtc.Classes.Object
type QVoid a = Object (CQVoid a)
type TQVoid a = CQVoid a
data CQVoid a = CQVoid

withQVoidResult :: IO (Ptr (TQVoid a)) -> IO (QVoid a)
withQVoidResult f
  = withObjectRefResult f

foreign import ccall qtc_QVoid_GetFinalizer :: FunPtr (Ptr (TQVoid a) -> IO ())

type QMetaObject a = Object (CQMetaObject a)
type TQMetaObject a = CQMetaObject a
data CQMetaObject a = CQMetaObject

withQMetaObjectResult :: IO (Ptr (TQMetaObject a)) -> IO (QMetaObject a)
withQMetaObjectResult f
  = withObjectRefResult f

foreign import ccall qtc_QMetaObject_GetFinalizer :: FunPtr (Ptr (TQMetaObject a) -> IO ())

type QString a = Object (CQString a)
type TQString a = CQString a
data CQString a = CQString

type QByteArray a = Object (CQByteArray a)
type TQByteArray a = CQByteArray a
data CQByteArray a = CQByteArray

withQByteArrayResult :: IO (Ptr (TQByteArray a)) -> IO (QByteArray a)
withQByteArrayResult f
  = withObjectRefResult f

foreign import ccall qtc_QByteArray_GetFinalizer :: FunPtr (Ptr (TQByteArray a) -> IO ())

type QResource a = Object (CQResource a)
type TQResource a = CQResource a
data CQResource a = CQResource

withQResourceResult :: IO (Ptr (TQResource a)) -> IO (QResource a)
withQResourceResult f
  = withObjectRefResult f

foreign import ccall qtc_QResource_GetFinalizer :: FunPtr (Ptr (TQResource a) -> IO ())

type Q_IPV6ADDR a = Object (CQ_IPV6ADDR a)
type TQ_IPV6ADDR a = CQ_IPV6ADDR a
data CQ_IPV6ADDR a = CQ_IPV6ADDR

withQ_IPV6ADDRResult :: IO (Ptr (TQ_IPV6ADDR a)) -> IO (Q_IPV6ADDR a)
withQ_IPV6ADDRResult f
  = withObjectRefResult f

type QTransform a = Object (CQTransform a)
type TQTransform a = CQTransform a
data CQTransform a = CQTransform

withQTransformResult :: IO (Ptr (TQTransform a)) -> IO (QTransform a)
withQTransformResult f
  = withObjectRefResult f

type Element a = Object (CElement a)
type TElement a = CElement a
data CElement a = CElement

withElementResult :: IO (Ptr (TElement a)) -> IO (Element a)
withElementResult f
  = withObjectResult qtc_Element_getFinalizer f

foreign import ccall qtc_Element_getFinalizer :: FunPtr (Ptr (TElement a) -> IO ())

type PaintContext a = Object (CPaintContext a)
type TPaintContext a = CPaintContext a
data CPaintContext a = CPaintContext

withPaintContextResult :: IO (Ptr (TPaintContext a)) -> IO (PaintContext a)
withPaintContextResult f
  = withObjectResult qtc_PaintContext_getFinalizer f

foreign import ccall qtc_PaintContext_getFinalizer :: FunPtr (Ptr (TPaintContext a) -> IO ())

type ExtraSelection a = Object (CExtraSelection a)
type TExtraSelection a = CExtraSelection a
data CExtraSelection a = CExtraSelection

type QTextInlineObject a = Object (CQTextInlineObject a)
type TQTextInlineObject a = CQTextInlineObject a
data CQTextInlineObject a = CQTextInlineObject

type QTextObjectInterface a = Object (CQTextObjectInterface a)
type TQTextObjectInterface a = CQTextObjectInterface a
data CQTextObjectInterface a = CQTextObjectInterface

type QImageTextKeyLang a = Object (CQImageTextKeyLang a)
type TQImageTextKeyLang a = CQImageTextKeyLang a
data CQImageTextKeyLang a = CQImageTextKeyLang

withObjectResult :: FunPtr (Ptr a -> IO ()) -> IO (Ptr a) -> IO (Object a)
withObjectResult f io
  = do
    p <- io
    objectFromPtr f p

withObjectRefResult :: IO (Ptr a) -> IO (Object a)
withObjectRefResult io
  = do
    p <- io
    objectFromPtr_nf p

withDoubleResult :: IO CDouble -> IO Double
withDoubleResult io
  = do 
    x <- io
    return (fromCDouble x)

toCDouble :: Double -> CDouble
toCDouble i = realToFrac i

fromCDouble :: CDouble -> Double
fromCDouble ci = realToFrac ci

withIntResult :: IO CInt -> IO Int
withIntResult io
  = do 
    x <- io
    return (fromCInt x)

toCInt :: Int -> CInt
toCInt i = fromIntegral i

fromCInt :: CInt -> Int
fromCInt ci = fromIntegral ci

withUnsignedIntResult :: IO CUInt -> IO Int
withUnsignedIntResult io
  = do 
    x <- io
    return (fromCUInt x)

toCUInt :: Int -> CUInt
toCUInt i = fromIntegral i

fromCUInt :: CUInt -> Int
fromCUInt ci = fromIntegral ci

withShortResult :: IO CShort -> IO Int
withShortResult io
  = do 
    x <- io
    return (fromCShort x)

toCShort :: Int -> CShort
toCShort i = fromIntegral i

fromCShort :: CShort -> Int
fromCShort ci = fromIntegral ci

withUnsignedShortResult :: IO CUShort -> IO Int
withUnsignedShortResult io
  = do 
    x <- io
    return (fromCUShort x)

toCUShort :: Int -> CUShort
toCUShort i = fromIntegral i

fromCUShort :: CUShort -> Int
fromCUShort ci = fromIntegral ci

withLongResult :: IO CLong -> IO Int
withLongResult io
  = do 
    x <- io
    return (fromCLong x)

toCLong :: Int -> CLong
toCLong i = fromIntegral i

fromCLong :: CLong -> Int
fromCLong ci = fromIntegral ci

withUnsignedLongResult :: IO CULong -> IO Int
withUnsignedLongResult io
  = do 
    x <- io
    return (fromCULong x)

toCULong :: Int -> CULong
toCULong i = fromIntegral i

fromCULong :: CULong -> Int
fromCULong ci = fromIntegral ci

withLongLongResult :: IO CLLong -> IO Int
withLongLongResult io
  = do 
    x <- io
    return (fromCLLong x)

toCLLong :: Int -> CLLong
toCLLong i = fromIntegral i

fromCLLong :: CLLong -> Int
fromCLLong ci = fromIntegral ci

withUnsignedLongLongResult :: IO CULLong -> IO Int
withUnsignedLongLongResult io
  = do 
    x <- io
    return (fromCULLong x)

toCULLong :: Int -> CULLong
toCULLong i = fromIntegral i

fromCULLong :: CULLong -> Int
fromCULLong ci = fromIntegral ci

type CBool = CInt

toCBool :: Bool -> CBool
toCBool b = toCInt (if b then 1 else 0)

withBoolResult :: IO CBool -> IO Bool
withBoolResult io
  = do 
    x <- io
    return (fromCBool x)

fromCBool :: CBool -> Bool
fromCBool cb = (cb /= 0)

intFromBool :: Bool -> Int
intFromBool b = if b then 1 else 0

boolFromInt :: Int -> Bool
boolFromInt i = (i/=0)

toCChar :: Char -> CChar
toCChar = castCharToCChar

withCharResult :: (Num a, Integral a) => IO a -> IO Char
withCharResult io
  = do 
    x <- io
    return (fromCWchar x)

fromCChar :: CChar -> Char
fromCChar = castCCharToChar

toCWchar :: (Num a) => Char -> a
toCWchar = fromIntegral . fromEnum

fromCWchar :: (Num a, Integral a) => a -> Char
fromCWchar = toEnum . fromIntegral

withQtWStringResult :: (Ptr CWchar -> IO CInt) -> IO String
withQtWStringResult f
  = do
    len <- f nullPtr
    if (len<=0)
     then return ""
     else withCWString (replicate (fromCInt len) ' ') $ \cstr ->
          do f cstr
             peekCWString cstr

withStringResult :: IO (Ptr (TQString a)) -> IO String
withStringResult io
  = do 
    qs <- io
    s <- withQtWStringResult (qtc_QString_GetString qs)
    qtc_QString_Delete qs
    return s

stringFromPtr :: Ptr (TQString a) -> IO String
stringFromPtr qptr
  = do s <- withQtWStringResult (qtc_QString_GetString qptr)
       qtc_QString_Delete qptr
       return s

foreign import ccall "qtc_QString_Delete"    qtc_QString_Delete    :: Ptr (TQString a) -> IO ()
foreign import ccall "qtc_QString_GetString" qtc_QString_GetString :: Ptr (TQString a) -> Ptr CWchar -> IO CInt

withQtStringResult :: (Ptr CChar -> IO CInt) -> IO String
withQtStringResult f
  = do
    len <- f nullPtr
    if (len<=0)
     then return ""
     else withCString (replicate (fromCInt len) ' ') $ \cstr ->
          do f cstr
             peekCString cstr

withCStringResult :: IO (Ptr (TQByteArray a)) -> IO String
withCStringResult io
  = do 
    qba <- io
    s <- withQtStringResult (qtc_QByteArray_GetByteArray qba)
    qtc_QByteArray_Delete qba
    return s

cstringFromPtr :: Ptr (TQByteArray a) -> IO String
cstringFromPtr qptr
  = do s <- withQtStringResult (qtc_QByteArray_GetByteArray qptr)
       qtc_QByteArray_Delete qptr
       return s

foreign import ccall "qtc_QByteArray_Delete"    qtc_QByteArray_Delete    :: Ptr (TQByteArray a) -> IO ()
foreign import ccall "qtc_QByteArray_GetByteArray" qtc_QByteArray_GetByteArray :: Ptr (TQByteArray a) -> Ptr CChar -> IO CInt

withQListStringResult :: (Ptr (Ptr (TQString a)) -> IO CInt) -> IO [String]
withQListStringResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             arr <- peekArray len carr
             mapM stringFromPtr arr

withQListIntResult :: (Ptr CInt -> IO CInt) -> IO [Int]
withQListIntResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             xs <- peekArray len carr
             return (map fromCInt xs)

withQListLongResult :: (Ptr CLong -> IO CInt) -> IO [Int]
withQListLongResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             xs <- peekArray len carr
             return (map fromCLong xs)

withQListDouble :: [Double] -> (CInt -> Ptr CDouble -> IO b) -> IO b
withQListDouble xs f
  = withArray (map toCDouble xs) $ \carr ->
    f (toCInt (length xs)) carr

withQListDoubleResult :: (Ptr CDouble -> IO CInt) -> IO [Double]
withQListDoubleResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             xs <- peekArray len carr
             return (map fromCDouble xs)

withQListObjectResult :: FunPtr (Ptr a -> IO ()) -> (Ptr (Ptr a) -> IO CInt) -> IO [Object a]
withQListObjectResult ff f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             ps <- peekArray len carr
             objectListFromPtrList ff ps

withQListObjectRefResult :: (Ptr (Ptr a) -> IO CInt) -> IO [Object a]
withQListObjectRefResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             ps <- peekArray len carr
             objectListFromPtrList_nf ps

withPtrPtrObjectResult :: (Ptr (Ptr ()) -> IO CInt) -> IO [Object ()]
withPtrPtrObjectResult f
  = do
    clen <- f nullPtr
    let len = fromCInt clen
    if (len <= 0)
     then return []
     else allocaArray len $ \carr ->
          do f carr
             ps <- peekArray len carr
             objectListFromPtrList_nf ps

withQListString :: [String] -> (CInt -> Ptr CWString -> IO a) -> IO a
withQListString xs f
  = withCWStrings xs [] $ \cxs ->
    withArray0 ptrNull cxs $ \carr ->
    f (toCInt len) carr
  where
    len = length xs
    withCWStrings [] cxs f
      = f (reverse cxs)
    withCWStrings (x:xs) cxs f
      = withCWString x $ \cx ->
        withCWStrings xs (cx:cxs) f

withQListObject :: [Object a] -> (CInt -> Ptr (Ptr a) -> IO b) -> IO b
withQListObject xs f
  = withArray0 ptrNull (map ptrFromObject xs) $ \carr ->
    f (toCInt (length xs)) carr

withPtrPtrObject :: [Object ()] -> (CInt -> Ptr (Ptr ()) -> IO a) -> IO a
withPtrPtrObject xs f
  = withArray0 ptrNull (map ptrFromObject xs) $ \carr ->
    f (toCInt (length xs)) carr

toCFunPtr :: FunPtr a -> Ptr a
toCFunPtr fptr = castFunPtrToPtr fptr

ptrNull :: Ptr a
ptrNull = nullPtr

ptrIsNull :: Ptr a -> Bool
ptrIsNull p = (p == ptrNull)

ptrCast :: Ptr a -> Ptr b
ptrCast p = castPtr p

fptrNull :: IO (ForeignPtr a)
fptrNull = newForeignPtr_ nullPtr

fptrIsNull :: ForeignPtr a -> Bool
fptrIsNull fp
  = ((unsafeForeignPtrToPtr fp) == ptrNull)

fptrCast :: ForeignPtr a -> ForeignPtr b
fptrCast p = castForeignPtr p

