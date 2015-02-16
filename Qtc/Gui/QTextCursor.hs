{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QTextCursor.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QTextCursor.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextCursor (
  QqTextCursor(..)
  ,QqTextCursor_nf(..)
  ,anchor
  ,atBlockEnd
  ,atBlockStart
  ,atStart
  ,beginEditBlock
  ,block
  ,blockCharFormat
  ,blockNumber
  ,columnNumber
  ,QcreateList(..)
  ,currentList
  ,currentTable
  ,deleteChar
  ,deletePreviousChar
  ,endEditBlock
  ,hasComplexSelection
  ,QinsertBlock(..)
  ,insertFragment
  ,insertFrame
  ,QinsertImage(..)
  ,QinsertList(..)
  ,QinsertTable(..)
  ,QinsertText(..)
  ,joinPreviousEditBlock
  ,mergeBlockCharFormat
  ,mergeBlockFormat
  ,mergeCharFormat
  ,QmovePosition(..)
  ,removeSelectedText
  ,selectionEnd
  ,setBlockCharFormat
  ,setBlockFormat
  ,setCharFormat
  ,qTextCursor_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextListFormat
import Qtc.Enums.Gui.QTextCursor
import Qtc.Enums.Gui.QTextFrameFormat

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextCursor x1 where
  qTextCursor :: x1 -> IO (QTextCursor ())

instance QqTextCursor (()) where
 qTextCursor ()
  = withQTextCursorResult $
    qtc_QTextCursor

foreign import ccall "qtc_QTextCursor" qtc_QTextCursor :: IO (Ptr (TQTextCursor ()))

instance QqTextCursor ((QTextCursor t1)) where
 qTextCursor (x1)
  = withQTextCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor1 cobj_x1

foreign import ccall "qtc_QTextCursor1" qtc_QTextCursor1 :: Ptr (TQTextCursor t1) -> IO (Ptr (TQTextCursor ()))

instance QqTextCursor ((QTextBlock t1)) where
 qTextCursor (x1)
  = withQTextCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor2 cobj_x1

foreign import ccall "qtc_QTextCursor2" qtc_QTextCursor2 :: Ptr (TQTextBlock t1) -> IO (Ptr (TQTextCursor ()))

instance QqTextCursor ((QTextFrame t1)) where
 qTextCursor (x1)
  = withQTextCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor3 cobj_x1

foreign import ccall "qtc_QTextCursor3" qtc_QTextCursor3 :: Ptr (TQTextFrame t1) -> IO (Ptr (TQTextCursor ()))

instance QqTextCursor ((QTextDocument t1)) where
 qTextCursor (x1)
  = withQTextCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor4 cobj_x1

foreign import ccall "qtc_QTextCursor4" qtc_QTextCursor4 :: Ptr (TQTextDocument t1) -> IO (Ptr (TQTextCursor ()))

class QqTextCursor_nf x1 where
  qTextCursor_nf :: x1 -> IO (QTextCursor ())

instance QqTextCursor_nf (()) where
 qTextCursor_nf ()
  = withObjectRefResult $
    qtc_QTextCursor

instance QqTextCursor_nf ((QTextCursor t1)) where
 qTextCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor1 cobj_x1

instance QqTextCursor_nf ((QTextBlock t1)) where
 qTextCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor2 cobj_x1

instance QqTextCursor_nf ((QTextFrame t1)) where
 qTextCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor3 cobj_x1

instance QqTextCursor_nf ((QTextDocument t1)) where
 qTextCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor4 cobj_x1

anchor :: QTextCursor a -> (()) -> IO (Int)
anchor x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_anchor cobj_x0

foreign import ccall "qtc_QTextCursor_anchor" qtc_QTextCursor_anchor :: Ptr (TQTextCursor a) -> IO CInt

atBlockEnd :: QTextCursor a -> (()) -> IO (Bool)
atBlockEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_atBlockEnd cobj_x0

foreign import ccall "qtc_QTextCursor_atBlockEnd" qtc_QTextCursor_atBlockEnd :: Ptr (TQTextCursor a) -> IO CBool

atBlockStart :: QTextCursor a -> (()) -> IO (Bool)
atBlockStart x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_atBlockStart cobj_x0

foreign import ccall "qtc_QTextCursor_atBlockStart" qtc_QTextCursor_atBlockStart :: Ptr (TQTextCursor a) -> IO CBool

instance QatEnd (QTextCursor a) (()) where
 atEnd x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_atEnd cobj_x0

foreign import ccall "qtc_QTextCursor_atEnd" qtc_QTextCursor_atEnd :: Ptr (TQTextCursor a) -> IO CBool

atStart :: QTextCursor a -> (()) -> IO (Bool)
atStart x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_atStart cobj_x0

foreign import ccall "qtc_QTextCursor_atStart" qtc_QTextCursor_atStart :: Ptr (TQTextCursor a) -> IO CBool

beginEditBlock :: QTextCursor a -> (()) -> IO ()
beginEditBlock x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_beginEditBlock cobj_x0

foreign import ccall "qtc_QTextCursor_beginEditBlock" qtc_QTextCursor_beginEditBlock :: Ptr (TQTextCursor a) -> IO ()

block :: QTextCursor a -> (()) -> IO (QTextBlock ())
block x0 ()
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_block cobj_x0

foreign import ccall "qtc_QTextCursor_block" qtc_QTextCursor_block :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextBlock ()))

