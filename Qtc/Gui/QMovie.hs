{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMovie.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMovie (
  QqMovie(..)
  ,currentFrameNumber
  ,QcurrentImage(..), QcurrentImage_nf(..)
  ,QcurrentPixmap(..), QcurrentPixmap_nf(..)
  ,frameCount
  ,jumpToFrame
  ,jumpToNextFrame
  ,nextFrameDelay
  ,qscaledSize, scaledSize
  ,qsetScaledSize, setScaledSize
  ,setSpeed
  ,speed
  ,qMovieSupportedFormats
  ,qMovie_delete
  ,qMovie_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QMovie

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QMovie ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMovie_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMovie_userMethod" qtc_QMovie_userMethod :: Ptr (TQMovie a) -> CInt -> IO ()

instance QuserMethod (QMovieSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMovie_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMovie ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMovie_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMovie_userMethodVariant" qtc_QMovie_userMethodVariant :: Ptr (TQMovie a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMovieSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMovie_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqMovie x1 where
  qMovie :: x1 -> IO (QMovie ())

instance QqMovie (()) where
 qMovie ()
  = withQMovieResult $
    qtc_QMovie

foreign import ccall "qtc_QMovie" qtc_QMovie :: IO (Ptr (TQMovie ()))

instance QqMovie ((String)) where
 qMovie (x1)
  = withQMovieResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie1 cstr_x1

foreign import ccall "qtc_QMovie1" qtc_QMovie1 :: CWString -> IO (Ptr (TQMovie ()))

instance QqMovie ((QObject t1)) where
 qMovie (x1)
  = withQMovieResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie2 cobj_x1

foreign import ccall "qtc_QMovie2" qtc_QMovie2 :: Ptr (TQObject t1) -> IO (Ptr (TQMovie ()))

instance QqMovie ((QIODevice t1)) where
 qMovie (x1)
  = withQMovieResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie3 cobj_x1

foreign import ccall "qtc_QMovie3" qtc_QMovie3 :: Ptr (TQIODevice t1) -> IO (Ptr (TQMovie ()))

instance QqMovie ((QIODevice t1, String)) where
 qMovie (x1, x2)
  = withQMovieResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMovie4 cobj_x1 cstr_x2

foreign import ccall "qtc_QMovie4" qtc_QMovie4 :: Ptr (TQIODevice t1) -> CWString -> IO (Ptr (TQMovie ()))

instance QqMovie ((String, String)) where
 qMovie (x1, x2)
  = withQMovieResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMovie5 cstr_x1 cstr_x2

foreign import ccall "qtc_QMovie5" qtc_QMovie5 :: CWString -> CWString -> IO (Ptr (TQMovie ()))

instance QqMovie ((String, String, QObject t3)) where
 qMovie (x1, x2, x3)
  = withQMovieResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QMovie6 cstr_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QMovie6" qtc_QMovie6 :: CWString -> CWString -> Ptr (TQObject t3) -> IO (Ptr (TQMovie ()))

instance QqMovie ((QIODevice t1, String, QObject t3)) where
 qMovie (x1, x2, x3)
  = withQMovieResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QMovie7 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QMovie7" qtc_QMovie7 :: Ptr (TQIODevice t1) -> CWString -> Ptr (TQObject t3) -> IO (Ptr (TQMovie ()))

instance QbackgroundColor (QMovie a) (()) where
 backgroundColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_backgroundColor cobj_x0

foreign import ccall "qtc_QMovie_backgroundColor" qtc_QMovie_backgroundColor :: Ptr (TQMovie a) -> IO (Ptr (TQColor ()))

instance QcacheMode (QMovie a) (()) (IO (QMovieCacheMode)) where
 cacheMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_cacheMode cobj_x0

foreign import ccall "qtc_QMovie_cacheMode" qtc_QMovie_cacheMode :: Ptr (TQMovie a) -> IO CLong

currentFrameNumber :: QMovie a -> (()) -> IO (Int)
currentFrameNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentFrameNumber cobj_x0

foreign import ccall "qtc_QMovie_currentFrameNumber" qtc_QMovie_currentFrameNumber :: Ptr (TQMovie a) -> IO CInt

class QcurrentImage x0 x1 where
 currentImage :: x0 -> x1 -> IO (QImage ())

class QcurrentImage_nf x0 x1 where
 currentImage_nf :: x0 -> x1 -> IO (QImage ())

instance QcurrentImage (QMovie ()) (()) where
 currentImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentImage cobj_x0

foreign import ccall "qtc_QMovie_currentImage" qtc_QMovie_currentImage :: Ptr (TQMovie a) -> IO (Ptr (TQImage ()))

instance QcurrentImage (QMovieSc a) (()) where
 currentImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentImage cobj_x0

instance QcurrentImage_nf (QMovie ()) (()) where
 currentImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentImage cobj_x0

instance QcurrentImage_nf (QMovieSc a) (()) where
 currentImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentImage cobj_x0

class QcurrentPixmap x0 x1 where
 currentPixmap :: x0 -> x1 -> IO (QPixmap ())

class QcurrentPixmap_nf x0 x1 where
 currentPixmap_nf :: x0 -> x1 -> IO (QPixmap ())

instance QcurrentPixmap (QMovie ()) (()) where
 currentPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentPixmap cobj_x0

foreign import ccall "qtc_QMovie_currentPixmap" qtc_QMovie_currentPixmap :: Ptr (TQMovie a) -> IO (Ptr (TQPixmap ()))

instance QcurrentPixmap (QMovieSc a) (()) where
 currentPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentPixmap cobj_x0

instance QcurrentPixmap_nf (QMovie ()) (()) where
 currentPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentPixmap cobj_x0

instance QcurrentPixmap_nf (QMovieSc a) (()) where
 currentPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_currentPixmap cobj_x0

instance Qdevice (QMovie a) (()) (IO (QIODevice ())) where
 device x0 ()
  = withQIODeviceResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_device cobj_x0

foreign import ccall "qtc_QMovie_device" qtc_QMovie_device :: Ptr (TQMovie a) -> IO (Ptr (TQIODevice ()))

instance QfileName (QMovie a) (()) where
 fileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_fileName cobj_x0

foreign import ccall "qtc_QMovie_fileName" qtc_QMovie_fileName :: Ptr (TQMovie a) -> IO (Ptr (TQString ()))

instance Qformat (QMovie a) (()) (IO (String)) where
 format x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_format cobj_x0

foreign import ccall "qtc_QMovie_format" qtc_QMovie_format :: Ptr (TQMovie a) -> IO (Ptr (TQString ()))

frameCount :: QMovie a -> (()) -> IO (Int)
frameCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_frameCount cobj_x0

foreign import ccall "qtc_QMovie_frameCount" qtc_QMovie_frameCount :: Ptr (TQMovie a) -> IO CInt

instance QqframeRect (QMovie a) (()) where
 qframeRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_frameRect cobj_x0

foreign import ccall "qtc_QMovie_frameRect" qtc_QMovie_frameRect :: Ptr (TQMovie a) -> IO (Ptr (TQRect ()))

instance QframeRect (QMovie a) (()) where
 frameRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_frameRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QMovie_frameRect_qth" qtc_QMovie_frameRect_qth :: Ptr (TQMovie a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqisValid (QMovie ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_isValid cobj_x0

foreign import ccall "qtc_QMovie_isValid" qtc_QMovie_isValid :: Ptr (TQMovie a) -> IO CBool

instance QqisValid (QMovieSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_isValid cobj_x0

jumpToFrame :: QMovie a -> ((Int)) -> IO (Bool)
jumpToFrame x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_jumpToFrame cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMovie_jumpToFrame" qtc_QMovie_jumpToFrame :: Ptr (TQMovie a) -> CInt -> IO CBool

jumpToNextFrame :: QMovie a -> (()) -> IO (Bool)
jumpToNextFrame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_jumpToNextFrame cobj_x0

foreign import ccall "qtc_QMovie_jumpToNextFrame" qtc_QMovie_jumpToNextFrame :: Ptr (TQMovie a) -> IO CBool

instance QloopCount (QMovie a) (()) where
 loopCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_loopCount cobj_x0

foreign import ccall "qtc_QMovie_loopCount" qtc_QMovie_loopCount :: Ptr (TQMovie a) -> IO CInt

nextFrameDelay :: QMovie a -> (()) -> IO (Int)
nextFrameDelay x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_nextFrameDelay cobj_x0

foreign import ccall "qtc_QMovie_nextFrameDelay" qtc_QMovie_nextFrameDelay :: Ptr (TQMovie a) -> IO CInt

qscaledSize :: QMovie a -> (()) -> IO (QSize ())
qscaledSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_scaledSize cobj_x0

foreign import ccall "qtc_QMovie_scaledSize" qtc_QMovie_scaledSize :: Ptr (TQMovie a) -> IO (Ptr (TQSize ()))

scaledSize :: QMovie a -> (()) -> IO (Size)
scaledSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_scaledSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMovie_scaledSize_qth" qtc_QMovie_scaledSize_qth :: Ptr (TQMovie a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsetBackgroundColor (QMovie a) ((QColor t1)) where
 setBackgroundColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_setBackgroundColor cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_setBackgroundColor" qtc_QMovie_setBackgroundColor :: Ptr (TQMovie a) -> Ptr (TQColor t1) -> IO ()

instance QsetCacheMode (QMovie a) ((QMovieCacheMode)) where
 setCacheMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_setCacheMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMovie_setCacheMode" qtc_QMovie_setCacheMode :: Ptr (TQMovie a) -> CLong -> IO ()

instance QsetDevice (QMovie a) ((QIODevice t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_setDevice cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_setDevice" qtc_QMovie_setDevice :: Ptr (TQMovie a) -> Ptr (TQIODevice t1) -> IO ()

instance QsetFileName (QMovie a) ((String)) where
 setFileName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_setFileName cobj_x0 cstr_x1

foreign import ccall "qtc_QMovie_setFileName" qtc_QMovie_setFileName :: Ptr (TQMovie a) -> CWString -> IO ()

instance QsetFormat (QMovie a) ((String)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_setFormat cobj_x0 cstr_x1

foreign import ccall "qtc_QMovie_setFormat" qtc_QMovie_setFormat :: Ptr (TQMovie a) -> CWString -> IO ()

instance QsetPaused (QMovie a) ((Bool)) where
 setPaused x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_setPaused cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMovie_setPaused" qtc_QMovie_setPaused :: Ptr (TQMovie a) -> CBool -> IO ()

qsetScaledSize :: QMovie a -> ((QSize t1)) -> IO ()
qsetScaledSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_setScaledSize cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_setScaledSize" qtc_QMovie_setScaledSize :: Ptr (TQMovie a) -> Ptr (TQSize t1) -> IO ()

setScaledSize :: QMovie a -> ((Size)) -> IO ()
setScaledSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMovie_setScaledSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMovie_setScaledSize_qth" qtc_QMovie_setScaledSize_qth :: Ptr (TQMovie a) -> CInt -> CInt -> IO ()

setSpeed :: QMovie a -> ((Int)) -> IO ()
setSpeed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_setSpeed cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMovie_setSpeed" qtc_QMovie_setSpeed :: Ptr (TQMovie a) -> CInt -> IO ()

speed :: QMovie a -> (()) -> IO (Int)
speed x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_speed cobj_x0

foreign import ccall "qtc_QMovie_speed" qtc_QMovie_speed :: Ptr (TQMovie a) -> IO CInt

instance Qstart (QMovie a) (()) (IO ()) where
 start x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_start cobj_x0

foreign import ccall "qtc_QMovie_start" qtc_QMovie_start :: Ptr (TQMovie a) -> IO ()

instance Qstate (QMovie a) (()) (IO (MovieState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_state cobj_x0

foreign import ccall "qtc_QMovie_state" qtc_QMovie_state :: Ptr (TQMovie a) -> IO CLong

instance Qstop (QMovie a) (()) where
 stop x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_stop cobj_x0

foreign import ccall "qtc_QMovie_stop" qtc_QMovie_stop :: Ptr (TQMovie a) -> IO ()

qMovieSupportedFormats :: (()) -> IO ([QByteArray ()])
qMovieSupportedFormats ()
  = withQListObjectRefResult $ \arr ->
    qtc_QMovie_supportedFormats arr

foreign import ccall "qtc_QMovie_supportedFormats" qtc_QMovie_supportedFormats :: Ptr (Ptr (TQByteArray ())) -> IO CInt

qMovie_delete :: QMovie a -> IO ()
qMovie_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_delete cobj_x0

foreign import ccall "qtc_QMovie_delete" qtc_QMovie_delete :: Ptr (TQMovie a) -> IO ()

qMovie_deleteLater :: QMovie a -> IO ()
qMovie_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_deleteLater cobj_x0

foreign import ccall "qtc_QMovie_deleteLater" qtc_QMovie_deleteLater :: Ptr (TQMovie a) -> IO ()

instance QchildEvent (QMovie ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_childEvent" qtc_QMovie_childEvent :: Ptr (TQMovie a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMovieSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMovie ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMovie_connectNotify" qtc_QMovie_connectNotify :: Ptr (TQMovie a) -> CWString -> IO ()

instance QconnectNotify (QMovieSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMovie ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_customEvent" qtc_QMovie_customEvent :: Ptr (TQMovie a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMovieSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMovie ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMovie_disconnectNotify" qtc_QMovie_disconnectNotify :: Ptr (TQMovie a) -> CWString -> IO ()

instance QdisconnectNotify (QMovieSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QMovie ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_event_h" qtc_QMovie_event_h :: Ptr (TQMovie a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMovieSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_event_h cobj_x0 cobj_x1

instance QeventFilter (QMovie ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMovie_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMovie_eventFilter_h" qtc_QMovie_eventFilter_h :: Ptr (TQMovie a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMovieSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMovie_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QMovie ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMovie_receivers" qtc_QMovie_receivers :: Ptr (TQMovie a) -> CWString -> IO CInt

instance Qreceivers (QMovieSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMovie_receivers cobj_x0 cstr_x1

instance Qsender (QMovie ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_sender cobj_x0

foreign import ccall "qtc_QMovie_sender" qtc_QMovie_sender :: Ptr (TQMovie a) -> IO (Ptr (TQObject ()))

instance Qsender (QMovieSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMovie_sender cobj_x0

instance QtimerEvent (QMovie ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMovie_timerEvent" qtc_QMovie_timerEvent :: Ptr (TQMovie a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMovieSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMovie_timerEvent cobj_x0 cobj_x1

