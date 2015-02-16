{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionButton (
  QqStyleOptionButton(..)
  ,QqStyleOptionButton_nf(..)
  ,qStyleOptionButton_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStyleOptionButton

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionButton x1 where
  qStyleOptionButton :: x1 -> IO (QStyleOptionButton ())

instance QqStyleOptionButton (()) where
 qStyleOptionButton ()
  = withQStyleOptionButtonResult $
    qtc_QStyleOptionButton

foreign import ccall "qtc_QStyleOptionButton" qtc_QStyleOptionButton :: IO (Ptr (TQStyleOptionButton ()))

instance QqStyleOptionButton ((QStyleOptionButton t1)) where
 qStyleOptionButton (x1)
  = withQStyleOptionButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionButton1 cobj_x1

foreign import ccall "qtc_QStyleOptionButton1" qtc_QStyleOptionButton1 :: Ptr (TQStyleOptionButton t1) -> IO (Ptr (TQStyleOptionButton ()))

class QqStyleOptionButton_nf x1 where
  qStyleOptionButton_nf :: x1 -> IO (QStyleOptionButton ())

instance QqStyleOptionButton_nf (()) where
 qStyleOptionButton_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionButton

instance QqStyleOptionButton_nf ((QStyleOptionButton t1)) where
 qStyleOptionButton_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionButton1 cobj_x1

instance Qfeatures (QStyleOptionButton a) (()) (IO (ButtonFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_features cobj_x0

foreign import ccall "qtc_QStyleOptionButton_features" qtc_QStyleOptionButton_features :: Ptr (TQStyleOptionButton a) -> IO CLong

instance Qicon (QStyleOptionButton a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_icon cobj_x0

foreign import ccall "qtc_QStyleOptionButton_icon" qtc_QStyleOptionButton_icon :: Ptr (TQStyleOptionButton a) -> IO (Ptr (TQIcon ()))

instance QqiconSize (QStyleOptionButton a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_iconSize cobj_x0

foreign import ccall "qtc_QStyleOptionButton_iconSize" qtc_QStyleOptionButton_iconSize :: Ptr (TQStyleOptionButton a) -> IO (Ptr (TQSize ()))

instance QiconSize (QStyleOptionButton a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionButton_iconSize_qth" qtc_QStyleOptionButton_iconSize_qth :: Ptr (TQStyleOptionButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsetFeatures (QStyleOptionButton a) ((ButtonFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionButton_setFeatures" qtc_QStyleOptionButton_setFeatures :: Ptr (TQStyleOptionButton a) -> CLong -> IO ()

instance QsetIcon (QStyleOptionButton a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionButton_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionButton_setIcon" qtc_QStyleOptionButton_setIcon :: Ptr (TQStyleOptionButton a) -> Ptr (TQIcon t1) -> IO ()

instance QqsetIconSize (QStyleOptionButton a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionButton_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionButton_setIconSize" qtc_QStyleOptionButton_setIconSize :: Ptr (TQStyleOptionButton a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QStyleOptionButton a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionButton_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionButton_setIconSize_qth" qtc_QStyleOptionButton_setIconSize_qth :: Ptr (TQStyleOptionButton a) -> CInt -> CInt -> IO ()

instance QsetText (QStyleOptionButton a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionButton_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionButton_setText" qtc_QStyleOptionButton_setText :: Ptr (TQStyleOptionButton a) -> CWString -> IO ()

instance Qtext (QStyleOptionButton a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_text cobj_x0

foreign import ccall "qtc_QStyleOptionButton_text" qtc_QStyleOptionButton_text :: Ptr (TQStyleOptionButton a) -> IO (Ptr (TQString ()))

qStyleOptionButton_delete :: QStyleOptionButton a -> IO ()
qStyleOptionButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionButton_delete cobj_x0

foreign import ccall "qtc_QStyleOptionButton_delete" qtc_QStyleOptionButton_delete :: Ptr (TQStyleOptionButton a) -> IO ()

