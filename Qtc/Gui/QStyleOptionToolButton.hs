{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOptionToolButton.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOptionToolButton (
  QqStyleOptionToolButton(..)
  ,QqStyleOptionToolButton_nf(..)
  ,qStyleOptionToolButton_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyleOptionToolButton

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleOptionToolButton x1 where
  qStyleOptionToolButton :: x1 -> IO (QStyleOptionToolButton ())

instance QqStyleOptionToolButton (()) where
 qStyleOptionToolButton ()
  = withQStyleOptionToolButtonResult $
    qtc_QStyleOptionToolButton

foreign import ccall "qtc_QStyleOptionToolButton" qtc_QStyleOptionToolButton :: IO (Ptr (TQStyleOptionToolButton ()))

instance QqStyleOptionToolButton ((QStyleOptionToolButton t1)) where
 qStyleOptionToolButton (x1)
  = withQStyleOptionToolButtonResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton1 cobj_x1

foreign import ccall "qtc_QStyleOptionToolButton1" qtc_QStyleOptionToolButton1 :: Ptr (TQStyleOptionToolButton t1) -> IO (Ptr (TQStyleOptionToolButton ()))

class QqStyleOptionToolButton_nf x1 where
  qStyleOptionToolButton_nf :: x1 -> IO (QStyleOptionToolButton ())

instance QqStyleOptionToolButton_nf (()) where
 qStyleOptionToolButton_nf ()
  = withObjectRefResult $
    qtc_QStyleOptionToolButton

instance QqStyleOptionToolButton_nf ((QStyleOptionToolButton t1)) where
 qStyleOptionToolButton_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton1 cobj_x1

instance QarrowType (QStyleOptionToolButton a) (()) where
 arrowType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_arrowType cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_arrowType" qtc_QStyleOptionToolButton_arrowType :: Ptr (TQStyleOptionToolButton a) -> IO CLong

instance Qfeatures (QStyleOptionToolButton a) (()) (IO (ToolButtonFeatures)) where
 features x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_features cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_features" qtc_QStyleOptionToolButton_features :: Ptr (TQStyleOptionToolButton a) -> IO CLong

instance Qfont (QStyleOptionToolButton a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_font cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_font" qtc_QStyleOptionToolButton_font :: Ptr (TQStyleOptionToolButton a) -> IO (Ptr (TQFont ()))

instance Qicon (QStyleOptionToolButton a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_icon cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_icon" qtc_QStyleOptionToolButton_icon :: Ptr (TQStyleOptionToolButton a) -> IO (Ptr (TQIcon ()))

instance QqiconSize (QStyleOptionToolButton a) (()) where
 qiconSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_iconSize cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_iconSize" qtc_QStyleOptionToolButton_iconSize :: Ptr (TQStyleOptionToolButton a) -> IO (Ptr (TQSize ()))

instance QiconSize (QStyleOptionToolButton a) (()) where
 iconSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_iconSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStyleOptionToolButton_iconSize_qth" qtc_QStyleOptionToolButton_iconSize_qth :: Ptr (TQStyleOptionToolButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qpos (QStyleOptionToolButton a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QStyleOptionToolButton_pos_qth" qtc_QStyleOptionToolButton_pos_qth :: Ptr (TQStyleOptionToolButton a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QStyleOptionToolButton a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_pos cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_pos" qtc_QStyleOptionToolButton_pos :: Ptr (TQStyleOptionToolButton a) -> IO (Ptr (TQPoint ()))

instance QsetArrowType (QStyleOptionToolButton a) ((ArrowType)) where
 setArrowType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_setArrowType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolButton_setArrowType" qtc_QStyleOptionToolButton_setArrowType :: Ptr (TQStyleOptionToolButton a) -> CLong -> IO ()

instance QsetFeatures (QStyleOptionToolButton a) ((ToolButtonFeatures)) where
 setFeatures x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_setFeatures cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStyleOptionToolButton_setFeatures" qtc_QStyleOptionToolButton_setFeatures :: Ptr (TQStyleOptionToolButton a) -> CLong -> IO ()

instance QsetFont (QStyleOptionToolButton a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionToolButton_setFont" qtc_QStyleOptionToolButton_setFont :: Ptr (TQStyleOptionToolButton a) -> Ptr (TQFont t1) -> IO ()

instance QsetIcon (QStyleOptionToolButton a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionToolButton_setIcon" qtc_QStyleOptionToolButton_setIcon :: Ptr (TQStyleOptionToolButton a) -> Ptr (TQIcon t1) -> IO ()

instance QqsetIconSize (QStyleOptionToolButton a) ((QSize t1)) where
 qsetIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton_setIconSize cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionToolButton_setIconSize" qtc_QStyleOptionToolButton_setIconSize :: Ptr (TQStyleOptionToolButton a) -> Ptr (TQSize t1) -> IO ()

instance QsetIconSize (QStyleOptionToolButton a) ((Size)) where
 setIconSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStyleOptionToolButton_setIconSize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStyleOptionToolButton_setIconSize_qth" qtc_QStyleOptionToolButton_setIconSize_qth :: Ptr (TQStyleOptionToolButton a) -> CInt -> CInt -> IO ()

instance QsetPos (QStyleOptionToolButton a) ((Point)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QStyleOptionToolButton_setPos_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QStyleOptionToolButton_setPos_qth" qtc_QStyleOptionToolButton_setPos_qth :: Ptr (TQStyleOptionToolButton a) -> CInt -> CInt -> IO ()

instance QqsetPos (QStyleOptionToolButton a) ((QPoint t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOptionToolButton_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOptionToolButton_setPos" qtc_QStyleOptionToolButton_setPos :: Ptr (TQStyleOptionToolButton a) -> Ptr (TQPoint t1) -> IO ()

instance QsetText (QStyleOptionToolButton a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStyleOptionToolButton_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStyleOptionToolButton_setText" qtc_QStyleOptionToolButton_setText :: Ptr (TQStyleOptionToolButton a) -> CWString -> IO ()

instance QsetToolButtonStyle (QStyleOptionToolButton a) ((ToolButtonStyle)) where
 setToolButtonStyle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_setToolButtonStyle cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOptionToolButton_setToolButtonStyle" qtc_QStyleOptionToolButton_setToolButtonStyle :: Ptr (TQStyleOptionToolButton a) -> CLong -> IO ()

instance Qtext (QStyleOptionToolButton a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_text cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_text" qtc_QStyleOptionToolButton_text :: Ptr (TQStyleOptionToolButton a) -> IO (Ptr (TQString ()))

instance QtoolButtonStyle (QStyleOptionToolButton a) (()) where
 toolButtonStyle x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_toolButtonStyle cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_toolButtonStyle" qtc_QStyleOptionToolButton_toolButtonStyle :: Ptr (TQStyleOptionToolButton a) -> IO CLong

qStyleOptionToolButton_delete :: QStyleOptionToolButton a -> IO ()
qStyleOptionToolButton_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOptionToolButton_delete cobj_x0

foreign import ccall "qtc_QStyleOptionToolButton_delete" qtc_QStyleOptionToolButton_delete :: Ptr (TQStyleOptionToolButton a) -> IO ()

