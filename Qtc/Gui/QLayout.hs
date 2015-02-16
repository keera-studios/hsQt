{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLayout (
  QqLayout(..)
  ,qqLayoutClosestAcceptableSize, qLayoutClosestAcceptableSize
  ,setSizeConstraint
  ,sizeConstraint
  ,totalHeightForWidth
  ,qtotalMaximumSize, totalMaximumSize
  ,qtotalMinimumSize, totalMinimumSize
  ,qtotalSizeHint, totalSizeHint
  ,qLayout_delete
  ,qLayout_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QLayout
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QLayout_userMethod" qtc_QLayout_userMethod :: Ptr (TQLayout a) -> CInt -> IO ()

instance QuserMethod (QLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QLayout_userMethodVariant" qtc_QLayout_userMethodVariant :: Ptr (TQLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqLayout x1 where
  qLayout :: x1 -> IO (QLayout ())

instance QqLayout (()) where
 qLayout ()
  = withQLayoutResult $
    qtc_QLayout

foreign import ccall "qtc_QLayout" qtc_QLayout :: IO (Ptr (TQLayout ()))

instance QqLayout ((QWidget t1)) where
 qLayout (x1)
  = withQLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout1 cobj_x1

foreign import ccall "qtc_QLayout1" qtc_QLayout1 :: Ptr (TQWidget t1) -> IO (Ptr (TQLayout ()))

instance Qactivate (QLayout a) (()) (IO (Bool)) where
 activate x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_activate cobj_x0

foreign import ccall "qtc_QLayout_activate" qtc_QLayout_activate :: Ptr (TQLayout a) -> IO CBool

instance QaddChildLayout (QLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_addChildLayout" qtc_QLayout_addChildLayout :: Ptr (TQLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_addChildWidget" qtc_QLayout_addChildWidget :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addChildWidget cobj_x0 cobj_x1

instance QaddItem (QLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_addItem_h" qtc_QLayout_addItem_h :: Ptr (TQLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addItem_h cobj_x0 cobj_x1

instance QaddWidget (QLayout ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_addWidget" qtc_QLayout_addWidget :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QLayoutSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_addWidget cobj_x0 cobj_x1

instance QqalignmentRect (QLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_alignmentRect" qtc_QLayout_alignmentRect :: Ptr (TQLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QLayout_alignmentRect_qth" qtc_QLayout_alignmentRect_qth :: Ptr (TQLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_childEvent" qtc_QLayout_childEvent :: Ptr (TQLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_childEvent cobj_x0 cobj_x1

qqLayoutClosestAcceptableSize :: ((QWidget t1, QSize t2)) -> IO (QSize ())
qqLayoutClosestAcceptableSize (x1, x2)
  = withQSizeResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLayout_closestAcceptableSize cobj_x1 cobj_x2

foreign import ccall "qtc_QLayout_closestAcceptableSize" qtc_QLayout_closestAcceptableSize :: Ptr (TQWidget t1) -> Ptr (TQSize t2) -> IO (Ptr (TQSize ()))

qLayoutClosestAcceptableSize :: ((QWidget t1, Size)) -> IO (Size)
qLayoutClosestAcceptableSize (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCSize x2 $ \csize_x2_w csize_x2_h ->
    qtc_QLayout_closestAcceptableSize_qth cobj_x1 csize_x2_w csize_x2_h  csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_closestAcceptableSize_qth" qtc_QLayout_closestAcceptableSize_qth :: Ptr (TQWidget t1) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QqcontentsRect (QLayout a) (()) where
 qcontentsRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_contentsRect cobj_x0

foreign import ccall "qtc_QLayout_contentsRect" qtc_QLayout_contentsRect :: Ptr (TQLayout a) -> IO (Ptr (TQRect ()))

instance QcontentsRect (QLayout a) (()) where
 contentsRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_contentsRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QLayout_contentsRect_qth" qtc_QLayout_contentsRect_qth :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qcount (QLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_count_h cobj_x0

foreign import ccall "qtc_QLayout_count_h" qtc_QLayout_count_h :: Ptr (TQLayout a) -> IO CInt

instance Qcount (QLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_count_h cobj_x0

instance QexpandingDirections (QLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QLayout_expandingDirections_h" qtc_QLayout_expandingDirections_h :: Ptr (TQLayout a) -> IO CLong

instance QexpandingDirections (QLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_expandingDirections_h cobj_x0

instance Qqgeometry (QLayout a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_geometry cobj_x0

foreign import ccall "qtc_QLayout_geometry" qtc_QLayout_geometry :: Ptr (TQLayout a) -> IO (Ptr (TQRect ()))

instance Qgeometry (QLayout a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_geometry_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QLayout_geometry_qth" qtc_QLayout_geometry_qth :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QindexOf (QLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_indexOf_h" qtc_QLayout_indexOf_h :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_indexOf_h cobj_x0 cobj_x1

instance Qinvalidate (QLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QLayout_invalidate_h" qtc_QLayout_invalidate_h :: Ptr (TQLayout a) -> IO ()

instance Qinvalidate (QLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_invalidate_h cobj_x0

instance QqisEmpty (QLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QLayout_isEmpty_h" qtc_QLayout_isEmpty_h :: Ptr (TQLayout a) -> IO CBool

instance QqisEmpty (QLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_isEmpty_h cobj_x0

instance QisEnabled (QLayout a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_isEnabled cobj_x0

foreign import ccall "qtc_QLayout_isEnabled" qtc_QLayout_isEnabled :: Ptr (TQLayout a) -> IO CBool

instance QitemAt (QLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_itemAt_h" qtc_QLayout_itemAt_h :: Ptr (TQLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_itemAt_h cobj_x0 (toCInt x1)

instance Qlayout (QLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_layout_h cobj_x0

foreign import ccall "qtc_QLayout_layout_h" qtc_QLayout_layout_h :: Ptr (TQLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_layout_h cobj_x0

instance Qmargin (QLayout a) (()) (IO (Int)) where
 margin x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_margin cobj_x0

foreign import ccall "qtc_QLayout_margin" qtc_QLayout_margin :: Ptr (TQLayout a) -> IO CInt

instance QqmaximumSize (QLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QLayout_maximumSize_h" qtc_QLayout_maximumSize_h :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_maximumSize_h cobj_x0

instance QmaximumSize (QLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_maximumSize_qth_h" qtc_QLayout_maximumSize_qth_h :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmenuBar (QLayout a) (()) (IO (QWidget ())) where
 menuBar x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_menuBar cobj_x0

foreign import ccall "qtc_QLayout_menuBar" qtc_QLayout_menuBar :: Ptr (TQLayout a) -> IO (Ptr (TQWidget ()))

instance QqminimumSize (QLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QLayout_minimumSize_h" qtc_QLayout_minimumSize_h :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumSize_h cobj_x0

instance QminimumSize (QLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_minimumSize_qth_h" qtc_QLayout_minimumSize_qth_h :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QparentWidget (QLayout a) (()) where
 parentWidget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_parentWidget cobj_x0

foreign import ccall "qtc_QLayout_parentWidget" qtc_QLayout_parentWidget :: Ptr (TQLayout a) -> IO (Ptr (TQWidget ()))

instance QremoveItem (QLayout a) ((QLayoutItem t1)) where
 removeItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_removeItem cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_removeItem" qtc_QLayout_removeItem :: Ptr (TQLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QremoveWidget (QLayout a) ((QWidget t1)) where
 removeWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_removeWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_removeWidget" qtc_QLayout_removeWidget :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QsetAlignment (QLayout a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QLayout_setAlignment" qtc_QLayout_setAlignment :: Ptr (TQLayout a) -> CLong -> IO ()

instance QsetAlignment (QLayout a) ((QLayout t1, Alignment)) (IO (Bool)) where
 setAlignment x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_setAlignment2 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QLayout_setAlignment2" qtc_QLayout_setAlignment2 :: Ptr (TQLayout a) -> Ptr (TQLayout t1) -> CLong -> IO CBool

instance QsetAlignment (QLayout a) ((QWidget t1, Alignment)) (IO (Bool)) where
 setAlignment x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_setAlignment1 cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QLayout_setAlignment1" qtc_QLayout_setAlignment1 :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> CLong -> IO CBool

instance QsetContentsMargins (QLayout a) ((Int, Int, Int, Int)) where
 setContentsMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setContentsMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLayout_setContentsMargins" qtc_QLayout_setContentsMargins :: Ptr (TQLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetEnabled (QLayout a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLayout_setEnabled" qtc_QLayout_setEnabled :: Ptr (TQLayout a) -> CBool -> IO ()

instance QqsetGeometry (QLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_setGeometry_h" qtc_QLayout_setGeometry_h :: Ptr (TQLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QLayout_setGeometry_qth_h" qtc_QLayout_setGeometry_qth_h :: Ptr (TQLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMargin (QLayout a) ((Int)) where
 setMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setMargin cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_setMargin" qtc_QLayout_setMargin :: Ptr (TQLayout a) -> CInt -> IO ()

instance QsetMenuBar (QLayout a) ((QWidget t1)) where
 setMenuBar x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_setMenuBar cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_setMenuBar" qtc_QLayout_setMenuBar :: Ptr (TQLayout a) -> Ptr (TQWidget t1) -> IO ()

setSizeConstraint :: QLayout a -> ((SizeConstraint)) -> IO ()
setSizeConstraint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setSizeConstraint cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLayout_setSizeConstraint" qtc_QLayout_setSizeConstraint :: Ptr (TQLayout a) -> CLong -> IO ()

instance QsetSpacing (QLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_setSpacing" qtc_QLayout_setSpacing :: Ptr (TQLayout a) -> CInt -> IO ()

instance QsetSpacing (QLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_setSpacing cobj_x0 (toCInt x1)

sizeConstraint :: QLayout a -> (()) -> IO (SizeConstraint)
sizeConstraint x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sizeConstraint cobj_x0

foreign import ccall "qtc_QLayout_sizeConstraint" qtc_QLayout_sizeConstraint :: Ptr (TQLayout a) -> IO CLong

instance Qspacing (QLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_spacing cobj_x0

foreign import ccall "qtc_QLayout_spacing" qtc_QLayout_spacing :: Ptr (TQLayout a) -> IO CInt

instance Qspacing (QLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_spacing cobj_x0

instance QtakeAt (QLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_takeAt_h" qtc_QLayout_takeAt_h :: Ptr (TQLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_takeAt_h cobj_x0 (toCInt x1)

totalHeightForWidth :: QLayout a -> ((Int)) -> IO (Int)
totalHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalHeightForWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_totalHeightForWidth" qtc_QLayout_totalHeightForWidth :: Ptr (TQLayout a) -> CInt -> IO CInt

qtotalMaximumSize :: QLayout a -> (()) -> IO (QSize ())
qtotalMaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalMaximumSize cobj_x0

foreign import ccall "qtc_QLayout_totalMaximumSize" qtc_QLayout_totalMaximumSize :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

totalMaximumSize :: QLayout a -> (()) -> IO (Size)
totalMaximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalMaximumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_totalMaximumSize_qth" qtc_QLayout_totalMaximumSize_qth :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

qtotalMinimumSize :: QLayout a -> (()) -> IO (QSize ())
qtotalMinimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalMinimumSize cobj_x0

foreign import ccall "qtc_QLayout_totalMinimumSize" qtc_QLayout_totalMinimumSize :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

totalMinimumSize :: QLayout a -> (()) -> IO (Size)
totalMinimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalMinimumSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_totalMinimumSize_qth" qtc_QLayout_totalMinimumSize_qth :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

qtotalSizeHint :: QLayout a -> (()) -> IO (QSize ())
qtotalSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalSizeHint cobj_x0

foreign import ccall "qtc_QLayout_totalSizeHint" qtc_QLayout_totalSizeHint :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

totalSizeHint :: QLayout a -> (()) -> IO (Size)
totalSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_totalSizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_totalSizeHint_qth" qtc_QLayout_totalSizeHint_qth :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qupdate (QLayout a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_update cobj_x0

foreign import ccall "qtc_QLayout_update" qtc_QLayout_update :: Ptr (TQLayout a) -> IO ()

instance QwidgetEvent (QLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_widgetEvent" qtc_QLayout_widgetEvent :: Ptr (TQLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_widgetEvent cobj_x0 cobj_x1

qLayout_delete :: QLayout a -> IO ()
qLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_delete cobj_x0

foreign import ccall "qtc_QLayout_delete" qtc_QLayout_delete :: Ptr (TQLayout a) -> IO ()

qLayout_deleteLater :: QLayout a -> IO ()
qLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_deleteLater cobj_x0

foreign import ccall "qtc_QLayout_deleteLater" qtc_QLayout_deleteLater :: Ptr (TQLayout a) -> IO ()

instance QhasHeightForWidth (QLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QLayout_hasHeightForWidth_h" qtc_QLayout_hasHeightForWidth_h :: Ptr (TQLayout a) -> IO CBool

instance QhasHeightForWidth (QLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_heightForWidth_h" qtc_QLayout_heightForWidth_h :: Ptr (TQLayout a) -> CInt -> IO CInt

instance QheightForWidth (QLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_heightForWidth_h cobj_x0 (toCInt x1)

instance QminimumHeightForWidth (QLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLayout_minimumHeightForWidth_h" qtc_QLayout_minimumHeightForWidth_h :: Ptr (TQLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QqsizeHint (QLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QLayout_sizeHint_h" qtc_QLayout_sizeHint_h :: Ptr (TQLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sizeHint_h cobj_x0

instance QsizeHint (QLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLayout_sizeHint_qth_h" qtc_QLayout_sizeHint_qth_h :: Ptr (TQLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QspacerItem (QLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QLayout_spacerItem_h" qtc_QLayout_spacerItem_h :: Ptr (TQLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_spacerItem_h cobj_x0

instance Qwidget (QLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_widget_h cobj_x0

foreign import ccall "qtc_QLayout_widget_h" qtc_QLayout_widget_h :: Ptr (TQLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_widget_h cobj_x0

instance QconnectNotify (QLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLayout_connectNotify" qtc_QLayout_connectNotify :: Ptr (TQLayout a) -> CWString -> IO ()

instance QconnectNotify (QLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_customEvent" qtc_QLayout_customEvent :: Ptr (TQLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLayout_disconnectNotify" qtc_QLayout_disconnectNotify :: Ptr (TQLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_event_h" qtc_QLayout_event_h :: Ptr (TQLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLayout_eventFilter_h" qtc_QLayout_eventFilter_h :: Ptr (TQLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QLayout_receivers" qtc_QLayout_receivers :: Ptr (TQLayout a) -> CWString -> IO CInt

instance Qreceivers (QLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLayout_receivers cobj_x0 cstr_x1

instance Qsender (QLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sender cobj_x0

foreign import ccall "qtc_QLayout_sender" qtc_QLayout_sender :: Ptr (TQLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLayout_sender cobj_x0

instance QtimerEvent (QLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLayout_timerEvent" qtc_QLayout_timerEvent :: Ptr (TQLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLayout_timerEvent cobj_x0 cobj_x1

