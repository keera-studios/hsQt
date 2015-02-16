{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTabWidgetFrame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionTabWidgetFrame (
  QqStyleOptionTabWidgetFrame(..)
  ,QqStyleOptionTabWidgetFrame_nf(..)
  ,qleftCornerWidgetSize, leftCornerWidgetSize
  ,qrightCornerWidgetSize, rightCornerWidgetSize
  ,qsetLeftCornerWidgetSize, setLeftCornerWidgetSize
  ,qsetRightCornerWidgetSize, setRightCornerWidgetSize
  ,qsetTabBarSize, setTabBarSize
  ,qtabBarSize, tabBarSize
  ,qStyleOptionTabWidgetFrame_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTabBar

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionTabWidgetFrame x1 where
  qStyleOptionTabWidgetFrame :: x1 -> IO (QStyleOptionTabWidgetFrame ())

instance QqStyleOptionTabWidgetFrame (()) where
 qStyleOptionTabWidgetFrame ()
  = withQStyleOptionTabWidgetFrameResult $
    qtc_QStyleOptionTabWidgetFrame

foreign import ccall "qtc_QStyleOptionTabWidgetFrame" qtc_QStyleOptionTabWidgetFrame :: IO (Ptr (TQStyleOptionTabWidgetFrame ()))

instance QqStyleOptionTabWidgetFrame ((QStyleOptionTabWidgetFrame t1)) where
 qStyleOptionTabWidgetFrame (x1)
  = withQStyleOptionTabWidgetFrameResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabWidgetFrame1 cobj_x1

foreign import ccall "qtc_QStyleOptionTabWidgetFrame1" qtc_QStyleOptionTabWidgetFrame1 :: Ptr (TQStyleOptionTabWidgetFrame t1) -> IO (Ptr (TQStyleOptionTabWidgetFrame ()))

class QqStyleOptionTabWidgetFrame_nf x1 where
  qStyleOptionTabWidgetFrame_nf :: x1 -> IO (QStyleOptionTabWidgetFrame ())

instance QqStyleOptionTabWidgetFrame_nf (()) where
 qStyleOptionTabWidgetFrame_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionTabWidgetFrame

instance QqStyleOptionTabWidgetFrame_nf ((QStyleOptionTabWidgetFrame t1)) where
 qStyleOptionTabWidgetFrame_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabWidgetFrame1 cobj_x1

qleftCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (QSize ())
qleftCornerWidgetSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize" qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO (Ptr (TQSize ()))

leftCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (Size)
leftCornerWidgetSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize_qth" qtc_QStyleOptionTabWidgetFrame_leftCornerWidgetSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QlineWidth (QStyleOptionTabWidgetFrame a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_lineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_lineWidth" qtc_QStyleOptionTabWidgetFrame_lineWidth :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO CInt

instance QmidLineWidth (QStyleOptionTabWidgetFrame a) (()) where
 midLineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_midLineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_midLineWidth" qtc_QStyleOptionTabWidgetFrame_midLineWidth :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO CInt

qrightCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (QSize ())
qrightCornerWidgetSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize" qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO (Ptr (TQSize ()))

rightCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (Size)
rightCornerWidgetSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize_qth" qtc_QStyleOptionTabWidgetFrame_rightCornerWidgetSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

qsetLeftCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> ((QSize t1)) -> IO ()
qsetLeftCornerWidgetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize" qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr (TQSize t1) -> IO ()

setLeftCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> ((Size)) -> IO ()
setLeftCornerWidgetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize_qth" qtc_QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> CInt -> CInt -> IO ()

instance QsetLineWidth (QStyleOptionTabWidgetFrame a) ((Int)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_setLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setLineWidth" qtc_QStyleOptionTabWidgetFrame_setLineWidth :: Ptr (TQStyleOptionTabWidgetFrame a) -> CInt -> IO ()

instance QsetMidLineWidth (QStyleOptionTabWidgetFrame a) ((Int)) where
 setMidLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_setMidLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setMidLineWidth" qtc_QStyleOptionTabWidgetFrame_setMidLineWidth :: Ptr (TQStyleOptionTabWidgetFrame a) -> CInt -> IO ()

qsetRightCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> ((QSize t1)) -> IO ()
qsetRightCornerWidgetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize" qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr (TQSize t1) -> IO ()

setRightCornerWidgetSize :: QStyleOptionTabWidgetFrame a -> ((Size)) -> IO ()
setRightCornerWidgetSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize_qth" qtc_QStyleOptionTabWidgetFrame_setRightCornerWidgetSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> CInt -> CInt -> IO ()

instance QsetShape (QStyleOptionTabWidgetFrame a) ((QTabBarShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setShape" qtc_QStyleOptionTabWidgetFrame_setShape :: Ptr (TQStyleOptionTabWidgetFrame a) -> CLong -> IO ()

qsetTabBarSize :: QStyleOptionTabWidgetFrame a -> ((QSize t1)) -> IO ()
qsetTabBarSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabWidgetFrame_setTabBarSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setTabBarSize" qtc_QStyleOptionTabWidgetFrame_setTabBarSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr (TQSize t1) -> IO ()

setTabBarSize :: QStyleOptionTabWidgetFrame a -> ((Size)) -> IO ()
setTabBarSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionTabWidgetFrame_setTabBarSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_setTabBarSize_qth" qtc_QStyleOptionTabWidgetFrame_setTabBarSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> CInt -> CInt -> IO ()

instance Qshape (QStyleOptionTabWidgetFrame a) (()) (IO (QTabBarShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_shape cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_shape" qtc_QStyleOptionTabWidgetFrame_shape :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO CLong

qtabBarSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (QSize ())
qtabBarSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_tabBarSize cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_tabBarSize" qtc_QStyleOptionTabWidgetFrame_tabBarSize :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO (Ptr (TQSize ()))

tabBarSize :: QStyleOptionTabWidgetFrame a -> (()) -> IO (Size)
tabBarSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_tabBarSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_tabBarSize_qth" qtc_QStyleOptionTabWidgetFrame_tabBarSize_qth :: Ptr (TQStyleOptionTabWidgetFrame a) -> Ptr CInt -> Ptr CInt -> IO ()

qStyleOptionTabWidgetFrame_delete :: QStyleOptionTabWidgetFrame a -> IO ()
qStyleOptionTabWidgetFrame_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabWidgetFrame_delete cobj_x0

foreign import ccall "qtc_QStyleOptionTabWidgetFrame_delete" qtc_QStyleOptionTabWidgetFrame_delete :: Ptr (TQStyleOptionTabWidgetFrame a) -> IO ()

