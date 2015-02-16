{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGLColormap.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Opengl.QGLColormap (
  QqGLColormap(..)
  ,QqGLColormap_nf(..)
  ,entryColor
  ,entryRgb
  ,findNearest
  ,QsetEntry(..)
  ,qGLColormap_delete
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

class QqGLColormap x1 where
  qGLColormap :: x1 -> IO (QGLColormap ())

instance QqGLColormap (()) where
 qGLColormap ()
  = withQGLColormapResult $
    qtc_QGLColormap

foreign import ccall "qtc_QGLColormap" qtc_QGLColormap :: IO (Ptr (TQGLColormap ()))

instance QqGLColormap ((QGLColormap t1)) where
 qGLColormap (x1)
  = withQGLColormapResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLColormap1 cobj_x1

foreign import ccall "qtc_QGLColormap1" qtc_QGLColormap1 :: Ptr (TQGLColormap t1) -> IO (Ptr (TQGLColormap ()))

class QqGLColormap_nf x1 where
  qGLColormap_nf :: x1 -> IO (QGLColormap ())

instance QqGLColormap_nf (()) where
 qGLColormap_nf ()
  = withObjectRefResult $
    qtc_QGLColormap

instance QqGLColormap_nf ((QGLColormap t1)) where
 qGLColormap_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGLColormap1 cobj_x1

instance Qdetach (QGLColormap a) (()) where
 detach x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_detach cobj_x0

foreign import ccall "qtc_QGLColormap_detach" qtc_QGLColormap_detach :: Ptr (TQGLColormap a) -> IO ()

entryColor :: QGLColormap a -> ((Int)) -> IO (QColor ())
entryColor x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_entryColor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLColormap_entryColor" qtc_QGLColormap_entryColor :: Ptr (TQGLColormap a) -> CInt -> IO (Ptr (TQColor ()))

entryRgb :: QGLColormap a -> ((Int)) -> IO (Int)
entryRgb x0 (x1)
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_entryRgb cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGLColormap_entryRgb" qtc_QGLColormap_entryRgb :: Ptr (TQGLColormap a) -> CInt -> IO CUInt

instance Qfind (QGLColormap a) ((Int)) (IO (Int)) where
 find x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_find cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLColormap_find" qtc_QGLColormap_find :: Ptr (TQGLColormap a) -> CUInt -> IO CInt

findNearest :: QGLColormap a -> ((Int)) -> IO (Int)
findNearest x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_findNearest cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QGLColormap_findNearest" qtc_QGLColormap_findNearest :: Ptr (TQGLColormap a) -> CUInt -> IO CInt

instance QqisEmpty (QGLColormap a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_isEmpty cobj_x0

foreign import ccall "qtc_QGLColormap_isEmpty" qtc_QGLColormap_isEmpty :: Ptr (TQGLColormap a) -> IO CBool

class QsetEntry x1 where
 setEntry :: QGLColormap a -> x1 -> IO ()

instance QsetEntry ((Int, Int)) where
 setEntry x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_setEntry1 cobj_x0 (toCInt x1) (toCUInt x2)

foreign import ccall "qtc_QGLColormap_setEntry1" qtc_QGLColormap_setEntry1 :: Ptr (TQGLColormap a) -> CInt -> CUInt -> IO ()

instance QsetEntry ((Int, QColor t2)) where
 setEntry x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGLColormap_setEntry cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QGLColormap_setEntry" qtc_QGLColormap_setEntry :: Ptr (TQGLColormap a) -> CInt -> Ptr (TQColor t2) -> IO ()

instance Qqsize (QGLColormap a) (()) (IO (Int)) where
 qsize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_size cobj_x0

foreign import ccall "qtc_QGLColormap_size" qtc_QGLColormap_size :: Ptr (TQGLColormap a) -> IO CInt

qGLColormap_delete :: QGLColormap a -> IO ()
qGLColormap_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGLColormap_delete cobj_x0

foreign import ccall "qtc_QGLColormap_delete" qtc_QGLColormap_delete :: Ptr (TQGLColormap a) -> IO ()

