{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QRegion.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QRegion (
  QqqRegion(..), QqRegion(..)
  ,QqqRegion_nf(..), QqRegion_nf(..)
  ,eor
  ,setRects
  ,qsubtract
  ,xored
  ,qRegion_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QRegion
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqRegion x1 where
  qqRegion :: x1 -> IO (QRegion ())

class QqRegion x1 where
  qRegion :: x1 -> IO (QRegion ())

instance QqRegion (()) where
 qRegion ()
  = withQRegionResult $
    qtc_QRegion

foreign import ccall "qtc_QRegion" qtc_QRegion :: IO (Ptr (TQRegion ()))

instance QqRegion ((QRegion t1)) where
 qRegion (x1)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion1 cobj_x1

foreign import ccall "qtc_QRegion1" qtc_QRegion1 :: Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance QqqRegion ((QRect t1)) where
 qqRegion (x1)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion2 cobj_x1

foreign import ccall "qtc_QRegion2" qtc_QRegion2 :: Ptr (TQRect t1) -> IO (Ptr (TQRegion ()))

instance QqRegion ((Rect)) where
 qRegion (x1)
  = withQRegionResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion3 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRegion3" qtc_QRegion3 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRegion ()))

instance QqRegion ((QPolygon t1)) where
 qRegion (x1)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion4 cobj_x1

foreign import ccall "qtc_QRegion4" qtc_QRegion4 :: Ptr (TQPolygon t1) -> IO (Ptr (TQRegion ()))

instance QqRegion ((QBitmap t1)) where
 qRegion (x1)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion5 cobj_x1

foreign import ccall "qtc_QRegion5" qtc_QRegion5 :: Ptr (TQBitmap t1) -> IO (Ptr (TQRegion ()))

instance QqRegion ((QPolygon t1, FillRule)) where
 qRegion (x1, x2)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion6 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QRegion6" qtc_QRegion6 :: Ptr (TQPolygon t1) -> CLong -> IO (Ptr (TQRegion ()))

instance QqqRegion ((QRect t1, RegionType)) where
 qqRegion (x1, x2)
  = withQRegionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion7 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QRegion7" qtc_QRegion7 :: Ptr (TQRect t1) -> CLong -> IO (Ptr (TQRegion ()))

instance QqRegion ((Rect, RegionType)) where
 qRegion (x1, x2)
  = withQRegionResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion8 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QRegion8" qtc_QRegion8 :: CInt -> CInt -> CInt -> CInt -> CLong -> IO (Ptr (TQRegion ()))

instance QqRegion ((Int, Int, Int, Int)) where
 qRegion (x1, x2, x3, x4)
  = withQRegionResult $
    qtc_QRegion9 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QRegion9" qtc_QRegion9 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQRegion ()))

instance QqRegion ((Int, Int, Int, Int, RegionType)) where
 qRegion (x1, x2, x3, x4, x5)
  = withQRegionResult $
    qtc_QRegion10 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QRegion10" qtc_QRegion10 :: CInt -> CInt -> CInt -> CInt -> CLong -> IO (Ptr (TQRegion ()))

class QqqRegion_nf x1 where
  qqRegion_nf :: x1 -> IO (QRegion ())

class QqRegion_nf x1 where
  qRegion_nf :: x1 -> IO (QRegion ())

instance QqRegion_nf (()) where
 qRegion_nf ()
  = withObjectRefResult $
    qtc_QRegion

instance QqRegion_nf ((QRegion t1)) where
 qRegion_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion1 cobj_x1

instance QqqRegion_nf ((QRect t1)) where
 qqRegion_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion2 cobj_x1

instance QqRegion_nf ((Rect)) where
 qRegion_nf (x1)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion3 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqRegion_nf ((QPolygon t1)) where
 qRegion_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion4 cobj_x1

instance QqRegion_nf ((QBitmap t1)) where
 qRegion_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion5 cobj_x1

instance QqRegion_nf ((QPolygon t1, FillRule)) where
 qRegion_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion6 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QqqRegion_nf ((QRect t1, RegionType)) where
 qqRegion_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion7 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QqRegion_nf ((Rect, RegionType)) where
 qRegion_nf (x1, x2)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion8 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qEnum_toInt x2)

instance QqRegion_nf ((Int, Int, Int, Int)) where
 qRegion_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QRegion9 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqRegion_nf ((Int, Int, Int, Int, RegionType)) where
 qRegion_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    qtc_QRegion10 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4) (toCLong $ qEnum_toInt x5)

instance QqqboundingRect (QRegion a) (()) (IO (QRect ())) where
 qqboundingRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_boundingRect cobj_x0

foreign import ccall "qtc_QRegion_boundingRect" qtc_QRegion_boundingRect :: Ptr (TQRegion a) -> IO (Ptr (TQRect ()))

instance QqboundingRect (QRegion a) (()) (IO (Rect)) where
 qboundingRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_boundingRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QRegion_boundingRect_qth" qtc_QRegion_boundingRect_qth :: Ptr (TQRegion a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqcontains (QRegion a) ((Point)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRegion_contains_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRegion_contains_qth" qtc_QRegion_contains_qth :: Ptr (TQRegion a) -> CInt -> CInt -> IO CBool

