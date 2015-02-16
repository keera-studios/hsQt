{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionDockWidget.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionDockWidget (
  QqStyleOptionDockWidget(..)
  ,QqStyleOptionDockWidget_nf(..)
  ,closable
  ,floatable
  ,movable
  ,setClosable
  ,qStyleOptionDockWidget_delete
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

class QqStyleOptionDockWidget x1 where
  qStyleOptionDockWidget :: x1 -> IO (QStyleOptionDockWidget ())

instance QqStyleOptionDockWidget (()) where
 qStyleOptionDockWidget ()
  = withQStyleOptionDockWidgetResult $
    qtc_QStyleOptionDockWidget

foreign import ccall "qtc_QStyleOptionDockWidget" qtc_QStyleOptionDockWidget :: IO (Ptr (TQStyleOptionDockWidget ()))

instance QqStyleOptionDockWidget ((QStyleOptionDockWidget t1)) where
 qStyleOptionDockWidget (x1)
  = withQStyleOptionDockWidgetResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidget1 cobj_x1

foreign import ccall "qtc_QStyleOptionDockWidget1" qtc_QStyleOptionDockWidget1 :: Ptr (TQStyleOptionDockWidget t1) -> IO (Ptr (TQStyleOptionDockWidget ()))

class QqStyleOptionDockWidget_nf x1 where
  qStyleOptionDockWidget_nf :: x1 -> IO (QStyleOptionDockWidget ())

instance QqStyleOptionDockWidget_nf (()) where
 qStyleOptionDockWidget_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionDockWidget

instance QqStyleOptionDockWidget_nf ((QStyleOptionDockWidget t1)) where
 qStyleOptionDockWidget_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionDockWidget1 cobj_x1

closable :: QStyleOptionDockWidget a -> (()) -> IO (Bool)
closable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_closable cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidget_closable" qtc_QStyleOptionDockWidget_closable :: Ptr (TQStyleOptionDockWidget a) -> IO CBool

floatable :: QStyleOptionDockWidget a -> (()) -> IO (Bool)
floatable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_floatable cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidget_floatable" qtc_QStyleOptionDockWidget_floatable :: Ptr (TQStyleOptionDockWidget a) -> IO CBool

movable :: QStyleOptionDockWidget a -> (()) -> IO (Bool)
movable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_movable cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidget_movable" qtc_QStyleOptionDockWidget_movable :: Ptr (TQStyleOptionDockWidget a) -> IO CBool

setClosable :: QStyleOptionDockWidget a -> ((Bool)) -> IO ()
setClosable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_setClosable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionDockWidget_setClosable" qtc_QStyleOptionDockWidget_setClosable :: Ptr (TQStyleOptionDockWidget a) -> CBool -> IO ()

instance QsetFloatable (QStyleOptionDockWidget a) ((Bool)) where
 setFloatable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_setFloatable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionDockWidget_setFloatable" qtc_QStyleOptionDockWidget_setFloatable :: Ptr (TQStyleOptionDockWidget a) -> CBool -> IO ()

instance QsetMovable (QStyleOptionDockWidget a) ((Bool)) where
 setMovable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_setMovable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStyleOptionDockWidget_setMovable" qtc_QStyleOptionDockWidget_setMovable :: Ptr (TQStyleOptionDockWidget a) -> CBool -> IO ()

instance QsetTitle (QStyleOptionDockWidget a) ((String)) where
 setTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionDockWidget_setTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionDockWidget_setTitle" qtc_QStyleOptionDockWidget_setTitle :: Ptr (TQStyleOptionDockWidget a) -> CWString -> IO ()

instance Qtitle (QStyleOptionDockWidget a) (()) where
 title x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_title cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidget_title" qtc_QStyleOptionDockWidget_title :: Ptr (TQStyleOptionDockWidget a) -> IO (Ptr (TQString ()))

qStyleOptionDockWidget_delete :: QStyleOptionDockWidget a -> IO ()
qStyleOptionDockWidget_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionDockWidget_delete cobj_x0

foreign import ccall "qtc_QStyleOptionDockWidget_delete" qtc_QStyleOptionDockWidget_delete :: Ptr (TQStyleOptionDockWidget a) -> IO ()

