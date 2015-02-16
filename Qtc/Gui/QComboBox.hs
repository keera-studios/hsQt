{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QComboBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:24
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QComboBox (
  QqComboBox(..)
  ,autoCompletion
  ,autoCompletionCaseSensitivity
  ,clearEditText
  ,duplicatesEnabled
  ,QfindData(..)
  ,QfindText(..)
  ,insertPolicy
  ,QitemData(..), QitemData_nf(..)
  ,maxCount
  ,maxVisibleItems
  ,minimumContentsLength
  ,rootModelIndex
  ,setAutoCompletion
  ,setAutoCompletionCaseSensitivity
  ,setDuplicatesEnabled
  ,setEditText
  ,setInsertPolicy
  ,QsetItemData(..)
  ,setMaxCount
  ,setMaxVisibleItems
  ,setMinimumContentsLength
  ,setRootModelIndex
  ,setSizeAdjustPolicy
  ,setView
  ,sizeAdjustPolicy
  ,view
  ,qComboBox_delete
  ,qComboBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QComboBox
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QComboBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QComboBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QComboBox_userMethod" qtc_QComboBox_userMethod :: Ptr (TQComboBox a) -> CInt -> IO ()

instance QuserMethod (QComboBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QComboBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QComboBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QComboBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QComboBox_userMethodVariant" qtc_QComboBox_userMethodVariant :: Ptr (TQComboBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QComboBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QComboBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqComboBox x1 where
  qComboBox :: x1 -> IO (QComboBox ())

instance QqComboBox (()) where
 qComboBox ()
  = withQComboBoxResult $
    qtc_QComboBox

foreign import ccall "qtc_QComboBox" qtc_QComboBox :: IO (Ptr (TQComboBox ()))

instance QqComboBox ((QWidget t1)) where
 qComboBox (x1)
  = withQComboBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox1 cobj_x1

foreign import ccall "qtc_QComboBox1" qtc_QComboBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQComboBox ()))

instance QaddItem (QComboBox a) ((QIcon t1, String)) (IO ()) where
 addItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QComboBox_addItem2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QComboBox_addItem2" qtc_QComboBox_addItem2 :: Ptr (TQComboBox a) -> Ptr (TQIcon t1) -> CWString -> IO ()

instance QaddItem (QComboBox a) ((QIcon t1, String, QVariant t3)) (IO ()) where
 addItem x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QComboBox_addItem3 cobj_x0 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QComboBox_addItem3" qtc_QComboBox_addItem3 :: Ptr (TQComboBox a) -> Ptr (TQIcon t1) -> CWString -> Ptr (TQVariant t3) -> IO ()

instance QaddItem (QComboBox a) ((String)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_addItem cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_addItem" qtc_QComboBox_addItem :: Ptr (TQComboBox a) -> CWString -> IO ()

instance QaddItem (QComboBox a) ((String, QVariant t2)) (IO ()) where
 addItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_addItem1 cobj_x0 cstr_x1 cobj_x2

foreign import ccall "qtc_QComboBox_addItem1" qtc_QComboBox_addItem1 :: Ptr (TQComboBox a) -> CWString -> Ptr (TQVariant t2) -> IO ()

instance QaddItems (QComboBox a) (([String])) where
 addItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QComboBox_addItems cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QComboBox_addItems" qtc_QComboBox_addItems :: Ptr (TQComboBox a) -> CInt -> Ptr (Ptr CWchar) -> IO ()

autoCompletion :: QComboBox a -> (()) -> IO (Bool)
autoCompletion x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_autoCompletion cobj_x0

foreign import ccall "qtc_QComboBox_autoCompletion" qtc_QComboBox_autoCompletion :: Ptr (TQComboBox a) -> IO CBool

autoCompletionCaseSensitivity :: QComboBox a -> (()) -> IO (CaseSensitivity)
autoCompletionCaseSensitivity x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_autoCompletionCaseSensitivity cobj_x0

foreign import ccall "qtc_QComboBox_autoCompletionCaseSensitivity" qtc_QComboBox_autoCompletionCaseSensitivity :: Ptr (TQComboBox a) -> IO CLong

instance QchangeEvent (QComboBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_changeEvent_h" qtc_QComboBox_changeEvent_h :: Ptr (TQComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QComboBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QComboBox a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_clear cobj_x0

foreign import ccall "qtc_QComboBox_clear" qtc_QComboBox_clear :: Ptr (TQComboBox a) -> IO ()

clearEditText :: QComboBox a -> (()) -> IO ()
clearEditText x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_clearEditText cobj_x0

foreign import ccall "qtc_QComboBox_clearEditText" qtc_QComboBox_clearEditText :: Ptr (TQComboBox a) -> IO ()

instance Qcompleter (QComboBox a) (()) where
 completer x0 ()
  = withQCompleterResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_completer cobj_x0

foreign import ccall "qtc_QComboBox_completer" qtc_QComboBox_completer :: Ptr (TQComboBox a) -> IO (Ptr (TQCompleter ()))

instance QcontextMenuEvent (QComboBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_contextMenuEvent_h" qtc_QComboBox_contextMenuEvent_h :: Ptr (TQComboBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QComboBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcount (QComboBox a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_count cobj_x0

foreign import ccall "qtc_QComboBox_count" qtc_QComboBox_count :: Ptr (TQComboBox a) -> IO CInt

instance QcurrentIndex (QComboBox a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_currentIndex cobj_x0

foreign import ccall "qtc_QComboBox_currentIndex" qtc_QComboBox_currentIndex :: Ptr (TQComboBox a) -> IO CInt

instance QcurrentText (QComboBox a) (()) where
 currentText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_currentText cobj_x0

foreign import ccall "qtc_QComboBox_currentText" qtc_QComboBox_currentText :: Ptr (TQComboBox a) -> IO (Ptr (TQString ()))

duplicatesEnabled :: QComboBox a -> (()) -> IO (Bool)
duplicatesEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_duplicatesEnabled cobj_x0

foreign import ccall "qtc_QComboBox_duplicatesEnabled" qtc_QComboBox_duplicatesEnabled :: Ptr (TQComboBox a) -> IO CBool

instance Qevent (QComboBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_event_h" qtc_QComboBox_event_h :: Ptr (TQComboBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QComboBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_event_h cobj_x0 cobj_x1

class QfindData x1 where
 findData :: QComboBox a -> x1 -> IO (Int)

instance QfindData ((QVariant t1)) where
 findData x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_findData cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_findData" qtc_QComboBox_findData :: Ptr (TQComboBox a) -> Ptr (TQVariant t1) -> IO CInt

instance QfindData ((QVariant t1, Int)) where
 findData x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_findData1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QComboBox_findData1" qtc_QComboBox_findData1 :: Ptr (TQComboBox a) -> Ptr (TQVariant t1) -> CInt -> IO CInt

instance QfindData ((QVariant t1, Int, MatchFlags)) where
 findData x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_findData2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QComboBox_findData2" qtc_QComboBox_findData2 :: Ptr (TQComboBox a) -> Ptr (TQVariant t1) -> CInt -> CLong -> IO CInt

class QfindText x1 where
 findText :: QComboBox a -> x1 -> IO (Int)

instance QfindText ((String)) where
 findText x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_findText cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_findText" qtc_QComboBox_findText :: Ptr (TQComboBox a) -> CWString -> IO CInt

instance QfindText ((String, MatchFlags)) where
 findText x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_findText1 cobj_x0 cstr_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QComboBox_findText1" qtc_QComboBox_findText1 :: Ptr (TQComboBox a) -> CWString -> CLong -> IO CInt

instance QfocusInEvent (QComboBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_focusInEvent_h" qtc_QComboBox_focusInEvent_h :: Ptr (TQComboBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QComboBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QComboBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_focusOutEvent_h" qtc_QComboBox_focusOutEvent_h :: Ptr (TQComboBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QComboBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_focusOutEvent_h cobj_x0 cobj_x1

instance QhasFrame (QComboBox a) (()) where
 hasFrame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_hasFrame cobj_x0

foreign import ccall "qtc_QComboBox_hasFrame" qtc_QComboBox_hasFrame :: Ptr (TQComboBox a) -> IO CBool

instance QhideEvent (QComboBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_hideEvent_h" qtc_QComboBox_hideEvent_h :: Ptr (TQComboBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QComboBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_hideEvent_h cobj_x0 cobj_x1

instance QhidePopup (QComboBox ()) (()) where
 hidePopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_hidePopup_h cobj_x0

foreign import ccall "qtc_QComboBox_hidePopup_h" qtc_QComboBox_hidePopup_h :: Ptr (TQComboBox a) -> IO ()

instance QhidePopup (QComboBoxSc a) (()) where
 hidePopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_hidePopup_h cobj_x0

instance QqiconSize (QComboBox a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_iconSize cobj_x0

foreign import ccall "qtc_QComboBox_iconSize" qtc_QComboBox_iconSize :: Ptr (TQComboBox a) -> IO (Ptr (TQSize ()))

instance QiconSize (QComboBox a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QComboBox_iconSize_qth" qtc_QComboBox_iconSize_qth :: Ptr (TQComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QinitStyleOption (QComboBox ()) ((QStyleOptionComboBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_initStyleOption" qtc_QComboBox_initStyleOption :: Ptr (TQComboBox a) -> Ptr (TQStyleOptionComboBox t1) -> IO ()

instance QinitStyleOption (QComboBoxSc a) ((QStyleOptionComboBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_initStyleOption cobj_x0 cobj_x1

instance QinputMethodEvent (QComboBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_inputMethodEvent" qtc_QComboBox_inputMethodEvent :: Ptr (TQComboBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QComboBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QComboBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QComboBox_inputMethodQuery" qtc_QComboBox_inputMethodQuery :: Ptr (TQComboBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QComboBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_inputMethodQuery cobj_x0 (toCLong $ qEnum_toInt x1)

instance QinsertItem (QComboBox a) ((Int, QIcon t2, String)) (IO ()) where
 insertItem x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QComboBox_insertItem2 cobj_x0 (toCInt x1) cobj_x2 cstr_x3

foreign import ccall "qtc_QComboBox_insertItem2" qtc_QComboBox_insertItem2 :: Ptr (TQComboBox a) -> CInt -> Ptr (TQIcon t2) -> CWString -> IO ()

instance QinsertItem (QComboBox a) ((Int, QIcon t2, String, QVariant t4)) (IO ()) where
 insertItem x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QComboBox_insertItem3 cobj_x0 (toCInt x1) cobj_x2 cstr_x3 cobj_x4

foreign import ccall "qtc_QComboBox_insertItem3" qtc_QComboBox_insertItem3 :: Ptr (TQComboBox a) -> CInt -> Ptr (TQIcon t2) -> CWString -> Ptr (TQVariant t4) -> IO ()

instance QinsertItem (QComboBox a) ((Int, String)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QComboBox_insertItem cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QComboBox_insertItem" qtc_QComboBox_insertItem :: Ptr (TQComboBox a) -> CInt -> CWString -> IO ()

instance QinsertItem (QComboBox a) ((Int, String, QVariant t3)) (IO ()) where
 insertItem x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QComboBox_insertItem1 cobj_x0 (toCInt x1) cstr_x2 cobj_x3

foreign import ccall "qtc_QComboBox_insertItem1" qtc_QComboBox_insertItem1 :: Ptr (TQComboBox a) -> CInt -> CWString -> Ptr (TQVariant t3) -> IO ()

instance QinsertItems (QComboBox a) ((Int, [String])) where
 insertItems x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QComboBox_insertItems cobj_x0 (toCInt x1) cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QComboBox_insertItems" qtc_QComboBox_insertItems :: Ptr (TQComboBox a) -> CInt -> CInt -> Ptr (Ptr CWchar) -> IO ()

insertPolicy :: QComboBox a -> (()) -> IO (InsertPolicy)
insertPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_insertPolicy cobj_x0

foreign import ccall "qtc_QComboBox_insertPolicy" qtc_QComboBox_insertPolicy :: Ptr (TQComboBox a) -> IO CLong

instance QisEditable (QComboBox a) (()) where
 isEditable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_isEditable cobj_x0

foreign import ccall "qtc_QComboBox_isEditable" qtc_QComboBox_isEditable :: Ptr (TQComboBox a) -> IO CBool

class QitemData x0 x1 where
 itemData :: x0 -> x1 -> IO (QVariant ())

class QitemData_nf x0 x1 where
 itemData_nf :: x0 -> x1 -> IO (QVariant ())

instance QitemData (QComboBox ()) ((Int)) where
 itemData x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_itemData" qtc_QComboBox_itemData :: Ptr (TQComboBox a) -> CInt -> IO (Ptr (TQVariant ()))

instance QitemData (QComboBoxSc a) ((Int)) where
 itemData x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData cobj_x0 (toCInt x1)

instance QitemData_nf (QComboBox ()) ((Int)) where
 itemData_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData cobj_x0 (toCInt x1)

instance QitemData_nf (QComboBoxSc a) ((Int)) where
 itemData_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData cobj_x0 (toCInt x1)

instance QitemData (QComboBox ()) ((Int, Int)) where
 itemData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QComboBox_itemData1" qtc_QComboBox_itemData1 :: Ptr (TQComboBox a) -> CInt -> CInt -> IO (Ptr (TQVariant ()))

instance QitemData (QComboBoxSc a) ((Int, Int)) where
 itemData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData1 cobj_x0 (toCInt x1) (toCInt x2)

instance QitemData_nf (QComboBox ()) ((Int, Int)) where
 itemData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData1 cobj_x0 (toCInt x1) (toCInt x2)

instance QitemData_nf (QComboBoxSc a) ((Int, Int)) where
 itemData_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemData1 cobj_x0 (toCInt x1) (toCInt x2)

instance QitemDelegate (QComboBox a) (()) where
 itemDelegate x0 ()
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemDelegate cobj_x0

foreign import ccall "qtc_QComboBox_itemDelegate" qtc_QComboBox_itemDelegate :: Ptr (TQComboBox a) -> IO (Ptr (TQAbstractItemDelegate ()))

instance QitemIcon (QComboBox a) ((Int)) where
 itemIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemIcon cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_itemIcon" qtc_QComboBox_itemIcon :: Ptr (TQComboBox a) -> CInt -> IO (Ptr (TQIcon ()))

instance QitemText (QComboBox a) ((Int)) where
 itemText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_itemText cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_itemText" qtc_QComboBox_itemText :: Ptr (TQComboBox a) -> CInt -> IO (Ptr (TQString ()))

instance QkeyPressEvent (QComboBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_keyPressEvent_h" qtc_QComboBox_keyPressEvent_h :: Ptr (TQComboBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QComboBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QComboBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_keyReleaseEvent_h" qtc_QComboBox_keyReleaseEvent_h :: Ptr (TQComboBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QComboBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QComboBox a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_lineEdit cobj_x0

foreign import ccall "qtc_QComboBox_lineEdit" qtc_QComboBox_lineEdit :: Ptr (TQComboBox a) -> IO (Ptr (TQLineEdit ()))

maxCount :: QComboBox a -> (()) -> IO (Int)
maxCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_maxCount cobj_x0

foreign import ccall "qtc_QComboBox_maxCount" qtc_QComboBox_maxCount :: Ptr (TQComboBox a) -> IO CInt

maxVisibleItems :: QComboBox a -> (()) -> IO (Int)
maxVisibleItems x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_maxVisibleItems cobj_x0

foreign import ccall "qtc_QComboBox_maxVisibleItems" qtc_QComboBox_maxVisibleItems :: Ptr (TQComboBox a) -> IO CInt

minimumContentsLength :: QComboBox a -> (()) -> IO (Int)
minimumContentsLength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_minimumContentsLength cobj_x0

foreign import ccall "qtc_QComboBox_minimumContentsLength" qtc_QComboBox_minimumContentsLength :: Ptr (TQComboBox a) -> IO CInt

instance QqminimumSizeHint (QComboBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QComboBox_minimumSizeHint_h" qtc_QComboBox_minimumSizeHint_h :: Ptr (TQComboBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QComboBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QComboBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QComboBox_minimumSizeHint_qth_h" qtc_QComboBox_minimumSizeHint_qth_h :: Ptr (TQComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QComboBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qmodel (QComboBox a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_model cobj_x0

foreign import ccall "qtc_QComboBox_model" qtc_QComboBox_model :: Ptr (TQComboBox a) -> IO (Ptr (TQAbstractItemModel ()))

instance QmodelColumn (QComboBox a) (()) where
 modelColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_modelColumn cobj_x0

foreign import ccall "qtc_QComboBox_modelColumn" qtc_QComboBox_modelColumn :: Ptr (TQComboBox a) -> IO CInt

instance QmousePressEvent (QComboBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_mousePressEvent_h" qtc_QComboBox_mousePressEvent_h :: Ptr (TQComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QComboBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QComboBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_mouseReleaseEvent_h" qtc_QComboBox_mouseReleaseEvent_h :: Ptr (TQComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QComboBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QComboBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_paintEvent_h" qtc_QComboBox_paintEvent_h :: Ptr (TQComboBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QComboBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_paintEvent_h cobj_x0 cobj_x1

instance QremoveItem (QComboBox a) ((Int)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_removeItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_removeItem" qtc_QComboBox_removeItem :: Ptr (TQComboBox a) -> CInt -> IO ()

instance QresizeEvent (QComboBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_resizeEvent_h" qtc_QComboBox_resizeEvent_h :: Ptr (TQComboBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QComboBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_resizeEvent_h cobj_x0 cobj_x1

rootModelIndex :: QComboBox a -> (()) -> IO (QModelIndex ())
rootModelIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_rootModelIndex cobj_x0

foreign import ccall "qtc_QComboBox_rootModelIndex" qtc_QComboBox_rootModelIndex :: Ptr (TQComboBox a) -> IO (Ptr (TQModelIndex ()))

setAutoCompletion :: QComboBox a -> ((Bool)) -> IO ()
setAutoCompletion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setAutoCompletion cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setAutoCompletion" qtc_QComboBox_setAutoCompletion :: Ptr (TQComboBox a) -> CBool -> IO ()

setAutoCompletionCaseSensitivity :: QComboBox a -> ((CaseSensitivity)) -> IO ()
setAutoCompletionCaseSensitivity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setAutoCompletionCaseSensitivity cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QComboBox_setAutoCompletionCaseSensitivity" qtc_QComboBox_setAutoCompletionCaseSensitivity :: Ptr (TQComboBox a) -> CLong -> IO ()

instance QsetCompleter (QComboBox a) ((QCompleter t1)) where
 setCompleter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setCompleter cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setCompleter" qtc_QComboBox_setCompleter :: Ptr (TQComboBox a) -> Ptr (TQCompleter t1) -> IO ()

instance QsetCurrentIndex (QComboBox a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_setCurrentIndex" qtc_QComboBox_setCurrentIndex :: Ptr (TQComboBox a) -> CInt -> IO ()

setDuplicatesEnabled :: QComboBox a -> ((Bool)) -> IO ()
setDuplicatesEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setDuplicatesEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setDuplicatesEnabled" qtc_QComboBox_setDuplicatesEnabled :: Ptr (TQComboBox a) -> CBool -> IO ()

setEditText :: QComboBox a -> ((String)) -> IO ()
setEditText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_setEditText cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_setEditText" qtc_QComboBox_setEditText :: Ptr (TQComboBox a) -> CWString -> IO ()

instance QsetEditable (QComboBox a) ((Bool)) where
 setEditable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setEditable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setEditable" qtc_QComboBox_setEditable :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QsetFrame (QComboBox a) ((Bool)) where
 setFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setFrame cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setFrame" qtc_QComboBox_setFrame :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QqsetIconSize (QComboBox a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setIconSize" qtc_QComboBox_setIconSize :: Ptr (TQComboBox a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QComboBox a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QComboBox_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QComboBox_setIconSize_qth" qtc_QComboBox_setIconSize_qth :: Ptr (TQComboBox a) -> CInt -> CInt -> IO ()

setInsertPolicy :: QComboBox a -> ((InsertPolicy)) -> IO ()
setInsertPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setInsertPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QComboBox_setInsertPolicy" qtc_QComboBox_setInsertPolicy :: Ptr (TQComboBox a) -> CLong -> IO ()

class QsetItemData x1 where
 setItemData :: QComboBox a -> x1 -> IO ()

instance QsetItemData ((Int, QVariant t2)) where
 setItemData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_setItemData cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QComboBox_setItemData" qtc_QComboBox_setItemData :: Ptr (TQComboBox a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetItemData ((Int, QVariant t2, Int)) where
 setItemData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_setItemData1 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3)

foreign import ccall "qtc_QComboBox_setItemData1" qtc_QComboBox_setItemData1 :: Ptr (TQComboBox a) -> CInt -> Ptr (TQVariant t2) -> CInt -> IO ()

instance QsetItemDelegate (QComboBox a) ((QAbstractItemDelegate t1)) where
 setItemDelegate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setItemDelegate cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setItemDelegate" qtc_QComboBox_setItemDelegate :: Ptr (TQComboBox a) -> Ptr (TQAbstractItemDelegate t1) -> IO ()

instance QsetItemIcon (QComboBox a) ((Int, QIcon t2)) where
 setItemIcon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_setItemIcon cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QComboBox_setItemIcon" qtc_QComboBox_setItemIcon :: Ptr (TQComboBox a) -> CInt -> Ptr (TQIcon t2) -> IO ()

instance QsetItemText (QComboBox a) ((Int, String)) where
 setItemText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QComboBox_setItemText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QComboBox_setItemText" qtc_QComboBox_setItemText :: Ptr (TQComboBox a) -> CInt -> CWString -> IO ()

instance QsetLineEdit (QComboBox a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setLineEdit" qtc_QComboBox_setLineEdit :: Ptr (TQComboBox a) -> Ptr (TQLineEdit t1) -> IO ()

setMaxCount :: QComboBox a -> ((Int)) -> IO ()
setMaxCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setMaxCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_setMaxCount" qtc_QComboBox_setMaxCount :: Ptr (TQComboBox a) -> CInt -> IO ()

setMaxVisibleItems :: QComboBox a -> ((Int)) -> IO ()
setMaxVisibleItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setMaxVisibleItems cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_setMaxVisibleItems" qtc_QComboBox_setMaxVisibleItems :: Ptr (TQComboBox a) -> CInt -> IO ()

setMinimumContentsLength :: QComboBox a -> ((Int)) -> IO ()
setMinimumContentsLength x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setMinimumContentsLength cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_setMinimumContentsLength" qtc_QComboBox_setMinimumContentsLength :: Ptr (TQComboBox a) -> CInt -> IO ()

instance QsetModel (QComboBox a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setModel" qtc_QComboBox_setModel :: Ptr (TQComboBox a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModelColumn (QComboBox a) ((Int)) where
 setModelColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setModelColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_setModelColumn" qtc_QComboBox_setModelColumn :: Ptr (TQComboBox a) -> CInt -> IO ()

setRootModelIndex :: QComboBox a -> ((QModelIndex t1)) -> IO ()
setRootModelIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setRootModelIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setRootModelIndex" qtc_QComboBox_setRootModelIndex :: Ptr (TQComboBox a) -> Ptr (TQModelIndex t1) -> IO ()

setSizeAdjustPolicy :: QComboBox a -> ((SizeAdjustPolicy)) -> IO ()
setSizeAdjustPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setSizeAdjustPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QComboBox_setSizeAdjustPolicy" qtc_QComboBox_setSizeAdjustPolicy :: Ptr (TQComboBox a) -> CLong -> IO ()

instance QsetValidator (QComboBox a) ((QValidator t1)) where
 setValidator x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setValidator cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setValidator" qtc_QComboBox_setValidator :: Ptr (TQComboBox a) -> Ptr (TQValidator t1) -> IO ()

setView :: QComboBox a -> ((QAbstractItemView t1)) -> IO ()
setView x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setView cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setView" qtc_QComboBox_setView :: Ptr (TQComboBox a) -> Ptr (TQAbstractItemView t1) -> IO ()

instance QshowEvent (QComboBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_showEvent_h" qtc_QComboBox_showEvent_h :: Ptr (TQComboBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QComboBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_showEvent_h cobj_x0 cobj_x1

instance QshowPopup (QComboBox ()) (()) where
 showPopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_showPopup_h cobj_x0

foreign import ccall "qtc_QComboBox_showPopup_h" qtc_QComboBox_showPopup_h :: Ptr (TQComboBox a) -> IO ()

instance QshowPopup (QComboBoxSc a) (()) where
 showPopup x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_showPopup_h cobj_x0

sizeAdjustPolicy :: QComboBox a -> (()) -> IO (SizeAdjustPolicy)
sizeAdjustPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sizeAdjustPolicy cobj_x0

foreign import ccall "qtc_QComboBox_sizeAdjustPolicy" qtc_QComboBox_sizeAdjustPolicy :: Ptr (TQComboBox a) -> IO CLong

instance QqsizeHint (QComboBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QComboBox_sizeHint_h" qtc_QComboBox_sizeHint_h :: Ptr (TQComboBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QComboBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sizeHint_h cobj_x0

instance QsizeHint (QComboBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QComboBox_sizeHint_qth_h" qtc_QComboBox_sizeHint_qth_h :: Ptr (TQComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QComboBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qvalidator (QComboBox a) (()) where
 validator x0 ()
  = withQValidatorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_validator cobj_x0

foreign import ccall "qtc_QComboBox_validator" qtc_QComboBox_validator :: Ptr (TQComboBox a) -> IO (Ptr (TQValidator ()))

view :: QComboBox a -> (()) -> IO (QAbstractItemView ())
view x0 ()
  = withQAbstractItemViewResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_view cobj_x0

foreign import ccall "qtc_QComboBox_view" qtc_QComboBox_view :: Ptr (TQComboBox a) -> IO (Ptr (TQAbstractItemView ()))

instance QwheelEvent (QComboBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_wheelEvent_h" qtc_QComboBox_wheelEvent_h :: Ptr (TQComboBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QComboBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_wheelEvent_h cobj_x0 cobj_x1

qComboBox_delete :: QComboBox a -> IO ()
qComboBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_delete cobj_x0

foreign import ccall "qtc_QComboBox_delete" qtc_QComboBox_delete :: Ptr (TQComboBox a) -> IO ()

qComboBox_deleteLater :: QComboBox a -> IO ()
qComboBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_deleteLater cobj_x0

foreign import ccall "qtc_QComboBox_deleteLater" qtc_QComboBox_deleteLater :: Ptr (TQComboBox a) -> IO ()

instance QactionEvent (QComboBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_actionEvent_h" qtc_QComboBox_actionEvent_h :: Ptr (TQComboBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QComboBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QComboBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_addAction" qtc_QComboBox_addAction :: Ptr (TQComboBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QComboBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QComboBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_closeEvent_h" qtc_QComboBox_closeEvent_h :: Ptr (TQComboBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QComboBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QComboBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_create cobj_x0

foreign import ccall "qtc_QComboBox_create" qtc_QComboBox_create :: Ptr (TQComboBox a) -> IO ()

instance Qcreate (QComboBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_create cobj_x0

instance Qcreate (QComboBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_create1" qtc_QComboBox_create1 :: Ptr (TQComboBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QComboBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create1 cobj_x0 cobj_x1

instance Qcreate (QComboBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QComboBox_create2" qtc_QComboBox_create2 :: Ptr (TQComboBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QComboBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QComboBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QComboBox_create3" qtc_QComboBox_create3 :: Ptr (TQComboBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QComboBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QComboBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy cobj_x0

foreign import ccall "qtc_QComboBox_destroy" qtc_QComboBox_destroy :: Ptr (TQComboBox a) -> IO ()

instance Qdestroy (QComboBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy cobj_x0

instance Qdestroy (QComboBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_destroy1" qtc_QComboBox_destroy1 :: Ptr (TQComboBox a) -> CBool -> IO ()

instance Qdestroy (QComboBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QComboBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QComboBox_destroy2" qtc_QComboBox_destroy2 :: Ptr (TQComboBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QComboBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QComboBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_devType_h cobj_x0

foreign import ccall "qtc_QComboBox_devType_h" qtc_QComboBox_devType_h :: Ptr (TQComboBox a) -> IO CInt

instance QdevType (QComboBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_devType_h cobj_x0

instance QdragEnterEvent (QComboBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_dragEnterEvent_h" qtc_QComboBox_dragEnterEvent_h :: Ptr (TQComboBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QComboBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QComboBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_dragLeaveEvent_h" qtc_QComboBox_dragLeaveEvent_h :: Ptr (TQComboBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QComboBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QComboBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_dragMoveEvent_h" qtc_QComboBox_dragMoveEvent_h :: Ptr (TQComboBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QComboBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QComboBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_dropEvent_h" qtc_QComboBox_dropEvent_h :: Ptr (TQComboBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QComboBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QComboBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_enabledChange" qtc_QComboBox_enabledChange :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QenabledChange (QComboBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QComboBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_enterEvent_h" qtc_QComboBox_enterEvent_h :: Ptr (TQComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QComboBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QComboBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusNextChild cobj_x0

foreign import ccall "qtc_QComboBox_focusNextChild" qtc_QComboBox_focusNextChild :: Ptr (TQComboBox a) -> IO CBool

instance QfocusNextChild (QComboBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QComboBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_focusNextPrevChild" qtc_QComboBox_focusNextPrevChild :: Ptr (TQComboBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QComboBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusPreviousChild (QComboBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QComboBox_focusPreviousChild" qtc_QComboBox_focusPreviousChild :: Ptr (TQComboBox a) -> IO CBool

instance QfocusPreviousChild (QComboBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_focusPreviousChild cobj_x0

instance QfontChange (QComboBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_fontChange" qtc_QComboBox_fontChange :: Ptr (TQComboBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QComboBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QComboBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QComboBox_heightForWidth_h" qtc_QComboBox_heightForWidth_h :: Ptr (TQComboBox a) -> CInt -> IO CInt

instance QheightForWidth (QComboBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QlanguageChange (QComboBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_languageChange cobj_x0

foreign import ccall "qtc_QComboBox_languageChange" qtc_QComboBox_languageChange :: Ptr (TQComboBox a) -> IO ()

instance QlanguageChange (QComboBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_languageChange cobj_x0

instance QleaveEvent (QComboBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_leaveEvent_h" qtc_QComboBox_leaveEvent_h :: Ptr (TQComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QComboBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QComboBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QComboBox_metric" qtc_QComboBox_metric :: Ptr (TQComboBox a) -> CLong -> IO CInt

instance Qmetric (QComboBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QComboBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_mouseDoubleClickEvent_h" qtc_QComboBox_mouseDoubleClickEvent_h :: Ptr (TQComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QComboBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QComboBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_mouseMoveEvent_h" qtc_QComboBox_mouseMoveEvent_h :: Ptr (TQComboBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QComboBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance Qmove (QComboBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QComboBox_move1" qtc_QComboBox_move1 :: Ptr (TQComboBox a) -> CInt -> CInt -> IO ()

instance Qmove (QComboBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QComboBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QComboBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QComboBox_move_qth" qtc_QComboBox_move_qth :: Ptr (TQComboBox a) -> CInt -> CInt -> IO ()

instance Qmove (QComboBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QComboBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QComboBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_move" qtc_QComboBox_move :: Ptr (TQComboBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QComboBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_move cobj_x0 cobj_x1

instance QmoveEvent (QComboBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_moveEvent_h" qtc_QComboBox_moveEvent_h :: Ptr (TQComboBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QComboBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QComboBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QComboBox_paintEngine_h" qtc_QComboBox_paintEngine_h :: Ptr (TQComboBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QComboBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_paintEngine_h cobj_x0

instance QpaletteChange (QComboBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_paletteChange" qtc_QComboBox_paletteChange :: Ptr (TQComboBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QComboBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QComboBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_repaint cobj_x0

foreign import ccall "qtc_QComboBox_repaint" qtc_QComboBox_repaint :: Ptr (TQComboBox a) -> IO ()

instance Qrepaint (QComboBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_repaint cobj_x0

instance Qrepaint (QComboBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QComboBox_repaint2" qtc_QComboBox_repaint2 :: Ptr (TQComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QComboBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QComboBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_repaint1" qtc_QComboBox_repaint1 :: Ptr (TQComboBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QComboBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QComboBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_resetInputContext cobj_x0

foreign import ccall "qtc_QComboBox_resetInputContext" qtc_QComboBox_resetInputContext :: Ptr (TQComboBox a) -> IO ()

instance QresetInputContext (QComboBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_resetInputContext cobj_x0

instance Qresize (QComboBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QComboBox_resize1" qtc_QComboBox_resize1 :: Ptr (TQComboBox a) -> CInt -> CInt -> IO ()

instance Qresize (QComboBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QComboBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_resize" qtc_QComboBox_resize :: Ptr (TQComboBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QComboBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_resize cobj_x0 cobj_x1

instance Qresize (QComboBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QComboBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QComboBox_resize_qth" qtc_QComboBox_resize_qth :: Ptr (TQComboBox a) -> CInt -> CInt -> IO ()

instance Qresize (QComboBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QComboBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QComboBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QComboBox_setGeometry1" qtc_QComboBox_setGeometry1 :: Ptr (TQComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QComboBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QComboBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_setGeometry" qtc_QComboBox_setGeometry :: Ptr (TQComboBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QComboBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QComboBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QComboBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QComboBox_setGeometry_qth" qtc_QComboBox_setGeometry_qth :: Ptr (TQComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QComboBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QComboBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QComboBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setMouseTracking" qtc_QComboBox_setMouseTracking :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QsetMouseTracking (QComboBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QComboBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_setVisible_h" qtc_QComboBox_setVisible_h :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QsetVisible (QComboBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QComboBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_tabletEvent_h" qtc_QComboBox_tabletEvent_h :: Ptr (TQComboBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QComboBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QComboBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QComboBox_updateMicroFocus" qtc_QComboBox_updateMicroFocus :: Ptr (TQComboBox a) -> IO ()

instance QupdateMicroFocus (QComboBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_updateMicroFocus cobj_x0

instance QwindowActivationChange (QComboBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QComboBox_windowActivationChange" qtc_QComboBox_windowActivationChange :: Ptr (TQComboBox a) -> CBool -> IO ()

instance QwindowActivationChange (QComboBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QComboBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_childEvent" qtc_QComboBox_childEvent :: Ptr (TQComboBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QComboBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QComboBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_connectNotify" qtc_QComboBox_connectNotify :: Ptr (TQComboBox a) -> CWString -> IO ()

instance QconnectNotify (QComboBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QComboBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_customEvent" qtc_QComboBox_customEvent :: Ptr (TQComboBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QComboBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QComboBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_disconnectNotify" qtc_QComboBox_disconnectNotify :: Ptr (TQComboBox a) -> CWString -> IO ()

instance QdisconnectNotify (QComboBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QComboBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QComboBox_eventFilter_h" qtc_QComboBox_eventFilter_h :: Ptr (TQComboBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QComboBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QComboBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QComboBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QComboBox_receivers" qtc_QComboBox_receivers :: Ptr (TQComboBox a) -> CWString -> IO CInt

instance Qreceivers (QComboBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QComboBox_receivers cobj_x0 cstr_x1

instance Qsender (QComboBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sender cobj_x0

foreign import ccall "qtc_QComboBox_sender" qtc_QComboBox_sender :: Ptr (TQComboBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QComboBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QComboBox_sender cobj_x0

instance QtimerEvent (QComboBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QComboBox_timerEvent" qtc_QComboBox_timerEvent :: Ptr (TQComboBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QComboBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QComboBox_timerEvent cobj_x0 cobj_x1

