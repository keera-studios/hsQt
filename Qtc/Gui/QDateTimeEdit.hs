{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateTimeEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDateTimeEdit (
  QqDateTimeEdit(..)
  ,calendarPopup
  ,clearMaximumDate
  ,clearMaximumTime
  ,clearMinimumDate
  ,clearMinimumTime
  ,currentSection
  ,currentSectionIndex
  ,dateTime
  ,displayFormat
  ,displayedSections
  ,maximumTime
  ,minimumTime
  ,sectionAt
  ,sectionCount
  ,sectionText
  ,setCalendarPopup
  ,setCurrentSection
  ,setCurrentSectionIndex
  ,setDateTime
  ,setDisplayFormat
  ,setMaximumTime
  ,setMinimumTime
  ,setSelectedSection
  ,setTimeRange
  ,qDateTimeEdit_delete
  ,qDateTimeEdit_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QAbstractSpinBox
import Qtc.Enums.Gui.QDateTimeEdit

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDateTimeEdit ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDateTimeEdit_userMethod" qtc_QDateTimeEdit_userMethod :: Ptr (TQDateTimeEdit a) -> CInt -> IO ()

instance QuserMethod (QDateTimeEditSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDateTimeEdit_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDateTimeEdit ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDateTimeEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDateTimeEdit_userMethodVariant" qtc_QDateTimeEdit_userMethodVariant :: Ptr (TQDateTimeEdit a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDateTimeEditSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDateTimeEdit_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDateTimeEdit x1 where
  qDateTimeEdit :: x1 -> IO (QDateTimeEdit ())

instance QqDateTimeEdit (()) where
 qDateTimeEdit ()
  = withQDateTimeEditResult $
    qtc_QDateTimeEdit

foreign import ccall "qtc_QDateTimeEdit" qtc_QDateTimeEdit :: IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QTime t1)) where
 qDateTimeEdit (x1)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit1 cobj_x1

foreign import ccall "qtc_QDateTimeEdit1" qtc_QDateTimeEdit1 :: Ptr (TQTime t1) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QDateTime t1)) where
 qDateTimeEdit (x1)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit2 cobj_x1

foreign import ccall "qtc_QDateTimeEdit2" qtc_QDateTimeEdit2 :: Ptr (TQDateTime t1) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QDate t1)) where
 qDateTimeEdit (x1)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit3 cobj_x1

foreign import ccall "qtc_QDateTimeEdit3" qtc_QDateTimeEdit3 :: Ptr (TQDate t1) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QWidget t1)) where
 qDateTimeEdit (x1)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit4 cobj_x1

foreign import ccall "qtc_QDateTimeEdit4" qtc_QDateTimeEdit4 :: Ptr (TQWidget t1) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QDate t1, QWidget t2)) where
 qDateTimeEdit (x1, x2)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit5 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit5" qtc_QDateTimeEdit5 :: Ptr (TQDate t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QDateTime t1, QWidget t2)) where
 qDateTimeEdit (x1, x2)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit6 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit6" qtc_QDateTimeEdit6 :: Ptr (TQDateTime t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQDateTimeEdit ()))

instance QqDateTimeEdit ((QTime t1, QWidget t2)) where
 qDateTimeEdit (x1, x2)
  = withQDateTimeEditResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit7 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit7" qtc_QDateTimeEdit7 :: Ptr (TQTime t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQDateTimeEdit ()))

calendarPopup :: QDateTimeEdit a -> (()) -> IO (Bool)
calendarPopup x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_calendarPopup cobj_x0

foreign import ccall "qtc_QDateTimeEdit_calendarPopup" qtc_QDateTimeEdit_calendarPopup :: Ptr (TQDateTimeEdit a) -> IO CBool

instance Qclear (QDateTimeEdit ()) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clear_h cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clear_h" qtc_QDateTimeEdit_clear_h :: Ptr (TQDateTimeEdit a) -> IO ()

