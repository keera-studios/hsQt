{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTitleBar.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:27
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionTitleBar (
  QqStyleOptionTitleBar(..)
  ,QqStyleOptionTitleBar_nf(..)
  ,setTitleBarFlags
  ,setTitleBarState
  ,titleBarFlags
  ,titleBarState
  ,qStyleOptionTitleBar_delete
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

class QqStyleOptionTitleBar x1 where
  qStyleOptionTitleBar :: x1 -> IO (QStyleOptionTitleBar ())

instance QqStyleOptionTitleBar (()) where
 qStyleOptionTitleBar ()
  = withQStyleOptionTitleBarResult $
    qtc_QStyleOptionTitleBar

foreign import ccall "qtc_QStyleOptionTitleBar" qtc_QStyleOptionTitleBar :: IO (Ptr (TQStyleOptionTitleBar ()))

instance QqStyleOptionTitleBar ((QStyleOptionTitleBar t1)) where
 qStyleOptionTitleBar (x1)
  = withQStyleOptionTitleBarResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTitleBar1 cobj_x1

foreign import ccall "qtc_QStyleOptionTitleBar1" qtc_QStyleOptionTitleBar1 :: Ptr (TQStyleOptionTitleBar t1) -> IO (Ptr (TQStyleOptionTitleBar ()))

class QqStyleOptionTitleBar_nf x1 where
  qStyleOptionTitleBar_nf :: x1 -> IO (QStyleOptionTitleBar ())

instance QqStyleOptionTitleBar_nf (()) where
 qStyleOptionTitleBar_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionTitleBar

instance QqStyleOptionTitleBar_nf ((QStyleOptionTitleBar t1)) where
 qStyleOptionTitleBar_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTitleBar1 cobj_x1

instance Qicon (QStyleOptionTitleBar a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_icon cobj_x0

foreign import ccall "qtc_QStyleOptionTitleBar_icon" qtc_QStyleOptionTitleBar_icon :: Ptr (TQStyleOptionTitleBar a) -> IO (Ptr (TQIcon ()))

instance QsetIcon (QStyleOptionTitleBar a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTitleBar_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTitleBar_setIcon" qtc_QStyleOptionTitleBar_setIcon :: Ptr (TQStyleOptionTitleBar a) -> Ptr (TQIcon t1) -> IO ()

instance QsetText (QStyleOptionTitleBar a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionTitleBar_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionTitleBar_setText" qtc_QStyleOptionTitleBar_setText :: Ptr (TQStyleOptionTitleBar a) -> CWString -> IO ()

setTitleBarFlags :: QStyleOptionTitleBar a -> ((WindowFlags)) -> IO ()
setTitleBarFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_setTitleBarFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionTitleBar_setTitleBarFlags" qtc_QStyleOptionTitleBar_setTitleBarFlags :: Ptr (TQStyleOptionTitleBar a) -> CLong -> IO ()

setTitleBarState :: QStyleOptionTitleBar a -> ((Int)) -> IO ()
setTitleBarState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_setTitleBarState cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionTitleBar_setTitleBarState" qtc_QStyleOptionTitleBar_setTitleBarState :: Ptr (TQStyleOptionTitleBar a) -> CInt -> IO ()

instance Qtext (QStyleOptionTitleBar a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_text cobj_x0

foreign import ccall "qtc_QStyleOptionTitleBar_text" qtc_QStyleOptionTitleBar_text :: Ptr (TQStyleOptionTitleBar a) -> IO (Ptr (TQString ()))

titleBarFlags :: QStyleOptionTitleBar a -> (()) -> IO (WindowFlags)
titleBarFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_titleBarFlags cobj_x0

foreign import ccall "qtc_QStyleOptionTitleBar_titleBarFlags" qtc_QStyleOptionTitleBar_titleBarFlags :: Ptr (TQStyleOptionTitleBar a) -> IO CLong

titleBarState :: QStyleOptionTitleBar a -> (()) -> IO (Int)
titleBarState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_titleBarState cobj_x0

foreign import ccall "qtc_QStyleOptionTitleBar_titleBarState" qtc_QStyleOptionTitleBar_titleBarState :: Ptr (TQStyleOptionTitleBar a) -> IO CInt

qStyleOptionTitleBar_delete :: QStyleOptionTitleBar a -> IO ()
qStyleOptionTitleBar_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTitleBar_delete cobj_x0

foreign import ccall "qtc_QStyleOptionTitleBar_delete" qtc_QStyleOptionTitleBar_delete :: Ptr (TQStyleOptionTitleBar a) -> IO ()

