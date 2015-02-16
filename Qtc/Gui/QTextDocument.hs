{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextDocument.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextDocument (
  QqTextDocument(..)
  ,addResource
  ,blockCount
  ,QcreateObject(..)
  ,defaultFont
  ,defaultStyleSheet
  ,defaultTextOption
  ,documentLayout
  ,qdrawContents
  ,findBlock
  ,frameAt
  ,idealWidth
  ,markContentsDirty
  ,maximumBlockCount
  ,metaInformation
  ,object
  ,objectForFormat
  ,qpageSize
  ,Qresource(..), Qresource_nf(..)
  ,rootFrame
  ,setDefaultFont
  ,setDefaultStyleSheet
  ,setDefaultTextOption
  ,setDocumentLayout
  ,setMaximumBlockCount
  ,setMetaInformation
  ,qsetPageSize
  ,qTextDocument_delete
  ,qTextDocument_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextDocument

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTextDocument ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextDocument_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextDocument_userMethod" qtc_QTextDocument_userMethod :: Ptr (TQTextDocument a) -> CInt -> IO ()

instance QuserMethod (QTextDocumentSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextDocument_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextDocument ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextDocument_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextDocument_userMethodVariant" qtc_QTextDocument_userMethodVariant :: Ptr (TQTextDocument a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextDocumentSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextDocument_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTextDocument x1 where
  qTextDocument :: x1 -> IO (QTextDocument ())

instance QqTextDocument (()) where
 qTextDocument ()
  = withQTextDocumentResult $
    qtc_QTextDocument

foreign import ccall "qtc_QTextDocument" qtc_QTextDocument :: IO (Ptr (TQTextDocument ()))

instance QqTextDocument ((String)) where
 qTextDocument (x1)
  = withQTextDocumentResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument1 cstr_x1

foreign import ccall "qtc_QTextDocument1" qtc_QTextDocument1 :: CWString -> IO (Ptr (TQTextDocument ()))

instance QqTextDocument ((QObject t1)) where
 qTextDocument (x1)
  = withQTextDocumentResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument2 cobj_x1

foreign import ccall "qtc_QTextDocument2" qtc_QTextDocument2 :: Ptr (TQObject t1) -> IO (Ptr (TQTextDocument ()))

instance QqTextDocument ((String, QObject t2)) where
 qTextDocument (x1, x2)
  = withQTextDocumentResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument3 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextDocument3" qtc_QTextDocument3 :: CWString -> Ptr (TQObject t2) -> IO (Ptr (TQTextDocument ()))

addResource :: QTextDocument a -> ((Int, QUrl t2, QVariant t3)) -> IO ()
addResource x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTextDocument_addResource cobj_x0 (toCInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QTextDocument_addResource" qtc_QTextDocument_addResource :: Ptr (TQTextDocument a) -> CInt -> Ptr (TQUrl t2) -> Ptr (TQVariant t3) -> IO ()

instance QadjustSize (QTextDocument a) (()) where
 adjustSize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_adjustSize cobj_x0

foreign import ccall "qtc_QTextDocument_adjustSize" qtc_QTextDocument_adjustSize :: Ptr (TQTextDocument a) -> IO ()

instance Qbegin (QTextDocument a) (()) (IO (QTextBlock ())) where
 begin x0 ()
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_begin cobj_x0

foreign import ccall "qtc_QTextDocument_begin" qtc_QTextDocument_begin :: Ptr (TQTextDocument a) -> IO (Ptr (TQTextBlock ()))

blockCount :: QTextDocument a -> (()) -> IO (Int)
blockCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_blockCount cobj_x0

foreign import ccall "qtc_QTextDocument_blockCount" qtc_QTextDocument_blockCount :: Ptr (TQTextDocument a) -> IO CInt

instance Qclear (QTextDocument ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_clear_h cobj_x0

foreign import ccall "qtc_QTextDocument_clear_h" qtc_QTextDocument_clear_h :: Ptr (TQTextDocument a) -> IO ()

instance Qclear (QTextDocumentSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_clear_h cobj_x0

instance Qclone (QTextDocument a) (()) (IO (QTextDocument ())) where
 clone x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_clone cobj_x0

foreign import ccall "qtc_QTextDocument_clone" qtc_QTextDocument_clone :: Ptr (TQTextDocument a) -> IO (Ptr (TQTextDocument ()))

instance Qclone (QTextDocument a) ((QObject t1)) (IO (QTextDocument ())) where
 clone x0 (x1)
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_clone1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_clone1" qtc_QTextDocument_clone1 :: Ptr (TQTextDocument a) -> Ptr (TQObject t1) -> IO (Ptr (TQTextDocument ()))

class QcreateObject x0 x1 where
 createObject :: x0 -> x1 -> IO (QTextObject ())

instance QcreateObject (QTextDocument ()) ((QTextFormat t1)) where
 createObject x0 (x1)
  = withQTextObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_createObject_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_createObject_h" qtc_QTextDocument_createObject_h :: Ptr (TQTextDocument a) -> Ptr (TQTextFormat t1) -> IO (Ptr (TQTextObject ()))

instance QcreateObject (QTextDocumentSc a) ((QTextFormat t1)) where
 createObject x0 (x1)
  = withQTextObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_createObject_h cobj_x0 cobj_x1

defaultFont :: QTextDocument a -> (()) -> IO (QFont ())
defaultFont x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_defaultFont cobj_x0

foreign import ccall "qtc_QTextDocument_defaultFont" qtc_QTextDocument_defaultFont :: Ptr (TQTextDocument a) -> IO (Ptr (TQFont ()))

defaultStyleSheet :: QTextDocument a -> (()) -> IO (String)
defaultStyleSheet x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_defaultStyleSheet cobj_x0

foreign import ccall "qtc_QTextDocument_defaultStyleSheet" qtc_QTextDocument_defaultStyleSheet :: Ptr (TQTextDocument a) -> IO (Ptr (TQString ()))

defaultTextOption :: QTextDocument a -> (()) -> IO (QTextOption ())
defaultTextOption x0 ()
  = withQTextOptionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_defaultTextOption cobj_x0

foreign import ccall "qtc_QTextDocument_defaultTextOption" qtc_QTextDocument_defaultTextOption :: Ptr (TQTextDocument a) -> IO (Ptr (TQTextOption ()))

documentLayout :: QTextDocument a -> (()) -> IO (QAbstractTextDocumentLayout ())
documentLayout x0 ()
  = withQAbstractTextDocumentLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_documentLayout cobj_x0

foreign import ccall "qtc_QTextDocument_documentLayout" qtc_QTextDocument_documentLayout :: Ptr (TQTextDocument a) -> IO (Ptr (TQAbstractTextDocumentLayout ()))

instance QdrawContents (QTextDocument a) ((QPainter t1)) where
 drawContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_drawContents cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_drawContents" qtc_QTextDocument_drawContents :: Ptr (TQTextDocument a) -> Ptr (TQPainter t1) -> IO ()

qdrawContents :: QTextDocument a -> ((QPainter t1, QRectF t2)) -> IO ()
qdrawContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_drawContents1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextDocument_drawContents1" qtc_QTextDocument_drawContents1 :: Ptr (TQTextDocument a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> IO ()

instance QdrawContents (QTextDocument a) ((QPainter t1, RectF)) where
 drawContents x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QTextDocument_drawContents1_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QTextDocument_drawContents1_qth" qtc_QTextDocument_drawContents1_qth :: Ptr (TQTextDocument a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qend (QTextDocument a) (()) (IO (QTextBlock ())) where
 end x0 ()
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_end cobj_x0

foreign import ccall "qtc_QTextDocument_end" qtc_QTextDocument_end :: Ptr (TQTextDocument a) -> IO (Ptr (TQTextBlock ()))

instance Qfind (QTextDocument a) ((QRegExp t1)) (IO (QTextCursor ())) where
 find x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_find cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_find" qtc_QTextDocument_find :: Ptr (TQTextDocument a) -> Ptr (TQRegExp t1) -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((QRegExp t1, Int)) (IO (QTextCursor ())) where
 find x0 (x1, x2)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_find3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTextDocument_find3" qtc_QTextDocument_find3 :: Ptr (TQTextDocument a) -> Ptr (TQRegExp t1) -> CInt -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((QRegExp t1, Int, FindFlags)) (IO (QTextCursor ())) where
 find x0 (x1, x2, x3)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_find8 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QTextDocument_find8" qtc_QTextDocument_find8 :: Ptr (TQTextDocument a) -> Ptr (TQRegExp t1) -> CInt -> CLong -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((QRegExp t1, QTextCursor t2)) (IO (QTextCursor ())) where
 find x0 (x1, x2)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_find2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextDocument_find2" qtc_QTextDocument_find2 :: Ptr (TQTextDocument a) -> Ptr (TQRegExp t1) -> Ptr (TQTextCursor t2) -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((QRegExp t1, QTextCursor t2, FindFlags)) (IO (QTextCursor ())) where
 find x0 (x1, x2, x3)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_find9 cobj_x0 cobj_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QTextDocument_find9" qtc_QTextDocument_find9 :: Ptr (TQTextDocument a) -> Ptr (TQRegExp t1) -> Ptr (TQTextCursor t2) -> CLong -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((String)) (IO (QTextCursor ())) where
 find x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_find1 cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_find1" qtc_QTextDocument_find1 :: Ptr (TQTextDocument a) -> CWString -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((String, Int)) (IO (QTextCursor ())) where
 find x0 (x1, x2)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_find4 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QTextDocument_find4" qtc_QTextDocument_find4 :: Ptr (TQTextDocument a) -> CWString -> CInt -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((String, Int, FindFlags)) (IO (QTextCursor ())) where
 find x0 (x1, x2, x3)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_find6 cobj_x0 cstr_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QTextDocument_find6" qtc_QTextDocument_find6 :: Ptr (TQTextDocument a) -> CWString -> CInt -> CLong -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((String, QTextCursor t2)) (IO (QTextCursor ())) where
 find x0 (x1, x2)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_find5 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextDocument_find5" qtc_QTextDocument_find5 :: Ptr (TQTextDocument a) -> CWString -> Ptr (TQTextCursor t2) -> IO (Ptr (TQTextCursor ()))

instance Qfind (QTextDocument a) ((String, QTextCursor t2, FindFlags)) (IO (QTextCursor ())) where
 find x0 (x1, x2, x3)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_find7 cobj_x0 cstr_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QTextDocument_find7" qtc_QTextDocument_find7 :: Ptr (TQTextDocument a) -> CWString -> Ptr (TQTextCursor t2) -> CLong -> IO (Ptr (TQTextCursor ()))

findBlock :: QTextDocument a -> ((Int)) -> IO (QTextBlock ())
findBlock x0 (x1)
  = withQTextBlockResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_findBlock cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextDocument_findBlock" qtc_QTextDocument_findBlock :: Ptr (TQTextDocument a) -> CInt -> IO (Ptr (TQTextBlock ()))

frameAt :: QTextDocument a -> ((Int)) -> IO (QTextFrame ())
frameAt x0 (x1)
  = withQTextFrameResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_frameAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextDocument_frameAt" qtc_QTextDocument_frameAt :: Ptr (TQTextDocument a) -> CInt -> IO (Ptr (TQTextFrame ()))

idealWidth :: QTextDocument a -> (()) -> IO (Double)
idealWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_idealWidth cobj_x0

foreign import ccall "qtc_QTextDocument_idealWidth" qtc_QTextDocument_idealWidth :: Ptr (TQTextDocument a) -> IO CDouble

instance QqisEmpty (QTextDocument a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_isEmpty cobj_x0

foreign import ccall "qtc_QTextDocument_isEmpty" qtc_QTextDocument_isEmpty :: Ptr (TQTextDocument a) -> IO CBool

instance QisModified (QTextDocument a) (()) where
 isModified x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_isModified cobj_x0

foreign import ccall "qtc_QTextDocument_isModified" qtc_QTextDocument_isModified :: Ptr (TQTextDocument a) -> IO CBool

instance QisRedoAvailable (QTextDocument a) (()) where
 isRedoAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_isRedoAvailable cobj_x0

foreign import ccall "qtc_QTextDocument_isRedoAvailable" qtc_QTextDocument_isRedoAvailable :: Ptr (TQTextDocument a) -> IO CBool

instance QisUndoAvailable (QTextDocument a) (()) where
 isUndoAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_isUndoAvailable cobj_x0

foreign import ccall "qtc_QTextDocument_isUndoAvailable" qtc_QTextDocument_isUndoAvailable :: Ptr (TQTextDocument a) -> IO CBool

instance QisUndoRedoEnabled (QTextDocument a) (()) where
 isUndoRedoEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_isUndoRedoEnabled cobj_x0

foreign import ccall "qtc_QTextDocument_isUndoRedoEnabled" qtc_QTextDocument_isUndoRedoEnabled :: Ptr (TQTextDocument a) -> IO CBool

instance QloadResource (QTextDocument ()) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_loadResource_h cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextDocument_loadResource_h" qtc_QTextDocument_loadResource_h :: Ptr (TQTextDocument a) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant ()))

instance QloadResource (QTextDocumentSc a) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_loadResource_h cobj_x0 (toCInt x1) cobj_x2

markContentsDirty :: QTextDocument a -> ((Int, Int)) -> IO ()
markContentsDirty x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_markContentsDirty cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextDocument_markContentsDirty" qtc_QTextDocument_markContentsDirty :: Ptr (TQTextDocument a) -> CInt -> CInt -> IO ()

maximumBlockCount :: QTextDocument a -> (()) -> IO (Int)
maximumBlockCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_maximumBlockCount cobj_x0

foreign import ccall "qtc_QTextDocument_maximumBlockCount" qtc_QTextDocument_maximumBlockCount :: Ptr (TQTextDocument a) -> IO CInt

metaInformation :: QTextDocument a -> ((MetaInformation)) -> IO (String)
metaInformation x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_metaInformation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextDocument_metaInformation" qtc_QTextDocument_metaInformation :: Ptr (TQTextDocument a) -> CLong -> IO (Ptr (TQString ()))

object :: QTextDocument a -> ((Int)) -> IO (QTextObject ())
object x0 (x1)
  = withQTextObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_object cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextDocument_object" qtc_QTextDocument_object :: Ptr (TQTextDocument a) -> CInt -> IO (Ptr (TQTextObject ()))

objectForFormat :: QTextDocument a -> ((QTextFormat t1)) -> IO (QTextObject ())
objectForFormat x0 (x1)
  = withQTextObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_objectForFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_objectForFormat" qtc_QTextDocument_objectForFormat :: Ptr (TQTextDocument a) -> Ptr (TQTextFormat t1) -> IO (Ptr (TQTextObject ()))

instance QpageCount (QTextDocument a) (()) where
 pageCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_pageCount cobj_x0

foreign import ccall "qtc_QTextDocument_pageCount" qtc_QTextDocument_pageCount :: Ptr (TQTextDocument a) -> IO CInt

qpageSize :: QTextDocument a -> (()) -> IO (QSizeF ())
qpageSize x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_pageSize cobj_x0

foreign import ccall "qtc_QTextDocument_pageSize" qtc_QTextDocument_pageSize :: Ptr (TQTextDocument a) -> IO (Ptr (TQSizeF ()))

instance QpageSize (QTextDocument a) (()) (IO (SizeF)) where
 pageSize x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_pageSize_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QTextDocument_pageSize_qth" qtc_QTextDocument_pageSize_qth :: Ptr (TQTextDocument a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqprint (QTextDocument a) ((QPrinter t1)) where
 qprint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_print cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_print" qtc_QTextDocument_print :: Ptr (TQTextDocument a) -> Ptr (TQPrinter t1) -> IO ()

instance Qredo (QTextDocument a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_redo cobj_x0

foreign import ccall "qtc_QTextDocument_redo" qtc_QTextDocument_redo :: Ptr (TQTextDocument a) -> IO ()

instance Qredo (QTextDocument a) ((QTextCursor t1)) where
 redo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_redo1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_redo1" qtc_QTextDocument_redo1 :: Ptr (TQTextDocument a) -> Ptr (TQTextCursor t1) -> IO ()

class Qresource x0 x1 where
 resource :: x0 -> x1 -> IO (QVariant ())

class Qresource_nf x0 x1 where
 resource_nf :: x0 -> x1 -> IO (QVariant ())

instance Qresource (QTextDocument ()) ((Int, QUrl t2)) where
 resource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_resource cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextDocument_resource" qtc_QTextDocument_resource :: Ptr (TQTextDocument a) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant ()))

instance Qresource (QTextDocumentSc a) ((Int, QUrl t2)) where
 resource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_resource cobj_x0 (toCInt x1) cobj_x2

instance Qresource_nf (QTextDocument ()) ((Int, QUrl t2)) where
 resource_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_resource cobj_x0 (toCInt x1) cobj_x2

instance Qresource_nf (QTextDocumentSc a) ((Int, QUrl t2)) where
 resource_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_resource cobj_x0 (toCInt x1) cobj_x2

rootFrame :: QTextDocument a -> (()) -> IO (QTextFrame ())
rootFrame x0 ()
  = withQTextFrameResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_rootFrame cobj_x0

foreign import ccall "qtc_QTextDocument_rootFrame" qtc_QTextDocument_rootFrame :: Ptr (TQTextDocument a) -> IO (Ptr (TQTextFrame ()))

setDefaultFont :: QTextDocument a -> ((QFont t1)) -> IO ()
setDefaultFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_setDefaultFont cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_setDefaultFont" qtc_QTextDocument_setDefaultFont :: Ptr (TQTextDocument a) -> Ptr (TQFont t1) -> IO ()

setDefaultStyleSheet :: QTextDocument a -> ((String)) -> IO ()
setDefaultStyleSheet x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_setDefaultStyleSheet cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_setDefaultStyleSheet" qtc_QTextDocument_setDefaultStyleSheet :: Ptr (TQTextDocument a) -> CWString -> IO ()

setDefaultTextOption :: QTextDocument a -> ((QTextOption t1)) -> IO ()
setDefaultTextOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_setDefaultTextOption cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_setDefaultTextOption" qtc_QTextDocument_setDefaultTextOption :: Ptr (TQTextDocument a) -> Ptr (TQTextOption t1) -> IO ()

setDocumentLayout :: QTextDocument a -> ((QAbstractTextDocumentLayout t1)) -> IO ()
setDocumentLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_setDocumentLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_setDocumentLayout" qtc_QTextDocument_setDocumentLayout :: Ptr (TQTextDocument a) -> Ptr (TQAbstractTextDocumentLayout t1) -> IO ()

instance QsetHtml (QTextDocument a) ((String)) where
 setHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_setHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_setHtml" qtc_QTextDocument_setHtml :: Ptr (TQTextDocument a) -> CWString -> IO ()

setMaximumBlockCount :: QTextDocument a -> ((Int)) -> IO ()
setMaximumBlockCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setMaximumBlockCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextDocument_setMaximumBlockCount" qtc_QTextDocument_setMaximumBlockCount :: Ptr (TQTextDocument a) -> CInt -> IO ()

setMetaInformation :: QTextDocument a -> ((MetaInformation, String)) -> IO ()
setMetaInformation x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTextDocument_setMetaInformation cobj_x0 (toCLong $ qEnum_toInt x1) cstr_x2

foreign import ccall "qtc_QTextDocument_setMetaInformation" qtc_QTextDocument_setMetaInformation :: Ptr (TQTextDocument a) -> CLong -> CWString -> IO ()

instance QsetModified (QTextDocument a) (()) where
 setModified x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setModified cobj_x0

foreign import ccall "qtc_QTextDocument_setModified" qtc_QTextDocument_setModified :: Ptr (TQTextDocument a) -> IO ()

instance QsetModified (QTextDocument a) ((Bool)) where
 setModified x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setModified1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextDocument_setModified1" qtc_QTextDocument_setModified1 :: Ptr (TQTextDocument a) -> CBool -> IO ()

qsetPageSize :: QTextDocument a -> ((QSizeF t1)) -> IO ()
qsetPageSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_setPageSize cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_setPageSize" qtc_QTextDocument_setPageSize :: Ptr (TQTextDocument a) -> Ptr (TQSizeF t1) -> IO ()

instance QsetPageSize (QTextDocument a) ((SizeF)) where
 setPageSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QTextDocument_setPageSize_qth cobj_x0 csizef_x1_w csizef_x1_h 

foreign import ccall "qtc_QTextDocument_setPageSize_qth" qtc_QTextDocument_setPageSize_qth :: Ptr (TQTextDocument a) -> CDouble -> CDouble -> IO ()

instance QsetPlainText (QTextDocument a) ((String)) where
 setPlainText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_setPlainText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_setPlainText" qtc_QTextDocument_setPlainText :: Ptr (TQTextDocument a) -> CWString -> IO ()

instance QsetTextWidth (QTextDocument a) ((Double)) where
 setTextWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setTextWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextDocument_setTextWidth" qtc_QTextDocument_setTextWidth :: Ptr (TQTextDocument a) -> CDouble -> IO ()

instance QsetUndoRedoEnabled (QTextDocument a) ((Bool)) where
 setUndoRedoEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setUndoRedoEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextDocument_setUndoRedoEnabled" qtc_QTextDocument_setUndoRedoEnabled :: Ptr (TQTextDocument a) -> CBool -> IO ()

instance QsetUseDesignMetrics (QTextDocument a) ((Bool)) where
 setUseDesignMetrics x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_setUseDesignMetrics cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextDocument_setUseDesignMetrics" qtc_QTextDocument_setUseDesignMetrics :: Ptr (TQTextDocument a) -> CBool -> IO ()

instance Qqqsize (QTextDocument a) (()) (IO (QSizeF ())) where
 qqsize x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_size cobj_x0

foreign import ccall "qtc_QTextDocument_size" qtc_QTextDocument_size :: Ptr (TQTextDocument a) -> IO (Ptr (TQSizeF ()))

instance Qqsize (QTextDocument a) (()) (IO (SizeF)) where
 qsize x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_size_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QTextDocument_size_qth" qtc_QTextDocument_size_qth :: Ptr (TQTextDocument a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QtextWidth (QTextDocument a) (()) where
 textWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_textWidth cobj_x0

foreign import ccall "qtc_QTextDocument_textWidth" qtc_QTextDocument_textWidth :: Ptr (TQTextDocument a) -> IO CDouble

instance QtoHtml (QTextDocument a) (()) where
 toHtml x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_toHtml cobj_x0

foreign import ccall "qtc_QTextDocument_toHtml" qtc_QTextDocument_toHtml :: Ptr (TQTextDocument a) -> IO (Ptr (TQString ()))

instance QtoHtml (QTextDocument a) ((String)) where
 toHtml x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_toHtml1 cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_toHtml1" qtc_QTextDocument_toHtml1 :: Ptr (TQTextDocument a) -> CWString -> IO (Ptr (TQString ()))

instance QtoPlainText (QTextDocument a) (()) where
 toPlainText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_toPlainText cobj_x0

foreign import ccall "qtc_QTextDocument_toPlainText" qtc_QTextDocument_toPlainText :: Ptr (TQTextDocument a) -> IO (Ptr (TQString ()))

instance Qundo (QTextDocument a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_undo cobj_x0

foreign import ccall "qtc_QTextDocument_undo" qtc_QTextDocument_undo :: Ptr (TQTextDocument a) -> IO ()

instance Qundo (QTextDocument a) ((QTextCursor t1)) where
 undo x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_undo1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_undo1" qtc_QTextDocument_undo1 :: Ptr (TQTextDocument a) -> Ptr (TQTextCursor t1) -> IO ()

instance QuseDesignMetrics (QTextDocument a) (()) where
 useDesignMetrics x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_useDesignMetrics cobj_x0

foreign import ccall "qtc_QTextDocument_useDesignMetrics" qtc_QTextDocument_useDesignMetrics :: Ptr (TQTextDocument a) -> IO CBool

qTextDocument_delete :: QTextDocument a -> IO ()
qTextDocument_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_delete cobj_x0

foreign import ccall "qtc_QTextDocument_delete" qtc_QTextDocument_delete :: Ptr (TQTextDocument a) -> IO ()

qTextDocument_deleteLater :: QTextDocument a -> IO ()
qTextDocument_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_deleteLater cobj_x0

foreign import ccall "qtc_QTextDocument_deleteLater" qtc_QTextDocument_deleteLater :: Ptr (TQTextDocument a) -> IO ()

instance QchildEvent (QTextDocument ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_childEvent" qtc_QTextDocument_childEvent :: Ptr (TQTextDocument a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextDocumentSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextDocument ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_connectNotify" qtc_QTextDocument_connectNotify :: Ptr (TQTextDocument a) -> CWString -> IO ()

instance QconnectNotify (QTextDocumentSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextDocument ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_customEvent" qtc_QTextDocument_customEvent :: Ptr (TQTextDocument a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextDocumentSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextDocument ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_disconnectNotify" qtc_QTextDocument_disconnectNotify :: Ptr (TQTextDocument a) -> CWString -> IO ()

instance QdisconnectNotify (QTextDocumentSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTextDocument ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_event_h" qtc_QTextDocument_event_h :: Ptr (TQTextDocument a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextDocumentSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_event_h cobj_x0 cobj_x1

instance QeventFilter (QTextDocument ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextDocument_eventFilter_h" qtc_QTextDocument_eventFilter_h :: Ptr (TQTextDocument a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextDocumentSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextDocument_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextDocument ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextDocument_receivers" qtc_QTextDocument_receivers :: Ptr (TQTextDocument a) -> CWString -> IO CInt

instance Qreceivers (QTextDocumentSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextDocument_receivers cobj_x0 cstr_x1

instance Qsender (QTextDocument ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_sender cobj_x0

foreign import ccall "qtc_QTextDocument_sender" qtc_QTextDocument_sender :: Ptr (TQTextDocument a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextDocumentSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextDocument_sender cobj_x0

instance QtimerEvent (QTextDocument ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextDocument_timerEvent" qtc_QTextDocument_timerEvent :: Ptr (TQTextDocument a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextDocumentSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextDocument_timerEvent cobj_x0 cobj_x1