blockCharFormat :: QTextCursor a -> (()) -> IO (QTextCharFormat ())
blockCharFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_blockCharFormat cobj_x0

foreign import ccall "qtc_QTextCursor_blockCharFormat" qtc_QTextCursor_blockCharFormat :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextCharFormat ()))

instance QblockFormat (QTextCursor a) (()) where
 blockFormat x0 ()
  = withQTextBlockFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_blockFormat cobj_x0

foreign import ccall "qtc_QTextCursor_blockFormat" qtc_QTextCursor_blockFormat :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextBlockFormat ()))

blockNumber :: QTextCursor a -> (()) -> IO (Int)
blockNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_blockNumber cobj_x0

foreign import ccall "qtc_QTextCursor_blockNumber" qtc_QTextCursor_blockNumber :: Ptr (TQTextCursor a) -> IO CInt

instance QcharFormat (QTextCursor a) (()) where
 charFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_charFormat cobj_x0

foreign import ccall "qtc_QTextCursor_charFormat" qtc_QTextCursor_charFormat :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextCharFormat ()))

instance QclearSelection (QTextCursor a) (()) where
 clearSelection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_clearSelection cobj_x0

foreign import ccall "qtc_QTextCursor_clearSelection" qtc_QTextCursor_clearSelection :: Ptr (TQTextCursor a) -> IO ()

columnNumber :: QTextCursor a -> (()) -> IO (Int)
columnNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_columnNumber cobj_x0

foreign import ccall "qtc_QTextCursor_columnNumber" qtc_QTextCursor_columnNumber :: Ptr (TQTextCursor a) -> IO CInt

class QcreateList x1 where
 createList :: QTextCursor a -> x1 -> IO (QTextList ())

instance QcreateList ((QTextListFormat t1)) where
 createList x0 (x1)
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_createList1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_createList1" qtc_QTextCursor_createList1 :: Ptr (TQTextCursor a) -> Ptr (TQTextListFormat t1) -> IO (Ptr (TQTextList ()))

instance QcreateList ((QTextListFormatStyle)) where
 createList x0 (x1)
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_createList cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCursor_createList" qtc_QTextCursor_createList :: Ptr (TQTextCursor a) -> CLong -> IO (Ptr (TQTextList ()))

instance QcurrentFrame (QTextCursor a) (()) (IO (QTextFrame ())) where
 currentFrame x0 ()
  = withQTextFrameResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_currentFrame cobj_x0

foreign import ccall "qtc_QTextCursor_currentFrame" qtc_QTextCursor_currentFrame :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextFrame ()))

currentList :: QTextCursor a -> (()) -> IO (QTextList ())
currentList x0 ()
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_currentList cobj_x0

foreign import ccall "qtc_QTextCursor_currentList" qtc_QTextCursor_currentList :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextList ()))

currentTable :: QTextCursor a -> (()) -> IO (QTextTable ())
currentTable x0 ()
  = withQTextTableResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_currentTable cobj_x0

