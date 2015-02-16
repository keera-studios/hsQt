{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLContext.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLContext (
  QqGLContext(..)
  ,QqGLContext_nf(..)
  ,QchooseContext(..)
  ,QcolorIndex(..)
  ,qGLContextCurrentContext
  ,QdeviceIsPixmap(..)
  ,QgenerateFontDisplayLists(..)
  ,getProcAddress
  ,Qinitialized(..)
  ,overlayTransparentColor
  ,requestedFormat
  ,QsetInitialized(..)
  ,qGLContextSetTextureCacheLimit
  ,QsetWindowCreated(..)
  ,qGLContextTextureCacheLimit
  ,QwindowCreated(..)
  ,qGLContext_delete, qGLContext_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui
import Qtc.Classes.Opengl
import Qtc.ClassTypes.Opengl

instance QuserMethod (QGLContext ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLContext_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGLContext_userMethod" qtc_QGLContext_userMethod :: Ptr (TQGLContext a) -> CInt -> IO ()

instance QuserMethod (QGLContextSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGLContext_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGLContext ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLContext_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGLContext_userMethodVariant" qtc_QGLContext_userMethodVariant :: Ptr (TQGLContext a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGLContextSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGLContext_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGLContext x1 where
  qGLContext :: x1 -> IO (QGLContext ())

instance QqGLContext ((QGLFormat t1)) where
 qGLContext (x1)
  = withQGLContextResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext cobj_x1

foreign import ccall "qtc_QGLContext" qtc_QGLContext :: Ptr (TQGLFormat t1) -> IO (Ptr (TQGLContext ()))

instance QqGLContext ((QGLFormat t1, QPaintDevice t2)) where
 qGLContext (x1, x2)
  = withQGLContextResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLContext1 cobj_x1 cobj_x2

foreign import ccall "qtc_QGLContext1" qtc_QGLContext1 :: Ptr (TQGLFormat t1) -> Ptr (TQPaintDevice t2) -> IO (Ptr (TQGLContext ()))

instance QqGLContext ((QGLFormat t1, QWidget t2)) where
 qGLContext (x1, x2)
  = withQGLContextResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLContext1_widget cobj_x1 cobj_x2

foreign import ccall "qtc_QGLContext1_widget" qtc_QGLContext1_widget :: Ptr (TQGLFormat t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQGLContext ()))

class QqGLContext_nf x1 where
  qGLContext_nf :: x1 -> IO (QGLContext ())

instance QqGLContext_nf ((QGLFormat t1)) where
 qGLContext_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext cobj_x1

instance QqGLContext_nf ((QGLFormat t1, QPaintDevice t2)) where
 qGLContext_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLContext1 cobj_x1 cobj_x2

instance QqGLContext_nf ((QGLFormat t1, QWidget t2)) where
 qGLContext_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLContext1_widget cobj_x1 cobj_x2

instance QbindTexture (QGLContext a) ((QImage t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_bindTexture" qtc_QGLContext_bindTexture :: Ptr (TQGLContext a) -> Ptr (TQImage t1) -> IO CUInt

instance QbindTexture (QGLContext a) ((QImage t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture3 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLContext_bindTexture3" qtc_QGLContext_bindTexture3 :: Ptr (TQGLContext a) -> Ptr (TQImage t1) -> CInt -> IO CUInt

instance QbindTexture (QGLContext a) ((QImage t1, Int, Int)) where
 bindTexture x0 (x1, x2, x3)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture5 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGLContext_bindTexture5" qtc_QGLContext_bindTexture5 :: Ptr (TQGLContext a) -> Ptr (TQImage t1) -> CInt -> CInt -> IO CUInt

instance QbindTexture (QGLContext a) ((QPixmap t1)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_bindTexture1" qtc_QGLContext_bindTexture1 :: Ptr (TQGLContext a) -> Ptr (TQPixmap t1) -> IO CUInt

instance QbindTexture (QGLContext a) ((QPixmap t1, Int)) where
 bindTexture x0 (x1, x2)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture4 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLContext_bindTexture4" qtc_QGLContext_bindTexture4 :: Ptr (TQGLContext a) -> Ptr (TQPixmap t1) -> CInt -> IO CUInt

instance QbindTexture (QGLContext a) ((QPixmap t1, Int, Int)) where
 bindTexture x0 (x1, x2, x3)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_bindTexture6 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGLContext_bindTexture6" qtc_QGLContext_bindTexture6 :: Ptr (TQGLContext a) -> Ptr (TQPixmap t1) -> CInt -> CInt -> IO CUInt

instance QbindTexture (QGLContext a) ((String)) where
 bindTexture x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLContext_bindTexture2 cobj_x0 cstr_x1

foreign import ccall "qtc_QGLContext_bindTexture2" qtc_QGLContext_bindTexture2 :: Ptr (TQGLContext a) -> CWString -> IO CUInt

class QchooseContext x0 x1 where
 chooseContext :: x0 -> x1 -> IO (Bool)

instance QchooseContext (QGLContext ()) (()) where
 chooseContext x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_chooseContext_h cobj_x0

foreign import ccall "qtc_QGLContext_chooseContext_h" qtc_QGLContext_chooseContext_h :: Ptr (TQGLContext a) -> IO CBool

instance QchooseContext (QGLContextSc a) (()) where
 chooseContext x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_chooseContext_h cobj_x0

instance QchooseContext (QGLContext ()) ((QGLContext t1)) where
 chooseContext x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_chooseContext1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_chooseContext1_h" qtc_QGLContext_chooseContext1_h :: Ptr (TQGLContext a) -> Ptr (TQGLContext t1) -> IO CBool

instance QchooseContext (QGLContextSc a) ((QGLContext t1)) where
 chooseContext x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_chooseContext1_h cobj_x0 cobj_x1

class QcolorIndex x0 x1 where
 colorIndex :: x0 -> x1 -> IO (Int)

instance QcolorIndex (QGLContext ()) ((QColor t1)) where
 colorIndex x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_colorIndex cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_colorIndex" qtc_QGLContext_colorIndex :: Ptr (TQGLContext a) -> Ptr (TQColor t1) -> IO CUInt

instance QcolorIndex (QGLContextSc a) ((QColor t1)) where
 colorIndex x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_colorIndex cobj_x0 cobj_x1

instance Qcreate (QGLContext ()) (()) (IO (Bool)) where
 create x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_create_h cobj_x0

foreign import ccall "qtc_QGLContext_create_h" qtc_QGLContext_create_h :: Ptr (TQGLContext a) -> IO CBool

instance Qcreate (QGLContextSc a) (()) (IO (Bool)) where
 create x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_create_h cobj_x0

instance Qcreate (QGLContext ()) ((QGLContext t1)) (IO (Bool)) where
 create x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_create1_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_create1_h" qtc_QGLContext_create1_h :: Ptr (TQGLContext a) -> Ptr (TQGLContext t1) -> IO CBool

instance Qcreate (QGLContextSc a) ((QGLContext t1)) (IO (Bool)) where
 create x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_create1_h cobj_x0 cobj_x1

qGLContextCurrentContext :: (()) -> IO (QGLContext ())
qGLContextCurrentContext ()
  = withObjectRefResult $
    qtc_QGLContext_currentContext

foreign import ccall "qtc_QGLContext_currentContext" qtc_QGLContext_currentContext :: IO (Ptr (TQGLContext ()))

instance QdeleteTexture (QGLContext a) ((Int)) where
 deleteTexture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_deleteTexture cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLContext_deleteTexture" qtc_QGLContext_deleteTexture :: Ptr (TQGLContext a) -> CUInt -> IO ()

instance Qdevice (QGLContext a) (()) (IO (QPaintDevice ())) where
 device x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_device cobj_x0

foreign import ccall "qtc_QGLContext_device" qtc_QGLContext_device :: Ptr (TQGLContext a) -> IO (Ptr (TQPaintDevice ()))

class QdeviceIsPixmap x0 x1 where
 deviceIsPixmap :: x0 -> x1 -> IO (Bool)

instance QdeviceIsPixmap (QGLContext ()) (()) where
 deviceIsPixmap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_deviceIsPixmap cobj_x0

foreign import ccall "qtc_QGLContext_deviceIsPixmap" qtc_QGLContext_deviceIsPixmap :: Ptr (TQGLContext a) -> IO CBool

instance QdeviceIsPixmap (QGLContextSc a) (()) where
 deviceIsPixmap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_deviceIsPixmap cobj_x0

instance QdoneCurrent (QGLContext ()) (()) (IO ()) where
 doneCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_doneCurrent_h cobj_x0

foreign import ccall "qtc_QGLContext_doneCurrent_h" qtc_QGLContext_doneCurrent_h :: Ptr (TQGLContext a) -> IO ()

instance QdoneCurrent (QGLContextSc a) (()) (IO ()) where
 doneCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_doneCurrent_h cobj_x0

instance Qformat (QGLContext a) (()) (IO (QGLFormat ())) where
 format x0 ()
  = withQGLFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_format cobj_x0

foreign import ccall "qtc_QGLContext_format" qtc_QGLContext_format :: Ptr (TQGLContext a) -> IO (Ptr (TQGLFormat ()))

class QgenerateFontDisplayLists x0 x1 where
 generateFontDisplayLists :: x0 -> x1 -> IO ()

instance QgenerateFontDisplayLists (QGLContext ()) ((QFont t1, Int)) where
 generateFontDisplayLists x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_generateFontDisplayLists cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGLContext_generateFontDisplayLists" qtc_QGLContext_generateFontDisplayLists :: Ptr (TQGLContext a) -> Ptr (TQFont t1) -> CInt -> IO ()

instance QgenerateFontDisplayLists (QGLContextSc a) ((QFont t1, Int)) where
 generateFontDisplayLists x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_generateFontDisplayLists cobj_x0 cobj_x1 (toCInt x2)

getProcAddress :: QGLContext a -> ((String)) -> IO (QVoid ())
getProcAddress x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGLContext_getProcAddress cobj_x0 cstr_x1

foreign import ccall "qtc_QGLContext_getProcAddress" qtc_QGLContext_getProcAddress :: Ptr (TQGLContext a) -> CWString -> IO (Ptr (TQVoid ()))

class Qinitialized x0 x1 where
 initialized :: x0 -> x1 -> IO (Bool)

instance Qinitialized (QGLContext ()) (()) where
 initialized x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_initialized cobj_x0

foreign import ccall "qtc_QGLContext_initialized" qtc_QGLContext_initialized :: Ptr (TQGLContext a) -> IO CBool

instance Qinitialized (QGLContextSc a) (()) where
 initialized x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_initialized cobj_x0

instance QisSharing (QGLContext a) (()) where
 isSharing x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_isSharing cobj_x0

foreign import ccall "qtc_QGLContext_isSharing" qtc_QGLContext_isSharing :: Ptr (TQGLContext a) -> IO CBool

instance QqisValid (QGLContext ()) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_isValid cobj_x0

foreign import ccall "qtc_QGLContext_isValid" qtc_QGLContext_isValid :: Ptr (TQGLContext a) -> IO CBool

instance QqisValid (QGLContextSc a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_isValid cobj_x0

instance QmakeCurrent (QGLContext ()) (()) (IO ()) where
 makeCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_makeCurrent_h cobj_x0

foreign import ccall "qtc_QGLContext_makeCurrent_h" qtc_QGLContext_makeCurrent_h :: Ptr (TQGLContext a) -> IO ()

instance QmakeCurrent (QGLContextSc a) (()) (IO ()) where
 makeCurrent x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_makeCurrent_h cobj_x0

overlayTransparentColor :: QGLContext a -> (()) -> IO (QColor ())
overlayTransparentColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_overlayTransparentColor cobj_x0

foreign import ccall "qtc_QGLContext_overlayTransparentColor" qtc_QGLContext_overlayTransparentColor :: Ptr (TQGLContext a) -> IO (Ptr (TQColor ()))

requestedFormat :: QGLContext a -> (()) -> IO (QGLFormat ())
requestedFormat x0 ()
  = withQGLFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_requestedFormat cobj_x0

foreign import ccall "qtc_QGLContext_requestedFormat" qtc_QGLContext_requestedFormat :: Ptr (TQGLContext a) -> IO (Ptr (TQGLFormat ()))

instance Qreset (QGLContext a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_reset cobj_x0

foreign import ccall "qtc_QGLContext_reset" qtc_QGLContext_reset :: Ptr (TQGLContext a) -> IO ()

instance QsetDevice (QGLContext ()) ((QPaintDevice t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_setDevice cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_setDevice" qtc_QGLContext_setDevice :: Ptr (TQGLContext a) -> Ptr (TQPaintDevice t1) -> IO ()

instance QsetDevice (QGLContextSc a) ((QPaintDevice t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_setDevice cobj_x0 cobj_x1

instance QsetDevice (QGLContext ()) ((QWidget t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_setDevice_widget cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_setDevice_widget" qtc_QGLContext_setDevice_widget :: Ptr (TQGLContext a) -> Ptr (TQWidget t1) -> IO ()

instance QsetDevice (QGLContextSc a) ((QWidget t1)) where
 setDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_setDevice_widget cobj_x0 cobj_x1

instance QsetFormat (QGLContext a) ((QGLFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLContext_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QGLContext_setFormat" qtc_QGLContext_setFormat :: Ptr (TQGLContext a) -> Ptr (TQGLFormat t1) -> IO ()

class QsetInitialized x0 x1 where
 setInitialized :: x0 -> x1 -> IO ()

instance QsetInitialized (QGLContext ()) ((Bool)) where
 setInitialized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setInitialized cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLContext_setInitialized" qtc_QGLContext_setInitialized :: Ptr (TQGLContext a) -> CBool -> IO ()

instance QsetInitialized (QGLContextSc a) ((Bool)) where
 setInitialized x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setInitialized cobj_x0 (toCBool x1)

qGLContextSetTextureCacheLimit :: ((Int)) -> IO ()
qGLContextSetTextureCacheLimit (x1)
  = qtc_QGLContext_setTextureCacheLimit (toCInt x1)

foreign import ccall "qtc_QGLContext_setTextureCacheLimit" qtc_QGLContext_setTextureCacheLimit :: CInt -> IO ()

instance QsetValid (QGLContext ()) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setValid cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLContext_setValid" qtc_QGLContext_setValid :: Ptr (TQGLContext a) -> CBool -> IO ()

instance QsetValid (QGLContextSc a) ((Bool)) where
 setValid x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setValid cobj_x0 (toCBool x1)

class QsetWindowCreated x0 x1 where
 setWindowCreated :: x0 -> x1 -> IO ()

instance QsetWindowCreated (QGLContext ()) ((Bool)) where
 setWindowCreated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setWindowCreated cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGLContext_setWindowCreated" qtc_QGLContext_setWindowCreated :: Ptr (TQGLContext a) -> CBool -> IO ()

instance QsetWindowCreated (QGLContextSc a) ((Bool)) where
 setWindowCreated x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_setWindowCreated cobj_x0 (toCBool x1)

instance QswapBuffers (QGLContext ()) (()) where
 swapBuffers x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_swapBuffers_h cobj_x0

foreign import ccall "qtc_QGLContext_swapBuffers_h" qtc_QGLContext_swapBuffers_h :: Ptr (TQGLContext a) -> IO ()

instance QswapBuffers (QGLContextSc a) (()) where
 swapBuffers x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_swapBuffers_h cobj_x0

qGLContextTextureCacheLimit :: (()) -> IO (Int)
qGLContextTextureCacheLimit ()
  = withIntResult $
    qtc_QGLContext_textureCacheLimit

foreign import ccall "qtc_QGLContext_textureCacheLimit" qtc_QGLContext_textureCacheLimit :: IO CInt

class QwindowCreated x0 x1 where
 windowCreated :: x0 -> x1 -> IO (Bool)

instance QwindowCreated (QGLContext ()) (()) where
 windowCreated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_windowCreated cobj_x0

foreign import ccall "qtc_QGLContext_windowCreated" qtc_QGLContext_windowCreated :: Ptr (TQGLContext a) -> IO CBool

instance QwindowCreated (QGLContextSc a) (()) where
 windowCreated x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_windowCreated cobj_x0

qGLContext_delete :: QGLContext a -> IO ()
qGLContext_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_delete cobj_x0

foreign import ccall "qtc_QGLContext_delete" qtc_QGLContext_delete :: Ptr (TQGLContext a) -> IO ()

qGLContext_delete1 :: QGLContext a -> IO ()
qGLContext_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLContext_delete1 cobj_x0

foreign import ccall "qtc_QGLContext_delete1" qtc_QGLContext_delete1 :: Ptr (TQGLContext a) -> IO ()

