{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QColormap.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QColormap (
  qColormap
  ,qColormap_nf
  ,qColormapCleanup
  ,qColormapInitialize
  ,QqColormapInstance(..)
  ,qColormap_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QColormap

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

qColormap :: (QColormap t1) -> IO (QColormap ())
qColormap (x1)
  = withQColormapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColormap cobj_x1

foreign import ccall "qtc_QColormap" qtc_QColormap :: Ptr (TQColormap t1) -> IO (Ptr (TQColormap ()))

qColormap_nf :: (QColormap t1) -> IO (QColormap ())
qColormap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColormap cobj_x1

qColormapCleanup :: (()) -> IO ()
qColormapCleanup ()
  = qtc_QColormap_cleanup

foreign import ccall "qtc_QColormap_cleanup" qtc_QColormap_cleanup :: IO ()

instance Qdepth (QColormap a) (()) (IO (Int)) where
 depth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColormap_depth cobj_x0

foreign import ccall "qtc_QColormap_depth" qtc_QColormap_depth :: Ptr (TQColormap a) -> IO CInt

qColormapInitialize :: (()) -> IO ()
qColormapInitialize ()
  = qtc_QColormap_initialize

foreign import ccall "qtc_QColormap_initialize" qtc_QColormap_initialize :: IO ()

class QqColormapInstance x1 where
 qColormapInstance :: x1 -> IO (QColormap ())

instance QqColormapInstance (()) where
 qColormapInstance ()
  = withQColormapResult $
    qtc_QColormap_instance

foreign import ccall "qtc_QColormap_instance" qtc_QColormap_instance :: IO (Ptr (TQColormap ()))

instance QqColormapInstance ((Int)) where
 qColormapInstance (x1)
  = withQColormapResult $
    qtc_QColormap_instance1 (toCInt x1)

foreign import ccall "qtc_QColormap_instance1" qtc_QColormap_instance1 :: CInt -> IO (Ptr (TQColormap ()))

instance Qmode (QColormap a) (()) (IO (QColormapMode)) where
 mode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColormap_mode cobj_x0

foreign import ccall "qtc_QColormap_mode" qtc_QColormap_mode :: Ptr (TQColormap a) -> IO CLong

instance Qpixel (QColormap a) ((QColor t1)) where
 pixel x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColormap_pixel cobj_x0 cobj_x1

foreign import ccall "qtc_QColormap_pixel" qtc_QColormap_pixel :: Ptr (TQColormap a) -> Ptr (TQColor t1) -> IO CUInt

instance Qqsize (QColormap a) (()) (IO (Int)) where
 qsize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColormap_size cobj_x0

foreign import ccall "qtc_QColormap_size" qtc_QColormap_size :: Ptr (TQColormap a) -> IO CInt

qColormap_delete :: QColormap a -> IO ()
qColormap_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColormap_delete cobj_x0

foreign import ccall "qtc_QColormap_delete" qtc_QColormap_delete :: Ptr (TQColormap a) -> IO ()

