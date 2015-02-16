{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRegExp.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QRegExp (
  QqRegExp(..)
  ,QqRegExp_nf(..)
  ,Qcap(..)
  ,capturedTexts
  ,qRegExpEscape
  ,QindexIn(..)
  ,isMinimal
  ,QlastIndexIn(..)
  ,matchedLength
  ,numCaptures
  ,pattern
  ,patternSyntax
  ,setMinimal
  ,setPattern
  ,setPatternSyntax
  ,qRegExp_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QRegExp

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

class QqRegExp x1 where
  qRegExp :: x1 -> IO (QRegExp ())

instance QqRegExp (()) where
 qRegExp ()
  = withQRegExpResult $
    qtc_QRegExp

foreign import ccall "qtc_QRegExp" qtc_QRegExp :: IO (Ptr (TQRegExp ()))

instance QqRegExp ((String)) where
 qRegExp (x1)
  = withQRegExpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp1 cstr_x1

foreign import ccall "qtc_QRegExp1" qtc_QRegExp1 :: CWString -> IO (Ptr (TQRegExp ()))

instance QqRegExp ((QRegExp t1)) where
 qRegExp (x1)
  = withQRegExpResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExp2 cobj_x1

foreign import ccall "qtc_QRegExp2" qtc_QRegExp2 :: Ptr (TQRegExp t1) -> IO (Ptr (TQRegExp ()))

instance QqRegExp ((String, CaseSensitivity)) where
 qRegExp (x1, x2)
  = withQRegExpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp3 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QRegExp3" qtc_QRegExp3 :: CWString -> CLong -> IO (Ptr (TQRegExp ()))

instance QqRegExp ((String, CaseSensitivity, PatternSyntax)) where
 qRegExp (x1, x2, x3)
  = withQRegExpResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp4 cstr_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QRegExp4" qtc_QRegExp4 :: CWString -> CLong -> CLong -> IO (Ptr (TQRegExp ()))

class QqRegExp_nf x1 where
  qRegExp_nf :: x1 -> IO (QRegExp ())

instance QqRegExp_nf (()) where
 qRegExp_nf ()
  = withObjectRefResult $
    qtc_QRegExp

instance QqRegExp_nf ((String)) where
 qRegExp_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp1 cstr_x1

instance QqRegExp_nf ((QRegExp t1)) where
 qRegExp_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegExp2 cobj_x1

instance QqRegExp_nf ((String, CaseSensitivity)) where
 qRegExp_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp3 cstr_x1 (toCLong $ qEnum_toInt x2)

instance QqRegExp_nf ((String, CaseSensitivity, PatternSyntax)) where
 qRegExp_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp4 cstr_x1 (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

class Qcap x1 where
 cap :: QRegExp a -> x1 -> IO (String)

instance Qcap (()) where
 cap x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_cap cobj_x0

foreign import ccall "qtc_QRegExp_cap" qtc_QRegExp_cap :: Ptr (TQRegExp a) -> IO (Ptr (TQString ()))

instance Qcap ((Int)) where
 cap x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_cap1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRegExp_cap1" qtc_QRegExp_cap1 :: Ptr (TQRegExp a) -> CInt -> IO (Ptr (TQString ()))

capturedTexts :: QRegExp a -> (()) -> IO ([String])
capturedTexts x0 ()
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_capturedTexts cobj_x0 arr

foreign import ccall "qtc_QRegExp_capturedTexts" qtc_QRegExp_capturedTexts :: Ptr (TQRegExp a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance QcaseSensitivity (QRegExp a) (()) where
 caseSensitivity x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_caseSensitivity cobj_x0

foreign import ccall "qtc_QRegExp_caseSensitivity" qtc_QRegExp_caseSensitivity :: Ptr (TQRegExp a) -> IO CLong

instance QerrorString (QRegExp a) (()) where
 errorString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_errorString cobj_x0

foreign import ccall "qtc_QRegExp_errorString" qtc_QRegExp_errorString :: Ptr (TQRegExp a) -> IO (Ptr (TQString ()))

qRegExpEscape :: ((String)) -> IO (String)
qRegExpEscape (x1)
  = withStringResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_escape cstr_x1

foreign import ccall "qtc_QRegExp_escape" qtc_QRegExp_escape :: CWString -> IO (Ptr (TQString ()))

instance QexactMatch (QRegExp a) ((String)) where
 exactMatch x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_exactMatch cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExp_exactMatch" qtc_QRegExp_exactMatch :: Ptr (TQRegExp a) -> CWString -> IO CBool

class QindexIn x1 where
 indexIn :: QRegExp a -> x1 -> IO (Int)

instance QindexIn ((String)) where
 indexIn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_indexIn cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExp_indexIn" qtc_QRegExp_indexIn :: Ptr (TQRegExp a) -> CWString -> IO CInt

instance QindexIn ((String, Int)) where
 indexIn x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_indexIn1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QRegExp_indexIn1" qtc_QRegExp_indexIn1 :: Ptr (TQRegExp a) -> CWString -> CInt -> IO CInt

instance QindexIn ((String, Int, CaretMode)) where
 indexIn x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_indexIn2 cobj_x0 cstr_x1 (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QRegExp_indexIn2" qtc_QRegExp_indexIn2 :: Ptr (TQRegExp a) -> CWString -> CInt -> CLong -> IO CInt

instance QqisEmpty (QRegExp a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_isEmpty cobj_x0

foreign import ccall "qtc_QRegExp_isEmpty" qtc_QRegExp_isEmpty :: Ptr (TQRegExp a) -> IO CBool

isMinimal :: QRegExp a -> (()) -> IO (Bool)
isMinimal x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_isMinimal cobj_x0

foreign import ccall "qtc_QRegExp_isMinimal" qtc_QRegExp_isMinimal :: Ptr (TQRegExp a) -> IO CBool

instance QqisValid (QRegExp ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_isValid cobj_x0

foreign import ccall "qtc_QRegExp_isValid" qtc_QRegExp_isValid :: Ptr (TQRegExp a) -> IO CBool

instance QqisValid (QRegExpSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_isValid cobj_x0

class QlastIndexIn x1 where
 lastIndexIn :: QRegExp a -> x1 -> IO (Int)

instance QlastIndexIn ((String)) where
 lastIndexIn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_lastIndexIn cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExp_lastIndexIn" qtc_QRegExp_lastIndexIn :: Ptr (TQRegExp a) -> CWString -> IO CInt

instance QlastIndexIn ((String, Int)) where
 lastIndexIn x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_lastIndexIn1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QRegExp_lastIndexIn1" qtc_QRegExp_lastIndexIn1 :: Ptr (TQRegExp a) -> CWString -> CInt -> IO CInt

instance QlastIndexIn ((String, Int, CaretMode)) where
 lastIndexIn x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_lastIndexIn2 cobj_x0 cstr_x1 (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QRegExp_lastIndexIn2" qtc_QRegExp_lastIndexIn2 :: Ptr (TQRegExp a) -> CWString -> CInt -> CLong -> IO CInt

matchedLength :: QRegExp a -> (()) -> IO (Int)
matchedLength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_matchedLength cobj_x0

foreign import ccall "qtc_QRegExp_matchedLength" qtc_QRegExp_matchedLength :: Ptr (TQRegExp a) -> IO CInt

numCaptures :: QRegExp a -> (()) -> IO (Int)
numCaptures x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_numCaptures cobj_x0

foreign import ccall "qtc_QRegExp_numCaptures" qtc_QRegExp_numCaptures :: Ptr (TQRegExp a) -> IO CInt

pattern :: QRegExp a -> (()) -> IO (String)
pattern x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_pattern cobj_x0

foreign import ccall "qtc_QRegExp_pattern" qtc_QRegExp_pattern :: Ptr (TQRegExp a) -> IO (Ptr (TQString ()))

patternSyntax :: QRegExp a -> (()) -> IO (PatternSyntax)
patternSyntax x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_patternSyntax cobj_x0

foreign import ccall "qtc_QRegExp_patternSyntax" qtc_QRegExp_patternSyntax :: Ptr (TQRegExp a) -> IO CLong

instance Qpos (QRegExp a) (()) (IO (Int)) where
 pos x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_pos cobj_x0

foreign import ccall "qtc_QRegExp_pos" qtc_QRegExp_pos :: Ptr (TQRegExp a) -> IO CInt

instance Qpos (QRegExp a) ((Int)) (IO (Int)) where
 pos x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_pos1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QRegExp_pos1" qtc_QRegExp_pos1 :: Ptr (TQRegExp a) -> CInt -> IO CInt

instance QsetCaseSensitivity (QRegExp a) ((CaseSensitivity)) where
 setCaseSensitivity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_setCaseSensitivity cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRegExp_setCaseSensitivity" qtc_QRegExp_setCaseSensitivity :: Ptr (TQRegExp a) -> CLong -> IO ()

setMinimal :: QRegExp a -> ((Bool)) -> IO ()
setMinimal x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_setMinimal cobj_x0 (toCBool x1)

foreign import ccall "qtc_QRegExp_setMinimal" qtc_QRegExp_setMinimal :: Ptr (TQRegExp a) -> CBool -> IO ()

setPattern :: QRegExp a -> ((String)) -> IO ()
setPattern x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QRegExp_setPattern cobj_x0 cstr_x1

foreign import ccall "qtc_QRegExp_setPattern" qtc_QRegExp_setPattern :: Ptr (TQRegExp a) -> CWString -> IO ()

setPatternSyntax :: QRegExp a -> ((PatternSyntax)) -> IO ()
setPatternSyntax x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_setPatternSyntax cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QRegExp_setPatternSyntax" qtc_QRegExp_setPatternSyntax :: Ptr (TQRegExp a) -> CLong -> IO ()

qRegExp_delete :: QRegExp a -> IO ()
qRegExp_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegExp_delete cobj_x0

foreign import ccall "qtc_QRegExp_delete" qtc_QRegExp_delete :: Ptr (TQRegExp a) -> IO ()

