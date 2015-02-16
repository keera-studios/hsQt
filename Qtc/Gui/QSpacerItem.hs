{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QSpacerItem.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QSpacerItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:29
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSpacerItem (
  QqSpacerItem(..)
  ,QqSpacerItem_nf(..)
  ,QchangeSize(..)
  ,qSpacerItem_delete, qSpacerItem_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QSizePolicy

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QSpacerItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSpacerItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSpacerItem_userMethod" qtc_QSpacerItem_userMethod :: Ptr (TQSpacerItem a) -> CInt -> IO ()

instance QuserMethod (QSpacerItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSpacerItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSpacerItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSpacerItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSpacerItem_userMethodVariant" qtc_QSpacerItem_userMethodVariant :: Ptr (TQSpacerItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSpacerItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSpacerItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSpacerItem x1 where
  qSpacerItem :: x1 -> IO (QSpacerItem ())

instance QqSpacerItem ((QSpacerItem t1)) where
 qSpacerItem (x1)
  = withQSpacerItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpacerItem cobj_x1

foreign import ccall "qtc_QSpacerItem" qtc_QSpacerItem :: Ptr (TQSpacerItem t1) -> IO (Ptr (TQSpacerItem ()))

instance QqSpacerItem ((Int, Int)) where
 qSpacerItem (x1, x2)
  = withQSpacerItemResult $
    qtc_QSpacerItem1 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSpacerItem1" qtc_QSpacerItem1 :: CInt -> CInt -> IO (Ptr (TQSpacerItem ()))

instance QqSpacerItem ((Int, Int, Policy)) where
 qSpacerItem (x1, x2, x3)
  = withQSpacerItemResult $
    qtc_QSpacerItem2 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSpacerItem2" qtc_QSpacerItem2 :: CInt -> CInt -> CLong -> IO (Ptr (TQSpacerItem ()))

instance QqSpacerItem ((Int, Int, Policy, Policy)) where
 qSpacerItem (x1, x2, x3, x4)
  = withQSpacerItemResult $
    qtc_QSpacerItem3 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QSpacerItem3" qtc_QSpacerItem3 :: CInt -> CInt -> CLong -> CLong -> IO (Ptr (TQSpacerItem ()))

class QqSpacerItem_nf x1 where
  qSpacerItem_nf :: x1 -> IO (QSpacerItem ())

instance QqSpacerItem_nf ((QSpacerItem t1)) where
 qSpacerItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpacerItem cobj_x1

instance QqSpacerItem_nf ((Int, Int)) where
 qSpacerItem_nf (x1, x2)
  = withObjectRefResult $
    qtc_QSpacerItem1 (toCInt x1) (toCInt x2)

instance QqSpacerItem_nf ((Int, Int, Policy)) where
 qSpacerItem_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QSpacerItem2 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

instance QqSpacerItem_nf ((Int, Int, Policy, Policy)) where
 qSpacerItem_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    qtc_QSpacerItem3 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

class QchangeSize x1 where
 changeSize :: QSpacerItem a -> x1 -> IO ()

instance QchangeSize ((Int, Int)) where
 changeSize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_changeSize cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QSpacerItem_changeSize" qtc_QSpacerItem_changeSize :: Ptr (TQSpacerItem a) -> CInt -> CInt -> IO ()

instance QchangeSize ((Int, Int, Policy)) where
 changeSize x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_changeSize1 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSpacerItem_changeSize1" qtc_QSpacerItem_changeSize1 :: Ptr (TQSpacerItem a) -> CInt -> CInt -> CLong -> IO ()

instance QchangeSize ((Int, Int, Policy, Policy)) where
 changeSize x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_changeSize2 cobj_x0 (toCInt x1) (toCInt x2) (toCLong $ qEnum_toInt x3) (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QSpacerItem_changeSize2" qtc_QSpacerItem_changeSize2 :: Ptr (TQSpacerItem a) -> CInt -> CInt -> CLong -> CLong -> IO ()

instance QexpandingDirections (QSpacerItem ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_expandingDirections_h cobj_x0

foreign import ccall "qtc_QSpacerItem_expandingDirections_h" qtc_QSpacerItem_expandingDirections_h :: Ptr (TQSpacerItem a) -> IO CLong

instance QexpandingDirections (QSpacerItemSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_expandingDirections_h cobj_x0

instance Qqgeometry (QSpacerItem ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_geometry_h cobj_x0

foreign import ccall "qtc_QSpacerItem_geometry_h" qtc_QSpacerItem_geometry_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QSpacerItemSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_geometry_h cobj_x0

instance Qgeometry (QSpacerItem ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QSpacerItem_geometry_qth_h" qtc_QSpacerItem_geometry_qth_h :: Ptr (TQSpacerItem a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QSpacerItemSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QqisEmpty (QSpacerItem ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_isEmpty_h cobj_x0

foreign import ccall "qtc_QSpacerItem_isEmpty_h" qtc_QSpacerItem_isEmpty_h :: Ptr (TQSpacerItem a) -> IO CBool

instance QqisEmpty (QSpacerItemSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_isEmpty_h cobj_x0

instance QqmaximumSize (QSpacerItem ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_maximumSize_h cobj_x0

foreign import ccall "qtc_QSpacerItem_maximumSize_h" qtc_QSpacerItem_maximumSize_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QSpacerItemSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_maximumSize_h cobj_x0

instance QmaximumSize (QSpacerItem ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSpacerItem_maximumSize_qth_h" qtc_QSpacerItem_maximumSize_qth_h :: Ptr (TQSpacerItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QSpacerItemSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QqminimumSize (QSpacerItem ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumSize_h cobj_x0

foreign import ccall "qtc_QSpacerItem_minimumSize_h" qtc_QSpacerItem_minimumSize_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QSpacerItemSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumSize_h cobj_x0

instance QminimumSize (QSpacerItem ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSpacerItem_minimumSize_qth_h" qtc_QSpacerItem_minimumSize_qth_h :: Ptr (TQSpacerItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QSpacerItemSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QqsetGeometry (QSpacerItem ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpacerItem_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSpacerItem_setGeometry_h" qtc_QSpacerItem_setGeometry_h :: Ptr (TQSpacerItem a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QSpacerItemSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSpacerItem_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QSpacerItem ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSpacerItem_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QSpacerItem_setGeometry_qth_h" qtc_QSpacerItem_setGeometry_qth_h :: Ptr (TQSpacerItem a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QSpacerItemSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QSpacerItem_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqsizeHint (QSpacerItem ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_sizeHint_h cobj_x0

foreign import ccall "qtc_QSpacerItem_sizeHint_h" qtc_QSpacerItem_sizeHint_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QSpacerItemSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_sizeHint_h cobj_x0

instance QsizeHint (QSpacerItem ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QSpacerItem_sizeHint_qth_h" qtc_QSpacerItem_sizeHint_qth_h :: Ptr (TQSpacerItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QSpacerItemSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QspacerItem (QSpacerItem ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_spacerItem_h cobj_x0

foreign import ccall "qtc_QSpacerItem_spacerItem_h" qtc_QSpacerItem_spacerItem_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QSpacerItemSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_spacerItem_h cobj_x0

qSpacerItem_delete :: QSpacerItem a -> IO ()
qSpacerItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_delete cobj_x0

foreign import ccall "qtc_QSpacerItem_delete" qtc_QSpacerItem_delete :: Ptr (TQSpacerItem a) -> IO ()

qSpacerItem_delete1 :: QSpacerItem a -> IO ()
qSpacerItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_delete1 cobj_x0

foreign import ccall "qtc_QSpacerItem_delete1" qtc_QSpacerItem_delete1 :: Ptr (TQSpacerItem a) -> IO ()

instance QhasHeightForWidth (QSpacerItem ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QSpacerItem_hasHeightForWidth_h" qtc_QSpacerItem_hasHeightForWidth_h :: Ptr (TQSpacerItem a) -> IO CBool

instance QhasHeightForWidth (QSpacerItemSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QSpacerItem ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpacerItem_heightForWidth_h" qtc_QSpacerItem_heightForWidth_h :: Ptr (TQSpacerItem a) -> CInt -> IO CInt

instance QheightForWidth (QSpacerItemSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_heightForWidth_h cobj_x0 (toCInt x1)

instance Qinvalidate (QSpacerItem ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_invalidate_h cobj_x0

foreign import ccall "qtc_QSpacerItem_invalidate_h" qtc_QSpacerItem_invalidate_h :: Ptr (TQSpacerItem a) -> IO ()

instance Qinvalidate (QSpacerItemSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_invalidate_h cobj_x0

instance Qlayout (QSpacerItem ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_layout_h cobj_x0

foreign import ccall "qtc_QSpacerItem_layout_h" qtc_QSpacerItem_layout_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QSpacerItemSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_layout_h cobj_x0

instance QminimumHeightForWidth (QSpacerItem ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSpacerItem_minimumHeightForWidth_h" qtc_QSpacerItem_minimumHeightForWidth_h :: Ptr (TQSpacerItem a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QSpacerItemSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance Qwidget (QSpacerItem ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_widget_h cobj_x0

foreign import ccall "qtc_QSpacerItem_widget_h" qtc_QSpacerItem_widget_h :: Ptr (TQSpacerItem a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QSpacerItemSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSpacerItem_widget_h cobj_x0

