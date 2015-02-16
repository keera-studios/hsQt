{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLine.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QLine (
  QqqLine(..), QqLine(..)
  ,QqqLine_nf(..), QqLine_nf(..)
  ,qLine_delete
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

class QqqLine x1 where
  qqLine :: x1 -> IO (QLine ())

class QqLine x1 where
  qLine :: x1 -> IO (QLine ())

instance QqLine (()) where
 qLine ()
  = withQLineResult $
    qtc_QLine

foreign import ccall "qtc_QLine" qtc_QLine :: IO (Ptr (TQLine ()))

instance QqqLine ((QLine t1)) where
 qqLine (x1)
  = withQLineResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLine1 cobj_x1

foreign import ccall "qtc_QLine1" qtc_QLine1 :: Ptr (TQLine t1) -> IO (Ptr (TQLine ()))

instance QqLine ((Line)) where
 qLine (x1)
  = withQLineResult $
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QLine2 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 

foreign import ccall "qtc_QLine2" qtc_QLine2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQLine ()))

instance QqqLine ((QPoint t1, QPoint t2)) where
 qqLine (x1, x2)
  = withQLineResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLine3 cobj_x1 cobj_x2

foreign import ccall "qtc_QLine3" qtc_QLine3 :: Ptr (TQPoint t1) -> Ptr (TQPoint t2) -> IO (Ptr (TQLine ()))

instance QqLine ((Point, Point)) where
 qLine (x1, x2)
  = withQLineResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QLine4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QLine4" qtc_QLine4 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQLine ()))

instance QqLine ((Int, Int, Int, Int)) where
 qLine (x1, x2, x3, x4)
  = withQLineResult $
    qtc_QLine5 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLine5" qtc_QLine5 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQLine ()))

class QqqLine_nf x1 where
  qqLine_nf :: x1 -> IO (QLine ())

class QqLine_nf x1 where
  qLine_nf :: x1 -> IO (QLine ())

instance QqLine_nf (()) where
 qLine_nf ()
  = withObjectRefResult $
    qtc_QLine

instance QqqLine_nf ((QLine t1)) where
 qqLine_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLine1 cobj_x1

instance QqLine_nf ((Line)) where
 qLine_nf (x1)
  = withObjectRefResult $
    withCLine x1 $ \cline_x1_x1 cline_x1_y1  cline_x1_x2 cline_x1_y2 -> 
    qtc_QLine2 cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 

instance QqqLine_nf ((QPoint t1, QPoint t2)) where
 qqLine_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLine3 cobj_x1 cobj_x2

instance QqLine_nf ((Point, Point)) where
 qLine_nf (x1, x2)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QLine4 cpoint_x1_x cpoint_x1_y  cpoint_x2_x cpoint_x2_y 

instance QqLine_nf ((Int, Int, Int, Int)) where
 qLine_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QLine5 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qqdx (QLine a) (()) (IO (Int)) where
 qdx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_dx cobj_x0

foreign import ccall "qtc_QLine_dx" qtc_QLine_dx :: Ptr (TQLine a) -> IO CInt

instance Qqdy (QLine a) (()) (IO (Int)) where
 qdy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_dy cobj_x0

foreign import ccall "qtc_QLine_dy" qtc_QLine_dy :: Ptr (TQLine a) -> IO CInt

instance QqisNull (QLine a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_isNull cobj_x0

foreign import ccall "qtc_QLine_isNull" qtc_QLine_isNull :: Ptr (TQLine a) -> IO CBool

instance Qqp1 (QLine a) (()) (IO (Point)) where
 qp1 x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_p1_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QLine_p1_qth" qtc_QLine_p1_qth :: Ptr (TQLine a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqp1 (QLine a) (()) (IO (QPoint ())) where
 qqp1 x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_p1 cobj_x0

foreign import ccall "qtc_QLine_p1" qtc_QLine_p1 :: Ptr (TQLine a) -> IO (Ptr (TQPoint ()))

instance Qqp2 (QLine a) (()) (IO (Point)) where
 qp2 x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_p2_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QLine_p2_qth" qtc_QLine_p2_qth :: Ptr (TQLine a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqp2 (QLine a) (()) (IO (QPoint ())) where
 qqp2 x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_p2 cobj_x0

foreign import ccall "qtc_QLine_p2" qtc_QLine_p2 :: Ptr (TQLine a) -> IO (Ptr (TQPoint ()))

instance Qqtranslate (QLine a) ((Int, Int)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_translate1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLine_translate1" qtc_QLine_translate1 :: Ptr (TQLine a) -> CInt -> CInt -> IO ()

instance Qqtranslate (QLine a) ((Point)) (IO ()) where
 qtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLine_translate_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QLine_translate_qth" qtc_QLine_translate_qth :: Ptr (TQLine a) -> CInt -> CInt -> IO ()

instance Qqqtranslate (QLine a) ((QPoint t1)) where
 qqtranslate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLine_translate cobj_x0 cobj_x1

foreign import ccall "qtc_QLine_translate" qtc_QLine_translate :: Ptr (TQLine a) -> Ptr (TQPoint t1) -> IO ()

instance Qqx1 (QLine a) (()) (IO (Int)) where
 qx1 x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_x1 cobj_x0

foreign import ccall "qtc_QLine_x1" qtc_QLine_x1 :: Ptr (TQLine a) -> IO CInt

instance Qqx2 (QLine a) (()) (IO (Int)) where
 qx2 x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_x2 cobj_x0

foreign import ccall "qtc_QLine_x2" qtc_QLine_x2 :: Ptr (TQLine a) -> IO CInt

instance Qqy1 (QLine a) (()) (IO (Int)) where
 qy1 x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_y1 cobj_x0

foreign import ccall "qtc_QLine_y1" qtc_QLine_y1 :: Ptr (TQLine a) -> IO CInt

instance Qqy2 (QLine a) (()) (IO (Int)) where
 qy2 x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_y2 cobj_x0

foreign import ccall "qtc_QLine_y2" qtc_QLine_y2 :: Ptr (TQLine a) -> IO CInt

qLine_delete :: QLine a -> IO ()
qLine_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLine_delete cobj_x0

foreign import ccall "qtc_QLine_delete" qtc_QLine_delete :: Ptr (TQLine a) -> IO ()

