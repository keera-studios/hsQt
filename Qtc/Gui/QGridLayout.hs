{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGridLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGridLayout (
  QqGridLayout(..)
  ,qcellRect, cellRect
  ,columnMinimumWidth
  ,columnStretch
  ,horizontalSpacing
  ,originCorner
  ,rowMinimumHeight
  ,rowStretch
  ,setColumnMinimumWidth
  ,setColumnStretch
  ,setDefaultPositioning
  ,setHorizontalSpacing
  ,setOriginCorner
  ,setRowMinimumHeight
  ,setRowStretch
  ,setVerticalSpacing
  ,verticalSpacing
  ,qGridLayout_delete
  ,qGridLayout_deleteLater
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

instance QuserMethod (QGridLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGridLayout_userMethod" qtc_QGridLayout_userMethod :: Ptr (TQGridLayout a) -> CInt -> IO ()

instance QuserMethod (QGridLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGridLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGridLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGridLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGridLayout_userMethodVariant" qtc_QGridLayout_userMethodVariant :: Ptr (TQGridLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGridLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGridLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGridLayout x1 where
  qGridLayout :: x1 -> IO (QGridLayout ())

instance QqGridLayout (()) where
 qGridLayout ()
  = withQGridLayoutResult $
    qtc_QGridLayout

foreign import ccall "qtc_QGridLayout" qtc_QGridLayout :: IO (Ptr (TQGridLayout ()))

instance QqGridLayout ((QWidget t1)) where
 qGridLayout (x1)
  = withQGridLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout1 cobj_x1

foreign import ccall "qtc_QGridLayout1" qtc_QGridLayout1 :: Ptr (TQWidget t1) -> IO (Ptr (TQGridLayout ()))

instance QaddLayout (QGridLayout a) ((QLayout t1, Int, Int)) where
 addLayout x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addLayout cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGridLayout_addLayout" qtc_QGridLayout_addLayout :: Ptr (TQGridLayout a) -> Ptr (TQLayout t1) -> CInt -> CInt -> IO ()

instance QaddLayout (QGridLayout a) ((QLayout t1, Int, Int, Alignment)) where
 addLayout x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addLayout1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QGridLayout_addLayout1" qtc_QGridLayout_addLayout1 :: Ptr (TQGridLayout a) -> Ptr (TQLayout t1) -> CInt -> CInt -> CLong -> IO ()

instance QaddLayout (QGridLayout a) ((QLayout t1, Int, Int, Int, Int)) where
 addLayout x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addLayout2 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QGridLayout_addLayout2" qtc_QGridLayout_addLayout2 :: Ptr (TQGridLayout a) -> Ptr (TQLayout t1) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QaddLayout (QGridLayout a) ((QLayout t1, Int, Int, Int, Int, Alignment)) where
 addLayout x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addLayout3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QGridLayout_addLayout3" qtc_QGridLayout_addLayout3 :: Ptr (TQGridLayout a) -> Ptr (TQLayout t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QaddWidget (QGridLayout ()) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_addWidget" qtc_QGridLayout_addWidget :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddWidget (QGridLayoutSc a) ((QWidget t1)) (IO ()) where
 addWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget cobj_x0 cobj_x1

instance QaddWidget (QGridLayout ()) ((QWidget t1, Int, Int)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGridLayout_addWidget1" qtc_QGridLayout_addWidget1 :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> CInt -> CInt -> IO ()

instance QaddWidget (QGridLayoutSc a) ((QWidget t1, Int, Int)) (IO ()) where
 addWidget x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget1 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QaddWidget (QGridLayout ()) ((QWidget t1, Int, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QGridLayout_addWidget2" qtc_QGridLayout_addWidget2 :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> CInt -> CInt -> CLong -> IO ()

instance QaddWidget (QGridLayoutSc a) ((QWidget t1, Int, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget2 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCLong $ qFlags_toInt x4)

instance QaddWidget (QGridLayout ()) ((QWidget t1, Int, Int, Int, Int)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QGridLayout_addWidget3" qtc_QGridLayout_addWidget3 :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QaddWidget (QGridLayoutSc a) ((QWidget t1, Int, Int, Int, Int)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5)

instance QaddWidget (QGridLayout ()) ((QWidget t1, Int, Int, Int, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget4 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QGridLayout_addWidget4" qtc_QGridLayout_addWidget4 :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QaddWidget (QGridLayoutSc a) ((QWidget t1, Int, Int, Int, Int, Alignment)) (IO ()) where
 addWidget x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addWidget4 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3) (toCInt x4) (toCInt x5) (toCLong $ qFlags_toInt x6)

qcellRect :: QGridLayout a -> ((Int, Int)) -> IO (QRect ())
qcellRect x0 (x1, x2)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_cellRect cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGridLayout_cellRect" qtc_QGridLayout_cellRect :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO (Ptr (TQRect ()))

cellRect :: QGridLayout a -> ((Int, Int)) -> IO (Rect)
cellRect x0 (x1, x2)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_cellRect_qth cobj_x0 (toCInt x1) (toCInt x2) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QGridLayout_cellRect_qth" qtc_QGridLayout_cellRect_qth :: Ptr (TQGridLayout a) -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QcolumnCount (QGridLayout a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_columnCount cobj_x0

foreign import ccall "qtc_QGridLayout_columnCount" qtc_QGridLayout_columnCount :: Ptr (TQGridLayout a) -> IO CInt

columnMinimumWidth :: QGridLayout a -> ((Int)) -> IO (Int)
columnMinimumWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_columnMinimumWidth cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_columnMinimumWidth" qtc_QGridLayout_columnMinimumWidth :: Ptr (TQGridLayout a) -> CInt -> IO CInt

columnStretch :: QGridLayout a -> ((Int)) -> IO (Int)
columnStretch x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_columnStretch cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_columnStretch" qtc_QGridLayout_columnStretch :: Ptr (TQGridLayout a) -> CInt -> IO CInt

instance Qcount (QGridLayout ()) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_count_h cobj_x0

foreign import ccall "qtc_QGridLayout_count_h" qtc_QGridLayout_count_h :: Ptr (TQGridLayout a) -> IO CInt

instance Qcount (QGridLayoutSc a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_count_h cobj_x0

instance QexpandingDirections (QGridLayout ()) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_expandingDirections_h cobj_x0

foreign import ccall "qtc_QGridLayout_expandingDirections_h" qtc_QGridLayout_expandingDirections_h :: Ptr (TQGridLayout a) -> IO CLong

instance QexpandingDirections (QGridLayoutSc a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_expandingDirections_h cobj_x0

instance QhasHeightForWidth (QGridLayout ()) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_hasHeightForWidth_h cobj_x0

foreign import ccall "qtc_QGridLayout_hasHeightForWidth_h" qtc_QGridLayout_hasHeightForWidth_h :: Ptr (TQGridLayout a) -> IO CBool

instance QhasHeightForWidth (QGridLayoutSc a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_hasHeightForWidth_h cobj_x0

instance QheightForWidth (QGridLayout ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_heightForWidth_h" qtc_QGridLayout_heightForWidth_h :: Ptr (TQGridLayout a) -> CInt -> IO CInt

instance QheightForWidth (QGridLayoutSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_heightForWidth_h cobj_x0 (toCInt x1)

horizontalSpacing :: QGridLayout a -> (()) -> IO (Int)
horizontalSpacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_horizontalSpacing cobj_x0

foreign import ccall "qtc_QGridLayout_horizontalSpacing" qtc_QGridLayout_horizontalSpacing :: Ptr (TQGridLayout a) -> IO CInt

instance Qinvalidate (QGridLayout ()) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_invalidate_h cobj_x0

foreign import ccall "qtc_QGridLayout_invalidate_h" qtc_QGridLayout_invalidate_h :: Ptr (TQGridLayout a) -> IO ()

instance Qinvalidate (QGridLayoutSc a) (()) where
 invalidate x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_invalidate_h cobj_x0

instance QitemAt (QGridLayout ()) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_itemAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_itemAt_h" qtc_QGridLayout_itemAt_h :: Ptr (TQGridLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QitemAt (QGridLayoutSc a) ((Int)) (IO (QLayoutItem ())) where
 itemAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_itemAt_h cobj_x0 (toCInt x1)

instance QqmaximumSize (QGridLayout ()) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_h cobj_x0

foreign import ccall "qtc_QGridLayout_maximumSize_h" qtc_QGridLayout_maximumSize_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqmaximumSize (QGridLayoutSc a) (()) where
 qmaximumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_h cobj_x0

instance QmaximumSize (QGridLayout ()) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_maximumSize_qth_h" qtc_QGridLayout_maximumSize_qth_h :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QmaximumSize (QGridLayoutSc a) (()) where
 maximumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_maximumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QminimumHeightForWidth (QGridLayout ()) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_minimumHeightForWidth_h" qtc_QGridLayout_minimumHeightForWidth_h :: Ptr (TQGridLayout a) -> CInt -> IO CInt

instance QminimumHeightForWidth (QGridLayoutSc a) ((Int)) where
 minimumHeightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumHeightForWidth_h cobj_x0 (toCInt x1)

instance QqminimumSize (QGridLayout ()) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_h cobj_x0

foreign import ccall "qtc_QGridLayout_minimumSize_h" qtc_QGridLayout_minimumSize_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqminimumSize (QGridLayoutSc a) (()) where
 qminimumSize x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_h cobj_x0

instance QminimumSize (QGridLayout ()) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_minimumSize_qth_h" qtc_QGridLayout_minimumSize_qth_h :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSize (QGridLayoutSc a) (()) where
 minimumSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_minimumSize_qth_h cobj_x0 csize_ret_w csize_ret_h

originCorner :: QGridLayout a -> (()) -> IO (Corner)
originCorner x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_originCorner cobj_x0

foreign import ccall "qtc_QGridLayout_originCorner" qtc_QGridLayout_originCorner :: Ptr (TQGridLayout a) -> IO CLong

instance QrowCount (QGridLayout a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_rowCount cobj_x0

foreign import ccall "qtc_QGridLayout_rowCount" qtc_QGridLayout_rowCount :: Ptr (TQGridLayout a) -> IO CInt

rowMinimumHeight :: QGridLayout a -> ((Int)) -> IO (Int)
rowMinimumHeight x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_rowMinimumHeight cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_rowMinimumHeight" qtc_QGridLayout_rowMinimumHeight :: Ptr (TQGridLayout a) -> CInt -> IO CInt

rowStretch :: QGridLayout a -> ((Int)) -> IO (Int)
rowStretch x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_rowStretch cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_rowStretch" qtc_QGridLayout_rowStretch :: Ptr (TQGridLayout a) -> CInt -> IO CInt

setColumnMinimumWidth :: QGridLayout a -> ((Int, Int)) -> IO ()
setColumnMinimumWidth x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setColumnMinimumWidth cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGridLayout_setColumnMinimumWidth" qtc_QGridLayout_setColumnMinimumWidth :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO ()

setColumnStretch :: QGridLayout a -> ((Int, Int)) -> IO ()
setColumnStretch x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setColumnStretch cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGridLayout_setColumnStretch" qtc_QGridLayout_setColumnStretch :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO ()

setDefaultPositioning :: QGridLayout a -> ((Int, QtOrientation)) -> IO ()
setDefaultPositioning x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setDefaultPositioning cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGridLayout_setDefaultPositioning" qtc_QGridLayout_setDefaultPositioning :: Ptr (TQGridLayout a) -> CInt -> CLong -> IO ()

instance QqsetGeometry (QGridLayout ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_setGeometry_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_setGeometry_h" qtc_QGridLayout_setGeometry_h :: Ptr (TQGridLayout a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QGridLayoutSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_setGeometry_h cobj_x0 cobj_x1

instance QsetGeometry (QGridLayout ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QGridLayout_setGeometry_qth_h" qtc_QGridLayout_setGeometry_qth_h :: Ptr (TQGridLayout a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QGridLayoutSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_setGeometry_qth_h cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

setHorizontalSpacing :: QGridLayout a -> ((Int)) -> IO ()
setHorizontalSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setHorizontalSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_setHorizontalSpacing" qtc_QGridLayout_setHorizontalSpacing :: Ptr (TQGridLayout a) -> CInt -> IO ()

setOriginCorner :: QGridLayout a -> ((Corner)) -> IO ()
setOriginCorner x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setOriginCorner cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGridLayout_setOriginCorner" qtc_QGridLayout_setOriginCorner :: Ptr (TQGridLayout a) -> CLong -> IO ()

setRowMinimumHeight :: QGridLayout a -> ((Int, Int)) -> IO ()
setRowMinimumHeight x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setRowMinimumHeight cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGridLayout_setRowMinimumHeight" qtc_QGridLayout_setRowMinimumHeight :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO ()

setRowStretch :: QGridLayout a -> ((Int, Int)) -> IO ()
setRowStretch x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setRowStretch cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QGridLayout_setRowStretch" qtc_QGridLayout_setRowStretch :: Ptr (TQGridLayout a) -> CInt -> CInt -> IO ()

instance QsetSpacing (QGridLayout ()) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_setSpacing" qtc_QGridLayout_setSpacing :: Ptr (TQGridLayout a) -> CInt -> IO ()

instance QsetSpacing (QGridLayoutSc a) ((Int)) where
 setSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setSpacing cobj_x0 (toCInt x1)

setVerticalSpacing :: QGridLayout a -> ((Int)) -> IO ()
setVerticalSpacing x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_setVerticalSpacing cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_setVerticalSpacing" qtc_QGridLayout_setVerticalSpacing :: Ptr (TQGridLayout a) -> CInt -> IO ()

instance QqsizeHint (QGridLayout ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_h cobj_x0

foreign import ccall "qtc_QGridLayout_sizeHint_h" qtc_QGridLayout_sizeHint_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QGridLayoutSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_h cobj_x0

instance QsizeHint (QGridLayout ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QGridLayout_sizeHint_qth_h" qtc_QGridLayout_sizeHint_qth_h :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QGridLayoutSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qspacing (QGridLayout ()) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacing cobj_x0

foreign import ccall "qtc_QGridLayout_spacing" qtc_QGridLayout_spacing :: Ptr (TQGridLayout a) -> IO CInt

instance Qspacing (QGridLayoutSc a) (()) where
 spacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacing cobj_x0

instance QtakeAt (QGridLayout ()) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_takeAt_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGridLayout_takeAt_h" qtc_QGridLayout_takeAt_h :: Ptr (TQGridLayout a) -> CInt -> IO (Ptr (TQLayoutItem ()))

instance QtakeAt (QGridLayoutSc a) ((Int)) where
 takeAt x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_takeAt_h cobj_x0 (toCInt x1)

verticalSpacing :: QGridLayout a -> (()) -> IO (Int)
verticalSpacing x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_verticalSpacing cobj_x0

foreign import ccall "qtc_QGridLayout_verticalSpacing" qtc_QGridLayout_verticalSpacing :: Ptr (TQGridLayout a) -> IO CInt

qGridLayout_delete :: QGridLayout a -> IO ()
qGridLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_delete cobj_x0

foreign import ccall "qtc_QGridLayout_delete" qtc_QGridLayout_delete :: Ptr (TQGridLayout a) -> IO ()

qGridLayout_deleteLater :: QGridLayout a -> IO ()
qGridLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_deleteLater cobj_x0

foreign import ccall "qtc_QGridLayout_deleteLater" qtc_QGridLayout_deleteLater :: Ptr (TQGridLayout a) -> IO ()

instance QaddChildLayout (QGridLayout ()) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addChildLayout cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_addChildLayout" qtc_QGridLayout_addChildLayout :: Ptr (TQGridLayout a) -> Ptr (TQLayout t1) -> IO ()

instance QaddChildLayout (QGridLayoutSc a) ((QLayout t1)) where
 addChildLayout x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addChildLayout cobj_x0 cobj_x1

instance QaddChildWidget (QGridLayout ()) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addChildWidget cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_addChildWidget" qtc_QGridLayout_addChildWidget :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> IO ()

instance QaddChildWidget (QGridLayoutSc a) ((QWidget t1)) where
 addChildWidget x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addChildWidget cobj_x0 cobj_x1

instance QaddItem (QGridLayout ()) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_addItem_h" qtc_QGridLayout_addItem_h :: Ptr (TQGridLayout a) -> Ptr (TQLayoutItem t1) -> IO ()

instance QaddItem (QGridLayoutSc a) ((QLayoutItem t1)) (IO ()) where
 addItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_addItem_h cobj_x0 cobj_x1

instance QqalignmentRect (QGridLayout ()) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_alignmentRect cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_alignmentRect" qtc_QGridLayout_alignmentRect :: Ptr (TQGridLayout a) -> Ptr (TQRect t1) -> IO (Ptr (TQRect ()))

instance QqalignmentRect (QGridLayoutSc a) ((QRect t1)) where
 qalignmentRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_alignmentRect cobj_x0 cobj_x1

instance QalignmentRect (QGridLayout ()) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QGridLayout_alignmentRect_qth" qtc_QGridLayout_alignmentRect_qth :: Ptr (TQGridLayout a) -> CInt -> CInt -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QalignmentRect (QGridLayoutSc a) ((Rect)) where
 alignmentRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QGridLayout_alignmentRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QchildEvent (QGridLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_childEvent" qtc_QGridLayout_childEvent :: Ptr (TQGridLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGridLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_childEvent cobj_x0 cobj_x1

instance QindexOf (QGridLayout ()) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_indexOf_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_indexOf_h" qtc_QGridLayout_indexOf_h :: Ptr (TQGridLayout a) -> Ptr (TQWidget t1) -> IO CInt

instance QindexOf (QGridLayoutSc a) ((QWidget t1)) where
 indexOf x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_indexOf_h cobj_x0 cobj_x1

instance QqisEmpty (QGridLayout ()) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_isEmpty_h cobj_x0

foreign import ccall "qtc_QGridLayout_isEmpty_h" qtc_QGridLayout_isEmpty_h :: Ptr (TQGridLayout a) -> IO CBool

instance QqisEmpty (QGridLayoutSc a) (()) where
 qisEmpty x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_isEmpty_h cobj_x0

instance Qlayout (QGridLayout ()) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_layout_h cobj_x0

foreign import ccall "qtc_QGridLayout_layout_h" qtc_QGridLayout_layout_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQLayout ()))

instance Qlayout (QGridLayoutSc a) (()) (IO (QLayout ())) where
 layout x0 ()
  = withQLayoutResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_layout_h cobj_x0

instance QwidgetEvent (QGridLayout ()) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_widgetEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_widgetEvent" qtc_QGridLayout_widgetEvent :: Ptr (TQGridLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QwidgetEvent (QGridLayoutSc a) ((QEvent t1)) where
 widgetEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_widgetEvent cobj_x0 cobj_x1

instance Qqgeometry (QGridLayout ()) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_h cobj_x0

foreign import ccall "qtc_QGridLayout_geometry_h" qtc_QGridLayout_geometry_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQRect ()))

instance Qqgeometry (QGridLayoutSc a) (()) where
 qgeometry x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_h cobj_x0

instance Qgeometry (QGridLayout ()) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QGridLayout_geometry_qth_h" qtc_QGridLayout_geometry_qth_h :: Ptr (TQGridLayout a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qgeometry (QGridLayoutSc a) (()) where
 geometry x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_geometry_qth_h cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QspacerItem (QGridLayout ()) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacerItem_h cobj_x0

foreign import ccall "qtc_QGridLayout_spacerItem_h" qtc_QGridLayout_spacerItem_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQSpacerItem ()))

instance QspacerItem (QGridLayoutSc a) (()) where
 spacerItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_spacerItem_h cobj_x0

instance Qwidget (QGridLayout ()) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_widget_h cobj_x0

foreign import ccall "qtc_QGridLayout_widget_h" qtc_QGridLayout_widget_h :: Ptr (TQGridLayout a) -> IO (Ptr (TQWidget ()))

instance Qwidget (QGridLayoutSc a) (()) where
 widget x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_widget_h cobj_x0

instance QconnectNotify (QGridLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGridLayout_connectNotify" qtc_QGridLayout_connectNotify :: Ptr (TQGridLayout a) -> CWString -> IO ()

instance QconnectNotify (QGridLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGridLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_customEvent" qtc_QGridLayout_customEvent :: Ptr (TQGridLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGridLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGridLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGridLayout_disconnectNotify" qtc_QGridLayout_disconnectNotify :: Ptr (TQGridLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QGridLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QGridLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_event_h" qtc_QGridLayout_event_h :: Ptr (TQGridLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGridLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QGridLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGridLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGridLayout_eventFilter_h" qtc_QGridLayout_eventFilter_h :: Ptr (TQGridLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGridLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGridLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGridLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGridLayout_receivers" qtc_QGridLayout_receivers :: Ptr (TQGridLayout a) -> CWString -> IO CInt

instance Qreceivers (QGridLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGridLayout_receivers cobj_x0 cstr_x1

instance Qsender (QGridLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sender cobj_x0

foreign import ccall "qtc_QGridLayout_sender" qtc_QGridLayout_sender :: Ptr (TQGridLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QGridLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGridLayout_sender cobj_x0

instance QtimerEvent (QGridLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGridLayout_timerEvent" qtc_QGridLayout_timerEvent :: Ptr (TQGridLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGridLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGridLayout_timerEvent cobj_x0 cobj_x1

