{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCompleter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCompleter (
  QqCompleter(..)
  ,Qcomplete(..), qcomplete
  ,completionColumn
  ,completionCount
  ,completionMode
  ,completionModel
  ,completionPrefix
  ,completionRole
  ,currentCompletion
  ,modelSorting
  ,QpathFromIndex(..)
  ,setCompletionColumn
  ,setCompletionMode
  ,setCompletionPrefix
  ,setCompletionRole
  ,setModelSorting
  ,setPopup
  ,setWrapAround
  ,wrapAround
  ,qCompleter_delete
  ,qCompleter_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QCompleter

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QCompleter ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCompleter_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QCompleter_userMethod" qtc_QCompleter_userMethod :: Ptr (TQCompleter a) -> CInt -> IO ()

instance QuserMethod (QCompleterSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QCompleter_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QCompleter ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCompleter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QCompleter_userMethodVariant" qtc_QCompleter_userMethodVariant :: Ptr (TQCompleter a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QCompleterSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QCompleter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqCompleter x1 where
  qCompleter :: x1 -> IO (QCompleter ())

instance QqCompleter (()) where
 qCompleter ()
  = withQCompleterResult $
    qtc_QCompleter

foreign import ccall "qtc_QCompleter" qtc_QCompleter :: IO (Ptr (TQCompleter ()))

instance QqCompleter (([String])) where
 qCompleter (x1)
  = withQCompleterResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QCompleter1 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QCompleter1" qtc_QCompleter1 :: CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQCompleter ()))

instance QqCompleter ((QObject t1)) where
 qCompleter (x1)
  = withQCompleterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter2 cobj_x1

foreign import ccall "qtc_QCompleter2" qtc_QCompleter2 :: Ptr (TQObject t1) -> IO (Ptr (TQCompleter ()))

instance QqCompleter ((QAbstractItemModel t1)) where
 qCompleter (x1)
  = withQCompleterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter3 cobj_x1

foreign import ccall "qtc_QCompleter3" qtc_QCompleter3 :: Ptr (TQAbstractItemModel t1) -> IO (Ptr (TQCompleter ()))

instance QqCompleter ((QAbstractItemModel t1, QObject t2)) where
 qCompleter (x1, x2)
  = withQCompleterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCompleter4 cobj_x1 cobj_x2

foreign import ccall "qtc_QCompleter4" qtc_QCompleter4 :: Ptr (TQAbstractItemModel t1) -> Ptr (TQObject t2) -> IO (Ptr (TQCompleter ()))

instance QqCompleter (([String], QObject t2)) where
 qCompleter (x1, x2)
  = withQCompleterResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCompleter5 cqlistlen_x1 cqliststr_x1 cobj_x2

foreign import ccall "qtc_QCompleter5" qtc_QCompleter5 :: CInt -> Ptr (Ptr CWchar) -> Ptr (TQObject t2) -> IO (Ptr (TQCompleter ()))

instance QcaseSensitivity (QCompleter a) (()) where
 caseSensitivity x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_caseSensitivity cobj_x0

foreign import ccall "qtc_QCompleter_caseSensitivity" qtc_QCompleter_caseSensitivity :: Ptr (TQCompleter a) -> IO CLong

class Qcomplete x1 where
 complete :: QCompleter a -> x1 -> IO ()

instance Qcomplete (()) where
 complete x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_complete cobj_x0

foreign import ccall "qtc_QCompleter_complete" qtc_QCompleter_complete :: Ptr (TQCompleter a) -> IO ()

qcomplete :: QCompleter a -> ((QRect t1)) -> IO ()
qcomplete x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_complete1 cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_complete1" qtc_QCompleter_complete1 :: Ptr (TQCompleter a) -> Ptr (TQRect t1) -> IO ()

instance Qcomplete ((Rect)) where
 complete x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QCompleter_complete1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QCompleter_complete1_qth" qtc_QCompleter_complete1_qth :: Ptr (TQCompleter a) -> CInt -> CInt -> CInt -> CInt -> IO ()

completionColumn :: QCompleter a -> (()) -> IO (Int)
completionColumn x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionColumn cobj_x0

foreign import ccall "qtc_QCompleter_completionColumn" qtc_QCompleter_completionColumn :: Ptr (TQCompleter a) -> IO CInt

completionCount :: QCompleter a -> (()) -> IO (Int)
completionCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionCount cobj_x0

foreign import ccall "qtc_QCompleter_completionCount" qtc_QCompleter_completionCount :: Ptr (TQCompleter a) -> IO CInt

completionMode :: QCompleter a -> (()) -> IO (CompletionMode)
completionMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionMode cobj_x0

foreign import ccall "qtc_QCompleter_completionMode" qtc_QCompleter_completionMode :: Ptr (TQCompleter a) -> IO CLong

completionModel :: QCompleter a -> (()) -> IO (QAbstractItemModel ())
completionModel x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionModel cobj_x0

foreign import ccall "qtc_QCompleter_completionModel" qtc_QCompleter_completionModel :: Ptr (TQCompleter a) -> IO (Ptr (TQAbstractItemModel ()))

completionPrefix :: QCompleter a -> (()) -> IO (String)
completionPrefix x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionPrefix cobj_x0

foreign import ccall "qtc_QCompleter_completionPrefix" qtc_QCompleter_completionPrefix :: Ptr (TQCompleter a) -> IO (Ptr (TQString ()))

completionRole :: QCompleter a -> (()) -> IO (Int)
completionRole x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_completionRole cobj_x0

foreign import ccall "qtc_QCompleter_completionRole" qtc_QCompleter_completionRole :: Ptr (TQCompleter a) -> IO CInt

currentCompletion :: QCompleter a -> (()) -> IO (String)
currentCompletion x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_currentCompletion cobj_x0

foreign import ccall "qtc_QCompleter_currentCompletion" qtc_QCompleter_currentCompletion :: Ptr (TQCompleter a) -> IO (Ptr (TQString ()))

instance QcurrentIndex (QCompleter a) (()) (IO (QModelIndex ())) where
 currentIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_currentIndex cobj_x0

foreign import ccall "qtc_QCompleter_currentIndex" qtc_QCompleter_currentIndex :: Ptr (TQCompleter a) -> IO (Ptr (TQModelIndex ()))

instance QcurrentRow (QCompleter a) (()) where
 currentRow x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_currentRow cobj_x0

foreign import ccall "qtc_QCompleter_currentRow" qtc_QCompleter_currentRow :: Ptr (TQCompleter a) -> IO CInt

instance Qevent (QCompleter ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_event cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_event" qtc_QCompleter_event :: Ptr (TQCompleter a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QCompleterSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_event cobj_x0 cobj_x1

instance QeventFilter (QCompleter ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCompleter_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QCompleter_eventFilter" qtc_QCompleter_eventFilter :: Ptr (TQCompleter a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QCompleterSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCompleter_eventFilter cobj_x0 cobj_x1 cobj_x2

instance Qmodel (QCompleter a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_model cobj_x0

foreign import ccall "qtc_QCompleter_model" qtc_QCompleter_model :: Ptr (TQCompleter a) -> IO (Ptr (TQAbstractItemModel ()))

modelSorting :: QCompleter a -> (()) -> IO (ModelSorting)
modelSorting x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_modelSorting cobj_x0

foreign import ccall "qtc_QCompleter_modelSorting" qtc_QCompleter_modelSorting :: Ptr (TQCompleter a) -> IO CLong

class QpathFromIndex x0 x1 where
 pathFromIndex :: x0 -> x1 -> IO (String)

instance QpathFromIndex (QCompleter ()) ((QModelIndex t1)) where
 pathFromIndex x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_pathFromIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_pathFromIndex_h" qtc_QCompleter_pathFromIndex_h :: Ptr (TQCompleter a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQString ()))

instance QpathFromIndex (QCompleterSc a) ((QModelIndex t1)) where
 pathFromIndex x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_pathFromIndex_h cobj_x0 cobj_x1

instance Qpopup (QCompleter a) (()) (IO (QAbstractItemView ())) where
 popup x0 ()
  = withQAbstractItemViewResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_popup cobj_x0

foreign import ccall "qtc_QCompleter_popup" qtc_QCompleter_popup :: Ptr (TQCompleter a) -> IO (Ptr (TQAbstractItemView ()))

instance QsetCaseSensitivity (QCompleter a) ((CaseSensitivity)) where
 setCaseSensitivity x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setCaseSensitivity cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCompleter_setCaseSensitivity" qtc_QCompleter_setCaseSensitivity :: Ptr (TQCompleter a) -> CLong -> IO ()

setCompletionColumn :: QCompleter a -> ((Int)) -> IO ()
setCompletionColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setCompletionColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCompleter_setCompletionColumn" qtc_QCompleter_setCompletionColumn :: Ptr (TQCompleter a) -> CInt -> IO ()

setCompletionMode :: QCompleter a -> ((CompletionMode)) -> IO ()
setCompletionMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setCompletionMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCompleter_setCompletionMode" qtc_QCompleter_setCompletionMode :: Ptr (TQCompleter a) -> CLong -> IO ()

setCompletionPrefix :: QCompleter a -> ((String)) -> IO ()
setCompletionPrefix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_setCompletionPrefix cobj_x0 cstr_x1

foreign import ccall "qtc_QCompleter_setCompletionPrefix" qtc_QCompleter_setCompletionPrefix :: Ptr (TQCompleter a) -> CWString -> IO ()

setCompletionRole :: QCompleter a -> ((Int)) -> IO ()
setCompletionRole x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setCompletionRole cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCompleter_setCompletionRole" qtc_QCompleter_setCompletionRole :: Ptr (TQCompleter a) -> CInt -> IO ()

instance QsetCurrentRow (QCompleter a) ((Int)) (IO (Bool)) where
 setCurrentRow x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setCurrentRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QCompleter_setCurrentRow" qtc_QCompleter_setCurrentRow :: Ptr (TQCompleter a) -> CInt -> IO CBool

instance QsetModel (QCompleter a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_setModel" qtc_QCompleter_setModel :: Ptr (TQCompleter a) -> Ptr (TQAbstractItemModel t1) -> IO ()

setModelSorting :: QCompleter a -> ((ModelSorting)) -> IO ()
setModelSorting x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setModelSorting cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCompleter_setModelSorting" qtc_QCompleter_setModelSorting :: Ptr (TQCompleter a) -> CLong -> IO ()

setPopup :: QCompleter a -> ((QAbstractItemView t1)) -> IO ()
setPopup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_setPopup cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_setPopup" qtc_QCompleter_setPopup :: Ptr (TQCompleter a) -> Ptr (TQAbstractItemView t1) -> IO ()

instance QsetWidget (QCompleter a) ((QWidget t1)) where
 setWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_setWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_setWidget" qtc_QCompleter_setWidget :: Ptr (TQCompleter a) -> Ptr (TQWidget t1) -> IO ()

setWrapAround :: QCompleter a -> ((Bool)) -> IO ()
setWrapAround x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_setWrapAround cobj_x0 (toCBool x1)

foreign import ccall "qtc_QCompleter_setWrapAround" qtc_QCompleter_setWrapAround :: Ptr (TQCompleter a) -> CBool -> IO ()

instance Qwidget (QCompleter a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_widget cobj_x0

foreign import ccall "qtc_QCompleter_widget" qtc_QCompleter_widget :: Ptr (TQCompleter a) -> IO (Ptr (TQWidget ()))

wrapAround :: QCompleter a -> (()) -> IO (Bool)
wrapAround x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_wrapAround cobj_x0

foreign import ccall "qtc_QCompleter_wrapAround" qtc_QCompleter_wrapAround :: Ptr (TQCompleter a) -> IO CBool

qCompleter_delete :: QCompleter a -> IO ()
qCompleter_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_delete cobj_x0

foreign import ccall "qtc_QCompleter_delete" qtc_QCompleter_delete :: Ptr (TQCompleter a) -> IO ()

qCompleter_deleteLater :: QCompleter a -> IO ()
qCompleter_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_deleteLater cobj_x0

foreign import ccall "qtc_QCompleter_deleteLater" qtc_QCompleter_deleteLater :: Ptr (TQCompleter a) -> IO ()

instance QchildEvent (QCompleter ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_childEvent" qtc_QCompleter_childEvent :: Ptr (TQCompleter a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QCompleterSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QCompleter ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCompleter_connectNotify" qtc_QCompleter_connectNotify :: Ptr (TQCompleter a) -> CWString -> IO ()

instance QconnectNotify (QCompleterSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QCompleter ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_customEvent" qtc_QCompleter_customEvent :: Ptr (TQCompleter a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QCompleterSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QCompleter ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QCompleter_disconnectNotify" qtc_QCompleter_disconnectNotify :: Ptr (TQCompleter a) -> CWString -> IO ()

instance QdisconnectNotify (QCompleterSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QCompleter ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QCompleter_receivers" qtc_QCompleter_receivers :: Ptr (TQCompleter a) -> CWString -> IO CInt

instance Qreceivers (QCompleterSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QCompleter_receivers cobj_x0 cstr_x1

instance Qsender (QCompleter ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_sender cobj_x0

foreign import ccall "qtc_QCompleter_sender" qtc_QCompleter_sender :: Ptr (TQCompleter a) -> IO (Ptr (TQObject ()))

instance Qsender (QCompleterSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCompleter_sender cobj_x0

instance QtimerEvent (QCompleter ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QCompleter_timerEvent" qtc_QCompleter_timerEvent :: Ptr (TQCompleter a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QCompleterSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCompleter_timerEvent cobj_x0 cobj_x1

