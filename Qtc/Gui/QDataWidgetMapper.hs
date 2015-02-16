{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDataWidgetMapper.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDataWidgetMapper (
  QqDataWidgetMapper(..)
  ,QaddMapping(..)
  ,clearMapping
  ,mappedPropertyName
  ,mappedSection
  ,mappedWidgetAt
  ,removeMapping
  ,setCurrentModelIndex
  ,setSubmitPolicy
  ,submitPolicy
  ,toFirst
  ,toLast
  ,toNext
  ,toPrevious
  ,qDataWidgetMapper_delete
  ,qDataWidgetMapper_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QDataWidgetMapper

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QDataWidgetMapper ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDataWidgetMapper_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QDataWidgetMapper_userMethod" qtc_QDataWidgetMapper_userMethod :: Ptr (TQDataWidgetMapper a) -> CInt -> IO ()

instance QuserMethod (QDataWidgetMapperSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QDataWidgetMapper_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QDataWidgetMapper ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDataWidgetMapper_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QDataWidgetMapper_userMethodVariant" qtc_QDataWidgetMapper_userMethodVariant :: Ptr (TQDataWidgetMapper a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QDataWidgetMapperSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QDataWidgetMapper_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqDataWidgetMapper x1 where
  qDataWidgetMapper :: x1 -> IO (QDataWidgetMapper ())

instance QqDataWidgetMapper (()) where
 qDataWidgetMapper ()
  = withQDataWidgetMapperResult $
    qtc_QDataWidgetMapper

foreign import ccall "qtc_QDataWidgetMapper" qtc_QDataWidgetMapper :: IO (Ptr (TQDataWidgetMapper ()))

instance QqDataWidgetMapper ((QObject t1)) where
 qDataWidgetMapper (x1)
  = withQDataWidgetMapperResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper1 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper1" qtc_QDataWidgetMapper1 :: Ptr (TQObject t1) -> IO (Ptr (TQDataWidgetMapper ()))

class QaddMapping x1 where
 addMapping :: QDataWidgetMapper a -> x1 -> IO ()

instance QaddMapping ((QWidget t1, Int)) where
 addMapping x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_addMapping cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QDataWidgetMapper_addMapping" qtc_QDataWidgetMapper_addMapping :: Ptr (TQDataWidgetMapper a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddMapping ((QWidget t1, Int, String)) where
 addMapping x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QDataWidgetMapper_addMapping1 cobj_x0 cobj_x1 (toCInt x2) cstr_x3

foreign import ccall "qtc_QDataWidgetMapper_addMapping1" qtc_QDataWidgetMapper_addMapping1 :: Ptr (TQDataWidgetMapper a) -> Ptr (TQWidget t1) -> CInt -> CWString -> IO ()

clearMapping :: QDataWidgetMapper a -> (()) -> IO ()
clearMapping x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_clearMapping cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_clearMapping" qtc_QDataWidgetMapper_clearMapping :: Ptr (TQDataWidgetMapper a) -> IO ()

instance QcurrentIndex (QDataWidgetMapper a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_currentIndex cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_currentIndex" qtc_QDataWidgetMapper_currentIndex :: Ptr (TQDataWidgetMapper a) -> IO CInt

instance QitemDelegate (QDataWidgetMapper a) (()) where
 itemDelegate x0 ()
  = withQAbstractItemDelegateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_itemDelegate cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_itemDelegate" qtc_QDataWidgetMapper_itemDelegate :: Ptr (TQDataWidgetMapper a) -> IO (Ptr (TQAbstractItemDelegate ()))

mappedPropertyName :: QDataWidgetMapper a -> ((QWidget t1)) -> IO (String)
mappedPropertyName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_mappedPropertyName cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_mappedPropertyName" qtc_QDataWidgetMapper_mappedPropertyName :: Ptr (TQDataWidgetMapper a) -> Ptr (TQWidget t1) -> IO (Ptr (TQString ()))

mappedSection :: QDataWidgetMapper a -> ((QWidget t1)) -> IO (Int)
mappedSection x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_mappedSection cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_mappedSection" qtc_QDataWidgetMapper_mappedSection :: Ptr (TQDataWidgetMapper a) -> Ptr (TQWidget t1) -> IO CInt

mappedWidgetAt :: QDataWidgetMapper a -> ((Int)) -> IO (QWidget ())
mappedWidgetAt x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_mappedWidgetAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDataWidgetMapper_mappedWidgetAt" qtc_QDataWidgetMapper_mappedWidgetAt :: Ptr (TQDataWidgetMapper a) -> CInt -> IO (Ptr (TQWidget ()))

instance Qmodel (QDataWidgetMapper a) (()) (IO (QAbstractItemModel ())) where
 model x0 ()
  = withQAbstractItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_model cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_model" qtc_QDataWidgetMapper_model :: Ptr (TQDataWidgetMapper a) -> IO (Ptr (TQAbstractItemModel ()))

instance Qorientation (QDataWidgetMapper a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_orientation cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_orientation" qtc_QDataWidgetMapper_orientation :: Ptr (TQDataWidgetMapper a) -> IO CLong

removeMapping :: QDataWidgetMapper a -> ((QWidget t1)) -> IO ()
removeMapping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_removeMapping cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_removeMapping" qtc_QDataWidgetMapper_removeMapping :: Ptr (TQDataWidgetMapper a) -> Ptr (TQWidget t1) -> IO ()

instance Qrevert (QDataWidgetMapper a) (()) where
 revert x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_revert cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_revert" qtc_QDataWidgetMapper_revert :: Ptr (TQDataWidgetMapper a) -> IO ()

instance QrootIndex (QDataWidgetMapper a) (()) where
 rootIndex x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_rootIndex cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_rootIndex" qtc_QDataWidgetMapper_rootIndex :: Ptr (TQDataWidgetMapper a) -> IO (Ptr (TQModelIndex ()))

instance QsetCurrentIndex (QDataWidgetMapper ()) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_setCurrentIndex_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDataWidgetMapper_setCurrentIndex_h" qtc_QDataWidgetMapper_setCurrentIndex_h :: Ptr (TQDataWidgetMapper a) -> CInt -> IO ()

instance QsetCurrentIndex (QDataWidgetMapperSc a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_setCurrentIndex_h cobj_x0 (toCInt x1)

setCurrentModelIndex :: QDataWidgetMapper a -> ((QModelIndex t1)) -> IO ()
setCurrentModelIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_setCurrentModelIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_setCurrentModelIndex" qtc_QDataWidgetMapper_setCurrentModelIndex :: Ptr (TQDataWidgetMapper a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetItemDelegate (QDataWidgetMapper a) ((QAbstractItemDelegate t1)) where
 setItemDelegate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_setItemDelegate cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_setItemDelegate" qtc_QDataWidgetMapper_setItemDelegate :: Ptr (TQDataWidgetMapper a) -> Ptr (TQAbstractItemDelegate t1) -> IO ()

instance QsetModel (QDataWidgetMapper a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_setModel cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_setModel" qtc_QDataWidgetMapper_setModel :: Ptr (TQDataWidgetMapper a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetOrientation (QDataWidgetMapper a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDataWidgetMapper_setOrientation" qtc_QDataWidgetMapper_setOrientation :: Ptr (TQDataWidgetMapper a) -> CLong -> IO ()

instance QsetRootIndex (QDataWidgetMapper a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_setRootIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_setRootIndex" qtc_QDataWidgetMapper_setRootIndex :: Ptr (TQDataWidgetMapper a) -> Ptr (TQModelIndex t1) -> IO ()

setSubmitPolicy :: QDataWidgetMapper a -> ((SubmitPolicy)) -> IO ()
setSubmitPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_setSubmitPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDataWidgetMapper_setSubmitPolicy" qtc_QDataWidgetMapper_setSubmitPolicy :: Ptr (TQDataWidgetMapper a) -> CLong -> IO ()

instance Qsubmit (QDataWidgetMapper a) (()) where
 submit x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_submit cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_submit" qtc_QDataWidgetMapper_submit :: Ptr (TQDataWidgetMapper a) -> IO CBool

submitPolicy :: QDataWidgetMapper a -> (()) -> IO (SubmitPolicy)
submitPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_submitPolicy cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_submitPolicy" qtc_QDataWidgetMapper_submitPolicy :: Ptr (TQDataWidgetMapper a) -> IO CLong

toFirst :: QDataWidgetMapper a -> (()) -> IO ()
toFirst x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_toFirst cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_toFirst" qtc_QDataWidgetMapper_toFirst :: Ptr (TQDataWidgetMapper a) -> IO ()

toLast :: QDataWidgetMapper a -> (()) -> IO ()
toLast x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_toLast cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_toLast" qtc_QDataWidgetMapper_toLast :: Ptr (TQDataWidgetMapper a) -> IO ()

toNext :: QDataWidgetMapper a -> (()) -> IO ()
toNext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_toNext cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_toNext" qtc_QDataWidgetMapper_toNext :: Ptr (TQDataWidgetMapper a) -> IO ()

toPrevious :: QDataWidgetMapper a -> (()) -> IO ()
toPrevious x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_toPrevious cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_toPrevious" qtc_QDataWidgetMapper_toPrevious :: Ptr (TQDataWidgetMapper a) -> IO ()

qDataWidgetMapper_delete :: QDataWidgetMapper a -> IO ()
qDataWidgetMapper_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_delete cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_delete" qtc_QDataWidgetMapper_delete :: Ptr (TQDataWidgetMapper a) -> IO ()

qDataWidgetMapper_deleteLater :: QDataWidgetMapper a -> IO ()
qDataWidgetMapper_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_deleteLater cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_deleteLater" qtc_QDataWidgetMapper_deleteLater :: Ptr (TQDataWidgetMapper a) -> IO ()

instance QchildEvent (QDataWidgetMapper ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_childEvent" qtc_QDataWidgetMapper_childEvent :: Ptr (TQDataWidgetMapper a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QDataWidgetMapperSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QDataWidgetMapper ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDataWidgetMapper_connectNotify" qtc_QDataWidgetMapper_connectNotify :: Ptr (TQDataWidgetMapper a) -> CWString -> IO ()

instance QconnectNotify (QDataWidgetMapperSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QDataWidgetMapper ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_customEvent" qtc_QDataWidgetMapper_customEvent :: Ptr (TQDataWidgetMapper a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QDataWidgetMapperSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QDataWidgetMapper ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QDataWidgetMapper_disconnectNotify" qtc_QDataWidgetMapper_disconnectNotify :: Ptr (TQDataWidgetMapper a) -> CWString -> IO ()

instance QdisconnectNotify (QDataWidgetMapperSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QDataWidgetMapper ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_event_h" qtc_QDataWidgetMapper_event_h :: Ptr (TQDataWidgetMapper a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QDataWidgetMapperSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_event_h cobj_x0 cobj_x1

instance QeventFilter (QDataWidgetMapper ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDataWidgetMapper_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QDataWidgetMapper_eventFilter_h" qtc_QDataWidgetMapper_eventFilter_h :: Ptr (TQDataWidgetMapper a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QDataWidgetMapperSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QDataWidgetMapper_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QDataWidgetMapper ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QDataWidgetMapper_receivers" qtc_QDataWidgetMapper_receivers :: Ptr (TQDataWidgetMapper a) -> CWString -> IO CInt

instance Qreceivers (QDataWidgetMapperSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDataWidgetMapper_receivers cobj_x0 cstr_x1

instance Qsender (QDataWidgetMapper ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_sender cobj_x0

foreign import ccall "qtc_QDataWidgetMapper_sender" qtc_QDataWidgetMapper_sender :: Ptr (TQDataWidgetMapper a) -> IO (Ptr (TQObject ()))

instance Qsender (QDataWidgetMapperSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDataWidgetMapper_sender cobj_x0

instance QtimerEvent (QDataWidgetMapper ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QDataWidgetMapper_timerEvent" qtc_QDataWidgetMapper_timerEvent :: Ptr (TQDataWidgetMapper a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QDataWidgetMapperSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDataWidgetMapper_timerEvent cobj_x0 cobj_x1

