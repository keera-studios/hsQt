{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextDocumentFragment.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextDocumentFragment (
  QqTextDocumentFragment(..)
  ,QqTextDocumentFragment_nf(..)
  ,QqTextDocumentFragmentFromHtml(..)
  ,qTextDocumentFragmentFromPlainText
  ,qTextDocumentFragment_delete
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

class QqTextDocumentFragment x1 where
  qTextDocumentFragment :: x1 -> IO (QTextDocumentFragment ())

instance QqTextDocumentFragment (()) where
 qTextDocumentFragment ()
  = withQTextDocumentFragmentResult $
    qtc_QTextDocumentFragment

foreign import ccall "qtc_QTextDocumentFragment" qtc_QTextDocumentFragment :: IO (Ptr (TQTextDocumentFragment ()))

instance QqTextDocumentFragment ((QTextCursor t1)) where
 qTextDocumentFragment (x1)
  = withQTextDocumentFragmentResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocumentFragment1 cobj_x1

foreign import ccall "qtc_QTextDocumentFragment1" qtc_QTextDocumentFragment1 :: Ptr (TQTextCursor t1) -> IO (Ptr (TQTextDocumentFragment ()))

instance QqTextDocumentFragment ((QTextDocumentFragment t1)) where
 qTextDocumentFragment (x1)
  = withQTextDocumentFragmentResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocumentFragment2 cobj_x1

foreign import ccall "qtc_QTextDocumentFragment2" qtc_QTextDocumentFragment2 :: Ptr (TQTextDocumentFragment t1) -> IO (Ptr (TQTextDocumentFragment ()))

class QqTextDocumentFragment_nf x1 where
  qTextDocumentFragment_nf :: x1 -> IO (QTextDocumentFragment ())

instance QqTextDocumentFragment_nf (()) where
 qTextDocumentFragment_nf ()
  = withObjectRefResult $
    qtc_QTextDocumentFragment

instance QqTextDocumentFragment_nf ((QTextCursor t1)) where
 qTextDocumentFragment_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocumentFragment1 cobj_x1

instance QqTextDocumentFragment_nf ((QTextDocumentFragment t1)) where
 qTextDocumentFragment_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocumentFragment2 cobj_x1

class QqTextDocumentFragmentFromHtml x1 where
 qTextDocumentFragmentFromHtml :: x1 -> IO (QTextDocumentFragment ())

instance QqTextDocumentFragmentFromHtml ((String)) where
 qTextDocumentFragmentFromHtml (x1)
  = withQTextDocumentFragmentResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocumentFragment_fromHtml cstr_x1

foreign import ccall "qtc_QTextDocumentFragment_fromHtml" qtc_QTextDocumentFragment_fromHtml :: CWString -> IO (Ptr (TQTextDocumentFragment ()))

instance QqTextDocumentFragmentFromHtml ((String, QTextDocument t2)) where
 qTextDocumentFragmentFromHtml (x1, x2)
  = withQTextDocumentFragmentResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocumentFragment_fromHtml1 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextDocumentFragment_fromHtml1" qtc_QTextDocumentFragment_fromHtml1 :: CWString -> Ptr (TQTextDocument t2) -> IO (Ptr (TQTextDocumentFragment ()))

qTextDocumentFragmentFromPlainText :: ((String)) -> IO (QTextDocumentFragment ())
qTextDocumentFragmentFromPlainText (x1)
  = withQTextDocumentFragmentResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocumentFragment_fromPlainText cstr_x1

foreign import ccall "qtc_QTextDocumentFragment_fromPlainText" qtc_QTextDocumentFragment_fromPlainText :: CWString -> IO (Ptr (TQTextDocumentFragment ()))

instance QqisEmpty (QTextDocumentFragment a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocumentFragment_isEmpty cobj_x0

foreign import ccall "qtc_QTextDocumentFragment_isEmpty" qtc_QTextDocumentFragment_isEmpty :: Ptr (TQTextDocumentFragment a) -> IO CBool

instance QtoHtml (QTextDocumentFragment a) (()) where
 toHtml x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocumentFragment_toHtml cobj_x0

foreign import ccall "qtc_QTextDocumentFragment_toHtml" qtc_QTextDocumentFragment_toHtml :: Ptr (TQTextDocumentFragment a) -> IO (Ptr (TQString ()))

instance QtoHtml (QTextDocumentFragment a) ((String)) where
 toHtml x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocumentFragment_toHtml1 cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocumentFragment_toHtml1" qtc_QTextDocumentFragment_toHtml1 :: Ptr (TQTextDocumentFragment a) -> CWString -> IO (Ptr (TQString ()))

instance QtoPlainText (QTextDocumentFragment a) (()) where
 toPlainText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocumentFragment_toPlainText cobj_x0

foreign import ccall "qtc_QTextDocumentFragment_toPlainText" qtc_QTextDocumentFragment_toPlainText :: Ptr (TQTextDocumentFragment a) -> IO (Ptr (TQString ()))

qTextDocumentFragment_delete :: QTextDocumentFragment a -> IO ()
qTextDocumentFragment_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocumentFragment_delete cobj_x0

foreign import ccall "qtc_QTextDocumentFragment_delete" qtc_QTextDocumentFragment_delete :: Ptr (TQTextDocumentFragment a) -> IO ()

