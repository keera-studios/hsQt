{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QKeySequence.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QKeySequence (
  QqKeySequence(..)
  ,QqKeySequence_nf(..)
  ,QqKeySequenceFromString(..)
  ,qKeySequenceKeyBindings
  ,qKeySequenceMnemonic
  ,qKeySequence_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QKeySequence

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqKeySequence x1 where
  qKeySequence :: x1 -> IO (QKeySequence ())

instance QqKeySequence (()) where
 qKeySequence ()
  = withQKeySequenceResult $
    qtc_QKeySequence

foreign import ccall "qtc_QKeySequence" qtc_QKeySequence :: IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((StandardKey)) where
 qKeySequence (x1)
  = withQKeySequenceResult $
    qtc_QKeySequence1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QKeySequence1" qtc_QKeySequence1 :: CLong -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((Int)) where
 qKeySequence (x1)
  = withQKeySequenceResult $
    qtc_QKeySequence2 (toCInt x1)

foreign import ccall "qtc_QKeySequence2" qtc_QKeySequence2 :: CInt -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((String)) where
 qKeySequence (x1)
  = withQKeySequenceResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QKeySequence3 cstr_x1

foreign import ccall "qtc_QKeySequence3" qtc_QKeySequence3 :: CWString -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((QKeySequence t1)) where
 qKeySequence (x1)
  = withQKeySequenceResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QKeySequence4 cobj_x1

foreign import ccall "qtc_QKeySequence4" qtc_QKeySequence4 :: Ptr (TQKeySequence t1) -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((Int, Int)) where
 qKeySequence (x1, x2)
  = withQKeySequenceResult $
    qtc_QKeySequence5 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QKeySequence5" qtc_QKeySequence5 :: CInt -> CInt -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((Int, Int, Int)) where
 qKeySequence (x1, x2, x3)
  = withQKeySequenceResult $
    qtc_QKeySequence6 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QKeySequence6" qtc_QKeySequence6 :: CInt -> CInt -> CInt -> IO (Ptr (TQKeySequence ()))

instance QqKeySequence ((Int, Int, Int, Int)) where
 qKeySequence (x1, x2, x3, x4)
  = withQKeySequenceResult $
    qtc_QKeySequence7 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QKeySequence7" qtc_QKeySequence7 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQKeySequence ()))

class QqKeySequence_nf x1 where
  qKeySequence_nf :: x1 -> IO (QKeySequence ())

instance QqKeySequence_nf (()) where
 qKeySequence_nf ()
  = withObjectRefResult $
    qtc_QKeySequence

instance QqKeySequence_nf ((StandardKey)) where
 qKeySequence_nf (x1)
  = withObjectRefResult $
    qtc_QKeySequence1 (toCLong $ qEnum_toInt x1)

instance QqKeySequence_nf ((Int)) where
 qKeySequence_nf (x1)
  = withObjectRefResult $
    qtc_QKeySequence2 (toCInt x1)

instance QqKeySequence_nf ((String)) where
 qKeySequence_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QKeySequence3 cstr_x1

instance QqKeySequence_nf ((QKeySequence t1)) where
 qKeySequence_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QKeySequence4 cobj_x1

instance QqKeySequence_nf ((Int, Int)) where
 qKeySequence_nf (x1, x2)
  = withObjectRefResult $
    qtc_QKeySequence5 (toCInt x1) (toCInt x2)

instance QqKeySequence_nf ((Int, Int, Int)) where
 qKeySequence_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QKeySequence6 (toCInt x1) (toCInt x2) (toCInt x3)

instance QqKeySequence_nf ((Int, Int, Int, Int)) where
 qKeySequence_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QKeySequence7 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qcount (QKeySequence a) (()) where
 count x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_count cobj_x0

foreign import ccall "qtc_QKeySequence_count" qtc_QKeySequence_count :: Ptr (TQKeySequence a) -> IO CUInt

class QqKeySequenceFromString x1 where
 qKeySequenceFromString :: x1 -> IO (QKeySequence ())

instance QqKeySequenceFromString ((String)) where
 qKeySequenceFromString (x1)
  = withQKeySequenceResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QKeySequence_fromString cstr_x1

foreign import ccall "qtc_QKeySequence_fromString" qtc_QKeySequence_fromString :: CWString -> IO (Ptr (TQKeySequence ()))

instance QqKeySequenceFromString ((String, SequenceFormat)) where
 qKeySequenceFromString (x1, x2)
  = withQKeySequenceResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QKeySequence_fromString1 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QKeySequence_fromString1" qtc_QKeySequence_fromString1 :: CWString -> CLong -> IO (Ptr (TQKeySequence ()))

instance QisDetached (QKeySequence a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_isDetached cobj_x0

foreign import ccall "qtc_QKeySequence_isDetached" qtc_QKeySequence_isDetached :: Ptr (TQKeySequence a) -> IO CBool

instance QqisEmpty (QKeySequence a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_isEmpty cobj_x0

foreign import ccall "qtc_QKeySequence_isEmpty" qtc_QKeySequence_isEmpty :: Ptr (TQKeySequence a) -> IO CBool

qKeySequenceKeyBindings :: ((StandardKey)) -> IO ([QKeySequence ()])
qKeySequenceKeyBindings (x1)
  = withQListObjectRefResult $ \arr ->
    qtc_QKeySequence_keyBindings (toCLong $ qEnum_toInt x1) arr

foreign import ccall "qtc_QKeySequence_keyBindings" qtc_QKeySequence_keyBindings :: CLong -> Ptr (Ptr (TQKeySequence ())) -> IO CInt

instance Qmatches (QKeySequence a) ((QKeySequence t1)) (IO (SequenceMatch)) where
 matches x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QKeySequence_matches cobj_x0 cobj_x1

foreign import ccall "qtc_QKeySequence_matches" qtc_QKeySequence_matches :: Ptr (TQKeySequence a) -> Ptr (TQKeySequence t1) -> IO CLong

qKeySequenceMnemonic :: ((String)) -> IO (QKeySequence ())
qKeySequenceMnemonic (x1)
  = withQKeySequenceResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QKeySequence_mnemonic cstr_x1

foreign import ccall "qtc_QKeySequence_mnemonic" qtc_QKeySequence_mnemonic :: CWString -> IO (Ptr (TQKeySequence ()))

instance QtoString (QKeySequence a) (()) where
 toString x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_toString cobj_x0

foreign import ccall "qtc_QKeySequence_toString" qtc_QKeySequence_toString :: Ptr (TQKeySequence a) -> IO (Ptr (TQString ()))

instance QtoString (QKeySequence a) ((SequenceFormat)) where
 toString x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_toString1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QKeySequence_toString1" qtc_QKeySequence_toString1 :: Ptr (TQKeySequence a) -> CLong -> IO (Ptr (TQString ()))

qKeySequence_delete :: QKeySequence a -> IO ()
qKeySequence_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QKeySequence_delete cobj_x0

foreign import ccall "qtc_QKeySequence_delete" qtc_QKeySequence_delete :: Ptr (TQKeySequence a) -> IO ()

