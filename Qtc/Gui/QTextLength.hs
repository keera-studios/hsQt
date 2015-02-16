{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextLength.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextLength (
  QqTextLength(..)
  ,QqTextLength_nf(..)
  ,rawValue
  ,qTextLength_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextLength

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextLength x1 where
  qTextLength :: x1 -> IO (QTextLength ())

instance QqTextLength (()) where
 qTextLength ()
  = withQTextLengthResult $
    qtc_QTextLength

foreign import ccall "qtc_QTextLength" qtc_QTextLength :: IO (Ptr (TQTextLength ()))

instance QqTextLength ((QTextLength t1)) where
 qTextLength (x1)
  = withQTextLengthResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLength1 cobj_x1

foreign import ccall "qtc_QTextLength1" qtc_QTextLength1 :: Ptr (TQTextLength t1) -> IO (Ptr (TQTextLength ()))

instance QqTextLength ((QTextLengthType, Double)) where
 qTextLength (x1, x2)
  = withQTextLengthResult $
    qtc_QTextLength2 (toCLong $ qEnum_toInt x1) (toCDouble x2)

foreign import ccall "qtc_QTextLength2" qtc_QTextLength2 :: CLong -> CDouble -> IO (Ptr (TQTextLength ()))

class QqTextLength_nf x1 where
  qTextLength_nf :: x1 -> IO (QTextLength ())

instance QqTextLength_nf (()) where
 qTextLength_nf ()
  = withObjectRefResult $
    qtc_QTextLength

instance QqTextLength_nf ((QTextLength t1)) where
 qTextLength_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextLength1 cobj_x1

instance QqTextLength_nf ((QTextLengthType, Double)) where
 qTextLength_nf (x1, x2)
  = withObjectRefResult $
    qtc_QTextLength2 (toCLong $ qEnum_toInt x1) (toCDouble x2)

rawValue :: QTextLength a -> (()) -> IO (Double)
rawValue x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLength_rawValue cobj_x0

foreign import ccall "qtc_QTextLength_rawValue" qtc_QTextLength_rawValue :: Ptr (TQTextLength a) -> IO CDouble

instance Qqtype (QTextLength a) (()) (IO (QTextLengthType)) where
 qtype x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLength_type cobj_x0

foreign import ccall "qtc_QTextLength_type" qtc_QTextLength_type :: Ptr (TQTextLength a) -> IO CLong

instance Qvalue (QTextLength a) ((Double)) (IO (Double)) where
 value x0 (x1)
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLength_value cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextLength_value" qtc_QTextLength_value :: Ptr (TQTextLength a) -> CDouble -> IO CDouble

qTextLength_delete :: QTextLength a -> IO ()
qTextLength_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextLength_delete cobj_x0

foreign import ccall "qtc_QTextLength_delete" qtc_QTextLength_delete :: Ptr (TQTextLength a) -> IO ()

