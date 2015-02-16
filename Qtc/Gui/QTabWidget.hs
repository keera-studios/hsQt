{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTabWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTabWidget (
  QqTabWidget(..)
  ,QsetTabBar(..)
  ,setTabShape
  ,QtabBar(..)
  ,tabPosition
  ,tabShape
  ,qTabWidget_delete
  ,qTabWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTabWidget
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTabWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTabWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTabWidget_userMethod" qtc_QTabWidget_userMethod :: Ptr (TQTabWidget a) -> CInt -> IO ()

instance QuserMethod (QTabWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTabWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTabWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTabWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTabWidget_userMethodVariant" qtc_QTabWidget_userMethodVariant :: Ptr (TQTabWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTabWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTabWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTabWidget x1 where
  qTabWidget :: x1 -> IO (QTabWidget ())

instance QqTabWidget (()) where
 qTabWidget ()
  = withQTabWidgetResult $
    qtc_QTabWidget

foreign import ccall "qtc_QTabWidget" qtc_QTabWidget :: IO (Ptr (TQTabWidget ()))

instance QqTabWidget ((QWidget t1)) where
 qTabWidget (x1)
  = withQTabWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget1 cobj_x1

foreign import ccall "qtc_QTabWidget1" qtc_QTabWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTabWidget ()))

instance QaddTab (QTabWidget a) ((QWidget t1, QIcon t2, String)) where
 addTab x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTabWidget_addTab1 cobj_x0 cobj_x1 cobj_x2 cstr_x3

foreign import ccall "qtc_QTabWidget_addTab1" qtc_QTabWidget_addTab1 :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> Ptr (TQIcon t2) -> CWString -> IO CInt

instance QaddTab (QTabWidget a) ((QWidget t1, String)) where
 addTab x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabWidget_addTab cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QTabWidget_addTab" qtc_QTabWidget_addTab :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> CWString -> IO CInt

instance QchangeEvent (QTabWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_changeEvent_h" qtc_QTabWidget_changeEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTabWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QTabWidget a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_clear cobj_x0

foreign import ccall "qtc_QTabWidget_clear" qtc_QTabWidget_clear :: Ptr (TQTabWidget a) -> IO ()

instance QcornerWidget (QTabWidget a) (()) where
 cornerWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_cornerWidget cobj_x0

foreign import ccall "qtc_QTabWidget_cornerWidget" qtc_QTabWidget_cornerWidget :: Ptr (TQTabWidget a) -> IO (Ptr (TQWidget ()))

instance QcornerWidget (QTabWidget a) ((Corner)) where
 cornerWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_cornerWidget1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_cornerWidget1" qtc_QTabWidget_cornerWidget1 :: Ptr (TQTabWidget a) -> CLong -> IO (Ptr (TQWidget ()))

instance Qcount (QTabWidget a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_count cobj_x0

foreign import ccall "qtc_QTabWidget_count" qtc_QTabWidget_count :: Ptr (TQTabWidget a) -> IO CInt

instance QcurrentIndex (QTabWidget a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_currentIndex cobj_x0

foreign import ccall "qtc_QTabWidget_currentIndex" qtc_QTabWidget_currentIndex :: Ptr (TQTabWidget a) -> IO CInt

instance QcurrentWidget (QTabWidget a) (()) where
 currentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_currentWidget cobj_x0

foreign import ccall "qtc_QTabWidget_currentWidget" qtc_QTabWidget_currentWidget :: Ptr (TQTabWidget a) -> IO (Ptr (TQWidget ()))

instance QelideMode (QTabWidget a) (()) where
 elideMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_elideMode cobj_x0

foreign import ccall "qtc_QTabWidget_elideMode" qtc_QTabWidget_elideMode :: Ptr (TQTabWidget a) -> IO CLong

instance Qevent (QTabWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_event_h" qtc_QTabWidget_event_h :: Ptr (TQTabWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTabWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_event_h cobj_x0 cobj_x1

instance QqiconSize (QTabWidget a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_iconSize cobj_x0

foreign import ccall "qtc_QTabWidget_iconSize" qtc_QTabWidget_iconSize :: Ptr (TQTabWidget a) -> IO (Ptr (TQSize ()))

instance QiconSize (QTabWidget a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabWidget_iconSize_qth" qtc_QTabWidget_iconSize_qth :: Ptr (TQTabWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QindexOf (QTabWidget a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_indexOf cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_indexOf" qtc_QTabWidget_indexOf :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> IO CInt

instance QinitStyleOption (QTabWidget ()) ((QStyleOptionTabWidgetFrame t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_initStyleOption" qtc_QTabWidget_initStyleOption :: Ptr (TQTabWidget a) -> Ptr (TQStyleOptionTabWidgetFrame t1) -> IO ()

instance QinitStyleOption (QTabWidgetSc a) ((QStyleOptionTabWidgetFrame t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_initStyleOption cobj_x0 cobj_x1

instance QinsertTab (QTabWidget a) ((Int, QWidget t2, QIcon t3, String)) where
 insertTab x0 (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QTabWidget_insertTab1 cobj_x0 (toCInt x1) cobj_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QTabWidget_insertTab1" qtc_QTabWidget_insertTab1 :: Ptr (TQTabWidget a) -> CInt -> Ptr (TQWidget t2) -> Ptr (TQIcon t3) -> CWString -> IO CInt

instance QinsertTab (QTabWidget a) ((Int, QWidget t2, String)) where
 insertTab x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTabWidget_insertTab cobj_x0 (toCInt x1) cobj_x2 cstr_x3

foreign import ccall "qtc_QTabWidget_insertTab" qtc_QTabWidget_insertTab :: Ptr (TQTabWidget a) -> CInt -> Ptr (TQWidget t2) -> CWString -> IO CInt

instance QisTabEnabled (QTabWidget a) ((Int)) where
 isTabEnabled x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_isTabEnabled cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_isTabEnabled" qtc_QTabWidget_isTabEnabled :: Ptr (TQTabWidget a) -> CInt -> IO CBool

instance QkeyPressEvent (QTabWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_keyPressEvent_h" qtc_QTabWidget_keyPressEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTabWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTabWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTabWidget_minimumSizeHint_h" qtc_QTabWidget_minimumSizeHint_h :: Ptr (TQTabWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTabWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTabWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabWidget_minimumSizeHint_qth_h" qtc_QTabWidget_minimumSizeHint_qth_h :: Ptr (TQTabWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTabWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QpaintEvent (QTabWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_paintEvent_h" qtc_QTabWidget_paintEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTabWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_paintEvent_h cobj_x0 cobj_x1

instance QremoveTab (QTabWidget a) ((Int)) where
 removeTab x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_removeTab cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_removeTab" qtc_QTabWidget_removeTab :: Ptr (TQTabWidget a) -> CInt -> IO ()

instance QresizeEvent (QTabWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_resizeEvent_h" qtc_QTabWidget_resizeEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTabWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_resizeEvent_h cobj_x0 cobj_x1

instance QsetCornerWidget (QTabWidget a) ((QWidget t1)) where
 setCornerWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setCornerWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_setCornerWidget" qtc_QTabWidget_setCornerWidget :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetCornerWidget (QTabWidget a) ((QWidget t1, Corner)) where
 setCornerWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setCornerWidget1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTabWidget_setCornerWidget1" qtc_QTabWidget_setCornerWidget1 :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QsetCurrentIndex (QTabWidget a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_setCurrentIndex" qtc_QTabWidget_setCurrentIndex :: Ptr (TQTabWidget a) -> CInt -> IO ()

instance QsetCurrentWidget (QTabWidget a) ((QWidget t1)) where
 setCurrentWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setCurrentWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_setCurrentWidget" qtc_QTabWidget_setCurrentWidget :: Ptr (TQTabWidget a) -> Ptr (TQWidget t1) -> IO ()

instance QsetElideMode (QTabWidget a) ((TextElideMode)) where
 setElideMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setElideMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_setElideMode" qtc_QTabWidget_setElideMode :: Ptr (TQTabWidget a) -> CLong -> IO ()

instance QqsetIconSize (QTabWidget a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_setIconSize" qtc_QTabWidget_setIconSize :: Ptr (TQTabWidget a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QTabWidget a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabWidget_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTabWidget_setIconSize_qth" qtc_QTabWidget_setIconSize_qth :: Ptr (TQTabWidget a) -> CInt -> CInt -> IO ()

class QsetTabBar x0 x1 where
 setTabBar :: x0 -> x1 -> IO ()

instance QsetTabBar (QTabWidget ()) ((QTabBar t1)) where
 setTabBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setTabBar cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_setTabBar" qtc_QTabWidget_setTabBar :: Ptr (TQTabWidget a) -> Ptr (TQTabBar t1) -> IO ()

instance QsetTabBar (QTabWidgetSc a) ((QTabBar t1)) where
 setTabBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setTabBar cobj_x0 cobj_x1

instance QsetTabEnabled (QTabWidget a) ((Int, Bool)) where
 setTabEnabled x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setTabEnabled cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QTabWidget_setTabEnabled" qtc_QTabWidget_setTabEnabled :: Ptr (TQTabWidget a) -> CInt -> CBool -> IO ()

instance QsetTabIcon (QTabWidget a) ((Int, QIcon t2)) where
 setTabIcon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabWidget_setTabIcon cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTabWidget_setTabIcon" qtc_QTabWidget_setTabIcon :: Ptr (TQTabWidget a) -> CInt -> Ptr (TQIcon t2) -> IO ()

instance QsetTabPosition (QTabWidget a) ((QTabWidgetTabPosition)) where
 setTabPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setTabPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_setTabPosition" qtc_QTabWidget_setTabPosition :: Ptr (TQTabWidget a) -> CLong -> IO ()

setTabShape :: QTabWidget a -> ((TabShape)) -> IO ()
setTabShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setTabShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_setTabShape" qtc_QTabWidget_setTabShape :: Ptr (TQTabWidget a) -> CLong -> IO ()

instance QsetTabText (QTabWidget a) ((Int, String)) where
 setTabText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabWidget_setTabText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabWidget_setTabText" qtc_QTabWidget_setTabText :: Ptr (TQTabWidget a) -> CInt -> CWString -> IO ()

instance QsetTabToolTip (QTabWidget a) ((Int, String)) where
 setTabToolTip x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabWidget_setTabToolTip cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabWidget_setTabToolTip" qtc_QTabWidget_setTabToolTip :: Ptr (TQTabWidget a) -> CInt -> CWString -> IO ()

instance QsetTabWhatsThis (QTabWidget a) ((Int, String)) where
 setTabWhatsThis x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabWidget_setTabWhatsThis cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabWidget_setTabWhatsThis" qtc_QTabWidget_setTabWhatsThis :: Ptr (TQTabWidget a) -> CInt -> CWString -> IO ()

instance QsetUsesScrollButtons (QTabWidget a) ((Bool)) where
 setUsesScrollButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setUsesScrollButtons cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_setUsesScrollButtons" qtc_QTabWidget_setUsesScrollButtons :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance QshowEvent (QTabWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_showEvent_h" qtc_QTabWidget_showEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTabWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QTabWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QTabWidget_sizeHint_h" qtc_QTabWidget_sizeHint_h :: Ptr (TQTabWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTabWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sizeHint_h cobj_x0

instance QsizeHint (QTabWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabWidget_sizeHint_qth_h" qtc_QTabWidget_sizeHint_qth_h :: Ptr (TQTabWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTabWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

class QtabBar x0 x1 where
 tabBar :: x0 -> x1 -> IO (QTabBar ())

instance QtabBar (QTabWidget ()) (()) where
 tabBar x0 ()
  = withQTabBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabBar cobj_x0

foreign import ccall "qtc_QTabWidget_tabBar" qtc_QTabWidget_tabBar :: Ptr (TQTabWidget a) -> IO (Ptr (TQTabBar ()))

instance QtabBar (QTabWidgetSc a) (()) where
 tabBar x0 ()
  = withQTabBarResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabBar cobj_x0

instance QtabIcon (QTabWidget a) ((Int)) where
 tabIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabIcon cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabIcon" qtc_QTabWidget_tabIcon :: Ptr (TQTabWidget a) -> CInt -> IO (Ptr (TQIcon ()))

instance QtabInserted (QTabWidget ()) ((Int)) where
 tabInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabInserted_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabInserted_h" qtc_QTabWidget_tabInserted_h :: Ptr (TQTabWidget a) -> CInt -> IO ()

instance QtabInserted (QTabWidgetSc a) ((Int)) where
 tabInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabInserted_h cobj_x0 (toCInt x1)

tabPosition :: QTabWidget a -> (()) -> IO (QTabWidgetTabPosition)
tabPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabPosition cobj_x0

foreign import ccall "qtc_QTabWidget_tabPosition" qtc_QTabWidget_tabPosition :: Ptr (TQTabWidget a) -> IO CLong

instance QtabRemoved (QTabWidget ()) ((Int)) where
 tabRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabRemoved_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabRemoved_h" qtc_QTabWidget_tabRemoved_h :: Ptr (TQTabWidget a) -> CInt -> IO ()

instance QtabRemoved (QTabWidgetSc a) ((Int)) where
 tabRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabRemoved_h cobj_x0 (toCInt x1)

tabShape :: QTabWidget a -> (()) -> IO (TabShape)
tabShape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabShape cobj_x0

foreign import ccall "qtc_QTabWidget_tabShape" qtc_QTabWidget_tabShape :: Ptr (TQTabWidget a) -> IO CLong

instance QtabText (QTabWidget a) ((Int)) where
 tabText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabText cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabText" qtc_QTabWidget_tabText :: Ptr (TQTabWidget a) -> CInt -> IO (Ptr (TQString ()))

instance QtabToolTip (QTabWidget a) ((Int)) where
 tabToolTip x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabToolTip cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabToolTip" qtc_QTabWidget_tabToolTip :: Ptr (TQTabWidget a) -> CInt -> IO (Ptr (TQString ()))

instance QtabWhatsThis (QTabWidget a) ((Int)) where
 tabWhatsThis x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_tabWhatsThis cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_tabWhatsThis" qtc_QTabWidget_tabWhatsThis :: Ptr (TQTabWidget a) -> CInt -> IO (Ptr (TQString ()))

instance QusesScrollButtons (QTabWidget a) (()) where
 usesScrollButtons x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_usesScrollButtons cobj_x0

foreign import ccall "qtc_QTabWidget_usesScrollButtons" qtc_QTabWidget_usesScrollButtons :: Ptr (TQTabWidget a) -> IO CBool

instance Qwidget (QTabWidget a) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_widget cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_widget" qtc_QTabWidget_widget :: Ptr (TQTabWidget a) -> CInt -> IO (Ptr (TQWidget ()))

qTabWidget_delete :: QTabWidget a -> IO ()
qTabWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_delete cobj_x0

foreign import ccall "qtc_QTabWidget_delete" qtc_QTabWidget_delete :: Ptr (TQTabWidget a) -> IO ()

qTabWidget_deleteLater :: QTabWidget a -> IO ()
qTabWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_deleteLater cobj_x0

foreign import ccall "qtc_QTabWidget_deleteLater" qtc_QTabWidget_deleteLater :: Ptr (TQTabWidget a) -> IO ()

instance QactionEvent (QTabWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_actionEvent_h" qtc_QTabWidget_actionEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTabWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTabWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_addAction" qtc_QTabWidget_addAction :: Ptr (TQTabWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTabWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTabWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_closeEvent_h" qtc_QTabWidget_closeEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTabWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTabWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_contextMenuEvent_h" qtc_QTabWidget_contextMenuEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTabWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QTabWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_create cobj_x0

foreign import ccall "qtc_QTabWidget_create" qtc_QTabWidget_create :: Ptr (TQTabWidget a) -> IO ()

instance Qcreate (QTabWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_create cobj_x0

instance Qcreate (QTabWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_create1" qtc_QTabWidget_create1 :: Ptr (TQTabWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTabWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QTabWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTabWidget_create2" qtc_QTabWidget_create2 :: Ptr (TQTabWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTabWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTabWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTabWidget_create3" qtc_QTabWidget_create3 :: Ptr (TQTabWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTabWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTabWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy cobj_x0

foreign import ccall "qtc_QTabWidget_destroy" qtc_QTabWidget_destroy :: Ptr (TQTabWidget a) -> IO ()

instance Qdestroy (QTabWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy cobj_x0

instance Qdestroy (QTabWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_destroy1" qtc_QTabWidget_destroy1 :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance Qdestroy (QTabWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTabWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTabWidget_destroy2" qtc_QTabWidget_destroy2 :: Ptr (TQTabWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTabWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTabWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_devType_h cobj_x0

foreign import ccall "qtc_QTabWidget_devType_h" qtc_QTabWidget_devType_h :: Ptr (TQTabWidget a) -> IO CInt

instance QdevType (QTabWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_devType_h cobj_x0

instance QdragEnterEvent (QTabWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_dragEnterEvent_h" qtc_QTabWidget_dragEnterEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTabWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTabWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_dragLeaveEvent_h" qtc_QTabWidget_dragLeaveEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTabWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTabWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_dragMoveEvent_h" qtc_QTabWidget_dragMoveEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTabWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTabWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_dropEvent_h" qtc_QTabWidget_dropEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTabWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QTabWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_enabledChange" qtc_QTabWidget_enabledChange :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance QenabledChange (QTabWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTabWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_enterEvent_h" qtc_QTabWidget_enterEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTabWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QTabWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_focusInEvent_h" qtc_QTabWidget_focusInEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTabWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTabWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QTabWidget_focusNextChild" qtc_QTabWidget_focusNextChild :: Ptr (TQTabWidget a) -> IO CBool

instance QfocusNextChild (QTabWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QTabWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_focusNextPrevChild" qtc_QTabWidget_focusNextPrevChild :: Ptr (TQTabWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTabWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTabWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_focusOutEvent_h" qtc_QTabWidget_focusOutEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTabWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QTabWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTabWidget_focusPreviousChild" qtc_QTabWidget_focusPreviousChild :: Ptr (TQTabWidget a) -> IO CBool

instance QfocusPreviousChild (QTabWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_focusPreviousChild cobj_x0

instance QfontChange (QTabWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_fontChange" qtc_QTabWidget_fontChange :: Ptr (TQTabWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTabWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTabWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabWidget_heightForWidth_h" qtc_QTabWidget_heightForWidth_h :: Ptr (TQTabWidget a) -> CInt -> IO CInt

instance QheightForWidth (QTabWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTabWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_hideEvent_h" qtc_QTabWidget_hideEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTabWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QTabWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_inputMethodEvent" qtc_QTabWidget_inputMethodEvent :: Ptr (TQTabWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTabWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTabWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_inputMethodQuery_h" qtc_QTabWidget_inputMethodQuery_h :: Ptr (TQTabWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTabWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QTabWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_keyReleaseEvent_h" qtc_QTabWidget_keyReleaseEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTabWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTabWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_languageChange cobj_x0

foreign import ccall "qtc_QTabWidget_languageChange" qtc_QTabWidget_languageChange :: Ptr (TQTabWidget a) -> IO ()

instance QlanguageChange (QTabWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_languageChange cobj_x0

instance QleaveEvent (QTabWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_leaveEvent_h" qtc_QTabWidget_leaveEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTabWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTabWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabWidget_metric" qtc_QTabWidget_metric :: Ptr (TQTabWidget a) -> CLong -> IO CInt

instance Qmetric (QTabWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QTabWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_mouseDoubleClickEvent_h" qtc_QTabWidget_mouseDoubleClickEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTabWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QTabWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_mouseMoveEvent_h" qtc_QTabWidget_mouseMoveEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTabWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTabWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_mousePressEvent_h" qtc_QTabWidget_mousePressEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTabWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTabWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_mouseReleaseEvent_h" qtc_QTabWidget_mouseReleaseEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTabWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QTabWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTabWidget_move1" qtc_QTabWidget_move1 :: Ptr (TQTabWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTabWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTabWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTabWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTabWidget_move_qth" qtc_QTabWidget_move_qth :: Ptr (TQTabWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QTabWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTabWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTabWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_move" qtc_QTabWidget_move :: Ptr (TQTabWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTabWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QTabWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_moveEvent_h" qtc_QTabWidget_moveEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTabWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTabWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QTabWidget_paintEngine_h" qtc_QTabWidget_paintEngine_h :: Ptr (TQTabWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTabWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_paintEngine_h cobj_x0

instance QpaletteChange (QTabWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_paletteChange" qtc_QTabWidget_paletteChange :: Ptr (TQTabWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTabWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTabWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_repaint cobj_x0

foreign import ccall "qtc_QTabWidget_repaint" qtc_QTabWidget_repaint :: Ptr (TQTabWidget a) -> IO ()

instance Qrepaint (QTabWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_repaint cobj_x0

instance Qrepaint (QTabWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTabWidget_repaint2" qtc_QTabWidget_repaint2 :: Ptr (TQTabWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTabWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTabWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_repaint1" qtc_QTabWidget_repaint1 :: Ptr (TQTabWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTabWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTabWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QTabWidget_resetInputContext" qtc_QTabWidget_resetInputContext :: Ptr (TQTabWidget a) -> IO ()

instance QresetInputContext (QTabWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_resetInputContext cobj_x0

instance Qresize (QTabWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTabWidget_resize1" qtc_QTabWidget_resize1 :: Ptr (TQTabWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTabWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTabWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_resize" qtc_QTabWidget_resize :: Ptr (TQTabWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTabWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_resize cobj_x0 cobj_x1

instance Qresize (QTabWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTabWidget_resize_qth" qtc_QTabWidget_resize_qth :: Ptr (TQTabWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QTabWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTabWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTabWidget_setGeometry1" qtc_QTabWidget_setGeometry1 :: Ptr (TQTabWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTabWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTabWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_setGeometry" qtc_QTabWidget_setGeometry :: Ptr (TQTabWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTabWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTabWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTabWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTabWidget_setGeometry_qth" qtc_QTabWidget_setGeometry_qth :: Ptr (TQTabWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTabWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTabWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTabWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_setMouseTracking" qtc_QTabWidget_setMouseTracking :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QTabWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTabWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_setVisible_h" qtc_QTabWidget_setVisible_h :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance QsetVisible (QTabWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QTabWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_tabletEvent_h" qtc_QTabWidget_tabletEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTabWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTabWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTabWidget_updateMicroFocus" qtc_QTabWidget_updateMicroFocus :: Ptr (TQTabWidget a) -> IO ()

instance QupdateMicroFocus (QTabWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QTabWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_wheelEvent_h" qtc_QTabWidget_wheelEvent_h :: Ptr (TQTabWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTabWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QTabWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabWidget_windowActivationChange" qtc_QTabWidget_windowActivationChange :: Ptr (TQTabWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QTabWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTabWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_childEvent" qtc_QTabWidget_childEvent :: Ptr (TQTabWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTabWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTabWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTabWidget_connectNotify" qtc_QTabWidget_connectNotify :: Ptr (TQTabWidget a) -> CWString -> IO ()

instance QconnectNotify (QTabWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTabWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_customEvent" qtc_QTabWidget_customEvent :: Ptr (TQTabWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTabWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTabWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTabWidget_disconnectNotify" qtc_QTabWidget_disconnectNotify :: Ptr (TQTabWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QTabWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTabWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTabWidget_eventFilter_h" qtc_QTabWidget_eventFilter_h :: Ptr (TQTabWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTabWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTabWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTabWidget_receivers" qtc_QTabWidget_receivers :: Ptr (TQTabWidget a) -> CWString -> IO CInt

instance Qreceivers (QTabWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabWidget_receivers cobj_x0 cstr_x1

instance Qsender (QTabWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sender cobj_x0

foreign import ccall "qtc_QTabWidget_sender" qtc_QTabWidget_sender :: Ptr (TQTabWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QTabWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabWidget_sender cobj_x0

instance QtimerEvent (QTabWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabWidget_timerEvent" qtc_QTabWidget_timerEvent :: Ptr (TQTabWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTabWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabWidget_timerEvent cobj_x0 cobj_x1

