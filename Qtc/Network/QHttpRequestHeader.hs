{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHttpRequestHeader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Network.QHttpRequestHeader (
  QqHttpRequestHeader(..)
  ,QqHttpRequestHeader_nf(..)
  ,method
  ,QsetRequest(..)
  ,qHttpRequestHeader_delete, qHttpRequestHeader_delete1
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

instance QuserMethod (QHttpRequestHeader ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpRequestHeader_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHttpRequestHeader_userMethod" qtc_QHttpRequestHeader_userMethod :: Ptr (TQHttpRequestHeader a) -> CInt -> IO ()

instance QuserMethod (QHttpRequestHeaderSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHttpRequestHeader_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHttpRequestHeader ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpRequestHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHttpRequestHeader_userMethodVariant" qtc_QHttpRequestHeader_userMethodVariant :: Ptr (TQHttpRequestHeader a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHttpRequestHeaderSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHttpRequestHeader_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHttpRequestHeader x1 where
  qHttpRequestHeader :: x1 -> IO (QHttpRequestHeader ())

instance QqHttpRequestHeader (()) where
 qHttpRequestHeader ()
  = withQHttpRequestHeaderResult $
    qtc_QHttpRequestHeader

foreign import ccall "qtc_QHttpRequestHeader" qtc_QHttpRequestHeader :: IO (Ptr (TQHttpRequestHeader ()))

instance QqHttpRequestHeader ((QHttpRequestHeader t1)) where
 qHttpRequestHeader (x1)
  = withQHttpRequestHeaderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpRequestHeader1 cobj_x1

foreign import ccall "qtc_QHttpRequestHeader1" qtc_QHttpRequestHeader1 :: Ptr (TQHttpRequestHeader t1) -> IO (Ptr (TQHttpRequestHeader ()))

instance QqHttpRequestHeader ((String)) where
 qHttpRequestHeader (x1)
  = withQHttpRequestHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader2 cstr_x1

foreign import ccall "qtc_QHttpRequestHeader2" qtc_QHttpRequestHeader2 :: CWString -> IO (Ptr (TQHttpRequestHeader ()))

instance QqHttpRequestHeader ((String, String)) where
 qHttpRequestHeader (x1, x2)
  = withQHttpRequestHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader3 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttpRequestHeader3" qtc_QHttpRequestHeader3 :: CWString -> CWString -> IO (Ptr (TQHttpRequestHeader ()))

instance QqHttpRequestHeader ((String, String, Int)) where
 qHttpRequestHeader (x1, x2, x3)
  = withQHttpRequestHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader4 cstr_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QHttpRequestHeader4" qtc_QHttpRequestHeader4 :: CWString -> CWString -> CInt -> IO (Ptr (TQHttpRequestHeader ()))

instance QqHttpRequestHeader ((String, String, Int, Int)) where
 qHttpRequestHeader (x1, x2, x3, x4)
  = withQHttpRequestHeaderResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader5 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHttpRequestHeader5" qtc_QHttpRequestHeader5 :: CWString -> CWString -> CInt -> CInt -> IO (Ptr (TQHttpRequestHeader ()))

class QqHttpRequestHeader_nf x1 where
  qHttpRequestHeader_nf :: x1 -> IO (QHttpRequestHeader ())

instance QqHttpRequestHeader_nf (()) where
 qHttpRequestHeader_nf ()
  = withObjectRefResult $
    qtc_QHttpRequestHeader

instance QqHttpRequestHeader_nf ((QHttpRequestHeader t1)) where
 qHttpRequestHeader_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHttpRequestHeader1 cobj_x1

instance QqHttpRequestHeader_nf ((String)) where
 qHttpRequestHeader_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader2 cstr_x1

instance QqHttpRequestHeader_nf ((String, String)) where
 qHttpRequestHeader_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader3 cstr_x1 cstr_x2

instance QqHttpRequestHeader_nf ((String, String, Int)) where
 qHttpRequestHeader_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader4 cstr_x1 cstr_x2 (toCInt x3)

instance QqHttpRequestHeader_nf ((String, String, Int, Int)) where
 qHttpRequestHeader_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader5 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4)

instance QmajorVersion (QHttpRequestHeader ()) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_majorVersion_h cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_majorVersion_h" qtc_QHttpRequestHeader_majorVersion_h :: Ptr (TQHttpRequestHeader a) -> IO CInt

instance QmajorVersion (QHttpRequestHeaderSc a) (()) where
 majorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_majorVersion_h cobj_x0

method :: QHttpRequestHeader a -> (()) -> IO (String)
method x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_method cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_method" qtc_QHttpRequestHeader_method :: Ptr (TQHttpRequestHeader a) -> IO (Ptr (TQString ()))

instance QminorVersion (QHttpRequestHeader ()) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_minorVersion_h cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_minorVersion_h" qtc_QHttpRequestHeader_minorVersion_h :: Ptr (TQHttpRequestHeader a) -> IO CInt

instance QminorVersion (QHttpRequestHeaderSc a) (()) where
 minorVersion x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_minorVersion_h cobj_x0

instance QparseLine (QHttpRequestHeader ()) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QHttpRequestHeader_parseLine" qtc_QHttpRequestHeader_parseLine :: Ptr (TQHttpRequestHeader a) -> CWString -> CInt -> IO CBool

instance QparseLine (QHttpRequestHeaderSc a) ((String, Int)) where
 parseLine x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader_parseLine cobj_x0 cstr_x1 (toCInt x2)

instance Qpath (QHttpRequestHeader a) (()) (IO (String)) where
 path x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_path cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_path" qtc_QHttpRequestHeader_path :: Ptr (TQHttpRequestHeader a) -> IO (Ptr (TQString ()))

class QsetRequest x1 where
 setRequest :: QHttpRequestHeader a -> x1 -> IO ()

instance QsetRequest ((String, String)) where
 setRequest x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader_setRequest cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QHttpRequestHeader_setRequest" qtc_QHttpRequestHeader_setRequest :: Ptr (TQHttpRequestHeader a) -> CWString -> CWString -> IO ()

instance QsetRequest ((String, String, Int)) where
 setRequest x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader_setRequest1 cobj_x0 cstr_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QHttpRequestHeader_setRequest1" qtc_QHttpRequestHeader_setRequest1 :: Ptr (TQHttpRequestHeader a) -> CWString -> CWString -> CInt -> IO ()

instance QsetRequest ((String, String, Int, Int)) where
 setRequest x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QHttpRequestHeader_setRequest2 cobj_x0 cstr_x1 cstr_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHttpRequestHeader_setRequest2" qtc_QHttpRequestHeader_setRequest2 :: Ptr (TQHttpRequestHeader a) -> CWString -> CWString -> CInt -> CInt -> IO ()

instance QtoString (QHttpRequestHeader ()) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_toString_h cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_toString_h" qtc_QHttpRequestHeader_toString_h :: Ptr (TQHttpRequestHeader a) -> IO (Ptr (TQString ()))

instance QtoString (QHttpRequestHeaderSc a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_toString_h cobj_x0

qHttpRequestHeader_delete :: QHttpRequestHeader a -> IO ()
qHttpRequestHeader_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_delete cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_delete" qtc_QHttpRequestHeader_delete :: Ptr (TQHttpRequestHeader a) -> IO ()

qHttpRequestHeader_delete1 :: QHttpRequestHeader a -> IO ()
qHttpRequestHeader_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_delete1 cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_delete1" qtc_QHttpRequestHeader_delete1 :: Ptr (TQHttpRequestHeader a) -> IO ()

instance QqisValid (QHttpRequestHeader ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_isValid cobj_x0

foreign import ccall "qtc_QHttpRequestHeader_isValid" qtc_QHttpRequestHeader_isValid :: Ptr (TQHttpRequestHeader a) -> IO CBool

instance QqisValid (QHttpRequestHeaderSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_isValid cobj_x0

instance Qparse (QHttpRequestHeader ()) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader_parse cobj_x0 cstr_x1

foreign import ccall "qtc_QHttpRequestHeader_parse" qtc_QHttpRequestHeader_parse :: Ptr (TQHttpRequestHeader a) -> CWString -> IO CBool

instance Qparse (QHttpRequestHeaderSc a) ((String)) where
 parse x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHttpRequestHeader_parse cobj_x0 cstr_x1

instance QsetValid (QHttpRequestHeader ()) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_setValid cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHttpRequestHeader_setValid" qtc_QHttpRequestHeader_setValid :: Ptr (TQHttpRequestHeader a) -> CBool -> IO ()

instance QsetValid (QHttpRequestHeaderSc a) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHttpRequestHeader_setValid cobj_x0 (toCBool x1)

