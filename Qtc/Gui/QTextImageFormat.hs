{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextImageFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextImageFormat (
  QqTextImageFormat(..)
  ,QqTextImageFormat_nf(..)
  ,qTextImageFormat_delete
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

class QqTextImageFormat x1 where
  qTextImageFormat :: x1 -> IO (QTextImageFormat ())

instance QqTextImageFormat (()) where
 qTextImageFormat ()
  = withQTextImageFormatResult $
    qtc_QTextImageFormat

foreign import ccall "qtc_QTextImageFormat" qtc_QTextImageFormat :: IO (Ptr (TQTextImageFormat ()))

instance QqTextImageFormat ((QTextImageFormat t1)) where
 qTextImageFormat (x1)
  = withQTextImageFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextImageFormat1 cobj_x1

foreign import ccall "qtc_QTextImageFormat1" qtc_QTextImageFormat1 :: Ptr (TQTextImageFormat t1) -> IO (Ptr (TQTextImageFormat ()))

class QqTextImageFormat_nf x1 where
  qTextImageFormat_nf :: x1 -> IO (QTextImageFormat ())

instance QqTextImageFormat_nf (()) where
 qTextImageFormat_nf ()
  = withObjectRefResult $
    qtc_QTextImageFormat

instance QqTextImageFormat_nf ((QTextImageFormat t1)) where
 qTextImageFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextImageFormat1 cobj_x1

instance Qqheight (QTextImageFormat a) (()) (IO (Double)) where
 qheight x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_height cobj_x0

foreign import ccall "qtc_QTextImageFormat_height" qtc_QTextImageFormat_height :: Ptr (TQTextImageFormat a) -> IO CDouble

instance QqisValid (QTextImageFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_isValid cobj_x0

foreign import ccall "qtc_QTextImageFormat_isValid" qtc_QTextImageFormat_isValid :: Ptr (TQTextImageFormat a) -> IO CBool

instance QqisValid (QTextImageFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_isValid cobj_x0

instance Qname (QTextImageFormat a) (()) where
 name x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_name cobj_x0

foreign import ccall "qtc_QTextImageFormat_name" qtc_QTextImageFormat_name :: Ptr (TQTextImageFormat a) -> IO (Ptr (TQString ()))

instance QqsetHeight (QTextImageFormat a) ((Double)) where
 qsetHeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_setHeight cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextImageFormat_setHeight" qtc_QTextImageFormat_setHeight :: Ptr (TQTextImageFormat a) -> CDouble -> IO ()

instance QsetName (QTextImageFormat a) ((String)) where
 setName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextImageFormat_setName cobj_x0 cstr_x1

foreign import ccall "qtc_QTextImageFormat_setName" qtc_QTextImageFormat_setName :: Ptr (TQTextImageFormat a) -> CWString -> IO ()

instance QqsetWidth (QTextImageFormat a) ((Double)) where
 qsetWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_setWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextImageFormat_setWidth" qtc_QTextImageFormat_setWidth :: Ptr (TQTextImageFormat a) -> CDouble -> IO ()

instance Qqwidth (QTextImageFormat a) (()) (IO (Double)) where
 qwidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_width cobj_x0

foreign import ccall "qtc_QTextImageFormat_width" qtc_QTextImageFormat_width :: Ptr (TQTextImageFormat a) -> IO CDouble

qTextImageFormat_delete :: QTextImageFormat a -> IO ()
qTextImageFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextImageFormat_delete cobj_x0

foreign import ccall "qtc_QTextImageFormat_delete" qtc_QTextImageFormat_delete :: Ptr (TQTextImageFormat a) -> IO ()

