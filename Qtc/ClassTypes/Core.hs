{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Core.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.ClassTypes.Core (
  QObject, TQObject, CQObject, qCast_QObject, QObjectSc, TQObjectSc, CQObjectSc, qCastList_QObject, withQObjectResult, qObjectFromPtr, withQListQObjectResult, qObjectListFromPtrList
  ,QEvent, TQEvent, CQEvent, qCast_QEvent, QEventSc, TQEventSc, CQEventSc, qCastList_QEvent, withQEventResult, qEventAddFinalizer
  ,QAbstractItemModel, TQAbstractItemModel, CQAbstractItemModel, qCast_QAbstractItemModel, QAbstractItemModelSc, TQAbstractItemModelSc, CQAbstractItemModelSc, qCastList_QAbstractItemModel, withQAbstractItemModelResult, qAbstractItemModelFromPtr, withQListQAbstractItemModelResult, qAbstractItemModelListFromPtrList
  ,QIODevice, TQIODevice, CQIODevice, qCast_QIODevice, QIODeviceSc, TQIODeviceSc, CQIODeviceSc, qCastList_QIODevice, withQIODeviceResult, qIODeviceFromPtr, withQListQIODeviceResult, qIODeviceListFromPtrList
  ,QTextCodec, TQTextCodec, CQTextCodec, qCast_QTextCodec, QTextCodecSc, TQTextCodecSc, CQTextCodecSc, qCastList_QTextCodec, withQTextCodecResult
  ,QLineF, TQLineF, CQLineF, qCast_QLineF, QLineFSc, TQLineFSc, CQLineFSc, qCastList_QLineF, withQLineFResult, qLineFAddFinalizer
  ,Qt, TQt, CQt, qCast_Qt, QtSc, TQtSc, CQtSc, qCastList_Qt, withQtResult
  ,QFileInfo, TQFileInfo, CQFileInfo, qCast_QFileInfo, QFileInfoSc, TQFileInfoSc, CQFileInfoSc, qCastList_QFileInfo, withQFileInfoResult, qFileInfoAddFinalizer
  ,QDate, TQDate, CQDate, qCast_QDate, QDateSc, TQDateSc, CQDateSc, qCastList_QDate, withQDateResult, qDateAddFinalizer
  ,QTime, TQTime, CQTime, qCast_QTime, QTimeSc, TQTimeSc, CQTimeSc, qCastList_QTime, withQTimeResult, qTimeAddFinalizer
  ,QPointF, TQPointF, CQPointF, qCast_QPointF, QPointFSc, TQPointFSc, CQPointFSc, qCastList_QPointF, withQPointFResult, qPointFAddFinalizer
  ,QSize, TQSize, CQSize, qCast_QSize, QSizeSc, TQSizeSc, CQSizeSc, qCastList_QSize, withQSizeResult, qSizeAddFinalizer
  ,QRectF, TQRectF, CQRectF, qCast_QRectF, QRectFSc, TQRectFSc, CQRectFSc, qCastList_QRectF, withQRectFResult, qRectFAddFinalizer
  ,QDateTime, TQDateTime, CQDateTime, qCast_QDateTime, QDateTimeSc, TQDateTimeSc, CQDateTimeSc, qCastList_QDateTime, withQDateTimeResult, qDateTimeAddFinalizer
  ,QUrl, TQUrl, CQUrl, qCast_QUrl, QUrlSc, TQUrlSc, CQUrlSc, qCastList_QUrl, withQUrlResult, qUrlAddFinalizer
  ,QSizeF, TQSizeF, CQSizeF, qCast_QSizeF, QSizeFSc, TQSizeFSc, CQSizeFSc, qCastList_QSizeF, withQSizeFResult, qSizeFAddFinalizer
  ,QBasicTimer, TQBasicTimer, CQBasicTimer, qCast_QBasicTimer, QBasicTimerSc, TQBasicTimerSc, CQBasicTimerSc, qCastList_QBasicTimer, withQBasicTimerResult, qBasicTimerAddFinalizer
  ,QDataStream, TQDataStream, CQDataStream, qCast_QDataStream, QDataStreamSc, TQDataStreamSc, CQDataStreamSc, qCastList_QDataStream, withQDataStreamResult, qDataStreamAddFinalizer
  ,QModelIndex, TQModelIndex, CQModelIndex, qCast_QModelIndex, QModelIndexSc, TQModelIndexSc, CQModelIndexSc, qCastList_QModelIndex, withQModelIndexResult, qModelIndexAddFinalizer
  ,QPoint, TQPoint, CQPoint, qCast_QPoint, QPointSc, TQPointSc, CQPointSc, qCastList_QPoint, withQPointResult, qPointAddFinalizer
  ,QMatrix, TQMatrix, CQMatrix, qCast_QMatrix, QMatrixSc, TQMatrixSc, CQMatrixSc, qCastList_QMatrix, withQMatrixResult, qMatrixAddFinalizer
  ,QTextStream, TQTextStream, CQTextStream, qCast_QTextStream, QTextStreamSc, TQTextStreamSc, CQTextStreamSc, qCastList_QTextStream, withQTextStreamResult, qTextStreamAddFinalizer
  ,QUuid, TQUuid, CQUuid, qCast_QUuid, QUuidSc, TQUuidSc, CQUuidSc, qCastList_QUuid, withQUuidResult, qUuidAddFinalizer
  ,QLocale, TQLocale, CQLocale, qCast_QLocale, QLocaleSc, TQLocaleSc, CQLocaleSc, qCastList_QLocale, withQLocaleResult, qLocaleAddFinalizer
  ,QDir, TQDir, CQDir, qCast_QDir, QDirSc, TQDirSc, CQDirSc, qCastList_QDir, withQDirResult, qDirAddFinalizer
  ,QChar, TQChar, CQChar, qCast_QChar, QCharSc, TQCharSc, CQCharSc, qCastList_QChar, withQCharResult
  ,QAbstractFileEngine, TQAbstractFileEngine, CQAbstractFileEngine, qCast_QAbstractFileEngine, QAbstractFileEngineSc, TQAbstractFileEngineSc, CQAbstractFileEngineSc, qCastList_QAbstractFileEngine, withQAbstractFileEngineResult
  ,QPolygonF, TQPolygonF, CQPolygonF, qCast_QPolygonF, QPolygonFSc, TQPolygonFSc, CQPolygonFSc, qCastList_QPolygonF, withQPolygonFResult, qPolygonFAddFinalizer
  ,QVariant, TQVariant, CQVariant, qCast_QVariant, QVariantSc, TQVariantSc, CQVariantSc, qCastList_QVariant, withQVariantResult
  ,QSettings, TQSettings, CQSettings, qCast_QSettings, QSettingsSc, TQSettingsSc, CQSettingsSc, qCastList_QSettings, withQSettingsResult, qSettingsFromPtr, withQListQSettingsResult, qSettingsListFromPtrList
  ,QRect, TQRect, CQRect, qCast_QRect, QRectSc, TQRectSc, CQRectSc, qCastList_QRect, withQRectResult, qRectAddFinalizer
  ,QRegExp, TQRegExp, CQRegExp, qCast_QRegExp, QRegExpSc, TQRegExpSc, CQRegExpSc, qCastList_QRegExp, withQRegExpResult, qRegExpAddFinalizer
  ,QLine, TQLine, CQLine, qCast_QLine, QLineSc, TQLineSc, CQLineSc, qCastList_QLine, withQLineResult, qLineAddFinalizer
  ,QPolygon, TQPolygon, CQPolygon, qCast_QPolygon, QPolygonSc, TQPolygonSc, CQPolygonSc, qCastList_QPolygon, withQPolygonResult, qPolygonAddFinalizer
  ,QAbstractTableModel, TQAbstractTableModel, CQAbstractTableModel, qCast_QAbstractTableModel, QAbstractTableModelSc, TQAbstractTableModelSc, CQAbstractTableModelSc, qCastList_QAbstractTableModel, withQAbstractTableModelResult, qAbstractTableModelFromPtr, withQListQAbstractTableModelResult, qAbstractTableModelListFromPtrList
  ,QAbstractListModel, TQAbstractListModel, CQAbstractListModel, qCast_QAbstractListModel, QAbstractListModelSc, TQAbstractListModelSc, CQAbstractListModelSc, qCastList_QAbstractListModel, withQAbstractListModelResult, qAbstractListModelFromPtr, withQListQAbstractListModelResult, qAbstractListModelListFromPtrList
  ,QTimerEvent, TQTimerEvent, CQTimerEvent, qCast_QTimerEvent, QTimerEventSc, TQTimerEventSc, CQTimerEventSc, qCastList_QTimerEvent, withQTimerEventResult, qTimerEventAddFinalizer
  ,QDynamicPropertyChangeEvent, TQDynamicPropertyChangeEvent, CQDynamicPropertyChangeEvent, qCast_QDynamicPropertyChangeEvent, QDynamicPropertyChangeEventSc, TQDynamicPropertyChangeEventSc, CQDynamicPropertyChangeEventSc, qCastList_QDynamicPropertyChangeEvent, withQDynamicPropertyChangeEventResult, qDynamicPropertyChangeEventAddFinalizer
  ,QChildEvent, TQChildEvent, CQChildEvent, qCast_QChildEvent, QChildEventSc, TQChildEventSc, CQChildEventSc, qCastList_QChildEvent, withQChildEventResult, qChildEventAddFinalizer
  ,QFileOpenEvent, TQFileOpenEvent, CQFileOpenEvent, qCast_QFileOpenEvent, QFileOpenEventSc, TQFileOpenEventSc, CQFileOpenEventSc, qCastList_QFileOpenEvent, withQFileOpenEventResult, qFileOpenEventAddFinalizer
  ,QFile, TQFile, CQFile, qCast_QFile, QFileSc, TQFileSc, CQFileSc, qCastList_QFile, withQFileResult, qFileFromPtr, withQListQFileResult, qFileListFromPtrList
  ,QEventLoop, TQEventLoop, CQEventLoop, qCast_QEventLoop, QEventLoopSc, TQEventLoopSc, CQEventLoopSc, qCastList_QEventLoop, withQEventLoopResult, qEventLoopFromPtr, withQListQEventLoopResult, qEventLoopListFromPtrList
  ,QMimeData, TQMimeData, CQMimeData, qCast_QMimeData, QMimeDataSc, TQMimeDataSc, CQMimeDataSc, qCastList_QMimeData, withQMimeDataResult, qMimeDataFromPtr, withQListQMimeDataResult, qMimeDataListFromPtrList
  ,QTranslator, TQTranslator, CQTranslator, qCast_QTranslator, QTranslatorSc, TQTranslatorSc, CQTranslatorSc, qCastList_QTranslator, withQTranslatorResult, qTranslatorFromPtr, withQListQTranslatorResult, qTranslatorListFromPtrList
  ,QCoreApplication, TQCoreApplication, CQCoreApplication, qCast_QCoreApplication, QCoreApplicationSc, TQCoreApplicationSc, CQCoreApplicationSc, withQCoreApplicationResult, qCoreApplicationFromPtr
  ,QTimer, TQTimer, CQTimer, qCast_QTimer, QTimerSc, TQTimerSc, CQTimerSc, qCastList_QTimer, withQTimerResult, qTimerFromPtr, withQListQTimerResult, qTimerListFromPtrList
  ,QTimeLine, TQTimeLine, CQTimeLine, qCast_QTimeLine, QTimeLineSc, TQTimeLineSc, CQTimeLineSc, qCastList_QTimeLine, withQTimeLineResult, qTimeLineFromPtr, withQListQTimeLineResult, qTimeLineListFromPtrList
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types

type QObject a = Object (CQObject a)
type TQObject a = CQObject a
data CQObject a = CQObject

type QObjectSc a = QObject (CQObjectSc a)
type TQObjectSc a = TQObject (CQObjectSc a)
data CQObjectSc a = CQObjectSc

qCast_QObject :: Object a -> IO (QObject ())
qCast_QObject _qobj
  = return (objectCast _qobj)

withQObjectResult :: IO (Ptr (TQObject a)) -> IO (QObject a)
withQObjectResult f
  = withObjectResult qtc_QObject_getFinalizer f

qObjectFromPtr :: Ptr (TQObject a) -> IO (QObject a)
qObjectFromPtr p
  = objectFromPtr qtc_QObject_getFinalizer p

withQListQObjectResult :: (Ptr (Ptr (TQObject a)) -> IO CInt) -> IO [QObject a]
withQListQObjectResult f
  = withQListObjectResult qtc_QObject_getFinalizer f

qObjectListFromPtrList :: [Ptr (TQObject a)] -> IO [QObject a]
qObjectListFromPtrList p
  = objectListFromPtrList qtc_QObject_getFinalizer p

foreign import ccall qtc_QObject_getFinalizer :: FunPtr (Ptr (TQObject a) -> IO ())

class QqCastList_QObject a r where
  qcl_QObject :: [QObject ()] -> a -> r

instance QqCastList_QObject (QObject ()) [QObject ()] where
  qcl_QObject l x = reverse $ x:l

instance QqCastList_QObject a r => QqCastList_QObject (QObject ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject (x:l) sx

instance QqCastList_QObject (QAbstractItemModel ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QAbstractItemModel ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QIODevice ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QIODevice ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QAbstractTableModel ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QAbstractTableModel ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QAbstractListModel ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QAbstractListModel ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QFile ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QFile ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QEventLoop ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QEventLoop ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QMimeData ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QMimeData ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QTranslator ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QTranslator ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QCoreApplication ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QCoreApplication ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QTimer ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QTimer ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

instance QqCastList_QObject (QTimeLine ()) [QObject ()] where
  qcl_QObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QObject a r => QqCastList_QObject (QTimeLine ()) (a -> r) where
  qcl_QObject l x sx = qcl_QObject ((objectCast x):l) sx

qCastList_QObject x = qcl_QObject [] x

type QEvent a = Object (CQEvent a)
type TQEvent a = CQEvent a
data CQEvent a = CQEvent

type QEventSc a = QEvent (CQEventSc a)
type TQEventSc a = TQEvent (CQEventSc a)
data CQEventSc a = CQEventSc

qCast_QEvent :: Object a -> IO (QEvent ())
qCast_QEvent _qobj
  = return (objectCast _qobj)

withQEventResult :: IO (Ptr (TQEvent a)) -> IO (QEvent a)
withQEventResult f
  = withObjectResult qtc_QEvent_getFinalizer f

foreign import ccall qtc_QEvent_getFinalizer :: FunPtr (Ptr (TQEvent a) -> IO ())

qEventAddFinalizer :: QEvent a -> IO ()
qEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QEvent_getFinalizer fp

class QqCastList_QEvent a r where
  qcl_QEvent :: [QEvent ()] -> a -> r

instance QqCastList_QEvent (QEvent ()) [QEvent ()] where
  qcl_QEvent l x = reverse $ x:l

instance QqCastList_QEvent a r => QqCastList_QEvent (QEvent ()) (a -> r) where
  qcl_QEvent l x sx = qcl_QEvent (x:l) sx

instance QqCastList_QEvent (QTimerEvent ()) [QEvent ()] where
  qcl_QEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QEvent a r => QqCastList_QEvent (QTimerEvent ()) (a -> r) where
  qcl_QEvent l x sx = qcl_QEvent ((objectCast x):l) sx

instance QqCastList_QEvent (QDynamicPropertyChangeEvent ()) [QEvent ()] where
  qcl_QEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QEvent a r => QqCastList_QEvent (QDynamicPropertyChangeEvent ()) (a -> r) where
  qcl_QEvent l x sx = qcl_QEvent ((objectCast x):l) sx

instance QqCastList_QEvent (QChildEvent ()) [QEvent ()] where
  qcl_QEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QEvent a r => QqCastList_QEvent (QChildEvent ()) (a -> r) where
  qcl_QEvent l x sx = qcl_QEvent ((objectCast x):l) sx

instance QqCastList_QEvent (QFileOpenEvent ()) [QEvent ()] where
  qcl_QEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QEvent a r => QqCastList_QEvent (QFileOpenEvent ()) (a -> r) where
  qcl_QEvent l x sx = qcl_QEvent ((objectCast x):l) sx

qCastList_QEvent x = qcl_QEvent [] x

type QAbstractItemModel a = QObject (CQAbstractItemModel a)
type TQAbstractItemModel a = TQObject (CQAbstractItemModel a)
data CQAbstractItemModel a = CQAbstractItemModel

type QAbstractItemModelSc a = QAbstractItemModel (CQAbstractItemModelSc a)
type TQAbstractItemModelSc a = TQAbstractItemModel (CQAbstractItemModelSc a)
data CQAbstractItemModelSc a = CQAbstractItemModelSc

qCast_QAbstractItemModel :: Object a -> IO (QAbstractItemModel ())
qCast_QAbstractItemModel _qobj
  = return (objectCast _qobj)

withQAbstractItemModelResult :: IO (Ptr (TQAbstractItemModel a)) -> IO (QAbstractItemModel a)
withQAbstractItemModelResult f
  = withObjectResult qtc_QAbstractItemModel_getFinalizer f

qAbstractItemModelFromPtr :: Ptr (TQAbstractItemModel a) -> IO (QAbstractItemModel a)
qAbstractItemModelFromPtr p
  = objectFromPtr qtc_QAbstractItemModel_getFinalizer p

withQListQAbstractItemModelResult :: (Ptr (Ptr (TQAbstractItemModel a)) -> IO CInt) -> IO [QAbstractItemModel a]
withQListQAbstractItemModelResult f
  = withQListObjectResult qtc_QAbstractItemModel_getFinalizer f

qAbstractItemModelListFromPtrList :: [Ptr (TQAbstractItemModel a)] -> IO [QAbstractItemModel a]
qAbstractItemModelListFromPtrList p
  = objectListFromPtrList qtc_QAbstractItemModel_getFinalizer p

foreign import ccall qtc_QAbstractItemModel_getFinalizer :: FunPtr (Ptr (TQAbstractItemModel a) -> IO ())

class QqCastList_QAbstractItemModel a r where
  qcl_QAbstractItemModel :: [QAbstractItemModel ()] -> a -> r

instance QqCastList_QAbstractItemModel (QAbstractItemModel ()) [QAbstractItemModel ()] where
  qcl_QAbstractItemModel l x = reverse $ x:l

instance QqCastList_QAbstractItemModel a r => QqCastList_QAbstractItemModel (QAbstractItemModel ()) (a -> r) where
  qcl_QAbstractItemModel l x sx = qcl_QAbstractItemModel (x:l) sx

instance QqCastList_QAbstractItemModel (QAbstractTableModel ()) [QAbstractItemModel ()] where
  qcl_QAbstractItemModel l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemModel a r => QqCastList_QAbstractItemModel (QAbstractTableModel ()) (a -> r) where
  qcl_QAbstractItemModel l x sx = qcl_QAbstractItemModel ((objectCast x):l) sx

instance QqCastList_QAbstractItemModel (QAbstractListModel ()) [QAbstractItemModel ()] where
  qcl_QAbstractItemModel l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemModel a r => QqCastList_QAbstractItemModel (QAbstractListModel ()) (a -> r) where
  qcl_QAbstractItemModel l x sx = qcl_QAbstractItemModel ((objectCast x):l) sx

qCastList_QAbstractItemModel x = qcl_QAbstractItemModel [] x

type QIODevice a = QObject (CQIODevice a)
type TQIODevice a = TQObject (CQIODevice a)
data CQIODevice a = CQIODevice

type QIODeviceSc a = QIODevice (CQIODeviceSc a)
type TQIODeviceSc a = TQIODevice (CQIODeviceSc a)
data CQIODeviceSc a = CQIODeviceSc

qCast_QIODevice :: Object a -> IO (QIODevice ())
qCast_QIODevice _qobj
  = return (objectCast _qobj)

withQIODeviceResult :: IO (Ptr (TQIODevice a)) -> IO (QIODevice a)
withQIODeviceResult f
  = withObjectRefResult f

qIODeviceFromPtr :: Ptr (TQIODevice a) -> IO (QIODevice a)
qIODeviceFromPtr p
  = objectFromPtr_nf p

withQListQIODeviceResult :: (Ptr (Ptr (TQIODevice a)) -> IO CInt) -> IO [QIODevice a]
withQListQIODeviceResult f
  = withQListObjectRefResult f

qIODeviceListFromPtrList :: [Ptr (TQIODevice a)] -> IO [QIODevice a]
qIODeviceListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QIODevice a r where
  qcl_QIODevice :: [QIODevice ()] -> a -> r

instance QqCastList_QIODevice (QIODevice ()) [QIODevice ()] where
  qcl_QIODevice l x = reverse $ x:l

instance QqCastList_QIODevice a r => QqCastList_QIODevice (QIODevice ()) (a -> r) where
  qcl_QIODevice l x sx = qcl_QIODevice (x:l) sx

instance QqCastList_QIODevice (QFile ()) [QIODevice ()] where
  qcl_QIODevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QIODevice a r => QqCastList_QIODevice (QFile ()) (a -> r) where
  qcl_QIODevice l x sx = qcl_QIODevice ((objectCast x):l) sx

qCastList_QIODevice x = qcl_QIODevice [] x

type QTextCodec a = Object (CQTextCodec a)
type TQTextCodec a = CQTextCodec a
data CQTextCodec a = CQTextCodec

type QTextCodecSc a = QTextCodec (CQTextCodecSc a)
type TQTextCodecSc a = TQTextCodec (CQTextCodecSc a)
data CQTextCodecSc a = CQTextCodecSc

qCast_QTextCodec :: Object a -> IO (QTextCodec ())
qCast_QTextCodec _qobj
  = return (objectCast _qobj)

withQTextCodecResult :: IO (Ptr (TQTextCodec a)) -> IO (QTextCodec a)
withQTextCodecResult f
  = withObjectRefResult f

class QqCastList_QTextCodec a r where
  qcl_QTextCodec :: [QTextCodec ()] -> a -> r

instance QqCastList_QTextCodec (QTextCodec ()) [QTextCodec ()] where
  qcl_QTextCodec l x = reverse $ x:l

instance QqCastList_QTextCodec a r => QqCastList_QTextCodec (QTextCodec ()) (a -> r) where
  qcl_QTextCodec l x sx = qcl_QTextCodec (x:l) sx

qCastList_QTextCodec x = qcl_QTextCodec [] x

type QLineF a = Object (CQLineF a)
type TQLineF a = CQLineF a
data CQLineF a = CQLineF

type QLineFSc a = QLineF (CQLineFSc a)
type TQLineFSc a = TQLineF (CQLineFSc a)
data CQLineFSc a = CQLineFSc

qCast_QLineF :: Object a -> IO (QLineF ())
qCast_QLineF _qobj
  = return (objectCast _qobj)

withQLineFResult :: IO (Ptr (TQLineF a)) -> IO (QLineF a)
withQLineFResult f
  = withObjectResult qtc_QLineF_getFinalizer f

foreign import ccall qtc_QLineF_getFinalizer :: FunPtr (Ptr (TQLineF a) -> IO ())

qLineFAddFinalizer :: QLineF a -> IO ()
qLineFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QLineF_getFinalizer fp

class QqCastList_QLineF a r where
  qcl_QLineF :: [QLineF ()] -> a -> r

instance QqCastList_QLineF (QLineF ()) [QLineF ()] where
  qcl_QLineF l x = reverse $ x:l

instance QqCastList_QLineF a r => QqCastList_QLineF (QLineF ()) (a -> r) where
  qcl_QLineF l x sx = qcl_QLineF (x:l) sx

qCastList_QLineF x = qcl_QLineF [] x

type Qt a = Object (CQt a)
type TQt a = CQt a
data CQt a = CQt

type QtSc a = Qt (CQtSc a)
type TQtSc a = TQt (CQtSc a)
data CQtSc a = CQtSc

qCast_Qt :: Object a -> IO (Qt ())
qCast_Qt _qobj
  = return (objectCast _qobj)

withQtResult :: IO (Ptr (TQt a)) -> IO (Qt a)
withQtResult f
  = withObjectRefResult f

class QqCastList_Qt a r where
  qcl_Qt :: [Qt ()] -> a -> r

instance QqCastList_Qt (Qt ()) [Qt ()] where
  qcl_Qt l x = reverse $ x:l

instance QqCastList_Qt a r => QqCastList_Qt (Qt ()) (a -> r) where
  qcl_Qt l x sx = qcl_Qt (x:l) sx

qCastList_Qt x = qcl_Qt [] x

type QFileInfo a = Object (CQFileInfo a)
type TQFileInfo a = CQFileInfo a
data CQFileInfo a = CQFileInfo

type QFileInfoSc a = QFileInfo (CQFileInfoSc a)
type TQFileInfoSc a = TQFileInfo (CQFileInfoSc a)
data CQFileInfoSc a = CQFileInfoSc

qCast_QFileInfo :: Object a -> IO (QFileInfo ())
qCast_QFileInfo _qobj
  = return (objectCast _qobj)

withQFileInfoResult :: IO (Ptr (TQFileInfo a)) -> IO (QFileInfo a)
withQFileInfoResult f
  = withObjectResult qtc_QFileInfo_getFinalizer f

foreign import ccall qtc_QFileInfo_getFinalizer :: FunPtr (Ptr (TQFileInfo a) -> IO ())

qFileInfoAddFinalizer :: QFileInfo a -> IO ()
qFileInfoAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFileInfo_getFinalizer fp

class QqCastList_QFileInfo a r where
  qcl_QFileInfo :: [QFileInfo ()] -> a -> r

instance QqCastList_QFileInfo (QFileInfo ()) [QFileInfo ()] where
  qcl_QFileInfo l x = reverse $ x:l

instance QqCastList_QFileInfo a r => QqCastList_QFileInfo (QFileInfo ()) (a -> r) where
  qcl_QFileInfo l x sx = qcl_QFileInfo (x:l) sx

qCastList_QFileInfo x = qcl_QFileInfo [] x

type QDate a = Object (CQDate a)
type TQDate a = CQDate a
data CQDate a = CQDate

type QDateSc a = QDate (CQDateSc a)
type TQDateSc a = TQDate (CQDateSc a)
data CQDateSc a = CQDateSc

qCast_QDate :: Object a -> IO (QDate ())
qCast_QDate _qobj
  = return (objectCast _qobj)

withQDateResult :: IO (Ptr (TQDate a)) -> IO (QDate a)
withQDateResult f
  = withObjectResult qtc_QDate_getFinalizer f

foreign import ccall qtc_QDate_getFinalizer :: FunPtr (Ptr (TQDate a) -> IO ())

qDateAddFinalizer :: QDate a -> IO ()
qDateAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDate_getFinalizer fp

class QqCastList_QDate a r where
  qcl_QDate :: [QDate ()] -> a -> r

instance QqCastList_QDate (QDate ()) [QDate ()] where
  qcl_QDate l x = reverse $ x:l

instance QqCastList_QDate a r => QqCastList_QDate (QDate ()) (a -> r) where
  qcl_QDate l x sx = qcl_QDate (x:l) sx

qCastList_QDate x = qcl_QDate [] x

type QTime a = Object (CQTime a)
type TQTime a = CQTime a
data CQTime a = CQTime

type QTimeSc a = QTime (CQTimeSc a)
type TQTimeSc a = TQTime (CQTimeSc a)
data CQTimeSc a = CQTimeSc

qCast_QTime :: Object a -> IO (QTime ())
qCast_QTime _qobj
  = return (objectCast _qobj)

withQTimeResult :: IO (Ptr (TQTime a)) -> IO (QTime a)
withQTimeResult f
  = withObjectResult qtc_QTime_getFinalizer f

foreign import ccall qtc_QTime_getFinalizer :: FunPtr (Ptr (TQTime a) -> IO ())

qTimeAddFinalizer :: QTime a -> IO ()
qTimeAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTime_getFinalizer fp

class QqCastList_QTime a r where
  qcl_QTime :: [QTime ()] -> a -> r

instance QqCastList_QTime (QTime ()) [QTime ()] where
  qcl_QTime l x = reverse $ x:l

instance QqCastList_QTime a r => QqCastList_QTime (QTime ()) (a -> r) where
  qcl_QTime l x sx = qcl_QTime (x:l) sx

qCastList_QTime x = qcl_QTime [] x

type QPointF a = Object (CQPointF a)
type TQPointF a = CQPointF a
data CQPointF a = CQPointF

type QPointFSc a = QPointF (CQPointFSc a)
type TQPointFSc a = TQPointF (CQPointFSc a)
data CQPointFSc a = CQPointFSc

qCast_QPointF :: Object a -> IO (QPointF ())
qCast_QPointF _qobj
  = return (objectCast _qobj)

withQPointFResult :: IO (Ptr (TQPointF a)) -> IO (QPointF a)
withQPointFResult f
  = withObjectResult qtc_QPointF_getFinalizer f

foreign import ccall qtc_QPointF_getFinalizer :: FunPtr (Ptr (TQPointF a) -> IO ())

qPointFAddFinalizer :: QPointF a -> IO ()
qPointFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPointF_getFinalizer fp

class QqCastList_QPointF a r where
  qcl_QPointF :: [QPointF ()] -> a -> r

instance QqCastList_QPointF (QPointF ()) [QPointF ()] where
  qcl_QPointF l x = reverse $ x:l

instance QqCastList_QPointF a r => QqCastList_QPointF (QPointF ()) (a -> r) where
  qcl_QPointF l x sx = qcl_QPointF (x:l) sx

qCastList_QPointF x = qcl_QPointF [] x

type QSize a = Object (CQSize a)
type TQSize a = CQSize a
data CQSize a = CQSize

type QSizeSc a = QSize (CQSizeSc a)
type TQSizeSc a = TQSize (CQSizeSc a)
data CQSizeSc a = CQSizeSc

qCast_QSize :: Object a -> IO (QSize ())
qCast_QSize _qobj
  = return (objectCast _qobj)

withQSizeResult :: IO (Ptr (TQSize a)) -> IO (QSize a)
withQSizeResult f
  = withObjectResult qtc_QSize_getFinalizer f

foreign import ccall qtc_QSize_getFinalizer :: FunPtr (Ptr (TQSize a) -> IO ())

qSizeAddFinalizer :: QSize a -> IO ()
qSizeAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QSize_getFinalizer fp

class QqCastList_QSize a r where
  qcl_QSize :: [QSize ()] -> a -> r

instance QqCastList_QSize (QSize ()) [QSize ()] where
  qcl_QSize l x = reverse $ x:l

instance QqCastList_QSize a r => QqCastList_QSize (QSize ()) (a -> r) where
  qcl_QSize l x sx = qcl_QSize (x:l) sx

qCastList_QSize x = qcl_QSize [] x

type QRectF a = Object (CQRectF a)
type TQRectF a = CQRectF a
data CQRectF a = CQRectF

type QRectFSc a = QRectF (CQRectFSc a)
type TQRectFSc a = TQRectF (CQRectFSc a)
data CQRectFSc a = CQRectFSc

qCast_QRectF :: Object a -> IO (QRectF ())
qCast_QRectF _qobj
  = return (objectCast _qobj)

withQRectFResult :: IO (Ptr (TQRectF a)) -> IO (QRectF a)
withQRectFResult f
  = withObjectResult qtc_QRectF_getFinalizer f

foreign import ccall qtc_QRectF_getFinalizer :: FunPtr (Ptr (TQRectF a) -> IO ())

qRectFAddFinalizer :: QRectF a -> IO ()
qRectFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QRectF_getFinalizer fp

class QqCastList_QRectF a r where
  qcl_QRectF :: [QRectF ()] -> a -> r

instance QqCastList_QRectF (QRectF ()) [QRectF ()] where
  qcl_QRectF l x = reverse $ x:l

instance QqCastList_QRectF a r => QqCastList_QRectF (QRectF ()) (a -> r) where
  qcl_QRectF l x sx = qcl_QRectF (x:l) sx

qCastList_QRectF x = qcl_QRectF [] x

type QDateTime a = Object (CQDateTime a)
type TQDateTime a = CQDateTime a
data CQDateTime a = CQDateTime

type QDateTimeSc a = QDateTime (CQDateTimeSc a)
type TQDateTimeSc a = TQDateTime (CQDateTimeSc a)
data CQDateTimeSc a = CQDateTimeSc

qCast_QDateTime :: Object a -> IO (QDateTime ())
qCast_QDateTime _qobj
  = return (objectCast _qobj)

withQDateTimeResult :: IO (Ptr (TQDateTime a)) -> IO (QDateTime a)
withQDateTimeResult f
  = withObjectResult qtc_QDateTime_getFinalizer f

foreign import ccall qtc_QDateTime_getFinalizer :: FunPtr (Ptr (TQDateTime a) -> IO ())

qDateTimeAddFinalizer :: QDateTime a -> IO ()
qDateTimeAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDateTime_getFinalizer fp

class QqCastList_QDateTime a r where
  qcl_QDateTime :: [QDateTime ()] -> a -> r

instance QqCastList_QDateTime (QDateTime ()) [QDateTime ()] where
  qcl_QDateTime l x = reverse $ x:l

instance QqCastList_QDateTime a r => QqCastList_QDateTime (QDateTime ()) (a -> r) where
  qcl_QDateTime l x sx = qcl_QDateTime (x:l) sx

qCastList_QDateTime x = qcl_QDateTime [] x

type QUrl a = Object (CQUrl a)
type TQUrl a = CQUrl a
data CQUrl a = CQUrl

type QUrlSc a = QUrl (CQUrlSc a)
type TQUrlSc a = TQUrl (CQUrlSc a)
data CQUrlSc a = CQUrlSc

qCast_QUrl :: Object a -> IO (QUrl ())
qCast_QUrl _qobj
  = return (objectCast _qobj)

withQUrlResult :: IO (Ptr (TQUrl a)) -> IO (QUrl a)
withQUrlResult f
  = withObjectResult qtc_QUrl_getFinalizer f

foreign import ccall qtc_QUrl_getFinalizer :: FunPtr (Ptr (TQUrl a) -> IO ())

qUrlAddFinalizer :: QUrl a -> IO ()
qUrlAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QUrl_getFinalizer fp

class QqCastList_QUrl a r where
  qcl_QUrl :: [QUrl ()] -> a -> r

instance QqCastList_QUrl (QUrl ()) [QUrl ()] where
  qcl_QUrl l x = reverse $ x:l

instance QqCastList_QUrl a r => QqCastList_QUrl (QUrl ()) (a -> r) where
  qcl_QUrl l x sx = qcl_QUrl (x:l) sx

qCastList_QUrl x = qcl_QUrl [] x

type QSizeF a = Object (CQSizeF a)
type TQSizeF a = CQSizeF a
data CQSizeF a = CQSizeF

type QSizeFSc a = QSizeF (CQSizeFSc a)
type TQSizeFSc a = TQSizeF (CQSizeFSc a)
data CQSizeFSc a = CQSizeFSc

qCast_QSizeF :: Object a -> IO (QSizeF ())
qCast_QSizeF _qobj
  = return (objectCast _qobj)

withQSizeFResult :: IO (Ptr (TQSizeF a)) -> IO (QSizeF a)
withQSizeFResult f
  = withObjectResult qtc_QSizeF_getFinalizer f

foreign import ccall qtc_QSizeF_getFinalizer :: FunPtr (Ptr (TQSizeF a) -> IO ())

qSizeFAddFinalizer :: QSizeF a -> IO ()
qSizeFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QSizeF_getFinalizer fp

class QqCastList_QSizeF a r where
  qcl_QSizeF :: [QSizeF ()] -> a -> r

instance QqCastList_QSizeF (QSizeF ()) [QSizeF ()] where
  qcl_QSizeF l x = reverse $ x:l

instance QqCastList_QSizeF a r => QqCastList_QSizeF (QSizeF ()) (a -> r) where
  qcl_QSizeF l x sx = qcl_QSizeF (x:l) sx

qCastList_QSizeF x = qcl_QSizeF [] x

type QBasicTimer a = Object (CQBasicTimer a)
type TQBasicTimer a = CQBasicTimer a
data CQBasicTimer a = CQBasicTimer

type QBasicTimerSc a = QBasicTimer (CQBasicTimerSc a)
type TQBasicTimerSc a = TQBasicTimer (CQBasicTimerSc a)
data CQBasicTimerSc a = CQBasicTimerSc

qCast_QBasicTimer :: Object a -> IO (QBasicTimer ())
qCast_QBasicTimer _qobj
  = return (objectCast _qobj)

withQBasicTimerResult :: IO (Ptr (TQBasicTimer a)) -> IO (QBasicTimer a)
withQBasicTimerResult f
  = withObjectResult qtc_QBasicTimer_getFinalizer f

foreign import ccall qtc_QBasicTimer_getFinalizer :: FunPtr (Ptr (TQBasicTimer a) -> IO ())

qBasicTimerAddFinalizer :: QBasicTimer a -> IO ()
qBasicTimerAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QBasicTimer_getFinalizer fp

class QqCastList_QBasicTimer a r where
  qcl_QBasicTimer :: [QBasicTimer ()] -> a -> r

instance QqCastList_QBasicTimer (QBasicTimer ()) [QBasicTimer ()] where
  qcl_QBasicTimer l x = reverse $ x:l

instance QqCastList_QBasicTimer a r => QqCastList_QBasicTimer (QBasicTimer ()) (a -> r) where
  qcl_QBasicTimer l x sx = qcl_QBasicTimer (x:l) sx

qCastList_QBasicTimer x = qcl_QBasicTimer [] x

type QDataStream a = Object (CQDataStream a)
type TQDataStream a = CQDataStream a
data CQDataStream a = CQDataStream

type QDataStreamSc a = QDataStream (CQDataStreamSc a)
type TQDataStreamSc a = TQDataStream (CQDataStreamSc a)
data CQDataStreamSc a = CQDataStreamSc

qCast_QDataStream :: Object a -> IO (QDataStream ())
qCast_QDataStream _qobj
  = return (objectCast _qobj)

withQDataStreamResult :: IO (Ptr (TQDataStream a)) -> IO (QDataStream a)
withQDataStreamResult f
  = withObjectResult qtc_QDataStream_getFinalizer f

foreign import ccall qtc_QDataStream_getFinalizer :: FunPtr (Ptr (TQDataStream a) -> IO ())

qDataStreamAddFinalizer :: QDataStream a -> IO ()
qDataStreamAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDataStream_getFinalizer fp

class QqCastList_QDataStream a r where
  qcl_QDataStream :: [QDataStream ()] -> a -> r

instance QqCastList_QDataStream (QDataStream ()) [QDataStream ()] where
  qcl_QDataStream l x = reverse $ x:l

instance QqCastList_QDataStream a r => QqCastList_QDataStream (QDataStream ()) (a -> r) where
  qcl_QDataStream l x sx = qcl_QDataStream (x:l) sx

qCastList_QDataStream x = qcl_QDataStream [] x

type QModelIndex a = Object (CQModelIndex a)
type TQModelIndex a = CQModelIndex a
data CQModelIndex a = CQModelIndex

type QModelIndexSc a = QModelIndex (CQModelIndexSc a)
type TQModelIndexSc a = TQModelIndex (CQModelIndexSc a)
data CQModelIndexSc a = CQModelIndexSc

qCast_QModelIndex :: Object a -> IO (QModelIndex ())
qCast_QModelIndex _qobj
  = return (objectCast _qobj)

withQModelIndexResult :: IO (Ptr (TQModelIndex a)) -> IO (QModelIndex a)
withQModelIndexResult f
  = withObjectResult qtc_QModelIndex_getFinalizer f

foreign import ccall qtc_QModelIndex_getFinalizer :: FunPtr (Ptr (TQModelIndex a) -> IO ())

qModelIndexAddFinalizer :: QModelIndex a -> IO ()
qModelIndexAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QModelIndex_getFinalizer fp

class QqCastList_QModelIndex a r where
  qcl_QModelIndex :: [QModelIndex ()] -> a -> r

instance QqCastList_QModelIndex (QModelIndex ()) [QModelIndex ()] where
  qcl_QModelIndex l x = reverse $ x:l

instance QqCastList_QModelIndex a r => QqCastList_QModelIndex (QModelIndex ()) (a -> r) where
  qcl_QModelIndex l x sx = qcl_QModelIndex (x:l) sx

qCastList_QModelIndex x = qcl_QModelIndex [] x

type QPoint a = Object (CQPoint a)
type TQPoint a = CQPoint a
data CQPoint a = CQPoint

type QPointSc a = QPoint (CQPointSc a)
type TQPointSc a = TQPoint (CQPointSc a)
data CQPointSc a = CQPointSc

qCast_QPoint :: Object a -> IO (QPoint ())
qCast_QPoint _qobj
  = return (objectCast _qobj)

withQPointResult :: IO (Ptr (TQPoint a)) -> IO (QPoint a)
withQPointResult f
  = withObjectResult qtc_QPoint_getFinalizer f

foreign import ccall qtc_QPoint_getFinalizer :: FunPtr (Ptr (TQPoint a) -> IO ())

qPointAddFinalizer :: QPoint a -> IO ()
qPointAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPoint_getFinalizer fp

class QqCastList_QPoint a r where
  qcl_QPoint :: [QPoint ()] -> a -> r

instance QqCastList_QPoint (QPoint ()) [QPoint ()] where
  qcl_QPoint l x = reverse $ x:l

instance QqCastList_QPoint a r => QqCastList_QPoint (QPoint ()) (a -> r) where
  qcl_QPoint l x sx = qcl_QPoint (x:l) sx

qCastList_QPoint x = qcl_QPoint [] x

type QMatrix a = Object (CQMatrix a)
type TQMatrix a = CQMatrix a
data CQMatrix a = CQMatrix

type QMatrixSc a = QMatrix (CQMatrixSc a)
type TQMatrixSc a = TQMatrix (CQMatrixSc a)
data CQMatrixSc a = CQMatrixSc

qCast_QMatrix :: Object a -> IO (QMatrix ())
qCast_QMatrix _qobj
  = return (objectCast _qobj)

withQMatrixResult :: IO (Ptr (TQMatrix a)) -> IO (QMatrix a)
withQMatrixResult f
  = withObjectResult qtc_QMatrix_getFinalizer f

foreign import ccall qtc_QMatrix_getFinalizer :: FunPtr (Ptr (TQMatrix a) -> IO ())

qMatrixAddFinalizer :: QMatrix a -> IO ()
qMatrixAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QMatrix_getFinalizer fp

class QqCastList_QMatrix a r where
  qcl_QMatrix :: [QMatrix ()] -> a -> r

instance QqCastList_QMatrix (QMatrix ()) [QMatrix ()] where
  qcl_QMatrix l x = reverse $ x:l

instance QqCastList_QMatrix a r => QqCastList_QMatrix (QMatrix ()) (a -> r) where
  qcl_QMatrix l x sx = qcl_QMatrix (x:l) sx

qCastList_QMatrix x = qcl_QMatrix [] x

type QTextStream a = Object (CQTextStream a)
type TQTextStream a = CQTextStream a
data CQTextStream a = CQTextStream

type QTextStreamSc a = QTextStream (CQTextStreamSc a)
type TQTextStreamSc a = TQTextStream (CQTextStreamSc a)
data CQTextStreamSc a = CQTextStreamSc

qCast_QTextStream :: Object a -> IO (QTextStream ())
qCast_QTextStream _qobj
  = return (objectCast _qobj)

withQTextStreamResult :: IO (Ptr (TQTextStream a)) -> IO (QTextStream a)
withQTextStreamResult f
  = withObjectResult qtc_QTextStream_getFinalizer f

foreign import ccall qtc_QTextStream_getFinalizer :: FunPtr (Ptr (TQTextStream a) -> IO ())

qTextStreamAddFinalizer :: QTextStream a -> IO ()
qTextStreamAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextStream_getFinalizer fp

class QqCastList_QTextStream a r where
  qcl_QTextStream :: [QTextStream ()] -> a -> r

instance QqCastList_QTextStream (QTextStream ()) [QTextStream ()] where
  qcl_QTextStream l x = reverse $ x:l

instance QqCastList_QTextStream a r => QqCastList_QTextStream (QTextStream ()) (a -> r) where
  qcl_QTextStream l x sx = qcl_QTextStream (x:l) sx

qCastList_QTextStream x = qcl_QTextStream [] x

type QUuid a = Object (CQUuid a)
type TQUuid a = CQUuid a
data CQUuid a = CQUuid

type QUuidSc a = QUuid (CQUuidSc a)
type TQUuidSc a = TQUuid (CQUuidSc a)
data CQUuidSc a = CQUuidSc

qCast_QUuid :: Object a -> IO (QUuid ())
qCast_QUuid _qobj
  = return (objectCast _qobj)

withQUuidResult :: IO (Ptr (TQUuid a)) -> IO (QUuid a)
withQUuidResult f
  = withObjectResult qtc_QUuid_getFinalizer f

foreign import ccall qtc_QUuid_getFinalizer :: FunPtr (Ptr (TQUuid a) -> IO ())

qUuidAddFinalizer :: QUuid a -> IO ()
qUuidAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QUuid_getFinalizer fp

class QqCastList_QUuid a r where
  qcl_QUuid :: [QUuid ()] -> a -> r

instance QqCastList_QUuid (QUuid ()) [QUuid ()] where
  qcl_QUuid l x = reverse $ x:l

instance QqCastList_QUuid a r => QqCastList_QUuid (QUuid ()) (a -> r) where
  qcl_QUuid l x sx = qcl_QUuid (x:l) sx

qCastList_QUuid x = qcl_QUuid [] x

type QLocale a = Object (CQLocale a)
type TQLocale a = CQLocale a
data CQLocale a = CQLocale

type QLocaleSc a = QLocale (CQLocaleSc a)
type TQLocaleSc a = TQLocale (CQLocaleSc a)
data CQLocaleSc a = CQLocaleSc

qCast_QLocale :: Object a -> IO (QLocale ())
qCast_QLocale _qobj
  = return (objectCast _qobj)

withQLocaleResult :: IO (Ptr (TQLocale a)) -> IO (QLocale a)
withQLocaleResult f
  = withObjectResult qtc_QLocale_getFinalizer f

foreign import ccall qtc_QLocale_getFinalizer :: FunPtr (Ptr (TQLocale a) -> IO ())

qLocaleAddFinalizer :: QLocale a -> IO ()
qLocaleAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QLocale_getFinalizer fp

class QqCastList_QLocale a r where
  qcl_QLocale :: [QLocale ()] -> a -> r

instance QqCastList_QLocale (QLocale ()) [QLocale ()] where
  qcl_QLocale l x = reverse $ x:l

instance QqCastList_QLocale a r => QqCastList_QLocale (QLocale ()) (a -> r) where
  qcl_QLocale l x sx = qcl_QLocale (x:l) sx

qCastList_QLocale x = qcl_QLocale [] x

type QDir a = Object (CQDir a)
type TQDir a = CQDir a
data CQDir a = CQDir

type QDirSc a = QDir (CQDirSc a)
type TQDirSc a = TQDir (CQDirSc a)
data CQDirSc a = CQDirSc

qCast_QDir :: Object a -> IO (QDir ())
qCast_QDir _qobj
  = return (objectCast _qobj)

withQDirResult :: IO (Ptr (TQDir a)) -> IO (QDir a)
withQDirResult f
  = withObjectResult qtc_QDir_getFinalizer f

foreign import ccall qtc_QDir_getFinalizer :: FunPtr (Ptr (TQDir a) -> IO ())

qDirAddFinalizer :: QDir a -> IO ()
qDirAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDir_getFinalizer fp

class QqCastList_QDir a r where
  qcl_QDir :: [QDir ()] -> a -> r

instance QqCastList_QDir (QDir ()) [QDir ()] where
  qcl_QDir l x = reverse $ x:l

instance QqCastList_QDir a r => QqCastList_QDir (QDir ()) (a -> r) where
  qcl_QDir l x sx = qcl_QDir (x:l) sx

qCastList_QDir x = qcl_QDir [] x

type QChar a = Object (CQChar a)
type TQChar a = CQChar a
data CQChar a = CQChar

type QCharSc a = QChar (CQCharSc a)
type TQCharSc a = TQChar (CQCharSc a)
data CQCharSc a = CQCharSc

qCast_QChar :: Object a -> IO (QChar ())
qCast_QChar _qobj
  = return (objectCast _qobj)

withQCharResult :: IO (Ptr (TQChar a)) -> IO (QChar a)
withQCharResult f
  = withObjectRefResult f

class QqCastList_QChar a r where
  qcl_QChar :: [QChar ()] -> a -> r

instance QqCastList_QChar (QChar ()) [QChar ()] where
  qcl_QChar l x = reverse $ x:l

instance QqCastList_QChar a r => QqCastList_QChar (QChar ()) (a -> r) where
  qcl_QChar l x sx = qcl_QChar (x:l) sx

qCastList_QChar x = qcl_QChar [] x

type QAbstractFileEngine a = Object (CQAbstractFileEngine a)
type TQAbstractFileEngine a = CQAbstractFileEngine a
data CQAbstractFileEngine a = CQAbstractFileEngine

type QAbstractFileEngineSc a = QAbstractFileEngine (CQAbstractFileEngineSc a)
type TQAbstractFileEngineSc a = TQAbstractFileEngine (CQAbstractFileEngineSc a)
data CQAbstractFileEngineSc a = CQAbstractFileEngineSc

qCast_QAbstractFileEngine :: Object a -> IO (QAbstractFileEngine ())
qCast_QAbstractFileEngine _qobj
  = return (objectCast _qobj)

withQAbstractFileEngineResult :: IO (Ptr (TQAbstractFileEngine a)) -> IO (QAbstractFileEngine a)
withQAbstractFileEngineResult f
  = withObjectRefResult f

class QqCastList_QAbstractFileEngine a r where
  qcl_QAbstractFileEngine :: [QAbstractFileEngine ()] -> a -> r

instance QqCastList_QAbstractFileEngine (QAbstractFileEngine ()) [QAbstractFileEngine ()] where
  qcl_QAbstractFileEngine l x = reverse $ x:l

instance QqCastList_QAbstractFileEngine a r => QqCastList_QAbstractFileEngine (QAbstractFileEngine ()) (a -> r) where
  qcl_QAbstractFileEngine l x sx = qcl_QAbstractFileEngine (x:l) sx

qCastList_QAbstractFileEngine x = qcl_QAbstractFileEngine [] x

type QPolygonF a = Object (CQPolygonF a)
type TQPolygonF a = CQPolygonF a
data CQPolygonF a = CQPolygonF

type QPolygonFSc a = QPolygonF (CQPolygonFSc a)
type TQPolygonFSc a = TQPolygonF (CQPolygonFSc a)
data CQPolygonFSc a = CQPolygonFSc

qCast_QPolygonF :: Object a -> IO (QPolygonF ())
qCast_QPolygonF _qobj
  = return (objectCast _qobj)

withQPolygonFResult :: IO (Ptr (TQPolygonF a)) -> IO (QPolygonF a)
withQPolygonFResult f
  = withObjectResult qtc_QPolygonF_getFinalizer f

foreign import ccall qtc_QPolygonF_getFinalizer :: FunPtr (Ptr (TQPolygonF a) -> IO ())

qPolygonFAddFinalizer :: QPolygonF a -> IO ()
qPolygonFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPolygonF_getFinalizer fp

class QqCastList_QPolygonF a r where
  qcl_QPolygonF :: [QPolygonF ()] -> a -> r

instance QqCastList_QPolygonF (QPolygonF ()) [QPolygonF ()] where
  qcl_QPolygonF l x = reverse $ x:l

instance QqCastList_QPolygonF a r => QqCastList_QPolygonF (QPolygonF ()) (a -> r) where
  qcl_QPolygonF l x sx = qcl_QPolygonF (x:l) sx

qCastList_QPolygonF x = qcl_QPolygonF [] x

type QVariant a = Object (CQVariant a)
type TQVariant a = CQVariant a
data CQVariant a = CQVariant

type QVariantSc a = QVariant (CQVariantSc a)
type TQVariantSc a = TQVariant (CQVariantSc a)
data CQVariantSc a = CQVariantSc

qCast_QVariant :: Object a -> IO (QVariant ())
qCast_QVariant _qobj
  = return (objectCast _qobj)

withQVariantResult :: IO (Ptr (TQVariant a)) -> IO (QVariant a)
withQVariantResult f
  = withObjectRefResult f

class QqCastList_QVariant a r where
  qcl_QVariant :: [QVariant ()] -> a -> r

instance QqCastList_QVariant (QVariant ()) [QVariant ()] where
  qcl_QVariant l x = reverse $ x:l

instance QqCastList_QVariant a r => QqCastList_QVariant (QVariant ()) (a -> r) where
  qcl_QVariant l x sx = qcl_QVariant (x:l) sx

qCastList_QVariant x = qcl_QVariant [] x

type QSettings a = QObject (CQSettings a)
type TQSettings a = TQObject (CQSettings a)
data CQSettings a = CQSettings

type QSettingsSc a = QSettings (CQSettingsSc a)
type TQSettingsSc a = TQSettings (CQSettingsSc a)
data CQSettingsSc a = CQSettingsSc

qCast_QSettings :: Object a -> IO (QSettings ())
qCast_QSettings _qobj
  = return (objectCast _qobj)

withQSettingsResult :: IO (Ptr (TQSettings a)) -> IO (QSettings a)
withQSettingsResult f
  = withObjectRefResult f

qSettingsFromPtr :: Ptr (TQSettings a) -> IO (QSettings a)
qSettingsFromPtr p
  = objectFromPtr_nf p

withQListQSettingsResult :: (Ptr (Ptr (TQSettings a)) -> IO CInt) -> IO [QSettings a]
withQListQSettingsResult f
  = withQListObjectRefResult f

qSettingsListFromPtrList :: [Ptr (TQSettings a)] -> IO [QSettings a]
qSettingsListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QSettings a r where
  qcl_QSettings :: [QSettings ()] -> a -> r

instance QqCastList_QSettings (QSettings ()) [QSettings ()] where
  qcl_QSettings l x = reverse $ x:l

instance QqCastList_QSettings a r => QqCastList_QSettings (QSettings ()) (a -> r) where
  qcl_QSettings l x sx = qcl_QSettings (x:l) sx

qCastList_QSettings x = qcl_QSettings [] x

type QRect a = Object (CQRect a)
type TQRect a = CQRect a
data CQRect a = CQRect

type QRectSc a = QRect (CQRectSc a)
type TQRectSc a = TQRect (CQRectSc a)
data CQRectSc a = CQRectSc

qCast_QRect :: Object a -> IO (QRect ())
qCast_QRect _qobj
  = return (objectCast _qobj)

withQRectResult :: IO (Ptr (TQRect a)) -> IO (QRect a)
withQRectResult f
  = withObjectResult qtc_QRect_getFinalizer f

foreign import ccall qtc_QRect_getFinalizer :: FunPtr (Ptr (TQRect a) -> IO ())

qRectAddFinalizer :: QRect a -> IO ()
qRectAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QRect_getFinalizer fp

class QqCastList_QRect a r where
  qcl_QRect :: [QRect ()] -> a -> r

instance QqCastList_QRect (QRect ()) [QRect ()] where
  qcl_QRect l x = reverse $ x:l

instance QqCastList_QRect a r => QqCastList_QRect (QRect ()) (a -> r) where
  qcl_QRect l x sx = qcl_QRect (x:l) sx

qCastList_QRect x = qcl_QRect [] x

type QRegExp a = Object (CQRegExp a)
type TQRegExp a = CQRegExp a
data CQRegExp a = CQRegExp

type QRegExpSc a = QRegExp (CQRegExpSc a)
type TQRegExpSc a = TQRegExp (CQRegExpSc a)
data CQRegExpSc a = CQRegExpSc

qCast_QRegExp :: Object a -> IO (QRegExp ())
qCast_QRegExp _qobj
  = return (objectCast _qobj)

withQRegExpResult :: IO (Ptr (TQRegExp a)) -> IO (QRegExp a)
withQRegExpResult f
  = withObjectResult qtc_QRegExp_getFinalizer f

foreign import ccall qtc_QRegExp_getFinalizer :: FunPtr (Ptr (TQRegExp a) -> IO ())

qRegExpAddFinalizer :: QRegExp a -> IO ()
qRegExpAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QRegExp_getFinalizer fp

class QqCastList_QRegExp a r where
  qcl_QRegExp :: [QRegExp ()] -> a -> r

instance QqCastList_QRegExp (QRegExp ()) [QRegExp ()] where
  qcl_QRegExp l x = reverse $ x:l

instance QqCastList_QRegExp a r => QqCastList_QRegExp (QRegExp ()) (a -> r) where
  qcl_QRegExp l x sx = qcl_QRegExp (x:l) sx

qCastList_QRegExp x = qcl_QRegExp [] x

type QLine a = Object (CQLine a)
type TQLine a = CQLine a
data CQLine a = CQLine

type QLineSc a = QLine (CQLineSc a)
type TQLineSc a = TQLine (CQLineSc a)
data CQLineSc a = CQLineSc

qCast_QLine :: Object a -> IO (QLine ())
qCast_QLine _qobj
  = return (objectCast _qobj)

withQLineResult :: IO (Ptr (TQLine a)) -> IO (QLine a)
withQLineResult f
  = withObjectResult qtc_QLine_getFinalizer f

foreign import ccall qtc_QLine_getFinalizer :: FunPtr (Ptr (TQLine a) -> IO ())

qLineAddFinalizer :: QLine a -> IO ()
qLineAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QLine_getFinalizer fp

class QqCastList_QLine a r where
  qcl_QLine :: [QLine ()] -> a -> r

instance QqCastList_QLine (QLine ()) [QLine ()] where
  qcl_QLine l x = reverse $ x:l

instance QqCastList_QLine a r => QqCastList_QLine (QLine ()) (a -> r) where
  qcl_QLine l x sx = qcl_QLine (x:l) sx

qCastList_QLine x = qcl_QLine [] x

type QPolygon a = Object (CQPolygon a)
type TQPolygon a = CQPolygon a
data CQPolygon a = CQPolygon

type QPolygonSc a = QPolygon (CQPolygonSc a)
type TQPolygonSc a = TQPolygon (CQPolygonSc a)
data CQPolygonSc a = CQPolygonSc

qCast_QPolygon :: Object a -> IO (QPolygon ())
qCast_QPolygon _qobj
  = return (objectCast _qobj)

withQPolygonResult :: IO (Ptr (TQPolygon a)) -> IO (QPolygon a)
withQPolygonResult f
  = withObjectResult qtc_QPolygon_getFinalizer f

foreign import ccall qtc_QPolygon_getFinalizer :: FunPtr (Ptr (TQPolygon a) -> IO ())

qPolygonAddFinalizer :: QPolygon a -> IO ()
qPolygonAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPolygon_getFinalizer fp

class QqCastList_QPolygon a r where
  qcl_QPolygon :: [QPolygon ()] -> a -> r

instance QqCastList_QPolygon (QPolygon ()) [QPolygon ()] where
  qcl_QPolygon l x = reverse $ x:l

instance QqCastList_QPolygon a r => QqCastList_QPolygon (QPolygon ()) (a -> r) where
  qcl_QPolygon l x sx = qcl_QPolygon (x:l) sx

qCastList_QPolygon x = qcl_QPolygon [] x

type QAbstractTableModel a = QAbstractItemModel (CQAbstractTableModel a)
type TQAbstractTableModel a = TQAbstractItemModel (CQAbstractTableModel a)
data CQAbstractTableModel a = CQAbstractTableModel

type QAbstractTableModelSc a = QAbstractTableModel (CQAbstractTableModelSc a)
type TQAbstractTableModelSc a = TQAbstractTableModel (CQAbstractTableModelSc a)
data CQAbstractTableModelSc a = CQAbstractTableModelSc

qCast_QAbstractTableModel :: Object a -> IO (QAbstractTableModel ())
qCast_QAbstractTableModel _qobj
  = return (objectCast _qobj)

withQAbstractTableModelResult :: IO (Ptr (TQAbstractTableModel a)) -> IO (QAbstractTableModel a)
withQAbstractTableModelResult f
  = withObjectRefResult f

qAbstractTableModelFromPtr :: Ptr (TQAbstractTableModel a) -> IO (QAbstractTableModel a)
qAbstractTableModelFromPtr p
  = objectFromPtr_nf p

withQListQAbstractTableModelResult :: (Ptr (Ptr (TQAbstractTableModel a)) -> IO CInt) -> IO [QAbstractTableModel a]
withQListQAbstractTableModelResult f
  = withQListObjectRefResult f

qAbstractTableModelListFromPtrList :: [Ptr (TQAbstractTableModel a)] -> IO [QAbstractTableModel a]
qAbstractTableModelListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractTableModel a r where
  qcl_QAbstractTableModel :: [QAbstractTableModel ()] -> a -> r

instance QqCastList_QAbstractTableModel (QAbstractTableModel ()) [QAbstractTableModel ()] where
  qcl_QAbstractTableModel l x = reverse $ x:l

instance QqCastList_QAbstractTableModel a r => QqCastList_QAbstractTableModel (QAbstractTableModel ()) (a -> r) where
  qcl_QAbstractTableModel l x sx = qcl_QAbstractTableModel (x:l) sx

qCastList_QAbstractTableModel x = qcl_QAbstractTableModel [] x

type QAbstractListModel a = QAbstractItemModel (CQAbstractListModel a)
type TQAbstractListModel a = TQAbstractItemModel (CQAbstractListModel a)
data CQAbstractListModel a = CQAbstractListModel

type QAbstractListModelSc a = QAbstractListModel (CQAbstractListModelSc a)
type TQAbstractListModelSc a = TQAbstractListModel (CQAbstractListModelSc a)
data CQAbstractListModelSc a = CQAbstractListModelSc

qCast_QAbstractListModel :: Object a -> IO (QAbstractListModel ())
qCast_QAbstractListModel _qobj
  = return (objectCast _qobj)

withQAbstractListModelResult :: IO (Ptr (TQAbstractListModel a)) -> IO (QAbstractListModel a)
withQAbstractListModelResult f
  = withObjectRefResult f

qAbstractListModelFromPtr :: Ptr (TQAbstractListModel a) -> IO (QAbstractListModel a)
qAbstractListModelFromPtr p
  = objectFromPtr_nf p

withQListQAbstractListModelResult :: (Ptr (Ptr (TQAbstractListModel a)) -> IO CInt) -> IO [QAbstractListModel a]
withQListQAbstractListModelResult f
  = withQListObjectRefResult f

qAbstractListModelListFromPtrList :: [Ptr (TQAbstractListModel a)] -> IO [QAbstractListModel a]
qAbstractListModelListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractListModel a r where
  qcl_QAbstractListModel :: [QAbstractListModel ()] -> a -> r

instance QqCastList_QAbstractListModel (QAbstractListModel ()) [QAbstractListModel ()] where
  qcl_QAbstractListModel l x = reverse $ x:l

instance QqCastList_QAbstractListModel a r => QqCastList_QAbstractListModel (QAbstractListModel ()) (a -> r) where
  qcl_QAbstractListModel l x sx = qcl_QAbstractListModel (x:l) sx

qCastList_QAbstractListModel x = qcl_QAbstractListModel [] x

type QTimerEvent a = QEvent (CQTimerEvent a)
type TQTimerEvent a = TQEvent (CQTimerEvent a)
data CQTimerEvent a = CQTimerEvent

type QTimerEventSc a = QTimerEvent (CQTimerEventSc a)
type TQTimerEventSc a = TQTimerEvent (CQTimerEventSc a)
data CQTimerEventSc a = CQTimerEventSc

qCast_QTimerEvent :: Object a -> IO (QTimerEvent ())
qCast_QTimerEvent _qobj
  = return (objectCast _qobj)

withQTimerEventResult :: IO (Ptr (TQTimerEvent a)) -> IO (QTimerEvent a)
withQTimerEventResult f
  = withObjectResult qtc_QTimerEvent_getFinalizer f

foreign import ccall qtc_QTimerEvent_getFinalizer :: FunPtr (Ptr (TQTimerEvent a) -> IO ())

qTimerEventAddFinalizer :: QTimerEvent a -> IO ()
qTimerEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTimerEvent_getFinalizer fp

class QqCastList_QTimerEvent a r where
  qcl_QTimerEvent :: [QTimerEvent ()] -> a -> r

instance QqCastList_QTimerEvent (QTimerEvent ()) [QTimerEvent ()] where
  qcl_QTimerEvent l x = reverse $ x:l

instance QqCastList_QTimerEvent a r => QqCastList_QTimerEvent (QTimerEvent ()) (a -> r) where
  qcl_QTimerEvent l x sx = qcl_QTimerEvent (x:l) sx

qCastList_QTimerEvent x = qcl_QTimerEvent [] x

type QDynamicPropertyChangeEvent a = QEvent (CQDynamicPropertyChangeEvent a)
type TQDynamicPropertyChangeEvent a = TQEvent (CQDynamicPropertyChangeEvent a)
data CQDynamicPropertyChangeEvent a = CQDynamicPropertyChangeEvent

type QDynamicPropertyChangeEventSc a = QDynamicPropertyChangeEvent (CQDynamicPropertyChangeEventSc a)
type TQDynamicPropertyChangeEventSc a = TQDynamicPropertyChangeEvent (CQDynamicPropertyChangeEventSc a)
data CQDynamicPropertyChangeEventSc a = CQDynamicPropertyChangeEventSc

qCast_QDynamicPropertyChangeEvent :: Object a -> IO (QDynamicPropertyChangeEvent ())
qCast_QDynamicPropertyChangeEvent _qobj
  = return (objectCast _qobj)

withQDynamicPropertyChangeEventResult :: IO (Ptr (TQDynamicPropertyChangeEvent a)) -> IO (QDynamicPropertyChangeEvent a)
withQDynamicPropertyChangeEventResult f
  = withObjectResult qtc_QDynamicPropertyChangeEvent_getFinalizer f

foreign import ccall qtc_QDynamicPropertyChangeEvent_getFinalizer :: FunPtr (Ptr (TQDynamicPropertyChangeEvent a) -> IO ())

qDynamicPropertyChangeEventAddFinalizer :: QDynamicPropertyChangeEvent a -> IO ()
qDynamicPropertyChangeEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDynamicPropertyChangeEvent_getFinalizer fp

class QqCastList_QDynamicPropertyChangeEvent a r where
  qcl_QDynamicPropertyChangeEvent :: [QDynamicPropertyChangeEvent ()] -> a -> r

instance QqCastList_QDynamicPropertyChangeEvent (QDynamicPropertyChangeEvent ()) [QDynamicPropertyChangeEvent ()] where
  qcl_QDynamicPropertyChangeEvent l x = reverse $ x:l

instance QqCastList_QDynamicPropertyChangeEvent a r => QqCastList_QDynamicPropertyChangeEvent (QDynamicPropertyChangeEvent ()) (a -> r) where
  qcl_QDynamicPropertyChangeEvent l x sx = qcl_QDynamicPropertyChangeEvent (x:l) sx

qCastList_QDynamicPropertyChangeEvent x = qcl_QDynamicPropertyChangeEvent [] x

type QChildEvent a = QEvent (CQChildEvent a)
type TQChildEvent a = TQEvent (CQChildEvent a)
data CQChildEvent a = CQChildEvent

type QChildEventSc a = QChildEvent (CQChildEventSc a)
type TQChildEventSc a = TQChildEvent (CQChildEventSc a)
data CQChildEventSc a = CQChildEventSc

qCast_QChildEvent :: Object a -> IO (QChildEvent ())
qCast_QChildEvent _qobj
  = return (objectCast _qobj)

withQChildEventResult :: IO (Ptr (TQChildEvent a)) -> IO (QChildEvent a)
withQChildEventResult f
  = withObjectResult qtc_QChildEvent_getFinalizer f

foreign import ccall qtc_QChildEvent_getFinalizer :: FunPtr (Ptr (TQChildEvent a) -> IO ())

qChildEventAddFinalizer :: QChildEvent a -> IO ()
qChildEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QChildEvent_getFinalizer fp

class QqCastList_QChildEvent a r where
  qcl_QChildEvent :: [QChildEvent ()] -> a -> r

instance QqCastList_QChildEvent (QChildEvent ()) [QChildEvent ()] where
  qcl_QChildEvent l x = reverse $ x:l

instance QqCastList_QChildEvent a r => QqCastList_QChildEvent (QChildEvent ()) (a -> r) where
  qcl_QChildEvent l x sx = qcl_QChildEvent (x:l) sx

qCastList_QChildEvent x = qcl_QChildEvent [] x

type QFileOpenEvent a = QEvent (CQFileOpenEvent a)
type TQFileOpenEvent a = TQEvent (CQFileOpenEvent a)
data CQFileOpenEvent a = CQFileOpenEvent

type QFileOpenEventSc a = QFileOpenEvent (CQFileOpenEventSc a)
type TQFileOpenEventSc a = TQFileOpenEvent (CQFileOpenEventSc a)
data CQFileOpenEventSc a = CQFileOpenEventSc

qCast_QFileOpenEvent :: Object a -> IO (QFileOpenEvent ())
qCast_QFileOpenEvent _qobj
  = return (objectCast _qobj)

withQFileOpenEventResult :: IO (Ptr (TQFileOpenEvent a)) -> IO (QFileOpenEvent a)
withQFileOpenEventResult f
  = withObjectResult qtc_QFileOpenEvent_getFinalizer f

foreign import ccall qtc_QFileOpenEvent_getFinalizer :: FunPtr (Ptr (TQFileOpenEvent a) -> IO ())

qFileOpenEventAddFinalizer :: QFileOpenEvent a -> IO ()
qFileOpenEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFileOpenEvent_getFinalizer fp

class QqCastList_QFileOpenEvent a r where
  qcl_QFileOpenEvent :: [QFileOpenEvent ()] -> a -> r

instance QqCastList_QFileOpenEvent (QFileOpenEvent ()) [QFileOpenEvent ()] where
  qcl_QFileOpenEvent l x = reverse $ x:l

instance QqCastList_QFileOpenEvent a r => QqCastList_QFileOpenEvent (QFileOpenEvent ()) (a -> r) where
  qcl_QFileOpenEvent l x sx = qcl_QFileOpenEvent (x:l) sx

qCastList_QFileOpenEvent x = qcl_QFileOpenEvent [] x

type QFile a = QIODevice (CQFile a)
type TQFile a = TQIODevice (CQFile a)
data CQFile a = CQFile

type QFileSc a = QFile (CQFileSc a)
type TQFileSc a = TQFile (CQFileSc a)
data CQFileSc a = CQFileSc

qCast_QFile :: Object a -> IO (QFile ())
qCast_QFile _qobj
  = return (objectCast _qobj)

withQFileResult :: IO (Ptr (TQFile a)) -> IO (QFile a)
withQFileResult f
  = withObjectResult qtc_QFile_getFinalizer f

qFileFromPtr :: Ptr (TQFile a) -> IO (QFile a)
qFileFromPtr p
  = objectFromPtr qtc_QFile_getFinalizer p

withQListQFileResult :: (Ptr (Ptr (TQFile a)) -> IO CInt) -> IO [QFile a]
withQListQFileResult f
  = withQListObjectResult qtc_QFile_getFinalizer f

qFileListFromPtrList :: [Ptr (TQFile a)] -> IO [QFile a]
qFileListFromPtrList p
  = objectListFromPtrList qtc_QFile_getFinalizer p

foreign import ccall qtc_QFile_getFinalizer :: FunPtr (Ptr (TQFile a) -> IO ())

class QqCastList_QFile a r where
  qcl_QFile :: [QFile ()] -> a -> r

instance QqCastList_QFile (QFile ()) [QFile ()] where
  qcl_QFile l x = reverse $ x:l

instance QqCastList_QFile a r => QqCastList_QFile (QFile ()) (a -> r) where
  qcl_QFile l x sx = qcl_QFile (x:l) sx

qCastList_QFile x = qcl_QFile [] x

type QEventLoop a = QObject (CQEventLoop a)
type TQEventLoop a = TQObject (CQEventLoop a)
data CQEventLoop a = CQEventLoop

type QEventLoopSc a = QEventLoop (CQEventLoopSc a)
type TQEventLoopSc a = TQEventLoop (CQEventLoopSc a)
data CQEventLoopSc a = CQEventLoopSc

qCast_QEventLoop :: Object a -> IO (QEventLoop ())
qCast_QEventLoop _qobj
  = return (objectCast _qobj)

withQEventLoopResult :: IO (Ptr (TQEventLoop a)) -> IO (QEventLoop a)
withQEventLoopResult f
  = withObjectRefResult f

qEventLoopFromPtr :: Ptr (TQEventLoop a) -> IO (QEventLoop a)
qEventLoopFromPtr p
  = objectFromPtr_nf p

withQListQEventLoopResult :: (Ptr (Ptr (TQEventLoop a)) -> IO CInt) -> IO [QEventLoop a]
withQListQEventLoopResult f
  = withQListObjectRefResult f

qEventLoopListFromPtrList :: [Ptr (TQEventLoop a)] -> IO [QEventLoop a]
qEventLoopListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QEventLoop a r where
  qcl_QEventLoop :: [QEventLoop ()] -> a -> r

instance QqCastList_QEventLoop (QEventLoop ()) [QEventLoop ()] where
  qcl_QEventLoop l x = reverse $ x:l

instance QqCastList_QEventLoop a r => QqCastList_QEventLoop (QEventLoop ()) (a -> r) where
  qcl_QEventLoop l x sx = qcl_QEventLoop (x:l) sx

qCastList_QEventLoop x = qcl_QEventLoop [] x

type QMimeData a = QObject (CQMimeData a)
type TQMimeData a = TQObject (CQMimeData a)
data CQMimeData a = CQMimeData

type QMimeDataSc a = QMimeData (CQMimeDataSc a)
type TQMimeDataSc a = TQMimeData (CQMimeDataSc a)
data CQMimeDataSc a = CQMimeDataSc

qCast_QMimeData :: Object a -> IO (QMimeData ())
qCast_QMimeData _qobj
  = return (objectCast _qobj)

withQMimeDataResult :: IO (Ptr (TQMimeData a)) -> IO (QMimeData a)
withQMimeDataResult f
  = withObjectResult qtc_QMimeData_getFinalizer f

qMimeDataFromPtr :: Ptr (TQMimeData a) -> IO (QMimeData a)
qMimeDataFromPtr p
  = objectFromPtr qtc_QMimeData_getFinalizer p

withQListQMimeDataResult :: (Ptr (Ptr (TQMimeData a)) -> IO CInt) -> IO [QMimeData a]
withQListQMimeDataResult f
  = withQListObjectResult qtc_QMimeData_getFinalizer f

qMimeDataListFromPtrList :: [Ptr (TQMimeData a)] -> IO [QMimeData a]
qMimeDataListFromPtrList p
  = objectListFromPtrList qtc_QMimeData_getFinalizer p

foreign import ccall qtc_QMimeData_getFinalizer :: FunPtr (Ptr (TQMimeData a) -> IO ())

class QqCastList_QMimeData a r where
  qcl_QMimeData :: [QMimeData ()] -> a -> r

instance QqCastList_QMimeData (QMimeData ()) [QMimeData ()] where
  qcl_QMimeData l x = reverse $ x:l

instance QqCastList_QMimeData a r => QqCastList_QMimeData (QMimeData ()) (a -> r) where
  qcl_QMimeData l x sx = qcl_QMimeData (x:l) sx

qCastList_QMimeData x = qcl_QMimeData [] x

type QTranslator a = QObject (CQTranslator a)
type TQTranslator a = TQObject (CQTranslator a)
data CQTranslator a = CQTranslator

type QTranslatorSc a = QTranslator (CQTranslatorSc a)
type TQTranslatorSc a = TQTranslator (CQTranslatorSc a)
data CQTranslatorSc a = CQTranslatorSc

qCast_QTranslator :: Object a -> IO (QTranslator ())
qCast_QTranslator _qobj
  = return (objectCast _qobj)

withQTranslatorResult :: IO (Ptr (TQTranslator a)) -> IO (QTranslator a)
withQTranslatorResult f
  = withObjectResult qtc_QTranslator_getFinalizer f

qTranslatorFromPtr :: Ptr (TQTranslator a) -> IO (QTranslator a)
qTranslatorFromPtr p
  = objectFromPtr qtc_QTranslator_getFinalizer p

withQListQTranslatorResult :: (Ptr (Ptr (TQTranslator a)) -> IO CInt) -> IO [QTranslator a]
withQListQTranslatorResult f
  = withQListObjectResult qtc_QTranslator_getFinalizer f

qTranslatorListFromPtrList :: [Ptr (TQTranslator a)] -> IO [QTranslator a]
qTranslatorListFromPtrList p
  = objectListFromPtrList qtc_QTranslator_getFinalizer p

foreign import ccall qtc_QTranslator_getFinalizer :: FunPtr (Ptr (TQTranslator a) -> IO ())

class QqCastList_QTranslator a r where
  qcl_QTranslator :: [QTranslator ()] -> a -> r

instance QqCastList_QTranslator (QTranslator ()) [QTranslator ()] where
  qcl_QTranslator l x = reverse $ x:l

instance QqCastList_QTranslator a r => QqCastList_QTranslator (QTranslator ()) (a -> r) where
  qcl_QTranslator l x sx = qcl_QTranslator (x:l) sx

qCastList_QTranslator x = qcl_QTranslator [] x

type QCoreApplication a = QObject (CQCoreApplication a)
type TQCoreApplication a = TQObject (CQCoreApplication a)
data CQCoreApplication a = CQCoreApplication

type QCoreApplicationSc a = QCoreApplication (CQCoreApplicationSc a)
type TQCoreApplicationSc a = TQCoreApplication (CQCoreApplicationSc a)
data CQCoreApplicationSc a = CQCoreApplicationSc

qCast_QCoreApplication :: Object a -> IO (QCoreApplication ())
qCast_QCoreApplication _qobj
  = return (objectCast _qobj)

withQCoreApplicationResult :: IO (Ptr (TQCoreApplication a)) -> IO (QCoreApplication a)
withQCoreApplicationResult f
  = withObjectResult qtc_QCoreApplication_getFinalizer f

qCoreApplicationFromPtr :: Ptr (TQCoreApplication a) -> IO (QCoreApplication a)
qCoreApplicationFromPtr p
  = objectFromPtr qtc_QCoreApplication_getFinalizer p

foreign import ccall qtc_QCoreApplication_getFinalizer :: FunPtr (Ptr (TQCoreApplication a) -> IO ())

type QTimer a = QObject (CQTimer a)
type TQTimer a = TQObject (CQTimer a)
data CQTimer a = CQTimer

type QTimerSc a = QTimer (CQTimerSc a)
type TQTimerSc a = TQTimer (CQTimerSc a)
data CQTimerSc a = CQTimerSc

qCast_QTimer :: Object a -> IO (QTimer ())
qCast_QTimer _qobj
  = return (objectCast _qobj)

withQTimerResult :: IO (Ptr (TQTimer a)) -> IO (QTimer a)
withQTimerResult f
  = withObjectResult qtc_QTimer_getFinalizer f

qTimerFromPtr :: Ptr (TQTimer a) -> IO (QTimer a)
qTimerFromPtr p
  = objectFromPtr qtc_QTimer_getFinalizer p

withQListQTimerResult :: (Ptr (Ptr (TQTimer a)) -> IO CInt) -> IO [QTimer a]
withQListQTimerResult f
  = withQListObjectResult qtc_QTimer_getFinalizer f

qTimerListFromPtrList :: [Ptr (TQTimer a)] -> IO [QTimer a]
qTimerListFromPtrList p
  = objectListFromPtrList qtc_QTimer_getFinalizer p

foreign import ccall qtc_QTimer_getFinalizer :: FunPtr (Ptr (TQTimer a) -> IO ())

class QqCastList_QTimer a r where
  qcl_QTimer :: [QTimer ()] -> a -> r

instance QqCastList_QTimer (QTimer ()) [QTimer ()] where
  qcl_QTimer l x = reverse $ x:l

instance QqCastList_QTimer a r => QqCastList_QTimer (QTimer ()) (a -> r) where
  qcl_QTimer l x sx = qcl_QTimer (x:l) sx

qCastList_QTimer x = qcl_QTimer [] x

type QTimeLine a = QObject (CQTimeLine a)
type TQTimeLine a = TQObject (CQTimeLine a)
data CQTimeLine a = CQTimeLine

type QTimeLineSc a = QTimeLine (CQTimeLineSc a)
type TQTimeLineSc a = TQTimeLine (CQTimeLineSc a)
data CQTimeLineSc a = CQTimeLineSc

qCast_QTimeLine :: Object a -> IO (QTimeLine ())
qCast_QTimeLine _qobj
  = return (objectCast _qobj)

withQTimeLineResult :: IO (Ptr (TQTimeLine a)) -> IO (QTimeLine a)
withQTimeLineResult f
  = withObjectResult qtc_QTimeLine_getFinalizer f

qTimeLineFromPtr :: Ptr (TQTimeLine a) -> IO (QTimeLine a)
qTimeLineFromPtr p
  = objectFromPtr qtc_QTimeLine_getFinalizer p

withQListQTimeLineResult :: (Ptr (Ptr (TQTimeLine a)) -> IO CInt) -> IO [QTimeLine a]
withQListQTimeLineResult f
  = withQListObjectResult qtc_QTimeLine_getFinalizer f

qTimeLineListFromPtrList :: [Ptr (TQTimeLine a)] -> IO [QTimeLine a]
qTimeLineListFromPtrList p
  = objectListFromPtrList qtc_QTimeLine_getFinalizer p

foreign import ccall qtc_QTimeLine_getFinalizer :: FunPtr (Ptr (TQTimeLine a) -> IO ())

class QqCastList_QTimeLine a r where
  qcl_QTimeLine :: [QTimeLine ()] -> a -> r

instance QqCastList_QTimeLine (QTimeLine ()) [QTimeLine ()] where
  qcl_QTimeLine l x = reverse $ x:l

instance QqCastList_QTimeLine a r => QqCastList_QTimeLine (QTimeLine ()) (a -> r) where
  qcl_QTimeLine l x sx = qcl_QTimeLine (x:l) sx

qCastList_QTimeLine x = qcl_QTimeLine [] x

