{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionHeader.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionHeader (
  QqStyleOptionHeader(..)
  ,QqStyleOptionHeader_nf(..)
  ,iconAlignment
  ,section
  ,setIconAlignment
  ,setSection
  ,sortIndicator
  ,qStyleOptionHeader_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyleOptionHeader

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionHeader x1 where
  qStyleOptionHeader :: x1 -> IO (QStyleOptionHeader ())

instance QqStyleOptionHeader (()) where
 qStyleOptionHeader ()
  = withQStyleOptionHeaderResult $
    qtc_QStyleOptionHeader

foreign import ccall "qtc_QStyleOptionHeader" qtc_QStyleOptionHeader :: IO (Ptr (TQStyleOptionHeader ()))

instance QqStyleOptionHeader ((QStyleOptionHeader t1)) where
 qStyleOptionHeader (x1)
  = withQStyleOptionHeaderResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionHeader1 cobj_x1

foreign import ccall "qtc_QStyleOptionHeader1" qtc_QStyleOptionHeader1 :: Ptr (TQStyleOptionHeader t1) -> IO (Ptr (TQStyleOptionHeader ()))

class QqStyleOptionHeader_nf x1 where
  qStyleOptionHeader_nf :: x1 -> IO (QStyleOptionHeader ())

instance QqStyleOptionHeader_nf (()) where
 qStyleOptionHeader_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionHeader

instance QqStyleOptionHeader_nf ((QStyleOptionHeader t1)) where
 qStyleOptionHeader_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionHeader1 cobj_x1

instance Qicon (QStyleOptionHeader a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_icon cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_icon" qtc_QStyleOptionHeader_icon :: Ptr (TQStyleOptionHeader a) -> IO (Ptr (TQIcon ()))

iconAlignment :: QStyleOptionHeader a -> (()) -> IO (Alignment)
iconAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_iconAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_iconAlignment" qtc_QStyleOptionHeader_iconAlignment :: Ptr (TQStyleOptionHeader a) -> IO CLong

instance Qorientation (QStyleOptionHeader a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_orientation cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_orientation" qtc_QStyleOptionHeader_orientation :: Ptr (TQStyleOptionHeader a) -> IO CLong

instance Qposition (QStyleOptionHeader a) (()) (IO (Int)) where
 position x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_position cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_position" qtc_QStyleOptionHeader_position :: Ptr (TQStyleOptionHeader a) -> IO CInt

section :: QStyleOptionHeader a -> (()) -> IO (Int)
section x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_section cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_section" qtc_QStyleOptionHeader_section :: Ptr (TQStyleOptionHeader a) -> IO CInt

instance QselectedPosition (QStyleOptionHeader a) (()) where
 selectedPosition x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_selectedPosition cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_selectedPosition" qtc_QStyleOptionHeader_selectedPosition :: Ptr (TQStyleOptionHeader a) -> IO CInt

instance QsetIcon (QStyleOptionHeader a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionHeader_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionHeader_setIcon" qtc_QStyleOptionHeader_setIcon :: Ptr (TQStyleOptionHeader a) -> Ptr (TQIcon t1) -> IO ()

setIconAlignment :: QStyleOptionHeader a -> ((Alignment)) -> IO ()
setIconAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setIconAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setIconAlignment" qtc_QStyleOptionHeader_setIconAlignment :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

instance QsetOrientation (QStyleOptionHeader a) ((QtOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setOrientation" qtc_QStyleOptionHeader_setOrientation :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

instance QsetPosition (QStyleOptionHeader a) ((SectionPosition)) where
 setPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setPosition" qtc_QStyleOptionHeader_setPosition :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

setSection :: QStyleOptionHeader a -> ((Int)) -> IO ()
setSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setSection cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setSection" qtc_QStyleOptionHeader_setSection :: Ptr (TQStyleOptionHeader a) -> CInt -> IO ()

instance QsetSelectedPosition (QStyleOptionHeader a) ((QStyleOptionHeaderSelectedPosition)) where
 setSelectedPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setSelectedPosition cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setSelectedPosition" qtc_QStyleOptionHeader_setSelectedPosition :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

instance QsetSortIndicator (QStyleOptionHeader a) ((SortIndicator)) where
 setSortIndicator x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setSortIndicator cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setSortIndicator" qtc_QStyleOptionHeader_setSortIndicator :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

instance QsetText (QStyleOptionHeader a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionHeader_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionHeader_setText" qtc_QStyleOptionHeader_setText :: Ptr (TQStyleOptionHeader a) -> CWString -> IO ()

instance QsetTextAlignment (QStyleOptionHeader a) ((Alignment)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_setTextAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionHeader_setTextAlignment" qtc_QStyleOptionHeader_setTextAlignment :: Ptr (TQStyleOptionHeader a) -> CLong -> IO ()

sortIndicator :: QStyleOptionHeader a -> (()) -> IO (QVoid ())
sortIndicator x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_sortIndicator cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_sortIndicator" qtc_QStyleOptionHeader_sortIndicator :: Ptr (TQStyleOptionHeader a) -> IO (Ptr (TQVoid ()))

instance Qtext (QStyleOptionHeader a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_text cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_text" qtc_QStyleOptionHeader_text :: Ptr (TQStyleOptionHeader a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QStyleOptionHeader a) (()) (IO (Alignment)) where
 textAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_textAlignment cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_textAlignment" qtc_QStyleOptionHeader_textAlignment :: Ptr (TQStyleOptionHeader a) -> IO CLong

qStyleOptionHeader_delete :: QStyleOptionHeader a -> IO ()
qStyleOptionHeader_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionHeader_delete cobj_x0

foreign import ccall "qtc_QStyleOptionHeader_delete" qtc_QStyleOptionHeader_delete :: Ptr (TQStyleOptionHeader a) -> IO ()

