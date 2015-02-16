{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QToolBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:28
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QToolBox (
  QqToolBox(..)
  ,isItemEnabled
  ,QitemInserted(..)
  ,QitemRemoved(..)
  ,itemToolTip
  ,setItemEnabled
  ,setItemToolTip
  ,qToolBox_delete
  ,qToolBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QToolBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QToolBox_userMethod" qtc_QToolBox_userMethod :: Ptr (TQToolBox a) -> CInt -> IO ()

instance QuserMethod (QToolBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QToolBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QToolBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QToolBox_userMethodVariant" qtc_QToolBox_userMethodVariant :: Ptr (TQToolBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QToolBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QToolBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqToolBox x1 where
  qToolBox :: x1 -> IO (QToolBox ())

instance QqToolBox (()) where
 qToolBox ()
  = withQToolBoxResult $
    qtc_QToolBox

foreign import ccall "qtc_QToolBox" qtc_QToolBox :: IO (Ptr (TQToolBox ()))

instance QqToolBox ((QWidget t1)) where
 qToolBox (x1)
  = withQToolBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox1 cobj_x1

foreign import ccall "qtc_QToolBox1" qtc_QToolBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQToolBox ()))

instance QqToolBox ((QWidget t1, WindowFlags)) where
 qToolBox (x1, x2)
  = withQToolBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox2 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QToolBox2" qtc_QToolBox2 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQToolBox ()))

instance QaddItem (QToolBox a) ((QWidget t1, QIcon t2, String)) (IO (Int)) where
 addItem x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QToolBox_addItem1 cobj_x0 cobj_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QToolBox_addItem1" qtc_QToolBox_addItem1 :: Ptr (TQToolBox a) -> Ptr (TQWidget t1) -> Ptr (TQIcon t2) -> CWString -> IO CInt

instance QaddItem (QToolBox a) ((QWidget t1, String)) (IO (Int)) where
 addItem x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolBox_addItem cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QToolBox_addItem" qtc_QToolBox_addItem :: Ptr (TQToolBox a) -> Ptr (TQWidget t1) -> CWString -> IO CInt

instance QchangeEvent (QToolBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_changeEvent_h" qtc_QToolBox_changeEvent_h :: Ptr (TQToolBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QToolBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_changeEvent_h cobj_x0 cobj_x1

instance Qcount (QToolBox a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_count cobj_x0

foreign import ccall "qtc_QToolBox_count" qtc_QToolBox_count :: Ptr (TQToolBox a) -> IO CInt

instance QcurrentIndex (QToolBox a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_currentIndex cobj_x0

foreign import ccall "qtc_QToolBox_currentIndex" qtc_QToolBox_currentIndex :: Ptr (TQToolBox a) -> IO CInt

instance QcurrentWidget (QToolBox a) (()) where
 currentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_currentWidget cobj_x0

foreign import ccall "qtc_QToolBox_currentWidget" qtc_QToolBox_currentWidget :: Ptr (TQToolBox a) -> IO (Ptr (TQWidget ()))

instance Qevent (QToolBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_event_h" qtc_QToolBox_event_h :: Ptr (TQToolBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QToolBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_event_h cobj_x0 cobj_x1

instance QindexOf (QToolBox a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_indexOf" qtc_QToolBox_indexOf :: Ptr (TQToolBox a) -> Ptr (TQWidget t1) -> IO CInt

instance QinsertItem (QToolBox a) ((Int, QWidget t2, QIcon t3, String)) (IO (Int)) where
 insertItem x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QToolBox_insertItem1 cobj_x0 (toCInt x1) cobj_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QToolBox_insertItem1" qtc_QToolBox_insertItem1 :: Ptr (TQToolBox a) -> CInt -> Ptr (TQWidget t2) -> Ptr (TQIcon t3) -> CWString -> IO CInt

instance QinsertItem (QToolBox a) ((Int, QWidget t2, String)) (IO (Int)) where
 insertItem x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QToolBox_insertItem cobj_x0 (toCInt x1) cobj_x2 cstr_x3

foreign import ccall "qtc_QToolBox_insertItem" qtc_QToolBox_insertItem :: Ptr (TQToolBox a) -> CInt -> Ptr (TQWidget t2) -> CWString -> IO CInt

isItemEnabled :: QToolBox a -> ((Int)) -> IO (Bool)
isItemEnabled x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_isItemEnabled cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_isItemEnabled" qtc_QToolBox_isItemEnabled :: Ptr (TQToolBox a) -> CInt -> IO CBool

instance QitemIcon (QToolBox a) ((Int)) where
 itemIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemIcon cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_itemIcon" qtc_QToolBox_itemIcon :: Ptr (TQToolBox a) -> CInt -> IO (Ptr (TQIcon ()))

class QitemInserted x0 x1 where
 itemInserted :: x0 -> x1 -> IO ()

instance QitemInserted (QToolBox ()) ((Int)) where
 itemInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemInserted_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_itemInserted_h" qtc_QToolBox_itemInserted_h :: Ptr (TQToolBox a) -> CInt -> IO ()

instance QitemInserted (QToolBoxSc a) ((Int)) where
 itemInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemInserted_h cobj_x0 (toCInt x1)

class QitemRemoved x0 x1 where
 itemRemoved :: x0 -> x1 -> IO ()

instance QitemRemoved (QToolBox ()) ((Int)) where
 itemRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemRemoved_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_itemRemoved_h" qtc_QToolBox_itemRemoved_h :: Ptr (TQToolBox a) -> CInt -> IO ()

instance QitemRemoved (QToolBoxSc a) ((Int)) where
 itemRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemRemoved_h cobj_x0 (toCInt x1)

instance QitemText (QToolBox a) ((Int)) where
 itemText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemText cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_itemText" qtc_QToolBox_itemText :: Ptr (TQToolBox a) -> CInt -> IO (Ptr (TQString ()))

itemToolTip :: QToolBox a -> ((Int)) -> IO (String)
itemToolTip x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_itemToolTip cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_itemToolTip" qtc_QToolBox_itemToolTip :: Ptr (TQToolBox a) -> CInt -> IO (Ptr (TQString ()))

instance QremoveItem (QToolBox a) ((Int)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_removeItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_removeItem" qtc_QToolBox_removeItem :: Ptr (TQToolBox a) -> CInt -> IO ()

instance QsetCurrentIndex (QToolBox a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_setCurrentIndex" qtc_QToolBox_setCurrentIndex :: Ptr (TQToolBox a) -> CInt -> IO ()

instance QsetCurrentWidget (QToolBox a) ((QWidget t1)) where
 setCurrentWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_setCurrentWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_setCurrentWidget" qtc_QToolBox_setCurrentWidget :: Ptr (TQToolBox a) -> Ptr (TQWidget t1) -> IO ()

setItemEnabled :: QToolBox a -> ((Int, Bool)) -> IO ()
setItemEnabled x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setItemEnabled cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QToolBox_setItemEnabled" qtc_QToolBox_setItemEnabled :: Ptr (TQToolBox a) -> CInt -> CBool -> IO ()

instance QsetItemIcon (QToolBox a) ((Int, QIcon t2)) where
 setItemIcon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBox_setItemIcon cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QToolBox_setItemIcon" qtc_QToolBox_setItemIcon :: Ptr (TQToolBox a) -> CInt -> Ptr (TQIcon t2) -> IO ()

instance QsetItemText (QToolBox a) ((Int, String)) where
 setItemText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolBox_setItemText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QToolBox_setItemText" qtc_QToolBox_setItemText :: Ptr (TQToolBox a) -> CInt -> CWString -> IO ()

setItemToolTip :: QToolBox a -> ((Int, String)) -> IO ()
setItemToolTip x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolBox_setItemToolTip cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QToolBox_setItemToolTip" qtc_QToolBox_setItemToolTip :: Ptr (TQToolBox a) -> CInt -> CWString -> IO ()

instance QshowEvent (QToolBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_showEvent_h" qtc_QToolBox_showEvent_h :: Ptr (TQToolBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QToolBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_showEvent_h cobj_x0 cobj_x1

instance Qwidget (QToolBox a) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_widget cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_widget" qtc_QToolBox_widget :: Ptr (TQToolBox a) -> CInt -> IO (Ptr (TQWidget ()))

qToolBox_delete :: QToolBox a -> IO ()
qToolBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_delete cobj_x0

foreign import ccall "qtc_QToolBox_delete" qtc_QToolBox_delete :: Ptr (TQToolBox a) -> IO ()

qToolBox_deleteLater :: QToolBox a -> IO ()
qToolBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_deleteLater cobj_x0

foreign import ccall "qtc_QToolBox_deleteLater" qtc_QToolBox_deleteLater :: Ptr (TQToolBox a) -> IO ()

instance QdrawFrame (QToolBox ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_drawFrame" qtc_QToolBox_drawFrame :: Ptr (TQToolBox a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QToolBoxSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_drawFrame cobj_x0 cobj_x1

instance QpaintEvent (QToolBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_paintEvent_h" qtc_QToolBox_paintEvent_h :: Ptr (TQToolBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QToolBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_paintEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QToolBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QToolBox_sizeHint_h" qtc_QToolBox_sizeHint_h :: Ptr (TQToolBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QToolBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sizeHint_h cobj_x0

instance QsizeHint (QToolBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolBox_sizeHint_qth_h" qtc_QToolBox_sizeHint_qth_h :: Ptr (TQToolBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QToolBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QactionEvent (QToolBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_actionEvent_h" qtc_QToolBox_actionEvent_h :: Ptr (TQToolBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QToolBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QToolBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_addAction" qtc_QToolBox_addAction :: Ptr (TQToolBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QToolBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_addAction cobj_x0 cobj_x1

instance QcloseEvent (QToolBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_closeEvent_h" qtc_QToolBox_closeEvent_h :: Ptr (TQToolBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QToolBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QToolBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_contextMenuEvent_h" qtc_QToolBox_contextMenuEvent_h :: Ptr (TQToolBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QToolBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QToolBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_create cobj_x0

foreign import ccall "qtc_QToolBox_create" qtc_QToolBox_create :: Ptr (TQToolBox a) -> IO ()

instance Qcreate (QToolBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_create cobj_x0

instance Qcreate (QToolBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_create1" qtc_QToolBox_create1 :: Ptr (TQToolBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QToolBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create1 cobj_x0 cobj_x1

instance Qcreate (QToolBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QToolBox_create2" qtc_QToolBox_create2 :: Ptr (TQToolBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QToolBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QToolBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QToolBox_create3" qtc_QToolBox_create3 :: Ptr (TQToolBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QToolBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QToolBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy cobj_x0

foreign import ccall "qtc_QToolBox_destroy" qtc_QToolBox_destroy :: Ptr (TQToolBox a) -> IO ()

instance Qdestroy (QToolBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy cobj_x0

instance Qdestroy (QToolBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_destroy1" qtc_QToolBox_destroy1 :: Ptr (TQToolBox a) -> CBool -> IO ()

instance Qdestroy (QToolBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QToolBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QToolBox_destroy2" qtc_QToolBox_destroy2 :: Ptr (TQToolBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QToolBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QToolBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_devType_h cobj_x0

foreign import ccall "qtc_QToolBox_devType_h" qtc_QToolBox_devType_h :: Ptr (TQToolBox a) -> IO CInt

instance QdevType (QToolBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_devType_h cobj_x0

instance QdragEnterEvent (QToolBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_dragEnterEvent_h" qtc_QToolBox_dragEnterEvent_h :: Ptr (TQToolBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QToolBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QToolBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_dragLeaveEvent_h" qtc_QToolBox_dragLeaveEvent_h :: Ptr (TQToolBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QToolBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QToolBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_dragMoveEvent_h" qtc_QToolBox_dragMoveEvent_h :: Ptr (TQToolBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QToolBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QToolBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_dropEvent_h" qtc_QToolBox_dropEvent_h :: Ptr (TQToolBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QToolBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QToolBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_enabledChange" qtc_QToolBox_enabledChange :: Ptr (TQToolBox a) -> CBool -> IO ()

instance QenabledChange (QToolBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QToolBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_enterEvent_h" qtc_QToolBox_enterEvent_h :: Ptr (TQToolBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QToolBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QToolBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_focusInEvent_h" qtc_QToolBox_focusInEvent_h :: Ptr (TQToolBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QToolBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QToolBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusNextChild cobj_x0

foreign import ccall "qtc_QToolBox_focusNextChild" qtc_QToolBox_focusNextChild :: Ptr (TQToolBox a) -> IO CBool

instance QfocusNextChild (QToolBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QToolBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_focusNextPrevChild" qtc_QToolBox_focusNextPrevChild :: Ptr (TQToolBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QToolBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QToolBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_focusOutEvent_h" qtc_QToolBox_focusOutEvent_h :: Ptr (TQToolBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QToolBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QToolBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QToolBox_focusPreviousChild" qtc_QToolBox_focusPreviousChild :: Ptr (TQToolBox a) -> IO CBool

instance QfocusPreviousChild (QToolBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_focusPreviousChild cobj_x0

instance QfontChange (QToolBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_fontChange" qtc_QToolBox_fontChange :: Ptr (TQToolBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QToolBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QToolBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QToolBox_heightForWidth_h" qtc_QToolBox_heightForWidth_h :: Ptr (TQToolBox a) -> CInt -> IO CInt

instance QheightForWidth (QToolBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QToolBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_hideEvent_h" qtc_QToolBox_hideEvent_h :: Ptr (TQToolBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QToolBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QToolBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_inputMethodEvent" qtc_QToolBox_inputMethodEvent :: Ptr (TQToolBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QToolBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QToolBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBox_inputMethodQuery_h" qtc_QToolBox_inputMethodQuery_h :: Ptr (TQToolBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QToolBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QToolBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_keyPressEvent_h" qtc_QToolBox_keyPressEvent_h :: Ptr (TQToolBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QToolBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QToolBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_keyReleaseEvent_h" qtc_QToolBox_keyReleaseEvent_h :: Ptr (TQToolBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QToolBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QToolBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_languageChange cobj_x0

foreign import ccall "qtc_QToolBox_languageChange" qtc_QToolBox_languageChange :: Ptr (TQToolBox a) -> IO ()

instance QlanguageChange (QToolBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_languageChange cobj_x0

instance QleaveEvent (QToolBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_leaveEvent_h" qtc_QToolBox_leaveEvent_h :: Ptr (TQToolBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QToolBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QToolBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QToolBox_metric" qtc_QToolBox_metric :: Ptr (TQToolBox a) -> CLong -> IO CInt

instance Qmetric (QToolBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QToolBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QToolBox_minimumSizeHint_h" qtc_QToolBox_minimumSizeHint_h :: Ptr (TQToolBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QToolBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QToolBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QToolBox_minimumSizeHint_qth_h" qtc_QToolBox_minimumSizeHint_qth_h :: Ptr (TQToolBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QToolBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QToolBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_mouseDoubleClickEvent_h" qtc_QToolBox_mouseDoubleClickEvent_h :: Ptr (TQToolBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QToolBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QToolBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_mouseMoveEvent_h" qtc_QToolBox_mouseMoveEvent_h :: Ptr (TQToolBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QToolBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QToolBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_mousePressEvent_h" qtc_QToolBox_mousePressEvent_h :: Ptr (TQToolBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QToolBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QToolBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_mouseReleaseEvent_h" qtc_QToolBox_mouseReleaseEvent_h :: Ptr (TQToolBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QToolBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QToolBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolBox_move1" qtc_QToolBox_move1 :: Ptr (TQToolBox a) -> CInt -> CInt -> IO ()

instance Qmove (QToolBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QToolBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QToolBox_move_qth" qtc_QToolBox_move_qth :: Ptr (TQToolBox a) -> CInt -> CInt -> IO ()

instance Qmove (QToolBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QToolBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QToolBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_move" qtc_QToolBox_move :: Ptr (TQToolBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QToolBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_move cobj_x0 cobj_x1

instance QmoveEvent (QToolBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_moveEvent_h" qtc_QToolBox_moveEvent_h :: Ptr (TQToolBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QToolBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QToolBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QToolBox_paintEngine_h" qtc_QToolBox_paintEngine_h :: Ptr (TQToolBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QToolBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_paintEngine_h cobj_x0

instance QpaletteChange (QToolBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_paletteChange" qtc_QToolBox_paletteChange :: Ptr (TQToolBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QToolBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QToolBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_repaint cobj_x0

foreign import ccall "qtc_QToolBox_repaint" qtc_QToolBox_repaint :: Ptr (TQToolBox a) -> IO ()

instance Qrepaint (QToolBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_repaint cobj_x0

instance Qrepaint (QToolBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolBox_repaint2" qtc_QToolBox_repaint2 :: Ptr (TQToolBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QToolBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QToolBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_repaint1" qtc_QToolBox_repaint1 :: Ptr (TQToolBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QToolBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QToolBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_resetInputContext cobj_x0

foreign import ccall "qtc_QToolBox_resetInputContext" qtc_QToolBox_resetInputContext :: Ptr (TQToolBox a) -> IO ()

instance QresetInputContext (QToolBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_resetInputContext cobj_x0

instance Qresize (QToolBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QToolBox_resize1" qtc_QToolBox_resize1 :: Ptr (TQToolBox a) -> CInt -> CInt -> IO ()

instance Qresize (QToolBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QToolBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_resize" qtc_QToolBox_resize :: Ptr (TQToolBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QToolBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_resize cobj_x0 cobj_x1

instance Qresize (QToolBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QToolBox_resize_qth" qtc_QToolBox_resize_qth :: Ptr (TQToolBox a) -> CInt -> CInt -> IO ()

instance Qresize (QToolBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QToolBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QToolBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_resizeEvent_h" qtc_QToolBox_resizeEvent_h :: Ptr (TQToolBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QToolBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QToolBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QToolBox_setGeometry1" qtc_QToolBox_setGeometry1 :: Ptr (TQToolBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QToolBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_setGeometry" qtc_QToolBox_setGeometry :: Ptr (TQToolBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QToolBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QToolBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QToolBox_setGeometry_qth" qtc_QToolBox_setGeometry_qth :: Ptr (TQToolBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QToolBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QToolBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QToolBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_setMouseTracking" qtc_QToolBox_setMouseTracking :: Ptr (TQToolBox a) -> CBool -> IO ()

instance QsetMouseTracking (QToolBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QToolBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_setVisible_h" qtc_QToolBox_setVisible_h :: Ptr (TQToolBox a) -> CBool -> IO ()

instance QsetVisible (QToolBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QToolBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_tabletEvent_h" qtc_QToolBox_tabletEvent_h :: Ptr (TQToolBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QToolBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QToolBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QToolBox_updateMicroFocus" qtc_QToolBox_updateMicroFocus :: Ptr (TQToolBox a) -> IO ()

instance QupdateMicroFocus (QToolBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_updateMicroFocus cobj_x0

instance QwheelEvent (QToolBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_wheelEvent_h" qtc_QToolBox_wheelEvent_h :: Ptr (TQToolBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QToolBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QToolBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QToolBox_windowActivationChange" qtc_QToolBox_windowActivationChange :: Ptr (TQToolBox a) -> CBool -> IO ()

instance QwindowActivationChange (QToolBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QToolBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_childEvent" qtc_QToolBox_childEvent :: Ptr (TQToolBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QToolBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QToolBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBox_connectNotify" qtc_QToolBox_connectNotify :: Ptr (TQToolBox a) -> CWString -> IO ()

instance QconnectNotify (QToolBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QToolBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_customEvent" qtc_QToolBox_customEvent :: Ptr (TQToolBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QToolBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QToolBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBox_disconnectNotify" qtc_QToolBox_disconnectNotify :: Ptr (TQToolBox a) -> CWString -> IO ()

instance QdisconnectNotify (QToolBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QToolBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QToolBox_eventFilter_h" qtc_QToolBox_eventFilter_h :: Ptr (TQToolBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QToolBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QToolBox_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QToolBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QToolBox_receivers" qtc_QToolBox_receivers :: Ptr (TQToolBox a) -> CWString -> IO CInt

instance Qreceivers (QToolBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QToolBox_receivers cobj_x0 cstr_x1

instance Qsender (QToolBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sender cobj_x0

foreign import ccall "qtc_QToolBox_sender" qtc_QToolBox_sender :: Ptr (TQToolBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QToolBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QToolBox_sender cobj_x0

instance QtimerEvent (QToolBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QToolBox_timerEvent" qtc_QToolBox_timerEvent :: Ptr (TQToolBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QToolBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolBox_timerEvent cobj_x0 cobj_x1

