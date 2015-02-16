{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QClipboard.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QClipboard (
  Qimage(..), Qimage_nf(..)
  ,ownsClipboard
  ,ownsFindBuffer
  ,ownsSelection
  ,QsetImage(..)
  ,supportsFindBuffer
  ,supportsSelection
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QClipboard

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance Qclear (QClipboard a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_clear cobj_x0

foreign import ccall "qtc_QClipboard_clear" qtc_QClipboard_clear :: Ptr (TQClipboard a) -> IO ()

instance Qclear (QClipboard a) ((QClipboardMode)) where
 clear x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_clear1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QClipboard_clear1" qtc_QClipboard_clear1 :: Ptr (TQClipboard a) -> CLong -> IO ()

class Qimage x0 x1 where
 image :: x0 -> x1 -> IO (QImage ())

class Qimage_nf x0 x1 where
 image_nf :: x0 -> x1 -> IO (QImage ())

instance Qimage (QClipboard ()) (()) where
 image x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image cobj_x0

foreign import ccall "qtc_QClipboard_image" qtc_QClipboard_image :: Ptr (TQClipboard a) -> IO (Ptr (TQImage ()))

instance Qimage (QClipboardSc a) (()) where
 image x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image cobj_x0

instance Qimage_nf (QClipboard ()) (()) where
 image_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image cobj_x0

instance Qimage_nf (QClipboardSc a) (()) where
 image_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image cobj_x0

instance Qimage (QClipboard ()) ((QClipboardMode)) where
 image x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QClipboard_image1" qtc_QClipboard_image1 :: Ptr (TQClipboard a) -> CLong -> IO (Ptr (TQImage ()))

instance Qimage (QClipboardSc a) ((QClipboardMode)) where
 image x0 (x1)
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qimage_nf (QClipboard ()) ((QClipboardMode)) where
 image_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qimage_nf (QClipboardSc a) ((QClipboardMode)) where
 image_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_image1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmimeData (QClipboard a) (()) where
 mimeData x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_mimeData cobj_x0

foreign import ccall "qtc_QClipboard_mimeData" qtc_QClipboard_mimeData :: Ptr (TQClipboard a) -> IO (Ptr (TQMimeData ()))

instance QmimeData (QClipboard a) ((QClipboardMode)) where
 mimeData x0 (x1)
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_mimeData1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QClipboard_mimeData1" qtc_QClipboard_mimeData1 :: Ptr (TQClipboard a) -> CLong -> IO (Ptr (TQMimeData ()))

ownsClipboard :: QClipboard a -> (()) -> IO (Bool)
ownsClipboard x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_ownsClipboard cobj_x0

foreign import ccall "qtc_QClipboard_ownsClipboard" qtc_QClipboard_ownsClipboard :: Ptr (TQClipboard a) -> IO CBool

ownsFindBuffer :: QClipboard a -> (()) -> IO (Bool)
ownsFindBuffer x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_ownsFindBuffer cobj_x0

foreign import ccall "qtc_QClipboard_ownsFindBuffer" qtc_QClipboard_ownsFindBuffer :: Ptr (TQClipboard a) -> IO CBool

ownsSelection :: QClipboard a -> (()) -> IO (Bool)
ownsSelection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_ownsSelection cobj_x0

foreign import ccall "qtc_QClipboard_ownsSelection" qtc_QClipboard_ownsSelection :: Ptr (TQClipboard a) -> IO CBool

instance Qpixmap (QClipboard ()) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap cobj_x0

foreign import ccall "qtc_QClipboard_pixmap" qtc_QClipboard_pixmap :: Ptr (TQClipboard a) -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QClipboardSc a) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap cobj_x0

instance Qpixmap_nf (QClipboard ()) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap cobj_x0

instance Qpixmap_nf (QClipboardSc a) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap cobj_x0

instance Qpixmap (QClipboard ()) ((QClipboardMode)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QClipboard_pixmap1" qtc_QClipboard_pixmap1 :: Ptr (TQClipboard a) -> CLong -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QClipboardSc a) ((QClipboardMode)) where
 pixmap x0 (x1)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qpixmap_nf (QClipboard ()) ((QClipboardMode)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qpixmap_nf (QClipboardSc a) ((QClipboardMode)) where
 pixmap_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_pixmap1 cobj_x0 (toCLong $ qEnum_toInt x1)

class QsetImage x1 where
 setImage :: QClipboard a -> x1 -> IO ()

instance QsetImage ((QImage t1)) where
 setImage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setImage cobj_x0 cobj_x1

foreign import ccall "qtc_QClipboard_setImage" qtc_QClipboard_setImage :: Ptr (TQClipboard a) -> Ptr (TQImage t1) -> IO ()

instance QsetImage ((QImage t1, QClipboardMode)) where
 setImage x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setImage1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QClipboard_setImage1" qtc_QClipboard_setImage1 :: Ptr (TQClipboard a) -> Ptr (TQImage t1) -> CLong -> IO ()

instance QsetMimeData (QClipboard a) ((QMimeData t1)) where
 setMimeData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setMimeData cobj_x0 cobj_x1

foreign import ccall "qtc_QClipboard_setMimeData" qtc_QClipboard_setMimeData :: Ptr (TQClipboard a) -> Ptr (TQMimeData t1) -> IO ()

instance QsetMimeData (QClipboard a) ((QMimeData t1, QClipboardMode)) where
 setMimeData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setMimeData1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QClipboard_setMimeData1" qtc_QClipboard_setMimeData1 :: Ptr (TQClipboard a) -> Ptr (TQMimeData t1) -> CLong -> IO ()

instance QsetPixmap (QClipboard a) ((QPixmap t1)) where
 setPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QClipboard_setPixmap" qtc_QClipboard_setPixmap :: Ptr (TQClipboard a) -> Ptr (TQPixmap t1) -> IO ()

instance QsetPixmap (QClipboard a) ((QPixmap t1, QClipboardMode)) where
 setPixmap x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QClipboard_setPixmap1 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QClipboard_setPixmap1" qtc_QClipboard_setPixmap1 :: Ptr (TQClipboard a) -> Ptr (TQPixmap t1) -> CLong -> IO ()

instance QsetText (QClipboard a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QClipboard_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QClipboard_setText" qtc_QClipboard_setText :: Ptr (TQClipboard a) -> CWString -> IO ()

instance QsetText (QClipboard a) ((String, QClipboardMode)) where
 setText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QClipboard_setText1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QClipboard_setText1" qtc_QClipboard_setText1 :: Ptr (TQClipboard a) -> CWString -> CLong -> IO ()

supportsFindBuffer :: QClipboard a -> (()) -> IO (Bool)
supportsFindBuffer x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_supportsFindBuffer cobj_x0

foreign import ccall "qtc_QClipboard_supportsFindBuffer" qtc_QClipboard_supportsFindBuffer :: Ptr (TQClipboard a) -> IO CBool

supportsSelection :: QClipboard a -> (()) -> IO (Bool)
supportsSelection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_supportsSelection cobj_x0

foreign import ccall "qtc_QClipboard_supportsSelection" qtc_QClipboard_supportsSelection :: Ptr (TQClipboard a) -> IO CBool

instance Qtext (QClipboard a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_text cobj_x0

foreign import ccall "qtc_QClipboard_text" qtc_QClipboard_text :: Ptr (TQClipboard a) -> IO (Ptr (TQString ()))

instance Qtext (QClipboard a) ((QClipboardMode)) (IO (String)) where
 text x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QClipboard_text1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QClipboard_text1" qtc_QClipboard_text1 :: Ptr (TQClipboard a) -> CLong -> IO (Ptr (TQString ()))

