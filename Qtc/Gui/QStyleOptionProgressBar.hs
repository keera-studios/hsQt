{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionProgressBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionProgressBar (
  QqStyleOptionProgressBar(..)
  ,QqStyleOptionProgressBar_nf(..)
  ,progress
  ,setProgress
  ,textVisible
  ,qStyleOptionProgressBar_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionProgressBar x1 where
  qStyleOptionProgressBar :: x1 -> IO (QStyleOptionProgressBar ())

instance QqStyleOptionProgressBar (()) where
 qStyleOptionProgressBar ()
  = withQStyleOptionProgressBarResult $
    qtc_QStyleOptionProgressBar

foreign import ccall "qtc_QStyleOptionProgressBar" qtc_QStyleOptionProgressBar :: IO (Ptr (TQStyleOptionProgressBar ()))

instance QqStyleOptionProgressBar ((QStyleOptionProgressBar t1)) where
 qStyleOptionProgressBar (x1)
  = withQStyleOptionProgressBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBar1 cobj_x1

foreign import ccall "qtc_QStyleOptionProgressBar1" qtc_QStyleOptionProgressBar1 :: Ptr (TQStyleOptionProgressBar t1) -> IO (Ptr (TQStyleOptionProgressBar ()))

class QqStyleOptionProgressBar_nf x1 where
  qStyleOptionProgressBar_nf :: x1 -> IO (QStyleOptionProgressBar ())

instance QqStyleOptionProgressBar_nf (()) where
 qStyleOptionProgressBar_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionProgressBar

instance QqStyleOptionProgressBar_nf ((QStyleOptionProgressBar t1)) where
 qStyleOptionProgressBar_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionProgressBar1 cobj_x1

instance Qqmaximum (QStyleOptionProgressBar a) (()) (IO (Int)) where
 qmaximum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_maximum cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_maximum" qtc_QStyleOptionProgressBar_maximum :: Ptr (TQStyleOptionProgressBar a) -> IO CInt

instance Qqminimum (QStyleOptionProgressBar a) (()) (IO (Int)) where
 qminimum x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_minimum cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_minimum" qtc_QStyleOptionProgressBar_minimum :: Ptr (TQStyleOptionProgressBar a) -> IO CInt

progress :: QStyleOptionProgressBar a -> (()) -> IO (Int)
progress x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_progress cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_progress" qtc_QStyleOptionProgressBar_progress :: Ptr (TQStyleOptionProgressBar a) -> IO CInt

instance QsetMaximum (QStyleOptionProgressBar a) ((Int)) where
 setMaximum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_setMaximum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionProgressBar_setMaximum" qtc_QStyleOptionProgressBar_setMaximum :: Ptr (TQStyleOptionProgressBar a) -> CInt -> IO ()

instance QsetMinimum (QStyleOptionProgressBar a) ((Int)) where
 setMinimum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_setMinimum cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionProgressBar_setMinimum" qtc_QStyleOptionProgressBar_setMinimum :: Ptr (TQStyleOptionProgressBar a) -> CInt -> IO ()

setProgress :: QStyleOptionProgressBar a -> ((Int)) -> IO ()
setProgress x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_setProgress cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionProgressBar_setProgress" qtc_QStyleOptionProgressBar_setProgress :: Ptr (TQStyleOptionProgressBar a) -> CInt -> IO ()

instance QsetText (QStyleOptionProgressBar a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionProgressBar_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionProgressBar_setText" qtc_QStyleOptionProgressBar_setText :: Ptr (TQStyleOptionProgressBar a) -> CWString -> IO ()

instance QsetTextAlignment (QStyleOptionProgressBar a) ((Alignment)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_setTextAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionProgressBar_setTextAlignment" qtc_QStyleOptionProgressBar_setTextAlignment :: Ptr (TQStyleOptionProgressBar a) -> CLong -> IO ()

instance QsetTextVisible (QStyleOptionProgressBar a) ((Bool)) where
 setTextVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_setTextVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionProgressBar_setTextVisible" qtc_QStyleOptionProgressBar_setTextVisible :: Ptr (TQStyleOptionProgressBar a) -> CBool -> IO ()

instance Qtext (QStyleOptionProgressBar a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_text cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_text" qtc_QStyleOptionProgressBar_text :: Ptr (TQStyleOptionProgressBar a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QStyleOptionProgressBar a) (()) (IO (Alignment)) where
 textAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_textAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_textAlignment" qtc_QStyleOptionProgressBar_textAlignment :: Ptr (TQStyleOptionProgressBar a) -> IO CLong

textVisible :: QStyleOptionProgressBar a -> (()) -> IO (Bool)
textVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_textVisible cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_textVisible" qtc_QStyleOptionProgressBar_textVisible :: Ptr (TQStyleOptionProgressBar a) -> IO CBool

qStyleOptionProgressBar_delete :: QStyleOptionProgressBar a -> IO ()
qStyleOptionProgressBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionProgressBar_delete cobj_x0

foreign import ccall "qtc_QStyleOptionProgressBar_delete" qtc_QStyleOptionProgressBar_delete :: Ptr (TQStyleOptionProgressBar a) -> IO ()

