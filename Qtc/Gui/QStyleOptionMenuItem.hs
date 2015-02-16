{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionMenuItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionMenuItem (
  QqStyleOptionMenuItem(..)
  ,QqStyleOptionMenuItem_nf(..)
  ,checkType
  ,checked
  ,maxIconWidth
  ,menuHasCheckableItems
  ,menuItemType
  ,qmenuRect, menuRect
  ,setCheckType
  ,setMaxIconWidth
  ,setMenuHasCheckableItems
  ,setMenuItemType
  ,qsetMenuRect, setMenuRect
  ,setTabWidth
  ,tabWidth
  ,qStyleOptionMenuItem_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionMenuItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionMenuItem x1 where
  qStyleOptionMenuItem :: x1 -> IO (QStyleOptionMenuItem ())

instance QqStyleOptionMenuItem (()) where
 qStyleOptionMenuItem ()
  = withQStyleOptionMenuItemResult $
    qtc_QStyleOptionMenuItem

foreign import ccall "qtc_QStyleOptionMenuItem" qtc_QStyleOptionMenuItem :: IO (Ptr (TQStyleOptionMenuItem ()))

instance QqStyleOptionMenuItem ((QStyleOptionMenuItem t1)) where
 qStyleOptionMenuItem (x1)
  = withQStyleOptionMenuItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionMenuItem1 cobj_x1

foreign import ccall "qtc_QStyleOptionMenuItem1" qtc_QStyleOptionMenuItem1 :: Ptr (TQStyleOptionMenuItem t1) -> IO (Ptr (TQStyleOptionMenuItem ()))

class QqStyleOptionMenuItem_nf x1 where
  qStyleOptionMenuItem_nf :: x1 -> IO (QStyleOptionMenuItem ())

instance QqStyleOptionMenuItem_nf (()) where
 qStyleOptionMenuItem_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionMenuItem

instance QqStyleOptionMenuItem_nf ((QStyleOptionMenuItem t1)) where
 qStyleOptionMenuItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionMenuItem1 cobj_x1

checkType :: QStyleOptionMenuItem a -> (()) -> IO (Int)
checkType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_checkType cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_checkType" qtc_QStyleOptionMenuItem_checkType :: Ptr (TQStyleOptionMenuItem a) -> IO CInt

checked :: QStyleOptionMenuItem a -> (()) -> IO (Bool)
checked x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_checked cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_checked" qtc_QStyleOptionMenuItem_checked :: Ptr (TQStyleOptionMenuItem a) -> IO CBool

instance Qfont (QStyleOptionMenuItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_font cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_font" qtc_QStyleOptionMenuItem_font :: Ptr (TQStyleOptionMenuItem a) -> IO (Ptr (TQFont ()))

instance Qicon (QStyleOptionMenuItem a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_icon cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_icon" qtc_QStyleOptionMenuItem_icon :: Ptr (TQStyleOptionMenuItem a) -> IO (Ptr (TQIcon ()))

maxIconWidth :: QStyleOptionMenuItem a -> (()) -> IO (Int)
maxIconWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_maxIconWidth cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_maxIconWidth" qtc_QStyleOptionMenuItem_maxIconWidth :: Ptr (TQStyleOptionMenuItem a) -> IO CInt

menuHasCheckableItems :: QStyleOptionMenuItem a -> (()) -> IO (Bool)
menuHasCheckableItems x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_menuHasCheckableItems cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_menuHasCheckableItems" qtc_QStyleOptionMenuItem_menuHasCheckableItems :: Ptr (TQStyleOptionMenuItem a) -> IO CBool

menuItemType :: QStyleOptionMenuItem a -> (()) -> IO (Int)
menuItemType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_menuItemType cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_menuItemType" qtc_QStyleOptionMenuItem_menuItemType :: Ptr (TQStyleOptionMenuItem a) -> IO CInt

qmenuRect :: QStyleOptionMenuItem a -> (()) -> IO (QRect ())
qmenuRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_menuRect cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_menuRect" qtc_QStyleOptionMenuItem_menuRect :: Ptr (TQStyleOptionMenuItem a) -> IO (Ptr (TQRect ()))

menuRect :: QStyleOptionMenuItem a -> (()) -> IO (Rect)
menuRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_menuRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyleOptionMenuItem_menuRect_qth" qtc_QStyleOptionMenuItem_menuRect_qth :: Ptr (TQStyleOptionMenuItem a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

setCheckType :: QStyleOptionMenuItem a -> ((CheckType)) -> IO ()
setCheckType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setCheckType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setCheckType" qtc_QStyleOptionMenuItem_setCheckType :: Ptr (TQStyleOptionMenuItem a) -> CLong -> IO ()

instance QsetChecked (QStyleOptionMenuItem a) ((Bool)) where
 setChecked x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setChecked cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setChecked" qtc_QStyleOptionMenuItem_setChecked :: Ptr (TQStyleOptionMenuItem a) -> CBool -> IO ()

instance QsetFont (QStyleOptionMenuItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionMenuItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionMenuItem_setFont" qtc_QStyleOptionMenuItem_setFont :: Ptr (TQStyleOptionMenuItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetIcon (QStyleOptionMenuItem a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionMenuItem_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionMenuItem_setIcon" qtc_QStyleOptionMenuItem_setIcon :: Ptr (TQStyleOptionMenuItem a) -> Ptr (TQIcon t1) -> IO ()

setMaxIconWidth :: QStyleOptionMenuItem a -> ((Int)) -> IO ()
setMaxIconWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setMaxIconWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setMaxIconWidth" qtc_QStyleOptionMenuItem_setMaxIconWidth :: Ptr (TQStyleOptionMenuItem a) -> CInt -> IO ()

setMenuHasCheckableItems :: QStyleOptionMenuItem a -> ((Bool)) -> IO ()
setMenuHasCheckableItems x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setMenuHasCheckableItems cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setMenuHasCheckableItems" qtc_QStyleOptionMenuItem_setMenuHasCheckableItems :: Ptr (TQStyleOptionMenuItem a) -> CBool -> IO ()

setMenuItemType :: QStyleOptionMenuItem a -> ((MenuItemType)) -> IO ()
setMenuItemType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setMenuItemType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setMenuItemType" qtc_QStyleOptionMenuItem_setMenuItemType :: Ptr (TQStyleOptionMenuItem a) -> CLong -> IO ()

qsetMenuRect :: QStyleOptionMenuItem a -> ((QRect t1)) -> IO ()
qsetMenuRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionMenuItem_setMenuRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionMenuItem_setMenuRect" qtc_QStyleOptionMenuItem_setMenuRect :: Ptr (TQStyleOptionMenuItem a) -> Ptr (TQRect t1) -> IO ()

setMenuRect :: QStyleOptionMenuItem a -> ((Rect)) -> IO ()
setMenuRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStyleOptionMenuItem_setMenuRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStyleOptionMenuItem_setMenuRect_qth" qtc_QStyleOptionMenuItem_setMenuRect_qth :: Ptr (TQStyleOptionMenuItem a) -> CInt -> CInt -> CInt -> CInt -> IO ()

setTabWidth :: QStyleOptionMenuItem a -> ((Int)) -> IO ()
setTabWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_setTabWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionMenuItem_setTabWidth" qtc_QStyleOptionMenuItem_setTabWidth :: Ptr (TQStyleOptionMenuItem a) -> CInt -> IO ()

instance QsetText (QStyleOptionMenuItem a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionMenuItem_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionMenuItem_setText" qtc_QStyleOptionMenuItem_setText :: Ptr (TQStyleOptionMenuItem a) -> CWString -> IO ()

tabWidth :: QStyleOptionMenuItem a -> (()) -> IO (Int)
tabWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_tabWidth cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_tabWidth" qtc_QStyleOptionMenuItem_tabWidth :: Ptr (TQStyleOptionMenuItem a) -> IO CInt

instance Qtext (QStyleOptionMenuItem a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_text cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_text" qtc_QStyleOptionMenuItem_text :: Ptr (TQStyleOptionMenuItem a) -> IO (Ptr (TQString ()))

qStyleOptionMenuItem_delete :: QStyleOptionMenuItem a -> IO ()
qStyleOptionMenuItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionMenuItem_delete cobj_x0

foreign import ccall "qtc_QStyleOptionMenuItem_delete" qtc_QStyleOptionMenuItem_delete :: Ptr (TQStyleOptionMenuItem a) -> IO ()

