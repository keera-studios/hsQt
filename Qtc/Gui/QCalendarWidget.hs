{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCalendarWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCalendarWidget (
  QqCalendarWidget(..)
  ,dateEditAcceptDelay
  ,dateTextFormat
  ,firstDayOfWeek
  ,headerTextFormat
  ,horizontalHeaderFormat
  ,isDateEditEnabled
  ,isGridVisible
  ,isHeaderVisible
  ,isNavigationBarVisible
  ,monthShown
  ,QpaintCell(..), QqpaintCell(..)
  ,selectedDate
  ,setCurrentPage
  ,setDateEditAcceptDelay
  ,setDateEditEnabled
  ,setDateTextFormat
  ,setFirstDayOfWeek
  ,setGridVisible
  ,setHeaderTextFormat
  ,setHeaderVisible
  ,setHorizontalHeaderFormat
  ,setNavigationBarVisible
  ,setSelectedDate
  ,setVerticalHeaderFormat
  ,setWeekdayTextFormat
  ,showNextMonth
  ,showNextYear
  ,showPreviousMonth
  ,showPreviousYear
  ,showSelectedDate
  ,showToday
  ,verticalHeaderFormat
  ,weekdayTextFormat
  ,yearShown
  ,qCalendarWidget_delete
  ,qCalendarWidget_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QCalendarWidget

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QCalendarWidget ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QCalendarWidget_userMethod" qtc_QCalendarWidget_userMethod :: Ptr (TQCalendarWidget a) -> CInt -> IO ()

instance QuserMethod (QCalendarWidgetSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCalendarWidget_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QCalendarWidget ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCalendarWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QCalendarWidget_userMethodVariant" qtc_QCalendarWidget_userMethodVariant :: Ptr (TQCalendarWidget a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QCalendarWidgetSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCalendarWidget_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqCalendarWidget x1 where
  qCalendarWidget :: x1 -> IO (QCalendarWidget ())

instance QqCalendarWidget (()) where
 qCalendarWidget ()
  = withQCalendarWidgetResult $
    qtc_QCalendarWidget

foreign import ccall "qtc_QCalendarWidget" qtc_QCalendarWidget :: IO (Ptr (TQCalendarWidget ()))

instance QqCalendarWidget ((QWidget t1)) where
 qCalendarWidget (x1)
  = withQCalendarWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget1 cobj_x1

foreign import ccall "qtc_QCalendarWidget1" qtc_QCalendarWidget1 :: Ptr (TQWidget t1) -> IO (Ptr (TQCalendarWidget ()))

dateEditAcceptDelay :: QCalendarWidget a -> (()) -> IO (Int)
dateEditAcceptDelay x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_dateEditAcceptDelay cobj_x0

foreign import ccall "qtc_QCalendarWidget_dateEditAcceptDelay" qtc_QCalendarWidget_dateEditAcceptDelay :: Ptr (TQCalendarWidget a) -> IO CInt

dateTextFormat :: QCalendarWidget a -> ((QDate t1)) -> IO (QTextCharFormat ())
dateTextFormat x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dateTextFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dateTextFormat" qtc_QCalendarWidget_dateTextFormat :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> IO (Ptr (TQTextCharFormat ()))

instance Qevent (QCalendarWidget ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_event_h" qtc_QCalendarWidget_event_h :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QCalendarWidgetSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_event_h cobj_x0 cobj_x1

firstDayOfWeek :: QCalendarWidget a -> (()) -> IO (DayOfWeek)
firstDayOfWeek x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_firstDayOfWeek cobj_x0

foreign import ccall "qtc_QCalendarWidget_firstDayOfWeek" qtc_QCalendarWidget_firstDayOfWeek :: Ptr (TQCalendarWidget a) -> IO CLong

headerTextFormat :: QCalendarWidget a -> (()) -> IO (QTextCharFormat ())
headerTextFormat x0 ()
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_headerTextFormat cobj_x0

foreign import ccall "qtc_QCalendarWidget_headerTextFormat" qtc_QCalendarWidget_headerTextFormat :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQTextCharFormat ()))

horizontalHeaderFormat :: QCalendarWidget a -> (()) -> IO (HorizontalHeaderFormat)
horizontalHeaderFormat x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_horizontalHeaderFormat cobj_x0

foreign import ccall "qtc_QCalendarWidget_horizontalHeaderFormat" qtc_QCalendarWidget_horizontalHeaderFormat :: Ptr (TQCalendarWidget a) -> IO CLong

isDateEditEnabled :: QCalendarWidget a -> (()) -> IO (Bool)
isDateEditEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_isDateEditEnabled cobj_x0

foreign import ccall "qtc_QCalendarWidget_isDateEditEnabled" qtc_QCalendarWidget_isDateEditEnabled :: Ptr (TQCalendarWidget a) -> IO CBool

isGridVisible :: QCalendarWidget a -> (()) -> IO (Bool)
isGridVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_isGridVisible cobj_x0

foreign import ccall "qtc_QCalendarWidget_isGridVisible" qtc_QCalendarWidget_isGridVisible :: Ptr (TQCalendarWidget a) -> IO CBool

isHeaderVisible :: QCalendarWidget a -> (()) -> IO (Bool)
isHeaderVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_isHeaderVisible cobj_x0

foreign import ccall "qtc_QCalendarWidget_isHeaderVisible" qtc_QCalendarWidget_isHeaderVisible :: Ptr (TQCalendarWidget a) -> IO CBool

isNavigationBarVisible :: QCalendarWidget a -> (()) -> IO (Bool)
isNavigationBarVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_isNavigationBarVisible cobj_x0

foreign import ccall "qtc_QCalendarWidget_isNavigationBarVisible" qtc_QCalendarWidget_isNavigationBarVisible :: Ptr (TQCalendarWidget a) -> IO CBool

instance QkeyPressEvent (QCalendarWidget ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_keyPressEvent_h" qtc_QCalendarWidget_keyPressEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QCalendarWidgetSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyPressEvent_h cobj_x0 cobj_x1

instance QmaximumDate (QCalendarWidget a) (()) where
 maximumDate x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_maximumDate cobj_x0

foreign import ccall "qtc_QCalendarWidget_maximumDate" qtc_QCalendarWidget_maximumDate :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQDate ()))

instance QminimumDate (QCalendarWidget a) (()) where
 minimumDate x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumDate cobj_x0

foreign import ccall "qtc_QCalendarWidget_minimumDate" qtc_QCalendarWidget_minimumDate :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQDate ()))

