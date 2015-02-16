{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUrl.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QUrl (
  QqUrl(..)
  ,QqUrl_nf(..)
  ,addQueryItem
  ,allQueryItemValues
  ,authority
  ,encodedQuery
  ,fragment
  ,qUrlFromAce
  ,QqUrlFromEncoded(..)
  ,qUrlFromLocalFile
  ,qUrlFromPercentEncoding
  ,qUrlFromPunycode
  ,hasFragment
  ,hasQuery
  ,hasQueryItem
  ,host
  ,qUrlIdnWhitelist
  ,isParentOf
  ,queryItemValue
  ,removeAllQueryItems
  ,removeQueryItem
  ,resolved
  ,scheme
  ,setAuthority
  ,setEncodedQuery
  ,QsetEncodedUrl(..)
  ,setFragment
  ,qUrlSetIdnWhitelist
  ,setScheme
  ,QsetUrl(..)
  ,setUserInfo
  ,setUserName
  ,qUrlToAce
  ,QtoEncoded(..)
  ,toLocalFile
  ,QqUrlToPercentEncoding(..)
  ,qUrlToPunycode
  ,userInfo
  ,userName
  ,qUrl_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QUrl

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqUrl x1 where
  qUrl :: x1 -> IO (QUrl ())

instance QqUrl (()) where
 qUrl ()
  = withQUrlResult $
    qtc_QUrl

foreign import ccall "qtc_QUrl" qtc_QUrl :: IO (Ptr (TQUrl ()))

instance QqUrl ((String)) where
 qUrl (x1)
  = withQUrlResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl1 cstr_x1

foreign import ccall "qtc_QUrl1" qtc_QUrl1 :: CWString -> IO (Ptr (TQUrl ()))

instance QqUrl ((QUrl t1)) where
 qUrl (x1)
  = withQUrlResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrl2 cobj_x1

foreign import ccall "qtc_QUrl2" qtc_QUrl2 :: Ptr (TQUrl t1) -> IO (Ptr (TQUrl ()))

instance QqUrl ((String, ParsingMode)) where
 qUrl (x1, x2)
  = withQUrlResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl3 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUrl3" qtc_QUrl3 :: CWString -> CLong -> IO (Ptr (TQUrl ()))

class QqUrl_nf x1 where
  qUrl_nf :: x1 -> IO (QUrl ())

instance QqUrl_nf (()) where
 qUrl_nf ()
  = withObjectRefResult $
    qtc_QUrl

instance QqUrl_nf ((String)) where
 qUrl_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl1 cstr_x1

instance QqUrl_nf ((QUrl t1)) where
 qUrl_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrl2 cobj_x1

instance QqUrl_nf ((String, ParsingMode)) where
 qUrl_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl3 cstr_x1 (toCLong $ qEnum_toInt x2)

addQueryItem :: QUrl a -> ((String, String)) -> IO ()
addQueryItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUrl_addQueryItem cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QUrl_addQueryItem" qtc_QUrl_addQueryItem :: Ptr (TQUrl a) -> CWString -> CWString -> IO ()

allQueryItemValues :: QUrl a -> ((String)) -> IO ([String])
allQueryItemValues x0 (x1)
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_allQueryItemValues cobj_x0 cstr_x1 arr

foreign import ccall "qtc_QUrl_allQueryItemValues" qtc_QUrl_allQueryItemValues :: Ptr (TQUrl a) -> CWString -> Ptr (Ptr (TQString ())) -> IO CInt

authority :: QUrl a -> (()) -> IO (String)
authority x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_authority cobj_x0

foreign import ccall "qtc_QUrl_authority" qtc_QUrl_authority :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance Qclear (QUrl a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_clear cobj_x0

foreign import ccall "qtc_QUrl_clear" qtc_QUrl_clear :: Ptr (TQUrl a) -> IO ()

instance Qdetach (QUrl a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_detach cobj_x0

foreign import ccall "qtc_QUrl_detach" qtc_QUrl_detach :: Ptr (TQUrl a) -> IO ()

encodedQuery :: QUrl a -> (()) -> IO (String)
encodedQuery x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_encodedQuery cobj_x0

foreign import ccall "qtc_QUrl_encodedQuery" qtc_QUrl_encodedQuery :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance QerrorString (QUrl a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_errorString cobj_x0

foreign import ccall "qtc_QUrl_errorString" qtc_QUrl_errorString :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

fragment :: QUrl a -> (()) -> IO (String)
fragment x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_fragment cobj_x0

foreign import ccall "qtc_QUrl_fragment" qtc_QUrl_fragment :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

qUrlFromAce :: ((String)) -> IO (String)
qUrlFromAce (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromAce cstr_x1

foreign import ccall "qtc_QUrl_fromAce" qtc_QUrl_fromAce :: CWString -> IO (Ptr (TQString ()))

class QqUrlFromEncoded x1 where
 qUrlFromEncoded :: x1 -> IO (QUrl ())

instance QqUrlFromEncoded ((String)) where
 qUrlFromEncoded (x1)
  = withQUrlResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromEncoded cstr_x1

foreign import ccall "qtc_QUrl_fromEncoded" qtc_QUrl_fromEncoded :: CWString -> IO (Ptr (TQUrl ()))

instance QqUrlFromEncoded ((String, ParsingMode)) where
 qUrlFromEncoded (x1, x2)
  = withQUrlResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromEncoded1 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUrl_fromEncoded1" qtc_QUrl_fromEncoded1 :: CWString -> CLong -> IO (Ptr (TQUrl ()))

qUrlFromLocalFile :: ((String)) -> IO (QUrl ())
qUrlFromLocalFile (x1)
  = withQUrlResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromLocalFile cstr_x1

foreign import ccall "qtc_QUrl_fromLocalFile" qtc_QUrl_fromLocalFile :: CWString -> IO (Ptr (TQUrl ()))

qUrlFromPercentEncoding :: ((String)) -> IO (String)
qUrlFromPercentEncoding (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromPercentEncoding cstr_x1

foreign import ccall "qtc_QUrl_fromPercentEncoding" qtc_QUrl_fromPercentEncoding :: CWString -> IO (Ptr (TQString ()))

qUrlFromPunycode :: ((String)) -> IO (String)
qUrlFromPunycode (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_fromPunycode cstr_x1

foreign import ccall "qtc_QUrl_fromPunycode" qtc_QUrl_fromPunycode :: CWString -> IO (Ptr (TQString ()))

hasFragment :: QUrl a -> (()) -> IO (Bool)
hasFragment x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_hasFragment cobj_x0

foreign import ccall "qtc_QUrl_hasFragment" qtc_QUrl_hasFragment :: Ptr (TQUrl a) -> IO CBool

hasQuery :: QUrl a -> (()) -> IO (Bool)
hasQuery x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_hasQuery cobj_x0

foreign import ccall "qtc_QUrl_hasQuery" qtc_QUrl_hasQuery :: Ptr (TQUrl a) -> IO CBool

hasQueryItem :: QUrl a -> ((String)) -> IO (Bool)
hasQueryItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_hasQueryItem cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_hasQueryItem" qtc_QUrl_hasQueryItem :: Ptr (TQUrl a) -> CWString -> IO CBool

host :: QUrl a -> (()) -> IO (String)
host x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_host cobj_x0

foreign import ccall "qtc_QUrl_host" qtc_QUrl_host :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

qUrlIdnWhitelist :: (()) -> IO ([String])
qUrlIdnWhitelist ()
  = withQListStringResult $ \arr ->
    qtc_QUrl_idnWhitelist arr

foreign import ccall "qtc_QUrl_idnWhitelist" qtc_QUrl_idnWhitelist :: Ptr (Ptr (TQString ())) -> IO CInt

instance QisDetached (QUrl a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_isDetached cobj_x0

foreign import ccall "qtc_QUrl_isDetached" qtc_QUrl_isDetached :: Ptr (TQUrl a) -> IO CBool

instance QqisEmpty (QUrl a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_isEmpty cobj_x0

foreign import ccall "qtc_QUrl_isEmpty" qtc_QUrl_isEmpty :: Ptr (TQUrl a) -> IO CBool

isParentOf :: QUrl a -> ((QUrl t1)) -> IO (Bool)
isParentOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrl_isParentOf cobj_x0 cobj_x1

foreign import ccall "qtc_QUrl_isParentOf" qtc_QUrl_isParentOf :: Ptr (TQUrl a) -> Ptr (TQUrl t1) -> IO CBool

instance QisRelative (QUrl a) (()) where
 isRelative x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_isRelative cobj_x0

foreign import ccall "qtc_QUrl_isRelative" qtc_QUrl_isRelative :: Ptr (TQUrl a) -> IO CBool

instance QqisValid (QUrl ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_isValid cobj_x0

foreign import ccall "qtc_QUrl_isValid" qtc_QUrl_isValid :: Ptr (TQUrl a) -> IO CBool

instance QqisValid (QUrlSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_isValid cobj_x0

instance Qpassword (QUrl a) (()) where
 password x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_password cobj_x0

foreign import ccall "qtc_QUrl_password" qtc_QUrl_password :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance Qpath (QUrl a) (()) (IO (String)) where
 path x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_path cobj_x0

foreign import ccall "qtc_QUrl_path" qtc_QUrl_path :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance Qport (QUrl a) (()) where
 port x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_port cobj_x0

foreign import ccall "qtc_QUrl_port" qtc_QUrl_port :: Ptr (TQUrl a) -> IO CInt

instance Qport (QUrl a) ((Int)) where
 port x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_port1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUrl_port1" qtc_QUrl_port1 :: Ptr (TQUrl a) -> CInt -> IO CInt

queryItemValue :: QUrl a -> ((String)) -> IO (String)
queryItemValue x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_queryItemValue cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_queryItemValue" qtc_QUrl_queryItemValue :: Ptr (TQUrl a) -> CWString -> IO (Ptr (TQString ()))

removeAllQueryItems :: QUrl a -> ((String)) -> IO ()
removeAllQueryItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_removeAllQueryItems cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_removeAllQueryItems" qtc_QUrl_removeAllQueryItems :: Ptr (TQUrl a) -> CWString -> IO ()

removeQueryItem :: QUrl a -> ((String)) -> IO ()
removeQueryItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_removeQueryItem cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_removeQueryItem" qtc_QUrl_removeQueryItem :: Ptr (TQUrl a) -> CWString -> IO ()

resolved :: QUrl a -> ((QUrl t1)) -> IO (QUrl ())
resolved x0 (x1)
  = withQUrlResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUrl_resolved cobj_x0 cobj_x1

foreign import ccall "qtc_QUrl_resolved" qtc_QUrl_resolved :: Ptr (TQUrl a) -> Ptr (TQUrl t1) -> IO (Ptr (TQUrl ()))

scheme :: QUrl a -> (()) -> IO (String)
scheme x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_scheme cobj_x0

foreign import ccall "qtc_QUrl_scheme" qtc_QUrl_scheme :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

setAuthority :: QUrl a -> ((String)) -> IO ()
setAuthority x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setAuthority cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setAuthority" qtc_QUrl_setAuthority :: Ptr (TQUrl a) -> CWString -> IO ()

setEncodedQuery :: QUrl a -> ((String)) -> IO ()
setEncodedQuery x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setEncodedQuery cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setEncodedQuery" qtc_QUrl_setEncodedQuery :: Ptr (TQUrl a) -> CWString -> IO ()

class QsetEncodedUrl x1 where
 setEncodedUrl :: QUrl a -> x1 -> IO ()

instance QsetEncodedUrl ((String)) where
 setEncodedUrl x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setEncodedUrl cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setEncodedUrl" qtc_QUrl_setEncodedUrl :: Ptr (TQUrl a) -> CWString -> IO ()

instance QsetEncodedUrl ((String, ParsingMode)) where
 setEncodedUrl x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setEncodedUrl1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUrl_setEncodedUrl1" qtc_QUrl_setEncodedUrl1 :: Ptr (TQUrl a) -> CWString -> CLong -> IO ()

setFragment :: QUrl a -> ((String)) -> IO ()
setFragment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setFragment cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setFragment" qtc_QUrl_setFragment :: Ptr (TQUrl a) -> CWString -> IO ()

instance QsetHost (QUrl a) ((String)) (IO ()) where
 setHost x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setHost cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setHost" qtc_QUrl_setHost :: Ptr (TQUrl a) -> CWString -> IO ()

qUrlSetIdnWhitelist :: (([String])) -> IO ()
qUrlSetIdnWhitelist (x1)
  = withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QUrl_setIdnWhitelist cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QUrl_setIdnWhitelist" qtc_QUrl_setIdnWhitelist :: CInt -> Ptr (Ptr CWchar) -> IO ()

instance QsetPassword (QUrl a) ((String)) where
 setPassword x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setPassword cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setPassword" qtc_QUrl_setPassword :: Ptr (TQUrl a) -> CWString -> IO ()

instance QsetPath (QUrl a) ((String)) where
 setPath x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setPath cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setPath" qtc_QUrl_setPath :: Ptr (TQUrl a) -> CWString -> IO ()

instance QsetPort (QUrl a) ((Int)) where
 setPort x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_setPort cobj_x0 (toCInt x1)

foreign import ccall "qtc_QUrl_setPort" qtc_QUrl_setPort :: Ptr (TQUrl a) -> CInt -> IO ()

setScheme :: QUrl a -> ((String)) -> IO ()
setScheme x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setScheme cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setScheme" qtc_QUrl_setScheme :: Ptr (TQUrl a) -> CWString -> IO ()

class QsetUrl x1 where
 setUrl :: QUrl a -> x1 -> IO ()

instance QsetUrl ((String)) where
 setUrl x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setUrl cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setUrl" qtc_QUrl_setUrl :: Ptr (TQUrl a) -> CWString -> IO ()

instance QsetUrl ((String, ParsingMode)) where
 setUrl x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setUrl1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QUrl_setUrl1" qtc_QUrl_setUrl1 :: Ptr (TQUrl a) -> CWString -> CLong -> IO ()

setUserInfo :: QUrl a -> ((String)) -> IO ()
setUserInfo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setUserInfo cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setUserInfo" qtc_QUrl_setUserInfo :: Ptr (TQUrl a) -> CWString -> IO ()

setUserName :: QUrl a -> ((String)) -> IO ()
setUserName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_setUserName cobj_x0 cstr_x1

foreign import ccall "qtc_QUrl_setUserName" qtc_QUrl_setUserName :: Ptr (TQUrl a) -> CWString -> IO ()

qUrlToAce :: ((String)) -> IO (String)
qUrlToAce (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_toAce cstr_x1

foreign import ccall "qtc_QUrl_toAce" qtc_QUrl_toAce :: CWString -> IO (Ptr (TQString ()))

class QtoEncoded x1 where
 toEncoded :: QUrl a -> x1 -> IO (String)

instance QtoEncoded (()) where
 toEncoded x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_toEncoded cobj_x0

foreign import ccall "qtc_QUrl_toEncoded" qtc_QUrl_toEncoded :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance QtoEncoded ((FormattingOptions)) where
 toEncoded x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_toEncoded1 cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUrl_toEncoded1" qtc_QUrl_toEncoded1 :: Ptr (TQUrl a) -> CLong -> IO (Ptr (TQString ()))

toLocalFile :: QUrl a -> (()) -> IO (String)
toLocalFile x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_toLocalFile cobj_x0

foreign import ccall "qtc_QUrl_toLocalFile" qtc_QUrl_toLocalFile :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

class QqUrlToPercentEncoding x1 where
 qUrlToPercentEncoding :: x1 -> IO (String)

instance QqUrlToPercentEncoding ((String)) where
 qUrlToPercentEncoding (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_toPercentEncoding cstr_x1

foreign import ccall "qtc_QUrl_toPercentEncoding" qtc_QUrl_toPercentEncoding :: CWString -> IO (Ptr (TQString ()))

instance QqUrlToPercentEncoding ((String, String)) where
 qUrlToPercentEncoding (x1, x2)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QUrl_toPercentEncoding1 cstr_x1 cstr_x2

foreign import ccall "qtc_QUrl_toPercentEncoding1" qtc_QUrl_toPercentEncoding1 :: CWString -> CWString -> IO (Ptr (TQString ()))

instance QqUrlToPercentEncoding ((String, String, String)) where
 qUrlToPercentEncoding (x1, x2, x3)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QUrl_toPercentEncoding2 cstr_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QUrl_toPercentEncoding2" qtc_QUrl_toPercentEncoding2 :: CWString -> CWString -> CWString -> IO (Ptr (TQString ()))

qUrlToPunycode :: ((String)) -> IO (String)
qUrlToPunycode (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUrl_toPunycode cstr_x1

foreign import ccall "qtc_QUrl_toPunycode" qtc_QUrl_toPunycode :: CWString -> IO (Ptr (TQString ()))

instance QtoString (QUrl a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_toString cobj_x0

foreign import ccall "qtc_QUrl_toString" qtc_QUrl_toString :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

instance QtoString (QUrl a) ((FormattingOptions)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_toString1 cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QUrl_toString1" qtc_QUrl_toString1 :: Ptr (TQUrl a) -> CLong -> IO (Ptr (TQString ()))

userInfo :: QUrl a -> (()) -> IO (String)
userInfo x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_userInfo cobj_x0

foreign import ccall "qtc_QUrl_userInfo" qtc_QUrl_userInfo :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

userName :: QUrl a -> (()) -> IO (String)
userName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_userName cobj_x0

foreign import ccall "qtc_QUrl_userName" qtc_QUrl_userName :: Ptr (TQUrl a) -> IO (Ptr (TQString ()))

qUrl_delete :: QUrl a -> IO ()
qUrl_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUrl_delete cobj_x0

foreign import ccall "qtc_QUrl_delete" qtc_QUrl_delete :: Ptr (TQUrl a) -> IO ()