foreign import ccall "qtc_QTextCursor_currentTable" qtc_QTextCursor_currentTable :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextTable ()))

deleteChar :: QTextCursor a -> (()) -> IO ()
deleteChar x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_deleteChar cobj_x0

foreign import ccall "qtc_QTextCursor_deleteChar" qtc_QTextCursor_deleteChar :: Ptr (TQTextCursor a) -> IO ()

deletePreviousChar :: QTextCursor a -> (()) -> IO ()
deletePreviousChar x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_deletePreviousChar cobj_x0

foreign import ccall "qtc_QTextCursor_deletePreviousChar" qtc_QTextCursor_deletePreviousChar :: Ptr (TQTextCursor a) -> IO ()

endEditBlock :: QTextCursor a -> (()) -> IO ()
endEditBlock x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_endEditBlock cobj_x0

foreign import ccall "qtc_QTextCursor_endEditBlock" qtc_QTextCursor_endEditBlock :: Ptr (TQTextCursor a) -> IO ()

hasComplexSelection :: QTextCursor a -> (()) -> IO (Bool)
hasComplexSelection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_hasComplexSelection cobj_x0

foreign import ccall "qtc_QTextCursor_hasComplexSelection" qtc_QTextCursor_hasComplexSelection :: Ptr (TQTextCursor a) -> IO CBool

instance QhasSelection (QTextCursor a) (()) where
 hasSelection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_hasSelection cobj_x0

foreign import ccall "qtc_QTextCursor_hasSelection" qtc_QTextCursor_hasSelection :: Ptr (TQTextCursor a) -> IO CBool

class QinsertBlock x1 where
 insertBlock :: QTextCursor a -> x1 -> IO ()

instance QinsertBlock (()) where
 insertBlock x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_insertBlock cobj_x0

foreign import ccall "qtc_QTextCursor_insertBlock" qtc_QTextCursor_insertBlock :: Ptr (TQTextCursor a) -> IO ()

instance QinsertBlock ((QTextBlockFormat t1)) where
 insertBlock x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertBlock1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_insertBlock1" qtc_QTextCursor_insertBlock1 :: Ptr (TQTextCursor a) -> Ptr (TQTextBlockFormat t1) -> IO ()

instance QinsertBlock ((QTextBlockFormat t1, QTextCharFormat t2)) where
 insertBlock x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextCursor_insertBlock2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextCursor_insertBlock2" qtc_QTextCursor_insertBlock2 :: Ptr (TQTextCursor a) -> Ptr (TQTextBlockFormat t1) -> Ptr (TQTextCharFormat t2) -> IO ()

insertFragment :: QTextCursor a -> ((QTextDocumentFragment t1)) -> IO ()
insertFragment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertFragment cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_insertFragment" qtc_QTextCursor_insertFragment :: Ptr (TQTextCursor a) -> Ptr (TQTextDocumentFragment t1) -> IO ()

insertFrame :: QTextCursor a -> ((QTextFrameFormat t1)) -> IO (QTextFrame ())
insertFrame x0 (x1)
  = withQTextFrameResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_insertFrame" qtc_QTextCursor_insertFrame :: Ptr (TQTextCursor a) -> Ptr (TQTextFrameFormat t1) -> IO (Ptr (TQTextFrame ()))

instance QinsertHtml (QTextCursor a) ((String)) where
 insertHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCursor_insertHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCursor_insertHtml" qtc_QTextCursor_insertHtml :: Ptr (TQTextCursor a) -> CWString -> IO ()

class QinsertImage x1 where
 insertImage :: QTextCursor a -> x1 -> IO ()

instance QinsertImage ((QTextImageFormat t1)) where
 insertImage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertImage cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_insertImage" qtc_QTextCursor_insertImage :: Ptr (TQTextCursor a) -> Ptr (TQTextImageFormat t1) -> IO ()

instance QinsertImage ((QTextImageFormat t1, QTextFrameFormatPosition)) where
 insertImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertImage2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextCursor_insertImage2" qtc_QTextCursor_insertImage2 :: Ptr (TQTextCursor a) -> Ptr (TQTextImageFormat t1) -> CLong -> IO ()

