{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextBlock.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextBlock (
  QqTextBlock(..)
  ,QqTextBlock_nf(..)
  ,blockFormatIndex
  ,next
  ,previous
  ,setUserData
  ,setUserState
  ,userData
  ,userState
  ,qTextBlock_delete
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

class QqTextBlock x1 where
  qTextBlock :: x1 -> IO (QTextBlock ())

instance QqTextBlock (()) where
 qTextBlock ()
  = withQTextBlockResult $
    qtc_QTextBlock

foreign import ccall "qtc_QTextBlock" qtc_QTextBlock :: IO (Ptr (TQTextBlock ()))

instance QqTextBlock ((QTextBlock t1)) where
 qTextBlock (x1)
  = withQTextBlockResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlock1 cobj_x1

foreign import ccall "qtc_QTextBlock1" qtc_QTextBlock1 :: Ptr (TQTextBlock t1) -> IO (Ptr (TQTextBlock ()))

class QqTextBlock_nf x1 where
  qTextBlock_nf :: x1 -> IO (QTextBlock ())

instance QqTextBlock_nf (()) where
 qTextBlock_nf ()
  = withObjectRefResult $
    qtc_QTextBlock

instance QqTextBlock_nf ((QTextBlock t1)) where
 qTextBlock_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlock1 cobj_x1

instance QblockFormat (QTextBlock a) (()) where
 blockFormat x0 ()
  = withQTextBlockFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_blockFormat cobj_x0

foreign import ccall "qtc_QTextBlock_blockFormat" qtc_QTextBlock_blockFormat :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextBlockFormat ()))

blockFormatIndex :: QTextBlock a -> (()) -> IO (Int)
blockFormatIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_blockFormatIndex cobj_x0

foreign import ccall "qtc_QTextBlock_blockFormatIndex" qtc_QTextBlock_blockFormatIndex :: Ptr (TQTextBlock a) -> IO CInt

instance QcharFormat (QTextBlock a) (()) where
 charFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_charFormat cobj_x0

foreign import ccall "qtc_QTextBlock_charFormat" qtc_QTextBlock_charFormat :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextCharFormat ()))

instance QcharFormatIndex (QTextBlock a) (()) where
 charFormatIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_charFormatIndex cobj_x0

foreign import ccall "qtc_QTextBlock_charFormatIndex" qtc_QTextBlock_charFormatIndex :: Ptr (TQTextBlock a) -> IO CInt

instance Qqcontains (QTextBlock a) ((Int)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_contains cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextBlock_contains" qtc_QTextBlock_contains :: Ptr (TQTextBlock a) -> CInt -> IO CBool

instance Qdocument (QTextBlock a) (()) where
 document x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_document cobj_x0

foreign import ccall "qtc_QTextBlock_document" qtc_QTextBlock_document :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextDocument ()))

instance QqisValid (QTextBlock ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_isValid cobj_x0

foreign import ccall "qtc_QTextBlock_isValid" qtc_QTextBlock_isValid :: Ptr (TQTextBlock a) -> IO CBool

instance QqisValid (QTextBlockSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_isValid cobj_x0

instance Qlayout (QTextBlock a) (()) (IO (QTextLayout ())) where
 layout x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_layout cobj_x0

foreign import ccall "qtc_QTextBlock_layout" qtc_QTextBlock_layout :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextLayout ()))

instance Qqlength (QTextBlock a) (()) (IO (Int)) where
 qlength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_length cobj_x0

foreign import ccall "qtc_QTextBlock_length" qtc_QTextBlock_length :: Ptr (TQTextBlock a) -> IO CInt

next :: QTextBlock a -> (()) -> IO (QTextBlock ())
next x0 ()
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_next cobj_x0

foreign import ccall "qtc_QTextBlock_next" qtc_QTextBlock_next :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextBlock ()))

instance Qposition (QTextBlock a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_position cobj_x0

foreign import ccall "qtc_QTextBlock_position" qtc_QTextBlock_position :: Ptr (TQTextBlock a) -> IO CInt

previous :: QTextBlock a -> (()) -> IO (QTextBlock ())
previous x0 ()
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_previous cobj_x0

foreign import ccall "qtc_QTextBlock_previous" qtc_QTextBlock_previous :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextBlock ()))

setUserData :: QTextBlock a -> ((QTextBlockUserData t1)) -> IO ()
setUserData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextBlock_setUserData cobj_x0 cobj_x1

foreign import ccall "qtc_QTextBlock_setUserData" qtc_QTextBlock_setUserData :: Ptr (TQTextBlock a) -> Ptr (TQTextBlockUserData t1) -> IO ()

setUserState :: QTextBlock a -> ((Int)) -> IO ()
setUserState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_setUserState cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextBlock_setUserState" qtc_QTextBlock_setUserState :: Ptr (TQTextBlock a) -> CInt -> IO ()

instance Qtext (QTextBlock a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_text cobj_x0

foreign import ccall "qtc_QTextBlock_text" qtc_QTextBlock_text :: Ptr (TQTextBlock a) -> IO (Ptr (TQString ()))

instance QtextList (QTextBlock a) (()) (IO (QTextList ())) where
 textList x0 ()
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_textList cobj_x0

foreign import ccall "qtc_QTextBlock_textList" qtc_QTextBlock_textList :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextList ()))

userData :: QTextBlock a -> (()) -> IO (QTextBlockUserData ())
userData x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_userData cobj_x0

foreign import ccall "qtc_QTextBlock_userData" qtc_QTextBlock_userData :: Ptr (TQTextBlock a) -> IO (Ptr (TQTextBlockUserData ()))

userState :: QTextBlock a -> (()) -> IO (Int)
userState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_userState cobj_x0

foreign import ccall "qtc_QTextBlock_userState" qtc_QTextBlock_userState :: Ptr (TQTextBlock a) -> IO CInt

qTextBlock_delete :: QTextBlock a -> IO ()
qTextBlock_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextBlock_delete cobj_x0

foreign import ccall "qtc_QTextBlock_delete" qtc_QTextBlock_delete :: Ptr (TQTextBlock a) -> IO ()

