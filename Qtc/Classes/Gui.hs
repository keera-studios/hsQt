{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Gui.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Gui (
  QacceptDrops(..)
  , QacceptProposedAction(..)
  , QacceptedMouseButtons(..)
  , QacceptsHoverEvents(..)
  , QactionAt(..), QqactionAt(..)
  , QactionGeometry(..), QqactionGeometry(..)
  , Qactions(..)
  , Qactivate(..)
  , QactiveAction(..)
  , QactualSize(..), QqactualSize(..)
  , QaddAction(..)
  , QaddButton(..)
  , QaddChildLayout(..)
  , QaddChildWidget(..)
  , QaddEllipse(..), QqaddEllipse(..)
  , QaddFile(..), QqaddFile(..)
  , QaddItem(..)
  , QaddItems(..)
  , QaddLayout(..)
  , QaddMenu(..)
  , QaddPath(..)
  , QaddPixmap(..)
  , QaddPolygon(..)
  , QaddRect(..), QqaddRect(..)
  , QaddSeparator(..)
  , QaddTab(..)
  , QaddText(..)
  , QaddToIndex(..)
  , QaddWidget(..)
  , QadjustPosition(..)
  , QadjustSize(..)
  , Qadvance(..)
  , Qalignment(..)
  , QalignmentRect(..), QqalignmentRect(..)
  , QallowedAreas(..)
  , QalphaChannel(..), QalphaChannel_nf(..)
  , QanchorAt(..), QqanchorAt(..)
  , QappendRow(..)
  , QarrowType(..)
  , Qascent(..)
  , QautoRepeat(..)
  , QaverageCharWidth(..)
  , Qbackground(..)
  , QbackgroundBrush(..)
  , QbackgroundColor(..)
  , Qbegin(..)
  , QblockFormat(..)
  , QblockFormatChanged(..)
  , QblockInserted(..)
  , QblockList(..)
  , QblockRemoved(..)
  , Qbold(..)
  , QbottomMargin(..)
  , Qbrush(..)
  , Qbutton(..)
  , QbuttonSymbols(..)
  , QbuttonText(..)
  , Qbuttons(..)
  , QcacheKey(..)
  , QcacheMode(..)
  , QcanInsertFromMimeData(..)
  , QcanRedo(..)
  , QcanUndo(..)
  , QcharFormat(..)
  , QcharFormatIndex(..)
  , QcheckState(..)
  , QcheckStateSet(..)
  , QchildrenBoundingRect(..), QqchildrenBoundingRect(..)
  , QcleanText(..)
  , QclearFocus(..)
  , QclearMessage(..)
  , QclearSelection(..)
  , Qclone(..)
  , QcloseEditor(..)
  , QclosePersistentEditor(..)
  , QcollidesWithItem(..)
  , QcollidesWithPath(..)
  , QcollidingItems(..)
  , Qcolor(..)
  , QcolumnAt(..)
  , QcolumnCountChanged(..)
  , QcolumnMoved(..)
  , QcolumnResized(..)
  , QcolumnSpan(..)
  , QcolumnViewportPosition(..)
  , QcolumnWidth(..)
  , Qcolumns(..)
  , QcommitData(..)
  , Qcompleter(..)
  , QcontentsRect(..), QqcontentsRect(..)
  , QcontentsSize(..), QqcontentsSize(..)
  , Qqcopy(..), Qqcopy_nf(..)
  , Qcorner(..)
  , QcornerWidget(..)
  , QcreateEditor(..)
  , QcreateHeuristicMask(..), QcreateHeuristicMask_nf(..)
  , QcreateMaskFromColor(..), QcreateMaskFromColor_nf(..)
  , QcreateMimeDataFromSelection(..)
  , QcreateRedoAction(..)
  , QcreateStandardContextMenu(..)
  , QcreateUndoAction(..)
  , QcurrentChanged(..)
  , QcurrentColumn(..)
  , QcurrentFont(..)
  , QcurrentIndex(..)
  , QcurrentItem(..)
  , QcurrentRow(..)
  , QcurrentText(..)
  , QcurrentWidget(..)
  , Qcursor(..)
  , Qcut(..)
  , Qdark(..)
  , QdataChanged(..)
  , QdateTimeFromText(..)
  , Qdecimals(..)
  , QdefaultAction(..)
  , Qdelta(..)
  , Qdescent(..)
  , QdeviceTransform(..)
  , QdirtyRegionOffset(..), QqdirtyRegionOffset(..)
  , QdoAutoScroll(..)
  , QdoItemsLayout(..)
  , Qdocument(..)
  , Qdone(..)
  , QdragEnabled(..)
  , Qdraw(..), Qqdraw(..)
  , QdrawBackground(..), QqdrawBackground(..)
  , QdrawBranches(..), QqdrawBranches(..)
  , QdrawComplexControl(..)
  , QdrawContents(..)
  , QdrawControl(..)
  , QdrawForeground(..), QqdrawForeground(..)
  , QdrawFrame(..)
  , QdrawItemPixmap(..), QqdrawItemPixmap(..)
  , QdrawItemText(..), QqdrawItemText(..)
  , QdrawItems(..)
  , QdrawPrimitive(..)
  , QdrawRow(..)
  , QdrawTree(..)
  , QdropAction(..)
  , QdropIndicatorPosition(..)
  , Qedit(..)
  , QeditItem(..)
  , QeditorDestroyed(..)
  , QeditorEvent(..)
  , QelideMode(..)
  , QelidedText(..)
  , Qend(..)
  , QensureVisible(..), QqensureVisible(..)
  , Qexec(..)
  , QexecuteDelayedItemsLayout(..)
  , QexpandingDirections(..)
  , Qextension(..)
  , Qfamily(..)
  , Qfeatures(..)
  , Qfill(..)
  , QfillRule(..)
  , QfindItems(..)
  , QfirstCursorPosition(..)
  , QfirstPosition(..)
  , QfixedPitch(..)
  , Qfont(..)
  , QfontFamily(..)
  , QfontInfo(..)
  , QfontItalic(..)
  , QfontMetrics(..)
  , QfontPointSize(..)
  , QfontUnderline(..)
  , QfontWeight(..)
  , Qforeground(..)
  , QforegroundBrush(..)
  , Qframe(..)
  , QframeRect(..), QqframeRect(..)
  , QfromPage(..)
  , QgeneratedIconPixmap(..)
  , Qgeometry(..), Qqgeometry(..)
  , QglobalPos(..), QqglobalPos(..)
  , QglobalX(..)
  , QglobalY(..)
  , QhandlesChildEvents(..)
  , QhasAcceptableInput(..)
  , QhasAlphaChannel(..)
  , QhasClipping(..)
  , QhasCursor(..)
  , QhasFocus(..)
  , QhasFrame(..)
  , QhasHeightForWidth(..)
  , QhasSelection(..)
  , QhelpEvent(..)
  , Qhide(..)
  , QhideColumn(..)
  , QhidePopup(..)
  , QhitButton(..), QqhitButton(..)
  , QhitTestComplexControl(..), QqhitTestComplexControl(..)
  , Qhome(..)
  , QhorizontalHeaderItem(..)
  , QhorizontalOffset(..)
  , QhorizontalScrollbarAction(..)
  , QhorizontalScrollbarValueChanged(..)
  , QhorizontalStepsPerItem(..)
  , QhotSpot(..), QqhotSpot(..)
  , QhoverEnterEvent(..)
  , QhoverLeaveEvent(..)
  , QhoverMoveEvent(..)
  , Qicon(..)
  , QiconSize(..), QqiconSize(..)
  , Qqid(..)
  , QinFont(..)
  , Qindent(..)
  , QindexAt(..), QqindexAt(..)
  , QindexFromItem(..)
  , QindexOf(..)
  , QindexRowSizeHint(..)
  , Qindexes(..)
  , QinitFrom(..)
  , QinitStyleOption(..)
  , QinputContext(..)
  , QinsertFromMimeData(..)
  , QinsertHtml(..)
  , QinsertItem(..)
  , QinsertItems(..)
  , QinsertMenu(..)
  , QinsertSeparator(..)
  , QinsertTab(..)
  , QinsertWidget(..)
  , QinstallSceneEventFilter(..)
  , QinternalDrag(..)
  , QinternalDrop(..)
  , Qinvalidate(..)
  , QinvertedAppearance(..)
  , QinvisibleRootItem(..)
  , QisAncestorOf(..)
  , QisAnimated(..)
  , QisAreaAllowed(..)
  , QisCheckable(..)
  , QisChecked(..)
  , QisClean(..)
  , QisColumnHidden(..)
  , QisCopyOf(..)
  , QisEditable(..)
  , QisEnabled(..)
  , QisExpanded(..)
  , QisFirstColumnSpanned(..)
  , QisFlat(..)
  , QisFloating(..)
  , QisIndexHidden(..)
  , QisItemHidden(..)
  , QisItemSelected(..)
  , QisModified(..)
  , QisMovable(..)
  , QisObscured(..), QqisObscured(..)
  , QisObscuredBy(..)
  , QisReadOnly(..)
  , QisRedoAvailable(..)
  , QisRowHidden(..)
  , QisSelected(..)
  , QisSeparator(..)
  , QisSizeGripEnabled(..)
  , QisSortingEnabled(..)
  , QisTabEnabled(..)
  , QisTristate(..)
  , QisUndoAvailable(..)
  , QisUndoRedoEnabled(..)
  , QisVisible(..)
  , Qitalic(..)
  , Qitem(..)
  , QitemAt(..), QqitemAt(..)
  , QitemChange(..)
  , QitemDelegate(..)
  , QitemFromIndex(..)
  , QitemIcon(..)
  , QitemPixmapRect(..), QqitemPixmapRect(..)
  , QitemPrototype(..)
  , QitemText(..)
  , QitemTextRect(..), QqitemTextRect(..)
  , QitemWidget(..)
  , Qitems(..), Qqitems(..)
  , Qkey(..)
  , QkeyboardSearch(..)
  , QlabelText(..)
  , QlastCursorPosition(..)
  , QlastPosition(..)
  , Qlayout(..)
  , QlayoutDirection(..)
  , QlayoutSpacingImplementation(..)
  , Qleading(..)
  , QleftBearing(..)
  , QleftMargin(..)
  , Qlight(..)
  , QlineEdit(..)
  , QlineSpacing(..)
  , QlineWidth(..)
  , QloadFromData(..)
  , QloadResource(..)
  , Qlocale(..)
  , QmapFromItem(..), QqmapFromItem(..)
  , QmapFromParent(..), QqmapFromParent(..)
  , QmapFromScene(..), QqmapFromScene(..)
  , QmapFromSource(..)
  , QmapSelectionFromSource(..)
  , QmapSelectionToSource(..)
  , QmapToItem(..), QqmapToItem(..)
  , QmapToParent(..), QqmapToParent(..)
  , QmapToScene(..), QqmapToScene(..)
  , QmapToSource(..)
  , Qmargin(..)
  , Qmask(..), Qmask_nf(..)
  , Qmatches(..)
  , Qmatrix(..)
  , QmaxWidth(..)
  , Qqmaximum(..)
  , QmaximumDate(..)
  , QmaximumSize(..), QqmaximumSize(..)
  , QmaximumWidth(..)
  , Qmenu(..)
  , QmenuBar(..)
  , Qmerge(..)
  , QmidLineWidth(..)
  , QmimeData(..)
  , QminLeftBearing(..)
  , QminRightBearing(..)
  , Qqminimum(..)
  , QminimumDate(..)
  , QminimumHeightForWidth(..)
  , QminimumSize(..), QqminimumSize(..)
  , QminimumWidth(..)
  , Qmode(..)
  , QmodelColumn(..)
  , Qmodifiers(..)
  , Qmove(..), Qqmove(..)
  , QmoveBy(..)
  , QmoveCursor(..)
  , QnextCheckState(..)
  , QnotchTarget(..)
  , Qoffset(..), Qqoffset(..)
  , QoldPos(..), QqoldPos(..)
  , QopaqueArea(..)
  , QopenExternalLinks(..)
  , QopenPersistentEditor(..)
  , Qorientation(..)
  , Qoverline(..)
  , QoverlinePos(..)
  , QpageBreakPolicy(..)
  , QpageCount(..)
  , QpageSize(..)
  , QpageStep(..)
  , Qpaint(..), Qqpaint(..)
  , Qpalette(..)
  , QparentItem(..)
  , QparentWidget(..)
  , Qpaste(..)
  , Qpen(..)
  , Qpixel(..)
  , QpixelMetric(..)
  , QpixelSize(..)
  , Qpixmap(..), Qpixmap_nf(..), Qqpixmap(..), Qqpixmap_nf(..)
  , QpointSize(..)
  , QpointSizeF(..)
  , Qpolish(..)
  , Qpopup(..)
  , Qqpos(..)
  , Qposition(..), Qqposition(..)
  , QpossibleActions(..)
  , Qprefix(..)
  , QprepareGeometryChange(..)
  , Qqprint(..)
  , Qprinter(..)
  , QproposedAction(..)
  , QrawMode(..)
  , Qreason(..)
  , Qqrect(..), Qqqrect(..)
  , QrectForIndex(..), QqrectForIndex(..)
  , Qredo(..)
  , QredoText(..)
  , Qreexpand(..)
  , Qreject(..)
  , QremoveAction(..)
  , QremoveButton(..)
  , QremoveFromIndex(..)
  , QremoveItem(..)
  , QremoveItemWidget(..)
  , QremoveSceneEventFilter(..)
  , QremoveTab(..)
  , QremoveWidget(..)
  , Qrender(..), Qqrender(..)
  , QrenderHints(..)
  , Qrepaint(..)
  , QrepeatAction(..)
  , QresetMatrix(..)
  , QresetTransform(..)
  , Qqresize(..)
  , QresizeColumnToContents(..)
  , QresizeContents(..)
  , QresizeMode(..)
  , Qresolve(..)
  , QresolveSymlinks(..)
  , QrestoreState(..)
  , QrightBearing(..)
  , QrightMargin(..)
  , QrootIndex(..)
  , Qrotate(..)
  , QrowCountChanged(..)
  , QrowHeight(..)
  , QrowMoved(..)
  , QrowResized(..)
  , QrowSpan(..)
  , QrowsAboutToBeRemoved(..)
  , QrowsInserted(..)
  , QrowsRemoved(..)
  , Qsave(..)
  , QsaveState(..)
  , Qscaled(..), Qscaled_nf(..), Qqscaled(..), Qqscaled_nf(..)
  , QscaledToHeight(..), QscaledToHeight_nf(..)
  , QscaledToWidth(..), QscaledToWidth_nf(..)
  , Qscene(..)
  , QsceneBoundingRect(..), QqsceneBoundingRect(..)
  , QsceneEvent(..)
  , QsceneEventFilter(..)
  , QsceneMatrix(..)
  , QscenePos(..), QqscenePos(..)
  , QsceneRect(..), QqsceneRect(..)
  , QsceneTransform(..)
  , QscheduleDelayedItemsLayout(..)
  , QscreenPos(..), QqscreenPos(..)
  , QscrollContentsBy(..)
  , QscrollDirtyRegion(..)
  , QscrollTo(..)
  , QscrollToItem(..)
  , Qselect(..)
  , QselectAll(..)
  , QselectedIndexes(..)
  , QselectedItems(..)
  , QselectedPosition(..)
  , QselectedText(..)
  , Qselection(..)
  , QselectionChanged(..)
  , QselectionCommand(..)
  , QselectionMode(..)
  , QselectionStart(..)
  , QserialNumber(..)
  , QsetAcceptDrops(..)
  , QsetAcceptedMouseButtons(..)
  , QsetAcceptsHoverEvents(..)
  , QsetActiveAction(..)
  , QsetAlignment(..)
  , QsetAllowedAreas(..)
  , QsetAlphaChannel(..)
  , QsetAnimated(..)
  , QsetArrowType(..)
  , QsetAutoRepeat(..)
  , QsetBackground(..)
  , QsetBackgroundBrush(..)
  , QsetBackgroundColor(..)
  , QsetBottomMargin(..)
  , QsetBrush(..)
  , QsetButtonSymbols(..)
  , QsetButtons(..)
  , QsetCacheMode(..)
  , QsetCenter(..), QqsetCenter(..)
  , QsetCheckState(..)
  , QsetCheckable(..)
  , QsetChecked(..)
  , QsetClipping(..)
  , QsetColor(..)
  , QsetColumnCount(..)
  , QsetColumnHidden(..)
  , QsetColumnWidth(..)
  , QsetCompleter(..)
  , QsetContentsMargins(..)
  , QsetCorner(..)
  , QsetCornerWidget(..)
  , QsetCurrentFont(..)
  , QsetCurrentIndex(..)
  , QsetCurrentItem(..)
  , QsetCurrentRow(..)
  , QsetCurrentWidget(..)
  , QsetCursor(..)
  , QsetDateRange(..)
  , QsetDecimals(..)
  , QsetDefaultAction(..)
  , QsetDirtyRegion(..)
  , QsetDisabled(..)
  , QsetDocument(..)
  , QsetDragEnabled(..)
  , QsetDropAction(..)
  , QsetEditable(..)
  , QsetEditorData(..)
  , QsetElideMode(..)
  , QsetEnabled(..)
  , QsetExclusive(..)
  , QsetExpanded(..)
  , QsetExtension(..)
  , QsetFeatures(..)
  , QsetFillRule(..)
  , QsetFirstColumnSpanned(..)
  , QsetFlag(..)
  , QsetFlags(..)
  , QsetFlat(..)
  , QsetFloatable(..)
  , QsetFocus(..)
  , QsetFont(..)
  , QsetFontFamily(..)
  , QsetFontItalic(..)
  , QsetFontPointSize(..)
  , QsetFontUnderline(..)
  , QsetFontWeight(..)
  , QsetForeground(..)
  , QsetForegroundBrush(..)
  , QsetFrame(..)
  , QsetFromTo(..)
  , QsetGeometry(..), QqsetGeometry(..)
  , QsetHandlesChildEvents(..)
  , QsetHidden(..)
  , QsetHorizontalHeaderItem(..)
  , QsetHorizontalHeaderLabels(..)
  , QsetHorizontalStepsPerItem(..)
  , QsetIcon(..)
  , QsetIconSize(..), QqsetIconSize(..)
  , QsetIndent(..)
  , QsetInputContext(..)
  , QsetInvertedAppearance(..)
  , QsetItem(..)
  , QsetItemDelegate(..)
  , QsetItemHidden(..)
  , QsetItemIcon(..)
  , QsetItemPrototype(..)
  , QsetItemSelected(..)
  , QsetItemText(..)
  , QsetItemWidget(..)
  , QsetLabelText(..)
  , QsetLayoutDirection(..)
  , QsetLeftMargin(..)
  , QsetLineEdit(..)
  , QsetLineWidth(..)
  , QsetLocale(..)
  , QsetMargin(..)
  , QsetMask(..)
  , QsetMaximum(..)
  , QsetMaximumDate(..)
  , QsetMenu(..)
  , QsetMenuBar(..)
  , QsetMidLineWidth(..)
  , QsetMimeData(..)
  , QsetMinimum(..)
  , QsetMinimumDate(..)
  , QsetModel(..)
  , QsetModelData(..)
  , QsetModelColumn(..)
  , QsetModified(..)
  , QsetModifiers(..)
  , QsetMovable(..)
  , QsetNotchTarget(..)
  , QsetOffset(..), QqsetOffset(..)
  , QsetOpenExternalLinks(..)
  , QsetOrientation(..)
  , QsetPageBreakPolicy(..)
  , QsetPageSize(..)
  , QsetPageStep(..)
  , QsetPalette(..)
  , QsetParentItem(..)
  , QsetPen(..)
  , QsetPixmap(..)
  , QsetPlainText(..)
  , QsetPos(..), QqsetPos(..)
  , QsetPosition(..), QqsetPosition(..)
  , QsetPositionForIndex(..), QqsetPositionForIndex(..)
  , QsetPrefix(..)
  , QsetRange(..)
  , QsetReadOnly(..)
  , QqqsetRect(..)
  , QsetRenderHint(..)
  , QsetRenderHints(..)
  , QsetRepeatAction(..)
  , QsetResizeMode(..)
  , QsetResolveSymlinks(..)
  , QsetRightMargin(..)
  , QsetRootIndex(..)
  , QsetRowCount(..)
  , QsetRowHidden(..)
  , QsetScenePos(..), QqsetScenePos(..)
  , QsetSceneRect(..), QqsetSceneRect(..)
  , QsetScreenPos(..), QqsetScreenPos(..)
  , QsetSelected(..)
  , QsetSelectedPosition(..)
  , QsetSelection(..), QqsetSelection(..)
  , QsetSelectionMode(..)
  , QsetSelectionModel(..)
  , QsetShape(..)
  , QsetShortcut(..)
  , QsetSingleStep(..)
  , QsetSizeGripEnabled(..)
  , QsetSizeHint(..), QqsetSizeHint(..)
  , QsetSliderPosition(..)
  , QsetSortIndicator(..)
  , QsetSortRole(..)
  , QsetSortingEnabled(..)
  , QsetSource(..)
  , QsetSourceModel(..)
  , QsetSpacing(..)
  , QsetStandardButtons(..)
  , QsetState(..)
  , QsetStatusTip(..)
  , QsetStretchFactor(..)
  , QsetStyle(..)
  , QsetStyleSheet(..)
  , QsetSuffix(..)
  , QsetTabEnabled(..)
  , QsetTabIcon(..)
  , QsetTabText(..)
  , QsetTabToolTip(..)
  , QsetTabWhatsThis(..)
  , QsetTabPosition(..)
  , QsetTextAlignment(..)
  , QsetTextColor(..)
  , QsetTextCursor(..)
  , QsetTextDirection(..)
  , QsetTextElideMode(..)
  , QsetTextFormat(..)
  , QsetTextInteractionFlags(..)
  , QsetTextVisible(..)
  , QsetTextWidth(..)
  , QsetTickInterval(..)
  , QsetTickPosition(..)
  , QsetTitle(..)
  , QsetToolButtonStyle(..)
  , QsetToolTip(..)
  , QsetTopMargin(..)
  , QsetTransform(..)
  , QsetTristate(..)
  , QsetUndoRedoEnabled(..)
  , QsetUseDesignMetrics(..)
  , QsetUsesScrollButtons(..)
  , QsetValidator(..)
  , QsetVerticalHeaderItem(..)
  , QsetVerticalHeaderLabels(..)
  , QsetVerticalStepsPerItem(..)
  , QsetViewMode(..)
  , QsetViewport(..)
  , QsetViewportMargins(..)
  , QsetWhatsThis(..)
  , QsetWidget(..)
  , QsetWindowModality(..)
  , QsetWindowTitle(..)
  , QsetWordWrap(..)
  , QsetWrapping(..)
  , QsetZValue(..)
  , QsetupViewport(..)
  , Qshape(..)
  , Qshear(..)
  , Qshortcut(..)
  , Qqshow(..)
  , QshowColumn(..)
  , QshowMenu(..)
  , QshowMessage(..)
  , QshowPopup(..)
  , QsingleStep(..)
  , QsizeFromContents(..), QqsizeFromContents(..)
  , QsizeHintForColumn(..)
  , QsizeHintForRow(..)
  , QsliderChange(..)
  , QsliderPosition(..)
  , QsortByColumn(..)
  , QsortChildren(..)
  , QsortItems(..)
  , QsortRole(..)
  , Qsource(..)
  , QspacerItem(..)
  , Qspacing(..)
  , QstandardButton(..)
  , QstandardButtons(..)
  , QstandardIconImplementation(..)
  , QstandardPalette(..)
  , QstandardPixmap(..)
  , QstartAutoScroll(..)
  , QstartDrag(..)
  , QstatusTip(..)
  , QstepBy(..)
  , QstepEnabled(..)
  , QstopAutoScroll(..)
  , QstrikeOut(..)
  , QstrikeOutPos(..)
  , Qstyle(..)
  , QstyleHint(..)
  , QstyleSheet(..)
  , QsubControlRect(..), QqsubControlRect(..)
  , QsubElementRect(..), QqsubElementRect(..)
  , QsupportsExtension(..)
  , QtabIcon(..)
  , QtabInserted(..)
  , QtabRemoved(..)
  , QtabText(..)
  , QtabToolTip(..)
  , QtabWhatsThis(..)
  , QtakeAt(..)
  , QtakeChild(..)
  , QtakeColumn(..)
  , QtakeHorizontalHeaderItem(..)
  , QtakeItem(..)
  , QtakeRow(..)
  , QtakeVerticalHeaderItem(..)
  , QtextAlignment(..)
  , QtextColor(..)
  , QtextCursor(..)
  , QtextDirection(..)
  , QtextElideMode(..)
  , QtextFormat(..)
  , QtextInteractionFlags(..)
  , QtextList(..)
  , QtextWidth(..)
  , QtickInterval(..)
  , QtickPosition(..)
  , QtightBoundingRect(..), QqtightBoundingRect(..)
  , Qtitle(..)
  , QtoHtml(..)
  , QtoPage(..)
  , QtoPlainText(..)
  , Qtoggle(..)
  , QtoggleViewAction(..)
  , QtoolBarArea(..)
  , QtoolButtonStyle(..)
  , QtoolTip(..)
  , QtopLevelItem(..)
  , QtopMargin(..)
  , Qtransform(..)
  , Qtransformed(..), Qtransformed_nf(..)
  , Qunderline(..)
  , QunderlinePos(..)
  , Qundo(..)
  , QundoText(..)
  , Qunpolish(..)
  , QunsetCursor(..)
  , Qupdate(..), Qqupdate(..)
  , QupdateEditorData(..)
  , QupdateEditorGeometries(..)
  , QupdateEditorGeometry(..)
  , QupdateGeometries(..)
  , QuseDesignMetrics(..)
  , QusesScrollButtons(..)
  , Qvalidator(..)
  , QvalueFromText(..)
  , QvaluePropertyName(..)
  , QverticalHeaderItem(..)
  , QverticalOffset(..)
  , QverticalScrollbarAction(..)
  , QverticalScrollbarValueChanged(..)
  , QverticalStepsPerItem(..)
  , QviewMode(..)
  , QviewOptions(..)
  , Qviewport(..)
  , QviewportEvent(..)
  , QvisualItemRect(..), QqvisualItemRect(..)
  , QvisualRect(..), QqvisualRect(..)
  , QvisualRegionForSelection(..)
  , Qweight(..)
  , QwhatsThis(..)
  , Qwidget(..)
  , QwidgetEvent(..)
  , Qwindow(..)
  , QwordWrap(..)
  , Qwrapping(..)
  , QxHeight(..)
  , QzValue(..)
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
import Qtc.Enums.Gui.QPainter
import Qtc.Enums.Gui.QTextFormat
import Qtc.Classes.Types
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Gui

class QacceptDrops a b where
 acceptDrops :: a -> b -> IO (Bool)

class QacceptProposedAction a b where
 acceptProposedAction :: a -> b -> IO ()

class QacceptedMouseButtons a b where
 acceptedMouseButtons :: a -> b -> IO (MouseButtons)

class QacceptsHoverEvents a b where
 acceptsHoverEvents :: a -> b -> IO (Bool)

class QactionAt a b where
 actionAt :: a -> b -> IO (QAction ())

class QqactionAt a b where
 qactionAt :: a -> b -> IO (QAction ())

class QactionGeometry a b where
 actionGeometry :: a -> b -> IO (Rect)

class QqactionGeometry a b where
 qactionGeometry :: a -> b -> IO (QRect ())

class Qactions a b where
 actions :: a -> b -> IO ([QAction ()])

class Qactivate a b c | a -> c where
 activate :: a -> b -> c

class QactiveAction a b where
 activeAction :: a -> b -> IO (QAction ())

class QactualSize a b where
 actualSize :: a -> b -> IO (Size)

class QqactualSize a b where
 qactualSize :: a -> b -> IO (QSize ())

class QaddAction a b c | a b -> c where
 addAction :: a -> b -> c

class QaddButton a b c | b -> c where
 addButton :: a -> b -> c

class QaddChildLayout a b where
 addChildLayout :: a -> b -> IO ()

class QaddChildWidget a b where
 addChildWidget :: a -> b -> IO ()

class QaddEllipse a b c | a -> c where
 addEllipse :: a -> b -> c

class QqaddEllipse a b c | a -> c where
 qaddEllipse :: a -> b -> c

class QaddFile a b where
 addFile :: a -> b -> IO ()

class QqaddFile a b where
 qaddFile :: a -> b -> IO ()

class QaddItem a b c | a -> c where
 addItem :: a -> b -> c

class QaddItems a b where
 addItems :: a -> b -> IO ()

class QaddLayout a b where
 addLayout :: a -> b -> IO ()

class QaddMenu a b c | b -> c where
 addMenu :: a -> b -> c

class QaddPath a b c | a -> c where
 addPath :: a -> b -> c

class QaddPixmap a b c | a -> c where
 addPixmap :: a -> b -> c

class QaddPolygon a b c | a -> c where
 addPolygon :: a -> b -> c

class QaddRect a b c | a -> c where
 addRect :: a -> b -> c

class QqaddRect a b c | a -> c where
 qaddRect :: a -> b -> c

class QaddSeparator a b where
 addSeparator :: a -> b -> IO (QAction ())

class QaddTab a b where
 addTab :: a -> b -> IO (Int)

class QaddText a b c | a -> c where
 addText :: a -> b -> c

class QaddToIndex a b where
 addToIndex :: a -> b -> IO ()

class QaddWidget a b c | a -> c where
 addWidget :: a -> b -> c

class QadjustPosition a b where
 adjustPosition :: a -> b -> IO ()

class QadjustSize a b where
 adjustSize :: a -> b -> IO ()

class Qadvance a b where
 advance :: a -> b -> IO ()

class Qalignment a b where
 alignment :: a -> b -> IO (Alignment)

class QalignmentRect a b where
 alignmentRect :: a -> b -> IO (Rect)

class QqalignmentRect a b where
 qalignmentRect :: a -> b -> IO (QRect ())

class QallowedAreas a b c | a -> c where
 allowedAreas :: a -> b -> c

class QalphaChannel a b c | a -> c where
 alphaChannel :: a -> b -> c

class QalphaChannel_nf a b c | a -> c where
 alphaChannel_nf :: a -> b -> c

class QanchorAt a b where
 anchorAt :: a -> b -> IO (String)

class QqanchorAt a b where
 qanchorAt :: a -> b -> IO (String)

class QappendRow a b where
 appendRow :: a -> b -> IO ()

class QarrowType a b where
 arrowType :: a -> b -> IO (ArrowType)

class Qascent a b c | a -> c where
 ascent :: a -> b -> c

class QautoRepeat a b where
 autoRepeat :: a -> b -> IO (Bool)

class QaverageCharWidth a b c | a -> c where
 averageCharWidth :: a -> b -> c

class Qbackground a b where
 background :: a -> b -> IO (QBrush ())

class QbackgroundBrush a b where
 backgroundBrush :: a -> b -> IO (QBrush ())

class QbackgroundColor a b where
 backgroundColor :: a -> b -> IO (QColor ())

class Qbegin a b c | a -> c where
 begin :: a -> b -> c

class QblockFormat a b where
 blockFormat :: a -> b -> IO (QTextBlockFormat ())

class QblockFormatChanged a b where
 blockFormatChanged :: a -> b -> IO ()

class QblockInserted a b where
 blockInserted :: a -> b -> IO ()

class QblockList a b where
 blockList :: a -> b -> IO ([QTextBlock ()])

class QblockRemoved a b where
 blockRemoved :: a -> b -> IO ()

class Qbold a b where
 bold :: a -> b -> IO (Bool)

class QbottomMargin a b where
 bottomMargin :: a -> b -> IO (Double)

class Qbrush a b where
 brush :: a -> b -> IO (QBrush ())

class Qbutton a b c | a -> c where
 button :: a -> b -> c

class QbuttonSymbols a b where
 buttonSymbols :: a -> b -> IO (ButtonSymbols)

class QbuttonText a b c | a -> c where
 buttonText :: a -> b -> c

class Qbuttons a b c | a -> c where
 buttons :: a -> b -> c

class QcacheKey a b where
 cacheKey :: a -> b -> IO (Int)

class QcacheMode a b c | a -> c where
 cacheMode :: a -> b -> c

class QcanInsertFromMimeData a b where
 canInsertFromMimeData :: a -> b -> IO (Bool)

class QcanRedo a b where
 canRedo :: a -> b -> IO (Bool)

class QcanUndo a b where
 canUndo :: a -> b -> IO (Bool)

class QcharFormat a b where
 charFormat :: a -> b -> IO (QTextCharFormat ())

class QcharFormatIndex a b where
 charFormatIndex :: a -> b -> IO (Int)

class QcheckState a b where
 checkState :: a -> b -> IO (CheckState)

class QcheckStateSet a b where
 checkStateSet :: a -> b -> IO ()

class QchildrenBoundingRect a b where
 childrenBoundingRect :: a -> b -> IO (RectF)

class QqchildrenBoundingRect a b where
 qchildrenBoundingRect :: a -> b -> IO (QRectF ())

class QcleanText a b where
 cleanText :: a -> b -> IO (String)

class QclearFocus a b where
 clearFocus :: a -> b -> IO ()

class QclearMessage a b where
 clearMessage :: a -> b -> IO ()

class QclearSelection a b where
 clearSelection :: a -> b -> IO ()

class Qclone a b c | a -> c where
 clone :: a -> b -> c

class QcloseEditor a b where
 closeEditor :: a -> b -> IO ()

class QclosePersistentEditor a b where
 closePersistentEditor :: a -> b -> IO ()

class QcollidesWithItem a b where
 collidesWithItem :: a -> b -> IO (Bool)

class QcollidesWithPath a b where
 collidesWithPath :: a -> b -> IO (Bool)

class QcollidingItems a b where
 collidingItems :: a -> b -> IO ([QGraphicsItem ()])

class Qcolor a b c | a -> c where
 color :: a -> b -> c

class QcolumnAt a b where
 columnAt :: a -> b -> IO (Int)

class QcolumnCountChanged a b where
 columnCountChanged :: a -> b -> IO ()

class QcolumnMoved a b where
 columnMoved :: a -> b -> IO ()

class QcolumnResized a b where
 columnResized :: a -> b -> IO ()

class QcolumnSpan a b where
 columnSpan :: a -> b -> IO (Int)

class QcolumnViewportPosition a b where
 columnViewportPosition :: a -> b -> IO (Int)

class QcolumnWidth a b where
 columnWidth :: a -> b -> IO (Int)

class Qcolumns a b where
 columns :: a -> b -> IO (Int)

class QcommitData a b where
 commitData :: a -> b -> IO ()

class Qcompleter a b where
 completer :: a -> b -> IO (QCompleter ())

class QcontentsRect a b where
 contentsRect :: a -> b -> IO (Rect)

class QqcontentsRect a b where
 qcontentsRect :: a -> b -> IO (QRect ())

class QcontentsSize a b where
 contentsSize :: a -> b -> IO (Size)

class QqcontentsSize a b where
 qcontentsSize :: a -> b -> IO (QSize ())

class Qqcopy a b c | a -> c where
 qcopy :: a -> b -> c

class Qqcopy_nf a b c | a -> c where
 qcopy_nf :: a -> b -> c

class Qcorner a b c | a -> c where
 corner :: a -> b -> c

class QcornerWidget a b where
 cornerWidget :: a -> b -> IO (QWidget ())

class QcreateEditor a b where
 createEditor :: a -> b -> IO (QWidget ())

class QcreateHeuristicMask a b c | a -> c where
 createHeuristicMask :: a -> b -> c

class QcreateHeuristicMask_nf a b c | a -> c where
 createHeuristicMask_nf :: a -> b -> c

class QcreateMaskFromColor a b c | a -> c where
 createMaskFromColor :: a -> b -> c

class QcreateMaskFromColor_nf a b c | a -> c where
 createMaskFromColor_nf :: a -> b -> c

class QcreateMimeDataFromSelection a b where
 createMimeDataFromSelection :: a -> b -> IO (QMimeData ())

class QcreateRedoAction a b where
 createRedoAction :: a -> b -> IO (QAction ())

class QcreateStandardContextMenu a b where
 createStandardContextMenu :: a -> b -> IO (QMenu ())

class QcreateUndoAction a b where
 createUndoAction :: a -> b -> IO (QAction ())

class QcurrentChanged a b where
 currentChanged :: a -> b -> IO ()

class QcurrentColumn a b where
 currentColumn :: a -> b -> IO (Int)

class QcurrentFont a b where
 currentFont :: a -> b -> IO (QFont ())

class QcurrentIndex a b c | a -> c where
 currentIndex :: a -> b -> c

class QcurrentItem a b c | a -> c where
 currentItem :: a -> b -> c

class QcurrentRow a b where
 currentRow :: a -> b -> IO (Int)

class QcurrentText a b where
 currentText :: a -> b -> IO (String)

class QcurrentWidget a b where
 currentWidget :: a -> b -> IO (QWidget ())

class Qcursor a b where
 cursor :: a -> b -> IO (QCursor ())

class Qcut a b where
 cut :: a -> b -> IO ()

class Qdark a b c | a -> c where
 dark :: a -> b -> c

class QdataChanged a b where
 dataChanged :: a -> b -> IO ()

class QdateTimeFromText a b where
 dateTimeFromText :: a -> b -> IO (QDateTime ())

class Qdecimals a b where
 decimals :: a -> b -> IO (Int)

class QdefaultAction a b where
 defaultAction :: a -> b -> IO (QAction ())

class Qdelta a b where
 delta :: a -> b -> IO (Int)

class Qdescent a b c | a -> c where
 descent :: a -> b -> c

class QdeviceTransform a b where
 deviceTransform :: a -> b -> IO (QTransform ())

class QdirtyRegionOffset a b where
 dirtyRegionOffset :: a -> b -> IO (Point)

class QqdirtyRegionOffset a b where
 qdirtyRegionOffset :: a -> b -> IO (QPoint ())

class QdoAutoScroll a b where
 doAutoScroll :: a -> b -> IO ()

class QdoItemsLayout a b where
 doItemsLayout :: a -> b -> IO ()

class Qdocument a b where
 document :: a -> b -> IO (QTextDocument ())

class Qdone a b where
 done :: a -> b -> IO ()

class QdragEnabled a b where
 dragEnabled :: a -> b -> IO (Bool)

class Qdraw a b where
 draw :: a -> b -> IO ()

class Qqdraw a b where
 qdraw :: a -> b -> IO ()

class QdrawBackground a b where
 drawBackground :: a -> b -> IO ()

class QqdrawBackground a b where
 qdrawBackground :: a -> b -> IO ()

class QdrawBranches a b where
 drawBranches :: a -> b -> IO ()

class QqdrawBranches a b where
 qdrawBranches :: a -> b -> IO ()

class QdrawComplexControl a b where
 drawComplexControl :: a -> b -> IO ()

class QdrawContents a b where
 drawContents :: a -> b -> IO ()

class QdrawControl a b where
 drawControl :: a -> b -> IO ()

class QdrawForeground a b where
 drawForeground :: a -> b -> IO ()

class QqdrawForeground a b where
 qdrawForeground :: a -> b -> IO ()

class QdrawFrame a b where
 drawFrame :: a -> b -> IO ()

class QdrawItemPixmap a b where
 drawItemPixmap :: a -> b -> IO ()

class QqdrawItemPixmap a b where
 qdrawItemPixmap :: a -> b -> IO ()

class QdrawItemText a b where
 drawItemText :: a -> b -> IO ()

class QqdrawItemText a b where
 qdrawItemText :: a -> b -> IO ()

class QdrawItems a b where
 drawItems :: a -> b -> IO ()

class QdrawPrimitive a b where
 drawPrimitive :: a -> b -> IO ()

class QdrawRow a b where
 drawRow :: a -> b -> IO ()

class QdrawTree a b where
 drawTree :: a -> b -> IO ()

class QdropAction a b where
 dropAction :: a -> b -> IO (DropAction)

class QdropIndicatorPosition a b where
 dropIndicatorPosition :: a -> b -> IO (DropIndicatorPosition)

class Qedit a b c | b -> c where
 edit :: a -> b -> c

class QeditItem a b where
 editItem :: a -> b -> IO ()

class QeditorDestroyed a b where
 editorDestroyed :: a -> b -> IO ()

class QeditorEvent a b where
 editorEvent :: a -> b -> IO (Bool)

class QelideMode a b where
 elideMode :: a -> b -> IO (TextElideMode)

class QelidedText a b where
 elidedText :: a -> b -> IO (String)

class Qend a b c | a -> c where
 end :: a -> b -> c

class QensureVisible a b where
 ensureVisible :: a -> b -> IO ()

class QqensureVisible a b where
 qensureVisible :: a -> b -> IO ()

class Qexec a b c | a -> c where
 exec :: a -> b -> c

class QexecuteDelayedItemsLayout a b where
 executeDelayedItemsLayout :: a -> b -> IO ()

class QexpandingDirections a b where
 expandingDirections :: a -> b -> IO (Orientations)

class Qextension a b c | a -> c where
 extension :: a -> b -> c

class Qfamily a b where
 family :: a -> b -> IO (String)

class Qfeatures a b c | a -> c where
 features :: a -> b -> c

class Qfill a b where
 fill :: a -> b -> IO ()

class QfillRule a b where
 fillRule :: a -> b -> IO (FillRule)

class QfindItems a b c | a -> c where
 findItems :: a -> b -> c

class QfirstCursorPosition a b where
 firstCursorPosition :: a -> b -> IO (QTextCursor ())

class QfirstPosition a b where
 firstPosition :: a -> b -> IO (Int)

class QfixedPitch a b where
 fixedPitch :: a -> b -> IO (Bool)

class Qfont a b where
 font :: a -> b -> IO (QFont ())

class QfontFamily a b where
 fontFamily :: a -> b -> IO (String)

class QfontInfo a b where
 fontInfo :: a -> b -> IO (QFontInfo ())

class QfontItalic a b where
 fontItalic :: a -> b -> IO (Bool)

class QfontMetrics a b where
 fontMetrics :: a -> b -> IO (QFontMetrics ())

class QfontPointSize a b where
 fontPointSize :: a -> b -> IO (Double)

class QfontUnderline a b where
 fontUnderline :: a -> b -> IO (Bool)

class QfontWeight a b where
 fontWeight :: a -> b -> IO (Int)

class Qforeground a b where
 foreground :: a -> b -> IO (QBrush ())

class QforegroundBrush a b where
 foregroundBrush :: a -> b -> IO (QBrush ())

class Qframe a b where
 frame :: a -> b -> IO (Bool)

class QframeRect a b where
 frameRect :: a -> b -> IO (Rect)

class QqframeRect a b where
 qframeRect :: a -> b -> IO (QRect ())

class QfromPage a b where
 fromPage :: a -> b -> IO (Int)

class QgeneratedIconPixmap a b where
 generatedIconPixmap :: a -> b -> IO (QPixmap ())

class Qgeometry a b where
 geometry :: a -> b -> IO (Rect)

class Qqgeometry a b where
 qgeometry :: a -> b -> IO (QRect ())

class QglobalPos a b where
 globalPos :: a -> b -> IO (Point)

class QqglobalPos a b where
 qglobalPos :: a -> b -> IO (QPoint ())

class QglobalX a b where
 globalX :: a -> b -> IO (Int)

class QglobalY a b where
 globalY :: a -> b -> IO (Int)

class QhandlesChildEvents a b where
 handlesChildEvents :: a -> b -> IO (Bool)

class QhasAcceptableInput a b where
 hasAcceptableInput :: a -> b -> IO (Bool)

class QhasAlphaChannel a b where
 hasAlphaChannel :: a -> b -> IO (Bool)

class QhasClipping a b where
 hasClipping :: a -> b -> IO (Bool)

class QhasCursor a b where
 hasCursor :: a -> b -> IO (Bool)

class QhasFocus a b where
 hasFocus :: a -> b -> IO (Bool)

class QhasFrame a b where
 hasFrame :: a -> b -> IO (Bool)

class QhasHeightForWidth a b where
 hasHeightForWidth :: a -> b -> IO (Bool)

class QhasSelection a b where
 hasSelection :: a -> b -> IO (Bool)

class QhelpEvent a b c | a -> c where
 helpEvent :: a -> b -> c

class Qhide a b where
 hide :: a -> b -> IO ()

class QhideColumn a b where
 hideColumn :: a -> b -> IO ()

class QhidePopup a b where
 hidePopup :: a -> b -> IO ()

class QhitButton a b where
 hitButton :: a -> b -> IO (Bool)

class QqhitButton a b where
 qhitButton :: a -> b -> IO (Bool)

class QhitTestComplexControl a b where
 hitTestComplexControl :: a -> b -> IO (SubControl)

class QqhitTestComplexControl a b where
 qhitTestComplexControl :: a -> b -> IO (SubControl)

class Qhome a b where
 home :: a -> b -> IO ()

class QhorizontalHeaderItem a b c | a -> c where
 horizontalHeaderItem :: a -> b -> c

class QhorizontalOffset a b where
 horizontalOffset :: a -> b -> IO (Int)

class QhorizontalScrollbarAction a b where
 horizontalScrollbarAction :: a -> b -> IO ()

class QhorizontalScrollbarValueChanged a b where
 horizontalScrollbarValueChanged :: a -> b -> IO ()

class QhorizontalStepsPerItem a b where
 horizontalStepsPerItem :: a -> b -> IO (Int)

class QhotSpot a b where
 hotSpot :: a -> b -> IO (Point)

class QqhotSpot a b where
 qhotSpot :: a -> b -> IO (QPoint ())

class QhoverEnterEvent a b where
 hoverEnterEvent :: a -> b -> IO ()

class QhoverLeaveEvent a b where
 hoverLeaveEvent :: a -> b -> IO ()

class QhoverMoveEvent a b where
 hoverMoveEvent :: a -> b -> IO ()

class Qicon a b c | a -> c where
 icon :: a -> b -> c

class QiconSize a b where
 iconSize :: a -> b -> IO (Size)

class QqiconSize a b where
 qiconSize :: a -> b -> IO (QSize ())

class Qqid a b where
 qid :: a -> b -> IO (Int)

class QinFont a b where
 inFont :: a -> b -> IO (Bool)

class Qindent a b where
 indent :: a -> b -> IO (Int)

class QindexAt a b where
 indexAt :: a -> b -> IO (QModelIndex ())

class QqindexAt a b where
 qindexAt :: a -> b -> IO (QModelIndex ())

class QindexFromItem a b where
 indexFromItem :: a -> b -> IO (QModelIndex ())

class QindexOf a b where
 indexOf :: a -> b -> IO (Int)

class QindexRowSizeHint a b where
 indexRowSizeHint :: a -> b -> IO (Int)

class Qindexes a b where
 indexes :: a -> b -> IO ([QModelIndex ()])

class QinitFrom a b where
 initFrom :: a -> b -> IO ()

class QinitStyleOption a b where
 initStyleOption :: a -> b -> IO ()

class QinputContext a b where
 inputContext :: a -> b -> IO (QInputContext ())

class QinsertFromMimeData a b where
 insertFromMimeData :: a -> b -> IO ()

class QinsertHtml a b where
 insertHtml :: a -> b -> IO ()

class QinsertItem a b c | a -> c where
 insertItem :: a -> b -> c

class QinsertItems a b where
 insertItems :: a -> b -> IO ()

class QinsertMenu a b where
 insertMenu :: a -> b -> IO (QAction ())

class QinsertSeparator a b where
 insertSeparator :: a -> b -> IO (QAction ())

class QinsertTab a b where
 insertTab :: a -> b -> IO (Int)

class QinsertWidget a b c | a -> c where
 insertWidget :: a -> b -> c

class QinstallSceneEventFilter a b where
 installSceneEventFilter :: a -> b -> IO ()

class QinternalDrag a b where
 internalDrag :: a -> b -> IO ()

class QinternalDrop a b where
 internalDrop :: a -> b -> IO ()

class Qinvalidate a b where
 invalidate :: a -> b -> IO ()

class QinvertedAppearance a b where
 invertedAppearance :: a -> b -> IO (Bool)

class QinvisibleRootItem a b c | a -> c where
 invisibleRootItem :: a -> b -> c

class QisAncestorOf a b where
 isAncestorOf :: a -> b -> IO (Bool)

class QisAnimated a b where
 isAnimated :: a -> b -> IO (Bool)

class QisAreaAllowed a b where
 isAreaAllowed :: a -> b -> IO (Bool)

class QisCheckable a b where
 isCheckable :: a -> b -> IO (Bool)

class QisChecked a b where
 isChecked :: a -> b -> IO (Bool)

class QisClean a b where
 isClean :: a -> b -> IO (Bool)

class QisColumnHidden a b where
 isColumnHidden :: a -> b -> IO (Bool)

class QisCopyOf a b where
 isCopyOf :: a -> b -> IO (Bool)

class QisEditable a b where
 isEditable :: a -> b -> IO (Bool)

class QisEnabled a b where
 isEnabled :: a -> b -> IO (Bool)

class QisExpanded a b where
 isExpanded :: a -> b -> IO (Bool)

class QisFirstColumnSpanned a b where
 isFirstColumnSpanned :: a -> b -> IO (Bool)

class QisFlat a b where
 isFlat :: a -> b -> IO (Bool)

class QisFloating a b where
 isFloating :: a -> b -> IO (Bool)

class QisIndexHidden a b where
 isIndexHidden :: a -> b -> IO (Bool)

class QisItemHidden a b where
 isItemHidden :: a -> b -> IO (Bool)

class QisItemSelected a b where
 isItemSelected :: a -> b -> IO (Bool)

class QisModified a b where
 isModified :: a -> b -> IO (Bool)

class QisMovable a b where
 isMovable :: a -> b -> IO (Bool)

class QisObscured a b where
 isObscured :: a -> b -> IO (Bool)

class QqisObscured a b where
 qisObscured :: a -> b -> IO (Bool)

class QisObscuredBy a b where
 isObscuredBy :: a -> b -> IO (Bool)

class QisReadOnly a b where
 isReadOnly :: a -> b -> IO (Bool)

class QisRedoAvailable a b where
 isRedoAvailable :: a -> b -> IO (Bool)

class QisRowHidden a b where
 isRowHidden :: a -> b -> IO (Bool)

class QisSelected a b where
 isSelected :: a -> b -> IO (Bool)

class QisSeparator a b where
 isSeparator :: a -> b -> IO (Bool)

class QisSizeGripEnabled a b where
 isSizeGripEnabled :: a -> b -> IO (Bool)

class QisSortingEnabled a b where
 isSortingEnabled :: a -> b -> IO (Bool)

class QisTabEnabled a b where
 isTabEnabled :: a -> b -> IO (Bool)

class QisTristate a b where
 isTristate :: a -> b -> IO (Bool)

class QisUndoAvailable a b where
 isUndoAvailable :: a -> b -> IO (Bool)

class QisUndoRedoEnabled a b where
 isUndoRedoEnabled :: a -> b -> IO (Bool)

class QisVisible a b where
 isVisible :: a -> b -> IO (Bool)

class Qitalic a b where
 italic :: a -> b -> IO (Bool)

class Qitem a b c | a -> c where
 item :: a -> b -> c

class QitemAt a b c | a -> c where
 itemAt :: a -> b -> c

class QqitemAt a b c | a -> c where
 qitemAt :: a -> b -> c

class QitemChange a b where
 itemChange :: a -> b -> IO (QVariant ())

class QitemDelegate a b where
 itemDelegate :: a -> b -> IO (QAbstractItemDelegate ())

class QitemFromIndex a b c | a -> c where
 itemFromIndex :: a -> b -> c

class QitemIcon a b where
 itemIcon :: a -> b -> IO (QIcon ())

class QitemPixmapRect a b where
 itemPixmapRect :: a -> b -> IO (Rect)

class QqitemPixmapRect a b where
 qitemPixmapRect :: a -> b -> IO (QRect ())

class QitemPrototype a b c | a -> c where
 itemPrototype :: a -> b -> c

class QitemText a b where
 itemText :: a -> b -> IO (String)

class QitemTextRect a b where
 itemTextRect :: a -> b -> IO (Rect)

class QqitemTextRect a b where
 qitemTextRect :: a -> b -> IO (QRect ())

class QitemWidget a b where
 itemWidget :: a -> b -> IO (QWidget ())

class Qitems a b c | a -> c where
 items :: a -> b -> c

class Qqitems a b where
 qitems :: a -> b -> IO ([QGraphicsItem ()])

class Qkey a b c | a -> c where
 key :: a -> b -> c

class QkeyboardSearch a b where
 keyboardSearch :: a -> b -> IO ()

class QlabelText a b where
 labelText :: a -> b -> IO (String)

class QlastCursorPosition a b where
 lastCursorPosition :: a -> b -> IO (QTextCursor ())

class QlastPosition a b where
 lastPosition :: a -> b -> IO (Int)

class Qlayout a b c | a -> c where
 layout :: a -> b -> c

class QlayoutDirection a b where
 layoutDirection :: a -> b -> IO (LayoutDirection)

class QlayoutSpacingImplementation a b where
 layoutSpacingImplementation :: a -> b -> IO (Int)

class Qleading a b c | a -> c where
 leading :: a -> b -> c

class QleftBearing a b c | a -> c where
 leftBearing :: a -> b -> c

class QleftMargin a b where
 leftMargin :: a -> b -> IO (Double)

class Qlight a b c | a -> c where
 light :: a -> b -> c

class QlineEdit a b where
 lineEdit :: a -> b -> IO (QLineEdit ())

class QlineSpacing a b c | a -> c where
 lineSpacing :: a -> b -> c

class QlineWidth a b c | a -> c where
 lineWidth :: a -> b -> c

class QloadFromData a b where
 loadFromData :: a -> b -> IO (Bool)

class QloadResource a b where
 loadResource :: a -> b -> IO (QVariant ())

class Qlocale a b where
 locale :: a -> b -> IO (QLocale ())

class QmapFromItem a b c | b -> c where
 mapFromItem :: a -> b -> c

class QqmapFromItem a b c | b -> c where
 qmapFromItem :: a -> b -> c

class QmapFromParent a b c | b -> c where
 mapFromParent :: a -> b -> c

class QqmapFromParent a b c | b -> c where
 qmapFromParent :: a -> b -> c

class QmapFromScene a b c | a b -> c where
 mapFromScene :: a -> b -> c

class QqmapFromScene a b c | a b -> c where
 qmapFromScene :: a -> b -> c

class QmapFromSource a b where
 mapFromSource :: a -> b -> IO (QModelIndex ())

class QmapSelectionFromSource a b where
 mapSelectionFromSource :: a -> b -> IO (QItemSelection ())

class QmapSelectionToSource a b where
 mapSelectionToSource :: a -> b -> IO (QItemSelection ())

class QmapToItem a b c | b -> c where
 mapToItem :: a -> b -> c

class QqmapToItem a b c | b -> c where
 qmapToItem :: a -> b -> c

class QmapToParent a b c | b -> c where
 mapToParent :: a -> b -> c

class QqmapToParent a b c | b -> c where
 qmapToParent :: a -> b -> c

class QmapToScene a b c | b -> c where
 mapToScene :: a -> b -> c

class QqmapToScene a b c | b -> c where
 qmapToScene :: a -> b -> c

class QmapToSource a b where
 mapToSource :: a -> b -> IO (QModelIndex ())

class Qmargin a b c | a -> c where
 margin :: a -> b -> c

class Qmask a b c | a -> c where
 mask :: a -> b -> c

class Qmask_nf a b c | a -> c where
 mask_nf :: a -> b -> c

class Qmatches a b c | a -> c where
 matches :: a -> b -> c

class Qmatrix a b where
 matrix :: a -> b -> IO (QMatrix ())

class QmaxWidth a b c | a -> c where
 maxWidth :: a -> b -> c

class Qqmaximum a b c | a -> c where
 qmaximum :: a -> b -> c

class QmaximumDate a b where
 maximumDate :: a -> b -> IO (QDate ())

class QmaximumSize a b where
 maximumSize :: a -> b -> IO (Size)

class QqmaximumSize a b where
 qmaximumSize :: a -> b -> IO (QSize ())

class QmaximumWidth a b c | a -> c where
 maximumWidth :: a -> b -> c

class Qmenu a b where
 menu :: a -> b -> IO (QMenu ())

class QmenuBar a b c | a -> c where
 menuBar :: a -> b -> c

class Qmerge a b where
 merge :: a -> b -> IO ()

class QmidLineWidth a b where
 midLineWidth :: a -> b -> IO (Int)

class QmimeData a b where
 mimeData :: a -> b -> IO (QMimeData ())

class QminLeftBearing a b c | a -> c where
 minLeftBearing :: a -> b -> c

class QminRightBearing a b c | a -> c where
 minRightBearing :: a -> b -> c

class Qqminimum a b c | a -> c where
 qminimum :: a -> b -> c

class QminimumDate a b where
 minimumDate :: a -> b -> IO (QDate ())

class QminimumHeightForWidth a b where
 minimumHeightForWidth :: a -> b -> IO (Int)

class QminimumSize a b where
 minimumSize :: a -> b -> IO (Size)

class QqminimumSize a b where
 qminimumSize :: a -> b -> IO (QSize ())

class QminimumWidth a b c | a -> c where
 minimumWidth :: a -> b -> c

class Qmode a b c | a -> c where
 mode :: a -> b -> c

class QmodelColumn a b where
 modelColumn :: a -> b -> IO (Int)

class Qmodifiers a b where
 modifiers :: a -> b -> IO (KeyboardModifiers)

class Qmove a b where
 move :: a -> b -> IO ()

class Qqmove a b where
 qmove :: a -> b -> IO ()

class QmoveBy a b where
 moveBy :: a -> b -> IO ()

class QmoveCursor a b c | a -> c where
 moveCursor :: a -> b -> c

class QnextCheckState a b where
 nextCheckState :: a -> b -> IO ()

class QnotchTarget a b where
 notchTarget :: a -> b -> IO (Double)

class Qoffset a b c | a -> c where
 offset :: a -> b -> c

class Qqoffset a b c | a -> c where
 qoffset :: a -> b -> c

class QoldPos a b where
 oldPos :: a -> b -> IO (Point)

class QqoldPos a b where
 qoldPos :: a -> b -> IO (QPoint ())

class QopaqueArea a b where
 opaqueArea :: a -> b -> IO (QPainterPath ())

class QopenExternalLinks a b where
 openExternalLinks :: a -> b -> IO (Bool)

class QopenPersistentEditor a b where
 openPersistentEditor :: a -> b -> IO ()

class Qorientation a b c | a -> c where
 orientation :: a -> b -> c

class Qoverline a b where
 overline :: a -> b -> IO (Bool)

class QoverlinePos a b c | a -> c where
 overlinePos :: a -> b -> c

class QpageBreakPolicy a b where
 pageBreakPolicy :: a -> b -> IO (PageBreakFlags)

class QpageCount a b where
 pageCount :: a -> b -> IO (Int)

class QpageSize a b c | a -> c where
 pageSize :: a -> b -> c

class QpageStep a b where
 pageStep :: a -> b -> IO (Int)

class Qpaint a b where
 paint :: a -> b -> IO ()

class Qqpaint a b where
 qpaint :: a -> b -> IO ()

class Qpalette a b where
 palette :: a -> b -> IO (QPalette ())

class QparentItem a b where
 parentItem :: a -> b -> IO (QGraphicsItem ())

class QparentWidget a b where
 parentWidget :: a -> b -> IO (QWidget ())

class Qpaste a b where
 paste :: a -> b -> IO ()

class Qpen a b where
 pen :: a -> b -> IO (QPen ())

class Qpixel a b where
 pixel :: a -> b -> IO (Int)

class QpixelMetric a b where
 pixelMetric :: a -> b -> IO (Int)

class QpixelSize a b where
 pixelSize :: a -> b -> IO (Int)

class Qpixmap a b where
 pixmap :: a -> b -> IO (QPixmap ())

class Qpixmap_nf a b where
 pixmap_nf :: a -> b -> IO (QPixmap ())

class Qqpixmap a b where
 qpixmap :: a -> b -> IO (QPixmap ())

class Qqpixmap_nf a b where
 qpixmap_nf :: a -> b -> IO (QPixmap ())

class QpointSize a b where
 pointSize :: a -> b -> IO (Int)

class QpointSizeF a b where
 pointSizeF :: a -> b -> IO (Double)

class Qpolish a b where
 polish :: a -> b -> IO ()

class Qpopup a b c | a -> c where
 popup :: a -> b -> c

class Qqpos a b c | a -> c where
 qpos :: a -> b -> c

class Qposition a b c | a -> c where
 position :: a -> b -> c

class Qqposition a b where
 qposition :: a -> b -> IO (QPointF ())

class QpossibleActions a b where
 possibleActions :: a -> b -> IO (DropActions)

class Qprefix a b where
 prefix :: a -> b -> IO (String)

class QprepareGeometryChange a b where
 prepareGeometryChange :: a -> b -> IO ()

class Qqprint a b where
 qprint :: a -> b -> IO ()

class Qprinter a b where
 printer :: a -> b -> IO (QPrinter ())

class QproposedAction a b where
 proposedAction :: a -> b -> IO (DropAction)

class QrawMode a b where
 rawMode :: a -> b -> IO (Bool)

class Qreason a b c | a -> c where
 reason :: a -> b -> c

class Qqrect a b c | a -> c where
 qrect :: a -> b -> c

class Qqqrect a b c | a -> c where
 qqrect :: a -> b -> c

class QrectForIndex a b where
 rectForIndex :: a -> b -> IO (Rect)

class QqrectForIndex a b where
 qrectForIndex :: a -> b -> IO (QRect ())

class Qredo a b where
 redo :: a -> b -> IO ()

class QredoText a b where
 redoText :: a -> b -> IO (String)

class Qreexpand a b where
 reexpand :: a -> b -> IO ()

class Qreject a b where
 reject :: a -> b -> IO ()

class QremoveAction a b where
 removeAction :: a -> b -> IO ()

class QremoveButton a b where
 removeButton :: a -> b -> IO ()

class QremoveFromIndex a b where
 removeFromIndex :: a -> b -> IO ()

class QremoveItem a b where
 removeItem :: a -> b -> IO ()

class QremoveItemWidget a b where
 removeItemWidget :: a -> b -> IO ()

class QremoveSceneEventFilter a b where
 removeSceneEventFilter :: a -> b -> IO ()

class QremoveTab a b where
 removeTab :: a -> b -> IO ()

class QremoveWidget a b where
 removeWidget :: a -> b -> IO ()

class Qrender a b where
 render :: a -> b -> IO ()

class Qqrender a b where
 qrender :: a -> b -> IO ()

class QrenderHints a b where
 renderHints :: a -> b -> IO (RenderHints)

class Qrepaint a b where
 repaint :: a -> b -> IO ()

class QrepeatAction a b where
 repeatAction :: a -> b -> IO (SliderAction)

class QresetMatrix a b where
 resetMatrix :: a -> b -> IO ()

class QresetTransform a b where
 resetTransform :: a -> b -> IO ()

class Qqresize a b where
 qresize :: a -> b -> IO ()

class QresizeColumnToContents a b where
 resizeColumnToContents :: a -> b -> IO ()

class QresizeContents a b where
 resizeContents :: a -> b -> IO ()

class QresizeMode a b c | a -> c where
 resizeMode :: a -> b -> c

class Qresolve a b c | b -> c where
 resolve :: a -> b -> c

class QresolveSymlinks a b where
 resolveSymlinks :: a -> b -> IO (Bool)

class QrestoreState a b where
 restoreState :: a -> b -> IO (Bool)

class QrightBearing a b c | a -> c where
 rightBearing :: a -> b -> c

class QrightMargin a b where
 rightMargin :: a -> b -> IO (Double)

class QrootIndex a b where
 rootIndex :: a -> b -> IO (QModelIndex ())

class Qrotate a b where
 rotate :: a -> b -> IO ()

class QrowCountChanged a b where
 rowCountChanged :: a -> b -> IO ()

class QrowHeight a b where
 rowHeight :: a -> b -> IO (Int)

class QrowMoved a b where
 rowMoved :: a -> b -> IO ()

class QrowResized a b where
 rowResized :: a -> b -> IO ()

class QrowSpan a b where
 rowSpan :: a -> b -> IO (Int)

class QrowsAboutToBeRemoved a b where
 rowsAboutToBeRemoved :: a -> b -> IO ()

class QrowsInserted a b where
 rowsInserted :: a -> b -> IO ()

class QrowsRemoved a b where
 rowsRemoved :: a -> b -> IO ()

class Qsave a b c | a -> c where
 save :: a -> b -> c

class QsaveState a b where
 saveState :: a -> b -> IO (QByteArray ())

class Qscaled a b c | a -> c where
 scaled :: a -> b -> c

class Qscaled_nf a b c | a -> c where
 scaled_nf :: a -> b -> c

class Qqscaled a b c | a -> c where
 qscaled :: a -> b -> c

class Qqscaled_nf a b c | a -> c where
 qscaled_nf :: a -> b -> c

class QscaledToHeight a b c | a -> c where
 scaledToHeight :: a -> b -> c

class QscaledToHeight_nf a b c | a -> c where
 scaledToHeight_nf :: a -> b -> c

class QscaledToWidth a b c | a -> c where
 scaledToWidth :: a -> b -> c

class QscaledToWidth_nf a b c | a -> c where
 scaledToWidth_nf :: a -> b -> c

class Qscene a b where
 scene :: a -> b -> IO (QGraphicsScene ())

class QsceneBoundingRect a b where
 sceneBoundingRect :: a -> b -> IO (RectF)

class QqsceneBoundingRect a b where
 qsceneBoundingRect :: a -> b -> IO (QRectF ())

class QsceneEvent a b where
 sceneEvent :: a -> b -> IO (Bool)

class QsceneEventFilter a b where
 sceneEventFilter :: a -> b -> IO (Bool)

class QsceneMatrix a b where
 sceneMatrix :: a -> b -> IO (QMatrix ())

class QscenePos a b where
 scenePos :: a -> b -> IO (PointF)

class QqscenePos a b where
 qscenePos :: a -> b -> IO (QPointF ())

class QsceneRect a b where
 sceneRect :: a -> b -> IO (RectF)

class QqsceneRect a b where
 qsceneRect :: a -> b -> IO (QRectF ())

class QsceneTransform a b where
 sceneTransform :: a -> b -> IO (QTransform ())

class QscheduleDelayedItemsLayout a b where
 scheduleDelayedItemsLayout :: a -> b -> IO ()

class QscreenPos a b where
 screenPos :: a -> b -> IO (Point)

class QqscreenPos a b where
 qscreenPos :: a -> b -> IO (QPoint ())

class QscrollContentsBy a b where
 scrollContentsBy :: a -> b -> IO ()

class QscrollDirtyRegion a b where
 scrollDirtyRegion :: a -> b -> IO ()

class QscrollTo a b where
 scrollTo :: a -> b -> IO ()

class QscrollToItem a b where
 scrollToItem :: a -> b -> IO ()

class Qselect a b where
 select :: a -> b -> IO ()

class QselectAll a b where
 selectAll :: a -> b -> IO ()

class QselectedIndexes a b where
 selectedIndexes :: a -> b -> IO ([QModelIndex ()])

class QselectedItems a b c | a -> c where
 selectedItems :: a -> b -> c

class QselectedPosition a b where
 selectedPosition :: a -> b -> IO (Int)

class QselectedText a b where
 selectedText :: a -> b -> IO (String)

class Qselection a b c | a -> c where
 selection :: a -> b -> c

class QselectionChanged a b where
 selectionChanged :: a -> b -> IO ()

class QselectionCommand a b where
 selectionCommand :: a -> b -> IO (SelectionFlags)

class QselectionMode a b c | a -> c where
 selectionMode :: a -> b -> c

class QselectionStart a b where
 selectionStart :: a -> b -> IO (Int)

class QserialNumber a b where
 serialNumber :: a -> b -> IO (Int)

class QsetAcceptDrops a b where
 setAcceptDrops :: a -> b -> IO ()

class QsetAcceptedMouseButtons a b where
 setAcceptedMouseButtons :: a -> b -> IO ()

class QsetAcceptsHoverEvents a b where
 setAcceptsHoverEvents :: a -> b -> IO ()

class QsetActiveAction a b where
 setActiveAction :: a -> b -> IO ()

class QsetAlignment a b c | b -> c where
 setAlignment :: a -> b -> c

class QsetAllowedAreas a b where
 setAllowedAreas :: a -> b -> IO ()

class QsetAlphaChannel a b where
 setAlphaChannel :: a -> b -> IO ()

class QsetAnimated a b where
 setAnimated :: a -> b -> IO ()

class QsetArrowType a b where
 setArrowType :: a -> b -> IO ()

class QsetAutoRepeat a b where
 setAutoRepeat :: a -> b -> IO ()

class QsetBackground a b where
 setBackground :: a -> b -> IO ()

class QsetBackgroundBrush a b where
 setBackgroundBrush :: a -> b -> IO ()

class QsetBackgroundColor a b where
 setBackgroundColor :: a -> b -> IO ()

class QsetBottomMargin a b where
 setBottomMargin :: a -> b -> IO ()

class QsetBrush a b where
 setBrush :: a -> b -> IO ()

class QsetButtonSymbols a b where
 setButtonSymbols :: a -> b -> IO ()

class QsetButtons a b where
 setButtons :: a -> b -> IO ()

class QsetCacheMode a b where
 setCacheMode :: a -> b -> IO ()

class QsetCenter a b where
 setCenter :: a -> b -> IO ()

class QqsetCenter a b where
 qsetCenter :: a -> b -> IO ()

class QsetCheckState a b where
 setCheckState :: a -> b -> IO ()

class QsetCheckable a b where
 setCheckable :: a -> b -> IO ()

class QsetChecked a b where
 setChecked :: a -> b -> IO ()

class QsetClipping a b where
 setClipping :: a -> b -> IO ()

class QsetColor a b where
 setColor :: a -> b -> IO ()

class QsetColumnCount a b where
 setColumnCount :: a -> b -> IO ()

class QsetColumnHidden a b where
 setColumnHidden :: a -> b -> IO ()

class QsetColumnWidth a b where
 setColumnWidth :: a -> b -> IO ()

class QsetCompleter a b where
 setCompleter :: a -> b -> IO ()

class QsetContentsMargins a b where
 setContentsMargins :: a -> b -> IO ()

class QsetCorner a b where
 setCorner :: a -> b -> IO ()

class QsetCornerWidget a b where
 setCornerWidget :: a -> b -> IO ()

class QsetCurrentFont a b where
 setCurrentFont :: a -> b -> IO ()

class QsetCurrentIndex a b where
 setCurrentIndex :: a -> b -> IO ()

class QsetCurrentItem a b where
 setCurrentItem :: a -> b -> IO ()

class QsetCurrentRow a b c | a -> c where
 setCurrentRow :: a -> b -> c

class QsetCurrentWidget a b where
 setCurrentWidget :: a -> b -> IO ()

class QsetCursor a b where
 setCursor :: a -> b -> IO ()

class QsetDateRange a b where
 setDateRange :: a -> b -> IO ()

class QsetDecimals a b where
 setDecimals :: a -> b -> IO ()

class QsetDefaultAction a b where
 setDefaultAction :: a -> b -> IO ()

class QsetDirtyRegion a b where
 setDirtyRegion :: a -> b -> IO ()

class QsetDisabled a b where
 setDisabled :: a -> b -> IO ()

class QsetDocument a b where
 setDocument :: a -> b -> IO ()

class QsetDragEnabled a b where
 setDragEnabled :: a -> b -> IO ()

class QsetDropAction a b where
 setDropAction :: a -> b -> IO ()

class QsetEditable a b where
 setEditable :: a -> b -> IO ()

class QsetEditorData a b where
 setEditorData :: a -> b -> IO ()

class QsetElideMode a b where
 setElideMode :: a -> b -> IO ()

class QsetEnabled a b where
 setEnabled :: a -> b -> IO ()

class QsetExclusive a b where
 setExclusive :: a -> b -> IO ()

class QsetExpanded a b where
 setExpanded :: a -> b -> IO ()

class QsetExtension a b where
 setExtension :: a -> b -> IO ()

class QsetFeatures a b where
 setFeatures :: a -> b -> IO ()

class QsetFillRule a b where
 setFillRule :: a -> b -> IO ()

class QsetFirstColumnSpanned a b where
 setFirstColumnSpanned :: a -> b -> IO ()

class QsetFlag a b where
 setFlag :: a -> b -> IO ()

class QsetFlags a b where
 setFlags :: a -> b -> IO ()

class QsetFlat a b where
 setFlat :: a -> b -> IO ()

class QsetFloatable a b where
 setFloatable :: a -> b -> IO ()

class QsetFocus a b where
 setFocus :: a -> b -> IO ()

class QsetFont a b where
 setFont :: a -> b -> IO ()

class QsetFontFamily a b where
 setFontFamily :: a -> b -> IO ()

class QsetFontItalic a b where
 setFontItalic :: a -> b -> IO ()

class QsetFontPointSize a b where
 setFontPointSize :: a -> b -> IO ()

class QsetFontUnderline a b where
 setFontUnderline :: a -> b -> IO ()

class QsetFontWeight a b where
 setFontWeight :: a -> b -> IO ()

class QsetForeground a b where
 setForeground :: a -> b -> IO ()

class QsetForegroundBrush a b where
 setForegroundBrush :: a -> b -> IO ()

class QsetFrame a b where
 setFrame :: a -> b -> IO ()

class QsetFromTo a b where
 setFromTo :: a -> b -> IO ()

class QsetGeometry a b where
 setGeometry :: a -> b -> IO ()

class QqsetGeometry a b where
 qsetGeometry :: a -> b -> IO ()

class QsetHandlesChildEvents a b where
 setHandlesChildEvents :: a -> b -> IO ()

class QsetHidden a b where
 setHidden :: a -> b -> IO ()

class QsetHorizontalHeaderItem a b where
 setHorizontalHeaderItem :: a -> b -> IO ()

class QsetHorizontalHeaderLabels a b where
 setHorizontalHeaderLabels :: a -> b -> IO ()

class QsetHorizontalStepsPerItem a b where
 setHorizontalStepsPerItem :: a -> b -> IO ()

class QsetIcon a b where
 setIcon :: a -> b -> IO ()

class QsetIconSize a b where
 setIconSize :: a -> b -> IO ()

class QqsetIconSize a b where
 qsetIconSize :: a -> b -> IO ()

class QsetIndent a b where
 setIndent :: a -> b -> IO ()

class QsetInputContext a b where
 setInputContext :: a -> b -> IO ()

class QsetInvertedAppearance a b where
 setInvertedAppearance :: a -> b -> IO ()

class QsetItem a b where
 setItem :: a -> b -> IO ()

class QsetItemDelegate a b where
 setItemDelegate :: a -> b -> IO ()

class QsetItemHidden a b where
 setItemHidden :: a -> b -> IO ()

class QsetItemIcon a b where
 setItemIcon :: a -> b -> IO ()

class QsetItemPrototype a b where
 setItemPrototype :: a -> b -> IO ()

class QsetItemSelected a b where
 setItemSelected :: a -> b -> IO ()

class QsetItemText a b where
 setItemText :: a -> b -> IO ()

class QsetItemWidget a b where
 setItemWidget :: a -> b -> IO ()

class QsetLabelText a b where
 setLabelText :: a -> b -> IO ()

class QsetLayoutDirection a b where
 setLayoutDirection :: a -> b -> IO ()

class QsetLeftMargin a b where
 setLeftMargin :: a -> b -> IO ()

class QsetLineEdit a b where
 setLineEdit :: a -> b -> IO ()

class QsetLineWidth a b where
 setLineWidth :: a -> b -> IO ()

class QsetLocale a b where
 setLocale :: a -> b -> IO ()

class QsetMargin a b where
 setMargin :: a -> b -> IO ()

class QsetMask a b where
 setMask :: a -> b -> IO ()

class QsetMaximum a b where
 setMaximum :: a -> b -> IO ()

class QsetMaximumDate a b where
 setMaximumDate :: a -> b -> IO ()

class QsetMenu a b where
 setMenu :: a -> b -> IO ()

class QsetMenuBar a b where
 setMenuBar :: a -> b -> IO ()

class QsetMidLineWidth a b where
 setMidLineWidth :: a -> b -> IO ()

class QsetMimeData a b where
 setMimeData :: a -> b -> IO ()

class QsetMinimum a b where
 setMinimum :: a -> b -> IO ()

class QsetMinimumDate a b where
 setMinimumDate :: a -> b -> IO ()

class QsetModel a b where
 setModel :: a -> b -> IO ()

class QsetModelColumn a b where
 setModelColumn :: a -> b -> IO ()

class QsetModelData a b where
 setModelData :: a -> b -> IO ()

class QsetModified a b where
 setModified :: a -> b -> IO ()

class QsetModifiers a b where
 setModifiers :: a -> b -> IO ()

class QsetMovable a b where
 setMovable :: a -> b -> IO ()

class QsetNotchTarget a b where
 setNotchTarget :: a -> b -> IO ()

class QsetOffset a b where
 setOffset :: a -> b -> IO ()

class QqsetOffset a b where
 qsetOffset :: a -> b -> IO ()

class QsetOpenExternalLinks a b where
 setOpenExternalLinks :: a -> b -> IO ()

class QsetOrientation a b where
 setOrientation :: a -> b -> IO ()

class QsetPageBreakPolicy a b where
 setPageBreakPolicy :: a -> b -> IO ()

class QsetPageSize a b where
 setPageSize :: a -> b -> IO ()

class QsetPageStep a b where
 setPageStep :: a -> b -> IO ()

class QsetPalette a b where
 setPalette :: a -> b -> IO ()

class QsetParentItem a b where
 setParentItem :: a -> b -> IO ()

class QsetPen a b where
 setPen :: a -> b -> IO ()

class QsetPixmap a b where
 setPixmap :: a -> b -> IO ()

class QsetPlainText a b where
 setPlainText :: a -> b -> IO ()

class QsetPos a b where
 setPos :: a -> b -> IO ()

class QqsetPos a b where
 qsetPos :: a -> b -> IO ()

class QsetPosition a b where
 setPosition :: a -> b -> IO ()

class QqsetPosition a b where
 qsetPosition :: a -> b -> IO ()

class QsetPositionForIndex a b where
 setPositionForIndex :: a -> b -> IO ()

class QqsetPositionForIndex a b where
 qsetPositionForIndex :: a -> b -> IO ()

class QsetPrefix a b where
 setPrefix :: a -> b -> IO ()

class QsetRange a b where
 setRange :: a -> b -> IO ()

class QsetReadOnly a b where
 setReadOnly :: a -> b -> IO ()

class QqqsetRect a b where
 qqsetRect :: a -> b -> IO ()

class QsetRenderHint a b where
 setRenderHint :: a -> b -> IO ()

class QsetRenderHints a b where
 setRenderHints :: a -> b -> IO ()

class QsetRepeatAction a b where
 setRepeatAction :: a -> b -> IO ()

class QsetResizeMode a b where
 setResizeMode :: a -> b -> IO ()

class QsetResolveSymlinks a b where
 setResolveSymlinks :: a -> b -> IO ()

class QsetRightMargin a b where
 setRightMargin :: a -> b -> IO ()

class QsetRootIndex a b where
 setRootIndex :: a -> b -> IO ()

class QsetRowCount a b where
 setRowCount :: a -> b -> IO ()

class QsetRowHidden a b where
 setRowHidden :: a -> b -> IO ()

class QsetScenePos a b where
 setScenePos :: a -> b -> IO ()

class QqsetScenePos a b where
 qsetScenePos :: a -> b -> IO ()

class QsetSceneRect a b where
 setSceneRect :: a -> b -> IO ()

class QqsetSceneRect a b where
 qsetSceneRect :: a -> b -> IO ()

class QsetScreenPos a b where
 setScreenPos :: a -> b -> IO ()

class QqsetScreenPos a b where
 qsetScreenPos :: a -> b -> IO ()

class QsetSelected a b where
 setSelected :: a -> b -> IO ()

class QsetSelectedPosition a b where
 setSelectedPosition :: a -> b -> IO ()

class QsetSelection a b where
 setSelection :: a -> b -> IO ()

class QqsetSelection a b where
 qsetSelection :: a -> b -> IO ()

class QsetSelectionMode a b where
 setSelectionMode :: a -> b -> IO ()

class QsetSelectionModel a b where
 setSelectionModel :: a -> b -> IO ()

class QsetShape a b where
 setShape :: a -> b -> IO ()

class QsetShortcut a b where
 setShortcut :: a -> b -> IO ()

class QsetSingleStep a b where
 setSingleStep :: a -> b -> IO ()

class QsetSizeGripEnabled a b where
 setSizeGripEnabled :: a -> b -> IO ()

class QsetSizeHint a b where
 setSizeHint :: a -> b -> IO ()

class QqsetSizeHint a b where
 qsetSizeHint :: a -> b -> IO ()

class QsetSliderPosition a b where
 setSliderPosition :: a -> b -> IO ()

class QsetSortIndicator a b where
 setSortIndicator :: a -> b -> IO ()

class QsetSortRole a b where
 setSortRole :: a -> b -> IO ()

class QsetSortingEnabled a b where
 setSortingEnabled :: a -> b -> IO ()

class QsetSource a b where
 setSource :: a -> b -> IO ()

class QsetSourceModel a b where
 setSourceModel :: a -> b -> IO ()

class QsetSpacing a b where
 setSpacing :: a -> b -> IO ()

class QsetStandardButtons a b where
 setStandardButtons :: a -> b -> IO ()

class QsetState a b where
 setState :: a -> b -> IO ()

class QsetStatusTip a b where
 setStatusTip :: a -> b -> IO ()

class QsetStretchFactor a b c | a -> c where
 setStretchFactor :: a -> b -> c

class QsetStyle a b where
 setStyle :: a -> b -> IO ()

class QsetStyleSheet a b where
 setStyleSheet :: a -> b -> IO ()

class QsetSuffix a b where
 setSuffix :: a -> b -> IO ()

class QsetTabEnabled a b where
 setTabEnabled :: a -> b -> IO ()

class QsetTabIcon a b where
 setTabIcon :: a -> b -> IO ()

class QsetTabText a b where
 setTabText :: a -> b -> IO ()

class QsetTabToolTip a b where
 setTabToolTip :: a -> b -> IO ()

class QsetTabWhatsThis a b where
 setTabWhatsThis :: a -> b -> IO ()

class QsetTabPosition a b where
 setTabPosition :: a -> b -> IO ()

class QsetTextAlignment a b where
 setTextAlignment :: a -> b -> IO ()

class QsetTextColor a b where
 setTextColor :: a -> b -> IO ()

class QsetTextCursor a b where
 setTextCursor :: a -> b -> IO ()

class QsetTextDirection a b where
 setTextDirection :: a -> b -> IO ()

class QsetTextElideMode a b where
 setTextElideMode :: a -> b -> IO ()

class QsetTextFormat a b where
 setTextFormat :: a -> b -> IO ()

class QsetTextInteractionFlags a b where
 setTextInteractionFlags :: a -> b -> IO ()

class QsetTextVisible a b where
 setTextVisible :: a -> b -> IO ()

class QsetTextWidth a b where
 setTextWidth :: a -> b -> IO ()

class QsetTickInterval a b where
 setTickInterval :: a -> b -> IO ()

class QsetTickPosition a b where
 setTickPosition :: a -> b -> IO ()

class QsetTitle a b where
 setTitle :: a -> b -> IO ()

class QsetToolButtonStyle a b where
 setToolButtonStyle :: a -> b -> IO ()

class QsetToolTip a b where
 setToolTip :: a -> b -> IO ()

class QsetTopMargin a b where
 setTopMargin :: a -> b -> IO ()

class QsetTransform a b where
 setTransform :: a -> b -> IO ()

class QsetTristate a b where
 setTristate :: a -> b -> IO ()

class QsetUndoRedoEnabled a b where
 setUndoRedoEnabled :: a -> b -> IO ()

class QsetUseDesignMetrics a b where
 setUseDesignMetrics :: a -> b -> IO ()

class QsetUsesScrollButtons a b where
 setUsesScrollButtons :: a -> b -> IO ()

class QsetValidator a b where
 setValidator :: a -> b -> IO ()

class QsetVerticalHeaderItem a b where
 setVerticalHeaderItem :: a -> b -> IO ()

class QsetVerticalHeaderLabels a b where
 setVerticalHeaderLabels :: a -> b -> IO ()

class QsetVerticalStepsPerItem a b where
 setVerticalStepsPerItem :: a -> b -> IO ()

class QsetViewMode a b where
 setViewMode :: a -> b -> IO ()

class QsetViewport a b where
 setViewport :: a -> b -> IO ()

class QsetViewportMargins a b where
 setViewportMargins :: a -> b -> IO ()

class QsetWhatsThis a b where
 setWhatsThis :: a -> b -> IO ()

class QsetWidget a b where
 setWidget :: a -> b -> IO ()

class QsetWindowModality a b where
 setWindowModality :: a -> b -> IO ()

class QsetWindowTitle a b where
 setWindowTitle :: a -> b -> IO ()

class QsetWordWrap a b where
 setWordWrap :: a -> b -> IO ()

class QsetWrapping a b where
 setWrapping :: a -> b -> IO ()

class QsetZValue a b where
 setZValue :: a -> b -> IO ()

class QsetupViewport a b where
 setupViewport :: a -> b -> IO ()

class Qshape a b c | a -> c where
 shape :: a -> b -> c

class Qshear a b where
 shear :: a -> b -> IO ()

class Qshortcut a b where
 shortcut :: a -> b -> IO (QKeySequence ())

class Qqshow a b where
 qshow :: a -> b -> IO ()

class QshowColumn a b where
 showColumn :: a -> b -> IO ()

class QshowMenu a b where
 showMenu :: a -> b -> IO ()

class QshowMessage a b where
 showMessage :: a -> b -> IO ()

class QshowPopup a b where
 showPopup :: a -> b -> IO ()

class QsingleStep a b c | a -> c where
 singleStep :: a -> b -> c

class QsizeFromContents a b where
 sizeFromContents :: a -> b -> IO (Size)

class QqsizeFromContents a b where
 qsizeFromContents :: a -> b -> IO (QSize ())

class QsizeHintForColumn a b where
 sizeHintForColumn :: a -> b -> IO (Int)

class QsizeHintForRow a b where
 sizeHintForRow :: a -> b -> IO (Int)

class QsliderChange a b where
 sliderChange :: a -> b -> IO ()

class QsliderPosition a b where
 sliderPosition :: a -> b -> IO (Int)

class QsortByColumn a b where
 sortByColumn :: a -> b -> IO ()

class QsortChildren a b where
 sortChildren :: a -> b -> IO ()

class QsortItems a b where
 sortItems :: a -> b -> IO ()

class QsortRole a b where
 sortRole :: a -> b -> IO (Int)

class Qsource a b c | a -> c where
 source :: a -> b -> c

class QspacerItem a b where
 spacerItem :: a -> b -> IO (QSpacerItem ())

class Qspacing a b where
 spacing :: a -> b -> IO (Int)

class QstandardButton a b c | a -> c where
 standardButton :: a -> b -> c

class QstandardButtons a b c | a -> c where
 standardButtons :: a -> b -> c

class QstandardIconImplementation a b where
 standardIconImplementation :: a -> b -> IO (QIcon ())

class QstandardPalette a b where
 standardPalette :: a -> b -> IO (QPalette ())

class QstandardPixmap a b where
 standardPixmap :: a -> b -> IO (QPixmap ())

class QstartAutoScroll a b where
 startAutoScroll :: a -> b -> IO ()

class QstartDrag a b where
 startDrag :: a -> b -> IO ()

class QstatusTip a b where
 statusTip :: a -> b -> IO (String)

class QstepBy a b where
 stepBy :: a -> b -> IO ()

class QstepEnabled a b where
 stepEnabled :: a -> b -> IO (StepEnabled)

class QstopAutoScroll a b where
 stopAutoScroll :: a -> b -> IO ()

class QstrikeOut a b where
 strikeOut :: a -> b -> IO (Bool)

class QstrikeOutPos a b c | a -> c where
 strikeOutPos :: a -> b -> c

class Qstyle a b c | a -> c where
 style :: a -> b -> c

class QstyleHint a b c | a -> c where
 styleHint :: a -> b -> c

class QstyleSheet a b where
 styleSheet :: a -> b -> IO (String)

class QsubControlRect a b where
 subControlRect :: a -> b -> IO (Rect)

class QqsubControlRect a b where
 qsubControlRect :: a -> b -> IO (QRect ())

class QsubElementRect a b where
 subElementRect :: a -> b -> IO (Rect)

class QqsubElementRect a b where
 qsubElementRect :: a -> b -> IO (QRect ())

class QsupportsExtension a b where
 supportsExtension :: a -> b -> IO (Bool)

class QtabIcon a b where
 tabIcon :: a -> b -> IO (QIcon ())

class QtabInserted a b where
 tabInserted :: a -> b -> IO ()

class QtabRemoved a b where
 tabRemoved :: a -> b -> IO ()

class QtabText a b where
 tabText :: a -> b -> IO (String)

class QtabToolTip a b where
 tabToolTip :: a -> b -> IO (String)

class QtabWhatsThis a b where
 tabWhatsThis :: a -> b -> IO (String)

class QtakeAt a b where
 takeAt :: a -> b -> IO (QLayoutItem ())

class QtakeChild a b c | a -> c where
 takeChild :: a -> b -> c

class QtakeColumn a b where
 takeColumn :: a -> b -> IO ([QStandardItem ()])

class QtakeHorizontalHeaderItem a b c | a -> c where
 takeHorizontalHeaderItem :: a -> b -> c

class QtakeItem a b c | a -> c where
 takeItem :: a -> b -> c

class QtakeRow a b where
 takeRow :: a -> b -> IO ([QStandardItem ()])

class QtakeVerticalHeaderItem a b c | a -> c where
 takeVerticalHeaderItem :: a -> b -> c

class QtextAlignment a b c | a -> c where
 textAlignment :: a -> b -> c

class QtextColor a b where
 textColor :: a -> b -> IO (QColor ())

class QtextCursor a b where
 textCursor :: a -> b -> IO (QTextCursor ())

class QtextDirection a b c | a -> c where
 textDirection :: a -> b -> c

class QtextElideMode a b where
 textElideMode :: a -> b -> IO (TextElideMode)

class QtextFormat a b where
 textFormat :: a -> b -> IO (TextFormat)

class QtextInteractionFlags a b where
 textInteractionFlags :: a -> b -> IO (TextInteractionFlags)

class QtextList a b c | a -> c where
 textList :: a -> b -> c

class QtextWidth a b where
 textWidth :: a -> b -> IO (Double)

class QtickInterval a b where
 tickInterval :: a -> b -> IO (Int)

class QtickPosition a b where
 tickPosition :: a -> b -> IO (TickPosition)

class QtightBoundingRect a b c | a -> c where
 tightBoundingRect :: a -> b -> c

class QqtightBoundingRect a b c | a -> c where
 qtightBoundingRect :: a -> b -> c

class Qtitle a b where
 title :: a -> b -> IO (String)

class QtoHtml a b where
 toHtml :: a -> b -> IO (String)

class QtoPage a b where
 toPage :: a -> b -> IO (Int)

class QtoPlainText a b where
 toPlainText :: a -> b -> IO (String)

class Qtoggle a b c | a -> c where
 toggle :: a -> b -> c

class QtoggleViewAction a b where
 toggleViewAction :: a -> b -> IO (QAction ())

class QtoolBarArea a b where
 toolBarArea :: a -> b -> IO (ToolBarArea)

class QtoolButtonStyle a b where
 toolButtonStyle :: a -> b -> IO (ToolButtonStyle)

class QtoolTip a b where
 toolTip :: a -> b -> IO (String)

class QtopLevelItem a b c | a -> c where
 topLevelItem :: a -> b -> c

class QtopMargin a b where
 topMargin :: a -> b -> IO (Double)

class Qtransform a b where
 transform :: a -> b -> IO (QTransform ())

class Qtransformed a b c | a -> c where
 transformed :: a -> b -> c

class Qtransformed_nf a b c | a -> c where
 transformed_nf :: a -> b -> c

class Qunderline a b where
 underline :: a -> b -> IO (Bool)

class QunderlinePos a b c | a -> c where
 underlinePos :: a -> b -> c

class Qundo a b where
 undo :: a -> b -> IO ()

class QundoText a b where
 undoText :: a -> b -> IO (String)

class Qunpolish a b where
 unpolish :: a -> b -> IO ()

class QunsetCursor a b where
 unsetCursor :: a -> b -> IO ()

class Qupdate a b where
 update :: a -> b -> IO ()

class Qqupdate a b where
 qupdate :: a -> b -> IO ()

class QupdateEditorData a b where
 updateEditorData :: a -> b -> IO ()

class QupdateEditorGeometries a b where
 updateEditorGeometries :: a -> b -> IO ()

class QupdateEditorGeometry a b where
 updateEditorGeometry :: a -> b -> IO ()

class QupdateGeometries a b where
 updateGeometries :: a -> b -> IO ()

class QuseDesignMetrics a b where
 useDesignMetrics :: a -> b -> IO (Bool)

class QusesScrollButtons a b where
 usesScrollButtons :: a -> b -> IO (Bool)

class Qvalidator a b where
 validator :: a -> b -> IO (QValidator ())

class QvalueFromText a b c | a -> c where
 valueFromText :: a -> b -> c

class QvaluePropertyName a b where
 valuePropertyName :: a -> b -> IO (String)

class QverticalHeaderItem a b c | a -> c where
 verticalHeaderItem :: a -> b -> c

class QverticalOffset a b where
 verticalOffset :: a -> b -> IO (Int)

class QverticalScrollbarAction a b where
 verticalScrollbarAction :: a -> b -> IO ()

class QverticalScrollbarValueChanged a b where
 verticalScrollbarValueChanged :: a -> b -> IO ()

class QverticalStepsPerItem a b where
 verticalStepsPerItem :: a -> b -> IO (Int)

class QviewMode a b c | a -> c where
 viewMode :: a -> b -> c

class QviewOptions a b where
 viewOptions :: a -> b -> IO (QStyleOptionViewItem ())

class Qviewport a b c | a -> c where
 viewport :: a -> b -> c

class QviewportEvent a b where
 viewportEvent :: a -> b -> IO (Bool)

class QvisualItemRect a b where
 visualItemRect :: a -> b -> IO (Rect)

class QqvisualItemRect a b where
 qvisualItemRect :: a -> b -> IO (QRect ())

class QvisualRect a b where
 visualRect :: a -> b -> IO (Rect)

class QqvisualRect a b where
 qvisualRect :: a -> b -> IO (QRect ())

class QvisualRegionForSelection a b where
 visualRegionForSelection :: a -> b -> IO (QRegion ())

class Qweight a b where
 weight :: a -> b -> IO (Int)

class QwhatsThis a b where
 whatsThis :: a -> b -> IO (String)

class Qwidget a b where
 widget :: a -> b -> IO (QWidget ())

class QwidgetEvent a b where
 widgetEvent :: a -> b -> IO ()

class Qwindow a b c | a -> c where
 window :: a -> b -> c

class QwordWrap a b where
 wordWrap :: a -> b -> IO (Bool)

class Qwrapping a b where
 wrapping :: a -> b -> IO (Bool)

class QxHeight a b c | a -> c where
 xHeight :: a -> b -> c

class QzValue a b where
 zValue :: a -> b -> IO (Double)

