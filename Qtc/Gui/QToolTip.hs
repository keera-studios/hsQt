{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QToolTip.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QToolTip (
  qToolTipFont
  ,qToolTipHideText
  ,qToolTipPalette
  ,qToolTipSetFont
  ,qToolTipSetPalette
  ,QqToolTipShowText(..), QqqToolTipShowText(..)
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

qToolTipFont :: (()) -> IO (QFont ())
qToolTipFont ()
  = withQFontResult $
    qtc_QToolTip_font

foreign import ccall "qtc_QToolTip_font" qtc_QToolTip_font :: IO (Ptr (TQFont ()))

qToolTipHideText :: (()) -> IO ()
qToolTipHideText ()
  = qtc_QToolTip_hideText

foreign import ccall "qtc_QToolTip_hideText" qtc_QToolTip_hideText :: IO ()

qToolTipPalette :: (()) -> IO (QPalette ())
qToolTipPalette ()
  = withQPaletteResult $
    qtc_QToolTip_palette

foreign import ccall "qtc_QToolTip_palette" qtc_QToolTip_palette :: IO (Ptr (TQPalette ()))

qToolTipSetFont :: ((QFont t1)) -> IO ()
qToolTipSetFont (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolTip_setFont cobj_x1

foreign import ccall "qtc_QToolTip_setFont" qtc_QToolTip_setFont :: Ptr (TQFont t1) -> IO ()

qToolTipSetPalette :: ((QPalette t1)) -> IO ()
qToolTipSetPalette (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QToolTip_setPalette cobj_x1

foreign import ccall "qtc_QToolTip_setPalette" qtc_QToolTip_setPalette :: Ptr (TQPalette t1) -> IO ()

class QqToolTipShowText x1 where
 qToolTipShowText :: x1 -> IO ()

class QqqToolTipShowText x1 where
 qqToolTipShowText :: x1 -> IO ()

instance QqToolTipShowText ((Point, String)) where
 qToolTipShowText (x1, x2)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolTip_showText_qth cpoint_x1_x cpoint_x1_y  cstr_x2

foreign import ccall "qtc_QToolTip_showText_qth" qtc_QToolTip_showText_qth :: CInt -> CInt -> CWString -> IO ()

instance QqToolTipShowText ((Point, String, QWidget t3)) where
 qToolTipShowText (x1, x2, x3)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QToolTip_showText1_qth cpoint_x1_x cpoint_x1_y  cstr_x2 cobj_x3

foreign import ccall "qtc_QToolTip_showText1_qth" qtc_QToolTip_showText1_qth :: CInt -> CInt -> CWString -> Ptr (TQWidget t3) -> IO ()

instance QqToolTipShowText ((Point, String, QWidget t3, Rect)) where
 qToolTipShowText (x1, x2, x3, x4)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCRect x4 $ \crect_x4_x crect_x4_y  crect_x4_w crect_x4_h ->
    qtc_QToolTip_showText2_qth cpoint_x1_x cpoint_x1_y  cstr_x2 cobj_x3 crect_x4_x crect_x4_y crect_x4_w crect_x4_h 

foreign import ccall "qtc_QToolTip_showText2_qth" qtc_QToolTip_showText2_qth :: CInt -> CInt -> CWString -> Ptr (TQWidget t3) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqqToolTipShowText ((QPoint t1, String)) where
 qqToolTipShowText (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QToolTip_showText cobj_x1 cstr_x2

foreign import ccall "qtc_QToolTip_showText" qtc_QToolTip_showText :: Ptr (TQPoint t1) -> CWString -> IO ()

instance QqqToolTipShowText ((QPoint t1, String, QWidget t3)) where
 qqToolTipShowText (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QToolTip_showText1 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QToolTip_showText1" qtc_QToolTip_showText1 :: Ptr (TQPoint t1) -> CWString -> Ptr (TQWidget t3) -> IO ()

instance QqqToolTipShowText ((QPoint t1, String, QWidget t3, QRect t4)) where
 qqToolTipShowText (x1, x2, x3, x4)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QToolTip_showText2 cobj_x1 cstr_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QToolTip_showText2" qtc_QToolTip_showText2 :: Ptr (TQPoint t1) -> CWString -> Ptr (TQWidget t3) -> Ptr (TQRect t4) -> IO ()

