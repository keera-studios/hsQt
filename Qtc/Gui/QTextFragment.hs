{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFragment.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextFragment (
  QqTextFragment(..)
  ,QqTextFragment_nf(..)
  ,qTextFragment_delete
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
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextFragment x1 where
  qTextFragment :: x1 -> IO (QTextFragment ())

instance QqTextFragment (()) where
 qTextFragment ()
  = withQTextFragmentResult $
    qtc_QTextFragment

foreign import ccall "qtc_QTextFragment" qtc_QTextFragment :: IO (Ptr (TQTextFragment ()))

instance QqTextFragment ((QTextFragment t1)) where
 qTextFragment (x1)
  = withQTextFragmentResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFragment1 cobj_x1

foreign import ccall "qtc_QTextFragment1" qtc_QTextFragment1 :: Ptr (TQTextFragment t1) -> IO (Ptr (TQTextFragment ()))

class QqTextFragment_nf x1 where
  qTextFragment_nf :: x1 -> IO (QTextFragment ())

instance QqTextFragment_nf (()) where
 qTextFragment_nf ()
  = withObjectRefResult $
    qtc_QTextFragment

instance QqTextFragment_nf ((QTextFragment t1)) where
 qTextFragment_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextFragment1 cobj_x1

instance QcharFormat (QTextFragment a) (()) where
 charFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_charFormat cobj_x0

foreign import ccall "qtc_QTextFragment_charFormat" qtc_QTextFragment_charFormat :: Ptr (TQTextFragment a) -> IO (Ptr (TQTextCharFormat ()))

instance QcharFormatIndex (QTextFragment a) (()) where
 charFormatIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_charFormatIndex cobj_x0

foreign import ccall "qtc_QTextFragment_charFormatIndex" qtc_QTextFragment_charFormatIndex :: Ptr (TQTextFragment a) -> IO CInt

instance Qqcontains (QTextFragment a) ((Int)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_contains cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextFragment_contains" qtc_QTextFragment_contains :: Ptr (TQTextFragment a) -> CInt -> IO CBool

instance QqisValid (QTextFragment ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_isValid cobj_x0

foreign import ccall "qtc_QTextFragment_isValid" qtc_QTextFragment_isValid :: Ptr (TQTextFragment a) -> IO CBool

instance QqisValid (QTextFragmentSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_isValid cobj_x0

instance Qqlength (QTextFragment a) (()) (IO (Int)) where
 qlength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_length cobj_x0

foreign import ccall "qtc_QTextFragment_length" qtc_QTextFragment_length :: Ptr (TQTextFragment a) -> IO CInt

instance Qposition (QTextFragment a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_position cobj_x0

foreign import ccall "qtc_QTextFragment_position" qtc_QTextFragment_position :: Ptr (TQTextFragment a) -> IO CInt

instance Qtext (QTextFragment a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_text cobj_x0

foreign import ccall "qtc_QTextFragment_text" qtc_QTextFragment_text :: Ptr (TQTextFragment a) -> IO (Ptr (TQString ()))

qTextFragment_delete :: QTextFragment a -> IO ()
qTextFragment_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextFragment_delete cobj_x0

foreign import ccall "qtc_QTextFragment_delete" qtc_QTextFragment_delete :: Ptr (TQTextFragment a) -> IO ()

