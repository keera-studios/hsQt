{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStatusBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStatusBar (
  QqStatusBar(..)
  ,QaddPermanentWidget(..)
  ,currentMessage
  ,QhideOrShow(..)
  ,QinsertPermanentWidget(..)
  ,Qreformat(..)
  ,qStatusBar_delete
  ,qStatusBar_deleteLater
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

instance QuserMethod (QStatusBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStatusBar_userMethod" qtc_QStatusBar_userMethod :: Ptr (TQStatusBar a) -> CInt -> IO ()

instance QuserMethod (QStatusBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStatusBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStatusBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStatusBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStatusBar_userMethodVariant" qtc_QStatusBar_userMethodVariant :: Ptr (TQStatusBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStatusBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStatusBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqStatusBar x1 where
  qStatusBar :: x1 -> IO (QStatusBar ())

instance QqStatusBar (()) where
 qStatusBar ()
  = withQStatusBarResult $
    qtc_QStatusBar

foreign import ccall "qtc_QStatusBar" qtc_QStatusBar :: IO (Ptr (TQStatusBar ()))

instance QqStatusBar ((QWidget t1)) where
 qStatusBar (x1)
  = withQStatusBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar1 cobj_x1

foreign import ccall "qtc_QStatusBar1" qtc_QStatusBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQStatusBar ()))

class QaddPermanentWidget x1 where
 addPermanentWidget :: QStatusBar a -> x1 -> IO ()

instance QaddPermanentWidget ((QWidget t1)) where
 addPermanentWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addPermanentWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_addPermanentWidget" qtc_QStatusBar_addPermanentWidget :: Ptr (TQStatusBar a) -> Ptr (TQWidget t1) -> IO ()

instance QaddPermanentWidget ((QWidget t1, Int)) where
 addPermanentWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addPermanentWidget1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QStatusBar_addPermanentWidget1" qtc_QStatusBar_addPermanentWidget1 :: Ptr (TQStatusBar a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddWidget (QStatusBar ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_addWidget" qtc_QStatusBar_addWidget :: Ptr (TQStatusBar a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QStatusBarSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addWidget cobj_x0 cobj_x1

instance QaddWidget (QStatusBar ()) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QStatusBar_addWidget1" qtc_QStatusBar_addWidget1 :: Ptr (TQStatusBar a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddWidget (QStatusBarSc a) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

instance QclearMessage (QStatusBar a) (()) where
 clearMessage x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_clearMessage cobj_x0

foreign import ccall "qtc_QStatusBar_clearMessage" qtc_QStatusBar_clearMessage :: Ptr (TQStatusBar a) -> IO ()

currentMessage :: QStatusBar a -> (()) -> IO (String)
currentMessage x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_currentMessage cobj_x0

foreign import ccall "qtc_QStatusBar_currentMessage" qtc_QStatusBar_currentMessage :: Ptr (TQStatusBar a) -> IO (Ptr (TQString ()))

instance Qevent (QStatusBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_event_h" qtc_QStatusBar_event_h :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QStatusBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_event_h cobj_x0 cobj_x1

class QhideOrShow x0 x1 where
 hideOrShow :: x0 -> x1 -> IO ()

instance QhideOrShow (QStatusBar ()) (()) where
 hideOrShow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_hideOrShow cobj_x0

foreign import ccall "qtc_QStatusBar_hideOrShow" qtc_QStatusBar_hideOrShow :: Ptr (TQStatusBar a) -> IO ()

instance QhideOrShow (QStatusBarSc a) (()) where
 hideOrShow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_hideOrShow cobj_x0

class QinsertPermanentWidget x1 where
 insertPermanentWidget :: QStatusBar a -> x1 -> IO (Int)

instance QinsertPermanentWidget ((Int, QWidget t2)) where
 insertPermanentWidget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_insertPermanentWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStatusBar_insertPermanentWidget" qtc_QStatusBar_insertPermanentWidget :: Ptr (TQStatusBar a) -> CInt -> Ptr (TQWidget t2) -> IO CInt

instance QinsertPermanentWidget ((Int, QWidget t2, Int)) where
 insertPermanentWidget x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_insertPermanentWidget1 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3)

foreign import ccall "qtc_QStatusBar_insertPermanentWidget1" qtc_QStatusBar_insertPermanentWidget1 :: Ptr (TQStatusBar a) -> CInt -> Ptr (TQWidget t2) -> CInt -> IO CInt

instance QinsertWidget (QStatusBar a) ((Int, QWidget t2)) (IO (Int)) where
 insertWidget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_insertWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStatusBar_insertWidget" qtc_QStatusBar_insertWidget :: Ptr (TQStatusBar a) -> CInt -> Ptr (TQWidget t2) -> IO CInt

instance QinsertWidget (QStatusBar a) ((Int, QWidget t2, Int)) (IO (Int)) where
 insertWidget x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_insertWidget1 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3)

foreign import ccall "qtc_QStatusBar_insertWidget1" qtc_QStatusBar_insertWidget1 :: Ptr (TQStatusBar a) -> CInt -> Ptr (TQWidget t2) -> CInt -> IO CInt

instance QisSizeGripEnabled (QStatusBar a) (()) where
 isSizeGripEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_isSizeGripEnabled cobj_x0

foreign import ccall "qtc_QStatusBar_isSizeGripEnabled" qtc_QStatusBar_isSizeGripEnabled :: Ptr (TQStatusBar a) -> IO CBool

instance QpaintEvent (QStatusBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_paintEvent_h" qtc_QStatusBar_paintEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QStatusBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paintEvent_h cobj_x0 cobj_x1

class Qreformat x0 x1 where
 reformat :: x0 -> x1 -> IO ()

instance Qreformat (QStatusBar ()) (()) where
 reformat x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_reformat cobj_x0

foreign import ccall "qtc_QStatusBar_reformat" qtc_QStatusBar_reformat :: Ptr (TQStatusBar a) -> IO ()

instance Qreformat (QStatusBarSc a) (()) where
 reformat x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_reformat cobj_x0

instance QremoveWidget (QStatusBar a) ((QWidget t1)) where
 removeWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_removeWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_removeWidget" qtc_QStatusBar_removeWidget :: Ptr (TQStatusBar a) -> Ptr (TQWidget t1) -> IO ()

instance QresizeEvent (QStatusBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_resizeEvent_h" qtc_QStatusBar_resizeEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QStatusBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetSizeGripEnabled (QStatusBar a) ((Bool)) where
 setSizeGripEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setSizeGripEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_setSizeGripEnabled" qtc_QStatusBar_setSizeGripEnabled :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QshowMessage (QStatusBar a) ((String)) where
 showMessage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_showMessage cobj_x0 cstr_x1

foreign import ccall "qtc_QStatusBar_showMessage" qtc_QStatusBar_showMessage :: Ptr (TQStatusBar a) -> CWString -> IO ()

instance QshowMessage (QStatusBar a) ((String, Int)) where
 showMessage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_showMessage1 cobj_x0 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QStatusBar_showMessage1" qtc_QStatusBar_showMessage1 :: Ptr (TQStatusBar a) -> CWString -> CInt -> IO ()

qStatusBar_delete :: QStatusBar a -> IO ()
qStatusBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_delete cobj_x0

foreign import ccall "qtc_QStatusBar_delete" qtc_QStatusBar_delete :: Ptr (TQStatusBar a) -> IO ()

qStatusBar_deleteLater :: QStatusBar a -> IO ()
qStatusBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_deleteLater cobj_x0

foreign import ccall "qtc_QStatusBar_deleteLater" qtc_QStatusBar_deleteLater :: Ptr (TQStatusBar a) -> IO ()

instance QactionEvent (QStatusBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_actionEvent_h" qtc_QStatusBar_actionEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QStatusBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QStatusBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_addAction" qtc_QStatusBar_addAction :: Ptr (TQStatusBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QStatusBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_addAction cobj_x0 cobj_x1

instance QchangeEvent (QStatusBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_changeEvent_h" qtc_QStatusBar_changeEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QStatusBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QStatusBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_closeEvent_h" qtc_QStatusBar_closeEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QStatusBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QStatusBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_contextMenuEvent_h" qtc_QStatusBar_contextMenuEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QStatusBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QStatusBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_create cobj_x0

foreign import ccall "qtc_QStatusBar_create" qtc_QStatusBar_create :: Ptr (TQStatusBar a) -> IO ()

instance Qcreate (QStatusBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_create cobj_x0

instance Qcreate (QStatusBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_create1" qtc_QStatusBar_create1 :: Ptr (TQStatusBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QStatusBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create1 cobj_x0 cobj_x1

instance Qcreate (QStatusBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QStatusBar_create2" qtc_QStatusBar_create2 :: Ptr (TQStatusBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QStatusBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QStatusBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QStatusBar_create3" qtc_QStatusBar_create3 :: Ptr (TQStatusBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QStatusBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QStatusBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy cobj_x0

foreign import ccall "qtc_QStatusBar_destroy" qtc_QStatusBar_destroy :: Ptr (TQStatusBar a) -> IO ()

instance Qdestroy (QStatusBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy cobj_x0

instance Qdestroy (QStatusBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_destroy1" qtc_QStatusBar_destroy1 :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance Qdestroy (QStatusBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QStatusBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QStatusBar_destroy2" qtc_QStatusBar_destroy2 :: Ptr (TQStatusBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QStatusBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QStatusBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_devType_h cobj_x0

foreign import ccall "qtc_QStatusBar_devType_h" qtc_QStatusBar_devType_h :: Ptr (TQStatusBar a) -> IO CInt

instance QdevType (QStatusBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_devType_h cobj_x0

instance QdragEnterEvent (QStatusBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragEnterEvent_h" qtc_QStatusBar_dragEnterEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QStatusBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QStatusBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragLeaveEvent_h" qtc_QStatusBar_dragLeaveEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QStatusBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QStatusBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dragMoveEvent_h" qtc_QStatusBar_dragMoveEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QStatusBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QStatusBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_dropEvent_h" qtc_QStatusBar_dropEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QStatusBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QStatusBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_enabledChange" qtc_QStatusBar_enabledChange :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QenabledChange (QStatusBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QStatusBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_enterEvent_h" qtc_QStatusBar_enterEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QStatusBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QStatusBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_focusInEvent_h" qtc_QStatusBar_focusInEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QStatusBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QStatusBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusNextChild cobj_x0

foreign import ccall "qtc_QStatusBar_focusNextChild" qtc_QStatusBar_focusNextChild :: Ptr (TQStatusBar a) -> IO CBool

instance QfocusNextChild (QStatusBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QStatusBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_focusNextPrevChild" qtc_QStatusBar_focusNextPrevChild :: Ptr (TQStatusBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QStatusBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QStatusBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_focusOutEvent_h" qtc_QStatusBar_focusOutEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QStatusBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QStatusBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QStatusBar_focusPreviousChild" qtc_QStatusBar_focusPreviousChild :: Ptr (TQStatusBar a) -> IO CBool

instance QfocusPreviousChild (QStatusBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_focusPreviousChild cobj_x0

instance QfontChange (QStatusBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_fontChange" qtc_QStatusBar_fontChange :: Ptr (TQStatusBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QStatusBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QStatusBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStatusBar_heightForWidth_h" qtc_QStatusBar_heightForWidth_h :: Ptr (TQStatusBar a) -> CInt -> IO CInt

instance QheightForWidth (QStatusBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QStatusBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_hideEvent_h" qtc_QStatusBar_hideEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QStatusBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QStatusBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_inputMethodEvent" qtc_QStatusBar_inputMethodEvent :: Ptr (TQStatusBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QStatusBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QStatusBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStatusBar_inputMethodQuery_h" qtc_QStatusBar_inputMethodQuery_h :: Ptr (TQStatusBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QStatusBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QStatusBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_keyPressEvent_h" qtc_QStatusBar_keyPressEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QStatusBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QStatusBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_keyReleaseEvent_h" qtc_QStatusBar_keyReleaseEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QStatusBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QStatusBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_languageChange cobj_x0

foreign import ccall "qtc_QStatusBar_languageChange" qtc_QStatusBar_languageChange :: Ptr (TQStatusBar a) -> IO ()

instance QlanguageChange (QStatusBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_languageChange cobj_x0

instance QleaveEvent (QStatusBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_leaveEvent_h" qtc_QStatusBar_leaveEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QStatusBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QStatusBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStatusBar_metric" qtc_QStatusBar_metric :: Ptr (TQStatusBar a) -> CLong -> IO CInt

instance Qmetric (QStatusBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QStatusBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QStatusBar_minimumSizeHint_h" qtc_QStatusBar_minimumSizeHint_h :: Ptr (TQStatusBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QStatusBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QStatusBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStatusBar_minimumSizeHint_qth_h" qtc_QStatusBar_minimumSizeHint_qth_h :: Ptr (TQStatusBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QStatusBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QStatusBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseDoubleClickEvent_h" qtc_QStatusBar_mouseDoubleClickEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QStatusBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseMoveEvent_h" qtc_QStatusBar_mouseMoveEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QStatusBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mousePressEvent_h" qtc_QStatusBar_mousePressEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QStatusBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QStatusBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_mouseReleaseEvent_h" qtc_QStatusBar_mouseReleaseEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QStatusBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QStatusBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStatusBar_move1" qtc_QStatusBar_move1 :: Ptr (TQStatusBar a) -> CInt -> CInt -> IO ()

instance Qmove (QStatusBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QStatusBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QStatusBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QStatusBar_move_qth" qtc_QStatusBar_move_qth :: Ptr (TQStatusBar a) -> CInt -> CInt -> IO ()

instance Qmove (QStatusBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QStatusBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QStatusBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_move" qtc_QStatusBar_move :: Ptr (TQStatusBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QStatusBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_move cobj_x0 cobj_x1

instance QmoveEvent (QStatusBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_moveEvent_h" qtc_QStatusBar_moveEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QStatusBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QStatusBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QStatusBar_paintEngine_h" qtc_QStatusBar_paintEngine_h :: Ptr (TQStatusBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QStatusBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_paintEngine_h cobj_x0

instance QpaletteChange (QStatusBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_paletteChange" qtc_QStatusBar_paletteChange :: Ptr (TQStatusBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QStatusBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QStatusBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_repaint cobj_x0

foreign import ccall "qtc_QStatusBar_repaint" qtc_QStatusBar_repaint :: Ptr (TQStatusBar a) -> IO ()

instance Qrepaint (QStatusBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_repaint cobj_x0

instance Qrepaint (QStatusBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStatusBar_repaint2" qtc_QStatusBar_repaint2 :: Ptr (TQStatusBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QStatusBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QStatusBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_repaint1" qtc_QStatusBar_repaint1 :: Ptr (TQStatusBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QStatusBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QStatusBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_resetInputContext cobj_x0

foreign import ccall "qtc_QStatusBar_resetInputContext" qtc_QStatusBar_resetInputContext :: Ptr (TQStatusBar a) -> IO ()

instance QresetInputContext (QStatusBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_resetInputContext cobj_x0

instance Qresize (QStatusBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStatusBar_resize1" qtc_QStatusBar_resize1 :: Ptr (TQStatusBar a) -> CInt -> CInt -> IO ()

instance Qresize (QStatusBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QStatusBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_resize" qtc_QStatusBar_resize :: Ptr (TQStatusBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QStatusBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_resize cobj_x0 cobj_x1

instance Qresize (QStatusBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStatusBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStatusBar_resize_qth" qtc_QStatusBar_resize_qth :: Ptr (TQStatusBar a) -> CInt -> CInt -> IO ()

instance Qresize (QStatusBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStatusBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QStatusBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QStatusBar_setGeometry1" qtc_QStatusBar_setGeometry1 :: Ptr (TQStatusBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QStatusBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QStatusBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_setGeometry" qtc_QStatusBar_setGeometry :: Ptr (TQStatusBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QStatusBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QStatusBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStatusBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStatusBar_setGeometry_qth" qtc_QStatusBar_setGeometry_qth :: Ptr (TQStatusBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QStatusBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStatusBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QStatusBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_setMouseTracking" qtc_QStatusBar_setMouseTracking :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QsetMouseTracking (QStatusBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QStatusBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_setVisible_h" qtc_QStatusBar_setVisible_h :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QsetVisible (QStatusBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QStatusBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_showEvent_h" qtc_QStatusBar_showEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QStatusBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QStatusBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QStatusBar_sizeHint_h" qtc_QStatusBar_sizeHint_h :: Ptr (TQStatusBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QStatusBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_h cobj_x0

instance QsizeHint (QStatusBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStatusBar_sizeHint_qth_h" qtc_QStatusBar_sizeHint_qth_h :: Ptr (TQStatusBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QStatusBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtabletEvent (QStatusBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_tabletEvent_h" qtc_QStatusBar_tabletEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QStatusBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QStatusBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QStatusBar_updateMicroFocus" qtc_QStatusBar_updateMicroFocus :: Ptr (TQStatusBar a) -> IO ()

instance QupdateMicroFocus (QStatusBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_updateMicroFocus cobj_x0

instance QwheelEvent (QStatusBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_wheelEvent_h" qtc_QStatusBar_wheelEvent_h :: Ptr (TQStatusBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QStatusBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QStatusBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStatusBar_windowActivationChange" qtc_QStatusBar_windowActivationChange :: Ptr (TQStatusBar a) -> CBool -> IO ()

instance QwindowActivationChange (QStatusBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QStatusBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_childEvent" qtc_QStatusBar_childEvent :: Ptr (TQStatusBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QStatusBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QStatusBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStatusBar_connectNotify" qtc_QStatusBar_connectNotify :: Ptr (TQStatusBar a) -> CWString -> IO ()

instance QconnectNotify (QStatusBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QStatusBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_customEvent" qtc_QStatusBar_customEvent :: Ptr (TQStatusBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QStatusBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QStatusBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStatusBar_disconnectNotify" qtc_QStatusBar_disconnectNotify :: Ptr (TQStatusBar a) -> CWString -> IO ()

instance QdisconnectNotify (QStatusBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QStatusBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStatusBar_eventFilter_h" qtc_QStatusBar_eventFilter_h :: Ptr (TQStatusBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QStatusBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStatusBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QStatusBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QStatusBar_receivers" qtc_QStatusBar_receivers :: Ptr (TQStatusBar a) -> CWString -> IO CInt

instance Qreceivers (QStatusBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStatusBar_receivers cobj_x0 cstr_x1

instance Qsender (QStatusBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sender cobj_x0

foreign import ccall "qtc_QStatusBar_sender" qtc_QStatusBar_sender :: Ptr (TQStatusBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QStatusBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStatusBar_sender cobj_x0

instance QtimerEvent (QStatusBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStatusBar_timerEvent" qtc_QStatusBar_timerEvent :: Ptr (TQStatusBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QStatusBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStatusBar_timerEvent cobj_x0 cobj_x1

