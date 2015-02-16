{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Gui_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Gui_h (
  Qaccept_h(..)
  , QactualSize_h(..), QqactualSize_h(..)
  , QaddFile_h(..), QqaddFile_h(..)
  , QaddItem_h(..)
  , QaddPixmap_h(..)
  , Qadvance_h(..)
  , QblockFormatChanged_h(..)
  , QblockInserted_h(..)
  , QblockRemoved_h(..)
  , QqboundingRect_h(..), QqqboundingRect_h(..)
  , QcanInsertFromMimeData_h(..)
  , Qclear_h(..)
  , Qclone_h(..)
  , QcollidesWithItem_h(..)
  , QcollidesWithPath_h(..)
  , Qqcontains_h(..), Qqqcontains_h(..)
  , Qcount_h(..)
  , QcreateEditor_h(..)
  , QcreateMimeDataFromSelection_h(..)
  , QdataChanged_h(..)
  , QdateTimeFromText_h(..)
  , QdoItemsLayout_h(..)
  , Qdone_h(..)
  , QdrawBackground_h(..), QqdrawBackground_h(..)
  , QdrawBranches_h(..), QqdrawBranches_h(..)
  , QdrawComplexControl_h(..)
  , QdrawControl_h(..)
  , QdrawForeground_h(..), QqdrawForeground_h(..)
  , QdrawItemPixmap_h(..), QqdrawItemPixmap_h(..)
  , QdrawItemText_h(..), QqdrawItemText_h(..)
  , QdrawItems_h(..)
  , QdrawPrimitive_h(..)
  , QdrawRow_h(..)
  , Qexec_h(..)
  , QexpandingDirections_h(..)
  , QgeneratedIconPixmap_h(..)
  , Qgeometry_h(..), Qqgeometry_h(..)
  , QhasHeightForWidth_h(..)
  , QhidePopup_h(..)
  , QhitTestComplexControl_h(..), QqhitTestComplexControl_h(..)
  , QhorizontalOffset_h(..)
  , QhoverEnterEvent_h(..)
  , QhoverLeaveEvent_h(..)
  , QhoverMoveEvent_h(..)
  , QindexAt_h(..), QqindexAt_h(..)
  , QindexOf_h(..)
  , QinputMethodEvent_h(..)
  , QinsertFromMimeData_h(..)
  , Qinvalidate_h(..)
  , QisObscuredBy_h(..)
  , QitemAt_h(..)
  , QitemChange_h(..)
  , QitemPixmapRect_h(..), QqitemPixmapRect_h(..)
  , QitemTextRect_h(..), QqitemTextRect_h(..)
  , QkeyboardSearch_h(..)
  , Qlayout_h(..)
  , QloadResource_h(..)
  , QmapFromSource_h(..)
  , QmapSelectionFromSource_h(..)
  , QmapSelectionToSource_h(..)
  , QmapToSource_h(..)
  , QmaximumSize_h(..), QqmaximumSize_h(..)
  , QminimumHeightForWidth_h(..)
  , QminimumSize_h(..), QqminimumSize_h(..)
  , QmoveCursor_h(..)
  , QopaqueArea_h(..)
  , Qpaint_h(..), Qqpaint_h(..)
  , QpixelMetric_h(..)
  , Qpixmap_h(..), Qqpixmap_h(..)
  , Qpolish_h(..)
  , Qreject_h(..)
  , QrowsAboutToBeRemoved_h(..)
  , QrowsInserted_h(..)
  , QsceneEvent_h(..)
  , QsceneEventFilter_h(..)
  , QscrollContentsBy_h(..)
  , QscrollTo_h(..)
  , QselectAll_h(..)
  , QsetEditorData_h(..)
  , QsetGeometry_h(..), QqsetGeometry_h(..)
  , QsetModel_h(..)
  , QsetModelData_h(..)
  , QsetRange_h(..)
  , QsetRootIndex_h(..)
  , QsetSelection_h(..), QqsetSelection_h(..)
  , QsetSelectionModel_h(..)
  , QsetSourceModel_h(..)
  , Qshape_h(..)
  , QshowPopup_h(..)
  , QsizeFromContents_h(..), QqsizeFromContents_h(..)
  , QsizeHintForColumn_h(..)
  , QsizeHintForRow_h(..)
  , QsliderChange_h(..)
  , QspacerItem_h(..)
  , QstandardPalette_h(..)
  , QstandardPixmap_h(..)
  , QstepBy_h(..)
  , QstyleHint_h(..)
  , QsubControlRect_h(..), QqsubControlRect_h(..)
  , QsubElementRect_h(..), QqsubElementRect_h(..)
  , QtabInserted_h(..)
  , QtabRemoved_h(..)
  , QtakeAt_h(..)
  , Qqtype_h(..)
  , Qunpolish_h(..)
  , QupdateEditorGeometry_h(..)
  , QvalueFromText_h(..)
  , QvaluePropertyName_h(..)
  , QverticalOffset_h(..)
  , QviewportEvent_h(..)
  , QvisualRect_h(..), QqvisualRect_h(..)
  , QvisualRegionForSelection_h(..)
  , Qwidget_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QStyle
import Qtc.Enums.Gui.QAbstractItemView
import Qtc.Enums.Gui.QAbstractSlider
import Qtc.Enums.Gui.QAbstractSpinBox
import Qtc.Enums.Gui.QItemSelectionModel
import Qtc.Enums.Gui.QMessageBox
import Qtc.Enums.Gui.QSlider
import Qtc.Classes.Types
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Gui

class Qaccept_h a b where
 accept_h :: a -> b -> IO ()

class QactualSize_h a b where
 actualSize_h :: a -> b -> IO (Size)

class QqactualSize_h a b where
 qactualSize_h :: a -> b -> IO (QSize ())

class QaddFile_h a b where
 addFile_h :: a -> b -> IO ()

class QqaddFile_h a b where
 qaddFile_h :: a -> b -> IO ()

class QaddItem_h a b where
 addItem_h :: a -> b -> IO ()

class QaddPixmap_h a b where
 addPixmap_h :: a -> b -> IO ()

class Qadvance_h a b where
 advance_h :: a -> b -> IO ()

class QblockFormatChanged_h a b where
 blockFormatChanged_h :: a -> b -> IO ()

class QblockInserted_h a b where
 blockInserted_h :: a -> b -> IO ()

class QblockRemoved_h a b where
 blockRemoved_h :: a -> b -> IO ()

class QqboundingRect_h a b where
 qboundingRect_h :: a -> b -> IO (RectF)

class QqqboundingRect_h a b where
 qqboundingRect_h :: a -> b -> IO (QRectF ())

class QcanInsertFromMimeData_h a b where
 canInsertFromMimeData_h :: a -> b -> IO (Bool)

class Qclear_h a b where
 clear_h :: a -> b -> IO ()

class Qclone_h a b c | a -> c where
 clone_h :: a -> b -> c

class QcollidesWithItem_h a b where
 collidesWithItem_h :: a -> b -> IO (Bool)

class QcollidesWithPath_h a b where
 collidesWithPath_h :: a -> b -> IO (Bool)

class Qqcontains_h a b where
 qcontains_h :: a -> b -> IO (Bool)

class Qqqcontains_h a b where
 qqcontains_h :: a -> b -> IO (Bool)

class Qcount_h a b where
 count_h :: a -> b -> IO (Int)

class QcreateEditor_h a b where
 createEditor_h :: a -> b -> IO (QWidget ())

class QcreateMimeDataFromSelection_h a b where
 createMimeDataFromSelection_h :: a -> b -> IO (QMimeData ())

class QdataChanged_h a b where
 dataChanged_h :: a -> b -> IO ()

class QdateTimeFromText_h a b where
 dateTimeFromText_h :: a -> b -> IO (QDateTime ())

class QdoItemsLayout_h a b where
 doItemsLayout_h :: a -> b -> IO ()

class Qdone_h a b where
 done_h :: a -> b -> IO ()

class QdrawBackground_h a b where
 drawBackground_h :: a -> b -> IO ()

class QqdrawBackground_h a b where
 qdrawBackground_h :: a -> b -> IO ()

class QdrawBranches_h a b where
 drawBranches_h :: a -> b -> IO ()

class QqdrawBranches_h a b where
 qdrawBranches_h :: a -> b -> IO ()

class QdrawComplexControl_h a b where
 drawComplexControl_h :: a -> b -> IO ()

class QdrawControl_h a b where
 drawControl_h :: a -> b -> IO ()

class QdrawForeground_h a b where
 drawForeground_h :: a -> b -> IO ()

class QqdrawForeground_h a b where
 qdrawForeground_h :: a -> b -> IO ()

class QdrawItemPixmap_h a b where
 drawItemPixmap_h :: a -> b -> IO ()

class QqdrawItemPixmap_h a b where
 qdrawItemPixmap_h :: a -> b -> IO ()

class QdrawItemText_h a b where
 drawItemText_h :: a -> b -> IO ()

class QqdrawItemText_h a b where
 qdrawItemText_h :: a -> b -> IO ()

class QdrawItems_h a b where
 drawItems_h :: a -> b -> IO ()

class QdrawPrimitive_h a b where
 drawPrimitive_h :: a -> b -> IO ()

class QdrawRow_h a b where
 drawRow_h :: a -> b -> IO ()

class Qexec_h a b where
 exec_h :: a -> b -> IO (Int)

class QexpandingDirections_h a b where
 expandingDirections_h :: a -> b -> IO (Orientations)

class QgeneratedIconPixmap_h a b where
 generatedIconPixmap_h :: a -> b -> IO (QPixmap ())

class Qgeometry_h a b where
 geometry_h :: a -> b -> IO (Rect)

class Qqgeometry_h a b where
 qgeometry_h :: a -> b -> IO (QRect ())

class QhasHeightForWidth_h a b where
 hasHeightForWidth_h :: a -> b -> IO (Bool)

class QhidePopup_h a b where
 hidePopup_h :: a -> b -> IO ()

class QhitTestComplexControl_h a b where
 hitTestComplexControl_h :: a -> b -> IO (SubControl)

class QqhitTestComplexControl_h a b where
 qhitTestComplexControl_h :: a -> b -> IO (SubControl)

class QhorizontalOffset_h a b where
 horizontalOffset_h :: a -> b -> IO (Int)

class QhoverEnterEvent_h a b where
 hoverEnterEvent_h :: a -> b -> IO ()

class QhoverLeaveEvent_h a b where
 hoverLeaveEvent_h :: a -> b -> IO ()

class QhoverMoveEvent_h a b where
 hoverMoveEvent_h :: a -> b -> IO ()

class QindexAt_h a b where
 indexAt_h :: a -> b -> IO (QModelIndex ())

class QqindexAt_h a b where
 qindexAt_h :: a -> b -> IO (QModelIndex ())

class QindexOf_h a b where
 indexOf_h :: a -> b -> IO (Int)

class QinputMethodEvent_h a b where
 inputMethodEvent_h :: a -> b -> IO ()

class QinsertFromMimeData_h a b where
 insertFromMimeData_h :: a -> b -> IO ()

class Qinvalidate_h a b where
 invalidate_h :: a -> b -> IO ()

class QisObscuredBy_h a b where
 isObscuredBy_h :: a -> b -> IO (Bool)

class QitemAt_h a b where
 itemAt_h :: a -> b -> IO (QLayoutItem ())

class QitemChange_h a b where
 itemChange_h :: a -> b -> IO (QVariant ())

class QitemPixmapRect_h a b where
 itemPixmapRect_h :: a -> b -> IO (Rect)

class QqitemPixmapRect_h a b where
 qitemPixmapRect_h :: a -> b -> IO (QRect ())

class QitemTextRect_h a b where
 itemTextRect_h :: a -> b -> IO (Rect)

class QqitemTextRect_h a b where
 qitemTextRect_h :: a -> b -> IO (QRect ())

class QkeyboardSearch_h a b where
 keyboardSearch_h :: a -> b -> IO ()

class Qlayout_h a b where
 layout_h :: a -> b -> IO (QLayout ())

class QloadResource_h a b where
 loadResource_h :: a -> b -> IO (QVariant ())

class QmapFromSource_h a b where
 mapFromSource_h :: a -> b -> IO (QModelIndex ())

class QmapSelectionFromSource_h a b where
 mapSelectionFromSource_h :: a -> b -> IO (QItemSelection ())

class QmapSelectionToSource_h a b where
 mapSelectionToSource_h :: a -> b -> IO (QItemSelection ())

class QmapToSource_h a b where
 mapToSource_h :: a -> b -> IO (QModelIndex ())

class QmaximumSize_h a b where
 maximumSize_h :: a -> b -> IO (Size)

class QqmaximumSize_h a b where
 qmaximumSize_h :: a -> b -> IO (QSize ())

class QminimumHeightForWidth_h a b where
 minimumHeightForWidth_h :: a -> b -> IO (Int)

class QminimumSize_h a b where
 minimumSize_h :: a -> b -> IO (Size)

class QqminimumSize_h a b where
 qminimumSize_h :: a -> b -> IO (QSize ())

class QmoveCursor_h a b where
 moveCursor_h :: a -> b -> IO (QModelIndex ())

class QopaqueArea_h a b where
 opaqueArea_h :: a -> b -> IO (QPainterPath ())

class Qpaint_h a b where
 paint_h :: a -> b -> IO ()

class Qqpaint_h a b where
 qpaint_h :: a -> b -> IO ()

class QpixelMetric_h a b where
 pixelMetric_h :: a -> b -> IO (Int)

class Qpixmap_h a b where
 pixmap_h :: a -> b -> IO (QPixmap ())

class Qqpixmap_h a b where
 qpixmap_h :: a -> b -> IO (QPixmap ())

class Qpolish_h a b where
 polish_h :: a -> b -> IO ()

class Qreject_h a b where
 reject_h :: a -> b -> IO ()

class QrowsAboutToBeRemoved_h a b where
 rowsAboutToBeRemoved_h :: a -> b -> IO ()

class QrowsInserted_h a b where
 rowsInserted_h :: a -> b -> IO ()

class QsceneEvent_h a b where
 sceneEvent_h :: a -> b -> IO (Bool)

class QsceneEventFilter_h a b where
 sceneEventFilter_h :: a -> b -> IO (Bool)

class QscrollContentsBy_h a b where
 scrollContentsBy_h :: a -> b -> IO ()

class QscrollTo_h a b where
 scrollTo_h :: a -> b -> IO ()

class QselectAll_h a b where
 selectAll_h :: a -> b -> IO ()

class QsetEditorData_h a b where
 setEditorData_h :: a -> b -> IO ()

class QsetGeometry_h a b where
 setGeometry_h :: a -> b -> IO ()

class QqsetGeometry_h a b where
 qsetGeometry_h :: a -> b -> IO ()

class QsetModel_h a b where
 setModel_h :: a -> b -> IO ()

class QsetModelData_h a b where
 setModelData_h :: a -> b -> IO ()

class QsetRange_h a b where
 setRange_h :: a -> b -> IO ()

class QsetRootIndex_h a b where
 setRootIndex_h :: a -> b -> IO ()

class QsetSelection_h a b where
 setSelection_h :: a -> b -> IO ()

class QqsetSelection_h a b where
 qsetSelection_h :: a -> b -> IO ()

class QsetSelectionModel_h a b where
 setSelectionModel_h :: a -> b -> IO ()

class QsetSourceModel_h a b where
 setSourceModel_h :: a -> b -> IO ()

class Qshape_h a b where
 shape_h :: a -> b -> IO (QPainterPath ())

class QshowPopup_h a b where
 showPopup_h :: a -> b -> IO ()

class QsizeFromContents_h a b where
 sizeFromContents_h :: a -> b -> IO (Size)

class QqsizeFromContents_h a b where
 qsizeFromContents_h :: a -> b -> IO (QSize ())

class QsizeHintForColumn_h a b where
 sizeHintForColumn_h :: a -> b -> IO (Int)

class QsizeHintForRow_h a b where
 sizeHintForRow_h :: a -> b -> IO (Int)

class QsliderChange_h a b where
 sliderChange_h :: a -> b -> IO ()

class QspacerItem_h a b where
 spacerItem_h :: a -> b -> IO (QSpacerItem ())

class QstandardPalette_h a b where
 standardPalette_h :: a -> b -> IO (QPalette ())

class QstandardPixmap_h a b where
 standardPixmap_h :: a -> b -> IO (QPixmap ())

class QstepBy_h a b where
 stepBy_h :: a -> b -> IO ()

class QstyleHint_h a b where
 styleHint_h :: a -> b -> IO (Int)

class QsubControlRect_h a b where
 subControlRect_h :: a -> b -> IO (Rect)

class QqsubControlRect_h a b where
 qsubControlRect_h :: a -> b -> IO (QRect ())

class QsubElementRect_h a b where
 subElementRect_h :: a -> b -> IO (Rect)

class QqsubElementRect_h a b where
 qsubElementRect_h :: a -> b -> IO (QRect ())

class QtabInserted_h a b where
 tabInserted_h :: a -> b -> IO ()

class QtabRemoved_h a b where
 tabRemoved_h :: a -> b -> IO ()

class QtakeAt_h a b where
 takeAt_h :: a -> b -> IO (QLayoutItem ())

class Qqtype_h a b where
 qtype_h :: a -> b -> IO (Int)

class Qunpolish_h a b where
 unpolish_h :: a -> b -> IO ()

class QupdateEditorGeometry_h a b where
 updateEditorGeometry_h :: a -> b -> IO ()

class QvalueFromText_h a b c | a -> c where
 valueFromText_h :: a -> b -> c

class QvaluePropertyName_h a b where
 valuePropertyName_h :: a -> b -> IO (String)

class QverticalOffset_h a b where
 verticalOffset_h :: a -> b -> IO (Int)

class QviewportEvent_h a b where
 viewportEvent_h :: a -> b -> IO (Bool)

class QvisualRect_h a b where
 visualRect_h :: a -> b -> IO (Rect)

class QqvisualRect_h a b where
 qvisualRect_h :: a -> b -> IO (QRect ())

class QvisualRegionForSelection_h a b where
 visualRegionForSelection_h :: a -> b -> IO (QRegion ())

class Qwidget_h a b where
 widget_h :: a -> b -> IO (QWidget ())