instance QinsertImage ((String)) where
 insertImage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCursor_insertImage1 cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCursor_insertImage1" qtc_QTextCursor_insertImage1 :: Ptr (TQTextCursor a) -> CWString -> IO ()

class QinsertList x1 where
 insertList :: QTextCursor a -> x1 -> IO (QTextList ())

instance QinsertList ((QTextListFormat t1)) where
 insertList x0 (x1)
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_insertList1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_insertList1" qtc_QTextCursor_insertList1 :: Ptr (TQTextCursor a) -> Ptr (TQTextListFormat t1) -> IO (Ptr (TQTextList ()))

instance QinsertList ((QTextListFormatStyle)) where
 insertList x0 (x1)
  = withQTextListResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_insertList cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCursor_insertList" qtc_QTextCursor_insertList :: Ptr (TQTextCursor a) -> CLong -> IO (Ptr (TQTextList ()))

class QinsertTable x1 where
 insertTable :: QTextCursor a -> x1 -> IO (QTextTable ())

instance QinsertTable ((Int, Int)) where
 insertTable x0 (x1, x2)
  = withQTextTableResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_insertTable cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextCursor_insertTable" qtc_QTextCursor_insertTable :: Ptr (TQTextCursor a) -> CInt -> CInt -> IO (Ptr (TQTextTable ()))

instance QinsertTable ((Int, Int, QTextTableFormat t3)) where
 insertTable x0 (x1, x2, x3)
  = withQTextTableResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextCursor_insertTable1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QTextCursor_insertTable1" qtc_QTextCursor_insertTable1 :: Ptr (TQTextCursor a) -> CInt -> CInt -> Ptr (TQTextTableFormat t3) -> IO (Ptr (TQTextTable ()))

class QinsertText x1 where
 insertText :: QTextCursor a -> x1 -> IO ()

instance QinsertText ((String)) where
 insertText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextCursor_insertText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextCursor_insertText" qtc_QTextCursor_insertText :: Ptr (TQTextCursor a) -> CWString -> IO ()

instance QinsertText ((String, QTextCharFormat t2)) where
 insertText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextCursor_insertText1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextCursor_insertText1" qtc_QTextCursor_insertText1 :: Ptr (TQTextCursor a) -> CWString -> Ptr (TQTextCharFormat t2) -> IO ()

instance QisCopyOf (QTextCursor a) ((QTextCursor t1)) where
 isCopyOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_isCopyOf cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_isCopyOf" qtc_QTextCursor_isCopyOf :: Ptr (TQTextCursor a) -> Ptr (TQTextCursor t1) -> IO CBool

instance QqisNull (QTextCursor a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_isNull cobj_x0

foreign import ccall "qtc_QTextCursor_isNull" qtc_QTextCursor_isNull :: Ptr (TQTextCursor a) -> IO CBool

joinPreviousEditBlock :: QTextCursor a -> (()) -> IO ()
joinPreviousEditBlock x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_joinPreviousEditBlock cobj_x0

foreign import ccall "qtc_QTextCursor_joinPreviousEditBlock" qtc_QTextCursor_joinPreviousEditBlock :: Ptr (TQTextCursor a) -> IO ()

mergeBlockCharFormat :: QTextCursor a -> ((QTextCharFormat t1)) -> IO ()
mergeBlockCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_mergeBlockCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_mergeBlockCharFormat" qtc_QTextCursor_mergeBlockCharFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextCharFormat t1) -> IO ()

mergeBlockFormat :: QTextCursor a -> ((QTextBlockFormat t1)) -> IO ()
mergeBlockFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_mergeBlockFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_mergeBlockFormat" qtc_QTextCursor_mergeBlockFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextBlockFormat t1) -> IO ()

mergeCharFormat :: QTextCursor a -> ((QTextCharFormat t1)) -> IO ()
mergeCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_mergeCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_mergeCharFormat" qtc_QTextCursor_mergeCharFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextCharFormat t1) -> IO ()

class QmovePosition x1 where
 movePosition :: QTextCursor a -> x1 -> IO (Bool)

instance QmovePosition ((MoveOperation)) where
 movePosition x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_movePosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCursor_movePosition" qtc_QTextCursor_movePosition :: Ptr (TQTextCursor a) -> CLong -> IO CBool

instance QmovePosition ((MoveOperation, MoveMode)) where
 movePosition x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_movePosition1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextCursor_movePosition1" qtc_QTextCursor_movePosition1 :: Ptr (TQTextCursor a) -> CLong -> CLong -> IO CBool

instance QmovePosition ((MoveOperation, MoveMode, Int)) where
 movePosition x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_movePosition2 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCInt x3)

