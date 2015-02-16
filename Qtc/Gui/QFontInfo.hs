{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontInfo.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QFontInfo (
  QqFontInfo(..)
  ,QqFontInfo_nf(..)
  ,qFontInfo_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QFont

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqFontInfo x1 where
  qFontInfo :: x1 -> IO (QFontInfo ())

instance QqFontInfo ((QFont t1)) where
 qFontInfo (x1)
  = withQFontInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontInfo cobj_x1

foreign import ccall "qtc_QFontInfo" qtc_QFontInfo :: Ptr (TQFont t1) -> IO (Ptr (TQFontInfo ()))

instance QqFontInfo ((QFontInfo t1)) where
 qFontInfo (x1)
  = withQFontInfoResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontInfo1 cobj_x1

foreign import ccall "qtc_QFontInfo1" qtc_QFontInfo1 :: Ptr (TQFontInfo t1) -> IO (Ptr (TQFontInfo ()))

class QqFontInfo_nf x1 where
  qFontInfo_nf :: x1 -> IO (QFontInfo ())

instance QqFontInfo_nf ((QFont t1)) where
 qFontInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontInfo cobj_x1

instance QqFontInfo_nf ((QFontInfo t1)) where
 qFontInfo_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QFontInfo1 cobj_x1

instance Qbold (QFontInfo a) (()) where
 bold x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_bold cobj_x0

foreign import ccall "qtc_QFontInfo_bold" qtc_QFontInfo_bold :: Ptr (TQFontInfo a) -> IO CBool

instance QexactMatch (QFontInfo a) (()) where
 exactMatch x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_exactMatch cobj_x0

foreign import ccall "qtc_QFontInfo_exactMatch" qtc_QFontInfo_exactMatch :: Ptr (TQFontInfo a) -> IO CBool

instance Qfamily (QFontInfo a) (()) where
 family x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_family cobj_x0

foreign import ccall "qtc_QFontInfo_family" qtc_QFontInfo_family :: Ptr (TQFontInfo a) -> IO (Ptr (TQString ()))

instance QfixedPitch (QFontInfo a) (()) where
 fixedPitch x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_fixedPitch cobj_x0

foreign import ccall "qtc_QFontInfo_fixedPitch" qtc_QFontInfo_fixedPitch :: Ptr (TQFontInfo a) -> IO CBool

instance Qitalic (QFontInfo a) (()) where
 italic x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_italic cobj_x0

foreign import ccall "qtc_QFontInfo_italic" qtc_QFontInfo_italic :: Ptr (TQFontInfo a) -> IO CBool

instance Qoverline (QFontInfo a) (()) where
 overline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_overline cobj_x0

foreign import ccall "qtc_QFontInfo_overline" qtc_QFontInfo_overline :: Ptr (TQFontInfo a) -> IO CBool

instance QpixelSize (QFontInfo a) (()) where
 pixelSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_pixelSize cobj_x0

foreign import ccall "qtc_QFontInfo_pixelSize" qtc_QFontInfo_pixelSize :: Ptr (TQFontInfo a) -> IO CInt

instance QpointSize (QFontInfo a) (()) where
 pointSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_pointSize cobj_x0

foreign import ccall "qtc_QFontInfo_pointSize" qtc_QFontInfo_pointSize :: Ptr (TQFontInfo a) -> IO CInt

instance QpointSizeF (QFontInfo a) (()) where
 pointSizeF x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_pointSizeF cobj_x0

foreign import ccall "qtc_QFontInfo_pointSizeF" qtc_QFontInfo_pointSizeF :: Ptr (TQFontInfo a) -> IO CDouble

instance QrawMode (QFontInfo a) (()) where
 rawMode x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_rawMode cobj_x0

foreign import ccall "qtc_QFontInfo_rawMode" qtc_QFontInfo_rawMode :: Ptr (TQFontInfo a) -> IO CBool

instance QstrikeOut (QFontInfo a) (()) where
 strikeOut x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_strikeOut cobj_x0

foreign import ccall "qtc_QFontInfo_strikeOut" qtc_QFontInfo_strikeOut :: Ptr (TQFontInfo a) -> IO CBool

instance Qstyle (QFontInfo a) (()) (IO (QFontStyle)) where
 style x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_style cobj_x0

foreign import ccall "qtc_QFontInfo_style" qtc_QFontInfo_style :: Ptr (TQFontInfo a) -> IO CLong

instance QstyleHint (QFontInfo a) (()) (IO (QFontStyleHint)) where
 styleHint x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_styleHint cobj_x0

foreign import ccall "qtc_QFontInfo_styleHint" qtc_QFontInfo_styleHint :: Ptr (TQFontInfo a) -> IO CLong

instance Qunderline (QFontInfo a) (()) where
 underline x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_underline cobj_x0

foreign import ccall "qtc_QFontInfo_underline" qtc_QFontInfo_underline :: Ptr (TQFontInfo a) -> IO CBool

instance Qweight (QFontInfo a) (()) where
 weight x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_weight cobj_x0

foreign import ccall "qtc_QFontInfo_weight" qtc_QFontInfo_weight :: Ptr (TQFontInfo a) -> IO CInt

qFontInfo_delete :: QFontInfo a -> IO ()
qFontInfo_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QFontInfo_delete cobj_x0

foreign import ccall "qtc_QFontInfo_delete" qtc_QFontInfo_delete :: Ptr (TQFontInfo a) -> IO ()

