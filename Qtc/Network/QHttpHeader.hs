{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHttpHeader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHttpHeader (
  QqHttpHeader(..)
  ,QqHttpHeader_nf(..)
  ,addValue
  ,allValues
  ,contentLength
  ,contentType
  ,hasContentLength
  ,hasContentType
  ,hasKey
  ,keys
  ,removeAllValues
  ,removeValue
  ,setContentLength
  ,setContentType
  ,qHttpHeader_delete, qHttpHeader_delete1
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
import Qtc.Classes.Network
import Qtc.ClassTypes.Network

instance QuserMethod (QHttpHeader ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpHeader_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHttpHeader_userMethod" qtc_QHttpHeader_userMethod :: Ptr (TQHttpHeader a) -> CInt -> IO ()

instance QuserMethod (QHttpHeaderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpHeader_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHttpHeader ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHttpHeader_userMethodVariant" qtc_QHttpHeader_userMethodVariant :: Ptr (TQHttpHeader a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHttpHeaderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHttpHeader x1 where
  qHttpHeader :: x1 -> IO (QHttpHeader ())

instance QqHttpHeader (()) where
 qHttpHeader ()
  = withQHttpHeaderResult $
    qtc_QHttpHeader

foreign import ccall "qtc_QHttpHeader" qtc_QHttpHeader :: IO (Ptr (TQHttpHeader ()))

instance QqHttpHeader ((QHttpHeader t1)) where
 qHttpHeader (x1)
  = withQHttpHeaderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpHeader1 cobj_x1

foreign import ccall "qtc_QHttpHeader1" qtc_QHttpHeader1 :: Ptr (TQHttpHeader t1) -> IO (Ptr (TQHttpHeader ()))

instance QqHttpHeader ((String)) where
 qHttpHeader (x1)
  = withQHttpHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader2 cstr_x1

foreign import ccall "qtc_QHttpHeader2" qtc_QHttpHeader2 :: CWString -> IO (Ptr (TQHttpHeader ()))

class QqHttpHeader_nf x1 where
  qHttpHeader_nf :: x1 -> IO (QHttpHeader ())

instance QqHttpHeader_nf (()) where
 qHttpHeader_nf ()
  = withObjectRefResult $
    qtc_QHttpHeader

instance QqHttpHeader_nf ((QHttpHeader t1)) where
 qHttpHeader_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpHeader1 cobj_x1

instance QqHttpHeader_nf ((String)) where
 qHttpHeader_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader2 cstr_x1

addValue :: QHttpHeader a -> ((String, String)) -> IO ()
addValue x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpHeader_addValue cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttpHeader_addValue" qtc_QHttpHeader_addValue :: Ptr (TQHttpHeader a) -> CWString -> CWString -> IO ()

allValues :: QHttpHeader a -> ((String)) -> IO ([String])
allValues x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_allValues cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QHttpHeader_allValues" qtc_QHttpHeader_allValues :: Ptr (TQHttpHeader a) -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

contentLength :: QHttpHeader a -> (()) -> IO (Int)
contentLength x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_contentLength cobj_x0

foreign import ccall "qtc_QHttpHeader_contentLength" qtc_QHttpHeader_contentLength :: Ptr (TQHttpHeader a) -> IO CUInt

contentType :: QHttpHeader a -> (()) -> IO (String)
contentType x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_contentType cobj_x0

foreign import ccall "qtc_QHttpHeader_contentType" qtc_QHttpHeader_contentType :: Ptr (TQHttpHeader a) -> IO (Ptr (TQString ()))

hasContentLength :: QHttpHeader a -> (()) -> IO (Bool)
hasContentLength x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_hasContentLength cobj_x0

foreign import ccall "qtc_QHttpHeader_hasContentLength" qtc_QHttpHeader_hasContentLength :: Ptr (TQHttpHeader a) -> IO CBool

hasContentType :: QHttpHeader a -> (()) -> IO (Bool)
hasContentType x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_hasContentType cobj_x0

foreign import ccall "qtc_QHttpHeader_hasContentType" qtc_QHttpHeader_hasContentType :: Ptr (TQHttpHeader a) -> IO CBool

hasKey :: QHttpHeader a -> ((String)) -> IO (Bool)
hasKey x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_hasKey cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_hasKey" qtc_QHttpHeader_hasKey :: Ptr (TQHttpHeader a) -> CWString -> IO CBool

instance QqisValid (QHttpHeader ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_isValid cobj_x0

foreign import ccall "qtc_QHttpHeader_isValid" qtc_QHttpHeader_isValid :: Ptr (TQHttpHeader a) -> IO CBool

instance QqisValid (QHttpHeaderSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_isValid cobj_x0

keys :: QHttpHeader a -> (()) -> IO ([String])
keys x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_keys cobj_x0 arr

foreign import ccall "qtc_QHttpHeader_keys" qtc_QHttpHeader_keys :: Ptr (TQHttpHeader a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QmajorVersion (QHttpHeader ()) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_majorVersion_h cobj_x0

foreign import ccall "qtc_QHttpHeader_majorVersion_h" qtc_QHttpHeader_majorVersion_h :: Ptr (TQHttpHeader a) -> IO CInt

instance QmajorVersion (QHttpHeaderSc a) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_majorVersion_h cobj_x0

instance QminorVersion (QHttpHeader ()) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_minorVersion_h cobj_x0

foreign import ccall "qtc_QHttpHeader_minorVersion_h" qtc_QHttpHeader_minorVersion_h :: Ptr (TQHttpHeader a) -> IO CInt

instance QminorVersion (QHttpHeaderSc a) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_minorVersion_h cobj_x0

instance Qparse (QHttpHeader ()) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_parse cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_parse" qtc_QHttpHeader_parse :: Ptr (TQHttpHeader a) -> CWString -> IO CBool

instance Qparse (QHttpHeaderSc a) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_parse cobj_x0 cstr_x1

instance QparseLine (QHttpHeader ()) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QHttpHeader_parseLine" qtc_QHttpHeader_parseLine :: Ptr (TQHttpHeader a) -> CWString -> CInt -> IO CBool

instance QparseLine (QHttpHeaderSc a) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

removeAllValues :: QHttpHeader a -> ((String)) -> IO ()
removeAllValues x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_removeAllValues cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_removeAllValues" qtc_QHttpHeader_removeAllValues :: Ptr (TQHttpHeader a) -> CWString -> IO ()

removeValue :: QHttpHeader a -> ((String)) -> IO ()
removeValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_removeValue cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_removeValue" qtc_QHttpHeader_removeValue :: Ptr (TQHttpHeader a) -> CWString -> IO ()

setContentLength :: QHttpHeader a -> ((Int)) -> IO ()
setContentLength x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_setContentLength cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHttpHeader_setContentLength" qtc_QHttpHeader_setContentLength :: Ptr (TQHttpHeader a) -> CInt -> IO ()

setContentType :: QHttpHeader a -> ((String)) -> IO ()
setContentType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_setContentType cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_setContentType" qtc_QHttpHeader_setContentType :: Ptr (TQHttpHeader a) -> CWString -> IO ()

instance QsetValid (QHttpHeader ()) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_setValid cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHttpHeader_setValid" qtc_QHttpHeader_setValid :: Ptr (TQHttpHeader a) -> CBool -> IO ()

instance QsetValid (QHttpHeaderSc a) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_setValid cobj_x0 (toCBool x1)

instance QsetValue (QHttpHeader a) ((String, String)) where
 setValue x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpHeader_setValue cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttpHeader_setValue" qtc_QHttpHeader_setValue :: Ptr (TQHttpHeader a) -> CWString -> CWString -> IO ()

instance QtoString (QHttpHeader ()) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_toString_h cobj_x0

foreign import ccall "qtc_QHttpHeader_toString_h" qtc_QHttpHeader_toString_h :: Ptr (TQHttpHeader a) -> IO (Ptr (TQString ()))

instance QtoString (QHttpHeaderSc a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_toString_h cobj_x0

instance Qvalue (QHttpHeader a) ((String)) (IO (String)) where
 value x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpHeader_value cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpHeader_value" qtc_QHttpHeader_value :: Ptr (TQHttpHeader a) -> CWString -> IO (Ptr (TQString ()))

qHttpHeader_delete :: QHttpHeader a -> IO ()
qHttpHeader_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_delete cobj_x0

foreign import ccall "qtc_QHttpHeader_delete" qtc_QHttpHeader_delete :: Ptr (TQHttpHeader a) -> IO ()

qHttpHeader_delete1 :: QHttpHeader a -> IO ()
qHttpHeader_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpHeader_delete1 cobj_x0

foreign import ccall "qtc_QHttpHeader_delete1" qtc_QHttpHeader_delete1 :: Ptr (TQHttpHeader a) -> IO ()