instance Qqqcontains (QRegion a) ((QPoint t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_contains cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_contains" qtc_QRegion_contains :: Ptr (TQRegion a) -> Ptr (TQPoint t1) -> IO CBool

instance Qqqcontains (QRegion a) ((QRect t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_contains1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_contains1" qtc_QRegion_contains1 :: Ptr (TQRegion a) -> Ptr (TQRect t1) -> IO CBool

instance Qqcontains (QRegion a) ((Rect)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion_contains1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRegion_contains1_qth" qtc_QRegion_contains1_qth :: Ptr (TQRegion a) -> CInt -> CInt -> CInt -> CInt -> IO CBool

eor :: QRegion a -> ((QRegion t1)) -> IO (QRegion ())
eor x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_eor cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_eor" qtc_QRegion_eor :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqintersect (QRegion a) ((QRegion t1)) (IO (QRegion ())) where
 qintersect x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_intersect cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_intersect" qtc_QRegion_intersect :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqintersected (QRegion a) ((QRegion t1)) (IO (QRegion ())) where
 qintersected x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_intersected cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_intersected" qtc_QRegion_intersected :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqqintersects (QRegion a) ((QRect t1)) where
 qqintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_intersects1 cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_intersects1" qtc_QRegion_intersects1 :: Ptr (TQRegion a) -> Ptr (TQRect t1) -> IO CBool

instance Qqintersects (QRegion a) ((QRegion t1)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_intersects cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_intersects" qtc_QRegion_intersects :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO CBool

instance Qqintersects (QRegion a) ((Rect)) where
 qintersects x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QRegion_intersects1_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QRegion_intersects1_qth" qtc_QRegion_intersects1_qth :: Ptr (TQRegion a) -> CInt -> CInt -> CInt -> CInt -> IO CBool

instance QqisEmpty (QRegion a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_isEmpty cobj_x0

foreign import ccall "qtc_QRegion_isEmpty" qtc_QRegion_isEmpty :: Ptr (TQRegion a) -> IO CBool

setRects :: QRegion a -> ((QRect t1, Int)) -> IO ()
setRects x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_setRects cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QRegion_setRects" qtc_QRegion_setRects :: Ptr (TQRegion a) -> Ptr (TQRect t1) -> CInt -> IO ()

qsubtract :: QRegion a -> ((QRegion t1)) -> IO (QRegion ())
qsubtract x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_subtract cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_subtract" qtc_QRegion_subtract :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqsubtracted (QRegion a) ((QRegion t1)) (IO (QRegion ())) where
 qsubtracted x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_subtracted cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_subtracted" qtc_QRegion_subtracted :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqtranslate (QRegion a) ((Int, Int)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_translate1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRegion_translate1" qtc_QRegion_translate1 :: Ptr (TQRegion a) -> CInt -> CInt -> IO ()

instance Qqtranslate (QRegion a) ((Point)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRegion_translate_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRegion_translate_qth" qtc_QRegion_translate_qth :: Ptr (TQRegion a) -> CInt -> CInt -> IO ()

instance Qqqtranslate (QRegion a) ((QPoint t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_translate" qtc_QRegion_translate :: Ptr (TQRegion a) -> Ptr (TQPoint t1) -> IO ()

instance Qqtranslated (QRegion a) ((Int, Int)) (IO (QRegion ())) where
 qtranslated x0 (x1, x2)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_translated1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QRegion_translated1" qtc_QRegion_translated1 :: Ptr (TQRegion a) -> CInt -> CInt -> IO (Ptr (TQRegion ()))

instance Qqtranslated (QRegion a) ((Point)) (IO (QRegion ())) where
 qtranslated x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QRegion_translated_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QRegion_translated_qth" qtc_QRegion_translated_qth :: Ptr (TQRegion a) -> CInt -> CInt -> IO (Ptr (TQRegion ()))

instance Qqqtranslated (QRegion a) ((QPoint t1)) (IO (QRegion ())) where
 qqtranslated x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_translated cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_translated" qtc_QRegion_translated :: Ptr (TQRegion a) -> Ptr (TQPoint t1) -> IO (Ptr (TQRegion ()))

instance Qqunite (QRegion a) ((QRegion t1)) (IO (QRegion ())) where
 qunite x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_unite cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_unite" qtc_QRegion_unite :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

instance Qqunited (QRegion a) ((QRegion t1)) (IO (QRegion ())) where
 qunited x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_united cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_united" qtc_QRegion_united :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

xored :: QRegion a -> ((QRegion t1)) -> IO (QRegion ())
xored x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QRegion_xored cobj_x0 cobj_x1

foreign import ccall "qtc_QRegion_xored" qtc_QRegion_xored :: Ptr (TQRegion a) -> Ptr (TQRegion t1) -> IO (Ptr (TQRegion ()))

qRegion_delete :: QRegion a -> IO ()
qRegion_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QRegion_delete cobj_x0

foreign import ccall "qtc_QRegion_delete" qtc_QRegion_delete :: Ptr (TQRegion a) -> IO ()

