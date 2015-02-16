{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QBrush.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:29
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QBrush (
  QqBrush(..)
  ,QqBrush_nf(..)
  ,gradient
  ,isOpaque
  ,setTexture
  ,setTextureImage
  ,QtextureImage(..), QtextureImage_nf(..)
  ,qBrush_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqBrush x1 where
  qBrush :: x1 -> IO (QBrush ())

instance QqBrush (()) where
 qBrush ()
  = withQBrushResult $
    qtc_QBrush

foreign import ccall "qtc_QBrush" qtc_QBrush :: IO (Ptr (TQBrush ()))

instance QqBrush ((BrushStyle)) where
 qBrush (x1)
  = withQBrushResult $
    qtc_QBrush1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBrush1" qtc_QBrush1 :: CLong -> IO (Ptr (TQBrush ()))

instance QqBrush ((GlobalColor)) where
 qBrush (x1)
  = withQBrushResult $
    qtc_QBrush2 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBrush2" qtc_QBrush2 :: CLong -> IO (Ptr (TQBrush ()))

instance QqBrush ((QPixmap t1)) where
 qBrush (x1)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush3 cobj_x1

foreign import ccall "qtc_QBrush3" qtc_QBrush3 :: Ptr (TQPixmap t1) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QImage t1)) where
 qBrush (x1)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush4 cobj_x1

foreign import ccall "qtc_QBrush4" qtc_QBrush4 :: Ptr (TQImage t1) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QBrush t1)) where
 qBrush (x1)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush5 cobj_x1

foreign import ccall "qtc_QBrush5" qtc_QBrush5 :: Ptr (TQBrush t1) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QColor t1)) where
 qBrush (x1)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush6 cobj_x1

foreign import ccall "qtc_QBrush6" qtc_QBrush6 :: Ptr (TQColor t1) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QGradient t1)) where
 qBrush (x1)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush7 cobj_x1

foreign import ccall "qtc_QBrush7" qtc_QBrush7 :: Ptr (TQGradient t1) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QColor t1, QPixmap t2)) where
 qBrush (x1, x2)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBrush8 cobj_x1 cobj_x2

foreign import ccall "qtc_QBrush8" qtc_QBrush8 :: Ptr (TQColor t1) -> Ptr (TQPixmap t2) -> IO (Ptr (TQBrush ()))

instance QqBrush ((QColor t1, BrushStyle)) where
 qBrush (x1, x2)
  = withQBrushResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush9 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QBrush9" qtc_QBrush9 :: Ptr (TQColor t1) -> CLong -> IO (Ptr (TQBrush ()))

instance QqBrush ((GlobalColor, QPixmap t2)) where
 qBrush (x1, x2)
  = withQBrushResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBrush10 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QBrush10" qtc_QBrush10 :: CLong -> Ptr (TQPixmap t2) -> IO (Ptr (TQBrush ()))

instance QqBrush ((GlobalColor, BrushStyle)) where
 qBrush (x1, x2)
  = withQBrushResult $
    qtc_QBrush11 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QBrush11" qtc_QBrush11 :: CLong -> CLong -> IO (Ptr (TQBrush ()))

class QqBrush_nf x1 where
  qBrush_nf :: x1 -> IO (QBrush ())

instance QqBrush_nf (()) where
 qBrush_nf ()
  = withObjectRefResult $
    qtc_QBrush

