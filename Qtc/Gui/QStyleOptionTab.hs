{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionTab.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionTab (
  QqStyleOptionTab(..)
  ,QqStyleOptionTab_nf(..)
  ,cornerWidgets
  ,setCornerWidgets
  ,setRow
  ,qStyleOptionTab_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionTab
import Qtc.Enums.Gui.QTabBar

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionTab x1 where
  qStyleOptionTab :: x1 -> IO (QStyleOptionTab ())

instance QqStyleOptionTab (()) where
 qStyleOptionTab ()
  = withQStyleOptionTabResult $
    qtc_QStyleOptionTab

foreign import ccall "qtc_QStyleOptionTab" qtc_QStyleOptionTab :: IO (Ptr (TQStyleOptionTab ()))

instance QqStyleOptionTab ((QStyleOptionTab t1)) where
 qStyleOptionTab (x1)
  = withQStyleOptionTabResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTab1 cobj_x1

foreign import ccall "qtc_QStyleOptionTab1" qtc_QStyleOptionTab1 :: Ptr (TQStyleOptionTab t1) -> IO (Ptr (TQStyleOptionTab ()))

class QqStyleOptionTab_nf x1 where
  qStyleOptionTab_nf :: x1 -> IO (QStyleOptionTab ())

instance QqStyleOptionTab_nf (()) where
 qStyleOptionTab_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionTab

instance QqStyleOptionTab_nf ((QStyleOptionTab t1)) where
 qStyleOptionTab_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTab1 cobj_x1

cornerWidgets :: QStyleOptionTab a -> (()) -> IO (CornerWidgets)
cornerWidgets x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_cornerWidgets cobj_x0

foreign import ccall "qtc_QStyleOptionTab_cornerWidgets" qtc_QStyleOptionTab_cornerWidgets :: Ptr (TQStyleOptionTab a) -> IO CLong

instance Qicon (QStyleOptionTab a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_icon cobj_x0

foreign import ccall "qtc_QStyleOptionTab_icon" qtc_QStyleOptionTab_icon :: Ptr (TQStyleOptionTab a) -> IO (Ptr (TQIcon ()))

instance Qposition (QStyleOptionTab a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_position cobj_x0

foreign import ccall "qtc_QStyleOptionTab_position" qtc_QStyleOptionTab_position :: Ptr (TQStyleOptionTab a) -> IO CInt

instance Qrow (QStyleOptionTab a) (()) where
 row x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_row cobj_x0

foreign import ccall "qtc_QStyleOptionTab_row" qtc_QStyleOptionTab_row :: Ptr (TQStyleOptionTab a) -> IO CInt

instance QselectedPosition (QStyleOptionTab a) (()) where
 selectedPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_selectedPosition cobj_x0

foreign import ccall "qtc_QStyleOptionTab_selectedPosition" qtc_QStyleOptionTab_selectedPosition :: Ptr (TQStyleOptionTab a) -> IO CInt

setCornerWidgets :: QStyleOptionTab a -> ((CornerWidgets)) -> IO ()
setCornerWidgets x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_setCornerWidgets cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionTab_setCornerWidgets" qtc_QStyleOptionTab_setCornerWidgets :: Ptr (TQStyleOptionTab a) -> CLong -> IO ()

instance QsetIcon (QStyleOptionTab a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionTab_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionTab_setIcon" qtc_QStyleOptionTab_setIcon :: Ptr (TQStyleOptionTab a) -> Ptr (TQIcon t1) -> IO ()

instance QsetPosition (QStyleOptionTab a) ((QStyleOptionTabTabPosition)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_setPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionTab_setPosition" qtc_QStyleOptionTab_setPosition :: Ptr (TQStyleOptionTab a) -> CLong -> IO ()

setRow :: QStyleOptionTab a -> ((Int)) -> IO ()
setRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_setRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionTab_setRow" qtc_QStyleOptionTab_setRow :: Ptr (TQStyleOptionTab a) -> CInt -> IO ()

instance QsetSelectedPosition (QStyleOptionTab a) ((QStyleOptionTabSelectedPosition)) where
 setSelectedPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_setSelectedPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionTab_setSelectedPosition" qtc_QStyleOptionTab_setSelectedPosition :: Ptr (TQStyleOptionTab a) -> CLong -> IO ()

instance QsetShape (QStyleOptionTab a) ((QTabBarShape)) where
 setShape x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_setShape cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionTab_setShape" qtc_QStyleOptionTab_setShape :: Ptr (TQStyleOptionTab a) -> CLong -> IO ()

instance QsetText (QStyleOptionTab a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionTab_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionTab_setText" qtc_QStyleOptionTab_setText :: Ptr (TQStyleOptionTab a) -> CWString -> IO ()

instance Qshape (QStyleOptionTab a) (()) (IO (QTabBarShape)) where
 shape x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_shape cobj_x0

foreign import ccall "qtc_QStyleOptionTab_shape" qtc_QStyleOptionTab_shape :: Ptr (TQStyleOptionTab a) -> IO CLong

instance Qtext (QStyleOptionTab a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_text cobj_x0

foreign import ccall "qtc_QStyleOptionTab_text" qtc_QStyleOptionTab_text :: Ptr (TQStyleOptionTab a) -> IO (Ptr (TQString ()))

qStyleOptionTab_delete :: QStyleOptionTab a -> IO ()
qStyleOptionTab_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionTab_delete cobj_x0

foreign import ccall "qtc_QStyleOptionTab_delete" qtc_QStyleOptionTab_delete :: Ptr (TQStyleOptionTab a) -> IO ()

