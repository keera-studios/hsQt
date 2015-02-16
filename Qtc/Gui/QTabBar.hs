{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTabBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTabBar (
  QqTabBar(..)
  ,drawBase
  ,setDrawBase
  ,setTabData
  ,setTabTextColor
  ,tabAt, qtabAt
  ,QtabData(..), QtabData_nf(..)
  ,QtabLayoutChange(..)
  ,qtabRect, tabRect
  ,QtabSizeHint(..), QqtabSizeHint(..)
  ,tabTextColor
  ,qTabBar_delete
  ,qTabBar_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTabBar

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTabBar ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTabBar_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTabBar_userMethod" qtc_QTabBar_userMethod :: Ptr (TQTabBar a) -> CInt -> IO ()

instance QuserMethod (QTabBarSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTabBar_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTabBar ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTabBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTabBar_userMethodVariant" qtc_QTabBar_userMethodVariant :: Ptr (TQTabBar a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTabBarSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTabBar_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTabBar x1 where
  qTabBar :: x1 -> IO (QTabBar ())

instance QqTabBar (()) where
 qTabBar ()
  = withQTabBarResult $
    qtc_QTabBar

foreign import ccall "qtc_QTabBar" qtc_QTabBar :: IO (Ptr (TQTabBar ()))

instance QqTabBar ((QWidget t1)) where
 qTabBar (x1)
  = withQTabBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar1 cobj_x1

foreign import ccall "qtc_QTabBar1" qtc_QTabBar1 :: Ptr (TQWidget t1) -> IO (Ptr (TQTabBar ()))

instance QaddTab (QTabBar a) ((QIcon t1, String)) where
 addTab x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabBar_addTab1 cobj_x0 cobj_x1 cstr_x2

foreign import ccall "qtc_QTabBar_addTab1" qtc_QTabBar_addTab1 :: Ptr (TQTabBar a) -> Ptr (TQIcon t1) -> CWString -> IO CInt

instance QaddTab (QTabBar a) ((String)) where
 addTab x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_addTab cobj_x0 cstr_x1

foreign import ccall "qtc_QTabBar_addTab" qtc_QTabBar_addTab :: Ptr (TQTabBar a) -> CWString -> IO CInt

instance QchangeEvent (QTabBar ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_changeEvent_h" qtc_QTabBar_changeEvent_h :: Ptr (TQTabBar a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QTabBarSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_changeEvent_h cobj_x0 cobj_x1

instance Qcount (QTabBar a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_count cobj_x0

foreign import ccall "qtc_QTabBar_count" qtc_QTabBar_count :: Ptr (TQTabBar a) -> IO CInt

instance QcurrentIndex (QTabBar a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_currentIndex cobj_x0

foreign import ccall "qtc_QTabBar_currentIndex" qtc_QTabBar_currentIndex :: Ptr (TQTabBar a) -> IO CInt

drawBase :: QTabBar a -> (()) -> IO (Bool)
drawBase x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_drawBase cobj_x0

foreign import ccall "qtc_QTabBar_drawBase" qtc_QTabBar_drawBase :: Ptr (TQTabBar a) -> IO CBool

instance QelideMode (QTabBar a) (()) where
 elideMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_elideMode cobj_x0

foreign import ccall "qtc_QTabBar_elideMode" qtc_QTabBar_elideMode :: Ptr (TQTabBar a) -> IO CLong

instance Qevent (QTabBar ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_event_h" qtc_QTabBar_event_h :: Ptr (TQTabBar a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTabBarSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_event_h cobj_x0 cobj_x1

instance QqiconSize (QTabBar a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_iconSize cobj_x0

foreign import ccall "qtc_QTabBar_iconSize" qtc_QTabBar_iconSize :: Ptr (TQTabBar a) -> IO (Ptr (TQSize ()))

instance QiconSize (QTabBar a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabBar_iconSize_qth" qtc_QTabBar_iconSize_qth :: Ptr (TQTabBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QinitStyleOption (QTabBar ()) ((QStyleOptionTab t1, Int)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_initStyleOption cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTabBar_initStyleOption" qtc_QTabBar_initStyleOption :: Ptr (TQTabBar a) -> Ptr (TQStyleOptionTab t1) -> CInt -> IO ()

instance QinitStyleOption (QTabBarSc a) ((QStyleOptionTab t1, Int)) where
 initStyleOption x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_initStyleOption cobj_x0 cobj_x1 (toCInt x2)

instance QinsertTab (QTabBar a) ((Int, QIcon t2, String)) where
 insertTab x0 (x1, x2, x3)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QTabBar_insertTab1 cobj_x0 (toCInt x1) cobj_x2 cstr_x3

foreign import ccall "qtc_QTabBar_insertTab1" qtc_QTabBar_insertTab1 :: Ptr (TQTabBar a) -> CInt -> Ptr (TQIcon t2) -> CWString -> IO CInt

instance QinsertTab (QTabBar a) ((Int, String)) where
 insertTab x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabBar_insertTab cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabBar_insertTab" qtc_QTabBar_insertTab :: Ptr (TQTabBar a) -> CInt -> CWString -> IO CInt

instance QisTabEnabled (QTabBar a) ((Int)) where
 isTabEnabled x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_isTabEnabled cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_isTabEnabled" qtc_QTabBar_isTabEnabled :: Ptr (TQTabBar a) -> CInt -> IO CBool

instance QkeyPressEvent (QTabBar ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_keyPressEvent_h" qtc_QTabBar_keyPressEvent_h :: Ptr (TQTabBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QTabBarSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_keyPressEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QTabBar ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QTabBar_minimumSizeHint_h" qtc_QTabBar_minimumSizeHint_h :: Ptr (TQTabBar a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QTabBarSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QTabBar ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabBar_minimumSizeHint_qth_h" qtc_QTabBar_minimumSizeHint_qth_h :: Ptr (TQTabBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QTabBarSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QTabBar ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_mouseMoveEvent_h" qtc_QTabBar_mouseMoveEvent_h :: Ptr (TQTabBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QTabBarSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QTabBar ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_mousePressEvent_h" qtc_QTabBar_mousePressEvent_h :: Ptr (TQTabBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QTabBarSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QTabBar ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_mouseReleaseEvent_h" qtc_QTabBar_mouseReleaseEvent_h :: Ptr (TQTabBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QTabBarSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QTabBar ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_paintEvent_h" qtc_QTabBar_paintEvent_h :: Ptr (TQTabBar a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QTabBarSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_paintEvent_h cobj_x0 cobj_x1

instance QremoveTab (QTabBar a) ((Int)) where
 removeTab x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_removeTab cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_removeTab" qtc_QTabBar_removeTab :: Ptr (TQTabBar a) -> CInt -> IO ()

instance QresizeEvent (QTabBar ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_resizeEvent_h" qtc_QTabBar_resizeEvent_h :: Ptr (TQTabBar a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QTabBarSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_resizeEvent_h cobj_x0 cobj_x1

instance QsetCurrentIndex (QTabBar a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_setCurrentIndex" qtc_QTabBar_setCurrentIndex :: Ptr (TQTabBar a) -> CInt -> IO ()

setDrawBase :: QTabBar a -> ((Bool)) -> IO ()
setDrawBase x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setDrawBase cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_setDrawBase" qtc_QTabBar_setDrawBase :: Ptr (TQTabBar a) -> CBool -> IO ()

instance QsetElideMode (QTabBar a) ((TextElideMode)) where
 setElideMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setElideMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabBar_setElideMode" qtc_QTabBar_setElideMode :: Ptr (TQTabBar a) -> CLong -> IO ()

instance QqsetIconSize (QTabBar a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_setIconSize" qtc_QTabBar_setIconSize :: Ptr (TQTabBar a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QTabBar a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabBar_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTabBar_setIconSize_qth" qtc_QTabBar_setIconSize_qth :: Ptr (TQTabBar a) -> CInt -> CInt -> IO ()

instance QsetShape (QTabBar a) ((QTabBarShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabBar_setShape" qtc_QTabBar_setShape :: Ptr (TQTabBar a) -> CLong -> IO ()

setTabData :: QTabBar a -> ((Int, QVariant t2)) -> IO ()
setTabData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabBar_setTabData cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTabBar_setTabData" qtc_QTabBar_setTabData :: Ptr (TQTabBar a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetTabEnabled (QTabBar a) ((Int, Bool)) where
 setTabEnabled x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setTabEnabled cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QTabBar_setTabEnabled" qtc_QTabBar_setTabEnabled :: Ptr (TQTabBar a) -> CInt -> CBool -> IO ()

instance QsetTabIcon (QTabBar a) ((Int, QIcon t2)) where
 setTabIcon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabBar_setTabIcon cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTabBar_setTabIcon" qtc_QTabBar_setTabIcon :: Ptr (TQTabBar a) -> CInt -> Ptr (TQIcon t2) -> IO ()

instance QsetTabText (QTabBar a) ((Int, String)) where
 setTabText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabBar_setTabText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabBar_setTabText" qtc_QTabBar_setTabText :: Ptr (TQTabBar a) -> CInt -> CWString -> IO ()

setTabTextColor :: QTabBar a -> ((Int, QColor t2)) -> IO ()
setTabTextColor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabBar_setTabTextColor cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTabBar_setTabTextColor" qtc_QTabBar_setTabTextColor :: Ptr (TQTabBar a) -> CInt -> Ptr (TQColor t2) -> IO ()

instance QsetTabToolTip (QTabBar a) ((Int, String)) where
 setTabToolTip x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabBar_setTabToolTip cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabBar_setTabToolTip" qtc_QTabBar_setTabToolTip :: Ptr (TQTabBar a) -> CInt -> CWString -> IO ()

instance QsetTabWhatsThis (QTabBar a) ((Int, String)) where
 setTabWhatsThis x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTabBar_setTabWhatsThis cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTabBar_setTabWhatsThis" qtc_QTabBar_setTabWhatsThis :: Ptr (TQTabBar a) -> CInt -> CWString -> IO ()

instance QsetUsesScrollButtons (QTabBar a) ((Bool)) where
 setUsesScrollButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setUsesScrollButtons cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_setUsesScrollButtons" qtc_QTabBar_setUsesScrollButtons :: Ptr (TQTabBar a) -> CBool -> IO ()

instance Qshape (QTabBar a) (()) (IO (QTabBarShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_shape cobj_x0

foreign import ccall "qtc_QTabBar_shape" qtc_QTabBar_shape :: Ptr (TQTabBar a) -> IO CLong

instance QshowEvent (QTabBar ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_showEvent_h" qtc_QTabBar_showEvent_h :: Ptr (TQTabBar a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QTabBarSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QTabBar ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sizeHint_h cobj_x0

foreign import ccall "qtc_QTabBar_sizeHint_h" qtc_QTabBar_sizeHint_h :: Ptr (TQTabBar a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QTabBarSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sizeHint_h cobj_x0

instance QsizeHint (QTabBar ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabBar_sizeHint_qth_h" qtc_QTabBar_sizeHint_qth_h :: Ptr (TQTabBar a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QTabBarSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

tabAt :: QTabBar a -> ((Point)) -> IO (Int)
tabAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTabBar_tabAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTabBar_tabAt_qth" qtc_QTabBar_tabAt_qth :: Ptr (TQTabBar a) -> CInt -> CInt -> IO CInt

qtabAt :: QTabBar a -> ((QPoint t1)) -> IO (Int)
qtabAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_tabAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_tabAt" qtc_QTabBar_tabAt :: Ptr (TQTabBar a) -> Ptr (TQPoint t1) -> IO CInt

class QtabData x0 x1 where
 tabData :: x0 -> x1 -> IO (QVariant ())

class QtabData_nf x0 x1 where
 tabData_nf :: x0 -> x1 -> IO (QVariant ())

instance QtabData (QTabBar ()) ((Int)) where
 tabData x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabData cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabData" qtc_QTabBar_tabData :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQVariant ()))

instance QtabData (QTabBarSc a) ((Int)) where
 tabData x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabData cobj_x0 (toCInt x1)

instance QtabData_nf (QTabBar ()) ((Int)) where
 tabData_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabData cobj_x0 (toCInt x1)

instance QtabData_nf (QTabBarSc a) ((Int)) where
 tabData_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabData cobj_x0 (toCInt x1)

instance QtabIcon (QTabBar a) ((Int)) where
 tabIcon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabIcon cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabIcon" qtc_QTabBar_tabIcon :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQIcon ()))

instance QtabInserted (QTabBar ()) ((Int)) where
 tabInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabInserted_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabInserted_h" qtc_QTabBar_tabInserted_h :: Ptr (TQTabBar a) -> CInt -> IO ()

instance QtabInserted (QTabBarSc a) ((Int)) where
 tabInserted x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabInserted_h cobj_x0 (toCInt x1)

class QtabLayoutChange x0 x1 where
 tabLayoutChange :: x0 -> x1 -> IO ()

instance QtabLayoutChange (QTabBar ()) (()) where
 tabLayoutChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabLayoutChange_h cobj_x0

foreign import ccall "qtc_QTabBar_tabLayoutChange_h" qtc_QTabBar_tabLayoutChange_h :: Ptr (TQTabBar a) -> IO ()

instance QtabLayoutChange (QTabBarSc a) (()) where
 tabLayoutChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabLayoutChange_h cobj_x0

qtabRect :: QTabBar a -> ((Int)) -> IO (QRect ())
qtabRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabRect cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabRect" qtc_QTabBar_tabRect :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQRect ()))

tabRect :: QTabBar a -> ((Int)) -> IO (Rect)
tabRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabRect_qth cobj_x0 (toCInt x1) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QTabBar_tabRect_qth" qtc_QTabBar_tabRect_qth :: Ptr (TQTabBar a) -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QtabRemoved (QTabBar ()) ((Int)) where
 tabRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabRemoved_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabRemoved_h" qtc_QTabBar_tabRemoved_h :: Ptr (TQTabBar a) -> CInt -> IO ()

instance QtabRemoved (QTabBarSc a) ((Int)) where
 tabRemoved x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabRemoved_h cobj_x0 (toCInt x1)

class QtabSizeHint x0 x1 where
 tabSizeHint :: x0 -> x1 -> IO (Size)

class QqtabSizeHint x0 x1 where
 qtabSizeHint :: x0 -> x1 -> IO (QSize ())

instance QqtabSizeHint (QTabBar ()) ((Int)) where
 qtabSizeHint x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabSizeHint_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabSizeHint_h" qtc_QTabBar_tabSizeHint_h :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQSize ()))

instance QqtabSizeHint (QTabBarSc a) ((Int)) where
 qtabSizeHint x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabSizeHint_h cobj_x0 (toCInt x1)

instance QtabSizeHint (QTabBar ()) ((Int)) where
 tabSizeHint x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabSizeHint_qth_h cobj_x0 (toCInt x1) csize_ret_w csize_ret_h

foreign import ccall "qtc_QTabBar_tabSizeHint_qth_h" qtc_QTabBar_tabSizeHint_qth_h :: Ptr (TQTabBar a) -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QtabSizeHint (QTabBarSc a) ((Int)) where
 tabSizeHint x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabSizeHint_qth_h cobj_x0 (toCInt x1) csize_ret_w csize_ret_h

instance QtabText (QTabBar a) ((Int)) where
 tabText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabText cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabText" qtc_QTabBar_tabText :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQString ()))

tabTextColor :: QTabBar a -> ((Int)) -> IO (QColor ())
tabTextColor x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabTextColor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabTextColor" qtc_QTabBar_tabTextColor :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQColor ()))

instance QtabToolTip (QTabBar a) ((Int)) where
 tabToolTip x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabToolTip cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabToolTip" qtc_QTabBar_tabToolTip :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQString ()))

instance QtabWhatsThis (QTabBar a) ((Int)) where
 tabWhatsThis x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_tabWhatsThis cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_tabWhatsThis" qtc_QTabBar_tabWhatsThis :: Ptr (TQTabBar a) -> CInt -> IO (Ptr (TQString ()))

instance QusesScrollButtons (QTabBar a) (()) where
 usesScrollButtons x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_usesScrollButtons cobj_x0

foreign import ccall "qtc_QTabBar_usesScrollButtons" qtc_QTabBar_usesScrollButtons :: Ptr (TQTabBar a) -> IO CBool

qTabBar_delete :: QTabBar a -> IO ()
qTabBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_delete cobj_x0

foreign import ccall "qtc_QTabBar_delete" qtc_QTabBar_delete :: Ptr (TQTabBar a) -> IO ()

qTabBar_deleteLater :: QTabBar a -> IO ()
qTabBar_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_deleteLater cobj_x0

foreign import ccall "qtc_QTabBar_deleteLater" qtc_QTabBar_deleteLater :: Ptr (TQTabBar a) -> IO ()

instance QactionEvent (QTabBar ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_actionEvent_h" qtc_QTabBar_actionEvent_h :: Ptr (TQTabBar a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QTabBarSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QTabBar ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_addAction" qtc_QTabBar_addAction :: Ptr (TQTabBar a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QTabBarSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_addAction cobj_x0 cobj_x1

instance QcloseEvent (QTabBar ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_closeEvent_h" qtc_QTabBar_closeEvent_h :: Ptr (TQTabBar a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QTabBarSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QTabBar ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_contextMenuEvent_h" qtc_QTabBar_contextMenuEvent_h :: Ptr (TQTabBar a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QTabBarSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QTabBar ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_create cobj_x0

foreign import ccall "qtc_QTabBar_create" qtc_QTabBar_create :: Ptr (TQTabBar a) -> IO ()

instance Qcreate (QTabBarSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_create cobj_x0

instance Qcreate (QTabBar ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_create1" qtc_QTabBar_create1 :: Ptr (TQTabBar a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QTabBarSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create1 cobj_x0 cobj_x1

instance Qcreate (QTabBar ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QTabBar_create2" qtc_QTabBar_create2 :: Ptr (TQTabBar a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QTabBarSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QTabBar ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QTabBar_create3" qtc_QTabBar_create3 :: Ptr (TQTabBar a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QTabBarSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QTabBar ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy cobj_x0

foreign import ccall "qtc_QTabBar_destroy" qtc_QTabBar_destroy :: Ptr (TQTabBar a) -> IO ()

instance Qdestroy (QTabBarSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy cobj_x0

instance Qdestroy (QTabBar ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_destroy1" qtc_QTabBar_destroy1 :: Ptr (TQTabBar a) -> CBool -> IO ()

instance Qdestroy (QTabBarSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QTabBar ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QTabBar_destroy2" qtc_QTabBar_destroy2 :: Ptr (TQTabBar a) -> CBool -> CBool -> IO ()

instance Qdestroy (QTabBarSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QTabBar ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_devType_h cobj_x0

foreign import ccall "qtc_QTabBar_devType_h" qtc_QTabBar_devType_h :: Ptr (TQTabBar a) -> IO CInt

instance QdevType (QTabBarSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_devType_h cobj_x0

instance QdragEnterEvent (QTabBar ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_dragEnterEvent_h" qtc_QTabBar_dragEnterEvent_h :: Ptr (TQTabBar a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QTabBarSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QTabBar ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_dragLeaveEvent_h" qtc_QTabBar_dragLeaveEvent_h :: Ptr (TQTabBar a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QTabBarSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QTabBar ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_dragMoveEvent_h" qtc_QTabBar_dragMoveEvent_h :: Ptr (TQTabBar a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QTabBarSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QTabBar ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_dropEvent_h" qtc_QTabBar_dropEvent_h :: Ptr (TQTabBar a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QTabBarSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QTabBar ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_enabledChange" qtc_QTabBar_enabledChange :: Ptr (TQTabBar a) -> CBool -> IO ()

instance QenabledChange (QTabBarSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QTabBar ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_enterEvent_h" qtc_QTabBar_enterEvent_h :: Ptr (TQTabBar a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QTabBarSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QTabBar ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_focusInEvent_h" qtc_QTabBar_focusInEvent_h :: Ptr (TQTabBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QTabBarSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QTabBar ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusNextChild cobj_x0

foreign import ccall "qtc_QTabBar_focusNextChild" qtc_QTabBar_focusNextChild :: Ptr (TQTabBar a) -> IO CBool

instance QfocusNextChild (QTabBarSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusNextChild cobj_x0

instance QfocusNextPrevChild (QTabBar ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_focusNextPrevChild" qtc_QTabBar_focusNextPrevChild :: Ptr (TQTabBar a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QTabBarSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QTabBar ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_focusOutEvent_h" qtc_QTabBar_focusOutEvent_h :: Ptr (TQTabBar a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QTabBarSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QTabBar ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusPreviousChild cobj_x0

foreign import ccall "qtc_QTabBar_focusPreviousChild" qtc_QTabBar_focusPreviousChild :: Ptr (TQTabBar a) -> IO CBool

instance QfocusPreviousChild (QTabBarSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_focusPreviousChild cobj_x0

instance QfontChange (QTabBar ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_fontChange" qtc_QTabBar_fontChange :: Ptr (TQTabBar a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QTabBarSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QTabBar ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTabBar_heightForWidth_h" qtc_QTabBar_heightForWidth_h :: Ptr (TQTabBar a) -> CInt -> IO CInt

instance QheightForWidth (QTabBarSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QTabBar ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_hideEvent_h" qtc_QTabBar_hideEvent_h :: Ptr (TQTabBar a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QTabBarSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QTabBar ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_inputMethodEvent" qtc_QTabBar_inputMethodEvent :: Ptr (TQTabBar a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QTabBarSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QTabBar ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabBar_inputMethodQuery_h" qtc_QTabBar_inputMethodQuery_h :: Ptr (TQTabBar a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QTabBarSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QTabBar ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_keyReleaseEvent_h" qtc_QTabBar_keyReleaseEvent_h :: Ptr (TQTabBar a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QTabBarSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QTabBar ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_languageChange cobj_x0

foreign import ccall "qtc_QTabBar_languageChange" qtc_QTabBar_languageChange :: Ptr (TQTabBar a) -> IO ()

instance QlanguageChange (QTabBarSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_languageChange cobj_x0

instance QleaveEvent (QTabBar ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_leaveEvent_h" qtc_QTabBar_leaveEvent_h :: Ptr (TQTabBar a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QTabBarSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QTabBar ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTabBar_metric" qtc_QTabBar_metric :: Ptr (TQTabBar a) -> CLong -> IO CInt

instance Qmetric (QTabBarSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QTabBar ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_mouseDoubleClickEvent_h" qtc_QTabBar_mouseDoubleClickEvent_h :: Ptr (TQTabBar a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QTabBarSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QTabBar ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTabBar_move1" qtc_QTabBar_move1 :: Ptr (TQTabBar a) -> CInt -> CInt -> IO ()

instance Qmove (QTabBarSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QTabBar ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTabBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QTabBar_move_qth" qtc_QTabBar_move_qth :: Ptr (TQTabBar a) -> CInt -> CInt -> IO ()

instance Qmove (QTabBarSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QTabBar_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QTabBar ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_move cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_move" qtc_QTabBar_move :: Ptr (TQTabBar a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QTabBarSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_move cobj_x0 cobj_x1

instance QmoveEvent (QTabBar ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_moveEvent_h" qtc_QTabBar_moveEvent_h :: Ptr (TQTabBar a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QTabBarSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QTabBar ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_paintEngine_h cobj_x0

foreign import ccall "qtc_QTabBar_paintEngine_h" qtc_QTabBar_paintEngine_h :: Ptr (TQTabBar a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QTabBarSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_paintEngine_h cobj_x0

instance QpaletteChange (QTabBar ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_paletteChange" qtc_QTabBar_paletteChange :: Ptr (TQTabBar a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QTabBarSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QTabBar ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_repaint cobj_x0

foreign import ccall "qtc_QTabBar_repaint" qtc_QTabBar_repaint :: Ptr (TQTabBar a) -> IO ()

instance Qrepaint (QTabBarSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_repaint cobj_x0

instance Qrepaint (QTabBar ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTabBar_repaint2" qtc_QTabBar_repaint2 :: Ptr (TQTabBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QTabBarSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QTabBar ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_repaint1" qtc_QTabBar_repaint1 :: Ptr (TQTabBar a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QTabBarSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QTabBar ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_resetInputContext cobj_x0

foreign import ccall "qtc_QTabBar_resetInputContext" qtc_QTabBar_resetInputContext :: Ptr (TQTabBar a) -> IO ()

instance QresetInputContext (QTabBarSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_resetInputContext cobj_x0

instance Qresize (QTabBar ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTabBar_resize1" qtc_QTabBar_resize1 :: Ptr (TQTabBar a) -> CInt -> CInt -> IO ()

instance Qresize (QTabBarSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QTabBar ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_resize" qtc_QTabBar_resize :: Ptr (TQTabBar a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QTabBarSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_resize cobj_x0 cobj_x1

instance Qresize (QTabBar ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTabBar_resize_qth" qtc_QTabBar_resize_qth :: Ptr (TQTabBar a) -> CInt -> CInt -> IO ()

instance Qresize (QTabBarSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTabBar_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QTabBar ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTabBar_setGeometry1" qtc_QTabBar_setGeometry1 :: Ptr (TQTabBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTabBarSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QTabBar ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_setGeometry" qtc_QTabBar_setGeometry :: Ptr (TQTabBar a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QTabBarSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QTabBar ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTabBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QTabBar_setGeometry_qth" qtc_QTabBar_setGeometry_qth :: Ptr (TQTabBar a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QTabBarSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QTabBar_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QTabBar ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_setMouseTracking" qtc_QTabBar_setMouseTracking :: Ptr (TQTabBar a) -> CBool -> IO ()

instance QsetMouseTracking (QTabBarSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QTabBar ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_setVisible_h" qtc_QTabBar_setVisible_h :: Ptr (TQTabBar a) -> CBool -> IO ()

instance QsetVisible (QTabBarSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QTabBar ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_tabletEvent_h" qtc_QTabBar_tabletEvent_h :: Ptr (TQTabBar a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QTabBarSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QTabBar ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_updateMicroFocus cobj_x0

foreign import ccall "qtc_QTabBar_updateMicroFocus" qtc_QTabBar_updateMicroFocus :: Ptr (TQTabBar a) -> IO ()

instance QupdateMicroFocus (QTabBarSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_updateMicroFocus cobj_x0

instance QwheelEvent (QTabBar ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_wheelEvent_h" qtc_QTabBar_wheelEvent_h :: Ptr (TQTabBar a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QTabBarSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QTabBar ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTabBar_windowActivationChange" qtc_QTabBar_windowActivationChange :: Ptr (TQTabBar a) -> CBool -> IO ()

instance QwindowActivationChange (QTabBarSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QTabBar ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_childEvent" qtc_QTabBar_childEvent :: Ptr (TQTabBar a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTabBarSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTabBar ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTabBar_connectNotify" qtc_QTabBar_connectNotify :: Ptr (TQTabBar a) -> CWString -> IO ()

instance QconnectNotify (QTabBarSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTabBar ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_customEvent" qtc_QTabBar_customEvent :: Ptr (TQTabBar a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTabBarSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTabBar ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTabBar_disconnectNotify" qtc_QTabBar_disconnectNotify :: Ptr (TQTabBar a) -> CWString -> IO ()

instance QdisconnectNotify (QTabBarSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QTabBar ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTabBar_eventFilter_h" qtc_QTabBar_eventFilter_h :: Ptr (TQTabBar a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTabBarSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTabBar_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTabBar ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTabBar_receivers" qtc_QTabBar_receivers :: Ptr (TQTabBar a) -> CWString -> IO CInt

instance Qreceivers (QTabBarSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTabBar_receivers cobj_x0 cstr_x1

instance Qsender (QTabBar ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sender cobj_x0

foreign import ccall "qtc_QTabBar_sender" qtc_QTabBar_sender :: Ptr (TQTabBar a) -> IO (Ptr (TQObject ()))

instance Qsender (QTabBarSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTabBar_sender cobj_x0

instance QtimerEvent (QTabBar ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTabBar_timerEvent" qtc_QTabBar_timerEvent :: Ptr (TQTabBar a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTabBarSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTabBar_timerEvent cobj_x0 cobj_x1