instance QqminimumSizeHint (QCalendarWidget ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QCalendarWidget_minimumSizeHint_h" qtc_QCalendarWidget_minimumSizeHint_h :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QCalendarWidgetSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QCalendarWidget ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCalendarWidget_minimumSizeHint_qth_h" qtc_QCalendarWidget_minimumSizeHint_qth_h :: Ptr (TQCalendarWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QCalendarWidgetSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

monthShown :: QCalendarWidget a -> (()) -> IO (Int)
monthShown x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_monthShown cobj_x0

foreign import ccall "qtc_QCalendarWidget_monthShown" qtc_QCalendarWidget_monthShown :: Ptr (TQCalendarWidget a) -> IO CInt

instance QmousePressEvent (QCalendarWidget ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mousePressEvent_h" qtc_QCalendarWidget_mousePressEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mousePressEvent_h cobj_x0 cobj_x1

class QpaintCell x0 x1 where
 paintCell :: x0 -> x1 -> IO ()

class QqpaintCell x0 x1 where
 qpaintCell :: x0 -> x1 -> IO ()

instance QqpaintCell (QCalendarWidget ()) ((QPainter t1, QRect t2, QDate t3)) where
 qpaintCell x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QCalendarWidget_paintCell_h" qtc_QCalendarWidget_paintCell_h :: Ptr (TQCalendarWidget a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQDate t3) -> IO ()

instance QqpaintCell (QCalendarWidgetSc a) ((QPainter t1, QRect t2, QDate t3)) where
 qpaintCell x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QpaintCell (QCalendarWidget ()) ((QPainter t1, Rect, QDate t3)) where
 paintCell x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

foreign import ccall "qtc_QCalendarWidget_paintCell_qth_h" qtc_QCalendarWidget_paintCell_qth_h :: Ptr (TQCalendarWidget a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQDate t3) -> IO ()

instance QpaintCell (QCalendarWidgetSc a) ((QPainter t1, Rect, QDate t3)) where
 paintCell x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QCalendarWidget_paintCell_qth_h cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3

instance QresizeEvent (QCalendarWidget ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_resizeEvent_h" qtc_QCalendarWidget_resizeEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QCalendarWidgetSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resizeEvent_h cobj_x0 cobj_x1

selectedDate :: QCalendarWidget a -> (()) -> IO (QDate ())
selectedDate x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_selectedDate cobj_x0

foreign import ccall "qtc_QCalendarWidget_selectedDate" qtc_QCalendarWidget_selectedDate :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQDate ()))

instance QselectionMode (QCalendarWidget a) (()) (IO (QCalendarWidgetSelectionMode)) where
 selectionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_selectionMode cobj_x0

foreign import ccall "qtc_QCalendarWidget_selectionMode" qtc_QCalendarWidget_selectionMode :: Ptr (TQCalendarWidget a) -> IO CLong

setCurrentPage :: QCalendarWidget a -> ((Int, Int)) -> IO ()
setCurrentPage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setCurrentPage cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCalendarWidget_setCurrentPage" qtc_QCalendarWidget_setCurrentPage :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO ()

setDateEditAcceptDelay :: QCalendarWidget a -> ((Int)) -> IO ()
setDateEditAcceptDelay x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setDateEditAcceptDelay cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCalendarWidget_setDateEditAcceptDelay" qtc_QCalendarWidget_setDateEditAcceptDelay :: Ptr (TQCalendarWidget a) -> CInt -> IO ()

setDateEditEnabled :: QCalendarWidget a -> ((Bool)) -> IO ()
setDateEditEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setDateEditEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setDateEditEnabled" qtc_QCalendarWidget_setDateEditEnabled :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QsetDateRange (QCalendarWidget a) ((QDate t1, QDate t2)) where
 setDateRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_setDateRange cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCalendarWidget_setDateRange" qtc_QCalendarWidget_setDateRange :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> Ptr (TQDate t2) -> IO ()

setDateTextFormat :: QCalendarWidget a -> ((QDate t1, QTextCharFormat t2)) -> IO ()
setDateTextFormat x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_setDateTextFormat cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCalendarWidget_setDateTextFormat" qtc_QCalendarWidget_setDateTextFormat :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> Ptr (TQTextCharFormat t2) -> IO ()

setFirstDayOfWeek :: QCalendarWidget a -> ((DayOfWeek)) -> IO ()
setFirstDayOfWeek x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setFirstDayOfWeek cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_setFirstDayOfWeek" qtc_QCalendarWidget_setFirstDayOfWeek :: Ptr (TQCalendarWidget a) -> CLong -> IO ()

setGridVisible :: QCalendarWidget a -> ((Bool)) -> IO ()
setGridVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setGridVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setGridVisible" qtc_QCalendarWidget_setGridVisible :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

setHeaderTextFormat :: QCalendarWidget a -> ((QTextCharFormat t1)) -> IO ()
setHeaderTextFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setHeaderTextFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_setHeaderTextFormat" qtc_QCalendarWidget_setHeaderTextFormat :: Ptr (TQCalendarWidget a) -> Ptr (TQTextCharFormat t1) -> IO ()

setHeaderVisible :: QCalendarWidget a -> ((Bool)) -> IO ()
setHeaderVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setHeaderVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setHeaderVisible" qtc_QCalendarWidget_setHeaderVisible :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

setHorizontalHeaderFormat :: QCalendarWidget a -> ((HorizontalHeaderFormat)) -> IO ()
setHorizontalHeaderFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setHorizontalHeaderFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_setHorizontalHeaderFormat" qtc_QCalendarWidget_setHorizontalHeaderFormat :: Ptr (TQCalendarWidget a) -> CLong -> IO ()

instance QsetMaximumDate (QCalendarWidget a) ((QDate t1)) where
 setMaximumDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setMaximumDate cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_setMaximumDate" qtc_QCalendarWidget_setMaximumDate :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> IO ()

instance QsetMinimumDate (QCalendarWidget a) ((QDate t1)) where
 setMinimumDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setMinimumDate cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_setMinimumDate" qtc_QCalendarWidget_setMinimumDate :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> IO ()

setNavigationBarVisible :: QCalendarWidget a -> ((Bool)) -> IO ()
setNavigationBarVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setNavigationBarVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setNavigationBarVisible" qtc_QCalendarWidget_setNavigationBarVisible :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

setSelectedDate :: QCalendarWidget a -> ((QDate t1)) -> IO ()
setSelectedDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setSelectedDate cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_setSelectedDate" qtc_QCalendarWidget_setSelectedDate :: Ptr (TQCalendarWidget a) -> Ptr (TQDate t1) -> IO ()

instance QsetSelectionMode (QCalendarWidget a) ((QCalendarWidgetSelectionMode)) where
 setSelectionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setSelectionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_setSelectionMode" qtc_QCalendarWidget_setSelectionMode :: Ptr (TQCalendarWidget a) -> CLong -> IO ()

setVerticalHeaderFormat :: QCalendarWidget a -> ((VerticalHeaderFormat)) -> IO ()
setVerticalHeaderFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setVerticalHeaderFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_setVerticalHeaderFormat" qtc_QCalendarWidget_setVerticalHeaderFormat :: Ptr (TQCalendarWidget a) -> CLong -> IO ()

setWeekdayTextFormat :: QCalendarWidget a -> ((DayOfWeek, QTextCharFormat t2)) -> IO ()
setWeekdayTextFormat x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_setWeekdayTextFormat cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QCalendarWidget_setWeekdayTextFormat" qtc_QCalendarWidget_setWeekdayTextFormat :: Ptr (TQCalendarWidget a) -> CLong -> Ptr (TQTextCharFormat t2) -> IO ()

showNextMonth :: QCalendarWidget a -> (()) -> IO ()
showNextMonth x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showNextMonth cobj_x0

foreign import ccall "qtc_QCalendarWidget_showNextMonth" qtc_QCalendarWidget_showNextMonth :: Ptr (TQCalendarWidget a) -> IO ()

showNextYear :: QCalendarWidget a -> (()) -> IO ()
showNextYear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showNextYear cobj_x0

foreign import ccall "qtc_QCalendarWidget_showNextYear" qtc_QCalendarWidget_showNextYear :: Ptr (TQCalendarWidget a) -> IO ()

showPreviousMonth :: QCalendarWidget a -> (()) -> IO ()
showPreviousMonth x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showPreviousMonth cobj_x0

foreign import ccall "qtc_QCalendarWidget_showPreviousMonth" qtc_QCalendarWidget_showPreviousMonth :: Ptr (TQCalendarWidget a) -> IO ()

showPreviousYear :: QCalendarWidget a -> (()) -> IO ()
showPreviousYear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showPreviousYear cobj_x0

foreign import ccall "qtc_QCalendarWidget_showPreviousYear" qtc_QCalendarWidget_showPreviousYear :: Ptr (TQCalendarWidget a) -> IO ()

showSelectedDate :: QCalendarWidget a -> (()) -> IO ()
showSelectedDate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showSelectedDate cobj_x0

foreign import ccall "qtc_QCalendarWidget_showSelectedDate" qtc_QCalendarWidget_showSelectedDate :: Ptr (TQCalendarWidget a) -> IO ()

showToday :: QCalendarWidget a -> (()) -> IO ()
showToday x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_showToday cobj_x0

foreign import ccall "qtc_QCalendarWidget_showToday" qtc_QCalendarWidget_showToday :: Ptr (TQCalendarWidget a) -> IO ()

instance QqsizeHint (QCalendarWidget ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_h cobj_x0

foreign import ccall "qtc_QCalendarWidget_sizeHint_h" qtc_QCalendarWidget_sizeHint_h :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QCalendarWidgetSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_h cobj_x0

instance QsizeHint (QCalendarWidget ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QCalendarWidget_sizeHint_qth_h" qtc_QCalendarWidget_sizeHint_qth_h :: Ptr (TQCalendarWidget a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QCalendarWidgetSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

verticalHeaderFormat :: QCalendarWidget a -> (()) -> IO (VerticalHeaderFormat)
verticalHeaderFormat x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_verticalHeaderFormat cobj_x0

foreign import ccall "qtc_QCalendarWidget_verticalHeaderFormat" qtc_QCalendarWidget_verticalHeaderFormat :: Ptr (TQCalendarWidget a) -> IO CLong

weekdayTextFormat :: QCalendarWidget a -> ((DayOfWeek)) -> IO (QTextCharFormat ())
weekdayTextFormat x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_weekdayTextFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_weekdayTextFormat" qtc_QCalendarWidget_weekdayTextFormat :: Ptr (TQCalendarWidget a) -> CLong -> IO (Ptr (TQTextCharFormat ()))

yearShown :: QCalendarWidget a -> (()) -> IO (Int)
yearShown x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_yearShown cobj_x0

foreign import ccall "qtc_QCalendarWidget_yearShown" qtc_QCalendarWidget_yearShown :: Ptr (TQCalendarWidget a) -> IO CInt

qCalendarWidget_delete :: QCalendarWidget a -> IO ()
qCalendarWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_delete cobj_x0

foreign import ccall "qtc_QCalendarWidget_delete" qtc_QCalendarWidget_delete :: Ptr (TQCalendarWidget a) -> IO ()

qCalendarWidget_deleteLater :: QCalendarWidget a -> IO ()
qCalendarWidget_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_deleteLater cobj_x0

foreign import ccall "qtc_QCalendarWidget_deleteLater" qtc_QCalendarWidget_deleteLater :: Ptr (TQCalendarWidget a) -> IO ()

instance QactionEvent (QCalendarWidget ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_actionEvent_h" qtc_QCalendarWidget_actionEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QCalendarWidgetSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QCalendarWidget ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_addAction" qtc_QCalendarWidget_addAction :: Ptr (TQCalendarWidget a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QCalendarWidgetSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_addAction cobj_x0 cobj_x1

instance QchangeEvent (QCalendarWidget ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_changeEvent_h" qtc_QCalendarWidget_changeEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QCalendarWidgetSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QCalendarWidget ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_closeEvent_h" qtc_QCalendarWidget_closeEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QCalendarWidgetSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QCalendarWidget ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_contextMenuEvent_h" qtc_QCalendarWidget_contextMenuEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QCalendarWidgetSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_contextMenuEvent_h cobj_x0 cobj_x1

instance Qcreate (QCalendarWidget ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_create cobj_x0

foreign import ccall "qtc_QCalendarWidget_create" qtc_QCalendarWidget_create :: Ptr (TQCalendarWidget a) -> IO ()

instance Qcreate (QCalendarWidgetSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_create cobj_x0

instance Qcreate (QCalendarWidget ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_create1" qtc_QCalendarWidget_create1 :: Ptr (TQCalendarWidget a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QCalendarWidgetSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create1 cobj_x0 cobj_x1

instance Qcreate (QCalendarWidget ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QCalendarWidget_create2" qtc_QCalendarWidget_create2 :: Ptr (TQCalendarWidget a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QCalendarWidgetSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QCalendarWidget ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QCalendarWidget_create3" qtc_QCalendarWidget_create3 :: Ptr (TQCalendarWidget a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QCalendarWidgetSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QCalendarWidget ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy cobj_x0

foreign import ccall "qtc_QCalendarWidget_destroy" qtc_QCalendarWidget_destroy :: Ptr (TQCalendarWidget a) -> IO ()

instance Qdestroy (QCalendarWidgetSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy cobj_x0

instance Qdestroy (QCalendarWidget ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_destroy1" qtc_QCalendarWidget_destroy1 :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance Qdestroy (QCalendarWidgetSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QCalendarWidget ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QCalendarWidget_destroy2" qtc_QCalendarWidget_destroy2 :: Ptr (TQCalendarWidget a) -> CBool -> CBool -> IO ()

instance Qdestroy (QCalendarWidgetSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QCalendarWidget ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_devType_h cobj_x0

foreign import ccall "qtc_QCalendarWidget_devType_h" qtc_QCalendarWidget_devType_h :: Ptr (TQCalendarWidget a) -> IO CInt

instance QdevType (QCalendarWidgetSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_devType_h cobj_x0

instance QdragEnterEvent (QCalendarWidget ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragEnterEvent_h" qtc_QCalendarWidget_dragEnterEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QCalendarWidgetSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QCalendarWidget ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragLeaveEvent_h" qtc_QCalendarWidget_dragLeaveEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QCalendarWidgetSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QCalendarWidget ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dragMoveEvent_h" qtc_QCalendarWidget_dragMoveEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QCalendarWidgetSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QCalendarWidget ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_dropEvent_h" qtc_QCalendarWidget_dropEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QCalendarWidgetSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QCalendarWidget ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_enabledChange" qtc_QCalendarWidget_enabledChange :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QenabledChange (QCalendarWidgetSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QCalendarWidget ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_enterEvent_h" qtc_QCalendarWidget_enterEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QCalendarWidgetSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QCalendarWidget ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_focusInEvent_h" qtc_QCalendarWidget_focusInEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QCalendarWidgetSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QCalendarWidget ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusNextChild cobj_x0

foreign import ccall "qtc_QCalendarWidget_focusNextChild" qtc_QCalendarWidget_focusNextChild :: Ptr (TQCalendarWidget a) -> IO CBool

instance QfocusNextChild (QCalendarWidgetSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusNextChild cobj_x0

instance QfocusNextPrevChild (QCalendarWidget ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_focusNextPrevChild" qtc_QCalendarWidget_focusNextPrevChild :: Ptr (TQCalendarWidget a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QCalendarWidgetSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QCalendarWidget ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_focusOutEvent_h" qtc_QCalendarWidget_focusOutEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QCalendarWidgetSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QCalendarWidget ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusPreviousChild cobj_x0

foreign import ccall "qtc_QCalendarWidget_focusPreviousChild" qtc_QCalendarWidget_focusPreviousChild :: Ptr (TQCalendarWidget a) -> IO CBool

instance QfocusPreviousChild (QCalendarWidgetSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_focusPreviousChild cobj_x0

instance QfontChange (QCalendarWidget ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_fontChange" qtc_QCalendarWidget_fontChange :: Ptr (TQCalendarWidget a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QCalendarWidgetSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QCalendarWidget ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCalendarWidget_heightForWidth_h" qtc_QCalendarWidget_heightForWidth_h :: Ptr (TQCalendarWidget a) -> CInt -> IO CInt

instance QheightForWidth (QCalendarWidgetSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QCalendarWidget ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_hideEvent_h" qtc_QCalendarWidget_hideEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QCalendarWidgetSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QCalendarWidget ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_inputMethodEvent" qtc_QCalendarWidget_inputMethodEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QCalendarWidgetSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QCalendarWidget ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_inputMethodQuery_h" qtc_QCalendarWidget_inputMethodQuery_h :: Ptr (TQCalendarWidget a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QCalendarWidgetSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QCalendarWidget ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_keyReleaseEvent_h" qtc_QCalendarWidget_keyReleaseEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QCalendarWidgetSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QCalendarWidget ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_languageChange cobj_x0

foreign import ccall "qtc_QCalendarWidget_languageChange" qtc_QCalendarWidget_languageChange :: Ptr (TQCalendarWidget a) -> IO ()

instance QlanguageChange (QCalendarWidgetSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_languageChange cobj_x0

instance QleaveEvent (QCalendarWidget ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_leaveEvent_h" qtc_QCalendarWidget_leaveEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QCalendarWidgetSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QCalendarWidget ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCalendarWidget_metric" qtc_QCalendarWidget_metric :: Ptr (TQCalendarWidget a) -> CLong -> IO CInt

instance Qmetric (QCalendarWidgetSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseDoubleClickEvent_h" qtc_QCalendarWidget_mouseDoubleClickEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseMoveEvent_h" qtc_QCalendarWidget_mouseMoveEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QCalendarWidget ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_mouseReleaseEvent_h" qtc_QCalendarWidget_mouseReleaseEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QCalendarWidgetSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QCalendarWidget ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCalendarWidget_move1" qtc_QCalendarWidget_move1 :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QCalendarWidgetSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QCalendarWidget ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCalendarWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QCalendarWidget_move_qth" qtc_QCalendarWidget_move_qth :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO ()

instance Qmove (QCalendarWidgetSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QCalendarWidget_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QCalendarWidget ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_move cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_move" qtc_QCalendarWidget_move :: Ptr (TQCalendarWidget a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QCalendarWidgetSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_move cobj_x0 cobj_x1

instance QmoveEvent (QCalendarWidget ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_moveEvent_h" qtc_QCalendarWidget_moveEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QCalendarWidgetSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QCalendarWidget ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_paintEngine_h cobj_x0

foreign import ccall "qtc_QCalendarWidget_paintEngine_h" qtc_QCalendarWidget_paintEngine_h :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QCalendarWidgetSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_paintEngine_h cobj_x0

instance QpaintEvent (QCalendarWidget ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_paintEvent_h" qtc_QCalendarWidget_paintEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QCalendarWidgetSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QCalendarWidget ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_paletteChange" qtc_QCalendarWidget_paletteChange :: Ptr (TQCalendarWidget a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QCalendarWidgetSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QCalendarWidget ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_repaint cobj_x0

foreign import ccall "qtc_QCalendarWidget_repaint" qtc_QCalendarWidget_repaint :: Ptr (TQCalendarWidget a) -> IO ()

instance Qrepaint (QCalendarWidgetSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_repaint cobj_x0

instance Qrepaint (QCalendarWidget ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QCalendarWidget_repaint2" qtc_QCalendarWidget_repaint2 :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QCalendarWidgetSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QCalendarWidget ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_repaint1" qtc_QCalendarWidget_repaint1 :: Ptr (TQCalendarWidget a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QCalendarWidgetSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QCalendarWidget ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_resetInputContext cobj_x0

foreign import ccall "qtc_QCalendarWidget_resetInputContext" qtc_QCalendarWidget_resetInputContext :: Ptr (TQCalendarWidget a) -> IO ()

instance QresetInputContext (QCalendarWidgetSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_resetInputContext cobj_x0

instance Qresize (QCalendarWidget ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCalendarWidget_resize1" qtc_QCalendarWidget_resize1 :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QCalendarWidgetSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QCalendarWidget ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_resize" qtc_QCalendarWidget_resize :: Ptr (TQCalendarWidget a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QCalendarWidgetSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_resize cobj_x0 cobj_x1

instance Qresize (QCalendarWidget ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QCalendarWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QCalendarWidget_resize_qth" qtc_QCalendarWidget_resize_qth :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> IO ()

instance Qresize (QCalendarWidgetSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QCalendarWidget_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QCalendarWidget ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QCalendarWidget_setGeometry1" qtc_QCalendarWidget_setGeometry1 :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QCalendarWidgetSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QCalendarWidget ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_setGeometry" qtc_QCalendarWidget_setGeometry :: Ptr (TQCalendarWidget a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QCalendarWidgetSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QCalendarWidget ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QCalendarWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QCalendarWidget_setGeometry_qth" qtc_QCalendarWidget_setGeometry_qth :: Ptr (TQCalendarWidget a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QCalendarWidgetSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QCalendarWidget_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QCalendarWidget ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setMouseTracking" qtc_QCalendarWidget_setMouseTracking :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QsetMouseTracking (QCalendarWidgetSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QCalendarWidget ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_setVisible_h" qtc_QCalendarWidget_setVisible_h :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QsetVisible (QCalendarWidgetSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QCalendarWidget ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_showEvent_h" qtc_QCalendarWidget_showEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QCalendarWidgetSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QCalendarWidget ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_tabletEvent_h" qtc_QCalendarWidget_tabletEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QCalendarWidgetSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QCalendarWidget ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_updateMicroFocus cobj_x0

foreign import ccall "qtc_QCalendarWidget_updateMicroFocus" qtc_QCalendarWidget_updateMicroFocus :: Ptr (TQCalendarWidget a) -> IO ()

instance QupdateMicroFocus (QCalendarWidgetSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_updateMicroFocus cobj_x0

instance QwheelEvent (QCalendarWidget ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_wheelEvent_h" qtc_QCalendarWidget_wheelEvent_h :: Ptr (TQCalendarWidget a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QCalendarWidgetSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QCalendarWidget ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCalendarWidget_windowActivationChange" qtc_QCalendarWidget_windowActivationChange :: Ptr (TQCalendarWidget a) -> CBool -> IO ()

instance QwindowActivationChange (QCalendarWidgetSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QCalendarWidget ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_childEvent" qtc_QCalendarWidget_childEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QCalendarWidgetSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QCalendarWidget ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCalendarWidget_connectNotify" qtc_QCalendarWidget_connectNotify :: Ptr (TQCalendarWidget a) -> CWString -> IO ()

instance QconnectNotify (QCalendarWidgetSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QCalendarWidget ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_customEvent" qtc_QCalendarWidget_customEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QCalendarWidgetSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QCalendarWidget ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCalendarWidget_disconnectNotify" qtc_QCalendarWidget_disconnectNotify :: Ptr (TQCalendarWidget a) -> CWString -> IO ()

instance QdisconnectNotify (QCalendarWidgetSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QCalendarWidget ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCalendarWidget_eventFilter_h" qtc_QCalendarWidget_eventFilter_h :: Ptr (TQCalendarWidget a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QCalendarWidgetSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCalendarWidget_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QCalendarWidget ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QCalendarWidget_receivers" qtc_QCalendarWidget_receivers :: Ptr (TQCalendarWidget a) -> CWString -> IO CInt

instance Qreceivers (QCalendarWidgetSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCalendarWidget_receivers cobj_x0 cstr_x1

instance Qsender (QCalendarWidget ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sender cobj_x0

foreign import ccall "qtc_QCalendarWidget_sender" qtc_QCalendarWidget_sender :: Ptr (TQCalendarWidget a) -> IO (Ptr (TQObject ()))

instance Qsender (QCalendarWidgetSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCalendarWidget_sender cobj_x0

instance QtimerEvent (QCalendarWidget ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCalendarWidget_timerEvent" qtc_QCalendarWidget_timerEvent :: Ptr (TQCalendarWidget a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QCalendarWidgetSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCalendarWidget_timerEvent cobj_x0 cobj_x1

