{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontDialog.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontDialog (
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

instance QaddAction (QFontDialog ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDialog_addAction" qtc_QFontDialog_addAction :: Ptr (TQFontDialog a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QFontDialogSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_addAction cobj_x0 cobj_x1

instance Qmove (QFontDialog ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFontDialog_move1" qtc_QFontDialog_move1 :: Ptr (TQFontDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QFontDialogSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QFontDialog ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFontDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QFontDialog_move_qth" qtc_QFontDialog_move_qth :: Ptr (TQFontDialog a) -> CInt -> CInt -> IO ()

instance Qmove (QFontDialogSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QFontDialog_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QFontDialog ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_move cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDialog_move" qtc_QFontDialog_move :: Ptr (TQFontDialog a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QFontDialogSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_move cobj_x0 cobj_x1

instance Qrepaint (QFontDialog ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_repaint cobj_x0

foreign import ccall "qtc_QFontDialog_repaint" qtc_QFontDialog_repaint :: Ptr (TQFontDialog a) -> IO ()

instance Qrepaint (QFontDialogSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_repaint cobj_x0

instance Qrepaint (QFontDialog ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFontDialog_repaint2" qtc_QFontDialog_repaint2 :: Ptr (TQFontDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QFontDialogSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QFontDialog ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDialog_repaint1" qtc_QFontDialog_repaint1 :: Ptr (TQFontDialog a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QFontDialogSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_repaint1 cobj_x0 cobj_x1

instance Qresize (QFontDialog ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QFontDialog_resize1" qtc_QFontDialog_resize1 :: Ptr (TQFontDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QFontDialogSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QFontDialog ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDialog_resize" qtc_QFontDialog_resize :: Ptr (TQFontDialog a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QFontDialogSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_resize cobj_x0 cobj_x1

instance Qresize (QFontDialog ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFontDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QFontDialog_resize_qth" qtc_QFontDialog_resize_qth :: Ptr (TQFontDialog a) -> CInt -> CInt -> IO ()

instance Qresize (QFontDialogSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QFontDialog_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QFontDialog ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QFontDialog_setGeometry1" qtc_QFontDialog_setGeometry1 :: Ptr (TQFontDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFontDialogSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QFontDialog ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QFontDialog_setGeometry" qtc_QFontDialog_setGeometry :: Ptr (TQFontDialog a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QFontDialogSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontDialog_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QFontDialog ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFontDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QFontDialog_setGeometry_qth" qtc_QFontDialog_setGeometry_qth :: Ptr (TQFontDialog a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QFontDialogSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QFontDialog_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QFontDialog ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QFontDialog_setMouseTracking" qtc_QFontDialog_setMouseTracking :: Ptr (TQFontDialog a) -> CBool -> IO ()

instance QsetMouseTracking (QFontDialogSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontDialog_setMouseTracking cobj_x0 (toCBool x1)

