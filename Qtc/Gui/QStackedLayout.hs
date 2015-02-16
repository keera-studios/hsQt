{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStackedLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStackedLayout (
  QqStackedLayout(..)
  ,qStackedLayout_delete
  ,qStackedLayout_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QStackedLayout
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QStackedLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStackedLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStackedLayout_userMethod" qtc_QStackedLayout_userMethod :: Ptr (TQStackedLayout a) -> CInt -> IO ()

instance QuserMethod (QStackedLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStackedLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStackedLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStackedLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStackedLayout_userMethodVariant" qtc_QStackedLayout_userMethodVariant :: Ptr (TQStackedLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStackedLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStackedLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqStackedLayout x1 where
  qStackedLayout :: x1 -> IO (QStackedLayout ())

instance QqStackedLayout (()) where
 qStackedLayout ()
  = withQStackedLayoutResult $
    qtc_QStackedLayout

foreign import ccall "qtc_QStackedLayout" qtc_QStackedLayout :: IO (Ptr (TQStackedLayout ()))

instance QqStackedLayout ((QWidget t1)) where
 qStackedLayout (x1)
  = withQStackedLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout1 cobj_x1

foreign import ccall "qtc_QStackedLayout1" qtc_QStackedLayout1 :: Ptr (TQWidget t1) -> IO (Ptr (TQStackedLayout ()))

instance QqStackedLayout ((QLayout t1)) where
 qStackedLayout (x1)
  = withQStackedLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout2 cobj_x1

foreign import ccall "qtc_QStackedLayout2" qtc_QStackedLayout2 :: Ptr (TQLayout t1) -> IO (Ptr (TQStackedLayout ()))

instance QaddItem (QStackedLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_addItem_h" qtc_QStackedLayout_addItem_h :: Ptr (TQStackedLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QStackedLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addItem_h cobj_x0 cobj_x1

instance QaddWidget (QStackedLayout ()) ((QWidget t1)) (IO (Int)) where
 addWidget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_addWidget" qtc_QStackedLayout_addWidget :: Ptr (TQStackedLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QaddWidget (QStackedLayoutSc a) ((QWidget t1)) (IO (Int)) where
 addWidget x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addWidget cobj_x0 cobj_x1

instance Qcount (QStackedLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_count_h cobj_x0

foreign import ccall "qtc_QStackedLayout_count_h" qtc_QStackedLayout_count_h :: Ptr (TQStackedLayout a) -> IO CInt

instance Qcount (QStackedLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_count_h cobj_x0

instance QcurrentIndex (QStackedLayout a) (()) (IO (Int)) where
 currentIndex x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_currentIndex cobj_x0

foreign import ccall "qtc_QStackedLayout_currentIndex" qtc_QStackedLayout_currentIndex :: Ptr (TQStackedLayout a) -> IO CInt

instance QcurrentWidget (QStackedLayout a) (()) where
 currentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_currentWidget cobj_x0

foreign import ccall "qtc_QStackedLayout_currentWidget" qtc_QStackedLayout_currentWidget :: Ptr (TQStackedLayout a) -> IO (Ptr (TQWidget ()))

instance QinsertWidget (QStackedLayout a) ((Int, QWidget t2)) (IO (Int)) where
 insertWidget x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedLayout_insertWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStackedLayout_insertWidget" qtc_QStackedLayout_insertWidget :: Ptr (TQStackedLayout a) -> CInt -> Ptr (TQWidget t2) -> IO CInt

instance QitemAt (QStackedLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_itemAt_h" qtc_QStackedLayout_itemAt_h :: Ptr (TQStackedLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QStackedLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_itemAt_h cobj_x0 (toCInt x1)

instance QqminimumSize (QStackedLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QStackedLayout_minimumSize_h" qtc_QStackedLayout_minimumSize_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QStackedLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumSize_h cobj_x0

instance QminimumSize (QStackedLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStackedLayout_minimumSize_qth_h" qtc_QStackedLayout_minimumSize_qth_h :: Ptr (TQStackedLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QStackedLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetCurrentIndex (QStackedLayout a) ((Int)) where
 setCurrentIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_setCurrentIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_setCurrentIndex" qtc_QStackedLayout_setCurrentIndex :: Ptr (TQStackedLayout a) -> CInt -> IO ()

instance QsetCurrentWidget (QStackedLayout a) ((QWidget t1)) where
 setCurrentWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_setCurrentWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_setCurrentWidget" qtc_QStackedLayout_setCurrentWidget :: Ptr (TQStackedLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QqsetGeometry (QStackedLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_setGeometry_h" qtc_QStackedLayout_setGeometry_h :: Ptr (TQStackedLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QStackedLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QStackedLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStackedLayout_setGeometry_qth_h" qtc_QStackedLayout_setGeometry_qth_h :: Ptr (TQStackedLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QStackedLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

setStackingMode :: QStackedLayout a -> ((StackingMode)) -> IO ()
setStackingMode x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_setStackingMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStackedLayout_setStackingMode" qtc_QStackedLayout_setStackingMode :: Ptr (TQStackedLayout a) -> CLong -> IO ()

stackingMode :: QStackedLayout a -> (()) -> IO StackingMode
stackingMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_stackingMode cobj_x0

foreign import ccall "qtc_QStackedLayout_stackingMode" qtc_QStackedLayout_stackingMode :: Ptr (TQStackedLayout a) -> IO CLong

instance QqsizeHint (QStackedLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QStackedLayout_sizeHint_h" qtc_QStackedLayout_sizeHint_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QStackedLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sizeHint_h cobj_x0

instance QsizeHint (QStackedLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStackedLayout_sizeHint_qth_h" qtc_QStackedLayout_sizeHint_qth_h :: Ptr (TQStackedLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QStackedLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QtakeAt (QStackedLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_takeAt_h" qtc_QStackedLayout_takeAt_h :: Ptr (TQStackedLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QStackedLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_takeAt_h cobj_x0 (toCInt x1)

instance Qwidget (QStackedLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_widget_h cobj_x0

foreign import ccall "qtc_QStackedLayout_widget_h" qtc_QStackedLayout_widget_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QStackedLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_widget_h cobj_x0

instance Qwidget (QStackedLayout ()) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_widget1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_widget1_h" qtc_QStackedLayout_widget1_h :: Ptr (TQStackedLayout a) -> CInt -> IO (Ptr (TQWidget ()))

instance Qwidget (QStackedLayoutSc a) ((Int)) where
 widget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_widget1_h cobj_x0 (toCInt x1)

qStackedLayout_delete :: QStackedLayout a -> IO ()
qStackedLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_delete cobj_x0

foreign import ccall "qtc_QStackedLayout_delete" qtc_QStackedLayout_delete :: Ptr (TQStackedLayout a) -> IO ()

qStackedLayout_deleteLater :: QStackedLayout a -> IO ()
qStackedLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_deleteLater cobj_x0

foreign import ccall "qtc_QStackedLayout_deleteLater" qtc_QStackedLayout_deleteLater :: Ptr (TQStackedLayout a) -> IO ()

instance QaddChildLayout (QStackedLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_addChildLayout" qtc_QStackedLayout_addChildLayout :: Ptr (TQStackedLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QStackedLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QStackedLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_addChildWidget" qtc_QStackedLayout_addChildWidget :: Ptr (TQStackedLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QStackedLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_addChildWidget cobj_x0 cobj_x1

instance QqalignmentRect (QStackedLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_alignmentRect" qtc_QStackedLayout_alignmentRect :: Ptr (TQStackedLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QStackedLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QStackedLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStackedLayout_alignmentRect_qth" qtc_QStackedLayout_alignmentRect_qth :: Ptr (TQStackedLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QStackedLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStackedLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QStackedLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_childEvent" qtc_QStackedLayout_childEvent :: Ptr (TQStackedLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QStackedLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_childEvent cobj_x0 cobj_x1

instance QexpandingDirections (QStackedLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QStackedLayout_expandingDirections_h" qtc_QStackedLayout_expandingDirections_h :: Ptr (TQStackedLayout a) -> IO CLong

instance QexpandingDirections (QStackedLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_expandingDirections_h cobj_x0

instance QindexOf (QStackedLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_indexOf_h" qtc_QStackedLayout_indexOf_h :: Ptr (TQStackedLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QStackedLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_indexOf_h cobj_x0 cobj_x1

instance Qinvalidate (QStackedLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QStackedLayout_invalidate_h" qtc_QStackedLayout_invalidate_h :: Ptr (TQStackedLayout a) -> IO ()

instance Qinvalidate (QStackedLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_invalidate_h cobj_x0

instance QqisEmpty (QStackedLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QStackedLayout_isEmpty_h" qtc_QStackedLayout_isEmpty_h :: Ptr (TQStackedLayout a) -> IO CBool

instance QqisEmpty (QStackedLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_isEmpty_h cobj_x0

instance Qlayout (QStackedLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_layout_h cobj_x0

foreign import ccall "qtc_QStackedLayout_layout_h" qtc_QStackedLayout_layout_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QStackedLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_layout_h cobj_x0

instance QqmaximumSize (QStackedLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QStackedLayout_maximumSize_h" qtc_QStackedLayout_maximumSize_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QStackedLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_maximumSize_h cobj_x0

instance QmaximumSize (QStackedLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStackedLayout_maximumSize_qth_h" qtc_QStackedLayout_maximumSize_qth_h :: Ptr (TQStackedLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QStackedLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetSpacing (QStackedLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_setSpacing" qtc_QStackedLayout_setSpacing :: Ptr (TQStackedLayout a) -> CInt -> IO ()

instance QsetSpacing (QStackedLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_setSpacing cobj_x0 (toCInt x1)

instance Qspacing (QStackedLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_spacing cobj_x0

foreign import ccall "qtc_QStackedLayout_spacing" qtc_QStackedLayout_spacing :: Ptr (TQStackedLayout a) -> IO CInt

instance Qspacing (QStackedLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_spacing cobj_x0

instance QwidgetEvent (QStackedLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_widgetEvent" qtc_QStackedLayout_widgetEvent :: Ptr (TQStackedLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QStackedLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_widgetEvent cobj_x0 cobj_x1

instance Qqgeometry (QStackedLayout ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_geometry_h cobj_x0

foreign import ccall "qtc_QStackedLayout_geometry_h" qtc_QStackedLayout_geometry_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QStackedLayoutSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_geometry_h cobj_x0

instance Qgeometry (QStackedLayout ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStackedLayout_geometry_qth_h" qtc_QStackedLayout_geometry_qth_h :: Ptr (TQStackedLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QStackedLayoutSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QhasHeightForWidth (QStackedLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QStackedLayout_hasHeightForWidth_h" qtc_QStackedLayout_hasHeightForWidth_h :: Ptr (TQStackedLayout a) -> IO CBool

instance QhasHeightForWidth (QStackedLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QStackedLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_heightForWidth_h" qtc_QStackedLayout_heightForWidth_h :: Ptr (TQStackedLayout a) -> CInt -> IO CInt

instance QheightForWidth (QStackedLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_heightForWidth_h cobj_x0 (toCInt x1)

instance QminimumHeightForWidth (QStackedLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStackedLayout_minimumHeightForWidth_h" qtc_QStackedLayout_minimumHeightForWidth_h :: Ptr (TQStackedLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QStackedLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QspacerItem (QStackedLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QStackedLayout_spacerItem_h" qtc_QStackedLayout_spacerItem_h :: Ptr (TQStackedLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QStackedLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_spacerItem_h cobj_x0

instance QconnectNotify (QStackedLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedLayout_connectNotify" qtc_QStackedLayout_connectNotify :: Ptr (TQStackedLayout a) -> CWString -> IO ()

instance QconnectNotify (QStackedLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QStackedLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_customEvent" qtc_QStackedLayout_customEvent :: Ptr (TQStackedLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QStackedLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QStackedLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedLayout_disconnectNotify" qtc_QStackedLayout_disconnectNotify :: Ptr (TQStackedLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QStackedLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QStackedLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_event_h" qtc_QStackedLayout_event_h :: Ptr (TQStackedLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QStackedLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QStackedLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QStackedLayout_eventFilter_h" qtc_QStackedLayout_eventFilter_h :: Ptr (TQStackedLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QStackedLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStackedLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QStackedLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QStackedLayout_receivers" qtc_QStackedLayout_receivers :: Ptr (TQStackedLayout a) -> CWString -> IO CInt

instance Qreceivers (QStackedLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStackedLayout_receivers cobj_x0 cstr_x1

instance Qsender (QStackedLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sender cobj_x0

foreign import ccall "qtc_QStackedLayout_sender" qtc_QStackedLayout_sender :: Ptr (TQStackedLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QStackedLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStackedLayout_sender cobj_x0

instance QtimerEvent (QStackedLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QStackedLayout_timerEvent" qtc_QStackedLayout_timerEvent :: Ptr (TQStackedLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QStackedLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStackedLayout_timerEvent cobj_x0 cobj_x1

