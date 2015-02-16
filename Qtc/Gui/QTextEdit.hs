{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextEdit (
  QqTextEdit(..)
  ,acceptRichText
  ,append
  ,canPaste
  ,currentCharFormat
  ,cursorForPosition, qcursorForPosition
  ,QcursorRect(..), QqcursorRect(..)
  ,cursorWidth
  ,documentTitle
  ,ensureCursorVisible
  ,extraSelections
  ,insertPlainText
  ,lineWrapColumnOrWidth
  ,lineWrapMode
  ,mergeCurrentCharFormat
  ,overwriteMode
  ,scrollToAnchor
  ,setAcceptRichText
  ,setCurrentCharFormat
  ,setCursorWidth
  ,setDocumentTitle
  ,setLineWrapColumnOrWidth
  ,setLineWrapMode
  ,setOverwriteMode
  ,setTabChangesFocus
  ,setTabStopWidth
  ,setWordWrapMode
  ,tabChangesFocus
  ,tabStopWidth
  ,wordWrapMode
  ,QzoomIn(..)
  ,QzoomOut(..)
  ,qTextEdit_delete
  ,qTextEdit_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTextDocument
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTextCursor
import Qtc.Enums.Gui.QTextOption
import Qtc.Enums.Gui.QTextEdit

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTextEdit ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextEdit_userMethod" qtc_QTextEdit_userMethod :: Ptr (TQTextEdit a) -> CInt -> IO ()

instance QuserMethod (QTextEditSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextEdit_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextEdit ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextEdit_userMethodVariant" qtc_QTextEdit_userMethodVariant :: Ptr (TQTextEdit a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextEditSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTextEdit x1 where
  qTextEdit :: x1 -> IO (QTextEdit ())

instance QqTextEdit (()) where
 qTextEdit ()
  = withQTextEditResult $
    qtc_QTextEdit

foreign import ccall "qtc_QTextEdit" qtc_QTextEdit :: IO (Ptr (TQTextEdit ()))

instance QqTextEdit ((String)) where
 qTextEdit (x1)
  = withQTextEditResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit1 cstr_x1

foreign import ccall "qtc_QTextEdit1" qtc_QTextEdit1 :: CWString -> IO (Ptr (TQTextEdit ()))

instance QqTextEdit ((QWidget t1)) where
 qTextEdit (x1)
  = withQTextEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit2 cobj_x1

foreign import ccall "qtc_QTextEdit2" qtc_QTextEdit2 :: Ptr (TQWidget t1) -> IO (Ptr (TQTextEdit ()))

instance QqTextEdit ((String, QWidget t2)) where
 qTextEdit (x1, x2)
  = withQTextEditResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit3 cstr_x1 cobj_x2

foreign import ccall "qtc_QTextEdit3" qtc_QTextEdit3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQTextEdit ()))

acceptRichText :: QTextEdit a -> (()) -> IO (Bool)
acceptRichText x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_acceptRichText cobj_x0

foreign import ccall "qtc_QTextEdit_acceptRichText" qtc_QTextEdit_acceptRichText :: Ptr (TQTextEdit a) -> IO CBool

instance Qalignment (QTextEdit a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_alignment cobj_x0

foreign import ccall "qtc_QTextEdit_alignment" qtc_QTextEdit_alignment :: Ptr (TQTextEdit a) -> IO CLong

instance QanchorAt (QTextEdit a) ((Point)) where
 anchorAt x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextEdit_anchorAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTextEdit_anchorAt_qth" qtc_QTextEdit_anchorAt_qth :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO (Ptr (TQString ()))

instance QqanchorAt (QTextEdit a) ((QPoint t1)) where
 qanchorAt x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_anchorAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_anchorAt" qtc_QTextEdit_anchorAt :: Ptr (TQTextEdit a) -> Ptr (TQPoint t1) -> IO (Ptr (TQString ()))

append :: QTextEdit a -> ((String)) -> IO ()
append x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_append cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_append" qtc_QTextEdit_append :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QcanInsertFromMimeData (QTextEdit ()) ((QMimeData t1)) where
 canInsertFromMimeData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_canInsertFromMimeData_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_canInsertFromMimeData_h" qtc_QTextEdit_canInsertFromMimeData_h :: Ptr (TQTextEdit a) -> Ptr (TQMimeData t1) -> IO CBool

instance QcanInsertFromMimeData (QTextEditSc a) ((QMimeData t1)) where
 canInsertFromMimeData x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_canInsertFromMimeData_h cobj_x0 cobj_x1

canPaste :: QTextEdit a -> (()) -> IO (Bool)
canPaste x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_canPaste cobj_x0

foreign import ccall "qtc_QTextEdit_canPaste" qtc_QTextEdit_canPaste :: Ptr (TQTextEdit a) -> IO CBool

instance QchangeEvent (QTextEdit ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_changeEvent_h" qtc_QTextEdit_changeEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTextEditSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QTextEdit a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_clear cobj_x0

foreign import ccall "qtc_QTextEdit_clear" qtc_QTextEdit_clear :: Ptr (TQTextEdit a) -> IO ()

instance QcontextMenuEvent (QTextEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_contextMenuEvent_h" qtc_QTextEdit_contextMenuEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTextEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcopy (QTextEdit a) (()) (IO ()) where
 copy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_copy cobj_x0

foreign import ccall "qtc_QTextEdit_copy" qtc_QTextEdit_copy :: Ptr (TQTextEdit a) -> IO ()

instance Qcopy_nf (QTextEdit a) (()) (IO ()) where
 copy_nf x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_copy cobj_x0

instance QcreateMimeDataFromSelection (QTextEdit ()) (()) where
 createMimeDataFromSelection x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_createMimeDataFromSelection_h cobj_x0

foreign import ccall "qtc_QTextEdit_createMimeDataFromSelection_h" qtc_QTextEdit_createMimeDataFromSelection_h :: Ptr (TQTextEdit a) -> IO (Ptr (TQMimeData ()))

instance QcreateMimeDataFromSelection (QTextEditSc a) (()) where
 createMimeDataFromSelection x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_createMimeDataFromSelection_h cobj_x0

instance QcreateStandardContextMenu (QTextEdit a) (()) where
 createStandardContextMenu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_createStandardContextMenu cobj_x0

foreign import ccall "qtc_QTextEdit_createStandardContextMenu" qtc_QTextEdit_createStandardContextMenu :: Ptr (TQTextEdit a) -> IO (Ptr (TQMenu ()))

currentCharFormat :: QTextEdit a -> (()) -> IO (QTextCharFormat ())
currentCharFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_currentCharFormat cobj_x0

foreign import ccall "qtc_QTextEdit_currentCharFormat" qtc_QTextEdit_currentCharFormat :: Ptr (TQTextEdit a) -> IO (Ptr (TQTextCharFormat ()))

instance QcurrentFont (QTextEdit a) (()) where
 currentFont x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_currentFont cobj_x0

foreign import ccall "qtc_QTextEdit_currentFont" qtc_QTextEdit_currentFont :: Ptr (TQTextEdit a) -> IO (Ptr (TQFont ()))

cursorForPosition :: QTextEdit a -> ((Point)) -> IO (QTextCursor ())
cursorForPosition x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextEdit_cursorForPosition_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTextEdit_cursorForPosition_qth" qtc_QTextEdit_cursorForPosition_qth :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO (Ptr (TQTextCursor ()))

qcursorForPosition :: QTextEdit a -> ((QPoint t1)) -> IO (QTextCursor ())
qcursorForPosition x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_cursorForPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_cursorForPosition" qtc_QTextEdit_cursorForPosition :: Ptr (TQTextEdit a) -> Ptr (TQPoint t1) -> IO (Ptr (TQTextCursor ()))

class QcursorRect x1 where
 cursorRect :: QTextEdit a -> x1 -> IO (Rect)

class QqcursorRect x1 where
 qcursorRect :: QTextEdit a -> x1 -> IO (QRect ())

instance QqcursorRect (()) where
 qcursorRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_cursorRect cobj_x0

foreign import ccall "qtc_QTextEdit_cursorRect" qtc_QTextEdit_cursorRect :: Ptr (TQTextEdit a) -> IO (Ptr (TQRect ()))

instance QqcursorRect ((QTextCursor t1)) where
 qcursorRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_cursorRect1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_cursorRect1" qtc_QTextEdit_cursorRect1 :: Ptr (TQTextEdit a) -> Ptr (TQTextCursor t1) -> IO (Ptr (TQRect ()))

instance QcursorRect (()) where
 cursorRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_cursorRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTextEdit_cursorRect_qth" qtc_QTextEdit_cursorRect_qth :: Ptr (TQTextEdit a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QcursorRect ((QTextCursor t1)) where
 cursorRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_cursorRect1_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTextEdit_cursorRect1_qth" qtc_QTextEdit_cursorRect1_qth :: Ptr (TQTextEdit a) -> Ptr (TQTextCursor t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

cursorWidth :: QTextEdit a -> (()) -> IO (Int)
cursorWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_cursorWidth cobj_x0

foreign import ccall "qtc_QTextEdit_cursorWidth" qtc_QTextEdit_cursorWidth :: Ptr (TQTextEdit a) -> IO CInt

instance Qcut (QTextEdit a) (()) where
 cut x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_cut cobj_x0

foreign import ccall "qtc_QTextEdit_cut" qtc_QTextEdit_cut :: Ptr (TQTextEdit a) -> IO ()

instance Qdocument (QTextEdit a) (()) where
 document x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_document cobj_x0

foreign import ccall "qtc_QTextEdit_document" qtc_QTextEdit_document :: Ptr (TQTextEdit a) -> IO (Ptr (TQTextDocument ()))

documentTitle :: QTextEdit a -> (()) -> IO (String)
documentTitle x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_documentTitle cobj_x0

foreign import ccall "qtc_QTextEdit_documentTitle" qtc_QTextEdit_documentTitle :: Ptr (TQTextEdit a) -> IO (Ptr (TQString ()))

instance QdragEnterEvent (QTextEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragEnterEvent_h" qtc_QTextEdit_dragEnterEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTextEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTextEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragLeaveEvent_h" qtc_QTextEdit_dragLeaveEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTextEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTextEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dragMoveEvent_h" qtc_QTextEdit_dragMoveEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTextEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTextEdit ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_dropEvent_h" qtc_QTextEdit_dropEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTextEditSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_dropEvent_h cobj_x0 cobj_x1

ensureCursorVisible :: QTextEdit a -> (()) -> IO ()
ensureCursorVisible x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_ensureCursorVisible cobj_x0

foreign import ccall "qtc_QTextEdit_ensureCursorVisible" qtc_QTextEdit_ensureCursorVisible :: Ptr (TQTextEdit a) -> IO ()

instance Qevent (QTextEdit ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_event_h" qtc_QTextEdit_event_h :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextEditSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_event_h cobj_x0 cobj_x1

extraSelections :: QTextEdit a -> (()) -> IO ([ExtraSelection ()])
extraSelections x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_extraSelections cobj_x0 arr

foreign import ccall "qtc_QTextEdit_extraSelections" qtc_QTextEdit_extraSelections :: Ptr (TQTextEdit a) -> Ptr (Ptr (TExtraSelection ())) -> IO CInt

instance Qfind (QTextEdit a) ((String)) (IO (Bool)) where
 find x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_find cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_find" qtc_QTextEdit_find :: Ptr (TQTextEdit a) -> CWString -> IO CBool

instance Qfind (QTextEdit a) ((String, FindFlags)) (IO (Bool)) where
 find x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_find1 cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QTextEdit_find1" qtc_QTextEdit_find1 :: Ptr (TQTextEdit a) -> CWString -> CLong -> IO CBool

instance QfocusInEvent (QTextEdit ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_focusInEvent_h" qtc_QTextEdit_focusInEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTextEditSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QTextEdit ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_focusNextPrevChild" qtc_QTextEdit_focusNextPrevChild :: Ptr (TQTextEdit a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTextEditSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTextEdit ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_focusOutEvent_h" qtc_QTextEdit_focusOutEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTextEditSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_focusOutEvent_h cobj_x0 cobj_x1

instance QfontFamily (QTextEdit a) (()) where
 fontFamily x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_fontFamily cobj_x0

foreign import ccall "qtc_QTextEdit_fontFamily" qtc_QTextEdit_fontFamily :: Ptr (TQTextEdit a) -> IO (Ptr (TQString ()))

instance QfontItalic (QTextEdit a) (()) where
 fontItalic x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_fontItalic cobj_x0

foreign import ccall "qtc_QTextEdit_fontItalic" qtc_QTextEdit_fontItalic :: Ptr (TQTextEdit a) -> IO CBool

instance QfontPointSize (QTextEdit a) (()) where
 fontPointSize x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_fontPointSize cobj_x0

foreign import ccall "qtc_QTextEdit_fontPointSize" qtc_QTextEdit_fontPointSize :: Ptr (TQTextEdit a) -> IO CDouble

instance QfontUnderline (QTextEdit a) (()) where
 fontUnderline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_fontUnderline cobj_x0

foreign import ccall "qtc_QTextEdit_fontUnderline" qtc_QTextEdit_fontUnderline :: Ptr (TQTextEdit a) -> IO CBool

instance QfontWeight (QTextEdit a) (()) where
 fontWeight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_fontWeight cobj_x0

foreign import ccall "qtc_QTextEdit_fontWeight" qtc_QTextEdit_fontWeight :: Ptr (TQTextEdit a) -> IO CInt

instance QinputMethodEvent (QTextEdit ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_inputMethodEvent" qtc_QTextEdit_inputMethodEvent :: Ptr (TQTextEdit a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTextEditSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTextEdit ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextEdit_inputMethodQuery" qtc_QTextEdit_inputMethodQuery :: Ptr (TQTextEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTextEditSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QinsertFromMimeData (QTextEdit ()) ((QMimeData t1)) where
 insertFromMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_insertFromMimeData_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_insertFromMimeData_h" qtc_QTextEdit_insertFromMimeData_h :: Ptr (TQTextEdit a) -> Ptr (TQMimeData t1) -> IO ()

instance QinsertFromMimeData (QTextEditSc a) ((QMimeData t1)) where
 insertFromMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_insertFromMimeData_h cobj_x0 cobj_x1

instance QinsertHtml (QTextEdit a) ((String)) where
 insertHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_insertHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_insertHtml" qtc_QTextEdit_insertHtml :: Ptr (TQTextEdit a) -> CWString -> IO ()

insertPlainText :: QTextEdit a -> ((String)) -> IO ()
insertPlainText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_insertPlainText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_insertPlainText" qtc_QTextEdit_insertPlainText :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QisReadOnly (QTextEdit a) (()) where
 isReadOnly x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_isReadOnly cobj_x0

foreign import ccall "qtc_QTextEdit_isReadOnly" qtc_QTextEdit_isReadOnly :: Ptr (TQTextEdit a) -> IO CBool

instance QisUndoRedoEnabled (QTextEdit a) (()) where
 isUndoRedoEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_isUndoRedoEnabled cobj_x0

foreign import ccall "qtc_QTextEdit_isUndoRedoEnabled" qtc_QTextEdit_isUndoRedoEnabled :: Ptr (TQTextEdit a) -> IO CBool

instance QkeyPressEvent (QTextEdit ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_keyPressEvent_h" qtc_QTextEdit_keyPressEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTextEditSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QTextEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_keyReleaseEvent_h" qtc_QTextEdit_keyReleaseEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTextEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_keyReleaseEvent_h cobj_x0 cobj_x1

lineWrapColumnOrWidth :: QTextEdit a -> (()) -> IO (Int)
lineWrapColumnOrWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_lineWrapColumnOrWidth cobj_x0

foreign import ccall "qtc_QTextEdit_lineWrapColumnOrWidth" qtc_QTextEdit_lineWrapColumnOrWidth :: Ptr (TQTextEdit a) -> IO CInt

lineWrapMode :: QTextEdit a -> (()) -> IO (LineWrapMode)
lineWrapMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_lineWrapMode cobj_x0

foreign import ccall "qtc_QTextEdit_lineWrapMode" qtc_QTextEdit_lineWrapMode :: Ptr (TQTextEdit a) -> IO CLong

instance QloadResource (QTextEdit ()) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_loadResource_h cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTextEdit_loadResource_h" qtc_QTextEdit_loadResource_h :: Ptr (TQTextEdit a) -> CInt -> Ptr (TQUrl t2) -> IO (Ptr (TQVariant ()))

instance QloadResource (QTextEditSc a) ((Int, QUrl t2)) where
 loadResource x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_loadResource_h cobj_x0 (toCInt x1) cobj_x2

mergeCurrentCharFormat :: QTextEdit a -> ((QTextCharFormat t1)) -> IO ()
mergeCurrentCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mergeCurrentCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mergeCurrentCharFormat" qtc_QTextEdit_mergeCurrentCharFormat :: Ptr (TQTextEdit a) -> Ptr (TQTextCharFormat t1) -> IO ()

instance QmouseDoubleClickEvent (QTextEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseDoubleClickEvent_h" qtc_QTextEdit_mouseDoubleClickEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTextEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTextEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseMoveEvent_h" qtc_QTextEdit_mouseMoveEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTextEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTextEdit ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mousePressEvent_h" qtc_QTextEdit_mousePressEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTextEditSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTextEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_mouseReleaseEvent_h" qtc_QTextEdit_mouseReleaseEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTextEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QTextEdit a) ((MoveOperation)) (IO ()) where
 moveCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextEdit_moveCursor" qtc_QTextEdit_moveCursor :: Ptr (TQTextEdit a) -> CLong -> IO ()

instance QmoveCursor (QTextEdit a) ((MoveOperation, MoveMode)) (IO ()) where
 moveCursor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_moveCursor1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTextEdit_moveCursor1" qtc_QTextEdit_moveCursor1 :: Ptr (TQTextEdit a) -> CLong -> CLong -> IO ()

overwriteMode :: QTextEdit a -> (()) -> IO (Bool)
overwriteMode x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_overwriteMode cobj_x0

foreign import ccall "qtc_QTextEdit_overwriteMode" qtc_QTextEdit_overwriteMode :: Ptr (TQTextEdit a) -> IO CBool

instance QpaintEvent (QTextEdit ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_paintEvent_h" qtc_QTextEdit_paintEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTextEditSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paintEvent_h cobj_x0 cobj_x1

instance Qpaste (QTextEdit a) (()) where
 paste x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_paste cobj_x0

foreign import ccall "qtc_QTextEdit_paste" qtc_QTextEdit_paste :: Ptr (TQTextEdit a) -> IO ()

instance Qqprint (QTextEdit a) ((QPrinter t1)) where
 qprint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_print cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_print" qtc_QTextEdit_print :: Ptr (TQTextEdit a) -> Ptr (TQPrinter t1) -> IO ()

instance Qredo (QTextEdit a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_redo cobj_x0

foreign import ccall "qtc_QTextEdit_redo" qtc_QTextEdit_redo :: Ptr (TQTextEdit a) -> IO ()

instance QresizeEvent (QTextEdit ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_resizeEvent_h" qtc_QTextEdit_resizeEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTextEditSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resizeEvent_h cobj_x0 cobj_x1

instance QscrollContentsBy (QTextEdit ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextEdit_scrollContentsBy_h" qtc_QTextEdit_scrollContentsBy_h :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QTextEditSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

scrollToAnchor :: QTextEdit a -> ((String)) -> IO ()
scrollToAnchor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_scrollToAnchor cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_scrollToAnchor" qtc_QTextEdit_scrollToAnchor :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QselectAll (QTextEdit a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_selectAll cobj_x0

foreign import ccall "qtc_QTextEdit_selectAll" qtc_QTextEdit_selectAll :: Ptr (TQTextEdit a) -> IO ()

setAcceptRichText :: QTextEdit a -> ((Bool)) -> IO ()
setAcceptRichText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setAcceptRichText cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setAcceptRichText" qtc_QTextEdit_setAcceptRichText :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetAlignment (QTextEdit a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextEdit_setAlignment" qtc_QTextEdit_setAlignment :: Ptr (TQTextEdit a) -> CLong -> IO ()

setCurrentCharFormat :: QTextEdit a -> ((QTextCharFormat t1)) -> IO ()
setCurrentCharFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setCurrentCharFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setCurrentCharFormat" qtc_QTextEdit_setCurrentCharFormat :: Ptr (TQTextEdit a) -> Ptr (TQTextCharFormat t1) -> IO ()

instance QsetCurrentFont (QTextEdit a) ((QFont t1)) where
 setCurrentFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setCurrentFont cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setCurrentFont" qtc_QTextEdit_setCurrentFont :: Ptr (TQTextEdit a) -> Ptr (TQFont t1) -> IO ()

setCursorWidth :: QTextEdit a -> ((Int)) -> IO ()
setCursorWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setCursorWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_setCursorWidth" qtc_QTextEdit_setCursorWidth :: Ptr (TQTextEdit a) -> CInt -> IO ()

instance QsetDocument (QTextEdit a) ((QTextDocument t1)) where
 setDocument x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setDocument cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setDocument" qtc_QTextEdit_setDocument :: Ptr (TQTextEdit a) -> Ptr (TQTextDocument t1) -> IO ()

setDocumentTitle :: QTextEdit a -> ((String)) -> IO ()
setDocumentTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_setDocumentTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_setDocumentTitle" qtc_QTextEdit_setDocumentTitle :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QsetFontFamily (QTextEdit a) ((String)) where
 setFontFamily x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_setFontFamily cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_setFontFamily" qtc_QTextEdit_setFontFamily :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QsetFontItalic (QTextEdit a) ((Bool)) where
 setFontItalic x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setFontItalic cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setFontItalic" qtc_QTextEdit_setFontItalic :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetFontPointSize (QTextEdit a) ((Double)) where
 setFontPointSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setFontPointSize cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextEdit_setFontPointSize" qtc_QTextEdit_setFontPointSize :: Ptr (TQTextEdit a) -> CDouble -> IO ()

instance QsetFontUnderline (QTextEdit a) ((Bool)) where
 setFontUnderline x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setFontUnderline cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setFontUnderline" qtc_QTextEdit_setFontUnderline :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetFontWeight (QTextEdit a) ((Int)) where
 setFontWeight x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setFontWeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_setFontWeight" qtc_QTextEdit_setFontWeight :: Ptr (TQTextEdit a) -> CInt -> IO ()

instance QsetHtml (QTextEdit a) ((String)) where
 setHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_setHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_setHtml" qtc_QTextEdit_setHtml :: Ptr (TQTextEdit a) -> CWString -> IO ()

setLineWrapColumnOrWidth :: QTextEdit a -> ((Int)) -> IO ()
setLineWrapColumnOrWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setLineWrapColumnOrWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_setLineWrapColumnOrWidth" qtc_QTextEdit_setLineWrapColumnOrWidth :: Ptr (TQTextEdit a) -> CInt -> IO ()

setLineWrapMode :: QTextEdit a -> ((LineWrapMode)) -> IO ()
setLineWrapMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setLineWrapMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextEdit_setLineWrapMode" qtc_QTextEdit_setLineWrapMode :: Ptr (TQTextEdit a) -> CLong -> IO ()

setOverwriteMode :: QTextEdit a -> ((Bool)) -> IO ()
setOverwriteMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setOverwriteMode cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setOverwriteMode" qtc_QTextEdit_setOverwriteMode :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetPlainText (QTextEdit a) ((String)) where
 setPlainText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_setPlainText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_setPlainText" qtc_QTextEdit_setPlainText :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QsetReadOnly (QTextEdit a) ((Bool)) where
 setReadOnly x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setReadOnly cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setReadOnly" qtc_QTextEdit_setReadOnly :: Ptr (TQTextEdit a) -> CBool -> IO ()

setTabChangesFocus :: QTextEdit a -> ((Bool)) -> IO ()
setTabChangesFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setTabChangesFocus cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setTabChangesFocus" qtc_QTextEdit_setTabChangesFocus :: Ptr (TQTextEdit a) -> CBool -> IO ()

setTabStopWidth :: QTextEdit a -> ((Int)) -> IO ()
setTabStopWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setTabStopWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_setTabStopWidth" qtc_QTextEdit_setTabStopWidth :: Ptr (TQTextEdit a) -> CInt -> IO ()

instance QsetText (QTextEdit a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_setText" qtc_QTextEdit_setText :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QsetTextColor (QTextEdit a) ((QColor t1)) where
 setTextColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setTextColor cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setTextColor" qtc_QTextEdit_setTextColor :: Ptr (TQTextEdit a) -> Ptr (TQColor t1) -> IO ()

instance QsetTextCursor (QTextEdit a) ((QTextCursor t1)) where
 setTextCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setTextCursor cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setTextCursor" qtc_QTextEdit_setTextCursor :: Ptr (TQTextEdit a) -> Ptr (TQTextCursor t1) -> IO ()

instance QsetTextInteractionFlags (QTextEdit a) ((TextInteractionFlags)) where
 setTextInteractionFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setTextInteractionFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextEdit_setTextInteractionFlags" qtc_QTextEdit_setTextInteractionFlags :: Ptr (TQTextEdit a) -> CLong -> IO ()

instance QsetUndoRedoEnabled (QTextEdit a) ((Bool)) where
 setUndoRedoEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setUndoRedoEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setUndoRedoEnabled" qtc_QTextEdit_setUndoRedoEnabled :: Ptr (TQTextEdit a) -> CBool -> IO ()

setWordWrapMode :: QTextEdit a -> ((WrapMode)) -> IO ()
setWordWrapMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setWordWrapMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextEdit_setWordWrapMode" qtc_QTextEdit_setWordWrapMode :: Ptr (TQTextEdit a) -> CLong -> IO ()

instance QshowEvent (QTextEdit ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_showEvent_h" qtc_QTextEdit_showEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTextEditSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_showEvent_h cobj_x0 cobj_x1

tabChangesFocus :: QTextEdit a -> (()) -> IO (Bool)
tabChangesFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_tabChangesFocus cobj_x0

foreign import ccall "qtc_QTextEdit_tabChangesFocus" qtc_QTextEdit_tabChangesFocus :: Ptr (TQTextEdit a) -> IO CBool

tabStopWidth :: QTextEdit a -> (()) -> IO (Int)
tabStopWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_tabStopWidth cobj_x0

foreign import ccall "qtc_QTextEdit_tabStopWidth" qtc_QTextEdit_tabStopWidth :: Ptr (TQTextEdit a) -> IO CInt

instance QtextColor (QTextEdit a) (()) where
 textColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_textColor cobj_x0

foreign import ccall "qtc_QTextEdit_textColor" qtc_QTextEdit_textColor :: Ptr (TQTextEdit a) -> IO (Ptr (TQColor ()))

instance QtextCursor (QTextEdit a) (()) where
 textCursor x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_textCursor cobj_x0

foreign import ccall "qtc_QTextEdit_textCursor" qtc_QTextEdit_textCursor :: Ptr (TQTextEdit a) -> IO (Ptr (TQTextCursor ()))

instance QtextInteractionFlags (QTextEdit a) (()) where
 textInteractionFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_textInteractionFlags cobj_x0

foreign import ccall "qtc_QTextEdit_textInteractionFlags" qtc_QTextEdit_textInteractionFlags :: Ptr (TQTextEdit a) -> IO CLong

instance QtimerEvent (QTextEdit ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_timerEvent" qtc_QTextEdit_timerEvent :: Ptr (TQTextEdit a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextEditSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_timerEvent cobj_x0 cobj_x1

instance QtoHtml (QTextEdit a) (()) where
 toHtml x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_toHtml cobj_x0

foreign import ccall "qtc_QTextEdit_toHtml" qtc_QTextEdit_toHtml :: Ptr (TQTextEdit a) -> IO (Ptr (TQString ()))

instance QtoPlainText (QTextEdit a) (()) where
 toPlainText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_toPlainText cobj_x0

foreign import ccall "qtc_QTextEdit_toPlainText" qtc_QTextEdit_toPlainText :: Ptr (TQTextEdit a) -> IO (Ptr (TQString ()))

instance Qundo (QTextEdit a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_undo cobj_x0

foreign import ccall "qtc_QTextEdit_undo" qtc_QTextEdit_undo :: Ptr (TQTextEdit a) -> IO ()

instance QwheelEvent (QTextEdit ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_wheelEvent_h" qtc_QTextEdit_wheelEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTextEditSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_wheelEvent_h cobj_x0 cobj_x1

wordWrapMode :: QTextEdit a -> (()) -> IO (WrapMode)
wordWrapMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_wordWrapMode cobj_x0

foreign import ccall "qtc_QTextEdit_wordWrapMode" qtc_QTextEdit_wordWrapMode :: Ptr (TQTextEdit a) -> IO CLong

class QzoomIn x1 where
 zoomIn :: QTextEdit a -> x1 -> IO ()

instance QzoomIn (()) where
 zoomIn x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_zoomIn cobj_x0

foreign import ccall "qtc_QTextEdit_zoomIn" qtc_QTextEdit_zoomIn :: Ptr (TQTextEdit a) -> IO ()

instance QzoomIn ((Int)) where
 zoomIn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_zoomIn1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_zoomIn1" qtc_QTextEdit_zoomIn1 :: Ptr (TQTextEdit a) -> CInt -> IO ()

class QzoomOut x1 where
 zoomOut :: QTextEdit a -> x1 -> IO ()

instance QzoomOut (()) where
 zoomOut x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_zoomOut cobj_x0

foreign import ccall "qtc_QTextEdit_zoomOut" qtc_QTextEdit_zoomOut :: Ptr (TQTextEdit a) -> IO ()

instance QzoomOut ((Int)) where
 zoomOut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_zoomOut1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_zoomOut1" qtc_QTextEdit_zoomOut1 :: Ptr (TQTextEdit a) -> CInt -> IO ()

qTextEdit_delete :: QTextEdit a -> IO ()
qTextEdit_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_delete cobj_x0

foreign import ccall "qtc_QTextEdit_delete" qtc_QTextEdit_delete :: Ptr (TQTextEdit a) -> IO ()

qTextEdit_deleteLater :: QTextEdit a -> IO ()
qTextEdit_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_deleteLater cobj_x0

foreign import ccall "qtc_QTextEdit_deleteLater" qtc_QTextEdit_deleteLater :: Ptr (TQTextEdit a) -> IO ()

instance QqminimumSizeHint (QTextEdit ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTextEdit_minimumSizeHint_h" qtc_QTextEdit_minimumSizeHint_h :: Ptr (TQTextEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTextEditSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTextEdit ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextEdit_minimumSizeHint_qth_h" qtc_QTextEdit_minimumSizeHint_qth_h :: Ptr (TQTextEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTextEditSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QTextEdit ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextEdit_setViewportMargins" qtc_QTextEdit_setViewportMargins :: Ptr (TQTextEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QTextEditSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QTextEdit ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setupViewport" qtc_QTextEdit_setupViewport :: Ptr (TQTextEdit a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QTextEditSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setupViewport cobj_x0 cobj_x1

instance QqsizeHint (QTextEdit ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_h cobj_x0

foreign import ccall "qtc_QTextEdit_sizeHint_h" qtc_QTextEdit_sizeHint_h :: Ptr (TQTextEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTextEditSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_h cobj_x0

instance QsizeHint (QTextEdit ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTextEdit_sizeHint_qth_h" qtc_QTextEdit_sizeHint_qth_h :: Ptr (TQTextEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTextEditSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QviewportEvent (QTextEdit ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_viewportEvent_h" qtc_QTextEdit_viewportEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QTextEditSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_viewportEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QTextEdit ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_drawFrame" qtc_QTextEdit_drawFrame :: Ptr (TQTextEdit a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QTextEditSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QTextEdit ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_actionEvent_h" qtc_QTextEdit_actionEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTextEditSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTextEdit ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_addAction" qtc_QTextEdit_addAction :: Ptr (TQTextEdit a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTextEditSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTextEdit ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_closeEvent_h" qtc_QTextEdit_closeEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTextEditSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QTextEdit ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_create cobj_x0

foreign import ccall "qtc_QTextEdit_create" qtc_QTextEdit_create :: Ptr (TQTextEdit a) -> IO ()

instance Qcreate (QTextEditSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_create cobj_x0

instance Qcreate (QTextEdit ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_create1" qtc_QTextEdit_create1 :: Ptr (TQTextEdit a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTextEditSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create1 cobj_x0 cobj_x1

instance Qcreate (QTextEdit ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTextEdit_create2" qtc_QTextEdit_create2 :: Ptr (TQTextEdit a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTextEditSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTextEdit ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTextEdit_create3" qtc_QTextEdit_create3 :: Ptr (TQTextEdit a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTextEditSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTextEdit ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy cobj_x0

foreign import ccall "qtc_QTextEdit_destroy" qtc_QTextEdit_destroy :: Ptr (TQTextEdit a) -> IO ()

instance Qdestroy (QTextEditSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy cobj_x0

instance Qdestroy (QTextEdit ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_destroy1" qtc_QTextEdit_destroy1 :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance Qdestroy (QTextEditSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTextEdit ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTextEdit_destroy2" qtc_QTextEdit_destroy2 :: Ptr (TQTextEdit a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTextEditSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTextEdit ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_devType_h cobj_x0

foreign import ccall "qtc_QTextEdit_devType_h" qtc_QTextEdit_devType_h :: Ptr (TQTextEdit a) -> IO CInt

instance QdevType (QTextEditSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_devType_h cobj_x0

instance QenabledChange (QTextEdit ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_enabledChange" qtc_QTextEdit_enabledChange :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QenabledChange (QTextEditSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTextEdit ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_enterEvent_h" qtc_QTextEdit_enterEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTextEditSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTextEdit ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusNextChild cobj_x0

foreign import ccall "qtc_QTextEdit_focusNextChild" qtc_QTextEdit_focusNextChild :: Ptr (TQTextEdit a) -> IO CBool

instance QfocusNextChild (QTextEditSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusNextChild cobj_x0

instance QfocusPreviousChild (QTextEdit ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTextEdit_focusPreviousChild" qtc_QTextEdit_focusPreviousChild :: Ptr (TQTextEdit a) -> IO CBool

instance QfocusPreviousChild (QTextEditSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_focusPreviousChild cobj_x0

instance QfontChange (QTextEdit ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_fontChange" qtc_QTextEdit_fontChange :: Ptr (TQTextEdit a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTextEditSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTextEdit ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextEdit_heightForWidth_h" qtc_QTextEdit_heightForWidth_h :: Ptr (TQTextEdit a) -> CInt -> IO CInt

instance QheightForWidth (QTextEditSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTextEdit ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_hideEvent_h" qtc_QTextEdit_hideEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTextEditSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_hideEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTextEdit ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_languageChange cobj_x0

foreign import ccall "qtc_QTextEdit_languageChange" qtc_QTextEdit_languageChange :: Ptr (TQTextEdit a) -> IO ()

instance QlanguageChange (QTextEditSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_languageChange cobj_x0

instance QleaveEvent (QTextEdit ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_leaveEvent_h" qtc_QTextEdit_leaveEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTextEditSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTextEdit ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextEdit_metric" qtc_QTextEdit_metric :: Ptr (TQTextEdit a) -> CLong -> IO CInt

instance Qmetric (QTextEditSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QTextEdit ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextEdit_move1" qtc_QTextEdit_move1 :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QTextEditSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTextEdit ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTextEdit_move_qth" qtc_QTextEdit_move_qth :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QTextEditSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTextEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTextEdit ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_move" qtc_QTextEdit_move :: Ptr (TQTextEdit a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTextEditSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_move cobj_x0 cobj_x1

instance QmoveEvent (QTextEdit ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_moveEvent_h" qtc_QTextEdit_moveEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTextEditSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTextEdit ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_paintEngine_h cobj_x0

foreign import ccall "qtc_QTextEdit_paintEngine_h" qtc_QTextEdit_paintEngine_h :: Ptr (TQTextEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTextEditSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_paintEngine_h cobj_x0

instance QpaletteChange (QTextEdit ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_paletteChange" qtc_QTextEdit_paletteChange :: Ptr (TQTextEdit a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTextEditSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTextEdit ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_repaint cobj_x0

foreign import ccall "qtc_QTextEdit_repaint" qtc_QTextEdit_repaint :: Ptr (TQTextEdit a) -> IO ()

instance Qrepaint (QTextEditSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_repaint cobj_x0

instance Qrepaint (QTextEdit ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextEdit_repaint2" qtc_QTextEdit_repaint2 :: Ptr (TQTextEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTextEditSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTextEdit ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_repaint1" qtc_QTextEdit_repaint1 :: Ptr (TQTextEdit a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTextEditSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTextEdit ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_resetInputContext cobj_x0

foreign import ccall "qtc_QTextEdit_resetInputContext" qtc_QTextEdit_resetInputContext :: Ptr (TQTextEdit a) -> IO ()

instance QresetInputContext (QTextEditSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_resetInputContext cobj_x0

instance Qresize (QTextEdit ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextEdit_resize1" qtc_QTextEdit_resize1 :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QTextEditSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTextEdit ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_resize" qtc_QTextEdit_resize :: Ptr (TQTextEdit a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTextEditSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_resize cobj_x0 cobj_x1

instance Qresize (QTextEdit ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTextEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTextEdit_resize_qth" qtc_QTextEdit_resize_qth :: Ptr (TQTextEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QTextEditSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTextEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTextEdit ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextEdit_setGeometry1" qtc_QTextEdit_setGeometry1 :: Ptr (TQTextEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTextEditSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTextEdit ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_setGeometry" qtc_QTextEdit_setGeometry :: Ptr (TQTextEdit a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTextEditSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTextEdit ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTextEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTextEdit_setGeometry_qth" qtc_QTextEdit_setGeometry_qth :: Ptr (TQTextEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTextEditSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTextEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTextEdit ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setMouseTracking" qtc_QTextEdit_setMouseTracking :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetMouseTracking (QTextEditSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTextEdit ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_setVisible_h" qtc_QTextEdit_setVisible_h :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QsetVisible (QTextEditSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QTextEdit ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_tabletEvent_h" qtc_QTextEdit_tabletEvent_h :: Ptr (TQTextEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTextEditSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTextEdit ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTextEdit_updateMicroFocus" qtc_QTextEdit_updateMicroFocus :: Ptr (TQTextEdit a) -> IO ()

instance QupdateMicroFocus (QTextEditSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_updateMicroFocus cobj_x0

instance QwindowActivationChange (QTextEdit ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextEdit_windowActivationChange" qtc_QTextEdit_windowActivationChange :: Ptr (TQTextEdit a) -> CBool -> IO ()

instance QwindowActivationChange (QTextEditSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTextEdit ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_childEvent" qtc_QTextEdit_childEvent :: Ptr (TQTextEdit a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextEditSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextEdit ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_connectNotify" qtc_QTextEdit_connectNotify :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QconnectNotify (QTextEditSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextEdit ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextEdit_customEvent" qtc_QTextEdit_customEvent :: Ptr (TQTextEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextEditSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextEdit_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextEdit ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_disconnectNotify" qtc_QTextEdit_disconnectNotify :: Ptr (TQTextEdit a) -> CWString -> IO ()

instance QdisconnectNotify (QTextEditSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTextEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextEdit_eventFilter_h" qtc_QTextEdit_eventFilter_h :: Ptr (TQTextEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextEdit ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextEdit_receivers" qtc_QTextEdit_receivers :: Ptr (TQTextEdit a) -> CWString -> IO CInt

instance Qreceivers (QTextEditSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextEdit_receivers cobj_x0 cstr_x1

instance Qsender (QTextEdit ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sender cobj_x0

foreign import ccall "qtc_QTextEdit_sender" qtc_QTextEdit_sender :: Ptr (TQTextEdit a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextEditSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextEdit_sender cobj_x0

