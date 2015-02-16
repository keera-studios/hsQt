{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionGroupBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionGroupBox (
  QqStyleOptionGroupBox(..)
  ,QqStyleOptionGroupBox_nf(..)
  ,qStyleOptionGroupBox_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyleOptionFrameV2

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionGroupBox x1 where
  qStyleOptionGroupBox :: x1 -> IO (QStyleOptionGroupBox ())

instance QqStyleOptionGroupBox (()) where
 qStyleOptionGroupBox ()
  = withQStyleOptionGroupBoxResult $
    qtc_QStyleOptionGroupBox

foreign import ccall "qtc_QStyleOptionGroupBox" qtc_QStyleOptionGroupBox :: IO (Ptr (TQStyleOptionGroupBox ()))

instance QqStyleOptionGroupBox ((QStyleOptionGroupBox t1)) where
 qStyleOptionGroupBox (x1)
  = withQStyleOptionGroupBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGroupBox1 cobj_x1

foreign import ccall "qtc_QStyleOptionGroupBox1" qtc_QStyleOptionGroupBox1 :: Ptr (TQStyleOptionGroupBox t1) -> IO (Ptr (TQStyleOptionGroupBox ()))

class QqStyleOptionGroupBox_nf x1 where
  qStyleOptionGroupBox_nf :: x1 -> IO (QStyleOptionGroupBox ())

instance QqStyleOptionGroupBox_nf (()) where
 qStyleOptionGroupBox_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionGroupBox

instance QqStyleOptionGroupBox_nf ((QStyleOptionGroupBox t1)) where
 qStyleOptionGroupBox_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGroupBox1 cobj_x1

instance Qfeatures (QStyleOptionGroupBox a) (()) (IO (FrameFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_features cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_features" qtc_QStyleOptionGroupBox_features :: Ptr (TQStyleOptionGroupBox a) -> IO CLong

instance QlineWidth (QStyleOptionGroupBox a) (()) (IO (Int)) where
 lineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_lineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_lineWidth" qtc_QStyleOptionGroupBox_lineWidth :: Ptr (TQStyleOptionGroupBox a) -> IO CInt

instance QmidLineWidth (QStyleOptionGroupBox a) (()) where
 midLineWidth x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_midLineWidth cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_midLineWidth" qtc_QStyleOptionGroupBox_midLineWidth :: Ptr (TQStyleOptionGroupBox a) -> IO CInt

instance QsetFeatures (QStyleOptionGroupBox a) ((FrameFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionGroupBox_setFeatures" qtc_QStyleOptionGroupBox_setFeatures :: Ptr (TQStyleOptionGroupBox a) -> CLong -> IO ()

instance QsetLineWidth (QStyleOptionGroupBox a) ((Int)) where
 setLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_setLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionGroupBox_setLineWidth" qtc_QStyleOptionGroupBox_setLineWidth :: Ptr (TQStyleOptionGroupBox a) -> CInt -> IO ()

instance QsetMidLineWidth (QStyleOptionGroupBox a) ((Int)) where
 setMidLineWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_setMidLineWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionGroupBox_setMidLineWidth" qtc_QStyleOptionGroupBox_setMidLineWidth :: Ptr (TQStyleOptionGroupBox a) -> CInt -> IO ()

instance QsetText (QStyleOptionGroupBox a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionGroupBox_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionGroupBox_setText" qtc_QStyleOptionGroupBox_setText :: Ptr (TQStyleOptionGroupBox a) -> CWString -> IO ()

instance QsetTextAlignment (QStyleOptionGroupBox a) ((Alignment)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_setTextAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionGroupBox_setTextAlignment" qtc_QStyleOptionGroupBox_setTextAlignment :: Ptr (TQStyleOptionGroupBox a) -> CLong -> IO ()

instance QsetTextColor (QStyleOptionGroupBox a) ((QColor t1)) where
 setTextColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionGroupBox_setTextColor cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionGroupBox_setTextColor" qtc_QStyleOptionGroupBox_setTextColor :: Ptr (TQStyleOptionGroupBox a) -> Ptr (TQColor t1) -> IO ()

instance Qtext (QStyleOptionGroupBox a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_text cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_text" qtc_QStyleOptionGroupBox_text :: Ptr (TQStyleOptionGroupBox a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QStyleOptionGroupBox a) (()) (IO (Alignment)) where
 textAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_textAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_textAlignment" qtc_QStyleOptionGroupBox_textAlignment :: Ptr (TQStyleOptionGroupBox a) -> IO CLong

instance QtextColor (QStyleOptionGroupBox a) (()) where
 textColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_textColor cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_textColor" qtc_QStyleOptionGroupBox_textColor :: Ptr (TQStyleOptionGroupBox a) -> IO (Ptr (TQColor ()))

qStyleOptionGroupBox_delete :: QStyleOptionGroupBox a -> IO ()
qStyleOptionGroupBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionGroupBox_delete cobj_x0

foreign import ccall "qtc_QStyleOptionGroupBox_delete" qtc_QStyleOptionGroupBox_delete :: Ptr (TQStyleOptionGroupBox a) -> IO ()

