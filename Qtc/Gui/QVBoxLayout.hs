{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QVBoxLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QVBoxLayout (
  QqVBoxLayout(..)
  ,qVBoxLayout_delete
  ,qVBoxLayout_deleteLater
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

instance QuserMethod (QVBoxLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QVBoxLayout_userMethod" qtc_QVBoxLayout_userMethod :: Ptr (TQVBoxLayout a) -> CInt -> IO ()

instance QuserMethod (QVBoxLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QVBoxLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QVBoxLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QVBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QVBoxLayout_userMethodVariant" qtc_QVBoxLayout_userMethodVariant :: Ptr (TQVBoxLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QVBoxLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QVBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqVBoxLayout x1 where
  qVBoxLayout :: x1 -> IO (QVBoxLayout ())

instance QqVBoxLayout (()) where
 qVBoxLayout ()
  = withQVBoxLayoutResult $
    qtc_QVBoxLayout

foreign import ccall "qtc_QVBoxLayout" qtc_QVBoxLayout :: IO (Ptr (TQVBoxLayout ()))

instance QqVBoxLayout ((QWidget t1)) where
 qVBoxLayout (x1)
  = withQVBoxLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout1 cobj_x1

foreign import ccall "qtc_QVBoxLayout1" qtc_QVBoxLayout1 :: Ptr (TQWidget t1) -> IO (Ptr (TQVBoxLayout ()))

qVBoxLayout_delete :: QVBoxLayout a -> IO ()
qVBoxLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_delete cobj_x0

foreign import ccall "qtc_QVBoxLayout_delete" qtc_QVBoxLayout_delete :: Ptr (TQVBoxLayout a) -> IO ()

qVBoxLayout_deleteLater :: QVBoxLayout a -> IO ()
qVBoxLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_deleteLater cobj_x0

foreign import ccall "qtc_QVBoxLayout_deleteLater" qtc_QVBoxLayout_deleteLater :: Ptr (TQVBoxLayout a) -> IO ()

instance QaddItem (QVBoxLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_addItem_h" qtc_QVBoxLayout_addItem_h :: Ptr (TQVBoxLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QVBoxLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addItem_h cobj_x0 cobj_x1

instance QaddWidget (QVBoxLayout ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_addWidget" qtc_QVBoxLayout_addWidget :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QVBoxLayoutSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget cobj_x0 cobj_x1

instance QaddWidget (QVBoxLayout ()) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QVBoxLayout_addWidget1" qtc_QVBoxLayout_addWidget1 :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddWidget (QVBoxLayoutSc a) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

instance QaddWidget (QVBoxLayout ()) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QVBoxLayout_addWidget2" qtc_QVBoxLayout_addWidget2 :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> CLong -> IO ()

instance QaddWidget (QVBoxLayoutSc a) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

instance Qcount (QVBoxLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_count_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_count_h" qtc_QVBoxLayout_count_h :: Ptr (TQVBoxLayout a) -> IO CInt

instance Qcount (QVBoxLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_count_h cobj_x0

instance QexpandingDirections (QVBoxLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_expandingDirections_h" qtc_QVBoxLayout_expandingDirections_h :: Ptr (TQVBoxLayout a) -> IO CLong

instance QexpandingDirections (QVBoxLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_expandingDirections_h cobj_x0

instance QhasHeightForWidth (QVBoxLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_hasHeightForWidth_h" qtc_QVBoxLayout_hasHeightForWidth_h :: Ptr (TQVBoxLayout a) -> IO CBool

instance QhasHeightForWidth (QVBoxLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QVBoxLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_heightForWidth_h" qtc_QVBoxLayout_heightForWidth_h :: Ptr (TQVBoxLayout a) -> CInt -> IO CInt

instance QheightForWidth (QVBoxLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

instance QinsertItem (QVBoxLayout ()) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QVBoxLayout_insertItem" qtc_QVBoxLayout_insertItem :: Ptr (TQVBoxLayout a) -> CInt -> Ptr (TQLayoutItem t2) -> IO ()

instance QinsertItem (QVBoxLayoutSc a) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

instance Qinvalidate (QVBoxLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_invalidate_h" qtc_QVBoxLayout_invalidate_h :: Ptr (TQVBoxLayout a) -> IO ()

instance Qinvalidate (QVBoxLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_invalidate_h cobj_x0

instance QitemAt (QVBoxLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_itemAt_h" qtc_QVBoxLayout_itemAt_h :: Ptr (TQVBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QVBoxLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_itemAt_h cobj_x0 (toCInt x1)

instance QqmaximumSize (QVBoxLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_maximumSize_h" qtc_QVBoxLayout_maximumSize_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QVBoxLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_h cobj_x0

instance QmaximumSize (QVBoxLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_maximumSize_qth_h" qtc_QVBoxLayout_maximumSize_qth_h :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QVBoxLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth (QVBoxLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_minimumHeightForWidth_h" qtc_QVBoxLayout_minimumHeightForWidth_h :: Ptr (TQVBoxLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QVBoxLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QqminimumSize (QVBoxLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_minimumSize_h" qtc_QVBoxLayout_minimumSize_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QVBoxLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_h cobj_x0

instance QminimumSize (QVBoxLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_minimumSize_qth_h" qtc_QVBoxLayout_minimumSize_qth_h :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QVBoxLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QqsetGeometry (QVBoxLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_setGeometry_h" qtc_QVBoxLayout_setGeometry_h :: Ptr (TQVBoxLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QVBoxLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QVBoxLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QVBoxLayout_setGeometry_qth_h" qtc_QVBoxLayout_setGeometry_qth_h :: Ptr (TQVBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QVBoxLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetSpacing (QVBoxLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_setSpacing" qtc_QVBoxLayout_setSpacing :: Ptr (TQVBoxLayout a) -> CInt -> IO ()

instance QsetSpacing (QVBoxLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_setSpacing cobj_x0 (toCInt x1)

instance QqsizeHint (QVBoxLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_sizeHint_h" qtc_QVBoxLayout_sizeHint_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QVBoxLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_h cobj_x0

instance QsizeHint (QVBoxLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVBoxLayout_sizeHint_qth_h" qtc_QVBoxLayout_sizeHint_qth_h :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QVBoxLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qspacing (QVBoxLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacing cobj_x0

foreign import ccall "qtc_QVBoxLayout_spacing" qtc_QVBoxLayout_spacing :: Ptr (TQVBoxLayout a) -> IO CInt

instance Qspacing (QVBoxLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacing cobj_x0

instance QtakeAt (QVBoxLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVBoxLayout_takeAt_h" qtc_QVBoxLayout_takeAt_h :: Ptr (TQVBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QVBoxLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_takeAt_h cobj_x0 (toCInt x1)

instance QaddChildLayout (QVBoxLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_addChildLayout" qtc_QVBoxLayout_addChildLayout :: Ptr (TQVBoxLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QVBoxLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QVBoxLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_addChildWidget" qtc_QVBoxLayout_addChildWidget :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QVBoxLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_addChildWidget cobj_x0 cobj_x1

instance QqalignmentRect (QVBoxLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_alignmentRect" qtc_QVBoxLayout_alignmentRect :: Ptr (TQVBoxLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QVBoxLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QVBoxLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QVBoxLayout_alignmentRect_qth" qtc_QVBoxLayout_alignmentRect_qth :: Ptr (TQVBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QVBoxLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QVBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QVBoxLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_childEvent" qtc_QVBoxLayout_childEvent :: Ptr (TQVBoxLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QVBoxLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_childEvent cobj_x0 cobj_x1

instance QindexOf (QVBoxLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_indexOf_h" qtc_QVBoxLayout_indexOf_h :: Ptr (TQVBoxLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QVBoxLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_indexOf_h cobj_x0 cobj_x1

instance QqisEmpty (QVBoxLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_isEmpty_h" qtc_QVBoxLayout_isEmpty_h :: Ptr (TQVBoxLayout a) -> IO CBool

instance QqisEmpty (QVBoxLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_isEmpty_h cobj_x0

instance Qlayout (QVBoxLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_layout_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_layout_h" qtc_QVBoxLayout_layout_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QVBoxLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_layout_h cobj_x0

instance QwidgetEvent (QVBoxLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_widgetEvent" qtc_QVBoxLayout_widgetEvent :: Ptr (TQVBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QVBoxLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_widgetEvent cobj_x0 cobj_x1

instance Qqgeometry (QVBoxLayout ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_geometry_h" qtc_QVBoxLayout_geometry_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QVBoxLayoutSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_h cobj_x0

instance Qgeometry (QVBoxLayout ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QVBoxLayout_geometry_qth_h" qtc_QVBoxLayout_geometry_qth_h :: Ptr (TQVBoxLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QVBoxLayoutSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QspacerItem (QVBoxLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_spacerItem_h" qtc_QVBoxLayout_spacerItem_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QVBoxLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_spacerItem_h cobj_x0

instance Qwidget (QVBoxLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_widget_h cobj_x0

foreign import ccall "qtc_QVBoxLayout_widget_h" qtc_QVBoxLayout_widget_h :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QVBoxLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_widget_h cobj_x0

instance QconnectNotify (QVBoxLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QVBoxLayout_connectNotify" qtc_QVBoxLayout_connectNotify :: Ptr (TQVBoxLayout a) -> CWString -> IO ()

instance QconnectNotify (QVBoxLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QVBoxLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_customEvent" qtc_QVBoxLayout_customEvent :: Ptr (TQVBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QVBoxLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QVBoxLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QVBoxLayout_disconnectNotify" qtc_QVBoxLayout_disconnectNotify :: Ptr (TQVBoxLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QVBoxLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QVBoxLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_event_h" qtc_QVBoxLayout_event_h :: Ptr (TQVBoxLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QVBoxLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QVBoxLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QVBoxLayout_eventFilter_h" qtc_QVBoxLayout_eventFilter_h :: Ptr (TQVBoxLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QVBoxLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QVBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QVBoxLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QVBoxLayout_receivers" qtc_QVBoxLayout_receivers :: Ptr (TQVBoxLayout a) -> CWString -> IO CInt

instance Qreceivers (QVBoxLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVBoxLayout_receivers cobj_x0 cstr_x1

instance Qsender (QVBoxLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sender cobj_x0

foreign import ccall "qtc_QVBoxLayout_sender" qtc_QVBoxLayout_sender :: Ptr (TQVBoxLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QVBoxLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVBoxLayout_sender cobj_x0

instance QtimerEvent (QVBoxLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QVBoxLayout_timerEvent" qtc_QVBoxLayout_timerEvent :: Ptr (TQVBoxLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QVBoxLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVBoxLayout_timerEvent cobj_x0 cobj_x1