instance Qclear (QDateTimeEditSc a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clear_h cobj_x0

clearMaximumDate :: QDateTimeEdit a -> (()) -> IO ()
clearMaximumDate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clearMaximumDate cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clearMaximumDate" qtc_QDateTimeEdit_clearMaximumDate :: Ptr (TQDateTimeEdit a) -> IO ()

clearMaximumTime :: QDateTimeEdit a -> (()) -> IO ()
clearMaximumTime x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clearMaximumTime cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clearMaximumTime" qtc_QDateTimeEdit_clearMaximumTime :: Ptr (TQDateTimeEdit a) -> IO ()

clearMinimumDate :: QDateTimeEdit a -> (()) -> IO ()
clearMinimumDate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clearMinimumDate cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clearMinimumDate" qtc_QDateTimeEdit_clearMinimumDate :: Ptr (TQDateTimeEdit a) -> IO ()

clearMinimumTime :: QDateTimeEdit a -> (()) -> IO ()
clearMinimumTime x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_clearMinimumTime cobj_x0

foreign import ccall "qtc_QDateTimeEdit_clearMinimumTime" qtc_QDateTimeEdit_clearMinimumTime :: Ptr (TQDateTimeEdit a) -> IO ()

currentSection :: QDateTimeEdit a -> (()) -> IO (Section)
currentSection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_currentSection cobj_x0

foreign import ccall "qtc_QDateTimeEdit_currentSection" qtc_QDateTimeEdit_currentSection :: Ptr (TQDateTimeEdit a) -> IO CLong

currentSectionIndex :: QDateTimeEdit a -> (()) -> IO (Int)
currentSectionIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_currentSectionIndex cobj_x0

foreign import ccall "qtc_QDateTimeEdit_currentSectionIndex" qtc_QDateTimeEdit_currentSectionIndex :: Ptr (TQDateTimeEdit a) -> IO CInt

instance Qdate (QDateTimeEdit a) (()) where
 date x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_date cobj_x0

foreign import ccall "qtc_QDateTimeEdit_date" qtc_QDateTimeEdit_date :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQDate ()))

dateTime :: QDateTimeEdit a -> (()) -> IO (QDateTime ())
dateTime x0 ()
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_dateTime cobj_x0

foreign import ccall "qtc_QDateTimeEdit_dateTime" qtc_QDateTimeEdit_dateTime :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText (QDateTimeEdit ()) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_dateTimeFromText_h cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_dateTimeFromText_h" qtc_QDateTimeEdit_dateTimeFromText_h :: Ptr (TQDateTimeEdit a) -> CWString -> IO (Ptr (TQDateTime ()))

instance QdateTimeFromText (QDateTimeEditSc a) ((String)) where
 dateTimeFromText x0 (x1)
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_dateTimeFromText_h cobj_x0 cstr_x1

displayFormat :: QDateTimeEdit a -> (()) -> IO (String)
displayFormat x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_displayFormat cobj_x0

foreign import ccall "qtc_QDateTimeEdit_displayFormat" qtc_QDateTimeEdit_displayFormat :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQString ()))

displayedSections :: QDateTimeEdit a -> (()) -> IO (Sections)
displayedSections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_displayedSections cobj_x0

foreign import ccall "qtc_QDateTimeEdit_displayedSections" qtc_QDateTimeEdit_displayedSections :: Ptr (TQDateTimeEdit a) -> IO CLong

