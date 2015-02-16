{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionViewItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionViewItem (
  QqStyleOptionViewItem(..)
  ,QqStyleOptionViewItem_nf(..)
  ,decorationAlignment
  ,decorationPosition
  ,qdecorationSize, decorationSize
  ,displayAlignment
  ,setDecorationAlignment
  ,setDecorationPosition
  ,qsetDecorationSize, setDecorationSize
  ,setDisplayAlignment
  ,setShowDecorationSelected
  ,showDecorationSelected
  ,qStyleOptionViewItem_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyleOptionViewItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionViewItem x1 where
  qStyleOptionViewItem :: x1 -> IO (QStyleOptionViewItem ())

instance QqStyleOptionViewItem (()) where
 qStyleOptionViewItem ()
  = withQStyleOptionViewItemResult $
    qtc_QStyleOptionViewItem

foreign import ccall "qtc_QStyleOptionViewItem" qtc_QStyleOptionViewItem :: IO (Ptr (TQStyleOptionViewItem ()))

instance QqStyleOptionViewItem ((QStyleOptionViewItem t1)) where
 qStyleOptionViewItem (x1)
  = withQStyleOptionViewItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItem1 cobj_x1

foreign import ccall "qtc_QStyleOptionViewItem1" qtc_QStyleOptionViewItem1 :: Ptr (TQStyleOptionViewItem t1) -> IO (Ptr (TQStyleOptionViewItem ()))

class QqStyleOptionViewItem_nf x1 where
  qStyleOptionViewItem_nf :: x1 -> IO (QStyleOptionViewItem ())

instance QqStyleOptionViewItem_nf (()) where
 qStyleOptionViewItem_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionViewItem

instance QqStyleOptionViewItem_nf ((QStyleOptionViewItem t1)) where
 qStyleOptionViewItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItem1 cobj_x1

decorationAlignment :: QStyleOptionViewItem a -> (()) -> IO (Alignment)
decorationAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_decorationAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_decorationAlignment" qtc_QStyleOptionViewItem_decorationAlignment :: Ptr (TQStyleOptionViewItem a) -> IO CLong

decorationPosition :: QStyleOptionViewItem a -> (()) -> IO (QVoid ())
decorationPosition x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_decorationPosition cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_decorationPosition" qtc_QStyleOptionViewItem_decorationPosition :: Ptr (TQStyleOptionViewItem a) -> IO (Ptr (TQVoid ()))

qdecorationSize :: QStyleOptionViewItem a -> (()) -> IO (QSize ())
qdecorationSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_decorationSize cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_decorationSize" qtc_QStyleOptionViewItem_decorationSize :: Ptr (TQStyleOptionViewItem a) -> IO (Ptr (TQSize ()))

decorationSize :: QStyleOptionViewItem a -> (()) -> IO (Size)
decorationSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_decorationSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionViewItem_decorationSize_qth" qtc_QStyleOptionViewItem_decorationSize_qth :: Ptr (TQStyleOptionViewItem a) -> Ptr CInt -> Ptr CInt -> IO ()

displayAlignment :: QStyleOptionViewItem a -> (()) -> IO (Alignment)
displayAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_displayAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_displayAlignment" qtc_QStyleOptionViewItem_displayAlignment :: Ptr (TQStyleOptionViewItem a) -> IO CLong

instance Qfont (QStyleOptionViewItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_font cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_font" qtc_QStyleOptionViewItem_font :: Ptr (TQStyleOptionViewItem a) -> IO (Ptr (TQFont ()))

setDecorationAlignment :: QStyleOptionViewItem a -> ((Alignment)) -> IO ()
setDecorationAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_setDecorationAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionViewItem_setDecorationAlignment" qtc_QStyleOptionViewItem_setDecorationAlignment :: Ptr (TQStyleOptionViewItem a) -> CLong -> IO ()

setDecorationPosition :: QStyleOptionViewItem a -> ((QStyleOptionViewItemPosition)) -> IO ()
setDecorationPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_setDecorationPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionViewItem_setDecorationPosition" qtc_QStyleOptionViewItem_setDecorationPosition :: Ptr (TQStyleOptionViewItem a) -> CLong -> IO ()

qsetDecorationSize :: QStyleOptionViewItem a -> ((QSize t1)) -> IO ()
qsetDecorationSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItem_setDecorationSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionViewItem_setDecorationSize" qtc_QStyleOptionViewItem_setDecorationSize :: Ptr (TQStyleOptionViewItem a) -> Ptr (TQSize t1) -> IO ()

setDecorationSize :: QStyleOptionViewItem a -> ((Size)) -> IO ()
setDecorationSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionViewItem_setDecorationSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionViewItem_setDecorationSize_qth" qtc_QStyleOptionViewItem_setDecorationSize_qth :: Ptr (TQStyleOptionViewItem a) -> CInt -> CInt -> IO ()

setDisplayAlignment :: QStyleOptionViewItem a -> ((Alignment)) -> IO ()
setDisplayAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_setDisplayAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionViewItem_setDisplayAlignment" qtc_QStyleOptionViewItem_setDisplayAlignment :: Ptr (TQStyleOptionViewItem a) -> CLong -> IO ()

instance QsetFont (QStyleOptionViewItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionViewItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionViewItem_setFont" qtc_QStyleOptionViewItem_setFont :: Ptr (TQStyleOptionViewItem a) -> Ptr (TQFont t1) -> IO ()

setShowDecorationSelected :: QStyleOptionViewItem a -> ((Bool)) -> IO ()
setShowDecorationSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_setShowDecorationSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionViewItem_setShowDecorationSelected" qtc_QStyleOptionViewItem_setShowDecorationSelected :: Ptr (TQStyleOptionViewItem a) -> CBool -> IO ()

instance QsetTextElideMode (QStyleOptionViewItem a) ((TextElideMode)) where
 setTextElideMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_setTextElideMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionViewItem_setTextElideMode" qtc_QStyleOptionViewItem_setTextElideMode :: Ptr (TQStyleOptionViewItem a) -> CLong -> IO ()

showDecorationSelected :: QStyleOptionViewItem a -> (()) -> IO (Bool)
showDecorationSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_showDecorationSelected cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_showDecorationSelected" qtc_QStyleOptionViewItem_showDecorationSelected :: Ptr (TQStyleOptionViewItem a) -> IO CBool

instance QtextElideMode (QStyleOptionViewItem a) (()) where
 textElideMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_textElideMode cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_textElideMode" qtc_QStyleOptionViewItem_textElideMode :: Ptr (TQStyleOptionViewItem a) -> IO CLong

qStyleOptionViewItem_delete :: QStyleOptionViewItem a -> IO ()
qStyleOptionViewItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionViewItem_delete cobj_x0

foreign import ccall "qtc_QStyleOptionViewItem_delete" qtc_QStyleOptionViewItem_delete :: Ptr (TQStyleOptionViewItem a) -> IO ()

