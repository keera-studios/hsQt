{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionComboBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionComboBox (
  QqStyleOptionComboBox(..)
  ,QqStyleOptionComboBox_nf(..)
  ,currentIcon
  ,editable
  ,qpopupRect, popupRect
  ,setCurrentIcon
  ,setCurrentText
  ,qsetPopupRect, setPopupRect
  ,qStyleOptionComboBox_delete
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

class QqStyleOptionComboBox x1 where
  qStyleOptionComboBox :: x1 -> IO (QStyleOptionComboBox ())

instance QqStyleOptionComboBox (()) where
 qStyleOptionComboBox ()
  = withQStyleOptionComboBoxResult $
    qtc_QStyleOptionComboBox

foreign import ccall "qtc_QStyleOptionComboBox" qtc_QStyleOptionComboBox :: IO (Ptr (TQStyleOptionComboBox ()))

instance QqStyleOptionComboBox ((QStyleOptionComboBox t1)) where
 qStyleOptionComboBox (x1)
  = withQStyleOptionComboBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComboBox1 cobj_x1

foreign import ccall "qtc_QStyleOptionComboBox1" qtc_QStyleOptionComboBox1 :: Ptr (TQStyleOptionComboBox t1) -> IO (Ptr (TQStyleOptionComboBox ()))

class QqStyleOptionComboBox_nf x1 where
  qStyleOptionComboBox_nf :: x1 -> IO (QStyleOptionComboBox ())

instance QqStyleOptionComboBox_nf (()) where
 qStyleOptionComboBox_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionComboBox

instance QqStyleOptionComboBox_nf ((QStyleOptionComboBox t1)) where
 qStyleOptionComboBox_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComboBox1 cobj_x1

currentIcon :: QStyleOptionComboBox a -> (()) -> IO (QIcon ())
currentIcon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_currentIcon cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_currentIcon" qtc_QStyleOptionComboBox_currentIcon :: Ptr (TQStyleOptionComboBox a) -> IO (Ptr (TQIcon ()))

instance QcurrentText (QStyleOptionComboBox a) (()) where
 currentText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_currentText cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_currentText" qtc_QStyleOptionComboBox_currentText :: Ptr (TQStyleOptionComboBox a) -> IO (Ptr (TQString ()))

editable :: QStyleOptionComboBox a -> (()) -> IO (Bool)
editable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_editable cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_editable" qtc_QStyleOptionComboBox_editable :: Ptr (TQStyleOptionComboBox a) -> IO CBool

instance Qframe (QStyleOptionComboBox a) (()) where
 frame x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_frame cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_frame" qtc_QStyleOptionComboBox_frame :: Ptr (TQStyleOptionComboBox a) -> IO CBool

instance QqiconSize (QStyleOptionComboBox a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_iconSize cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_iconSize" qtc_QStyleOptionComboBox_iconSize :: Ptr (TQStyleOptionComboBox a) -> IO (Ptr (TQSize ()))

instance QiconSize (QStyleOptionComboBox a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionComboBox_iconSize_qth" qtc_QStyleOptionComboBox_iconSize_qth :: Ptr (TQStyleOptionComboBox a) -> Ptr CInt -> Ptr CInt -> IO ()

qpopupRect :: QStyleOptionComboBox a -> (()) -> IO (QRect ())
qpopupRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_popupRect cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_popupRect" qtc_QStyleOptionComboBox_popupRect :: Ptr (TQStyleOptionComboBox a) -> IO (Ptr (TQRect ()))

popupRect :: QStyleOptionComboBox a -> (()) -> IO (Rect)
popupRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_popupRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyleOptionComboBox_popupRect_qth" qtc_QStyleOptionComboBox_popupRect_qth :: Ptr (TQStyleOptionComboBox a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

setCurrentIcon :: QStyleOptionComboBox a -> ((QIcon t1)) -> IO ()
setCurrentIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComboBox_setCurrentIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionComboBox_setCurrentIcon" qtc_QStyleOptionComboBox_setCurrentIcon :: Ptr (TQStyleOptionComboBox a) -> Ptr (TQIcon t1) -> IO ()

setCurrentText :: QStyleOptionComboBox a -> ((String)) -> IO ()
setCurrentText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionComboBox_setCurrentText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionComboBox_setCurrentText" qtc_QStyleOptionComboBox_setCurrentText :: Ptr (TQStyleOptionComboBox a) -> CWString -> IO ()

instance QsetEditable (QStyleOptionComboBox a) ((Bool)) where
 setEditable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_setEditable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionComboBox_setEditable" qtc_QStyleOptionComboBox_setEditable :: Ptr (TQStyleOptionComboBox a) -> CBool -> IO ()

instance QsetFrame (QStyleOptionComboBox a) ((Bool)) where
 setFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_setFrame cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionComboBox_setFrame" qtc_QStyleOptionComboBox_setFrame :: Ptr (TQStyleOptionComboBox a) -> CBool -> IO ()

instance QqsetIconSize (QStyleOptionComboBox a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComboBox_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionComboBox_setIconSize" qtc_QStyleOptionComboBox_setIconSize :: Ptr (TQStyleOptionComboBox a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QStyleOptionComboBox a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionComboBox_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionComboBox_setIconSize_qth" qtc_QStyleOptionComboBox_setIconSize_qth :: Ptr (TQStyleOptionComboBox a) -> CInt -> CInt -> IO ()

qsetPopupRect :: QStyleOptionComboBox a -> ((QRect t1)) -> IO ()
qsetPopupRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionComboBox_setPopupRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionComboBox_setPopupRect" qtc_QStyleOptionComboBox_setPopupRect :: Ptr (TQStyleOptionComboBox a) -> Ptr (TQRect t1) -> IO ()

setPopupRect :: QStyleOptionComboBox a -> ((Rect)) -> IO ()
setPopupRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStyleOptionComboBox_setPopupRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStyleOptionComboBox_setPopupRect_qth" qtc_QStyleOptionComboBox_setPopupRect_qth :: Ptr (TQStyleOptionComboBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qStyleOptionComboBox_delete :: QStyleOptionComboBox a -> IO ()
qStyleOptionComboBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionComboBox_delete cobj_x0

foreign import ccall "qtc_QStyleOptionComboBox_delete" qtc_QStyleOptionComboBox_delete :: Ptr (TQStyleOptionComboBox a) -> IO ()