instance Qevent (QDateTimeEdit ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_event_h" qtc_QDateTimeEdit_event_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDateTimeEditSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QDateTimeEdit ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_focusInEvent_h" qtc_QDateTimeEdit_focusInEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QDateTimeEditSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QDateTimeEdit ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_focusNextPrevChild" qtc_QDateTimeEdit_focusNextPrevChild :: Ptr (TQDateTimeEdit a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QDateTimeEditSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusNextPrevChild cobj_x0 (toCBool x1)

instance QinitStyleOption (QDateTimeEdit ()) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_initStyleOption" qtc_QDateTimeEdit_initStyleOption :: Ptr (TQDateTimeEdit a) -> Ptr (TQStyleOptionSpinBox t1) -> IO ()

instance QinitStyleOption (QDateTimeEditSc a) ((QStyleOptionSpinBox t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_initStyleOption cobj_x0 cobj_x1

instance QkeyPressEvent (QDateTimeEdit ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_keyPressEvent_h" qtc_QDateTimeEdit_keyPressEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QDateTimeEditSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyPressEvent_h cobj_x0 cobj_x1

instance QmaximumDate (QDateTimeEdit a) (()) where
 maximumDate x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_maximumDate cobj_x0

foreign import ccall "qtc_QDateTimeEdit_maximumDate" qtc_QDateTimeEdit_maximumDate :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQDate ()))

maximumTime :: QDateTimeEdit a -> (()) -> IO (QTime ())
maximumTime x0 ()
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_maximumTime cobj_x0

foreign import ccall "qtc_QDateTimeEdit_maximumTime" qtc_QDateTimeEdit_maximumTime :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQTime ()))

instance QminimumDate (QDateTimeEdit a) (()) where
 minimumDate x0 ()
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumDate cobj_x0

foreign import ccall "qtc_QDateTimeEdit_minimumDate" qtc_QDateTimeEdit_minimumDate :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQDate ()))

minimumTime :: QDateTimeEdit a -> (()) -> IO (QTime ())
minimumTime x0 ()
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumTime cobj_x0

foreign import ccall "qtc_QDateTimeEdit_minimumTime" qtc_QDateTimeEdit_minimumTime :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQTime ()))

