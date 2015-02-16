{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextListFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextListFormat (
  QqTextListFormat(..)
  ,QqTextListFormat_nf(..)
  ,qTextListFormat_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextListFormat

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextListFormat x1 where
  qTextListFormat :: x1 -> IO (QTextListFormat ())

instance QqTextListFormat (()) where
 qTextListFormat ()
  = withQTextListFormatResult $
    qtc_QTextListFormat

foreign import ccall "qtc_QTextListFormat" qtc_QTextListFormat :: IO (Ptr (TQTextListFormat ()))

instance QqTextListFormat ((QTextListFormat t1)) where
 qTextListFormat (x1)
  = withQTextListFormatResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextListFormat1 cobj_x1

foreign import ccall "qtc_QTextListFormat1" qtc_QTextListFormat1 :: Ptr (TQTextListFormat t1) -> IO (Ptr (TQTextListFormat ()))

class QqTextListFormat_nf x1 where
  qTextListFormat_nf :: x1 -> IO (QTextListFormat ())

instance QqTextListFormat_nf (()) where
 qTextListFormat_nf ()
  = withObjectRefResult $
    qtc_QTextListFormat

instance QqTextListFormat_nf ((QTextListFormat t1)) where
 qTextListFormat_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextListFormat1 cobj_x1

instance Qindent (QTextListFormat a) (()) where
 indent x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_indent cobj_x0

foreign import ccall "qtc_QTextListFormat_indent" qtc_QTextListFormat_indent :: Ptr (TQTextListFormat a) -> IO CInt

instance QqisValid (QTextListFormat ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_isValid cobj_x0

foreign import ccall "qtc_QTextListFormat_isValid" qtc_QTextListFormat_isValid :: Ptr (TQTextListFormat a) -> IO CBool

instance QqisValid (QTextListFormatSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_isValid cobj_x0

instance QsetIndent (QTextListFormat a) ((Int)) where
 setIndent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_setIndent cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextListFormat_setIndent" qtc_QTextListFormat_setIndent :: Ptr (TQTextListFormat a) -> CInt -> IO ()

instance QsetStyle (QTextListFormat a) ((QTextListFormatStyle)) where
 setStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_setStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextListFormat_setStyle" qtc_QTextListFormat_setStyle :: Ptr (TQTextListFormat a) -> CLong -> IO ()

instance Qstyle (QTextListFormat a) (()) (IO (QTextListFormatStyle)) where
 style x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_style cobj_x0

foreign import ccall "qtc_QTextListFormat_style" qtc_QTextListFormat_style :: Ptr (TQTextListFormat a) -> IO CLong

qTextListFormat_delete :: QTextListFormat a -> IO ()
qTextListFormat_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextListFormat_delete cobj_x0

foreign import ccall "qtc_QTextListFormat_delete" qtc_QTextListFormat_delete :: Ptr (TQTextListFormat a) -> IO ()

