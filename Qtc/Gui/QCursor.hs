{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QCursor.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QCursor (
  QqCursor(..)
  ,QqCursor_nf(..)
  ,bitmap
  ,qCursorPos, qqCursorPos
  ,QqCursorSetPos(..), qqCursorSetPos
  ,qCursor_delete
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

class QqCursor x1 where
  qCursor :: x1 -> IO (QCursor ())

instance QqCursor (()) where
 qCursor ()
  = withQCursorResult $
    qtc_QCursor

foreign import ccall "qtc_QCursor" qtc_QCursor :: IO (Ptr (TQCursor ()))

instance QqCursor ((QPixmap t1)) where
 qCursor (x1)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor1 cobj_x1

foreign import ccall "qtc_QCursor1" qtc_QCursor1 :: Ptr (TQPixmap t1) -> IO (Ptr (TQCursor ()))

instance QqCursor ((QCursor t1)) where
 qCursor (x1)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor2 cobj_x1

foreign import ccall "qtc_QCursor2" qtc_QCursor2 :: Ptr (TQCursor t1) -> IO (Ptr (TQCursor ()))

instance QqCursor ((CursorShape)) where
 qCursor (x1)
  = withQCursorResult $
    qtc_QCursor3 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCursor3" qtc_QCursor3 :: CLong -> IO (Ptr (TQCursor ()))

instance QqCursor ((QBitmap t1, QBitmap t2)) where
 qCursor (x1, x2)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor4 cobj_x1 cobj_x2

foreign import ccall "qtc_QCursor4" qtc_QCursor4 :: Ptr (TQBitmap t1) -> Ptr (TQBitmap t2) -> IO (Ptr (TQCursor ()))

instance QqCursor ((QPixmap t1, Int)) where
 qCursor (x1, x2)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor5 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QCursor5" qtc_QCursor5 :: Ptr (TQPixmap t1) -> CInt -> IO (Ptr (TQCursor ()))

instance QqCursor ((QBitmap t1, QBitmap t2, Int)) where
 qCursor (x1, x2, x3)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor6 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QCursor6" qtc_QCursor6 :: Ptr (TQBitmap t1) -> Ptr (TQBitmap t2) -> CInt -> IO (Ptr (TQCursor ()))

instance QqCursor ((QPixmap t1, Int, Int)) where
 qCursor (x1, x2, x3)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor7 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QCursor7" qtc_QCursor7 :: Ptr (TQPixmap t1) -> CInt -> CInt -> IO (Ptr (TQCursor ()))

instance QqCursor ((QBitmap t1, QBitmap t2, Int, Int)) where
 qCursor (x1, x2, x3, x4)
  = withQCursorResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor8 cobj_x1 cobj_x2 (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QCursor8" qtc_QCursor8 :: Ptr (TQBitmap t1) -> Ptr (TQBitmap t2) -> CInt -> CInt -> IO (Ptr (TQCursor ()))

class QqCursor_nf x1 where
  qCursor_nf :: x1 -> IO (QCursor ())

instance QqCursor_nf (()) where
 qCursor_nf ()
  = withObjectRefResult $
    qtc_QCursor

instance QqCursor_nf ((QPixmap t1)) where
 qCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor1 cobj_x1

instance QqCursor_nf ((QCursor t1)) where
 qCursor_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor2 cobj_x1

instance QqCursor_nf ((CursorShape)) where
 qCursor_nf (x1)
  = withObjectRefResult $
    qtc_QCursor3 (toCLong $ qEnum_toInt x1)

instance QqCursor_nf ((QBitmap t1, QBitmap t2)) where
 qCursor_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor4 cobj_x1 cobj_x2

instance QqCursor_nf ((QPixmap t1, Int)) where
 qCursor_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor5 cobj_x1 (toCInt x2)

instance QqCursor_nf ((QBitmap t1, QBitmap t2, Int)) where
 qCursor_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor6 cobj_x1 cobj_x2 (toCInt x3)

instance QqCursor_nf ((QPixmap t1, Int, Int)) where
 qCursor_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor7 cobj_x1 (toCInt x2) (toCInt x3)

instance QqCursor_nf ((QBitmap t1, QBitmap t2, Int, Int)) where
 qCursor_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QCursor8 cobj_x1 cobj_x2 (toCInt x3) (toCInt x4)

bitmap :: QCursor a -> (()) -> IO (QBitmap ())
bitmap x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_bitmap cobj_x0

foreign import ccall "qtc_QCursor_bitmap" qtc_QCursor_bitmap :: Ptr (TQCursor a) -> IO (Ptr (TQBitmap ()))

instance QhotSpot (QCursor a) (()) where
 hotSpot x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_hotSpot_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QCursor_hotSpot_qth" qtc_QCursor_hotSpot_qth :: Ptr (TQCursor a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqhotSpot (QCursor a) (()) where
 qhotSpot x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_hotSpot cobj_x0

foreign import ccall "qtc_QCursor_hotSpot" qtc_QCursor_hotSpot :: Ptr (TQCursor a) -> IO (Ptr (TQPoint ()))

instance Qmask (QCursor a) (()) (IO (QBitmap ())) where
 mask x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_mask cobj_x0

foreign import ccall "qtc_QCursor_mask" qtc_QCursor_mask :: Ptr (TQCursor a) -> IO (Ptr (TQBitmap ()))

instance Qmask_nf (QCursor a) (()) (IO (QBitmap ())) where
 mask_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_mask cobj_x0

instance Qpixmap (QCursor ()) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_pixmap cobj_x0

foreign import ccall "qtc_QCursor_pixmap" qtc_QCursor_pixmap :: Ptr (TQCursor a) -> IO (Ptr (TQPixmap ()))

instance Qpixmap (QCursorSc a) (()) where
 pixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_pixmap cobj_x0

instance Qpixmap_nf (QCursor ()) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_pixmap cobj_x0

instance Qpixmap_nf (QCursorSc a) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_pixmap cobj_x0

qCursorPos :: (()) -> IO (Point)
qCursorPos ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    qtc_QCursor_pos_qth cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QCursor_pos_qth" qtc_QCursor_pos_qth :: Ptr CInt -> Ptr CInt -> IO ()

qqCursorPos :: (()) -> IO (QPoint ())
qqCursorPos ()
  = withQPointResult $
    qtc_QCursor_pos

foreign import ccall "qtc_QCursor_pos" qtc_QCursor_pos :: IO (Ptr (TQPoint ()))

class QqCursorSetPos x1 where
 qCursorSetPos :: x1 -> IO ()

instance QqCursorSetPos ((Int, Int)) where
 qCursorSetPos (x1, x2)
  = qtc_QCursor_setPos1 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QCursor_setPos1" qtc_QCursor_setPos1 :: CInt -> CInt -> IO ()

instance QqCursorSetPos ((Point)) where
 qCursorSetPos (x1)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    qtc_QCursor_setPos_qth cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QCursor_setPos_qth" qtc_QCursor_setPos_qth :: CInt -> CInt -> IO ()

qqCursorSetPos :: ((QPoint t1)) -> IO ()
qqCursorSetPos (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QCursor_setPos cobj_x1

foreign import ccall "qtc_QCursor_setPos" qtc_QCursor_setPos :: Ptr (TQPoint t1) -> IO ()

instance QsetShape (QCursor a) ((CursorShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QCursor_setShape" qtc_QCursor_setShape :: Ptr (TQCursor a) -> CLong -> IO ()

instance Qshape (QCursor a) (()) (IO (CursorShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_shape cobj_x0

foreign import ccall "qtc_QCursor_shape" qtc_QCursor_shape :: Ptr (TQCursor a) -> IO CLong

qCursor_delete :: QCursor a -> IO ()
qCursor_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QCursor_delete cobj_x0

foreign import ccall "qtc_QCursor_delete" qtc_QCursor_delete :: Ptr (TQCursor a) -> IO ()

