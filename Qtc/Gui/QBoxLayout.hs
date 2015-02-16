{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QBoxLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QBoxLayout (
  QqBoxLayout(..)
  ,addSpacing
  ,QaddStretch(..)
  ,addStrut
  ,QinsertLayout(..)
  ,insertSpacing
  ,QinsertStretch(..)
  ,qBoxLayout_delete
  ,qBoxLayout_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QBoxLayout

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QBoxLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QBoxLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QBoxLayout_userMethod" qtc_QBoxLayout_userMethod :: Ptr (TQBoxLayout a) -> CInt -> IO ()

instance QuserMethod (QBoxLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QBoxLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QBoxLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QBoxLayout_userMethodVariant" qtc_QBoxLayout_userMethodVariant :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QBoxLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QBoxLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqBoxLayout x1 where
  qBoxLayout :: x1 -> IO (QBoxLayout ())

instance QqBoxLayout ((QBoxLayoutDirection)) where
 qBoxLayout (x1)
  = withQBoxLayoutResult $
    qtc_QBoxLayout (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBoxLayout" qtc_QBoxLayout :: CLong -> IO (Ptr (TQBoxLayout ()))

instance QqBoxLayout ((QBoxLayoutDirection, QWidget t2)) where
 qBoxLayout (x1, x2)
  = withQBoxLayoutResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout1 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QBoxLayout1" qtc_QBoxLayout1 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQBoxLayout ()))

instance QaddItem (QBoxLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_addItem_h" qtc_QBoxLayout_addItem_h :: Ptr (TQBoxLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QBoxLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addItem_h cobj_x0 cobj_x1

instance QaddLayout (QBoxLayout a) ((QLayout t1)) where
 addLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_addLayout" qtc_QBoxLayout_addLayout :: Ptr (TQBoxLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddLayout (QBoxLayout a) ((QLayout t1, Int)) where
 addLayout x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addLayout1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QBoxLayout_addLayout1" qtc_QBoxLayout_addLayout1 :: Ptr (TQBoxLayout a) -> Ptr (TQLayout t1) -> CInt -> IO ()

addSpacing :: QBoxLayout a -> ((Int)) -> IO ()
addSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_addSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_addSpacing" qtc_QBoxLayout_addSpacing :: Ptr (TQBoxLayout a) -> CInt -> IO ()

class QaddStretch x1 where
 addStretch :: QBoxLayout a -> x1 -> IO ()

instance QaddStretch (()) where
 addStretch x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_addStretch cobj_x0

foreign import ccall "qtc_QBoxLayout_addStretch" qtc_QBoxLayout_addStretch :: Ptr (TQBoxLayout a) -> IO ()

instance QaddStretch ((Int)) where
 addStretch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_addStretch1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_addStretch1" qtc_QBoxLayout_addStretch1 :: Ptr (TQBoxLayout a) -> CInt -> IO ()

addStrut :: QBoxLayout a -> ((Int)) -> IO ()
addStrut x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_addStrut cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_addStrut" qtc_QBoxLayout_addStrut :: Ptr (TQBoxLayout a) -> CInt -> IO ()

instance QaddWidget (QBoxLayout ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_addWidget" qtc_QBoxLayout_addWidget :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QBoxLayoutSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget cobj_x0 cobj_x1

instance QaddWidget (QBoxLayout ()) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QBoxLayout_addWidget1" qtc_QBoxLayout_addWidget1 :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> IO ()

instance QaddWidget (QBoxLayoutSc a) ((QWidget t1, Int)) (IO ()) where
 addWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2)

instance QaddWidget (QBoxLayout ()) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QBoxLayout_addWidget2" qtc_QBoxLayout_addWidget2 :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> CLong -> IO ()

instance QaddWidget (QBoxLayoutSc a) ((QWidget t1, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCLong $ qFlags_toInt x3)

instance Qcount (QBoxLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_count_h cobj_x0

foreign import ccall "qtc_QBoxLayout_count_h" qtc_QBoxLayout_count_h :: Ptr (TQBoxLayout a) -> IO CInt

instance Qcount (QBoxLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_count_h cobj_x0

instance Qdirection (QBoxLayout a) (()) (IO (QBoxLayoutDirection)) where
 direction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_direction cobj_x0

foreign import ccall "qtc_QBoxLayout_direction" qtc_QBoxLayout_direction :: Ptr (TQBoxLayout a) -> IO CLong

instance QexpandingDirections (QBoxLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QBoxLayout_expandingDirections_h" qtc_QBoxLayout_expandingDirections_h :: Ptr (TQBoxLayout a) -> IO CLong

instance QexpandingDirections (QBoxLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_expandingDirections_h cobj_x0

instance QhasHeightForWidth (QBoxLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QBoxLayout_hasHeightForWidth_h" qtc_QBoxLayout_hasHeightForWidth_h :: Ptr (TQBoxLayout a) -> IO CBool

instance QhasHeightForWidth (QBoxLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QBoxLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_heightForWidth_h" qtc_QBoxLayout_heightForWidth_h :: Ptr (TQBoxLayout a) -> CInt -> IO CInt

instance QheightForWidth (QBoxLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_heightForWidth_h cobj_x0 (toCInt x1)

instance QinsertItem (QBoxLayout ()) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QBoxLayout_insertItem" qtc_QBoxLayout_insertItem :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQLayoutItem t2) -> IO ()

instance QinsertItem (QBoxLayoutSc a) ((Int, QLayoutItem t2)) (IO ()) where
 insertItem x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertItem cobj_x0 (toCInt x1) cobj_x2

class QinsertLayout x1 where
 insertLayout :: QBoxLayout a -> x1 -> IO ()

instance QinsertLayout ((Int, QLayout t2)) where
 insertLayout x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertLayout cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QBoxLayout_insertLayout" qtc_QBoxLayout_insertLayout :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQLayout t2) -> IO ()

instance QinsertLayout ((Int, QLayout t2, Int)) where
 insertLayout x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertLayout1 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3)

foreign import ccall "qtc_QBoxLayout_insertLayout1" qtc_QBoxLayout_insertLayout1 :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQLayout t2) -> CInt -> IO ()

insertSpacing :: QBoxLayout a -> ((Int, Int)) -> IO ()
insertSpacing x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_insertSpacing cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QBoxLayout_insertSpacing" qtc_QBoxLayout_insertSpacing :: Ptr (TQBoxLayout a) -> CInt -> CInt -> IO ()

class QinsertStretch x1 where
 insertStretch :: QBoxLayout a -> x1 -> IO ()

instance QinsertStretch ((Int)) where
 insertStretch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_insertStretch cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_insertStretch" qtc_QBoxLayout_insertStretch :: Ptr (TQBoxLayout a) -> CInt -> IO ()

instance QinsertStretch ((Int, Int)) where
 insertStretch x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_insertStretch1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QBoxLayout_insertStretch1" qtc_QBoxLayout_insertStretch1 :: Ptr (TQBoxLayout a) -> CInt -> CInt -> IO ()

instance QinsertWidget (QBoxLayout a) ((Int, QWidget t2)) (IO ()) where
 insertWidget x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertWidget cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QBoxLayout_insertWidget" qtc_QBoxLayout_insertWidget :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQWidget t2) -> IO ()

instance QinsertWidget (QBoxLayout a) ((Int, QWidget t2, Int)) (IO ()) where
 insertWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertWidget1 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3)

foreign import ccall "qtc_QBoxLayout_insertWidget1" qtc_QBoxLayout_insertWidget1 :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQWidget t2) -> CInt -> IO ()

instance QinsertWidget (QBoxLayout a) ((Int, QWidget t2, Int, Alignment)) (IO ()) where
 insertWidget x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_insertWidget2 cobj_x0 (toCInt x1) cobj_x2 (toCInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QBoxLayout_insertWidget2" qtc_QBoxLayout_insertWidget2 :: Ptr (TQBoxLayout a) -> CInt -> Ptr (TQWidget t2) -> CInt -> CLong -> IO ()

instance Qinvalidate (QBoxLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QBoxLayout_invalidate_h" qtc_QBoxLayout_invalidate_h :: Ptr (TQBoxLayout a) -> IO ()

instance Qinvalidate (QBoxLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_invalidate_h cobj_x0

instance QitemAt (QBoxLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_itemAt_h" qtc_QBoxLayout_itemAt_h :: Ptr (TQBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QBoxLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_itemAt_h cobj_x0 (toCInt x1)

instance QqmaximumSize (QBoxLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QBoxLayout_maximumSize_h" qtc_QBoxLayout_maximumSize_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QBoxLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_maximumSize_h cobj_x0

instance QmaximumSize (QBoxLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QBoxLayout_maximumSize_qth_h" qtc_QBoxLayout_maximumSize_qth_h :: Ptr (TQBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QBoxLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth (QBoxLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_minimumHeightForWidth_h" qtc_QBoxLayout_minimumHeightForWidth_h :: Ptr (TQBoxLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QBoxLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QqminimumSize (QBoxLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QBoxLayout_minimumSize_h" qtc_QBoxLayout_minimumSize_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QBoxLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumSize_h cobj_x0

instance QminimumSize (QBoxLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QBoxLayout_minimumSize_qth_h" qtc_QBoxLayout_minimumSize_qth_h :: Ptr (TQBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QBoxLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetDirection (QBoxLayout a) ((QBoxLayoutDirection)) where
 setDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_setDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QBoxLayout_setDirection" qtc_QBoxLayout_setDirection :: Ptr (TQBoxLayout a) -> CLong -> IO ()

instance QqsetGeometry (QBoxLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_setGeometry_h" qtc_QBoxLayout_setGeometry_h :: Ptr (TQBoxLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QBoxLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QBoxLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QBoxLayout_setGeometry_qth_h" qtc_QBoxLayout_setGeometry_qth_h :: Ptr (TQBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QBoxLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QBoxLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetSpacing (QBoxLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_setSpacing" qtc_QBoxLayout_setSpacing :: Ptr (TQBoxLayout a) -> CInt -> IO ()

instance QsetSpacing (QBoxLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_setSpacing cobj_x0 (toCInt x1)

instance QsetStretchFactor (QBoxLayout a) ((QLayout t1, Int)) (IO (Bool)) where
 setStretchFactor x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_setStretchFactor1 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QBoxLayout_setStretchFactor1" qtc_QBoxLayout_setStretchFactor1 :: Ptr (TQBoxLayout a) -> Ptr (TQLayout t1) -> CInt -> IO CBool

instance QsetStretchFactor (QBoxLayout a) ((QWidget t1, Int)) (IO (Bool)) where
 setStretchFactor x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_setStretchFactor cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QBoxLayout_setStretchFactor" qtc_QBoxLayout_setStretchFactor :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> CInt -> IO CBool

instance QqsizeHint (QBoxLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QBoxLayout_sizeHint_h" qtc_QBoxLayout_sizeHint_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QBoxLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sizeHint_h cobj_x0

instance QsizeHint (QBoxLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QBoxLayout_sizeHint_qth_h" qtc_QBoxLayout_sizeHint_qth_h :: Ptr (TQBoxLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QBoxLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qspacing (QBoxLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_spacing cobj_x0

foreign import ccall "qtc_QBoxLayout_spacing" qtc_QBoxLayout_spacing :: Ptr (TQBoxLayout a) -> IO CInt

instance Qspacing (QBoxLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_spacing cobj_x0

instance QtakeAt (QBoxLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QBoxLayout_takeAt_h" qtc_QBoxLayout_takeAt_h :: Ptr (TQBoxLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QBoxLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_takeAt_h cobj_x0 (toCInt x1)

qBoxLayout_delete :: QBoxLayout a -> IO ()
qBoxLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_delete cobj_x0

foreign import ccall "qtc_QBoxLayout_delete" qtc_QBoxLayout_delete :: Ptr (TQBoxLayout a) -> IO ()

qBoxLayout_deleteLater :: QBoxLayout a -> IO ()
qBoxLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_deleteLater cobj_x0

foreign import ccall "qtc_QBoxLayout_deleteLater" qtc_QBoxLayout_deleteLater :: Ptr (TQBoxLayout a) -> IO ()

instance QaddChildLayout (QBoxLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_addChildLayout" qtc_QBoxLayout_addChildLayout :: Ptr (TQBoxLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QBoxLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QBoxLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_addChildWidget" qtc_QBoxLayout_addChildWidget :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QBoxLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_addChildWidget cobj_x0 cobj_x1

instance QqalignmentRect (QBoxLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_alignmentRect" qtc_QBoxLayout_alignmentRect :: Ptr (TQBoxLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QBoxLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QBoxLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QBoxLayout_alignmentRect_qth" qtc_QBoxLayout_alignmentRect_qth :: Ptr (TQBoxLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QBoxLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QBoxLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QBoxLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_childEvent" qtc_QBoxLayout_childEvent :: Ptr (TQBoxLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QBoxLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_childEvent cobj_x0 cobj_x1

instance QindexOf (QBoxLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_indexOf_h" qtc_QBoxLayout_indexOf_h :: Ptr (TQBoxLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QBoxLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_indexOf_h cobj_x0 cobj_x1

instance QqisEmpty (QBoxLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QBoxLayout_isEmpty_h" qtc_QBoxLayout_isEmpty_h :: Ptr (TQBoxLayout a) -> IO CBool

instance QqisEmpty (QBoxLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_isEmpty_h cobj_x0

instance Qlayout (QBoxLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_layout_h cobj_x0

foreign import ccall "qtc_QBoxLayout_layout_h" qtc_QBoxLayout_layout_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QBoxLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_layout_h cobj_x0

instance QwidgetEvent (QBoxLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_widgetEvent" qtc_QBoxLayout_widgetEvent :: Ptr (TQBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QBoxLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_widgetEvent cobj_x0 cobj_x1

instance Qqgeometry (QBoxLayout ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_geometry_h cobj_x0

foreign import ccall "qtc_QBoxLayout_geometry_h" qtc_QBoxLayout_geometry_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QBoxLayoutSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_geometry_h cobj_x0

instance Qgeometry (QBoxLayout ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QBoxLayout_geometry_qth_h" qtc_QBoxLayout_geometry_qth_h :: Ptr (TQBoxLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QBoxLayoutSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QspacerItem (QBoxLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QBoxLayout_spacerItem_h" qtc_QBoxLayout_spacerItem_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QBoxLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_spacerItem_h cobj_x0

instance Qwidget (QBoxLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_widget_h cobj_x0

foreign import ccall "qtc_QBoxLayout_widget_h" qtc_QBoxLayout_widget_h :: Ptr (TQBoxLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QBoxLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_widget_h cobj_x0

instance QconnectNotify (QBoxLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QBoxLayout_connectNotify" qtc_QBoxLayout_connectNotify :: Ptr (TQBoxLayout a) -> CWString -> IO ()

instance QconnectNotify (QBoxLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QBoxLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_customEvent" qtc_QBoxLayout_customEvent :: Ptr (TQBoxLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QBoxLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QBoxLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QBoxLayout_disconnectNotify" qtc_QBoxLayout_disconnectNotify :: Ptr (TQBoxLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QBoxLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QBoxLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_event_h" qtc_QBoxLayout_event_h :: Ptr (TQBoxLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QBoxLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QBoxLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QBoxLayout_eventFilter_h" qtc_QBoxLayout_eventFilter_h :: Ptr (TQBoxLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QBoxLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QBoxLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QBoxLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QBoxLayout_receivers" qtc_QBoxLayout_receivers :: Ptr (TQBoxLayout a) -> CWString -> IO CInt

instance Qreceivers (QBoxLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QBoxLayout_receivers cobj_x0 cstr_x1

instance Qsender (QBoxLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sender cobj_x0

foreign import ccall "qtc_QBoxLayout_sender" qtc_QBoxLayout_sender :: Ptr (TQBoxLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QBoxLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QBoxLayout_sender cobj_x0

instance QtimerEvent (QBoxLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QBoxLayout_timerEvent" qtc_QBoxLayout_timerEvent :: Ptr (TQBoxLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QBoxLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QBoxLayout_timerEvent cobj_x0 cobj_x1