instance QqBrush_nf ((BrushStyle)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    qtc_QBrush1 (toCLong $ qEnum_toInt x1)

instance QqBrush_nf ((GlobalColor)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    qtc_QBrush2 (toCLong $ qEnum_toInt x1)

instance QqBrush_nf ((QPixmap t1)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush3 cobj_x1

instance QqBrush_nf ((QImage t1)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush4 cobj_x1

instance QqBrush_nf ((QBrush t1)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush5 cobj_x1

instance QqBrush_nf ((QColor t1)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush6 cobj_x1

instance QqBrush_nf ((QGradient t1)) where
 qBrush_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush7 cobj_x1

instance QqBrush_nf ((QColor t1, QPixmap t2)) where
 qBrush_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBrush8 cobj_x1 cobj_x2

instance QqBrush_nf ((QColor t1, BrushStyle)) where
 qBrush_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush9 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QqBrush_nf ((GlobalColor, QPixmap t2)) where
 qBrush_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBrush10 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqBrush_nf ((GlobalColor, BrushStyle)) where
 qBrush_nf (x1, x2)
  = withObjectRefResult $
    qtc_QBrush11 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

instance Qcolor (QBrush a) (()) (IO (QColor ())) where
 color x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_color cobj_x0

foreign import ccall "qtc_QBrush_color" qtc_QBrush_color :: Ptr (TQBrush a) -> IO (Ptr (TQColor ()))

gradient :: QBrush a -> (()) -> IO (QGradient ())
gradient x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_gradient cobj_x0

foreign import ccall "qtc_QBrush_gradient" qtc_QBrush_gradient :: Ptr (TQBrush a) -> IO (Ptr (TQGradient ()))

instance QisDetached (QBrush a) (()) where
 isDetached x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_isDetached cobj_x0

foreign import ccall "qtc_QBrush_isDetached" qtc_QBrush_isDetached :: Ptr (TQBrush a) -> IO CBool

isOpaque :: QBrush a -> (()) -> IO (Bool)
isOpaque x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_isOpaque cobj_x0

foreign import ccall "qtc_QBrush_isOpaque" qtc_QBrush_isOpaque :: Ptr (TQBrush a) -> IO CBool

instance Qmatrix (QBrush a) (()) where
 matrix x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_matrix cobj_x0

foreign import ccall "qtc_QBrush_matrix" qtc_QBrush_matrix :: Ptr (TQBrush a) -> IO (Ptr (TQMatrix ()))

instance QsetColor (QBrush a) ((GlobalColor)) where
 setColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_setColor cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBrush_setColor" qtc_QBrush_setColor :: Ptr (TQBrush a) -> CLong -> IO ()

instance QsetColor (QBrush a) ((QColor t1)) where
 setColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush_setColor1 cobj_x0 cobj_x1

foreign import ccall "qtc_QBrush_setColor1" qtc_QBrush_setColor1 :: Ptr (TQBrush a) -> Ptr (TQColor t1) -> IO ()

instance QsetMatrix (QBrush a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QBrush_setMatrix" qtc_QBrush_setMatrix :: Ptr (TQBrush a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetStyle (QBrush a) ((BrushStyle)) where
 setStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_setStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBrush_setStyle" qtc_QBrush_setStyle :: Ptr (TQBrush a) -> CLong -> IO ()

setTexture :: QBrush a -> ((QPixmap t1)) -> IO ()
setTexture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush_setTexture cobj_x0 cobj_x1

foreign import ccall "qtc_QBrush_setTexture" qtc_QBrush_setTexture :: Ptr (TQBrush a) -> Ptr (TQPixmap t1) -> IO ()

setTextureImage :: QBrush a -> ((QImage t1)) -> IO ()
setTextureImage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush_setTextureImage cobj_x0 cobj_x1

foreign import ccall "qtc_QBrush_setTextureImage" qtc_QBrush_setTextureImage :: Ptr (TQBrush a) -> Ptr (TQImage t1) -> IO ()

instance QsetTransform (QBrush a) ((QTransform t1)) where
 setTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBrush_setTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QBrush_setTransform" qtc_QBrush_setTransform :: Ptr (TQBrush a) -> Ptr (TQTransform t1) -> IO ()

instance Qstyle (QBrush a) (()) (IO (BrushStyle)) where
 style x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_style cobj_x0

foreign import ccall "qtc_QBrush_style" qtc_QBrush_style :: Ptr (TQBrush a) -> IO CLong

instance Qtexture (QBrush ()) (()) (IO (QPixmap ())) where
 texture x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_texture cobj_x0

foreign import ccall "qtc_QBrush_texture" qtc_QBrush_texture :: Ptr (TQBrush a) -> IO (Ptr (TQPixmap ()))

instance Qtexture (QBrushSc a) (()) (IO (QPixmap ())) where
 texture x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_texture cobj_x0

instance Qtexture_nf (QBrush ()) (()) (IO (QPixmap ())) where
 texture_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_texture cobj_x0

instance Qtexture_nf (QBrushSc a) (()) (IO (QPixmap ())) where
 texture_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_texture cobj_x0

class QtextureImage x0 x1 where
 textureImage :: x0 -> x1 -> IO (QImage ())

class QtextureImage_nf x0 x1 where
 textureImage_nf :: x0 -> x1 -> IO (QImage ())

instance QtextureImage (QBrush ()) (()) where
 textureImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_textureImage cobj_x0

foreign import ccall "qtc_QBrush_textureImage" qtc_QBrush_textureImage :: Ptr (TQBrush a) -> IO (Ptr (TQImage ()))

instance QtextureImage (QBrushSc a) (()) where
 textureImage x0 ()
  = withQImageResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_textureImage cobj_x0

instance QtextureImage_nf (QBrush ()) (()) where
 textureImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_textureImage cobj_x0

instance QtextureImage_nf (QBrushSc a) (()) where
 textureImage_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_textureImage cobj_x0

instance Qtransform (QBrush a) (()) where
 transform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_transform cobj_x0

foreign import ccall "qtc_QBrush_transform" qtc_QBrush_transform :: Ptr (TQBrush a) -> IO (Ptr (TQTransform ()))

qBrush_delete :: QBrush a -> IO ()
qBrush_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBrush_delete cobj_x0

foreign import ccall "qtc_QBrush_delete" qtc_QBrush_delete :: Ptr (TQBrush a) -> IO ()