foreign import ccall "qtc_QTextCursor_movePosition2" qtc_QTextCursor_movePosition2 :: Ptr (TQTextCursor a) -> CLong -> CLong -> CInt -> IO CBool

instance Qposition (QTextCursor a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_position cobj_x0

foreign import ccall "qtc_QTextCursor_position" qtc_QTextCursor_position :: Ptr (TQTextCursor a) -> IO CInt

removeSelectedText :: QTextCursor a -> (()) -> IO ()
removeSelectedText x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_removeSelectedText cobj_x0

foreign import ccall "qtc_QTextCursor_removeSelectedText" qtc_QTextCursor_removeSelectedText :: Ptr (TQTextCursor a) -> IO ()

instance Qselect (QTextCursor a) ((SelectionType)) where
 select x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_select cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextCursor_select" qtc_QTextCursor_select :: Ptr (TQTextCursor a) -> CLong -> IO ()

instance QselectedText (QTextCursor a) (()) where
 selectedText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_selectedText cobj_x0

foreign import ccall "qtc_QTextCursor_selectedText" qtc_QTextCursor_selectedText :: Ptr (TQTextCursor a) -> IO (Ptr (TQString ()))

instance Qselection (QTextCursor a) (()) (IO (QTextDocumentFragment ())) where
 selection x0 ()
  = withQTextDocumentFragmentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_selection cobj_x0

foreign import ccall "qtc_QTextCursor_selection" qtc_QTextCursor_selection :: Ptr (TQTextCursor a) -> IO (Ptr (TQTextDocumentFragment ()))

selectionEnd :: QTextCursor a -> (()) -> IO (Int)
selectionEnd x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_selectionEnd cobj_x0

foreign import ccall "qtc_QTextCursor_selectionEnd" qtc_QTextCursor_selectionEnd :: Ptr (TQTextCursor a) -> IO CInt

instance QselectionStart (QTextCursor a) (()) where
 selectionStart x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_selectionStart cobj_x0

foreign import ccall "qtc_QTextCursor_selectionStart" qtc_QTextCursor_selectionStart :: Ptr (TQTextCursor a) -> IO CInt

setBlockCharFormat :: QTextCursor a -> ((QTextCharFormat t1)) -> IO ()
setBlockCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_setBlockCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_setBlockCharFormat" qtc_QTextCursor_setBlockCharFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextCharFormat t1) -> IO ()

setBlockFormat :: QTextCursor a -> ((QTextBlockFormat t1)) -> IO ()
setBlockFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_setBlockFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_setBlockFormat" qtc_QTextCursor_setBlockFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextBlockFormat t1) -> IO ()

setCharFormat :: QTextCursor a -> ((QTextCharFormat t1)) -> IO ()
setCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextCursor_setCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextCursor_setCharFormat" qtc_QTextCursor_setCharFormat :: Ptr (TQTextCursor a) -> Ptr (TQTextCharFormat t1) -> IO ()

instance QsetPosition (QTextCursor a) ((Int)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_setPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextCursor_setPosition" qtc_QTextCursor_setPosition :: Ptr (TQTextCursor a) -> CInt -> IO ()

instance QsetPosition (QTextCursor a) ((Int, MoveMode)) where
 setPosition x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_setPosition1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextCursor_setPosition1" qtc_QTextCursor_setPosition1 :: Ptr (TQTextCursor a) -> CInt -> CLong -> IO ()

qTextCursor_delete :: QTextCursor a -> IO ()
qTextCursor_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextCursor_delete cobj_x0

foreign import ccall "qtc_QTextCursor_delete" qtc_QTextCursor_delete :: Ptr (TQTextCursor a) -> IO ()

