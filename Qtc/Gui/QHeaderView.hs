{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QHeaderView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QHeaderView (
  QqHeaderView(..)
  ,cascadingSectionResizes
  ,defaultAlignment
  ,defaultSectionSize
  ,headerDataChanged
  ,hiddenSectionCount
  ,hideSection
  ,highlightSections
  ,Qinitialize(..)
  ,QinitializeSections(..)
  ,isClickable
  ,isSectionHidden
  ,isSortIndicatorShown
  ,logicalIndex
  ,QlogicalIndexAt(..), qlogicalIndexAt
  ,minimumSectionSize
  ,moveSection
  ,QpaintSection(..), QqpaintSection(..)
  ,resizeSection
  ,QresizeSections(..)
  ,sectionPosition
  ,sectionSize
  ,QsectionSizeFromContents(..), QqsectionSizeFromContents(..)
  ,sectionSizeHint
  ,sectionViewportPosition
  ,QsectionsAboutToBeRemoved(..)
  ,sectionsHidden
  ,QsectionsInserted(..)
  ,sectionsMoved
  ,setCascadingSectionResizes
  ,setClickable
  ,setDefaultAlignment
  ,setDefaultSectionSize
  ,setHighlightSections
  ,setMinimumSectionSize
  ,setOffsetToLastSection
  ,setOffsetToSectionPosition
  ,setSectionHidden
  ,setSortIndicatorShown
  ,setStretchLastSection
  ,showSection
  ,sortIndicatorOrder
  ,sortIndicatorSection
  ,stretchLastSection
  ,stretchSectionCount
  ,swapSections
  ,QupdateSection(..)
  ,visualIndex
  ,visualIndexAt
  ,qHeaderView_delete
  ,qHeaderView_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QAbstractItemView
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QHeaderView
import Qtc.Enums.Gui.QAbstractItemDelegate

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QHeaderView ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHeaderView_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QHeaderView_userMethod" qtc_QHeaderView_userMethod :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QuserMethod (QHeaderViewSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QHeaderView_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QHeaderView ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHeaderView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QHeaderView_userMethodVariant" qtc_QHeaderView_userMethodVariant :: Ptr (TQHeaderView a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QHeaderViewSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QHeaderView_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqHeaderView x1 where
  qHeaderView :: x1 -> IO (QHeaderView ())

instance QqHeaderView ((QtOrientation)) where
 qHeaderView (x1)
  = withQHeaderViewResult $
    qtc_QHeaderView (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView" qtc_QHeaderView :: CLong -> IO (Ptr (TQHeaderView ()))

instance QqHeaderView ((QtOrientation, QWidget t2)) where
 qHeaderView (x1, x2)
  = withQHeaderViewResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView1 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QHeaderView1" qtc_QHeaderView1 :: CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQHeaderView ()))

cascadingSectionResizes :: QHeaderView a -> (()) -> IO (Bool)
cascadingSectionResizes x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_cascadingSectionResizes cobj_x0

foreign import ccall "qtc_QHeaderView_cascadingSectionResizes" qtc_QHeaderView_cascadingSectionResizes :: Ptr (TQHeaderView a) -> IO CBool

instance Qcount (QHeaderView a) (()) where
 count x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_count cobj_x0

foreign import ccall "qtc_QHeaderView_count" qtc_QHeaderView_count :: Ptr (TQHeaderView a) -> IO CInt

instance QcurrentChanged (QHeaderView ()) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_currentChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHeaderView_currentChanged" qtc_QHeaderView_currentChanged :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QcurrentChanged (QHeaderViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 currentChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_currentChanged cobj_x0 cobj_x1 cobj_x2

instance QdataChanged (QHeaderView ()) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_dataChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHeaderView_dataChanged" qtc_QHeaderView_dataChanged :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QdataChanged (QHeaderViewSc a) ((QModelIndex t1, QModelIndex t2)) where
 dataChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_dataChanged cobj_x0 cobj_x1 cobj_x2

defaultAlignment :: QHeaderView a -> (()) -> IO (Alignment)
defaultAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_defaultAlignment cobj_x0

foreign import ccall "qtc_QHeaderView_defaultAlignment" qtc_QHeaderView_defaultAlignment :: Ptr (TQHeaderView a) -> IO CLong

defaultSectionSize :: QHeaderView a -> (()) -> IO (Int)
defaultSectionSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_defaultSectionSize cobj_x0

foreign import ccall "qtc_QHeaderView_defaultSectionSize" qtc_QHeaderView_defaultSectionSize :: Ptr (TQHeaderView a) -> IO CInt

instance QdoItemsLayout (QHeaderView ()) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_doItemsLayout_h cobj_x0

foreign import ccall "qtc_QHeaderView_doItemsLayout_h" qtc_QHeaderView_doItemsLayout_h :: Ptr (TQHeaderView a) -> IO ()

instance QdoItemsLayout (QHeaderViewSc a) (()) where
 doItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_doItemsLayout_h cobj_x0

instance Qevent (QHeaderView ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_event_h" qtc_QHeaderView_event_h :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QHeaderViewSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_event_h cobj_x0 cobj_x1

headerDataChanged :: QHeaderView a -> ((QtOrientation, Int, Int)) -> IO ()
headerDataChanged x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_headerDataChanged cobj_x0 (toCLong $ qEnum_toInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QHeaderView_headerDataChanged" qtc_QHeaderView_headerDataChanged :: Ptr (TQHeaderView a) -> CLong -> CInt -> CInt -> IO ()

hiddenSectionCount :: QHeaderView a -> (()) -> IO (Int)
hiddenSectionCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_hiddenSectionCount cobj_x0

foreign import ccall "qtc_QHeaderView_hiddenSectionCount" qtc_QHeaderView_hiddenSectionCount :: Ptr (TQHeaderView a) -> IO CInt

hideSection :: QHeaderView a -> ((Int)) -> IO ()
hideSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_hideSection cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_hideSection" qtc_QHeaderView_hideSection :: Ptr (TQHeaderView a) -> CInt -> IO ()

highlightSections :: QHeaderView a -> (()) -> IO (Bool)
highlightSections x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_highlightSections cobj_x0

foreign import ccall "qtc_QHeaderView_highlightSections" qtc_QHeaderView_highlightSections :: Ptr (TQHeaderView a) -> IO CBool

instance QhorizontalOffset (QHeaderView ()) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalOffset cobj_x0

foreign import ccall "qtc_QHeaderView_horizontalOffset" qtc_QHeaderView_horizontalOffset :: Ptr (TQHeaderView a) -> IO CInt

instance QhorizontalOffset (QHeaderViewSc a) (()) where
 horizontalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalOffset cobj_x0

instance QindexAt (QHeaderView ()) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QHeaderView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QHeaderView_indexAt_qth" qtc_QHeaderView_indexAt_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO (Ptr (TQModelIndex ()))

instance QindexAt (QHeaderViewSc a) ((Point)) where
 indexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QHeaderView_indexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance QqindexAt (QHeaderView ()) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_indexAt cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_indexAt" qtc_QHeaderView_indexAt :: Ptr (TQHeaderView a) -> Ptr (TQPoint t1) -> IO (Ptr (TQModelIndex ()))

instance QqindexAt (QHeaderViewSc a) ((QPoint t1)) where
 qindexAt x0 (x1)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_indexAt cobj_x0 cobj_x1

instance QinitStyleOption (QHeaderView ()) ((QStyleOptionHeader t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_initStyleOption cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_initStyleOption" qtc_QHeaderView_initStyleOption :: Ptr (TQHeaderView a) -> Ptr (TQStyleOptionHeader t1) -> IO ()

instance QinitStyleOption (QHeaderViewSc a) ((QStyleOptionHeader t1)) where
 initStyleOption x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_initStyleOption cobj_x0 cobj_x1

class Qinitialize x0 x1 where
 initialize :: x0 -> x1 -> IO ()

instance Qinitialize (QHeaderView ()) (()) where
 initialize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initialize cobj_x0

foreign import ccall "qtc_QHeaderView_initialize" qtc_QHeaderView_initialize :: Ptr (TQHeaderView a) -> IO ()

instance Qinitialize (QHeaderViewSc a) (()) where
 initialize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initialize cobj_x0

class QinitializeSections x0 x1 where
 initializeSections :: x0 -> x1 -> IO ()

instance QinitializeSections (QHeaderView ()) (()) where
 initializeSections x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initializeSections cobj_x0

foreign import ccall "qtc_QHeaderView_initializeSections" qtc_QHeaderView_initializeSections :: Ptr (TQHeaderView a) -> IO ()

instance QinitializeSections (QHeaderViewSc a) (()) where
 initializeSections x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initializeSections cobj_x0

instance QinitializeSections (QHeaderView ()) ((Int, Int)) where
 initializeSections x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initializeSections1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_initializeSections1" qtc_QHeaderView_initializeSections1 :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance QinitializeSections (QHeaderViewSc a) ((Int, Int)) where
 initializeSections x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_initializeSections1 cobj_x0 (toCInt x1) (toCInt x2)

isClickable :: QHeaderView a -> (()) -> IO (Bool)
isClickable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_isClickable cobj_x0

foreign import ccall "qtc_QHeaderView_isClickable" qtc_QHeaderView_isClickable :: Ptr (TQHeaderView a) -> IO CBool

instance QisIndexHidden (QHeaderView ()) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_isIndexHidden cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_isIndexHidden" qtc_QHeaderView_isIndexHidden :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> IO CBool

instance QisIndexHidden (QHeaderViewSc a) ((QModelIndex t1)) where
 isIndexHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_isIndexHidden cobj_x0 cobj_x1

instance QisMovable (QHeaderView a) (()) where
 isMovable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_isMovable cobj_x0

foreign import ccall "qtc_QHeaderView_isMovable" qtc_QHeaderView_isMovable :: Ptr (TQHeaderView a) -> IO CBool

isSectionHidden :: QHeaderView a -> ((Int)) -> IO (Bool)
isSectionHidden x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_isSectionHidden cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_isSectionHidden" qtc_QHeaderView_isSectionHidden :: Ptr (TQHeaderView a) -> CInt -> IO CBool

isSortIndicatorShown :: QHeaderView a -> (()) -> IO (Bool)
isSortIndicatorShown x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_isSortIndicatorShown cobj_x0

foreign import ccall "qtc_QHeaderView_isSortIndicatorShown" qtc_QHeaderView_isSortIndicatorShown :: Ptr (TQHeaderView a) -> IO CBool

instance Qqlength (QHeaderView a) (()) (IO (Int)) where
 qlength x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_length cobj_x0

foreign import ccall "qtc_QHeaderView_length" qtc_QHeaderView_length :: Ptr (TQHeaderView a) -> IO CInt

logicalIndex :: QHeaderView a -> ((Int)) -> IO (Int)
logicalIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_logicalIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_logicalIndex" qtc_QHeaderView_logicalIndex :: Ptr (TQHeaderView a) -> CInt -> IO CInt

class QlogicalIndexAt x1 where
 logicalIndexAt :: QHeaderView a -> x1 -> IO (Int)

instance QlogicalIndexAt ((Int)) where
 logicalIndexAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_logicalIndexAt1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_logicalIndexAt1" qtc_QHeaderView_logicalIndexAt1 :: Ptr (TQHeaderView a) -> CInt -> IO CInt

instance QlogicalIndexAt ((Int, Int)) where
 logicalIndexAt x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_logicalIndexAt2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_logicalIndexAt2" qtc_QHeaderView_logicalIndexAt2 :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO CInt

instance QlogicalIndexAt ((Point)) where
 logicalIndexAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QHeaderView_logicalIndexAt_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QHeaderView_logicalIndexAt_qth" qtc_QHeaderView_logicalIndexAt_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO CInt

qlogicalIndexAt :: QHeaderView a -> ((QPoint t1)) -> IO (Int)
qlogicalIndexAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_logicalIndexAt cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_logicalIndexAt" qtc_QHeaderView_logicalIndexAt :: Ptr (TQHeaderView a) -> Ptr (TQPoint t1) -> IO CInt

minimumSectionSize :: QHeaderView a -> (()) -> IO (Int)
minimumSectionSize x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_minimumSectionSize cobj_x0

foreign import ccall "qtc_QHeaderView_minimumSectionSize" qtc_QHeaderView_minimumSectionSize :: Ptr (TQHeaderView a) -> IO CInt

instance QmouseDoubleClickEvent (QHeaderView ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_mouseDoubleClickEvent_h" qtc_QHeaderView_mouseDoubleClickEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QHeaderViewSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QHeaderView ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_mouseMoveEvent_h" qtc_QHeaderView_mouseMoveEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QHeaderViewSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QHeaderView ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_mousePressEvent_h" qtc_QHeaderView_mousePressEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QHeaderViewSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QHeaderView ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_mouseReleaseEvent_h" qtc_QHeaderView_mouseReleaseEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QHeaderViewSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QmoveCursor (QHeaderView ()) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QHeaderView_moveCursor" qtc_QHeaderView_moveCursor :: Ptr (TQHeaderView a) -> CLong -> CLong -> IO (Ptr (TQModelIndex ()))

instance QmoveCursor (QHeaderViewSc a) ((CursorAction, KeyboardModifiers)) (IO (QModelIndex ())) where
 moveCursor x0 (x1, x2)
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_moveCursor cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qFlags_toInt x2)

moveSection :: QHeaderView a -> ((Int, Int)) -> IO ()
moveSection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_moveSection cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_moveSection" qtc_QHeaderView_moveSection :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance Qoffset (QHeaderView a) (()) (IO (Int)) where
 offset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_offset cobj_x0

foreign import ccall "qtc_QHeaderView_offset" qtc_QHeaderView_offset :: Ptr (TQHeaderView a) -> IO CInt

instance Qorientation (QHeaderView a) (()) (IO (QtOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_orientation cobj_x0

foreign import ccall "qtc_QHeaderView_orientation" qtc_QHeaderView_orientation :: Ptr (TQHeaderView a) -> IO CLong

instance QpaintEvent (QHeaderView ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_paintEvent_h" qtc_QHeaderView_paintEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QHeaderViewSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_paintEvent_h cobj_x0 cobj_x1

class QpaintSection x0 x1 where
 paintSection :: x0 -> x1 -> IO ()

class QqpaintSection x0 x1 where
 qpaintSection :: x0 -> x1 -> IO ()

instance QqpaintSection (QHeaderView ()) ((QPainter t1, QRect t2, Int)) where
 qpaintSection x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_paintSection cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QHeaderView_paintSection" qtc_QHeaderView_paintSection :: Ptr (TQHeaderView a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> CInt -> IO ()

instance QqpaintSection (QHeaderViewSc a) ((QPainter t1, QRect t2, Int)) where
 qpaintSection x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_paintSection cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance QpaintSection (QHeaderView ()) ((QPainter t1, Rect, Int)) where
 paintSection x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QHeaderView_paintSection_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3)

foreign import ccall "qtc_QHeaderView_paintSection_qth" qtc_QHeaderView_paintSection_qth :: Ptr (TQHeaderView a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QpaintSection (QHeaderViewSc a) ((QPainter t1, Rect, Int)) where
 paintSection x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    qtc_QHeaderView_paintSection_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  (toCInt x3)

instance Qreset (QHeaderView ()) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_reset_h cobj_x0

foreign import ccall "qtc_QHeaderView_reset_h" qtc_QHeaderView_reset_h :: Ptr (TQHeaderView a) -> IO ()

instance Qreset (QHeaderViewSc a) (()) (IO ()) where
 reset x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_reset_h cobj_x0

instance QresizeMode (QHeaderView a) ((Int)) (IO (QHeaderViewResizeMode)) where
 resizeMode x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeMode cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_resizeMode" qtc_QHeaderView_resizeMode :: Ptr (TQHeaderView a) -> CInt -> IO CLong

resizeSection :: QHeaderView a -> ((Int, Int)) -> IO ()
resizeSection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeSection cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_resizeSection" qtc_QHeaderView_resizeSection :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

class QresizeSections x0 x1 where
 resizeSections :: x0 -> x1 -> IO ()

instance QresizeSections (QHeaderView ()) (()) where
 resizeSections x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeSections cobj_x0

foreign import ccall "qtc_QHeaderView_resizeSections" qtc_QHeaderView_resizeSections :: Ptr (TQHeaderView a) -> IO ()

instance QresizeSections (QHeaderViewSc a) (()) where
 resizeSections x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeSections cobj_x0

instance QresizeSections (QHeaderView ()) ((QHeaderViewResizeMode)) where
 resizeSections x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeSections1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView_resizeSections1" qtc_QHeaderView_resizeSections1 :: Ptr (TQHeaderView a) -> CLong -> IO ()

instance QresizeSections (QHeaderViewSc a) ((QHeaderViewResizeMode)) where
 resizeSections x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resizeSections1 cobj_x0 (toCLong $ qEnum_toInt x1)

instance QrestoreState (QHeaderView a) ((QByteArray ())) where
 restoreState x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_restoreState cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_restoreState" qtc_QHeaderView_restoreState :: Ptr (TQHeaderView a) -> Ptr (TQByteArray ()) -> IO CBool

instance QrowsInserted (QHeaderView ()) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QHeaderView_rowsInserted" qtc_QHeaderView_rowsInserted :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsInserted (QHeaderViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_rowsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QsaveState (QHeaderView a) (()) where
 saveState x0 ()
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_saveState cobj_x0

foreign import ccall "qtc_QHeaderView_saveState" qtc_QHeaderView_saveState :: Ptr (TQHeaderView a) -> IO (Ptr (TQByteArray ()))

instance QscrollContentsBy (QHeaderView ()) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_scrollContentsBy_h" qtc_QHeaderView_scrollContentsBy_h :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance QscrollContentsBy (QHeaderViewSc a) ((Int, Int)) where
 scrollContentsBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scrollContentsBy_h cobj_x0 (toCInt x1) (toCInt x2)

instance QscrollTo (QHeaderView ()) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_scrollTo cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHeaderView_scrollTo" qtc_QHeaderView_scrollTo :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CLong -> IO ()

instance QscrollTo (QHeaderViewSc a) ((QModelIndex t1, ScrollHint)) where
 scrollTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_scrollTo cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

sectionPosition :: QHeaderView a -> ((Int)) -> IO (Int)
sectionPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sectionPosition" qtc_QHeaderView_sectionPosition :: Ptr (TQHeaderView a) -> CInt -> IO CInt

sectionSize :: QHeaderView a -> ((Int)) -> IO (Int)
sectionSize x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sectionSize" qtc_QHeaderView_sectionSize :: Ptr (TQHeaderView a) -> CInt -> IO CInt

class QsectionSizeFromContents x0 x1 where
 sectionSizeFromContents :: x0 -> x1 -> IO (Size)

class QqsectionSizeFromContents x0 x1 where
 qsectionSizeFromContents :: x0 -> x1 -> IO (QSize ())

instance QqsectionSizeFromContents (QHeaderView ()) ((Int)) where
 qsectionSizeFromContents x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSizeFromContents cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sectionSizeFromContents" qtc_QHeaderView_sectionSizeFromContents :: Ptr (TQHeaderView a) -> CInt -> IO (Ptr (TQSize ()))

instance QqsectionSizeFromContents (QHeaderViewSc a) ((Int)) where
 qsectionSizeFromContents x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSizeFromContents cobj_x0 (toCInt x1)

instance QsectionSizeFromContents (QHeaderView ()) ((Int)) where
 sectionSizeFromContents x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSizeFromContents_qth cobj_x0 (toCInt x1) csize_ret_w csize_ret_h

foreign import ccall "qtc_QHeaderView_sectionSizeFromContents_qth" qtc_QHeaderView_sectionSizeFromContents_qth :: Ptr (TQHeaderView a) -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsectionSizeFromContents (QHeaderViewSc a) ((Int)) where
 sectionSizeFromContents x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSizeFromContents_qth cobj_x0 (toCInt x1) csize_ret_w csize_ret_h

sectionSizeHint :: QHeaderView a -> ((Int)) -> IO (Int)
sectionSizeHint x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionSizeHint cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sectionSizeHint" qtc_QHeaderView_sectionSizeHint :: Ptr (TQHeaderView a) -> CInt -> IO CInt

sectionViewportPosition :: QHeaderView a -> ((Int)) -> IO (Int)
sectionViewportPosition x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionViewportPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sectionViewportPosition" qtc_QHeaderView_sectionViewportPosition :: Ptr (TQHeaderView a) -> CInt -> IO CInt

class QsectionsAboutToBeRemoved x0 x1 where
 sectionsAboutToBeRemoved :: x0 -> x1 -> IO ()

instance QsectionsAboutToBeRemoved (QHeaderView ()) ((QModelIndex t1, Int, Int)) where
 sectionsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_sectionsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QHeaderView_sectionsAboutToBeRemoved" qtc_QHeaderView_sectionsAboutToBeRemoved :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QsectionsAboutToBeRemoved (QHeaderViewSc a) ((QModelIndex t1, Int, Int)) where
 sectionsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_sectionsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

sectionsHidden :: QHeaderView a -> (()) -> IO (Bool)
sectionsHidden x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionsHidden cobj_x0

foreign import ccall "qtc_QHeaderView_sectionsHidden" qtc_QHeaderView_sectionsHidden :: Ptr (TQHeaderView a) -> IO CBool

class QsectionsInserted x0 x1 where
 sectionsInserted :: x0 -> x1 -> IO ()

instance QsectionsInserted (QHeaderView ()) ((QModelIndex t1, Int, Int)) where
 sectionsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_sectionsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QHeaderView_sectionsInserted" qtc_QHeaderView_sectionsInserted :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QsectionsInserted (QHeaderViewSc a) ((QModelIndex t1, Int, Int)) where
 sectionsInserted x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_sectionsInserted cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

sectionsMoved :: QHeaderView a -> (()) -> IO (Bool)
sectionsMoved x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sectionsMoved cobj_x0

foreign import ccall "qtc_QHeaderView_sectionsMoved" qtc_QHeaderView_sectionsMoved :: Ptr (TQHeaderView a) -> IO CBool

setCascadingSectionResizes :: QHeaderView a -> ((Bool)) -> IO ()
setCascadingSectionResizes x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setCascadingSectionResizes cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setCascadingSectionResizes" qtc_QHeaderView_setCascadingSectionResizes :: Ptr (TQHeaderView a) -> CBool -> IO ()

setClickable :: QHeaderView a -> ((Bool)) -> IO ()
setClickable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setClickable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setClickable" qtc_QHeaderView_setClickable :: Ptr (TQHeaderView a) -> CBool -> IO ()

setDefaultAlignment :: QHeaderView a -> ((Alignment)) -> IO ()
setDefaultAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setDefaultAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QHeaderView_setDefaultAlignment" qtc_QHeaderView_setDefaultAlignment :: Ptr (TQHeaderView a) -> CLong -> IO ()

setDefaultSectionSize :: QHeaderView a -> ((Int)) -> IO ()
setDefaultSectionSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setDefaultSectionSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setDefaultSectionSize" qtc_QHeaderView_setDefaultSectionSize :: Ptr (TQHeaderView a) -> CInt -> IO ()

setHighlightSections :: QHeaderView a -> ((Bool)) -> IO ()
setHighlightSections x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setHighlightSections cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setHighlightSections" qtc_QHeaderView_setHighlightSections :: Ptr (TQHeaderView a) -> CBool -> IO ()

setMinimumSectionSize :: QHeaderView a -> ((Int)) -> IO ()
setMinimumSectionSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setMinimumSectionSize cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setMinimumSectionSize" qtc_QHeaderView_setMinimumSectionSize :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QsetModel (QHeaderView ()) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setModel_h" qtc_QHeaderView_setModel_h :: Ptr (TQHeaderView a) -> Ptr (TQAbstractItemModel t1) -> IO ()

instance QsetModel (QHeaderViewSc a) ((QAbstractItemModel t1)) where
 setModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setModel_h cobj_x0 cobj_x1

instance QsetMovable (QHeaderView a) ((Bool)) where
 setMovable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setMovable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setMovable" qtc_QHeaderView_setMovable :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance QsetOffset (QHeaderView a) ((Int)) where
 setOffset x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setOffset cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setOffset" qtc_QHeaderView_setOffset :: Ptr (TQHeaderView a) -> CInt -> IO ()

setOffsetToLastSection :: QHeaderView a -> (()) -> IO ()
setOffsetToLastSection x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setOffsetToLastSection cobj_x0

foreign import ccall "qtc_QHeaderView_setOffsetToLastSection" qtc_QHeaderView_setOffsetToLastSection :: Ptr (TQHeaderView a) -> IO ()

setOffsetToSectionPosition :: QHeaderView a -> ((Int)) -> IO ()
setOffsetToSectionPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setOffsetToSectionPosition cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setOffsetToSectionPosition" qtc_QHeaderView_setOffsetToSectionPosition :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QsetResizeMode (QHeaderView a) ((Int, QHeaderViewResizeMode)) where
 setResizeMode x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setResizeMode1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHeaderView_setResizeMode1" qtc_QHeaderView_setResizeMode1 :: Ptr (TQHeaderView a) -> CInt -> CLong -> IO ()

instance QsetResizeMode (QHeaderView a) ((QHeaderViewResizeMode)) where
 setResizeMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setResizeMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView_setResizeMode" qtc_QHeaderView_setResizeMode :: Ptr (TQHeaderView a) -> CLong -> IO ()

setSectionHidden :: QHeaderView a -> ((Int, Bool)) -> IO ()
setSectionHidden x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setSectionHidden cobj_x0 (toCInt x1) (toCBool x2)

foreign import ccall "qtc_QHeaderView_setSectionHidden" qtc_QHeaderView_setSectionHidden :: Ptr (TQHeaderView a) -> CInt -> CBool -> IO ()

instance QqsetSelection (QHeaderView ()) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QHeaderView_setSelection" qtc_QHeaderView_setSelection :: Ptr (TQHeaderView a) -> Ptr (TQRect t1) -> CLong -> IO ()

instance QqsetSelection (QHeaderViewSc a) ((QRect t1, SelectionFlags)) where
 qsetSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setSelection cobj_x0 cobj_x1 (toCLong $ qFlags_toInt x2)

instance QsetSelection (QHeaderView ()) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHeaderView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QHeaderView_setSelection_qth" qtc_QHeaderView_setSelection_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QsetSelection (QHeaderViewSc a) ((Rect, SelectionFlags)) where
 setSelection x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHeaderView_setSelection_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h  (toCLong $ qFlags_toInt x2)

instance QsetSortIndicator (QHeaderView a) ((Int, SortOrder)) where
 setSortIndicator x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setSortIndicator cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHeaderView_setSortIndicator" qtc_QHeaderView_setSortIndicator :: Ptr (TQHeaderView a) -> CInt -> CLong -> IO ()

setSortIndicatorShown :: QHeaderView a -> ((Bool)) -> IO ()
setSortIndicatorShown x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setSortIndicatorShown cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setSortIndicatorShown" qtc_QHeaderView_setSortIndicatorShown :: Ptr (TQHeaderView a) -> CBool -> IO ()

setStretchLastSection :: QHeaderView a -> ((Bool)) -> IO ()
setStretchLastSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setStretchLastSection cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setStretchLastSection" qtc_QHeaderView_setStretchLastSection :: Ptr (TQHeaderView a) -> CBool -> IO ()

showSection :: QHeaderView a -> ((Int)) -> IO ()
showSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_showSection cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_showSection" qtc_QHeaderView_showSection :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QqsizeHint (QHeaderView ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHint_h cobj_x0

foreign import ccall "qtc_QHeaderView_sizeHint_h" qtc_QHeaderView_sizeHint_h :: Ptr (TQHeaderView a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QHeaderViewSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHint_h cobj_x0

instance QsizeHint (QHeaderView ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHeaderView_sizeHint_qth_h" qtc_QHeaderView_sizeHint_qth_h :: Ptr (TQHeaderView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QHeaderViewSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

sortIndicatorOrder :: QHeaderView a -> (()) -> IO (SortOrder)
sortIndicatorOrder x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sortIndicatorOrder cobj_x0

foreign import ccall "qtc_QHeaderView_sortIndicatorOrder" qtc_QHeaderView_sortIndicatorOrder :: Ptr (TQHeaderView a) -> IO CLong

sortIndicatorSection :: QHeaderView a -> (()) -> IO (Int)
sortIndicatorSection x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sortIndicatorSection cobj_x0

foreign import ccall "qtc_QHeaderView_sortIndicatorSection" qtc_QHeaderView_sortIndicatorSection :: Ptr (TQHeaderView a) -> IO CInt

stretchLastSection :: QHeaderView a -> (()) -> IO (Bool)
stretchLastSection x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_stretchLastSection cobj_x0

foreign import ccall "qtc_QHeaderView_stretchLastSection" qtc_QHeaderView_stretchLastSection :: Ptr (TQHeaderView a) -> IO CBool

stretchSectionCount :: QHeaderView a -> (()) -> IO (Int)
stretchSectionCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_stretchSectionCount cobj_x0

foreign import ccall "qtc_QHeaderView_stretchSectionCount" qtc_QHeaderView_stretchSectionCount :: Ptr (TQHeaderView a) -> IO CInt

swapSections :: QHeaderView a -> ((Int, Int)) -> IO ()
swapSections x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_swapSections cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_swapSections" qtc_QHeaderView_swapSections :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance QupdateGeometries (QHeaderView ()) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateGeometries cobj_x0

foreign import ccall "qtc_QHeaderView_updateGeometries" qtc_QHeaderView_updateGeometries :: Ptr (TQHeaderView a) -> IO ()

instance QupdateGeometries (QHeaderViewSc a) (()) where
 updateGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateGeometries cobj_x0

class QupdateSection x0 x1 where
 updateSection :: x0 -> x1 -> IO ()

instance QupdateSection (QHeaderView ()) ((Int)) where
 updateSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateSection cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_updateSection" qtc_QHeaderView_updateSection :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QupdateSection (QHeaderViewSc a) ((Int)) where
 updateSection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateSection cobj_x0 (toCInt x1)

instance QverticalOffset (QHeaderView ()) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalOffset cobj_x0

foreign import ccall "qtc_QHeaderView_verticalOffset" qtc_QHeaderView_verticalOffset :: Ptr (TQHeaderView a) -> IO CInt

instance QverticalOffset (QHeaderViewSc a) (()) where
 verticalOffset x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalOffset cobj_x0

instance QviewportEvent (QHeaderView ()) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_viewportEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_viewportEvent_h" qtc_QHeaderView_viewportEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO CBool

instance QviewportEvent (QHeaderViewSc a) ((QEvent t1)) where
 viewportEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_viewportEvent_h cobj_x0 cobj_x1

visualIndex :: QHeaderView a -> ((Int)) -> IO (Int)
visualIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_visualIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_visualIndex" qtc_QHeaderView_visualIndex :: Ptr (TQHeaderView a) -> CInt -> IO CInt

visualIndexAt :: QHeaderView a -> ((Int)) -> IO (Int)
visualIndexAt x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_visualIndexAt cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_visualIndexAt" qtc_QHeaderView_visualIndexAt :: Ptr (TQHeaderView a) -> CInt -> IO CInt

instance QqvisualRect (QHeaderView ()) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRect cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_visualRect" qtc_QHeaderView_visualRect :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> IO (Ptr (TQRect ()))

instance QqvisualRect (QHeaderViewSc a) ((QModelIndex t1)) where
 qvisualRect x0 (x1)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRect cobj_x0 cobj_x1

instance QvisualRect (QHeaderView ()) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QHeaderView_visualRect_qth" qtc_QHeaderView_visualRect_qth :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QvisualRect (QHeaderViewSc a) ((QModelIndex t1)) where
 visualRect x0 (x1)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRect_qth cobj_x0 cobj_x1 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QvisualRegionForSelection (QHeaderView ()) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRegionForSelection cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_visualRegionForSelection" qtc_QHeaderView_visualRegionForSelection :: Ptr (TQHeaderView a) -> Ptr (TQItemSelection t1) -> IO (Ptr (TQRegion ()))

instance QvisualRegionForSelection (QHeaderViewSc a) ((QItemSelection t1)) where
 visualRegionForSelection x0 (x1)
  = withQRegionResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_visualRegionForSelection cobj_x0 cobj_x1

qHeaderView_delete :: QHeaderView a -> IO ()
qHeaderView_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_delete cobj_x0

foreign import ccall "qtc_QHeaderView_delete" qtc_QHeaderView_delete :: Ptr (TQHeaderView a) -> IO ()

qHeaderView_deleteLater :: QHeaderView a -> IO ()
qHeaderView_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_deleteLater cobj_x0

foreign import ccall "qtc_QHeaderView_deleteLater" qtc_QHeaderView_deleteLater :: Ptr (TQHeaderView a) -> IO ()

instance QcloseEditor (QHeaderView ()) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QHeaderView_closeEditor" qtc_QHeaderView_closeEditor :: Ptr (TQHeaderView a) -> Ptr (TQWidget t1) -> CLong -> IO ()

instance QcloseEditor (QHeaderViewSc a) ((QWidget t1, EndEditHint)) where
 closeEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_closeEditor cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcommitData (QHeaderView ()) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_commitData cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_commitData" qtc_QHeaderView_commitData :: Ptr (TQHeaderView a) -> Ptr (TQWidget t1) -> IO ()

instance QcommitData (QHeaderViewSc a) ((QWidget t1)) where
 commitData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_commitData cobj_x0 cobj_x1

instance QdirtyRegionOffset (QHeaderView ()) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QHeaderView_dirtyRegionOffset_qth" qtc_QHeaderView_dirtyRegionOffset_qth :: Ptr (TQHeaderView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QdirtyRegionOffset (QHeaderViewSc a) (()) where
 dirtyRegionOffset x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dirtyRegionOffset_qth cobj_x0 cpoint_ret_x cpoint_ret_y

instance QqdirtyRegionOffset (QHeaderView ()) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dirtyRegionOffset cobj_x0

foreign import ccall "qtc_QHeaderView_dirtyRegionOffset" qtc_QHeaderView_dirtyRegionOffset :: Ptr (TQHeaderView a) -> IO (Ptr (TQPoint ()))

instance QqdirtyRegionOffset (QHeaderViewSc a) (()) where
 qdirtyRegionOffset x0 ()
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dirtyRegionOffset cobj_x0

instance QdoAutoScroll (QHeaderView ()) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_doAutoScroll cobj_x0

foreign import ccall "qtc_QHeaderView_doAutoScroll" qtc_QHeaderView_doAutoScroll :: Ptr (TQHeaderView a) -> IO ()

instance QdoAutoScroll (QHeaderViewSc a) (()) where
 doAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_doAutoScroll cobj_x0

instance QdragEnterEvent (QHeaderView ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_dragEnterEvent_h" qtc_QHeaderView_dragEnterEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QHeaderViewSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QHeaderView ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_dragLeaveEvent_h" qtc_QHeaderView_dragLeaveEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QHeaderViewSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QHeaderView ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_dragMoveEvent_h" qtc_QHeaderView_dragMoveEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QHeaderViewSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QHeaderView ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_dropEvent_h" qtc_QHeaderView_dropEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QHeaderViewSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_dropEvent_h cobj_x0 cobj_x1

instance QdropIndicatorPosition (QHeaderView ()) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dropIndicatorPosition cobj_x0

foreign import ccall "qtc_QHeaderView_dropIndicatorPosition" qtc_QHeaderView_dropIndicatorPosition :: Ptr (TQHeaderView a) -> IO CLong

instance QdropIndicatorPosition (QHeaderViewSc a) (()) where
 dropIndicatorPosition x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_dropIndicatorPosition cobj_x0

instance Qedit (QHeaderView ()) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHeaderView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QHeaderView_edit" qtc_QHeaderView_edit :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CLong -> Ptr (TQEvent t3) -> IO CBool

instance Qedit (QHeaderViewSc a) ((QModelIndex t1, EditTrigger, QEvent t3)) (IO (Bool)) where
 edit x0 (x1, x2, x3)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QHeaderView_edit cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2) cobj_x3

instance QeditorDestroyed (QHeaderView ()) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_editorDestroyed cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_editorDestroyed" qtc_QHeaderView_editorDestroyed :: Ptr (TQHeaderView a) -> Ptr (TQObject t1) -> IO ()

instance QeditorDestroyed (QHeaderViewSc a) ((QObject t1)) where
 editorDestroyed x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_editorDestroyed cobj_x0 cobj_x1

instance QexecuteDelayedItemsLayout (QHeaderView ()) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_executeDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QHeaderView_executeDelayedItemsLayout" qtc_QHeaderView_executeDelayedItemsLayout :: Ptr (TQHeaderView a) -> IO ()

instance QexecuteDelayedItemsLayout (QHeaderViewSc a) (()) where
 executeDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_executeDelayedItemsLayout cobj_x0

instance QfocusInEvent (QHeaderView ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_focusInEvent_h" qtc_QHeaderView_focusInEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QHeaderViewSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QHeaderView ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_focusNextPrevChild" qtc_QHeaderView_focusNextPrevChild :: Ptr (TQHeaderView a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QHeaderViewSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QHeaderView ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_focusOutEvent_h" qtc_QHeaderView_focusOutEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QHeaderViewSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_focusOutEvent_h cobj_x0 cobj_x1

instance QhorizontalScrollbarAction (QHeaderView ()) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_horizontalScrollbarAction" qtc_QHeaderView_horizontalScrollbarAction :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QhorizontalScrollbarAction (QHeaderViewSc a) ((Int)) where
 horizontalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalScrollbarAction cobj_x0 (toCInt x1)

instance QhorizontalScrollbarValueChanged (QHeaderView ()) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_horizontalScrollbarValueChanged" qtc_QHeaderView_horizontalScrollbarValueChanged :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QhorizontalScrollbarValueChanged (QHeaderViewSc a) ((Int)) where
 horizontalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QhorizontalStepsPerItem (QHeaderView ()) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalStepsPerItem cobj_x0

foreign import ccall "qtc_QHeaderView_horizontalStepsPerItem" qtc_QHeaderView_horizontalStepsPerItem :: Ptr (TQHeaderView a) -> IO CInt

instance QhorizontalStepsPerItem (QHeaderViewSc a) (()) where
 horizontalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_horizontalStepsPerItem cobj_x0

instance QinputMethodEvent (QHeaderView ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_inputMethodEvent" qtc_QHeaderView_inputMethodEvent :: Ptr (TQHeaderView a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QHeaderViewSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QHeaderView ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView_inputMethodQuery_h" qtc_QHeaderView_inputMethodQuery_h :: Ptr (TQHeaderView a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QHeaderViewSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyPressEvent (QHeaderView ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_keyPressEvent_h" qtc_QHeaderView_keyPressEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QHeaderViewSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyboardSearch (QHeaderView ()) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_keyboardSearch_h cobj_x0 cstr_x1

foreign import ccall "qtc_QHeaderView_keyboardSearch_h" qtc_QHeaderView_keyboardSearch_h :: Ptr (TQHeaderView a) -> CWString -> IO ()

instance QkeyboardSearch (QHeaderViewSc a) ((String)) where
 keyboardSearch x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_keyboardSearch_h cobj_x0 cstr_x1

instance QresizeEvent (QHeaderView ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_resizeEvent_h" qtc_QHeaderView_resizeEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QHeaderViewSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_resizeEvent_h cobj_x0 cobj_x1

instance QrowsAboutToBeRemoved (QHeaderView ()) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QHeaderView_rowsAboutToBeRemoved" qtc_QHeaderView_rowsAboutToBeRemoved :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> CInt -> CInt -> IO ()

instance QrowsAboutToBeRemoved (QHeaderViewSc a) ((QModelIndex t1, Int, Int)) where
 rowsAboutToBeRemoved x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_rowsAboutToBeRemoved cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

instance QscheduleDelayedItemsLayout (QHeaderView ()) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scheduleDelayedItemsLayout cobj_x0

foreign import ccall "qtc_QHeaderView_scheduleDelayedItemsLayout" qtc_QHeaderView_scheduleDelayedItemsLayout :: Ptr (TQHeaderView a) -> IO ()

instance QscheduleDelayedItemsLayout (QHeaderViewSc a) (()) where
 scheduleDelayedItemsLayout x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scheduleDelayedItemsLayout cobj_x0

instance QscrollDirtyRegion (QHeaderView ()) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_scrollDirtyRegion" qtc_QHeaderView_scrollDirtyRegion :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance QscrollDirtyRegion (QHeaderViewSc a) ((Int, Int)) where
 scrollDirtyRegion x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_scrollDirtyRegion cobj_x0 (toCInt x1) (toCInt x2)

instance QselectAll (QHeaderView ()) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_selectAll_h cobj_x0

foreign import ccall "qtc_QHeaderView_selectAll_h" qtc_QHeaderView_selectAll_h :: Ptr (TQHeaderView a) -> IO ()

instance QselectAll (QHeaderViewSc a) (()) where
 selectAll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_selectAll_h cobj_x0

instance QselectionChanged (QHeaderView ()) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_selectionChanged cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHeaderView_selectionChanged" qtc_QHeaderView_selectionChanged :: Ptr (TQHeaderView a) -> Ptr (TQItemSelection t1) -> Ptr (TQItemSelection t2) -> IO ()

instance QselectionChanged (QHeaderViewSc a) ((QItemSelection t1, QItemSelection t2)) where
 selectionChanged x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_selectionChanged cobj_x0 cobj_x1 cobj_x2

instance QselectionCommand (QHeaderView ()) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_selectionCommand cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_selectionCommand" qtc_QHeaderView_selectionCommand :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> IO CLong

instance QselectionCommand (QHeaderViewSc a) ((QModelIndex t1)) where
 selectionCommand x0 (x1)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_selectionCommand cobj_x0 cobj_x1

instance QselectionCommand (QHeaderView ()) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHeaderView_selectionCommand1" qtc_QHeaderView_selectionCommand1 :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> Ptr (TQEvent t2) -> IO CLong

instance QselectionCommand (QHeaderViewSc a) ((QModelIndex t1, QEvent t2)) where
 selectionCommand x0 (x1, x2)
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_selectionCommand1 cobj_x0 cobj_x1 cobj_x2

instance QsetDirtyRegion (QHeaderView ()) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setDirtyRegion cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setDirtyRegion" qtc_QHeaderView_setDirtyRegion :: Ptr (TQHeaderView a) -> Ptr (TQRegion t1) -> IO ()

instance QsetDirtyRegion (QHeaderViewSc a) ((QRegion t1)) where
 setDirtyRegion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setDirtyRegion cobj_x0 cobj_x1

instance QsetHorizontalStepsPerItem (QHeaderView ()) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setHorizontalStepsPerItem" qtc_QHeaderView_setHorizontalStepsPerItem :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QsetHorizontalStepsPerItem (QHeaderViewSc a) ((Int)) where
 setHorizontalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setHorizontalStepsPerItem cobj_x0 (toCInt x1)

instance QsetRootIndex (QHeaderView ()) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setRootIndex_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setRootIndex_h" qtc_QHeaderView_setRootIndex_h :: Ptr (TQHeaderView a) -> Ptr (TQModelIndex t1) -> IO ()

instance QsetRootIndex (QHeaderViewSc a) ((QModelIndex t1)) where
 setRootIndex x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setRootIndex_h cobj_x0 cobj_x1

instance QsetSelectionModel (QHeaderView ()) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setSelectionModel_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setSelectionModel_h" qtc_QHeaderView_setSelectionModel_h :: Ptr (TQHeaderView a) -> Ptr (TQItemSelectionModel t1) -> IO ()

instance QsetSelectionModel (QHeaderViewSc a) ((QItemSelectionModel t1)) where
 setSelectionModel x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setSelectionModel_h cobj_x0 cobj_x1

instance QsetState (QHeaderView ()) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView_setState" qtc_QHeaderView_setState :: Ptr (TQHeaderView a) -> CLong -> IO ()

instance QsetState (QHeaderViewSc a) ((QAbstractItemViewState)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setState cobj_x0 (toCLong $ qEnum_toInt x1)

instance QsetVerticalStepsPerItem (QHeaderView ()) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_setVerticalStepsPerItem" qtc_QHeaderView_setVerticalStepsPerItem :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QsetVerticalStepsPerItem (QHeaderViewSc a) ((Int)) where
 setVerticalStepsPerItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setVerticalStepsPerItem cobj_x0 (toCInt x1)

instance QsizeHintForColumn (QHeaderView ()) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHintForColumn_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sizeHintForColumn_h" qtc_QHeaderView_sizeHintForColumn_h :: Ptr (TQHeaderView a) -> CInt -> IO CInt

instance QsizeHintForColumn (QHeaderViewSc a) ((Int)) where
 sizeHintForColumn x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHintForColumn_h cobj_x0 (toCInt x1)

instance QsizeHintForRow (QHeaderView ()) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHintForRow_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_sizeHintForRow_h" qtc_QHeaderView_sizeHintForRow_h :: Ptr (TQHeaderView a) -> CInt -> IO CInt

instance QsizeHintForRow (QHeaderViewSc a) ((Int)) where
 sizeHintForRow x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sizeHintForRow_h cobj_x0 (toCInt x1)

instance QstartAutoScroll (QHeaderView ()) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_startAutoScroll cobj_x0

foreign import ccall "qtc_QHeaderView_startAutoScroll" qtc_QHeaderView_startAutoScroll :: Ptr (TQHeaderView a) -> IO ()

instance QstartAutoScroll (QHeaderViewSc a) (()) where
 startAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_startAutoScroll cobj_x0

instance QstartDrag (QHeaderView ()) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QHeaderView_startDrag" qtc_QHeaderView_startDrag :: Ptr (TQHeaderView a) -> CLong -> IO ()

instance QstartDrag (QHeaderViewSc a) ((DropActions)) where
 startDrag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_startDrag cobj_x0 (toCLong $ qFlags_toInt x1)

instance Qstate (QHeaderView ()) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_state cobj_x0

foreign import ccall "qtc_QHeaderView_state" qtc_QHeaderView_state :: Ptr (TQHeaderView a) -> IO CLong

instance Qstate (QHeaderViewSc a) (()) (IO (QAbstractItemViewState)) where
 state x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_state cobj_x0

instance QstopAutoScroll (QHeaderView ()) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_stopAutoScroll cobj_x0

foreign import ccall "qtc_QHeaderView_stopAutoScroll" qtc_QHeaderView_stopAutoScroll :: Ptr (TQHeaderView a) -> IO ()

instance QstopAutoScroll (QHeaderViewSc a) (()) where
 stopAutoScroll x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_stopAutoScroll cobj_x0

instance QtimerEvent (QHeaderView ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_timerEvent" qtc_QHeaderView_timerEvent :: Ptr (TQHeaderView a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QHeaderViewSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_timerEvent cobj_x0 cobj_x1

instance QupdateEditorData (QHeaderView ()) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateEditorData cobj_x0

foreign import ccall "qtc_QHeaderView_updateEditorData" qtc_QHeaderView_updateEditorData :: Ptr (TQHeaderView a) -> IO ()

instance QupdateEditorData (QHeaderViewSc a) (()) where
 updateEditorData x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateEditorData cobj_x0

instance QupdateEditorGeometries (QHeaderView ()) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateEditorGeometries cobj_x0

foreign import ccall "qtc_QHeaderView_updateEditorGeometries" qtc_QHeaderView_updateEditorGeometries :: Ptr (TQHeaderView a) -> IO ()

instance QupdateEditorGeometries (QHeaderViewSc a) (()) where
 updateEditorGeometries x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateEditorGeometries cobj_x0

instance QverticalScrollbarAction (QHeaderView ()) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalScrollbarAction cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_verticalScrollbarAction" qtc_QHeaderView_verticalScrollbarAction :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QverticalScrollbarAction (QHeaderViewSc a) ((Int)) where
 verticalScrollbarAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalScrollbarAction cobj_x0 (toCInt x1)

instance QverticalScrollbarValueChanged (QHeaderView ()) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_verticalScrollbarValueChanged" qtc_QHeaderView_verticalScrollbarValueChanged :: Ptr (TQHeaderView a) -> CInt -> IO ()

instance QverticalScrollbarValueChanged (QHeaderViewSc a) ((Int)) where
 verticalScrollbarValueChanged x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalScrollbarValueChanged cobj_x0 (toCInt x1)

instance QverticalStepsPerItem (QHeaderView ()) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalStepsPerItem cobj_x0

foreign import ccall "qtc_QHeaderView_verticalStepsPerItem" qtc_QHeaderView_verticalStepsPerItem :: Ptr (TQHeaderView a) -> IO CInt

instance QverticalStepsPerItem (QHeaderViewSc a) (()) where
 verticalStepsPerItem x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_verticalStepsPerItem cobj_x0

instance QviewOptions (QHeaderView ()) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_viewOptions cobj_x0

foreign import ccall "qtc_QHeaderView_viewOptions" qtc_QHeaderView_viewOptions :: Ptr (TQHeaderView a) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QviewOptions (QHeaderViewSc a) (()) where
 viewOptions x0 ()
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_viewOptions cobj_x0

instance QcontextMenuEvent (QHeaderView ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_contextMenuEvent_h" qtc_QHeaderView_contextMenuEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QHeaderViewSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_contextMenuEvent_h cobj_x0 cobj_x1

instance QqminimumSizeHint (QHeaderView ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QHeaderView_minimumSizeHint_h" qtc_QHeaderView_minimumSizeHint_h :: Ptr (TQHeaderView a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QHeaderViewSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QHeaderView ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QHeaderView_minimumSizeHint_qth_h" qtc_QHeaderView_minimumSizeHint_qth_h :: Ptr (TQHeaderView a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QHeaderViewSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QsetViewportMargins (QHeaderView ()) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHeaderView_setViewportMargins" qtc_QHeaderView_setViewportMargins :: Ptr (TQHeaderView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetViewportMargins (QHeaderViewSc a) ((Int, Int, Int, Int)) where
 setViewportMargins x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setViewportMargins cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QsetupViewport (QHeaderView ()) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setupViewport cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setupViewport" qtc_QHeaderView_setupViewport :: Ptr (TQHeaderView a) -> Ptr (TQWidget t1) -> IO ()

instance QsetupViewport (QHeaderViewSc a) ((QWidget t1)) where
 setupViewport x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setupViewport cobj_x0 cobj_x1

instance QwheelEvent (QHeaderView ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_wheelEvent_h" qtc_QHeaderView_wheelEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QHeaderViewSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_wheelEvent_h cobj_x0 cobj_x1

instance QchangeEvent (QHeaderView ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_changeEvent_h" qtc_QHeaderView_changeEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QHeaderViewSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_changeEvent_h cobj_x0 cobj_x1

instance QdrawFrame (QHeaderView ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_drawFrame" qtc_QHeaderView_drawFrame :: Ptr (TQHeaderView a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QHeaderViewSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QHeaderView ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_actionEvent_h" qtc_QHeaderView_actionEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QHeaderViewSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QHeaderView ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_addAction" qtc_QHeaderView_addAction :: Ptr (TQHeaderView a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QHeaderViewSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_addAction cobj_x0 cobj_x1

instance QcloseEvent (QHeaderView ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_closeEvent_h" qtc_QHeaderView_closeEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QHeaderViewSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QHeaderView ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_create cobj_x0

foreign import ccall "qtc_QHeaderView_create" qtc_QHeaderView_create :: Ptr (TQHeaderView a) -> IO ()

instance Qcreate (QHeaderViewSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_create cobj_x0

instance Qcreate (QHeaderView ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_create1" qtc_QHeaderView_create1 :: Ptr (TQHeaderView a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QHeaderViewSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create1 cobj_x0 cobj_x1

instance Qcreate (QHeaderView ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QHeaderView_create2" qtc_QHeaderView_create2 :: Ptr (TQHeaderView a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QHeaderViewSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QHeaderView ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QHeaderView_create3" qtc_QHeaderView_create3 :: Ptr (TQHeaderView a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QHeaderViewSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QHeaderView ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy cobj_x0

foreign import ccall "qtc_QHeaderView_destroy" qtc_QHeaderView_destroy :: Ptr (TQHeaderView a) -> IO ()

instance Qdestroy (QHeaderViewSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy cobj_x0

instance Qdestroy (QHeaderView ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_destroy1" qtc_QHeaderView_destroy1 :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance Qdestroy (QHeaderViewSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QHeaderView ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QHeaderView_destroy2" qtc_QHeaderView_destroy2 :: Ptr (TQHeaderView a) -> CBool -> CBool -> IO ()

instance Qdestroy (QHeaderViewSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QHeaderView ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_devType_h cobj_x0

foreign import ccall "qtc_QHeaderView_devType_h" qtc_QHeaderView_devType_h :: Ptr (TQHeaderView a) -> IO CInt

instance QdevType (QHeaderViewSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_devType_h cobj_x0

instance QenabledChange (QHeaderView ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_enabledChange" qtc_QHeaderView_enabledChange :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance QenabledChange (QHeaderViewSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QHeaderView ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_enterEvent_h" qtc_QHeaderView_enterEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QHeaderViewSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QHeaderView ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusNextChild cobj_x0

foreign import ccall "qtc_QHeaderView_focusNextChild" qtc_QHeaderView_focusNextChild :: Ptr (TQHeaderView a) -> IO CBool

instance QfocusNextChild (QHeaderViewSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusNextChild cobj_x0

instance QfocusPreviousChild (QHeaderView ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusPreviousChild cobj_x0

foreign import ccall "qtc_QHeaderView_focusPreviousChild" qtc_QHeaderView_focusPreviousChild :: Ptr (TQHeaderView a) -> IO CBool

instance QfocusPreviousChild (QHeaderViewSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_focusPreviousChild cobj_x0

instance QfontChange (QHeaderView ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_fontChange" qtc_QHeaderView_fontChange :: Ptr (TQHeaderView a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QHeaderViewSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QHeaderView ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QHeaderView_heightForWidth_h" qtc_QHeaderView_heightForWidth_h :: Ptr (TQHeaderView a) -> CInt -> IO CInt

instance QheightForWidth (QHeaderViewSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QHeaderView ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_hideEvent_h" qtc_QHeaderView_hideEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QHeaderViewSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_hideEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QHeaderView ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_keyReleaseEvent_h" qtc_QHeaderView_keyReleaseEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QHeaderViewSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QHeaderView ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_languageChange cobj_x0

foreign import ccall "qtc_QHeaderView_languageChange" qtc_QHeaderView_languageChange :: Ptr (TQHeaderView a) -> IO ()

instance QlanguageChange (QHeaderViewSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_languageChange cobj_x0

instance QleaveEvent (QHeaderView ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_leaveEvent_h" qtc_QHeaderView_leaveEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QHeaderViewSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QHeaderView ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QHeaderView_metric" qtc_QHeaderView_metric :: Ptr (TQHeaderView a) -> CLong -> IO CInt

instance Qmetric (QHeaderViewSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance Qmove (QHeaderView ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_move1" qtc_QHeaderView_move1 :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance Qmove (QHeaderViewSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QHeaderView ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QHeaderView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QHeaderView_move_qth" qtc_QHeaderView_move_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance Qmove (QHeaderViewSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QHeaderView_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QHeaderView ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_move cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_move" qtc_QHeaderView_move :: Ptr (TQHeaderView a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QHeaderViewSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_move cobj_x0 cobj_x1

instance QmoveEvent (QHeaderView ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_moveEvent_h" qtc_QHeaderView_moveEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QHeaderViewSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QHeaderView ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_paintEngine_h cobj_x0

foreign import ccall "qtc_QHeaderView_paintEngine_h" qtc_QHeaderView_paintEngine_h :: Ptr (TQHeaderView a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QHeaderViewSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_paintEngine_h cobj_x0

instance QpaletteChange (QHeaderView ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_paletteChange" qtc_QHeaderView_paletteChange :: Ptr (TQHeaderView a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QHeaderViewSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QHeaderView ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_repaint cobj_x0

foreign import ccall "qtc_QHeaderView_repaint" qtc_QHeaderView_repaint :: Ptr (TQHeaderView a) -> IO ()

instance Qrepaint (QHeaderViewSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_repaint cobj_x0

instance Qrepaint (QHeaderView ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHeaderView_repaint2" qtc_QHeaderView_repaint2 :: Ptr (TQHeaderView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QHeaderViewSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QHeaderView ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_repaint1" qtc_QHeaderView_repaint1 :: Ptr (TQHeaderView a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QHeaderViewSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QHeaderView ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resetInputContext cobj_x0

foreign import ccall "qtc_QHeaderView_resetInputContext" qtc_QHeaderView_resetInputContext :: Ptr (TQHeaderView a) -> IO ()

instance QresetInputContext (QHeaderViewSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resetInputContext cobj_x0

instance Qresize (QHeaderView ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QHeaderView_resize1" qtc_QHeaderView_resize1 :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance Qresize (QHeaderViewSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QHeaderView ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_resize" qtc_QHeaderView_resize :: Ptr (TQHeaderView a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QHeaderViewSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_resize cobj_x0 cobj_x1

instance Qresize (QHeaderView ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QHeaderView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QHeaderView_resize_qth" qtc_QHeaderView_resize_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> IO ()

instance Qresize (QHeaderViewSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QHeaderView_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QHeaderView ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QHeaderView_setGeometry1" qtc_QHeaderView_setGeometry1 :: Ptr (TQHeaderView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QHeaderViewSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QHeaderView ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_setGeometry" qtc_QHeaderView_setGeometry :: Ptr (TQHeaderView a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QHeaderViewSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QHeaderView ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHeaderView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QHeaderView_setGeometry_qth" qtc_QHeaderView_setGeometry_qth :: Ptr (TQHeaderView a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QHeaderViewSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QHeaderView_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QHeaderView ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setMouseTracking" qtc_QHeaderView_setMouseTracking :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance QsetMouseTracking (QHeaderViewSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QHeaderView ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_setVisible_h" qtc_QHeaderView_setVisible_h :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance QsetVisible (QHeaderViewSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QHeaderView ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_showEvent_h" qtc_QHeaderView_showEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QHeaderViewSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QHeaderView ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_tabletEvent_h" qtc_QHeaderView_tabletEvent_h :: Ptr (TQHeaderView a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QHeaderViewSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QHeaderView ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateMicroFocus cobj_x0

foreign import ccall "qtc_QHeaderView_updateMicroFocus" qtc_QHeaderView_updateMicroFocus :: Ptr (TQHeaderView a) -> IO ()

instance QupdateMicroFocus (QHeaderViewSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_updateMicroFocus cobj_x0

instance QwindowActivationChange (QHeaderView ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QHeaderView_windowActivationChange" qtc_QHeaderView_windowActivationChange :: Ptr (TQHeaderView a) -> CBool -> IO ()

instance QwindowActivationChange (QHeaderViewSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QHeaderView ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_childEvent" qtc_QHeaderView_childEvent :: Ptr (TQHeaderView a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QHeaderViewSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QHeaderView ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHeaderView_connectNotify" qtc_QHeaderView_connectNotify :: Ptr (TQHeaderView a) -> CWString -> IO ()

instance QconnectNotify (QHeaderViewSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QHeaderView ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QHeaderView_customEvent" qtc_QHeaderView_customEvent :: Ptr (TQHeaderView a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QHeaderViewSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QHeaderView_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QHeaderView ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QHeaderView_disconnectNotify" qtc_QHeaderView_disconnectNotify :: Ptr (TQHeaderView a) -> CWString -> IO ()

instance QdisconnectNotify (QHeaderViewSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QHeaderView ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QHeaderView_eventFilter_h" qtc_QHeaderView_eventFilter_h :: Ptr (TQHeaderView a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QHeaderViewSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QHeaderView_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QHeaderView ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QHeaderView_receivers" qtc_QHeaderView_receivers :: Ptr (TQHeaderView a) -> CWString -> IO CInt

instance Qreceivers (QHeaderViewSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QHeaderView_receivers cobj_x0 cstr_x1

instance Qsender (QHeaderView ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sender cobj_x0

foreign import ccall "qtc_QHeaderView_sender" qtc_QHeaderView_sender :: Ptr (TQHeaderView a) -> IO (Ptr (TQObject ()))

instance Qsender (QHeaderViewSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QHeaderView_sender cobj_x0

