{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTabBarBase.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionTabBarBase (
  QqStyleOptionTabBarBase(..)
  ,QqStyleOptionTabBarBase_nf(..)
  ,qselectedTabRect, selectedTabRect
  ,qsetSelectedTabRect, setSelectedTabRect
  ,qsetTabBarRect, setTabBarRect
  ,qtabBarRect, tabBarRect
  ,qStyleOptionTabBarBase_delete
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

class QqStyleOptionTabBarBase x1 where
  qStyleOptionTabBarBase :: x1 -> IO (QStyleOptionTabBarBase ())

instance QqStyleOptionTabBarBase (()) where
 qStyleOptionTabBarBase ()
  = withQStyleOptionTabBarBaseResult $
    qtc_QStyleOptionTabBarBase

foreign import ccall "qtc_QStyleOptionTabBarBase" qtc_QStyleOptionTabBarBase :: IO (Ptr (TQStyleOptionTabBarBase ()))

instance QqStyleOptionTabBarBase ((QStyleOptionTabBarBase t1)) where
 qStyleOptionTabBarBase (x1)
  = withQStyleOptionTabBarBaseResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabBarBase1 cobj_x1

foreign import ccall "qtc_QStyleOptionTabBarBase1" qtc_QStyleOptionTabBarBase1 :: Ptr (TQStyleOptionTabBarBase t1) -> IO (Ptr (TQStyleOptionTabBarBase ()))

class QqStyleOptionTabBarBase_nf x1 where
  qStyleOptionTabBarBase_nf :: x1 -> IO (QStyleOptionTabBarBase ())

instance QqStyleOptionTabBarBase_nf (()) where
 qStyleOptionTabBarBase_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionTabBarBase

instance QqStyleOptionTabBarBase_nf ((QStyleOptionTabBarBase t1)) where
 qStyleOptionTabBarBase_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabBarBase1 cobj_x1

qselectedTabRect :: QStyleOptionTabBarBase a -> (()) -> IO (QRect ())
qselectedTabRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_selectedTabRect cobj_x0

foreign import ccall "qtc_QStyleOptionTabBarBase_selectedTabRect" qtc_QStyleOptionTabBarBase_selectedTabRect :: Ptr (TQStyleOptionTabBarBase a) -> IO (Ptr (TQRect ()))

selectedTabRect :: QStyleOptionTabBarBase a -> (()) -> IO (Rect)
selectedTabRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_selectedTabRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyleOptionTabBarBase_selectedTabRect_qth" qtc_QStyleOptionTabBarBase_selectedTabRect_qth :: Ptr (TQStyleOptionTabBarBase a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qsetSelectedTabRect :: QStyleOptionTabBarBase a -> ((QRect t1)) -> IO ()
qsetSelectedTabRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabBarBase_setSelectedTabRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTabBarBase_setSelectedTabRect" qtc_QStyleOptionTabBarBase_setSelectedTabRect :: Ptr (TQStyleOptionTabBarBase a) -> Ptr (TQRect t1) -> IO ()

setSelectedTabRect :: QStyleOptionTabBarBase a -> ((Rect)) -> IO ()
setSelectedTabRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStyleOptionTabBarBase_setSelectedTabRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStyleOptionTabBarBase_setSelectedTabRect_qth" qtc_QStyleOptionTabBarBase_setSelectedTabRect_qth :: Ptr (TQStyleOptionTabBarBase a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetShape (QStyleOptionTabBarBase a) ((QTabBarShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionTabBarBase_setShape" qtc_QStyleOptionTabBarBase_setShape :: Ptr (TQStyleOptionTabBarBase a) -> CLong -> IO ()

qsetTabBarRect :: QStyleOptionTabBarBase a -> ((QRect t1)) -> IO ()
qsetTabBarRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTabBarBase_setTabBarRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTabBarBase_setTabBarRect" qtc_QStyleOptionTabBarBase_setTabBarRect :: Ptr (TQStyleOptionTabBarBase a) -> Ptr (TQRect t1) -> IO ()

setTabBarRect :: QStyleOptionTabBarBase a -> ((Rect)) -> IO ()
setTabBarRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStyleOptionTabBarBase_setTabBarRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStyleOptionTabBarBase_setTabBarRect_qth" qtc_QStyleOptionTabBarBase_setTabBarRect_qth :: Ptr (TQStyleOptionTabBarBase a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qshape (QStyleOptionTabBarBase a) (()) (IO (QTabBarShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_shape cobj_x0

foreign import ccall "qtc_QStyleOptionTabBarBase_shape" qtc_QStyleOptionTabBarBase_shape :: Ptr (TQStyleOptionTabBarBase a) -> IO CLong

qtabBarRect :: QStyleOptionTabBarBase a -> (()) -> IO (QRect ())
qtabBarRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_tabBarRect cobj_x0

foreign import ccall "qtc_QStyleOptionTabBarBase_tabBarRect" qtc_QStyleOptionTabBarBase_tabBarRect :: Ptr (TQStyleOptionTabBarBase a) -> IO (Ptr (TQRect ()))

tabBarRect :: QStyleOptionTabBarBase a -> (()) -> IO (Rect)
tabBarRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_tabBarRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyleOptionTabBarBase_tabBarRect_qth" qtc_QStyleOptionTabBarBase_tabBarRect_qth :: Ptr (TQStyleOptionTabBarBase a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qStyleOptionTabBarBase_delete :: QStyleOptionTabBarBase a -> IO ()
qStyleOptionTabBarBase_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTabBarBase_delete cobj_x0

foreign import ccall "qtc_QStyleOptionTabBarBase_delete" qtc_QStyleOptionTabBarBase_delete :: Ptr (TQStyleOptionTabBarBase a) -> IO ()