instance QmousePressEvent (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mousePressEvent_h" qtc_QDateTimeEdit_mousePressEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mousePressEvent_h cobj_x0 cobj_x1

instance QpaintEvent (QDateTimeEdit ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_paintEvent_h" qtc_QDateTimeEdit_paintEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QDateTimeEditSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paintEvent_h cobj_x0 cobj_x1

sectionAt :: QDateTimeEdit a -> ((Int)) -> IO (Section)
sectionAt x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sectionAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_sectionAt" qtc_QDateTimeEdit_sectionAt :: Ptr (TQDateTimeEdit a) -> CInt -> IO CLong

sectionCount :: QDateTimeEdit a -> (()) -> IO (Int)
sectionCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sectionCount cobj_x0

foreign import ccall "qtc_QDateTimeEdit_sectionCount" qtc_QDateTimeEdit_sectionCount :: Ptr (TQDateTimeEdit a) -> IO CInt

sectionText :: QDateTimeEdit a -> ((Section)) -> IO (String)
sectionText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sectionText cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_sectionText" qtc_QDateTimeEdit_sectionText :: Ptr (TQDateTimeEdit a) -> CLong -> IO (Ptr (TQString ()))

setCalendarPopup :: QDateTimeEdit a -> ((Bool)) -> IO ()
setCalendarPopup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setCalendarPopup cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_setCalendarPopup" qtc_QDateTimeEdit_setCalendarPopup :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

setCurrentSection :: QDateTimeEdit a -> ((Section)) -> IO ()
setCurrentSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setCurrentSection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_setCurrentSection" qtc_QDateTimeEdit_setCurrentSection :: Ptr (TQDateTimeEdit a) -> CLong -> IO ()

setCurrentSectionIndex :: QDateTimeEdit a -> ((Int)) -> IO ()
setCurrentSectionIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setCurrentSectionIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_setCurrentSectionIndex" qtc_QDateTimeEdit_setCurrentSectionIndex :: Ptr (TQDateTimeEdit a) -> CInt -> IO ()

instance QsetDate (QDateTimeEdit a) ((QDate t1)) (IO ()) where
 setDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setDate cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setDate" qtc_QDateTimeEdit_setDate :: Ptr (TQDateTimeEdit a) -> Ptr (TQDate t1) -> IO ()

instance QsetDateRange (QDateTimeEdit a) ((QDate t1, QDate t2)) where
 setDateRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_setDateRange cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit_setDateRange" qtc_QDateTimeEdit_setDateRange :: Ptr (TQDateTimeEdit a) -> Ptr (TQDate t1) -> Ptr (TQDate t2) -> IO ()

setDateTime :: QDateTimeEdit a -> ((QDateTime t1)) -> IO ()
setDateTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setDateTime cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setDateTime" qtc_QDateTimeEdit_setDateTime :: Ptr (TQDateTimeEdit a) -> Ptr (TQDateTime t1) -> IO ()

setDisplayFormat :: QDateTimeEdit a -> ((String)) -> IO ()
setDisplayFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_setDisplayFormat cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_setDisplayFormat" qtc_QDateTimeEdit_setDisplayFormat :: Ptr (TQDateTimeEdit a) -> CWString -> IO ()

instance QsetMaximumDate (QDateTimeEdit a) ((QDate t1)) where
 setMaximumDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setMaximumDate cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setMaximumDate" qtc_QDateTimeEdit_setMaximumDate :: Ptr (TQDateTimeEdit a) -> Ptr (TQDate t1) -> IO ()

setMaximumTime :: QDateTimeEdit a -> ((QTime t1)) -> IO ()
setMaximumTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setMaximumTime cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setMaximumTime" qtc_QDateTimeEdit_setMaximumTime :: Ptr (TQDateTimeEdit a) -> Ptr (TQTime t1) -> IO ()

instance QsetMinimumDate (QDateTimeEdit a) ((QDate t1)) where
 setMinimumDate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setMinimumDate cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setMinimumDate" qtc_QDateTimeEdit_setMinimumDate :: Ptr (TQDateTimeEdit a) -> Ptr (TQDate t1) -> IO ()

setMinimumTime :: QDateTimeEdit a -> ((QTime t1)) -> IO ()
setMinimumTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setMinimumTime cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setMinimumTime" qtc_QDateTimeEdit_setMinimumTime :: Ptr (TQDateTimeEdit a) -> Ptr (TQTime t1) -> IO ()

setSelectedSection :: QDateTimeEdit a -> ((Section)) -> IO ()
setSelectedSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setSelectedSection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_setSelectedSection" qtc_QDateTimeEdit_setSelectedSection :: Ptr (TQDateTimeEdit a) -> CLong -> IO ()

instance QsetTime (QDateTimeEdit a) ((QTime t1)) where
 setTime x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setTime cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setTime" qtc_QDateTimeEdit_setTime :: Ptr (TQDateTimeEdit a) -> Ptr (TQTime t1) -> IO ()

setTimeRange :: QDateTimeEdit a -> ((QTime t1, QTime t2)) -> IO ()
setTimeRange x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_setTimeRange cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit_setTimeRange" qtc_QDateTimeEdit_setTimeRange :: Ptr (TQDateTimeEdit a) -> Ptr (TQTime t1) -> Ptr (TQTime t2) -> IO ()

instance QqsizeHint (QDateTimeEdit ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_h cobj_x0

foreign import ccall "qtc_QDateTimeEdit_sizeHint_h" qtc_QDateTimeEdit_sizeHint_h :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QDateTimeEditSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_h cobj_x0

instance QsizeHint (QDateTimeEdit ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateTimeEdit_sizeHint_qth_h" qtc_QDateTimeEdit_sizeHint_qth_h :: Ptr (TQDateTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QDateTimeEditSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstepBy (QDateTimeEdit ()) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepBy_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_stepBy_h" qtc_QDateTimeEdit_stepBy_h :: Ptr (TQDateTimeEdit a) -> CInt -> IO ()

instance QstepBy (QDateTimeEditSc a) ((Int)) where
 stepBy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepBy_h cobj_x0 (toCInt x1)

instance QstepEnabled (QDateTimeEdit ()) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepEnabled cobj_x0

foreign import ccall "qtc_QDateTimeEdit_stepEnabled" qtc_QDateTimeEdit_stepEnabled :: Ptr (TQDateTimeEdit a) -> IO CLong

instance QstepEnabled (QDateTimeEditSc a) (()) where
 stepEnabled x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_stepEnabled cobj_x0

instance Qtime (QDateTimeEdit a) (()) where
 time x0 ()
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_time cobj_x0

foreign import ccall "qtc_QDateTimeEdit_time" qtc_QDateTimeEdit_time :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQTime ()))

instance QwheelEvent (QDateTimeEdit ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_wheelEvent_h" qtc_QDateTimeEdit_wheelEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QDateTimeEditSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_wheelEvent_h cobj_x0 cobj_x1

qDateTimeEdit_delete :: QDateTimeEdit a -> IO ()
qDateTimeEdit_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_delete cobj_x0

foreign import ccall "qtc_QDateTimeEdit_delete" qtc_QDateTimeEdit_delete :: Ptr (TQDateTimeEdit a) -> IO ()

qDateTimeEdit_deleteLater :: QDateTimeEdit a -> IO ()
qDateTimeEdit_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_deleteLater cobj_x0

foreign import ccall "qtc_QDateTimeEdit_deleteLater" qtc_QDateTimeEdit_deleteLater :: Ptr (TQDateTimeEdit a) -> IO ()

instance QchangeEvent (QDateTimeEdit ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_changeEvent_h" qtc_QDateTimeEdit_changeEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QDateTimeEditSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_changeEvent_h cobj_x0 cobj_x1

instance QcloseEvent (QDateTimeEdit ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_closeEvent_h" qtc_QDateTimeEdit_closeEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QDateTimeEditSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_closeEvent_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QDateTimeEdit ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_contextMenuEvent_h" qtc_QDateTimeEdit_contextMenuEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QDateTimeEditSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_contextMenuEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QDateTimeEdit ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_focusOutEvent_h" qtc_QDateTimeEdit_focusOutEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QDateTimeEditSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_focusOutEvent_h cobj_x0 cobj_x1

instance QhideEvent (QDateTimeEdit ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_hideEvent_h" qtc_QDateTimeEdit_hideEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QDateTimeEditSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QDateTimeEdit ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_keyReleaseEvent_h" qtc_QDateTimeEdit_keyReleaseEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QDateTimeEditSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlineEdit (QDateTimeEdit ()) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_lineEdit cobj_x0

foreign import ccall "qtc_QDateTimeEdit_lineEdit" qtc_QDateTimeEdit_lineEdit :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQLineEdit ()))

instance QlineEdit (QDateTimeEditSc a) (()) where
 lineEdit x0 ()
  = withQLineEditResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_lineEdit cobj_x0

instance QqminimumSizeHint (QDateTimeEdit ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QDateTimeEdit_minimumSizeHint_h" qtc_QDateTimeEdit_minimumSizeHint_h :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QDateTimeEditSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QDateTimeEdit ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QDateTimeEdit_minimumSizeHint_qth_h" qtc_QDateTimeEdit_minimumSizeHint_qth_h :: Ptr (TQDateTimeEdit a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QDateTimeEditSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseMoveEvent_h" qtc_QDateTimeEdit_mouseMoveEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseReleaseEvent_h" qtc_QDateTimeEdit_mouseReleaseEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QresizeEvent (QDateTimeEdit ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_resizeEvent_h" qtc_QDateTimeEdit_resizeEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QDateTimeEditSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resizeEvent_h cobj_x0 cobj_x1

instance QsetLineEdit (QDateTimeEdit ()) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setLineEdit cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setLineEdit" qtc_QDateTimeEdit_setLineEdit :: Ptr (TQDateTimeEdit a) -> Ptr (TQLineEdit t1) -> IO ()

instance QsetLineEdit (QDateTimeEditSc a) ((QLineEdit t1)) where
 setLineEdit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setLineEdit cobj_x0 cobj_x1

instance QshowEvent (QDateTimeEdit ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_showEvent_h" qtc_QDateTimeEdit_showEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QDateTimeEditSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_showEvent_h cobj_x0 cobj_x1

instance QtimerEvent (QDateTimeEdit ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_timerEvent" qtc_QDateTimeEdit_timerEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDateTimeEditSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_timerEvent cobj_x0 cobj_x1

instance QactionEvent (QDateTimeEdit ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_actionEvent_h" qtc_QDateTimeEdit_actionEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QDateTimeEditSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QDateTimeEdit ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_addAction" qtc_QDateTimeEdit_addAction :: Ptr (TQDateTimeEdit a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QDateTimeEditSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_addAction cobj_x0 cobj_x1

instance Qcreate (QDateTimeEdit ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_create cobj_x0

foreign import ccall "qtc_QDateTimeEdit_create" qtc_QDateTimeEdit_create :: Ptr (TQDateTimeEdit a) -> IO ()

instance Qcreate (QDateTimeEditSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_create cobj_x0

instance Qcreate (QDateTimeEdit ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_create1" qtc_QDateTimeEdit_create1 :: Ptr (TQDateTimeEdit a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QDateTimeEditSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create1 cobj_x0 cobj_x1

instance Qcreate (QDateTimeEdit ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QDateTimeEdit_create2" qtc_QDateTimeEdit_create2 :: Ptr (TQDateTimeEdit a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QDateTimeEditSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QDateTimeEdit ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QDateTimeEdit_create3" qtc_QDateTimeEdit_create3 :: Ptr (TQDateTimeEdit a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QDateTimeEditSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QDateTimeEdit ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy cobj_x0

foreign import ccall "qtc_QDateTimeEdit_destroy" qtc_QDateTimeEdit_destroy :: Ptr (TQDateTimeEdit a) -> IO ()

instance Qdestroy (QDateTimeEditSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy cobj_x0

instance Qdestroy (QDateTimeEdit ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_destroy1" qtc_QDateTimeEdit_destroy1 :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance Qdestroy (QDateTimeEditSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QDateTimeEdit ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QDateTimeEdit_destroy2" qtc_QDateTimeEdit_destroy2 :: Ptr (TQDateTimeEdit a) -> CBool -> CBool -> IO ()

instance Qdestroy (QDateTimeEditSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QDateTimeEdit ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_devType_h cobj_x0

foreign import ccall "qtc_QDateTimeEdit_devType_h" qtc_QDateTimeEdit_devType_h :: Ptr (TQDateTimeEdit a) -> IO CInt

instance QdevType (QDateTimeEditSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_devType_h cobj_x0

instance QdragEnterEvent (QDateTimeEdit ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragEnterEvent_h" qtc_QDateTimeEdit_dragEnterEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QDateTimeEditSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QDateTimeEdit ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragLeaveEvent_h" qtc_QDateTimeEdit_dragLeaveEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QDateTimeEditSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QDateTimeEdit ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dragMoveEvent_h" qtc_QDateTimeEdit_dragMoveEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QDateTimeEditSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QDateTimeEdit ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_dropEvent_h" qtc_QDateTimeEdit_dropEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QDateTimeEditSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QDateTimeEdit ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_enabledChange" qtc_QDateTimeEdit_enabledChange :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance QenabledChange (QDateTimeEditSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QDateTimeEdit ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_enterEvent_h" qtc_QDateTimeEdit_enterEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QDateTimeEditSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QDateTimeEdit ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusNextChild cobj_x0

foreign import ccall "qtc_QDateTimeEdit_focusNextChild" qtc_QDateTimeEdit_focusNextChild :: Ptr (TQDateTimeEdit a) -> IO CBool

instance QfocusNextChild (QDateTimeEditSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusNextChild cobj_x0

instance QfocusPreviousChild (QDateTimeEdit ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusPreviousChild cobj_x0

foreign import ccall "qtc_QDateTimeEdit_focusPreviousChild" qtc_QDateTimeEdit_focusPreviousChild :: Ptr (TQDateTimeEdit a) -> IO CBool

instance QfocusPreviousChild (QDateTimeEditSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_focusPreviousChild cobj_x0

instance QfontChange (QDateTimeEdit ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_fontChange" qtc_QDateTimeEdit_fontChange :: Ptr (TQDateTimeEdit a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QDateTimeEditSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QDateTimeEdit ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDateTimeEdit_heightForWidth_h" qtc_QDateTimeEdit_heightForWidth_h :: Ptr (TQDateTimeEdit a) -> CInt -> IO CInt

instance QheightForWidth (QDateTimeEditSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_heightForWidth_h cobj_x0 (toCInt x1)

instance QinputMethodEvent (QDateTimeEdit ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_inputMethodEvent" qtc_QDateTimeEdit_inputMethodEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QDateTimeEditSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QDateTimeEdit ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_inputMethodQuery_h" qtc_QDateTimeEdit_inputMethodQuery_h :: Ptr (TQDateTimeEdit a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QDateTimeEditSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QlanguageChange (QDateTimeEdit ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_languageChange cobj_x0

foreign import ccall "qtc_QDateTimeEdit_languageChange" qtc_QDateTimeEdit_languageChange :: Ptr (TQDateTimeEdit a) -> IO ()

instance QlanguageChange (QDateTimeEditSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_languageChange cobj_x0

instance QleaveEvent (QDateTimeEdit ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_leaveEvent_h" qtc_QDateTimeEdit_leaveEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QDateTimeEditSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QDateTimeEdit ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDateTimeEdit_metric" qtc_QDateTimeEdit_metric :: Ptr (TQDateTimeEdit a) -> CLong -> IO CInt

instance Qmetric (QDateTimeEditSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QDateTimeEdit ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_mouseDoubleClickEvent_h" qtc_QDateTimeEdit_mouseDoubleClickEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QDateTimeEditSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QDateTimeEdit ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDateTimeEdit_move1" qtc_QDateTimeEdit_move1 :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QDateTimeEditSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QDateTimeEdit ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDateTimeEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QDateTimeEdit_move_qth" qtc_QDateTimeEdit_move_qth :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> IO ()

instance Qmove (QDateTimeEditSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QDateTimeEdit_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QDateTimeEdit ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_move cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_move" qtc_QDateTimeEdit_move :: Ptr (TQDateTimeEdit a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QDateTimeEditSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_move cobj_x0 cobj_x1

instance QmoveEvent (QDateTimeEdit ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_moveEvent_h" qtc_QDateTimeEdit_moveEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QDateTimeEditSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QDateTimeEdit ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_paintEngine_h cobj_x0

foreign import ccall "qtc_QDateTimeEdit_paintEngine_h" qtc_QDateTimeEdit_paintEngine_h :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QDateTimeEditSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_paintEngine_h cobj_x0

instance QpaletteChange (QDateTimeEdit ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_paletteChange" qtc_QDateTimeEdit_paletteChange :: Ptr (TQDateTimeEdit a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QDateTimeEditSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QDateTimeEdit ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_repaint cobj_x0

foreign import ccall "qtc_QDateTimeEdit_repaint" qtc_QDateTimeEdit_repaint :: Ptr (TQDateTimeEdit a) -> IO ()

instance Qrepaint (QDateTimeEditSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_repaint cobj_x0

instance Qrepaint (QDateTimeEdit ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDateTimeEdit_repaint2" qtc_QDateTimeEdit_repaint2 :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QDateTimeEditSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QDateTimeEdit ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_repaint1" qtc_QDateTimeEdit_repaint1 :: Ptr (TQDateTimeEdit a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QDateTimeEditSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QDateTimeEdit ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_resetInputContext cobj_x0

foreign import ccall "qtc_QDateTimeEdit_resetInputContext" qtc_QDateTimeEdit_resetInputContext :: Ptr (TQDateTimeEdit a) -> IO ()

instance QresetInputContext (QDateTimeEditSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_resetInputContext cobj_x0

instance Qresize (QDateTimeEdit ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QDateTimeEdit_resize1" qtc_QDateTimeEdit_resize1 :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QDateTimeEditSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QDateTimeEdit ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_resize" qtc_QDateTimeEdit_resize :: Ptr (TQDateTimeEdit a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QDateTimeEditSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_resize cobj_x0 cobj_x1

instance Qresize (QDateTimeEdit ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDateTimeEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QDateTimeEdit_resize_qth" qtc_QDateTimeEdit_resize_qth :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> IO ()

instance Qresize (QDateTimeEditSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QDateTimeEdit_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QDateTimeEdit ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QDateTimeEdit_setGeometry1" qtc_QDateTimeEdit_setGeometry1 :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDateTimeEditSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QDateTimeEdit ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_setGeometry" qtc_QDateTimeEdit_setGeometry :: Ptr (TQDateTimeEdit a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QDateTimeEditSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QDateTimeEdit ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDateTimeEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QDateTimeEdit_setGeometry_qth" qtc_QDateTimeEdit_setGeometry_qth :: Ptr (TQDateTimeEdit a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QDateTimeEditSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QDateTimeEdit_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QDateTimeEdit ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_setMouseTracking" qtc_QDateTimeEdit_setMouseTracking :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance QsetMouseTracking (QDateTimeEditSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QDateTimeEdit ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_setVisible_h" qtc_QDateTimeEdit_setVisible_h :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance QsetVisible (QDateTimeEditSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_setVisible_h cobj_x0 (toCBool x1)

instance QtabletEvent (QDateTimeEdit ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_tabletEvent_h" qtc_QDateTimeEdit_tabletEvent_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QDateTimeEditSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QDateTimeEdit ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_updateMicroFocus cobj_x0

foreign import ccall "qtc_QDateTimeEdit_updateMicroFocus" qtc_QDateTimeEdit_updateMicroFocus :: Ptr (TQDateTimeEdit a) -> IO ()

instance QupdateMicroFocus (QDateTimeEditSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_updateMicroFocus cobj_x0

instance QwindowActivationChange (QDateTimeEdit ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QDateTimeEdit_windowActivationChange" qtc_QDateTimeEdit_windowActivationChange :: Ptr (TQDateTimeEdit a) -> CBool -> IO ()

instance QwindowActivationChange (QDateTimeEditSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QDateTimeEdit ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_childEvent" qtc_QDateTimeEdit_childEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDateTimeEditSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDateTimeEdit ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_connectNotify" qtc_QDateTimeEdit_connectNotify :: Ptr (TQDateTimeEdit a) -> CWString -> IO ()

instance QconnectNotify (QDateTimeEditSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDateTimeEdit ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDateTimeEdit_customEvent" qtc_QDateTimeEdit_customEvent :: Ptr (TQDateTimeEdit a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDateTimeEditSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDateTimeEdit_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDateTimeEdit ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_disconnectNotify" qtc_QDateTimeEdit_disconnectNotify :: Ptr (TQDateTimeEdit a) -> CWString -> IO ()

instance QdisconnectNotify (QDateTimeEditSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QDateTimeEdit ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDateTimeEdit_eventFilter_h" qtc_QDateTimeEdit_eventFilter_h :: Ptr (TQDateTimeEdit a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDateTimeEditSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDateTimeEdit_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDateTimeEdit ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDateTimeEdit_receivers" qtc_QDateTimeEdit_receivers :: Ptr (TQDateTimeEdit a) -> CWString -> IO CInt

instance Qreceivers (QDateTimeEditSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDateTimeEdit_receivers cobj_x0 cstr_x1

instance Qsender (QDateTimeEdit ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sender cobj_x0

foreign import ccall "qtc_QDateTimeEdit_sender" qtc_QDateTimeEdit_sender :: Ptr (TQDateTimeEdit a) -> IO (Ptr (TQObject ()))

instance Qsender (QDateTimeEditSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDateTimeEdit_sender cobj_x0

