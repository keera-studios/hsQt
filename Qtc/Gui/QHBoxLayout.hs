{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHBoxLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QHBoxLayout (
  QqHBoxLayout(..)
  ,qHBoxLayout_delete
  ,qHBoxLayout_deleteLater
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

instance QuserMethod (QHBoxLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHBoxLayout_userMethod" qtc_QHBoxLayout_userMethod :: Ptr (TQHBoxLayout a) -> CInt -> IO ()

instance QuserMethod (QHBoxLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHBoxLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHBoxLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHBoxLayout_userMethodVariant" qtc_QHBoxLayout_userMethodVariant :: Ptr (TQHBoxLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHBoxLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHBoxLayout x1 where
  qHBoxLayout :: x1 -> IO (QHBoxLayout ())

instance QqHBoxLayout (()) where
 qHBoxLayout ()
  = withQHBoxLayoutResult $
    qtc_QHBoxLayout

foreign import ccall "qtc_QHBoxLayout" qtc_QHBoxLayout :: IO (Ptr (TQHBoxLayout ()))

instance QqHBoxLayout ((QWidget t1)) where
 qHBoxLayout (x1)
  = withQHBoxLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout1 cobj_x1

foreign import ccall "qtc_QHBoxLayout1" qtc_QHBoxLayout1 :: Ptr (TQWidget t1) -> IO (Ptr (TQHBoxLayout ()))

qHBoxLayout_delete :: QHBoxLayout a -> IO ()
qHBoxLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_delete cobj_x0

foreign import ccall "qtc_QHBoxLayout_delete" qtc_QHBoxLayout_delete :: Ptr (TQHBoxLayout a) -> IO ()

qHBoxLayout_deleteLater :: QHBoxLayout a -> IO ()
qHBoxLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_deleteLater cobj_x0

foreign import ccall "qtc_QHBoxLayout_deleteLater" qtc_QHBoxLayout_deleteLater :: Ptr (TQHBoxLayout a) -> IO ()

instance QaddItem (QHBoxLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_addItem_h" qtc_QHBoxLayout_addItem_h :: Ptr (TQHBoxLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QHBoxLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addItem_h cobj_x0 cobj_x1

instance QaddWidget (QHBoxLayout ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_addWidget" qtc_QHBoxLayout_addWidget :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QHBoxLayoutSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget cobj_x0 cobj_x1

instance QaddWidget (QHBoxLayout ()) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QHBoxLayout_addWidget1" qtc_QHBoxLayout_addWidget1 :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddWidget (QHBoxLayoutSc a) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

instance QaddWidget (QHBoxLayout ()) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QHBoxLayout_addWidget2" qtc_QHBoxLayout_addWidget2 :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> CLong -> IO ()

instance QaddWidget (QHBoxLayoutSc a) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

instance Qcount (QHBoxLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_count_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_count_h" qtc_QHBoxLayout_count_h :: Ptr (TQHBoxLayout a) -> IO CInt

instance Qcount (QHBoxLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_count_h cobj_x0

instance QexpandingDirections (QHBoxLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_expandingDirections_h" qtc_QHBoxLayout_expandingDirections_h :: Ptr (TQHBoxLayout a) -> IO CLong

instance QexpandingDirections (QHBoxLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_expandingDirections_h cobj_x0

instance QhasHeightForWidth (QHBoxLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_hasHeightForWidth_h" qtc_QHBoxLayout_hasHeightForWidth_h :: Ptr (TQHBoxLayout a) -> IO CBool

instance QhasHeightForWidth (QHBoxLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QHBoxLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_heightForWidth_h" qtc_QHBoxLayout_heightForWidth_h :: Ptr (TQHBoxLayout a) -> CInt -> IO CInt

instance QheightForWidth (QHBoxLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

instance QinsertItem (QHBoxLayout ()) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QHBoxLayout_insertItem" qtc_QHBoxLayout_insertItem :: Ptr (TQHBoxLayout a) -> CInt -> Ptr (TQLayoutItem t2) -> IO ()

instance QinsertItem (QHBoxLayoutSc a) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

instance Qinvalidate (QHBoxLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_invalidate_h" qtc_QHBoxLayout_invalidate_h :: Ptr (TQHBoxLayout a) -> IO ()

instance Qinvalidate (QHBoxLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_invalidate_h cobj_x0

instance QitemAt (QHBoxLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_itemAt_h" qtc_QHBoxLayout_itemAt_h :: Ptr (TQHBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QHBoxLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_itemAt_h cobj_x0 (toCInt x1)

instance QqmaximumSize (QHBoxLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_maximumSize_h" qtc_QHBoxLayout_maximumSize_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QHBoxLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_h cobj_x0

instance QmaximumSize (QHBoxLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_maximumSize_qth_h" qtc_QHBoxLayout_maximumSize_qth_h :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QHBoxLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth (QHBoxLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_minimumHeightForWidth_h" qtc_QHBoxLayout_minimumHeightForWidth_h :: Ptr (TQHBoxLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QHBoxLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QqminimumSize (QHBoxLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_minimumSize_h" qtc_QHBoxLayout_minimumSize_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QHBoxLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_h cobj_x0

instance QminimumSize (QHBoxLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_minimumSize_qth_h" qtc_QHBoxLayout_minimumSize_qth_h :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QHBoxLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QqsetGeometry (QHBoxLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_setGeometry_h" qtc_QHBoxLayout_setGeometry_h :: Ptr (TQHBoxLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QHBoxLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QHBoxLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QHBoxLayout_setGeometry_qth_h" qtc_QHBoxLayout_setGeometry_qth_h :: Ptr (TQHBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QHBoxLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetSpacing (QHBoxLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_setSpacing" qtc_QHBoxLayout_setSpacing :: Ptr (TQHBoxLayout a) -> CInt -> IO ()

instance QsetSpacing (QHBoxLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_setSpacing cobj_x0 (toCInt x1)

instance QqsizeHint (QHBoxLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_sizeHint_h" qtc_QHBoxLayout_sizeHint_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QHBoxLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_h cobj_x0

instance QsizeHint (QHBoxLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHBoxLayout_sizeHint_qth_h" qtc_QHBoxLayout_sizeHint_qth_h :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QHBoxLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qspacing (QHBoxLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacing cobj_x0

foreign import ccall "qtc_QHBoxLayout_spacing" qtc_QHBoxLayout_spacing :: Ptr (TQHBoxLayout a) -> IO CInt

instance Qspacing (QHBoxLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacing cobj_x0

instance QtakeAt (QHBoxLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHBoxLayout_takeAt_h" qtc_QHBoxLayout_takeAt_h :: Ptr (TQHBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QHBoxLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_takeAt_h cobj_x0 (toCInt x1)

instance QaddChildLayout (QHBoxLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_addChildLayout" qtc_QHBoxLayout_addChildLayout :: Ptr (TQHBoxLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QHBoxLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QHBoxLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_addChildWidget" qtc_QHBoxLayout_addChildWidget :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QHBoxLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_addChildWidget cobj_x0 cobj_x1

instance QqalignmentRect (QHBoxLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_alignmentRect" qtc_QHBoxLayout_alignmentRect :: Ptr (TQHBoxLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QHBoxLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QHBoxLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QHBoxLayout_alignmentRect_qth" qtc_QHBoxLayout_alignmentRect_qth :: Ptr (TQHBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QHBoxLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QHBoxLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_childEvent" qtc_QHBoxLayout_childEvent :: Ptr (TQHBoxLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QHBoxLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_childEvent cobj_x0 cobj_x1

instance QindexOf (QHBoxLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_indexOf_h" qtc_QHBoxLayout_indexOf_h :: Ptr (TQHBoxLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QHBoxLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_indexOf_h cobj_x0 cobj_x1

instance QqisEmpty (QHBoxLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_isEmpty_h" qtc_QHBoxLayout_isEmpty_h :: Ptr (TQHBoxLayout a) -> IO CBool

instance QqisEmpty (QHBoxLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_isEmpty_h cobj_x0

instance Qlayout (QHBoxLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_layout_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_layout_h" qtc_QHBoxLayout_layout_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QHBoxLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_layout_h cobj_x0

instance QwidgetEvent (QHBoxLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_widgetEvent" qtc_QHBoxLayout_widgetEvent :: Ptr (TQHBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QHBoxLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_widgetEvent cobj_x0 cobj_x1

instance Qqgeometry (QHBoxLayout ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_geometry_h" qtc_QHBoxLayout_geometry_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QHBoxLayoutSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_h cobj_x0

instance Qgeometry (QHBoxLayout ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QHBoxLayout_geometry_qth_h" qtc_QHBoxLayout_geometry_qth_h :: Ptr (TQHBoxLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QHBoxLayoutSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QspacerItem (QHBoxLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_spacerItem_h" qtc_QHBoxLayout_spacerItem_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QHBoxLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_spacerItem_h cobj_x0

instance Qwidget (QHBoxLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_widget_h cobj_x0

foreign import ccall "qtc_QHBoxLayout_widget_h" qtc_QHBoxLayout_widget_h :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QHBoxLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_widget_h cobj_x0

instance QconnectNotify (QHBoxLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHBoxLayout_connectNotify" qtc_QHBoxLayout_connectNotify :: Ptr (TQHBoxLayout a) -> CWString -> IO ()

instance QconnectNotify (QHBoxLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QHBoxLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_customEvent" qtc_QHBoxLayout_customEvent :: Ptr (TQHBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QHBoxLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QHBoxLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHBoxLayout_disconnectNotify" qtc_QHBoxLayout_disconnectNotify :: Ptr (TQHBoxLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QHBoxLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QHBoxLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_event_h" qtc_QHBoxLayout_event_h :: Ptr (TQHBoxLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QHBoxLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QHBoxLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHBoxLayout_eventFilter_h" qtc_QHBoxLayout_eventFilter_h :: Ptr (TQHBoxLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QHBoxLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QHBoxLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QHBoxLayout_receivers" qtc_QHBoxLayout_receivers :: Ptr (TQHBoxLayout a) -> CWString -> IO CInt

instance Qreceivers (QHBoxLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHBoxLayout_receivers cobj_x0 cstr_x1

instance Qsender (QHBoxLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sender cobj_x0

foreign import ccall "qtc_QHBoxLayout_sender" qtc_QHBoxLayout_sender :: Ptr (TQHBoxLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QHBoxLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHBoxLayout_sender cobj_x0

instance QtimerEvent (QHBoxLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHBoxLayout_timerEvent" qtc_QHBoxLayout_timerEvent :: Ptr (TQHBoxLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QHBoxLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHBoxLayout_timerEvent cobj_x0 cobj_x1

