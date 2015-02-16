{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMenu.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMenu (
  QqMenu(..)
  ,Qqexec(..)
  ,hideTearOffMenu
  ,isTearOffEnabled
  ,isTearOffMenuVisible
  ,menuAction
  ,Qqpopup(..)
  ,separatorsCollapsible
  ,setNoReplayFor
  ,setSeparatorsCollapsible
  ,setTearOffEnabled
  ,qMenu_delete
  ,qMenu_deleteLater
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

instance QuserMethod (QMenu ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMenu_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMenu_userMethod" qtc_QMenu_userMethod :: Ptr (TQMenu a) -> CInt -> IO ()

instance QuserMethod (QMenuSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMenu_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMenu ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMenu_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMenu_userMethodVariant" qtc_QMenu_userMethodVariant :: Ptr (TQMenu a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMenuSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMenu_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqMenu x1 where
  qMenu :: x1 -> IO (QMenu ())

instance QqMenu (()) where
 qMenu ()
  = withQMenuResult $
    qtc_QMenu

foreign import ccall "qtc_QMenu" qtc_QMenu :: IO (Ptr (TQMenu ()))

instance QqMenu ((QWidget t1)) where
 qMenu (x1)
  = withQMenuResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu1 cobj_x1

foreign import ccall "qtc_QMenu1" qtc_QMenu1 :: Ptr (TQWidget t1) -> IO (Ptr (TQMenu ()))

instance QqMenu ((String)) where
 qMenu (x1)
  = withQMenuResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu2 cstr_x1

foreign import ccall "qtc_QMenu2" qtc_QMenu2 :: CWString -> IO (Ptr (TQMenu ()))

instance QqMenu ((String, QWidget t2)) where
 qMenu (x1, x2)
  = withQMenuResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu3 cstr_x1 cobj_x2

foreign import ccall "qtc_QMenu3" qtc_QMenu3 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQMenu ()))

instance QactionAt (QMenu a) ((Point)) where
 actionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenu_actionAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenu_actionAt_qth" qtc_QMenu_actionAt_qth :: Ptr (TQMenu a) -> CInt -> CInt -> IO (Ptr (TQAction ()))

instance QqactionAt (QMenu a) ((QPoint t1)) where
 qactionAt x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_actionAt cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_actionAt" qtc_QMenu_actionAt :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> IO (Ptr (TQAction ()))

instance QactionEvent (QMenu ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_actionEvent_h" qtc_QMenu_actionEvent_h :: Ptr (TQMenu a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QMenuSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_actionEvent_h cobj_x0 cobj_x1

instance QqactionGeometry (QMenu a) ((QAction t1)) where
 qactionGeometry x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_actionGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_actionGeometry" qtc_QMenu_actionGeometry :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> IO (Ptr (TQRect ()))

instance QactionGeometry (QMenu a) ((QAction t1)) where
 actionGeometry x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_actionGeometry_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QMenu_actionGeometry_qth" qtc_QMenu_actionGeometry_qth :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QactiveAction (QMenu a) (()) where
 activeAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_activeAction cobj_x0

foreign import ccall "qtc_QMenu_activeAction" qtc_QMenu_activeAction :: Ptr (TQMenu a) -> IO (Ptr (TQAction ()))

instance QaddAction (QMenu ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_addAction" qtc_QMenu_addAction :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QMenuSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_addAction cobj_x0 cobj_x1

instance QaddAction (QMenu ()) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMenu_addAction2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QMenu_addAction2" qtc_QMenu_addAction2 :: Ptr (TQMenu a) -> Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((QIcon t1, String)) (IO (QAction ())) where
 addAction x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMenu_addAction2 cobj_x0 cobj_x1 cstr_x2

instance QaddAction (QMenu ()) ((QIcon t1, String, QObject t3, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMenu_addAction4 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QMenu_addAction4" qtc_QMenu_addAction4 :: Ptr (TQMenu a) -> Ptr (TQIcon t1) -> CWString -> Ptr (TQObject t3) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((QIcon t1, String, QObject t3, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMenu_addAction4 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4

instance QaddAction (QMenu ()) ((QIcon t1, String, QObject t3, String, QKeySequence t5)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4, x5)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QMenu_addAction6 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4 cobj_x5

foreign import ccall "qtc_QMenu_addAction6" qtc_QMenu_addAction6 :: Ptr (TQMenu a) -> Ptr (TQIcon t1) -> CWString -> Ptr (TQObject t3) -> CWString -> Ptr (TQKeySequence t5) -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((QIcon t1, String, QObject t3, String, QKeySequence t5)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4, x5)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QMenu_addAction6 cobj_x0 cobj_x1 cstr_x2 cobj_x3 cstr_x4 cobj_x5

instance QaddAction (QMenu ()) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_addAction1 cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_addAction1" qtc_QMenu_addAction1 :: Ptr (TQMenu a) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((String)) (IO (QAction ())) where
 addAction x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_addAction1 cobj_x0 cstr_x1

instance QaddAction (QMenu ()) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMenu_addAction3 cobj_x0 cstr_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QMenu_addAction3" qtc_QMenu_addAction3 :: Ptr (TQMenu a) -> CWString -> Ptr (TQObject t2) -> CWString -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((String, QObject t2, String)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMenu_addAction3 cobj_x0 cstr_x1 cobj_x2 cstr_x3

instance QaddAction (QMenu ()) ((String, QObject t2, String, QKeySequence t4)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QMenu_addAction5 cobj_x0 cstr_x1 cobj_x2 cstr_x3 cobj_x4

foreign import ccall "qtc_QMenu_addAction5" qtc_QMenu_addAction5 :: Ptr (TQMenu a) -> CWString -> Ptr (TQObject t2) -> CWString -> Ptr (TQKeySequence t4) -> IO (Ptr (TQAction ()))

instance QaddAction (QMenuSc a) ((String, QObject t2, String, QKeySequence t4)) (IO (QAction ())) where
 addAction x0 (x1, x2, x3, x4)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QMenu_addAction5 cobj_x0 cstr_x1 cobj_x2 cstr_x3 cobj_x4

instance QaddMenu (QMenu a) ((QMenu t1)) (IO (QAction ())) where
 addMenu x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_addMenu cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_addMenu" qtc_QMenu_addMenu :: Ptr (TQMenu a) -> Ptr (TQMenu t1) -> IO (Ptr (TQAction ()))

instance QaddMenu (QMenu a) ((QIcon t1, String)) (IO (QMenu ())) where
 addMenu x0 (x1, x2)
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMenu_addMenu2 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QMenu_addMenu2" qtc_QMenu_addMenu2 :: Ptr (TQMenu a) -> Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQMenu ()))

instance QaddMenu (QMenu a) ((String)) (IO (QMenu ())) where
 addMenu x0 (x1)
  = withQMenuResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_addMenu1 cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_addMenu1" qtc_QMenu_addMenu1 :: Ptr (TQMenu a) -> CWString -> IO (Ptr (TQMenu ()))

instance QaddSeparator (QMenu a) (()) where
 addSeparator x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_addSeparator cobj_x0

foreign import ccall "qtc_QMenu_addSeparator" qtc_QMenu_addSeparator :: Ptr (TQMenu a) -> IO (Ptr (TQAction ()))

instance QchangeEvent (QMenu ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_changeEvent_h" qtc_QMenu_changeEvent_h :: Ptr (TQMenu a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QMenuSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QMenu a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_clear cobj_x0

foreign import ccall "qtc_QMenu_clear" qtc_QMenu_clear :: Ptr (TQMenu a) -> IO ()

instance QcolumnCount (QMenu ()) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_columnCount cobj_x0

foreign import ccall "qtc_QMenu_columnCount" qtc_QMenu_columnCount :: Ptr (TQMenu a) -> IO CInt

instance QcolumnCount (QMenuSc a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_columnCount cobj_x0

instance QdefaultAction (QMenu a) (()) where
 defaultAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_defaultAction cobj_x0

foreign import ccall "qtc_QMenu_defaultAction" qtc_QMenu_defaultAction :: Ptr (TQMenu a) -> IO (Ptr (TQAction ()))

instance QenterEvent (QMenu ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_enterEvent_h" qtc_QMenu_enterEvent_h :: Ptr (TQMenu a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QMenuSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_enterEvent_h cobj_x0 cobj_x1

instance Qevent (QMenu ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_event_h" qtc_QMenu_event_h :: Ptr (TQMenu a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMenuSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_event_h cobj_x0 cobj_x1

class Qqexec x1 where
 qexec :: QMenu a -> x1 -> IO (QAction ())

instance Qexec (QMenu a) (()) (IO (QAction ())) where
 exec x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_exec cobj_x0

foreign import ccall "qtc_QMenu_exec" qtc_QMenu_exec :: Ptr (TQMenu a) -> IO (Ptr (TQAction ()))

instance Qexec (QMenu a) ((Point)) (IO (QAction ())) where
 exec x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenu_exec1_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenu_exec1_qth" qtc_QMenu_exec1_qth :: Ptr (TQMenu a) -> CInt -> CInt -> IO (Ptr (TQAction ()))

instance Qexec (QMenu a) ((Point, QAction t2)) (IO (QAction ())) where
 exec x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_exec2_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QMenu_exec2_qth" qtc_QMenu_exec2_qth :: Ptr (TQMenu a) -> CInt -> CInt -> Ptr (TQAction t2) -> IO (Ptr (TQAction ()))

instance Qqexec ((QPoint t1)) where
 qexec x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_exec1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_exec1" qtc_QMenu_exec1 :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> IO (Ptr (TQAction ()))

instance Qqexec ((QPoint t1, QAction t2)) where
 qexec x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_exec2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenu_exec2" qtc_QMenu_exec2 :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> Ptr (TQAction t2) -> IO (Ptr (TQAction ()))

instance QfocusNextPrevChild (QMenu ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_focusNextPrevChild" qtc_QMenu_focusNextPrevChild :: Ptr (TQMenu a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QMenuSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusNextPrevChild cobj_x0 (toCBool x1)

instance QhideEvent (QMenu ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_hideEvent_h" qtc_QMenu_hideEvent_h :: Ptr (TQMenu a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QMenuSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_hideEvent_h cobj_x0 cobj_x1

hideTearOffMenu :: QMenu a -> (()) -> IO ()
hideTearOffMenu x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_hideTearOffMenu cobj_x0

foreign import ccall "qtc_QMenu_hideTearOffMenu" qtc_QMenu_hideTearOffMenu :: Ptr (TQMenu a) -> IO ()

instance Qicon (QMenu a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_icon cobj_x0

foreign import ccall "qtc_QMenu_icon" qtc_QMenu_icon :: Ptr (TQMenu a) -> IO (Ptr (TQIcon ()))

instance QinitStyleOption (QMenu ()) ((QStyleOptionMenuItem t1, QAction t2)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_initStyleOption cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenu_initStyleOption" qtc_QMenu_initStyleOption :: Ptr (TQMenu a) -> Ptr (TQStyleOptionMenuItem t1) -> Ptr (TQAction t2) -> IO ()

instance QinitStyleOption (QMenuSc a) ((QStyleOptionMenuItem t1, QAction t2)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_initStyleOption cobj_x0 cobj_x1 cobj_x2

instance QinsertMenu (QMenu a) ((QAction t1, QMenu t2)) where
 insertMenu x0 (x1, x2)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_insertMenu cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenu_insertMenu" qtc_QMenu_insertMenu :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> Ptr (TQMenu t2) -> IO (Ptr (TQAction ()))

instance QinsertSeparator (QMenu a) ((QAction t1)) where
 insertSeparator x0 (x1)
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_insertSeparator cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_insertSeparator" qtc_QMenu_insertSeparator :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> IO (Ptr (TQAction ()))

instance QqisEmpty (QMenu a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_isEmpty cobj_x0

foreign import ccall "qtc_QMenu_isEmpty" qtc_QMenu_isEmpty :: Ptr (TQMenu a) -> IO CBool

isTearOffEnabled :: QMenu a -> (()) -> IO (Bool)
isTearOffEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_isTearOffEnabled cobj_x0

foreign import ccall "qtc_QMenu_isTearOffEnabled" qtc_QMenu_isTearOffEnabled :: Ptr (TQMenu a) -> IO CBool

isTearOffMenuVisible :: QMenu a -> (()) -> IO (Bool)
isTearOffMenuVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_isTearOffMenuVisible cobj_x0

foreign import ccall "qtc_QMenu_isTearOffMenuVisible" qtc_QMenu_isTearOffMenuVisible :: Ptr (TQMenu a) -> IO CBool

instance QkeyPressEvent (QMenu ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_keyPressEvent_h" qtc_QMenu_keyPressEvent_h :: Ptr (TQMenu a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QMenuSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_keyPressEvent_h cobj_x0 cobj_x1

instance QleaveEvent (QMenu ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_leaveEvent_h" qtc_QMenu_leaveEvent_h :: Ptr (TQMenu a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QMenuSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_leaveEvent_h cobj_x0 cobj_x1

menuAction :: QMenu a -> (()) -> IO (QAction ())
menuAction x0 ()
  = withQActionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_menuAction cobj_x0

foreign import ccall "qtc_QMenu_menuAction" qtc_QMenu_menuAction :: Ptr (TQMenu a) -> IO (Ptr (TQAction ()))

instance QmouseMoveEvent (QMenu ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_mouseMoveEvent_h" qtc_QMenu_mouseMoveEvent_h :: Ptr (TQMenu a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QMenuSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QMenu ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_mousePressEvent_h" qtc_QMenu_mousePressEvent_h :: Ptr (TQMenu a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QMenuSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QMenu ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_mouseReleaseEvent_h" qtc_QMenu_mouseReleaseEvent_h :: Ptr (TQMenu a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QMenuSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QMenu ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_paintEvent_h" qtc_QMenu_paintEvent_h :: Ptr (TQMenu a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QMenuSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_paintEvent_h cobj_x0 cobj_x1

class Qqpopup x1 where
 qpopup :: QMenu a -> x1 -> IO ()

instance Qpopup (QMenu a) ((Point)) (IO ()) where
 popup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenu_popup_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenu_popup_qth" qtc_QMenu_popup_qth :: Ptr (TQMenu a) -> CInt -> CInt -> IO ()

instance Qpopup (QMenu a) ((Point, QAction t2)) (IO ()) where
 popup x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_popup1_qth cobj_x0 cpoint_x1_x cpoint_x1_y  cobj_x2

foreign import ccall "qtc_QMenu_popup1_qth" qtc_QMenu_popup1_qth :: Ptr (TQMenu a) -> CInt -> CInt -> Ptr (TQAction t2) -> IO ()

instance Qqpopup ((QPoint t1)) where
 qpopup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_popup cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_popup" qtc_QMenu_popup :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> IO ()

instance Qqpopup ((QPoint t1, QAction t2)) where
 qpopup x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_popup1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenu_popup1" qtc_QMenu_popup1 :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> Ptr (TQAction t2) -> IO ()

separatorsCollapsible :: QMenu a -> (()) -> IO (Bool)
separatorsCollapsible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_separatorsCollapsible cobj_x0

foreign import ccall "qtc_QMenu_separatorsCollapsible" qtc_QMenu_separatorsCollapsible :: Ptr (TQMenu a) -> IO CBool

instance QsetActiveAction (QMenu a) ((QAction t1)) where
 setActiveAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setActiveAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_setActiveAction" qtc_QMenu_setActiveAction :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> IO ()

instance QsetDefaultAction (QMenu a) ((QAction t1)) where
 setDefaultAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setDefaultAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_setDefaultAction" qtc_QMenu_setDefaultAction :: Ptr (TQMenu a) -> Ptr (TQAction t1) -> IO ()

instance QsetIcon (QMenu a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_setIcon" qtc_QMenu_setIcon :: Ptr (TQMenu a) -> Ptr (TQIcon t1) -> IO ()

setNoReplayFor :: QMenu a -> ((QWidget t1)) -> IO ()
setNoReplayFor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setNoReplayFor cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_setNoReplayFor" qtc_QMenu_setNoReplayFor :: Ptr (TQMenu a) -> Ptr (TQWidget t1) -> IO ()

setSeparatorsCollapsible :: QMenu a -> ((Bool)) -> IO ()
setSeparatorsCollapsible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setSeparatorsCollapsible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_setSeparatorsCollapsible" qtc_QMenu_setSeparatorsCollapsible :: Ptr (TQMenu a) -> CBool -> IO ()

setTearOffEnabled :: QMenu a -> ((Bool)) -> IO ()
setTearOffEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setTearOffEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_setTearOffEnabled" qtc_QMenu_setTearOffEnabled :: Ptr (TQMenu a) -> CBool -> IO ()

instance QsetTitle (QMenu a) ((String)) where
 setTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_setTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_setTitle" qtc_QMenu_setTitle :: Ptr (TQMenu a) -> CWString -> IO ()

instance QqsizeHint (QMenu ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sizeHint_h cobj_x0

foreign import ccall "qtc_QMenu_sizeHint_h" qtc_QMenu_sizeHint_h :: Ptr (TQMenu a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QMenuSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sizeHint_h cobj_x0

instance QsizeHint (QMenu ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMenu_sizeHint_qth_h" qtc_QMenu_sizeHint_qth_h :: Ptr (TQMenu a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QMenuSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtimerEvent (QMenu ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_timerEvent" qtc_QMenu_timerEvent :: Ptr (TQMenu a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMenuSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_timerEvent cobj_x0 cobj_x1

instance Qtitle (QMenu a) (()) where
 title x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_title cobj_x0

foreign import ccall "qtc_QMenu_title" qtc_QMenu_title :: Ptr (TQMenu a) -> IO (Ptr (TQString ()))

instance QwheelEvent (QMenu ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_wheelEvent_h" qtc_QMenu_wheelEvent_h :: Ptr (TQMenu a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QMenuSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_wheelEvent_h cobj_x0 cobj_x1

qMenu_delete :: QMenu a -> IO ()
qMenu_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_delete cobj_x0

foreign import ccall "qtc_QMenu_delete" qtc_QMenu_delete :: Ptr (TQMenu a) -> IO ()

qMenu_deleteLater :: QMenu a -> IO ()
qMenu_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_deleteLater cobj_x0

foreign import ccall "qtc_QMenu_deleteLater" qtc_QMenu_deleteLater :: Ptr (TQMenu a) -> IO ()

instance QcloseEvent (QMenu ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_closeEvent_h" qtc_QMenu_closeEvent_h :: Ptr (TQMenu a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QMenuSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QMenu ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_contextMenuEvent_h" qtc_QMenu_contextMenuEvent_h :: Ptr (TQMenu a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QMenuSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QMenu ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_create cobj_x0

foreign import ccall "qtc_QMenu_create" qtc_QMenu_create :: Ptr (TQMenu a) -> IO ()

instance Qcreate (QMenuSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_create cobj_x0

instance Qcreate (QMenu ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_create1" qtc_QMenu_create1 :: Ptr (TQMenu a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QMenuSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create1 cobj_x0 cobj_x1

instance Qcreate (QMenu ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QMenu_create2" qtc_QMenu_create2 :: Ptr (TQMenu a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QMenuSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QMenu ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QMenu_create3" qtc_QMenu_create3 :: Ptr (TQMenu a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QMenuSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QMenu ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy cobj_x0

foreign import ccall "qtc_QMenu_destroy" qtc_QMenu_destroy :: Ptr (TQMenu a) -> IO ()

instance Qdestroy (QMenuSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy cobj_x0

instance Qdestroy (QMenu ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_destroy1" qtc_QMenu_destroy1 :: Ptr (TQMenu a) -> CBool -> IO ()

instance Qdestroy (QMenuSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QMenu ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QMenu_destroy2" qtc_QMenu_destroy2 :: Ptr (TQMenu a) -> CBool -> CBool -> IO ()

instance Qdestroy (QMenuSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QMenu ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_devType_h cobj_x0

foreign import ccall "qtc_QMenu_devType_h" qtc_QMenu_devType_h :: Ptr (TQMenu a) -> IO CInt

instance QdevType (QMenuSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_devType_h cobj_x0

instance QdragEnterEvent (QMenu ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_dragEnterEvent_h" qtc_QMenu_dragEnterEvent_h :: Ptr (TQMenu a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QMenuSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QMenu ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_dragLeaveEvent_h" qtc_QMenu_dragLeaveEvent_h :: Ptr (TQMenu a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QMenuSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QMenu ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_dragMoveEvent_h" qtc_QMenu_dragMoveEvent_h :: Ptr (TQMenu a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QMenuSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QMenu ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_dropEvent_h" qtc_QMenu_dropEvent_h :: Ptr (TQMenu a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QMenuSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QMenu ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_enabledChange" qtc_QMenu_enabledChange :: Ptr (TQMenu a) -> CBool -> IO ()

instance QenabledChange (QMenuSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_enabledChange cobj_x0 (toCBool x1)

instance QfocusInEvent (QMenu ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_focusInEvent_h" qtc_QMenu_focusInEvent_h :: Ptr (TQMenu a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QMenuSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QMenu ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusNextChild cobj_x0

foreign import ccall "qtc_QMenu_focusNextChild" qtc_QMenu_focusNextChild :: Ptr (TQMenu a) -> IO CBool

instance QfocusNextChild (QMenuSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusNextChild cobj_x0

instance QfocusOutEvent (QMenu ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_focusOutEvent_h" qtc_QMenu_focusOutEvent_h :: Ptr (TQMenu a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QMenuSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QMenu ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusPreviousChild cobj_x0

foreign import ccall "qtc_QMenu_focusPreviousChild" qtc_QMenu_focusPreviousChild :: Ptr (TQMenu a) -> IO CBool

instance QfocusPreviousChild (QMenuSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_focusPreviousChild cobj_x0

instance QfontChange (QMenu ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_fontChange" qtc_QMenu_fontChange :: Ptr (TQMenu a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QMenuSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QMenu ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMenu_heightForWidth_h" qtc_QMenu_heightForWidth_h :: Ptr (TQMenu a) -> CInt -> IO CInt

instance QheightForWidth (QMenuSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QMenu ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_inputMethodEvent" qtc_QMenu_inputMethodEvent :: Ptr (TQMenu a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QMenuSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QMenu ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMenu_inputMethodQuery_h" qtc_QMenu_inputMethodQuery_h :: Ptr (TQMenu a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QMenuSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QMenu ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_keyReleaseEvent_h" qtc_QMenu_keyReleaseEvent_h :: Ptr (TQMenu a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QMenuSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QMenu ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_languageChange cobj_x0

foreign import ccall "qtc_QMenu_languageChange" qtc_QMenu_languageChange :: Ptr (TQMenu a) -> IO ()

instance QlanguageChange (QMenuSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_languageChange cobj_x0

instance Qmetric (QMenu ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMenu_metric" qtc_QMenu_metric :: Ptr (TQMenu a) -> CLong -> IO CInt

instance Qmetric (QMenuSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QqminimumSizeHint (QMenu ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QMenu_minimumSizeHint_h" qtc_QMenu_minimumSizeHint_h :: Ptr (TQMenu a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QMenuSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QMenu ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMenu_minimumSizeHint_qth_h" qtc_QMenu_minimumSizeHint_qth_h :: Ptr (TQMenu a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QMenuSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseDoubleClickEvent (QMenu ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_mouseDoubleClickEvent_h" qtc_QMenu_mouseDoubleClickEvent_h :: Ptr (TQMenu a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QMenuSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QMenu ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMenu_move1" qtc_QMenu_move1 :: Ptr (TQMenu a) -> CInt -> CInt -> IO ()

instance Qmove (QMenuSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QMenu ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenu_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMenu_move_qth" qtc_QMenu_move_qth :: Ptr (TQMenu a) -> CInt -> CInt -> IO ()

instance Qmove (QMenuSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMenu_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QMenu ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_move cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_move" qtc_QMenu_move :: Ptr (TQMenu a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QMenuSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_move cobj_x0 cobj_x1

instance QmoveEvent (QMenu ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_moveEvent_h" qtc_QMenu_moveEvent_h :: Ptr (TQMenu a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QMenuSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QMenu ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_paintEngine_h cobj_x0

foreign import ccall "qtc_QMenu_paintEngine_h" qtc_QMenu_paintEngine_h :: Ptr (TQMenu a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QMenuSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_paintEngine_h cobj_x0

instance QpaletteChange (QMenu ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_paletteChange" qtc_QMenu_paletteChange :: Ptr (TQMenu a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QMenuSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QMenu ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_repaint cobj_x0

foreign import ccall "qtc_QMenu_repaint" qtc_QMenu_repaint :: Ptr (TQMenu a) -> IO ()

instance Qrepaint (QMenuSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_repaint cobj_x0

instance Qrepaint (QMenu ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMenu_repaint2" qtc_QMenu_repaint2 :: Ptr (TQMenu a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QMenuSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QMenu ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_repaint1" qtc_QMenu_repaint1 :: Ptr (TQMenu a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QMenuSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QMenu ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_resetInputContext cobj_x0

foreign import ccall "qtc_QMenu_resetInputContext" qtc_QMenu_resetInputContext :: Ptr (TQMenu a) -> IO ()

instance QresetInputContext (QMenuSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_resetInputContext cobj_x0

instance Qresize (QMenu ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMenu_resize1" qtc_QMenu_resize1 :: Ptr (TQMenu a) -> CInt -> CInt -> IO ()

instance Qresize (QMenuSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QMenu ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_resize" qtc_QMenu_resize :: Ptr (TQMenu a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QMenuSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_resize cobj_x0 cobj_x1

instance Qresize (QMenu ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMenu_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMenu_resize_qth" qtc_QMenu_resize_qth :: Ptr (TQMenu a) -> CInt -> CInt -> IO ()

instance Qresize (QMenuSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMenu_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QMenu ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_resizeEvent_h" qtc_QMenu_resizeEvent_h :: Ptr (TQMenu a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QMenuSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QMenu ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMenu_setGeometry1" qtc_QMenu_setGeometry1 :: Ptr (TQMenu a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMenuSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QMenu ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_setGeometry" qtc_QMenu_setGeometry :: Ptr (TQMenu a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QMenuSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QMenu ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMenu_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QMenu_setGeometry_qth" qtc_QMenu_setGeometry_qth :: Ptr (TQMenu a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMenuSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMenu_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QMenu ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_setMouseTracking" qtc_QMenu_setMouseTracking :: Ptr (TQMenu a) -> CBool -> IO ()

instance QsetMouseTracking (QMenuSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QMenu ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_setVisible_h" qtc_QMenu_setVisible_h :: Ptr (TQMenu a) -> CBool -> IO ()

instance QsetVisible (QMenuSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QMenu ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_showEvent_h" qtc_QMenu_showEvent_h :: Ptr (TQMenu a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QMenuSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QMenu ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_tabletEvent_h" qtc_QMenu_tabletEvent_h :: Ptr (TQMenu a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QMenuSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QMenu ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_updateMicroFocus cobj_x0

foreign import ccall "qtc_QMenu_updateMicroFocus" qtc_QMenu_updateMicroFocus :: Ptr (TQMenu a) -> IO ()

instance QupdateMicroFocus (QMenuSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_updateMicroFocus cobj_x0

instance QwindowActivationChange (QMenu ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMenu_windowActivationChange" qtc_QMenu_windowActivationChange :: Ptr (TQMenu a) -> CBool -> IO ()

instance QwindowActivationChange (QMenuSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QMenu ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_childEvent" qtc_QMenu_childEvent :: Ptr (TQMenu a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMenuSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMenu ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_connectNotify" qtc_QMenu_connectNotify :: Ptr (TQMenu a) -> CWString -> IO ()

instance QconnectNotify (QMenuSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMenu ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMenu_customEvent" qtc_QMenu_customEvent :: Ptr (TQMenu a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMenuSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMenu_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMenu ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_disconnectNotify" qtc_QMenu_disconnectNotify :: Ptr (TQMenu a) -> CWString -> IO ()

instance QdisconnectNotify (QMenuSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QMenu ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMenu_eventFilter_h" qtc_QMenu_eventFilter_h :: Ptr (TQMenu a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMenuSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMenu_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QMenu ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMenu_receivers" qtc_QMenu_receivers :: Ptr (TQMenu a) -> CWString -> IO CInt

instance Qreceivers (QMenuSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMenu_receivers cobj_x0 cstr_x1

instance Qsender (QMenu ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sender cobj_x0

foreign import ccall "qtc_QMenu_sender" qtc_QMenu_sender :: Ptr (TQMenu a) -> IO (Ptr (TQObject ()))

instance Qsender (QMenuSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMenu_sender cobj_x0

