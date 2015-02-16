{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLineEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLineEdit (
  QqLineEdit(..)
  ,backspace
  ,QcursorBackward(..)
  ,QcursorForward(..)
  ,cursorPosition
  ,cursorPositionAt, qcursorPositionAt
  ,cursorWordBackward
  ,cursorWordForward
  ,del
  ,deselect
  ,displayText
  ,echoMode
  ,hasSelectedText
  ,inputMask
  ,insert
  ,maxLength
  ,setCursorPosition
  ,setEchoMode
  ,setInputMask
  ,setMaxLength
  ,qLineEdit_delete
  ,qLineEdit_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QLineEdit
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QLineEdit ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QLineEdit_userMethod" qtc_QLineEdit_userMethod :: Ptr (TQLineEdit a) -> CInt -> IO ()

instance QuserMethod (QLineEditSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLineEdit_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QLineEdit ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLineEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QLineEdit_userMethodVariant" qtc_QLineEdit_userMethodVariant :: Ptr (TQLineEdit a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QLineEditSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLineEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqLineEdit x1 where
  qLineEdit :: x1 -> IO (QLineEdit ())

instance QqLineEdit (()) where
 qLineEdit ()
  = withQLineEditResult $
    qtc_QLineEdit

foreign import ccall "qtc_QLineEdit" qtc_QLineEdit :: IO (Ptr (TQLineEdit ()))

instance QqLineEdit ((String)) where
 qLineEdit (x1)
  = withQLineEditResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit1 cstr_x1

foreign import ccall "qtc_QLineEdit1" qtc_QLineEdit1 :: CWString -> IO (Ptr (TQLineEdit ()))

instance QqLineEdit ((QWidget t1)) where
 qLineEdit (x1)
  = withQLineEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit2 cobj_x1

foreign import ccall "qtc_QLineEdit2" qtc_QLineEdit2 :: Ptr (TQWidget t1) -> IO (Ptr (TQLineEdit ()))

instance QqLineEdit ((String, QWidget t2)) where
 qLineEdit (x1, x2)
  = withQLineEditResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineEdit3 cstr_x1 cobj_x2

foreign import ccall "qtc_QLineEdit3" qtc_QLineEdit3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQLineEdit ()))

instance Qalignment (QLineEdit a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_alignment cobj_x0

foreign import ccall "qtc_QLineEdit_alignment" qtc_QLineEdit_alignment :: Ptr (TQLineEdit a) -> IO CLong

backspace :: QLineEdit a -> (()) -> IO ()
backspace x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_backspace cobj_x0

foreign import ccall "qtc_QLineEdit_backspace" qtc_QLineEdit_backspace :: Ptr (TQLineEdit a) -> IO ()

instance QchangeEvent (QLineEdit ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_changeEvent_h" qtc_QLineEdit_changeEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QLineEditSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QLineEdit a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_clear cobj_x0

foreign import ccall "qtc_QLineEdit_clear" qtc_QLineEdit_clear :: Ptr (TQLineEdit a) -> IO ()

instance Qcompleter (QLineEdit a) (()) where
 completer x0 ()
  = withQCompleterResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_completer cobj_x0

foreign import ccall "qtc_QLineEdit_completer" qtc_QLineEdit_completer :: Ptr (TQLineEdit a) -> IO (Ptr (TQCompleter ()))

instance QcontextMenuEvent (QLineEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_contextMenuEvent_h" qtc_QLineEdit_contextMenuEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QLineEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcopy (QLineEdit a) (()) (IO ()) where
 copy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_copy cobj_x0

foreign import ccall "qtc_QLineEdit_copy" qtc_QLineEdit_copy :: Ptr (TQLineEdit a) -> IO ()

instance Qcopy_nf (QLineEdit a) (()) (IO ()) where
 copy_nf x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_copy cobj_x0

instance QcreateStandardContextMenu (QLineEdit a) (()) where
 createStandardContextMenu x0 ()
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_createStandardContextMenu cobj_x0

foreign import ccall "qtc_QLineEdit_createStandardContextMenu" qtc_QLineEdit_createStandardContextMenu :: Ptr (TQLineEdit a) -> IO (Ptr (TQMenu ()))

class QcursorBackward x1 where
 cursorBackward :: QLineEdit a -> x1 -> IO ()

instance QcursorBackward ((Bool)) where
 cursorBackward x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorBackward cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_cursorBackward" qtc_QLineEdit_cursorBackward :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QcursorBackward ((Bool, Int)) where
 cursorBackward x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorBackward1 cobj_x0 (toCBool x1) (toCInt x2)

foreign import ccall "qtc_QLineEdit_cursorBackward1" qtc_QLineEdit_cursorBackward1 :: Ptr (TQLineEdit a) -> CBool -> CInt -> IO ()

class QcursorForward x1 where
 cursorForward :: QLineEdit a -> x1 -> IO ()

instance QcursorForward ((Bool)) where
 cursorForward x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorForward cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_cursorForward" qtc_QLineEdit_cursorForward :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QcursorForward ((Bool, Int)) where
 cursorForward x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorForward1 cobj_x0 (toCBool x1) (toCInt x2)

foreign import ccall "qtc_QLineEdit_cursorForward1" qtc_QLineEdit_cursorForward1 :: Ptr (TQLineEdit a) -> CBool -> CInt -> IO ()

cursorPosition :: QLineEdit a -> (()) -> IO (Int)
cursorPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorPosition cobj_x0

foreign import ccall "qtc_QLineEdit_cursorPosition" qtc_QLineEdit_cursorPosition :: Ptr (TQLineEdit a) -> IO CInt

cursorPositionAt :: QLineEdit a -> ((Point)) -> IO (Int)
cursorPositionAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLineEdit_cursorPositionAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QLineEdit_cursorPositionAt_qth" qtc_QLineEdit_cursorPositionAt_qth :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO CInt

qcursorPositionAt :: QLineEdit a -> ((QPoint t1)) -> IO (Int)
qcursorPositionAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_cursorPositionAt cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_cursorPositionAt" qtc_QLineEdit_cursorPositionAt :: Ptr (TQLineEdit a) -> Ptr (TQPoint t1) -> IO CInt

cursorWordBackward :: QLineEdit a -> ((Bool)) -> IO ()
cursorWordBackward x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorWordBackward cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_cursorWordBackward" qtc_QLineEdit_cursorWordBackward :: Ptr (TQLineEdit a) -> CBool -> IO ()

cursorWordForward :: QLineEdit a -> ((Bool)) -> IO ()
cursorWordForward x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cursorWordForward cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_cursorWordForward" qtc_QLineEdit_cursorWordForward :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance Qcut (QLineEdit a) (()) where
 cut x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_cut cobj_x0

foreign import ccall "qtc_QLineEdit_cut" qtc_QLineEdit_cut :: Ptr (TQLineEdit a) -> IO ()

del :: QLineEdit a -> (()) -> IO ()
del x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_del cobj_x0

foreign import ccall "qtc_QLineEdit_del" qtc_QLineEdit_del :: Ptr (TQLineEdit a) -> IO ()

deselect :: QLineEdit a -> (()) -> IO ()
deselect x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_deselect cobj_x0

foreign import ccall "qtc_QLineEdit_deselect" qtc_QLineEdit_deselect :: Ptr (TQLineEdit a) -> IO ()

displayText :: QLineEdit a -> (()) -> IO (String)
displayText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_displayText cobj_x0

foreign import ccall "qtc_QLineEdit_displayText" qtc_QLineEdit_displayText :: Ptr (TQLineEdit a) -> IO (Ptr (TQString ()))

instance QdragEnabled (QLineEdit a) (()) where
 dragEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_dragEnabled cobj_x0

foreign import ccall "qtc_QLineEdit_dragEnabled" qtc_QLineEdit_dragEnabled :: Ptr (TQLineEdit a) -> IO CBool

instance QdragEnterEvent (QLineEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragEnterEvent_h" qtc_QLineEdit_dragEnterEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QLineEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QLineEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragLeaveEvent_h" qtc_QLineEdit_dragLeaveEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QLineEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QLineEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dragMoveEvent_h" qtc_QLineEdit_dragMoveEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QLineEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QLineEdit ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_dropEvent_h" qtc_QLineEdit_dropEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QLineEditSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_dropEvent_h cobj_x0 cobj_x1

echoMode :: QLineEdit a -> (()) -> IO (EchoMode)
echoMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_echoMode cobj_x0

foreign import ccall "qtc_QLineEdit_echoMode" qtc_QLineEdit_echoMode :: Ptr (TQLineEdit a) -> IO CLong

instance Qend (QLineEdit a) ((Bool)) (IO ()) where
 end x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_end cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_end" qtc_QLineEdit_end :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance Qevent (QLineEdit ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_event_h" qtc_QLineEdit_event_h :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QLineEditSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QLineEdit ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_focusInEvent_h" qtc_QLineEdit_focusInEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QLineEditSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QLineEdit ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_focusOutEvent_h" qtc_QLineEdit_focusOutEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QLineEditSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_focusOutEvent_h cobj_x0 cobj_x1

instance QhasAcceptableInput (QLineEdit a) (()) where
 hasAcceptableInput x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_hasAcceptableInput cobj_x0

foreign import ccall "qtc_QLineEdit_hasAcceptableInput" qtc_QLineEdit_hasAcceptableInput :: Ptr (TQLineEdit a) -> IO CBool

instance QhasFrame (QLineEdit a) (()) where
 hasFrame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_hasFrame cobj_x0

foreign import ccall "qtc_QLineEdit_hasFrame" qtc_QLineEdit_hasFrame :: Ptr (TQLineEdit a) -> IO CBool

hasSelectedText :: QLineEdit a -> (()) -> IO (Bool)
hasSelectedText x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_hasSelectedText cobj_x0

foreign import ccall "qtc_QLineEdit_hasSelectedText" qtc_QLineEdit_hasSelectedText :: Ptr (TQLineEdit a) -> IO CBool

instance Qhome (QLineEdit a) ((Bool)) where
 home x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_home cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_home" qtc_QLineEdit_home :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QinitStyleOption (QLineEdit ()) ((QStyleOptionFrame t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_initStyleOption" qtc_QLineEdit_initStyleOption :: Ptr (TQLineEdit a) -> Ptr (TQStyleOptionFrame t1) -> IO ()

instance QinitStyleOption (QLineEditSc a) ((QStyleOptionFrame t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_initStyleOption cobj_x0 cobj_x1

inputMask :: QLineEdit a -> (()) -> IO (String)
inputMask x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_inputMask cobj_x0

foreign import ccall "qtc_QLineEdit_inputMask" qtc_QLineEdit_inputMask :: Ptr (TQLineEdit a) -> IO (Ptr (TQString ()))

instance QinputMethodEvent (QLineEdit ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_inputMethodEvent" qtc_QLineEdit_inputMethodEvent :: Ptr (TQLineEdit a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QLineEditSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QLineEdit ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLineEdit_inputMethodQuery_h" qtc_QLineEdit_inputMethodQuery_h :: Ptr (TQLineEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QLineEditSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

insert :: QLineEdit a -> ((String)) -> IO ()
insert x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_insert cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_insert" qtc_QLineEdit_insert :: Ptr (TQLineEdit a) -> CWString -> IO ()

instance QisModified (QLineEdit a) (()) where
 isModified x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_isModified cobj_x0

foreign import ccall "qtc_QLineEdit_isModified" qtc_QLineEdit_isModified :: Ptr (TQLineEdit a) -> IO CBool

instance QisReadOnly (QLineEdit a) (()) where
 isReadOnly x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_isReadOnly cobj_x0

foreign import ccall "qtc_QLineEdit_isReadOnly" qtc_QLineEdit_isReadOnly :: Ptr (TQLineEdit a) -> IO CBool

instance QisRedoAvailable (QLineEdit a) (()) where
 isRedoAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_isRedoAvailable cobj_x0

foreign import ccall "qtc_QLineEdit_isRedoAvailable" qtc_QLineEdit_isRedoAvailable :: Ptr (TQLineEdit a) -> IO CBool

instance QisUndoAvailable (QLineEdit a) (()) where
 isUndoAvailable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_isUndoAvailable cobj_x0

foreign import ccall "qtc_QLineEdit_isUndoAvailable" qtc_QLineEdit_isUndoAvailable :: Ptr (TQLineEdit a) -> IO CBool

instance QkeyPressEvent (QLineEdit ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_keyPressEvent_h" qtc_QLineEdit_keyPressEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QLineEditSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyPressEvent_h cobj_x0 cobj_x1

maxLength :: QLineEdit a -> (()) -> IO (Int)
maxLength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_maxLength cobj_x0

foreign import ccall "qtc_QLineEdit_maxLength" qtc_QLineEdit_maxLength :: Ptr (TQLineEdit a) -> IO CInt

instance QqminimumSizeHint (QLineEdit ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QLineEdit_minimumSizeHint_h" qtc_QLineEdit_minimumSizeHint_h :: Ptr (TQLineEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QLineEditSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QLineEdit ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLineEdit_minimumSizeHint_qth_h" qtc_QLineEdit_minimumSizeHint_qth_h :: Ptr (TQLineEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QLineEditSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QLineEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseDoubleClickEvent_h" qtc_QLineEdit_mouseDoubleClickEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QLineEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QLineEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseMoveEvent_h" qtc_QLineEdit_mouseMoveEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QLineEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QLineEdit ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mousePressEvent_h" qtc_QLineEdit_mousePressEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QLineEditSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QLineEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_mouseReleaseEvent_h" qtc_QLineEdit_mouseReleaseEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QLineEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QLineEdit ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_paintEvent_h" qtc_QLineEdit_paintEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QLineEditSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paintEvent_h cobj_x0 cobj_x1

instance Qpaste (QLineEdit a) (()) where
 paste x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_paste cobj_x0

foreign import ccall "qtc_QLineEdit_paste" qtc_QLineEdit_paste :: Ptr (TQLineEdit a) -> IO ()

instance Qredo (QLineEdit a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_redo cobj_x0

foreign import ccall "qtc_QLineEdit_redo" qtc_QLineEdit_redo :: Ptr (TQLineEdit a) -> IO ()

instance QselectAll (QLineEdit a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_selectAll cobj_x0

foreign import ccall "qtc_QLineEdit_selectAll" qtc_QLineEdit_selectAll :: Ptr (TQLineEdit a) -> IO ()

instance QselectedText (QLineEdit a) (()) where
 selectedText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_selectedText cobj_x0

foreign import ccall "qtc_QLineEdit_selectedText" qtc_QLineEdit_selectedText :: Ptr (TQLineEdit a) -> IO (Ptr (TQString ()))

instance QselectionStart (QLineEdit a) (()) where
 selectionStart x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_selectionStart cobj_x0

foreign import ccall "qtc_QLineEdit_selectionStart" qtc_QLineEdit_selectionStart :: Ptr (TQLineEdit a) -> IO CInt

instance QsetAlignment (QLineEdit a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QLineEdit_setAlignment" qtc_QLineEdit_setAlignment :: Ptr (TQLineEdit a) -> CLong -> IO ()

instance QsetCompleter (QLineEdit a) ((QCompleter t1)) where
 setCompleter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_setCompleter cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_setCompleter" qtc_QLineEdit_setCompleter :: Ptr (TQLineEdit a) -> Ptr (TQCompleter t1) -> IO ()

setCursorPosition :: QLineEdit a -> ((Int)) -> IO ()
setCursorPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setCursorPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLineEdit_setCursorPosition" qtc_QLineEdit_setCursorPosition :: Ptr (TQLineEdit a) -> CInt -> IO ()

instance QsetDragEnabled (QLineEdit a) ((Bool)) where
 setDragEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setDragEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setDragEnabled" qtc_QLineEdit_setDragEnabled :: Ptr (TQLineEdit a) -> CBool -> IO ()

setEchoMode :: QLineEdit a -> ((EchoMode)) -> IO ()
setEchoMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setEchoMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLineEdit_setEchoMode" qtc_QLineEdit_setEchoMode :: Ptr (TQLineEdit a) -> CLong -> IO ()

instance QsetFrame (QLineEdit a) ((Bool)) where
 setFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setFrame cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setFrame" qtc_QLineEdit_setFrame :: Ptr (TQLineEdit a) -> CBool -> IO ()

setInputMask :: QLineEdit a -> ((String)) -> IO ()
setInputMask x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_setInputMask cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_setInputMask" qtc_QLineEdit_setInputMask :: Ptr (TQLineEdit a) -> CWString -> IO ()

setMaxLength :: QLineEdit a -> ((Int)) -> IO ()
setMaxLength x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setMaxLength cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLineEdit_setMaxLength" qtc_QLineEdit_setMaxLength :: Ptr (TQLineEdit a) -> CInt -> IO ()

instance QsetModified (QLineEdit a) ((Bool)) where
 setModified x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setModified cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setModified" qtc_QLineEdit_setModified :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QsetReadOnly (QLineEdit a) ((Bool)) where
 setReadOnly x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setReadOnly cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setReadOnly" qtc_QLineEdit_setReadOnly :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QsetSelection (QLineEdit a) ((Int, Int)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setSelection cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLineEdit_setSelection" qtc_QLineEdit_setSelection :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO ()

instance QsetText (QLineEdit a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_setText" qtc_QLineEdit_setText :: Ptr (TQLineEdit a) -> CWString -> IO ()

instance QsetValidator (QLineEdit a) ((QValidator t1)) where
 setValidator x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_setValidator cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_setValidator" qtc_QLineEdit_setValidator :: Ptr (TQLineEdit a) -> Ptr (TQValidator t1) -> IO ()

instance QqsizeHint (QLineEdit ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_h cobj_x0

foreign import ccall "qtc_QLineEdit_sizeHint_h" qtc_QLineEdit_sizeHint_h :: Ptr (TQLineEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QLineEditSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_h cobj_x0

instance QsizeHint (QLineEdit ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLineEdit_sizeHint_qth_h" qtc_QLineEdit_sizeHint_qth_h :: Ptr (TQLineEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QLineEditSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qtext (QLineEdit a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_text cobj_x0

foreign import ccall "qtc_QLineEdit_text" qtc_QLineEdit_text :: Ptr (TQLineEdit a) -> IO (Ptr (TQString ()))

instance Qundo (QLineEdit a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_undo cobj_x0

foreign import ccall "qtc_QLineEdit_undo" qtc_QLineEdit_undo :: Ptr (TQLineEdit a) -> IO ()

instance Qvalidator (QLineEdit a) (()) where
 validator x0 ()
  = withQValidatorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_validator cobj_x0

foreign import ccall "qtc_QLineEdit_validator" qtc_QLineEdit_validator :: Ptr (TQLineEdit a) -> IO (Ptr (TQValidator ()))

qLineEdit_delete :: QLineEdit a -> IO ()
qLineEdit_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_delete cobj_x0

foreign import ccall "qtc_QLineEdit_delete" qtc_QLineEdit_delete :: Ptr (TQLineEdit a) -> IO ()

qLineEdit_deleteLater :: QLineEdit a -> IO ()
qLineEdit_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_deleteLater cobj_x0

foreign import ccall "qtc_QLineEdit_deleteLater" qtc_QLineEdit_deleteLater :: Ptr (TQLineEdit a) -> IO ()

instance QactionEvent (QLineEdit ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_actionEvent_h" qtc_QLineEdit_actionEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QLineEditSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QLineEdit ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_addAction" qtc_QLineEdit_addAction :: Ptr (TQLineEdit a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QLineEditSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_addAction cobj_x0 cobj_x1

instance QcloseEvent (QLineEdit ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_closeEvent_h" qtc_QLineEdit_closeEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QLineEditSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QLineEdit ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_create cobj_x0

foreign import ccall "qtc_QLineEdit_create" qtc_QLineEdit_create :: Ptr (TQLineEdit a) -> IO ()

instance Qcreate (QLineEditSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_create cobj_x0

instance Qcreate (QLineEdit ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_create1" qtc_QLineEdit_create1 :: Ptr (TQLineEdit a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QLineEditSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create1 cobj_x0 cobj_x1

instance Qcreate (QLineEdit ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QLineEdit_create2" qtc_QLineEdit_create2 :: Ptr (TQLineEdit a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QLineEditSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QLineEdit ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QLineEdit_create3" qtc_QLineEdit_create3 :: Ptr (TQLineEdit a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QLineEditSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QLineEdit ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy cobj_x0

foreign import ccall "qtc_QLineEdit_destroy" qtc_QLineEdit_destroy :: Ptr (TQLineEdit a) -> IO ()

instance Qdestroy (QLineEditSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy cobj_x0

instance Qdestroy (QLineEdit ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_destroy1" qtc_QLineEdit_destroy1 :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance Qdestroy (QLineEditSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QLineEdit ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QLineEdit_destroy2" qtc_QLineEdit_destroy2 :: Ptr (TQLineEdit a) -> CBool -> CBool -> IO ()

instance Qdestroy (QLineEditSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QLineEdit ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_devType_h cobj_x0

foreign import ccall "qtc_QLineEdit_devType_h" qtc_QLineEdit_devType_h :: Ptr (TQLineEdit a) -> IO CInt

instance QdevType (QLineEditSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_devType_h cobj_x0

instance QenabledChange (QLineEdit ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_enabledChange" qtc_QLineEdit_enabledChange :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QenabledChange (QLineEditSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QLineEdit ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_enterEvent_h" qtc_QLineEdit_enterEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QLineEditSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QLineEdit ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusNextChild cobj_x0

foreign import ccall "qtc_QLineEdit_focusNextChild" qtc_QLineEdit_focusNextChild :: Ptr (TQLineEdit a) -> IO CBool

instance QfocusNextChild (QLineEditSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusNextChild cobj_x0

instance QfocusNextPrevChild (QLineEdit ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_focusNextPrevChild" qtc_QLineEdit_focusNextPrevChild :: Ptr (TQLineEdit a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QLineEditSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QLineEdit ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusPreviousChild cobj_x0

foreign import ccall "qtc_QLineEdit_focusPreviousChild" qtc_QLineEdit_focusPreviousChild :: Ptr (TQLineEdit a) -> IO CBool

instance QfocusPreviousChild (QLineEditSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_focusPreviousChild cobj_x0

instance QfontChange (QLineEdit ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_fontChange" qtc_QLineEdit_fontChange :: Ptr (TQLineEdit a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QLineEditSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QLineEdit ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLineEdit_heightForWidth_h" qtc_QLineEdit_heightForWidth_h :: Ptr (TQLineEdit a) -> CInt -> IO CInt

instance QheightForWidth (QLineEditSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QLineEdit ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_hideEvent_h" qtc_QLineEdit_hideEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QLineEditSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QLineEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_keyReleaseEvent_h" qtc_QLineEdit_keyReleaseEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QLineEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QLineEdit ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_languageChange cobj_x0

foreign import ccall "qtc_QLineEdit_languageChange" qtc_QLineEdit_languageChange :: Ptr (TQLineEdit a) -> IO ()

instance QlanguageChange (QLineEditSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_languageChange cobj_x0

instance QleaveEvent (QLineEdit ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_leaveEvent_h" qtc_QLineEdit_leaveEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QLineEditSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QLineEdit ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLineEdit_metric" qtc_QLineEdit_metric :: Ptr (TQLineEdit a) -> CLong -> IO CInt

instance Qmetric (QLineEditSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QLineEdit ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLineEdit_move1" qtc_QLineEdit_move1 :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QLineEditSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QLineEdit ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLineEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QLineEdit_move_qth" qtc_QLineEdit_move_qth :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QLineEditSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLineEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QLineEdit ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_move cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_move" qtc_QLineEdit_move :: Ptr (TQLineEdit a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QLineEditSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_move cobj_x0 cobj_x1

instance QmoveEvent (QLineEdit ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_moveEvent_h" qtc_QLineEdit_moveEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QLineEditSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QLineEdit ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_paintEngine_h cobj_x0

foreign import ccall "qtc_QLineEdit_paintEngine_h" qtc_QLineEdit_paintEngine_h :: Ptr (TQLineEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QLineEditSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_paintEngine_h cobj_x0

instance QpaletteChange (QLineEdit ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_paletteChange" qtc_QLineEdit_paletteChange :: Ptr (TQLineEdit a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QLineEditSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QLineEdit ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_repaint cobj_x0

foreign import ccall "qtc_QLineEdit_repaint" qtc_QLineEdit_repaint :: Ptr (TQLineEdit a) -> IO ()

instance Qrepaint (QLineEditSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_repaint cobj_x0

instance Qrepaint (QLineEdit ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLineEdit_repaint2" qtc_QLineEdit_repaint2 :: Ptr (TQLineEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QLineEditSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QLineEdit ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_repaint1" qtc_QLineEdit_repaint1 :: Ptr (TQLineEdit a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QLineEditSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QLineEdit ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_resetInputContext cobj_x0

foreign import ccall "qtc_QLineEdit_resetInputContext" qtc_QLineEdit_resetInputContext :: Ptr (TQLineEdit a) -> IO ()

instance QresetInputContext (QLineEditSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_resetInputContext cobj_x0

instance Qresize (QLineEdit ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLineEdit_resize1" qtc_QLineEdit_resize1 :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QLineEditSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QLineEdit ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_resize" qtc_QLineEdit_resize :: Ptr (TQLineEdit a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QLineEditSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resize cobj_x0 cobj_x1

instance Qresize (QLineEdit ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLineEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QLineEdit_resize_qth" qtc_QLineEdit_resize_qth :: Ptr (TQLineEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QLineEditSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLineEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QLineEdit ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_resizeEvent_h" qtc_QLineEdit_resizeEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QLineEditSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QLineEdit ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLineEdit_setGeometry1" qtc_QLineEdit_setGeometry1 :: Ptr (TQLineEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLineEditSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QLineEdit ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_setGeometry" qtc_QLineEdit_setGeometry :: Ptr (TQLineEdit a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QLineEditSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QLineEdit ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLineEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QLineEdit_setGeometry_qth" qtc_QLineEdit_setGeometry_qth :: Ptr (TQLineEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLineEditSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLineEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QLineEdit ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setMouseTracking" qtc_QLineEdit_setMouseTracking :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QsetMouseTracking (QLineEditSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QLineEdit ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_setVisible_h" qtc_QLineEdit_setVisible_h :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QsetVisible (QLineEditSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QLineEdit ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_showEvent_h" qtc_QLineEdit_showEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QLineEditSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QLineEdit ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_tabletEvent_h" qtc_QLineEdit_tabletEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QLineEditSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QLineEdit ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_updateMicroFocus cobj_x0

foreign import ccall "qtc_QLineEdit_updateMicroFocus" qtc_QLineEdit_updateMicroFocus :: Ptr (TQLineEdit a) -> IO ()

instance QupdateMicroFocus (QLineEditSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_updateMicroFocus cobj_x0

instance QwheelEvent (QLineEdit ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_wheelEvent_h" qtc_QLineEdit_wheelEvent_h :: Ptr (TQLineEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QLineEditSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QLineEdit ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLineEdit_windowActivationChange" qtc_QLineEdit_windowActivationChange :: Ptr (TQLineEdit a) -> CBool -> IO ()

instance QwindowActivationChange (QLineEditSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QLineEdit ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_childEvent" qtc_QLineEdit_childEvent :: Ptr (TQLineEdit a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QLineEditSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QLineEdit ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_connectNotify" qtc_QLineEdit_connectNotify :: Ptr (TQLineEdit a) -> CWString -> IO ()

instance QconnectNotify (QLineEditSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QLineEdit ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_customEvent" qtc_QLineEdit_customEvent :: Ptr (TQLineEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QLineEditSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QLineEdit ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_disconnectNotify" qtc_QLineEdit_disconnectNotify :: Ptr (TQLineEdit a) -> CWString -> IO ()

instance QdisconnectNotify (QLineEditSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QLineEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLineEdit_eventFilter_h" qtc_QLineEdit_eventFilter_h :: Ptr (TQLineEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QLineEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLineEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QLineEdit ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QLineEdit_receivers" qtc_QLineEdit_receivers :: Ptr (TQLineEdit a) -> CWString -> IO CInt

instance Qreceivers (QLineEditSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLineEdit_receivers cobj_x0 cstr_x1

instance Qsender (QLineEdit ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sender cobj_x0

foreign import ccall "qtc_QLineEdit_sender" qtc_QLineEdit_sender :: Ptr (TQLineEdit a) -> IO (Ptr (TQObject ()))

instance Qsender (QLineEditSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLineEdit_sender cobj_x0

instance QtimerEvent (QLineEdit ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLineEdit_timerEvent" qtc_QLineEdit_timerEvent :: Ptr (TQLineEdit a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QLineEditSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLineEdit_timerEvent cobj_x0 cobj_x1

