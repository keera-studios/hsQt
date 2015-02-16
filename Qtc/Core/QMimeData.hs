{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMimeData.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QMimeData (
  qMimeData
  ,QcolorData(..), QcolorData_nf(..)
  ,hasColor
  ,QhasFormat(..)
  ,hasHtml
  ,hasImage
  ,hasText
  ,hasUrls
  ,html
  ,QimageData(..), QimageData_nf(..)
  ,QretrieveData(..)
  ,setColorData
  ,setImageData
  ,urls
  ,qMimeData_delete
  ,qMimeData_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QVariant

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core

instance QuserMethod (QMimeData ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMimeData_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMimeData_userMethod" qtc_QMimeData_userMethod :: Ptr (TQMimeData a) -> CInt -> IO ()

instance QuserMethod (QMimeDataSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMimeData_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMimeData ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMimeData_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMimeData_userMethodVariant" qtc_QMimeData_userMethodVariant :: Ptr (TQMimeData a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMimeDataSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMimeData_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qMimeData :: () -> IO (QMimeData ())
qMimeData ()
  = withQMimeDataResult $
    qtc_QMimeData

foreign import ccall "qtc_QMimeData" qtc_QMimeData :: IO (Ptr (TQMimeData ()))

instance Qclear (QMimeData a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_clear cobj_x0

foreign import ccall "qtc_QMimeData_clear" qtc_QMimeData_clear :: Ptr (TQMimeData a) -> IO ()

class QcolorData x0 x1 where
 colorData :: x0 -> x1 -> IO (QVariant ())

class QcolorData_nf x0 x1 where
 colorData_nf :: x0 -> x1 -> IO (QVariant ())

instance QcolorData (QMimeData ()) (()) where
 colorData x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_colorData cobj_x0

foreign import ccall "qtc_QMimeData_colorData" qtc_QMimeData_colorData :: Ptr (TQMimeData a) -> IO (Ptr (TQVariant ()))

instance QcolorData (QMimeDataSc a) (()) where
 colorData x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_colorData cobj_x0

instance QcolorData_nf (QMimeData ()) (()) where
 colorData_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_colorData cobj_x0

instance QcolorData_nf (QMimeDataSc a) (()) where
 colorData_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_colorData cobj_x0

instance Qqdata (QMimeData a) ((String)) (IO (String)) where
 qdata x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_data cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_data" qtc_QMimeData_data :: Ptr (TQMimeData a) -> CWString -> IO (Ptr (TQString ()))

hasColor :: QMimeData a -> (()) -> IO (Bool)
hasColor x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_hasColor cobj_x0

foreign import ccall "qtc_QMimeData_hasColor" qtc_QMimeData_hasColor :: Ptr (TQMimeData a) -> IO CBool

class QhasFormat x0 x1 where
 hasFormat :: x0 -> x1 -> IO (Bool)

instance QhasFormat (QMimeData ()) ((String)) where
 hasFormat x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_hasFormat_h cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_hasFormat_h" qtc_QMimeData_hasFormat_h :: Ptr (TQMimeData a) -> CWString -> IO CBool

instance QhasFormat (QMimeDataSc a) ((String)) where
 hasFormat x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_hasFormat_h cobj_x0 cstr_x1

hasHtml :: QMimeData a -> (()) -> IO (Bool)
hasHtml x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_hasHtml cobj_x0

foreign import ccall "qtc_QMimeData_hasHtml" qtc_QMimeData_hasHtml :: Ptr (TQMimeData a) -> IO CBool

hasImage :: QMimeData a -> (()) -> IO (Bool)
hasImage x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_hasImage cobj_x0

foreign import ccall "qtc_QMimeData_hasImage" qtc_QMimeData_hasImage :: Ptr (TQMimeData a) -> IO CBool

hasText :: QMimeData a -> (()) -> IO (Bool)
hasText x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_hasText cobj_x0

foreign import ccall "qtc_QMimeData_hasText" qtc_QMimeData_hasText :: Ptr (TQMimeData a) -> IO CBool

hasUrls :: QMimeData a -> (()) -> IO (Bool)
hasUrls x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_hasUrls cobj_x0

foreign import ccall "qtc_QMimeData_hasUrls" qtc_QMimeData_hasUrls :: Ptr (TQMimeData a) -> IO CBool

html :: QMimeData a -> (()) -> IO (String)
html x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_html cobj_x0

foreign import ccall "qtc_QMimeData_html" qtc_QMimeData_html :: Ptr (TQMimeData a) -> IO (Ptr (TQString ()))

class QimageData x0 x1 where
 imageData :: x0 -> x1 -> IO (QVariant ())

class QimageData_nf x0 x1 where
 imageData_nf :: x0 -> x1 -> IO (QVariant ())

instance QimageData (QMimeData ()) (()) where
 imageData x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_imageData cobj_x0

foreign import ccall "qtc_QMimeData_imageData" qtc_QMimeData_imageData :: Ptr (TQMimeData a) -> IO (Ptr (TQVariant ()))

instance QimageData (QMimeDataSc a) (()) where
 imageData x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_imageData cobj_x0

instance QimageData_nf (QMimeData ()) (()) where
 imageData_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_imageData cobj_x0

instance QimageData_nf (QMimeDataSc a) (()) where
 imageData_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_imageData cobj_x0

class QretrieveData x0 x1 where
 retrieveData :: x0 -> x1 -> IO (QVariant ())

instance QretrieveData (QMimeData ()) ((String, QVariantType)) where
 retrieveData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_retrieveData cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMimeData_retrieveData" qtc_QMimeData_retrieveData :: Ptr (TQMimeData a) -> CWString -> CLong -> IO (Ptr (TQVariant ()))

instance QretrieveData (QMimeDataSc a) ((String, QVariantType)) where
 retrieveData x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_retrieveData cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

setColorData :: QMimeData a -> ((QVariant t1)) -> IO ()
setColorData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_setColorData cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_setColorData" qtc_QMimeData_setColorData :: Ptr (TQMimeData a) -> Ptr (TQVariant t1) -> IO ()

instance QsetData (QMimeData a) ((String, String)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMimeData_setData cobj_x0 cstr_x1 cstr_x2

foreign import ccall "qtc_QMimeData_setData" qtc_QMimeData_setData :: Ptr (TQMimeData a) -> CWString -> CWString -> IO ()

instance QsetHtml (QMimeData a) ((String)) where
 setHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_setHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_setHtml" qtc_QMimeData_setHtml :: Ptr (TQMimeData a) -> CWString -> IO ()

setImageData :: QMimeData a -> ((QVariant t1)) -> IO ()
setImageData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_setImageData cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_setImageData" qtc_QMimeData_setImageData :: Ptr (TQMimeData a) -> Ptr (TQVariant t1) -> IO ()

instance QsetText (QMimeData a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_setText" qtc_QMimeData_setText :: Ptr (TQMimeData a) -> CWString -> IO ()

instance Qtext (QMimeData a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_text cobj_x0

foreign import ccall "qtc_QMimeData_text" qtc_QMimeData_text :: Ptr (TQMimeData a) -> IO (Ptr (TQString ()))

urls :: QMimeData a -> (()) -> IO ([QUrl ()])
urls x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_urls cobj_x0 arr

foreign import ccall "qtc_QMimeData_urls" qtc_QMimeData_urls :: Ptr (TQMimeData a) -> Ptr (Ptr (TQUrl ())) -> IO CInt

qMimeData_delete :: QMimeData a -> IO ()
qMimeData_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_delete cobj_x0

foreign import ccall "qtc_QMimeData_delete" qtc_QMimeData_delete :: Ptr (TQMimeData a) -> IO ()

qMimeData_deleteLater :: QMimeData a -> IO ()
qMimeData_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_deleteLater cobj_x0

foreign import ccall "qtc_QMimeData_deleteLater" qtc_QMimeData_deleteLater :: Ptr (TQMimeData a) -> IO ()

instance QchildEvent (QMimeData ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_childEvent" qtc_QMimeData_childEvent :: Ptr (TQMimeData a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMimeDataSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMimeData ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_connectNotify" qtc_QMimeData_connectNotify :: Ptr (TQMimeData a) -> CWString -> IO ()

instance QconnectNotify (QMimeDataSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMimeData ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_customEvent" qtc_QMimeData_customEvent :: Ptr (TQMimeData a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMimeDataSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMimeData ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_disconnectNotify" qtc_QMimeData_disconnectNotify :: Ptr (TQMimeData a) -> CWString -> IO ()

instance QdisconnectNotify (QMimeDataSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QMimeData ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_event_h" qtc_QMimeData_event_h :: Ptr (TQMimeData a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMimeDataSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_event_h cobj_x0 cobj_x1

instance QeventFilter (QMimeData ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMimeData_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMimeData_eventFilter_h" qtc_QMimeData_eventFilter_h :: Ptr (TQMimeData a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMimeDataSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMimeData_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QMimeData ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMimeData_receivers" qtc_QMimeData_receivers :: Ptr (TQMimeData a) -> CWString -> IO CInt

instance Qreceivers (QMimeDataSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMimeData_receivers cobj_x0 cstr_x1

instance Qsender (QMimeData ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_sender cobj_x0

foreign import ccall "qtc_QMimeData_sender" qtc_QMimeData_sender :: Ptr (TQMimeData a) -> IO (Ptr (TQObject ()))

instance Qsender (QMimeDataSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMimeData_sender cobj_x0

instance QtimerEvent (QMimeData ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMimeData_timerEvent" qtc_QMimeData_timerEvent :: Ptr (TQMimeData a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMimeDataSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMimeData_timerEvent cobj_x0 cobj_x1

