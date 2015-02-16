{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHttpResponseHeader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHttpResponseHeader (
  QqHttpResponseHeader(..)
  ,QqHttpResponseHeader_nf(..)
  ,reasonPhrase
  ,QsetStatusLine(..)
  ,statusCode
  ,qHttpResponseHeader_delete, qHttpResponseHeader_delete1
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

instance QuserMethod (QHttpResponseHeader ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpResponseHeader_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHttpResponseHeader_userMethod" qtc_QHttpResponseHeader_userMethod :: Ptr (TQHttpResponseHeader a) -> CInt -> IO ()

instance QuserMethod (QHttpResponseHeaderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpResponseHeader_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHttpResponseHeader ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpResponseHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHttpResponseHeader_userMethodVariant" qtc_QHttpResponseHeader_userMethodVariant :: Ptr (TQHttpResponseHeader a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHttpResponseHeaderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpResponseHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHttpResponseHeader x1 where
  qHttpResponseHeader :: x1 -> IO (QHttpResponseHeader ())

instance QqHttpResponseHeader (()) where
 qHttpResponseHeader ()
  = withQHttpResponseHeaderResult $
    qtc_QHttpResponseHeader

foreign import ccall "qtc_QHttpResponseHeader" qtc_QHttpResponseHeader :: IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((QHttpResponseHeader t1)) where
 qHttpResponseHeader (x1)
  = withQHttpResponseHeaderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpResponseHeader1 cobj_x1

foreign import ccall "qtc_QHttpResponseHeader1" qtc_QHttpResponseHeader1 :: Ptr (TQHttpResponseHeader t1) -> IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((String)) where
 qHttpResponseHeader (x1)
  = withQHttpResponseHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader2 cstr_x1

foreign import ccall "qtc_QHttpResponseHeader2" qtc_QHttpResponseHeader2 :: CWString -> IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((Int)) where
 qHttpResponseHeader (x1)
  = withQHttpResponseHeaderResult $
    qtc_QHttpResponseHeader3 (toCInt x1)

foreign import ccall "qtc_QHttpResponseHeader3" qtc_QHttpResponseHeader3 :: CInt -> IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((Int, String)) where
 qHttpResponseHeader (x1, x2)
  = withQHttpResponseHeaderResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader4 (toCInt x1) cstr_x2

foreign import ccall "qtc_QHttpResponseHeader4" qtc_QHttpResponseHeader4 :: CInt -> CWString -> IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((Int, String, Int)) where
 qHttpResponseHeader (x1, x2, x3)
  = withQHttpResponseHeaderResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader5 (toCInt x1) cstr_x2 (toCInt x3)

foreign import ccall "qtc_QHttpResponseHeader5" qtc_QHttpResponseHeader5 :: CInt -> CWString -> CInt -> IO (Ptr (TQHttpResponseHeader ()))

instance QqHttpResponseHeader ((Int, String, Int, Int)) where
 qHttpResponseHeader (x1, x2, x3, x4)
  = withQHttpResponseHeaderResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader6 (toCInt x1) cstr_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHttpResponseHeader6" qtc_QHttpResponseHeader6 :: CInt -> CWString -> CInt -> CInt -> IO (Ptr (TQHttpResponseHeader ()))

class QqHttpResponseHeader_nf x1 where
  qHttpResponseHeader_nf :: x1 -> IO (QHttpResponseHeader ())

instance QqHttpResponseHeader_nf (()) where
 qHttpResponseHeader_nf ()
  = withObjectRefResult $
    qtc_QHttpResponseHeader

instance QqHttpResponseHeader_nf ((QHttpResponseHeader t1)) where
 qHttpResponseHeader_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpResponseHeader1 cobj_x1

instance QqHttpResponseHeader_nf ((String)) where
 qHttpResponseHeader_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader2 cstr_x1

instance QqHttpResponseHeader_nf ((Int)) where
 qHttpResponseHeader_nf (x1)
  = withObjectRefResult $
    qtc_QHttpResponseHeader3 (toCInt x1)

instance QqHttpResponseHeader_nf ((Int, String)) where
 qHttpResponseHeader_nf (x1, x2)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader4 (toCInt x1) cstr_x2

instance QqHttpResponseHeader_nf ((Int, String, Int)) where
 qHttpResponseHeader_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader5 (toCInt x1) cstr_x2 (toCInt x3)

instance QqHttpResponseHeader_nf ((Int, String, Int, Int)) where
 qHttpResponseHeader_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader6 (toCInt x1) cstr_x2 (toCInt x3) (toCInt x4)

instance QmajorVersion (QHttpResponseHeader ()) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_majorVersion_h cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_majorVersion_h" qtc_QHttpResponseHeader_majorVersion_h :: Ptr (TQHttpResponseHeader a) -> IO CInt

instance QmajorVersion (QHttpResponseHeaderSc a) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_majorVersion_h cobj_x0

instance QminorVersion (QHttpResponseHeader ()) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_minorVersion_h cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_minorVersion_h" qtc_QHttpResponseHeader_minorVersion_h :: Ptr (TQHttpResponseHeader a) -> IO CInt

instance QminorVersion (QHttpResponseHeaderSc a) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_minorVersion_h cobj_x0

instance QparseLine (QHttpResponseHeader ()) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QHttpResponseHeader_parseLine" qtc_QHttpResponseHeader_parseLine :: Ptr (TQHttpResponseHeader a) -> CWString -> CInt -> IO CBool

instance QparseLine (QHttpResponseHeaderSc a) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

reasonPhrase :: QHttpResponseHeader a -> (()) -> IO (String)
reasonPhrase x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_reasonPhrase cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_reasonPhrase" qtc_QHttpResponseHeader_reasonPhrase :: Ptr (TQHttpResponseHeader a) -> IO (Ptr (TQString ()))

class QsetStatusLine x1 where
 setStatusLine :: QHttpResponseHeader a -> x1 -> IO ()

instance QsetStatusLine ((Int)) where
 setStatusLine x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_setStatusLine cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHttpResponseHeader_setStatusLine" qtc_QHttpResponseHeader_setStatusLine :: Ptr (TQHttpResponseHeader a) -> CInt -> IO ()

instance QsetStatusLine ((Int, String)) where
 setStatusLine x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader_setStatusLine1 cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QHttpResponseHeader_setStatusLine1" qtc_QHttpResponseHeader_setStatusLine1 :: Ptr (TQHttpResponseHeader a) -> CInt -> CWString -> IO ()

instance QsetStatusLine ((Int, String, Int)) where
 setStatusLine x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader_setStatusLine2 cobj_x0 (toCInt x1) cstr_x2 (toCInt x3)

foreign import ccall "qtc_QHttpResponseHeader_setStatusLine2" qtc_QHttpResponseHeader_setStatusLine2 :: Ptr (TQHttpResponseHeader a) -> CInt -> CWString -> CInt -> IO ()

instance QsetStatusLine ((Int, String, Int, Int)) where
 setStatusLine x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpResponseHeader_setStatusLine3 cobj_x0 (toCInt x1) cstr_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHttpResponseHeader_setStatusLine3" qtc_QHttpResponseHeader_setStatusLine3 :: Ptr (TQHttpResponseHeader a) -> CInt -> CWString -> CInt -> CInt -> IO ()

statusCode :: QHttpResponseHeader a -> (()) -> IO (Int)
statusCode x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_statusCode cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_statusCode" qtc_QHttpResponseHeader_statusCode :: Ptr (TQHttpResponseHeader a) -> IO CInt

instance QtoString (QHttpResponseHeader ()) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_toString_h cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_toString_h" qtc_QHttpResponseHeader_toString_h :: Ptr (TQHttpResponseHeader a) -> IO (Ptr (TQString ()))

instance QtoString (QHttpResponseHeaderSc a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_toString_h cobj_x0

qHttpResponseHeader_delete :: QHttpResponseHeader a -> IO ()
qHttpResponseHeader_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_delete cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_delete" qtc_QHttpResponseHeader_delete :: Ptr (TQHttpResponseHeader a) -> IO ()

qHttpResponseHeader_delete1 :: QHttpResponseHeader a -> IO ()
qHttpResponseHeader_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_delete1 cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_delete1" qtc_QHttpResponseHeader_delete1 :: Ptr (TQHttpResponseHeader a) -> IO ()

instance QqisValid (QHttpResponseHeader ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_isValid cobj_x0

foreign import ccall "qtc_QHttpResponseHeader_isValid" qtc_QHttpResponseHeader_isValid :: Ptr (TQHttpResponseHeader a) -> IO CBool

instance QqisValid (QHttpResponseHeaderSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_isValid cobj_x0

instance Qparse (QHttpResponseHeader ()) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader_parse cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpResponseHeader_parse" qtc_QHttpResponseHeader_parse :: Ptr (TQHttpResponseHeader a) -> CWString -> IO CBool

instance Qparse (QHttpResponseHeaderSc a) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpResponseHeader_parse cobj_x0 cstr_x1

instance QsetValid (QHttpResponseHeader ()) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_setValid cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHttpResponseHeader_setValid" qtc_QHttpResponseHeader_setValid :: Ptr (TQHttpResponseHeader a) -> CBool -> IO ()

instance QsetValid (QHttpResponseHeaderSc a) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpResponseHeader_setValid cobj_x0 (toCBool x1)

