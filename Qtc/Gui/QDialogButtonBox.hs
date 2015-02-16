{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDialogButtonBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDialogButtonBox (
  QqDialogButtonBox(..)
  ,buttonRole
  ,centerButtons
  ,setCenterButtons
  ,qDialogButtonBox_delete
  ,qDialogButtonBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QDialogButtonBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDialogButtonBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDialogButtonBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDialogButtonBox_userMethod" qtc_QDialogButtonBox_userMethod :: Ptr (TQDialogButtonBox a) -> CInt -> IO ()

instance QuserMethod (QDialogButtonBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDialogButtonBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDialogButtonBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDialogButtonBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDialogButtonBox_userMethodVariant" qtc_QDialogButtonBox_userMethodVariant :: Ptr (TQDialogButtonBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDialogButtonBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDialogButtonBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDialogButtonBox x1 where
  qDialogButtonBox :: x1 -> IO (QDialogButtonBox ())

instance QqDialogButtonBox (()) where
 qDialogButtonBox ()
  = withQDialogButtonBoxResult $
    qtc_QDialogButtonBox

foreign import ccall "qtc_QDialogButtonBox" qtc_QDialogButtonBox :: IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QDialogButtonBoxStandardButtons)) where
 qDialogButtonBox (x1)
  = withQDialogButtonBoxResult $
    qtc_QDialogButtonBox1 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDialogButtonBox1" qtc_QDialogButtonBox1 :: CLong -> IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QtOrientation)) where
 qDialogButtonBox (x1)
  = withQDialogButtonBoxResult $
    qtc_QDialogButtonBox2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox2" qtc_QDialogButtonBox2 :: CLong -> IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QWidget t1)) where
 qDialogButtonBox (x1)
  = withQDialogButtonBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox3 cobj_x1

foreign import ccall "qtc_QDialogButtonBox3" qtc_QDialogButtonBox3 :: Ptr (TQWidget t1) -> IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QtOrientation, QWidget t2)) where
 qDialogButtonBox (x1, x2)
  = withQDialogButtonBoxResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDialogButtonBox4 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QDialogButtonBox4" qtc_QDialogButtonBox4 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QDialogButtonBoxStandardButtons, QtOrientation)) where
 qDialogButtonBox (x1, x2)
  = withQDialogButtonBoxResult $
    qtc_QDialogButtonBox5 (toCLong $ qFlags_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDialogButtonBox5" qtc_QDialogButtonBox5 :: CLong -> CLong -> IO (Ptr (TQDialogButtonBox ()))

instance QqDialogButtonBox ((QDialogButtonBoxStandardButtons, QtOrientation, QWidget t3)) where
 qDialogButtonBox (x1, x2, x3)
  = withQDialogButtonBoxResult $
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDialogButtonBox6 (toCLong $ qFlags_toInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QDialogButtonBox6" qtc_QDialogButtonBox6 :: CLong -> CLong -> Ptr (TQWidget t3) -> IO (Ptr (TQDialogButtonBox ()))

instance QaddButton (QDialogButtonBox a) ((QAbstractButton t1, QDialogButtonBoxButtonRole)) (IO ()) where
 addButton x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_addButton1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDialogButtonBox_addButton1" qtc_QDialogButtonBox_addButton1 :: Ptr (TQDialogButtonBox a) -> Ptr (TQAbstractButton t1) -> CLong -> IO ()

instance QaddButton (QDialogButtonBox a) ((QDialogButtonBoxStandardButton)) (IO (QPushButton ())) where
 addButton x0 (x1)
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_addButton cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_addButton" qtc_QDialogButtonBox_addButton :: Ptr (TQDialogButtonBox a) -> CLong -> IO (Ptr (TQPushButton ()))

instance QaddButton (QDialogButtonBox a) ((String, QDialogButtonBoxButtonRole)) (IO (QPushButton ())) where
 addButton x0 (x1, x2)
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_addButton2 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QDialogButtonBox_addButton2" qtc_QDialogButtonBox_addButton2 :: Ptr (TQDialogButtonBox a) -> CWString -> CLong -> IO (Ptr (TQPushButton ()))

instance Qbutton (QDialogButtonBox a) ((QDialogButtonBoxStandardButton)) (IO (QPushButton ())) where
 button x0 (x1)
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_button cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_button" qtc_QDialogButtonBox_button :: Ptr (TQDialogButtonBox a) -> CLong -> IO (Ptr (TQPushButton ()))

buttonRole :: QDialogButtonBox a -> ((QAbstractButton t1)) -> IO (QDialogButtonBoxButtonRole)
buttonRole x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_buttonRole cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_buttonRole" qtc_QDialogButtonBox_buttonRole :: Ptr (TQDialogButtonBox a) -> Ptr (TQAbstractButton t1) -> IO CLong

instance Qbuttons (QDialogButtonBox a) (()) (IO ([QAbstractButton ()])) where
 buttons x0 ()
  = withQListQAbstractButtonResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_buttons cobj_x0 arr

foreign import ccall "qtc_QDialogButtonBox_buttons" qtc_QDialogButtonBox_buttons :: Ptr (TQDialogButtonBox a) -> Ptr (Ptr (TQAbstractButton ())) -> IO CInt

centerButtons :: QDialogButtonBox a -> (()) -> IO (Bool)
centerButtons x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_centerButtons cobj_x0

foreign import ccall "qtc_QDialogButtonBox_centerButtons" qtc_QDialogButtonBox_centerButtons :: Ptr (TQDialogButtonBox a) -> IO CBool

instance QchangeEvent (QDialogButtonBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_changeEvent_h" qtc_QDialogButtonBox_changeEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDialogButtonBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QDialogButtonBox a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_clear cobj_x0

foreign import ccall "qtc_QDialogButtonBox_clear" qtc_QDialogButtonBox_clear :: Ptr (TQDialogButtonBox a) -> IO ()

instance Qevent (QDialogButtonBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_event_h" qtc_QDialogButtonBox_event_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDialogButtonBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_event_h cobj_x0 cobj_x1

instance Qorientation (QDialogButtonBox a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_orientation cobj_x0

foreign import ccall "qtc_QDialogButtonBox_orientation" qtc_QDialogButtonBox_orientation :: Ptr (TQDialogButtonBox a) -> IO CLong

instance QremoveButton (QDialogButtonBox a) ((QAbstractButton t1)) where
 removeButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_removeButton cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_removeButton" qtc_QDialogButtonBox_removeButton :: Ptr (TQDialogButtonBox a) -> Ptr (TQAbstractButton t1) -> IO ()

setCenterButtons :: QDialogButtonBox a -> ((Bool)) -> IO ()
setCenterButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setCenterButtons cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_setCenterButtons" qtc_QDialogButtonBox_setCenterButtons :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance QsetOrientation (QDialogButtonBox a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_setOrientation" qtc_QDialogButtonBox_setOrientation :: Ptr (TQDialogButtonBox a) -> CLong -> IO ()

instance QsetStandardButtons (QDialogButtonBox a) ((QDialogButtonBoxStandardButtons)) where
 setStandardButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setStandardButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_setStandardButtons" qtc_QDialogButtonBox_setStandardButtons :: Ptr (TQDialogButtonBox a) -> CLong -> IO ()

instance QstandardButton (QDialogButtonBox a) ((QAbstractButton t1)) (IO (QDialogButtonBoxStandardButton)) where
 standardButton x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_standardButton cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_standardButton" qtc_QDialogButtonBox_standardButton :: Ptr (TQDialogButtonBox a) -> Ptr (TQAbstractButton t1) -> IO CLong

instance QstandardButtons (QDialogButtonBox a) (()) (IO (QDialogButtonBoxStandardButtons)) where
 standardButtons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_standardButtons cobj_x0

foreign import ccall "qtc_QDialogButtonBox_standardButtons" qtc_QDialogButtonBox_standardButtons :: Ptr (TQDialogButtonBox a) -> IO CLong

qDialogButtonBox_delete :: QDialogButtonBox a -> IO ()
qDialogButtonBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_delete cobj_x0

foreign import ccall "qtc_QDialogButtonBox_delete" qtc_QDialogButtonBox_delete :: Ptr (TQDialogButtonBox a) -> IO ()

qDialogButtonBox_deleteLater :: QDialogButtonBox a -> IO ()
qDialogButtonBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_deleteLater cobj_x0

foreign import ccall "qtc_QDialogButtonBox_deleteLater" qtc_QDialogButtonBox_deleteLater :: Ptr (TQDialogButtonBox a) -> IO ()

instance QactionEvent (QDialogButtonBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_actionEvent_h" qtc_QDialogButtonBox_actionEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDialogButtonBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDialogButtonBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_addAction" qtc_QDialogButtonBox_addAction :: Ptr (TQDialogButtonBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDialogButtonBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QDialogButtonBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_closeEvent_h" qtc_QDialogButtonBox_closeEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDialogButtonBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDialogButtonBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_contextMenuEvent_h" qtc_QDialogButtonBox_contextMenuEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDialogButtonBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QDialogButtonBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_create cobj_x0

foreign import ccall "qtc_QDialogButtonBox_create" qtc_QDialogButtonBox_create :: Ptr (TQDialogButtonBox a) -> IO ()

instance Qcreate (QDialogButtonBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_create cobj_x0

instance Qcreate (QDialogButtonBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_create1" qtc_QDialogButtonBox_create1 :: Ptr (TQDialogButtonBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDialogButtonBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create1 cobj_x0 cobj_x1

instance Qcreate (QDialogButtonBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDialogButtonBox_create2" qtc_QDialogButtonBox_create2 :: Ptr (TQDialogButtonBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDialogButtonBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDialogButtonBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDialogButtonBox_create3" qtc_QDialogButtonBox_create3 :: Ptr (TQDialogButtonBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDialogButtonBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDialogButtonBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy cobj_x0

foreign import ccall "qtc_QDialogButtonBox_destroy" qtc_QDialogButtonBox_destroy :: Ptr (TQDialogButtonBox a) -> IO ()

instance Qdestroy (QDialogButtonBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy cobj_x0

instance Qdestroy (QDialogButtonBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_destroy1" qtc_QDialogButtonBox_destroy1 :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance Qdestroy (QDialogButtonBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDialogButtonBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDialogButtonBox_destroy2" qtc_QDialogButtonBox_destroy2 :: Ptr (TQDialogButtonBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDialogButtonBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDialogButtonBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_devType_h cobj_x0

foreign import ccall "qtc_QDialogButtonBox_devType_h" qtc_QDialogButtonBox_devType_h :: Ptr (TQDialogButtonBox a) -> IO CInt

instance QdevType (QDialogButtonBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_devType_h cobj_x0

instance QdragEnterEvent (QDialogButtonBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_dragEnterEvent_h" qtc_QDialogButtonBox_dragEnterEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDialogButtonBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDialogButtonBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_dragLeaveEvent_h" qtc_QDialogButtonBox_dragLeaveEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDialogButtonBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDialogButtonBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_dragMoveEvent_h" qtc_QDialogButtonBox_dragMoveEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDialogButtonBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDialogButtonBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_dropEvent_h" qtc_QDialogButtonBox_dropEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDialogButtonBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDialogButtonBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_enabledChange" qtc_QDialogButtonBox_enabledChange :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance QenabledChange (QDialogButtonBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDialogButtonBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_enterEvent_h" qtc_QDialogButtonBox_enterEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDialogButtonBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QDialogButtonBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_focusInEvent_h" qtc_QDialogButtonBox_focusInEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDialogButtonBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDialogButtonBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusNextChild cobj_x0

foreign import ccall "qtc_QDialogButtonBox_focusNextChild" qtc_QDialogButtonBox_focusNextChild :: Ptr (TQDialogButtonBox a) -> IO CBool

instance QfocusNextChild (QDialogButtonBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QDialogButtonBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_focusNextPrevChild" qtc_QDialogButtonBox_focusNextPrevChild :: Ptr (TQDialogButtonBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDialogButtonBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QDialogButtonBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_focusOutEvent_h" qtc_QDialogButtonBox_focusOutEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDialogButtonBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QDialogButtonBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDialogButtonBox_focusPreviousChild" qtc_QDialogButtonBox_focusPreviousChild :: Ptr (TQDialogButtonBox a) -> IO CBool

instance QfocusPreviousChild (QDialogButtonBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_focusPreviousChild cobj_x0

instance QfontChange (QDialogButtonBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_fontChange" qtc_QDialogButtonBox_fontChange :: Ptr (TQDialogButtonBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDialogButtonBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDialogButtonBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDialogButtonBox_heightForWidth_h" qtc_QDialogButtonBox_heightForWidth_h :: Ptr (TQDialogButtonBox a) -> CInt -> IO CInt

instance QheightForWidth (QDialogButtonBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QDialogButtonBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_hideEvent_h" qtc_QDialogButtonBox_hideEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDialogButtonBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QDialogButtonBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_inputMethodEvent" qtc_QDialogButtonBox_inputMethodEvent :: Ptr (TQDialogButtonBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDialogButtonBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDialogButtonBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_inputMethodQuery_h" qtc_QDialogButtonBox_inputMethodQuery_h :: Ptr (TQDialogButtonBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDialogButtonBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QDialogButtonBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_keyPressEvent_h" qtc_QDialogButtonBox_keyPressEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDialogButtonBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDialogButtonBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_keyReleaseEvent_h" qtc_QDialogButtonBox_keyReleaseEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDialogButtonBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QDialogButtonBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_languageChange cobj_x0

foreign import ccall "qtc_QDialogButtonBox_languageChange" qtc_QDialogButtonBox_languageChange :: Ptr (TQDialogButtonBox a) -> IO ()

instance QlanguageChange (QDialogButtonBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_languageChange cobj_x0

instance QleaveEvent (QDialogButtonBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_leaveEvent_h" qtc_QDialogButtonBox_leaveEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDialogButtonBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDialogButtonBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDialogButtonBox_metric" qtc_QDialogButtonBox_metric :: Ptr (TQDialogButtonBox a) -> CLong -> IO CInt

instance Qmetric (QDialogButtonBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QDialogButtonBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDialogButtonBox_minimumSizeHint_h" qtc_QDialogButtonBox_minimumSizeHint_h :: Ptr (TQDialogButtonBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDialogButtonBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDialogButtonBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDialogButtonBox_minimumSizeHint_qth_h" qtc_QDialogButtonBox_minimumSizeHint_qth_h :: Ptr (TQDialogButtonBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDialogButtonBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QDialogButtonBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_mouseDoubleClickEvent_h" qtc_QDialogButtonBox_mouseDoubleClickEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDialogButtonBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QDialogButtonBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_mouseMoveEvent_h" qtc_QDialogButtonBox_mouseMoveEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDialogButtonBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QDialogButtonBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_mousePressEvent_h" qtc_QDialogButtonBox_mousePressEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDialogButtonBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDialogButtonBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_mouseReleaseEvent_h" qtc_QDialogButtonBox_mouseReleaseEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDialogButtonBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QDialogButtonBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDialogButtonBox_move1" qtc_QDialogButtonBox_move1 :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> IO ()

instance Qmove (QDialogButtonBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDialogButtonBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDialogButtonBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDialogButtonBox_move_qth" qtc_QDialogButtonBox_move_qth :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> IO ()

instance Qmove (QDialogButtonBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDialogButtonBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDialogButtonBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_move" qtc_QDialogButtonBox_move :: Ptr (TQDialogButtonBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDialogButtonBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_move cobj_x0 cobj_x1

instance QmoveEvent (QDialogButtonBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_moveEvent_h" qtc_QDialogButtonBox_moveEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDialogButtonBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDialogButtonBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QDialogButtonBox_paintEngine_h" qtc_QDialogButtonBox_paintEngine_h :: Ptr (TQDialogButtonBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDialogButtonBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_paintEngine_h cobj_x0

instance QpaintEvent (QDialogButtonBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_paintEvent_h" qtc_QDialogButtonBox_paintEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDialogButtonBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QDialogButtonBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_paletteChange" qtc_QDialogButtonBox_paletteChange :: Ptr (TQDialogButtonBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDialogButtonBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDialogButtonBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_repaint cobj_x0

foreign import ccall "qtc_QDialogButtonBox_repaint" qtc_QDialogButtonBox_repaint :: Ptr (TQDialogButtonBox a) -> IO ()

instance Qrepaint (QDialogButtonBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_repaint cobj_x0

instance Qrepaint (QDialogButtonBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDialogButtonBox_repaint2" qtc_QDialogButtonBox_repaint2 :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDialogButtonBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDialogButtonBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_repaint1" qtc_QDialogButtonBox_repaint1 :: Ptr (TQDialogButtonBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDialogButtonBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDialogButtonBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_resetInputContext cobj_x0

foreign import ccall "qtc_QDialogButtonBox_resetInputContext" qtc_QDialogButtonBox_resetInputContext :: Ptr (TQDialogButtonBox a) -> IO ()

instance QresetInputContext (QDialogButtonBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_resetInputContext cobj_x0

instance Qresize (QDialogButtonBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDialogButtonBox_resize1" qtc_QDialogButtonBox_resize1 :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> IO ()

instance Qresize (QDialogButtonBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDialogButtonBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_resize" qtc_QDialogButtonBox_resize :: Ptr (TQDialogButtonBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDialogButtonBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_resize cobj_x0 cobj_x1

instance Qresize (QDialogButtonBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDialogButtonBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDialogButtonBox_resize_qth" qtc_QDialogButtonBox_resize_qth :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> IO ()

instance Qresize (QDialogButtonBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDialogButtonBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QDialogButtonBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_resizeEvent_h" qtc_QDialogButtonBox_resizeEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDialogButtonBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QDialogButtonBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDialogButtonBox_setGeometry1" qtc_QDialogButtonBox_setGeometry1 :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialogButtonBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDialogButtonBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_setGeometry" qtc_QDialogButtonBox_setGeometry :: Ptr (TQDialogButtonBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDialogButtonBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDialogButtonBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDialogButtonBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDialogButtonBox_setGeometry_qth" qtc_QDialogButtonBox_setGeometry_qth :: Ptr (TQDialogButtonBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDialogButtonBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDialogButtonBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDialogButtonBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_setMouseTracking" qtc_QDialogButtonBox_setMouseTracking :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance QsetMouseTracking (QDialogButtonBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDialogButtonBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_setVisible_h" qtc_QDialogButtonBox_setVisible_h :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance QsetVisible (QDialogButtonBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QDialogButtonBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_showEvent_h" qtc_QDialogButtonBox_showEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDialogButtonBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QDialogButtonBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QDialogButtonBox_sizeHint_h" qtc_QDialogButtonBox_sizeHint_h :: Ptr (TQDialogButtonBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDialogButtonBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sizeHint_h cobj_x0

instance QsizeHint (QDialogButtonBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDialogButtonBox_sizeHint_qth_h" qtc_QDialogButtonBox_sizeHint_qth_h :: Ptr (TQDialogButtonBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDialogButtonBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QDialogButtonBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_tabletEvent_h" qtc_QDialogButtonBox_tabletEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDialogButtonBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDialogButtonBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDialogButtonBox_updateMicroFocus" qtc_QDialogButtonBox_updateMicroFocus :: Ptr (TQDialogButtonBox a) -> IO ()

instance QupdateMicroFocus (QDialogButtonBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_updateMicroFocus cobj_x0

instance QwheelEvent (QDialogButtonBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_wheelEvent_h" qtc_QDialogButtonBox_wheelEvent_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDialogButtonBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QDialogButtonBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDialogButtonBox_windowActivationChange" qtc_QDialogButtonBox_windowActivationChange :: Ptr (TQDialogButtonBox a) -> CBool -> IO ()

instance QwindowActivationChange (QDialogButtonBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDialogButtonBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_childEvent" qtc_QDialogButtonBox_childEvent :: Ptr (TQDialogButtonBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDialogButtonBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDialogButtonBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDialogButtonBox_connectNotify" qtc_QDialogButtonBox_connectNotify :: Ptr (TQDialogButtonBox a) -> CWString -> IO ()

instance QconnectNotify (QDialogButtonBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDialogButtonBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_customEvent" qtc_QDialogButtonBox_customEvent :: Ptr (TQDialogButtonBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDialogButtonBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDialogButtonBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDialogButtonBox_disconnectNotify" qtc_QDialogButtonBox_disconnectNotify :: Ptr (TQDialogButtonBox a) -> CWString -> IO ()

instance QdisconnectNotify (QDialogButtonBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDialogButtonBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDialogButtonBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDialogButtonBox_eventFilter_h" qtc_QDialogButtonBox_eventFilter_h :: Ptr (TQDialogButtonBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDialogButtonBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDialogButtonBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDialogButtonBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDialogButtonBox_receivers" qtc_QDialogButtonBox_receivers :: Ptr (TQDialogButtonBox a) -> CWString -> IO CInt

instance Qreceivers (QDialogButtonBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDialogButtonBox_receivers cobj_x0 cstr_x1

instance Qsender (QDialogButtonBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sender cobj_x0

foreign import ccall "qtc_QDialogButtonBox_sender" qtc_QDialogButtonBox_sender :: Ptr (TQDialogButtonBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QDialogButtonBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDialogButtonBox_sender cobj_x0

instance QtimerEvent (QDialogButtonBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDialogButtonBox_timerEvent" qtc_QDialogButtonBox_timerEvent :: Ptr (TQDialogButtonBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDialogButtonBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDialogButtonBox_timerEvent cobj_x0 cobj_x1

