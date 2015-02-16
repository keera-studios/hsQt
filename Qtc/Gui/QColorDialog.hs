{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QColorDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QColorDialog (
  qColorDialogCustomColor
  ,qColorDialogCustomCount
  ,QqColorDialogGetColor(..)
  ,QqColorDialogGetRgba(..)
  ,qColorDialogSetCustomColor
  ,qColorDialogSetStandardColor
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

qColorDialogCustomColor :: ((Int)) -> IO (Int)
qColorDialogCustomColor (x1)
  = withUnsignedIntResult $
    qtc_QColorDialog_customColor (toCInt x1)

foreign import ccall "qtc_QColorDialog_customColor" qtc_QColorDialog_customColor :: CInt -> IO CUInt

qColorDialogCustomCount :: (()) -> IO (Int)
qColorDialogCustomCount ()
  = withIntResult $
    qtc_QColorDialog_customCount

foreign import ccall "qtc_QColorDialog_customCount" qtc_QColorDialog_customCount :: IO CInt

class QqColorDialogGetColor x1 where
 qColorDialogGetColor :: x1 -> IO (QColor ())

instance QqColorDialogGetColor (()) where
 qColorDialogGetColor ()
  = withQColorResult $
    qtc_QColorDialog_getColor

foreign import ccall "qtc_QColorDialog_getColor" qtc_QColorDialog_getColor :: IO (Ptr (TQColor ()))

instance QqColorDialogGetColor ((QColor t1)) where
 qColorDialogGetColor (x1)
  = withQColorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_getColor1 cobj_x1

foreign import ccall "qtc_QColorDialog_getColor1" qtc_QColorDialog_getColor1 :: Ptr (TQColor t1) -> IO (Ptr (TQColor ()))

instance QqColorDialogGetColor ((QColor t1, QWidget t2)) where
 qColorDialogGetColor (x1, x2)
  = withQColorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QColorDialog_getColor2 cobj_x1 cobj_x2

foreign import ccall "qtc_QColorDialog_getColor2" qtc_QColorDialog_getColor2 :: Ptr (TQColor t1) -> Ptr (TQWidget t2) -> IO (Ptr (TQColor ()))

class QqColorDialogGetRgba x1 where
 qColorDialogGetRgba :: x1 -> IO (Int)

instance QqColorDialogGetRgba (()) where
 qColorDialogGetRgba ()
  = withUnsignedIntResult $
    qtc_QColorDialog_getRgba

foreign import ccall "qtc_QColorDialog_getRgba" qtc_QColorDialog_getRgba :: IO CUInt

instance QqColorDialogGetRgba ((Int)) where
 qColorDialogGetRgba (x1)
  = withUnsignedIntResult $
    qtc_QColorDialog_getRgba1 (toCUInt x1)

foreign import ccall "qtc_QColorDialog_getRgba1" qtc_QColorDialog_getRgba1 :: CUInt -> IO CUInt

qColorDialogSetCustomColor :: ((Int, Int)) -> IO ()
qColorDialogSetCustomColor (x1, x2)
  = qtc_QColorDialog_setCustomColor (toCInt x1) (toCUInt x2)

foreign import ccall "qtc_QColorDialog_setCustomColor" qtc_QColorDialog_setCustomColor :: CInt -> CUInt -> IO ()

qColorDialogSetStandardColor :: ((Int, Int)) -> IO ()
qColorDialogSetStandardColor (x1, x2)
  = qtc_QColorDialog_setStandardColor (toCInt x1) (toCUInt x2)

foreign import ccall "qtc_QColorDialog_setStandardColor" qtc_QColorDialog_setStandardColor :: CInt -> CUInt -> IO ()

instance QaddAction (QColorDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QColorDialog_addAction" qtc_QColorDialog_addAction :: Ptr (TQColorDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QColorDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_addAction cobj_x0 cobj_x1

instance Qmove (QColorDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QColorDialog_move1" qtc_QColorDialog_move1 :: Ptr (TQColorDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QColorDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QColorDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QColorDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QColorDialog_move_qth" qtc_QColorDialog_move_qth :: Ptr (TQColorDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QColorDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QColorDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QColorDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QColorDialog_move" qtc_QColorDialog_move :: Ptr (TQColorDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QColorDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_move cobj_x0 cobj_x1

instance Qrepaint (QColorDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_repaint cobj_x0

foreign import ccall "qtc_QColorDialog_repaint" qtc_QColorDialog_repaint :: Ptr (TQColorDialog a) -> IO ()

instance Qrepaint (QColorDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_repaint cobj_x0

instance Qrepaint (QColorDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColorDialog_repaint2" qtc_QColorDialog_repaint2 :: Ptr (TQColorDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QColorDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QColorDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QColorDialog_repaint1" qtc_QColorDialog_repaint1 :: Ptr (TQColorDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QColorDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_repaint1 cobj_x0 cobj_x1

instance Qresize (QColorDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QColorDialog_resize1" qtc_QColorDialog_resize1 :: Ptr (TQColorDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QColorDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QColorDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QColorDialog_resize" qtc_QColorDialog_resize :: Ptr (TQColorDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QColorDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_resize cobj_x0 cobj_x1

instance Qresize (QColorDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QColorDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QColorDialog_resize_qth" qtc_QColorDialog_resize_qth :: Ptr (TQColorDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QColorDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QColorDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QColorDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QColorDialog_setGeometry1" qtc_QColorDialog_setGeometry1 :: Ptr (TQColorDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QColorDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QColorDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QColorDialog_setGeometry" qtc_QColorDialog_setGeometry :: Ptr (TQColorDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QColorDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QColorDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QColorDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QColorDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QColorDialog_setGeometry_qth" qtc_QColorDialog_setGeometry_qth :: Ptr (TQColorDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QColorDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QColorDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QColorDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QColorDialog_setMouseTracking" qtc_QColorDialog_setMouseTracking :: Ptr (TQColorDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QColorDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QColorDialog_setMouseTracking cobj_x0 (toCBool x1)

