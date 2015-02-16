{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Gui.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.ClassTypes.Gui (
  QPaintDevice, TQPaintDevice, CQPaintDevice, qCast_QPaintDevice, QPaintDeviceSc, TQPaintDeviceSc, CQPaintDeviceSc, qCastList_QPaintDevice, withQPaintDeviceResult
  ,QWidget, TQWidget, CQWidget, qCast_QWidget, QWidgetSc, TQWidgetSc, CQWidgetSc, qCastList_QWidget, withQWidgetResult, qWidgetFromPtr, withQListQWidgetResult, qWidgetListFromPtrList
  ,QStyleOption, TQStyleOption, CQStyleOption, qCast_QStyleOption, QStyleOptionSc, TQStyleOptionSc, CQStyleOptionSc, qCastList_QStyleOption, withQStyleOptionResult, qStyleOptionAddFinalizer
  ,QFrame, TQFrame, CQFrame, qCast_QFrame, QFrameSc, TQFrameSc, CQFrameSc, qCastList_QFrame, withQFrameResult, qFrameFromPtr, withQListQFrameResult, qFrameListFromPtrList
  ,QAbstractScrollArea, TQAbstractScrollArea, CQAbstractScrollArea, qCast_QAbstractScrollArea, QAbstractScrollAreaSc, TQAbstractScrollAreaSc, CQAbstractScrollAreaSc, qCastList_QAbstractScrollArea, withQAbstractScrollAreaResult, qAbstractScrollAreaFromPtr, withQListQAbstractScrollAreaResult, qAbstractScrollAreaListFromPtrList
  ,QGraphicsItem, TQGraphicsItem, CQGraphicsItem, qCast_QGraphicsItem, QGraphicsItemSc, TQGraphicsItemSc, CQGraphicsItemSc, qCastList_QGraphicsItem, withQGraphicsItemResult, qGraphicsItemAddFinalizer, qGraphicsItemAddFinalizer1
  ,QDialog, TQDialog, CQDialog, qCast_QDialog, QDialogSc, TQDialogSc, CQDialogSc, qCastList_QDialog, withQDialogResult, qDialogFromPtr, withQListQDialogResult, qDialogListFromPtrList
  ,QAbstractItemView, TQAbstractItemView, CQAbstractItemView, qCast_QAbstractItemView, QAbstractItemViewSc, TQAbstractItemViewSc, CQAbstractItemViewSc, qCastList_QAbstractItemView, withQAbstractItemViewResult, qAbstractItemViewFromPtr, withQListQAbstractItemViewResult, qAbstractItemViewListFromPtrList
  ,QStyleOptionComplex, TQStyleOptionComplex, CQStyleOptionComplex, qCast_QStyleOptionComplex, QStyleOptionComplexSc, TQStyleOptionComplexSc, CQStyleOptionComplexSc, qCastList_QStyleOptionComplex, withQStyleOptionComplexResult, qStyleOptionComplexAddFinalizer
  ,QLayoutItem, TQLayoutItem, CQLayoutItem, qCast_QLayoutItem, QLayoutItemSc, TQLayoutItemSc, CQLayoutItemSc, qCastList_QLayoutItem, withQLayoutItemResult
  ,QTextFormat, TQTextFormat, CQTextFormat, qCast_QTextFormat, QTextFormatSc, TQTextFormatSc, CQTextFormatSc, qCastList_QTextFormat, withQTextFormatResult, qTextFormatAddFinalizer
  ,QGraphicsSceneEvent, TQGraphicsSceneEvent, CQGraphicsSceneEvent, qCast_QGraphicsSceneEvent, QGraphicsSceneEventSc, TQGraphicsSceneEventSc, CQGraphicsSceneEventSc, qCastList_QGraphicsSceneEvent, withQGraphicsSceneEventResult, qGraphicsSceneEventAddFinalizer
  ,QAbstractGraphicsShapeItem, TQAbstractGraphicsShapeItem, CQAbstractGraphicsShapeItem, qCast_QAbstractGraphicsShapeItem, QAbstractGraphicsShapeItemSc, TQAbstractGraphicsShapeItemSc, CQAbstractGraphicsShapeItemSc, qCastList_QAbstractGraphicsShapeItem, withQAbstractGraphicsShapeItemResult
  ,QLayout, TQLayout, CQLayout, qCast_QLayout, QLayoutSc, TQLayoutSc, CQLayoutSc, qCastList_QLayout, withQLayoutResult, qLayoutFromPtr, withQListQLayoutResult, qLayoutListFromPtrList
  ,QAbstractSpinBox, TQAbstractSpinBox, CQAbstractSpinBox, qCast_QAbstractSpinBox, QAbstractSpinBoxSc, TQAbstractSpinBoxSc, CQAbstractSpinBoxSc, qCastList_QAbstractSpinBox, withQAbstractSpinBoxResult, qAbstractSpinBoxFromPtr, withQListQAbstractSpinBoxResult, qAbstractSpinBoxListFromPtrList
  ,QInputEvent, TQInputEvent, CQInputEvent, qCast_QInputEvent, QInputEventSc, TQInputEventSc, CQInputEventSc, qCastList_QInputEvent, withQInputEventResult
  ,QTextObject, TQTextObject, CQTextObject, qCast_QTextObject, QTextObjectSc, TQTextObjectSc, CQTextObjectSc, qCastList_QTextObject, withQTextObjectResult, qTextObjectFromPtr, withQListQTextObjectResult, qTextObjectListFromPtrList
  ,QAbstractButton, TQAbstractButton, CQAbstractButton, qCast_QAbstractButton, QAbstractButtonSc, TQAbstractButtonSc, CQAbstractButtonSc, qCastList_QAbstractButton, withQAbstractButtonResult, qAbstractButtonFromPtr, withQListQAbstractButtonResult, qAbstractButtonListFromPtrList
  ,QGradient, TQGradient, CQGradient, qCast_QGradient, QGradientSc, TQGradientSc, CQGradientSc, qCastList_QGradient, withQGradientResult, qGradientAddFinalizer
  ,QValidator, TQValidator, CQValidator, qCast_QValidator, QValidatorSc, TQValidatorSc, CQValidatorSc, qCastList_QValidator, withQValidatorResult, qValidatorFromPtr, withQListQValidatorResult, qValidatorListFromPtrList
  ,QAbstractSlider, TQAbstractSlider, CQAbstractSlider, qCast_QAbstractSlider, QAbstractSliderSc, TQAbstractSliderSc, CQAbstractSliderSc, qCastList_QAbstractSlider, withQAbstractSliderResult, qAbstractSliderFromPtr, withQListQAbstractSliderResult, qAbstractSliderListFromPtrList
  ,QMimeSource, TQMimeSource, CQMimeSource, qCast_QMimeSource, QMimeSourceSc, TQMimeSourceSc, CQMimeSourceSc, qCastList_QMimeSource, withQMimeSourceResult
  ,QListView, TQListView, CQListView, qCast_QListView, QListViewSc, TQListViewSc, CQListViewSc, qCastList_QListView, withQListViewResult, qListViewFromPtr, withQListQListViewResult, qListViewListFromPtrList
  ,QDateTimeEdit, TQDateTimeEdit, CQDateTimeEdit, qCast_QDateTimeEdit, QDateTimeEditSc, TQDateTimeEditSc, CQDateTimeEditSc, qCastList_QDateTimeEdit, withQDateTimeEditResult, qDateTimeEditFromPtr, withQListQDateTimeEditResult, qDateTimeEditListFromPtrList
  ,QDropEvent, TQDropEvent, CQDropEvent, qCast_QDropEvent, QDropEventSc, TQDropEventSc, CQDropEventSc, qCastList_QDropEvent, withQDropEventResult, qDropEventAddFinalizer
  ,QBoxLayout, TQBoxLayout, CQBoxLayout, qCast_QBoxLayout, QBoxLayoutSc, TQBoxLayoutSc, CQBoxLayoutSc, qCastList_QBoxLayout, withQBoxLayoutResult, qBoxLayoutFromPtr, withQListQBoxLayoutResult, qBoxLayoutListFromPtrList
  ,QStyle, TQStyle, CQStyle, qCast_QStyle, QStyleSc, TQStyleSc, CQStyleSc, qCastList_QStyle, withQStyleResult, qStyleFromPtr, withQListQStyleResult, qStyleListFromPtrList
  ,QStyleOptionViewItem, TQStyleOptionViewItem, CQStyleOptionViewItem, qCast_QStyleOptionViewItem, QStyleOptionViewItemSc, TQStyleOptionViewItemSc, CQStyleOptionViewItemSc, qCastList_QStyleOptionViewItem, withQStyleOptionViewItemResult, qStyleOptionViewItemAddFinalizer
  ,QIconEngine, TQIconEngine, CQIconEngine, qCast_QIconEngine, QIconEngineSc, TQIconEngineSc, CQIconEngineSc, qCastList_QIconEngine, withQIconEngineResult, qIconEngineAddFinalizer, qIconEngineAddFinalizer1
  ,QTreeView, TQTreeView, CQTreeView, qCast_QTreeView, QTreeViewSc, TQTreeViewSc, CQTreeViewSc, qCastList_QTreeView, withQTreeViewResult, qTreeViewFromPtr, withQListQTreeViewResult, qTreeViewListFromPtrList
  ,QTableView, TQTableView, CQTableView, qCast_QTableView, QTableViewSc, TQTableViewSc, CQTableViewSc, qCastList_QTableView, withQTableViewResult, qTableViewFromPtr, withQListQTableViewResult, qTableViewListFromPtrList
  ,QTextEdit, TQTextEdit, CQTextEdit, qCast_QTextEdit, QTextEditSc, TQTextEditSc, CQTextEditSc, qCastList_QTextEdit, withQTextEditResult, qTextEditFromPtr, withQListQTextEditResult, qTextEditListFromPtrList
  ,QAbstractPrintDialog, TQAbstractPrintDialog, CQAbstractPrintDialog, qCast_QAbstractPrintDialog, QAbstractPrintDialogSc, TQAbstractPrintDialogSc, CQAbstractPrintDialogSc, qCastList_QAbstractPrintDialog, withQAbstractPrintDialogResult, qAbstractPrintDialogFromPtr, withQListQAbstractPrintDialogResult, qAbstractPrintDialogListFromPtrList
  ,QDragMoveEvent, TQDragMoveEvent, CQDragMoveEvent, qCast_QDragMoveEvent, QDragMoveEventSc, TQDragMoveEventSc, CQDragMoveEventSc, qCastList_QDragMoveEvent, withQDragMoveEventResult, qDragMoveEventAddFinalizer
  ,QPixmap, TQPixmap, CQPixmap, qCast_QPixmap, QPixmapSc, TQPixmapSc, CQPixmapSc, qCastList_QPixmap, withQPixmapResult, qPixmapAddFinalizer, qPixmapAddFinalizer1
  ,QCommonStyle, TQCommonStyle, CQCommonStyle, qCast_QCommonStyle, QCommonStyleSc, TQCommonStyleSc, CQCommonStyleSc, qCastList_QCommonStyle, withQCommonStyleResult, qCommonStyleFromPtr, withQListQCommonStyleResult, qCommonStyleListFromPtrList
  ,QStyleOptionProgressBar, TQStyleOptionProgressBar, CQStyleOptionProgressBar, qCast_QStyleOptionProgressBar, QStyleOptionProgressBarSc, TQStyleOptionProgressBarSc, CQStyleOptionProgressBarSc, qCastList_QStyleOptionProgressBar, withQStyleOptionProgressBarResult, qStyleOptionProgressBarAddFinalizer
  ,QStyleOptionDockWidget, TQStyleOptionDockWidget, CQStyleOptionDockWidget, qCast_QStyleOptionDockWidget, QStyleOptionDockWidgetSc, TQStyleOptionDockWidgetSc, CQStyleOptionDockWidgetSc, qCastList_QStyleOptionDockWidget, withQStyleOptionDockWidgetResult, qStyleOptionDockWidgetAddFinalizer
  ,QStyleOptionFrame, TQStyleOptionFrame, CQStyleOptionFrame, qCast_QStyleOptionFrame, QStyleOptionFrameSc, TQStyleOptionFrameSc, CQStyleOptionFrameSc, qCastList_QStyleOptionFrame, withQStyleOptionFrameResult, qStyleOptionFrameAddFinalizer
  ,QStyleOptionTab, TQStyleOptionTab, CQStyleOptionTab, qCast_QStyleOptionTab, QStyleOptionTabSc, TQStyleOptionTabSc, CQStyleOptionTabSc, qCastList_QStyleOptionTab, withQStyleOptionTabResult, qStyleOptionTabAddFinalizer
  ,QStyleOptionToolBox, TQStyleOptionToolBox, CQStyleOptionToolBox, qCast_QStyleOptionToolBox, QStyleOptionToolBoxSc, TQStyleOptionToolBoxSc, CQStyleOptionToolBoxSc, qCastList_QStyleOptionToolBox, withQStyleOptionToolBoxResult, qStyleOptionToolBoxAddFinalizer
  ,QStyleOptionViewItemV2, TQStyleOptionViewItemV2, CQStyleOptionViewItemV2, qCast_QStyleOptionViewItemV2, QStyleOptionViewItemV2Sc, TQStyleOptionViewItemV2Sc, CQStyleOptionViewItemV2Sc, qCastList_QStyleOptionViewItemV2, withQStyleOptionViewItemV2Result, qStyleOptionViewItemV2AddFinalizer
  ,QTextFrameFormat, TQTextFrameFormat, CQTextFrameFormat, qCast_QTextFrameFormat, QTextFrameFormatSc, TQTextFrameFormatSc, CQTextFrameFormatSc, qCastList_QTextFrameFormat, withQTextFrameFormatResult, qTextFrameFormatAddFinalizer
  ,QTextCharFormat, TQTextCharFormat, CQTextCharFormat, qCast_QTextCharFormat, QTextCharFormatSc, TQTextCharFormatSc, CQTextCharFormatSc, qCastList_QTextCharFormat, withQTextCharFormatResult, qTextCharFormatAddFinalizer
  ,QTextBlockGroup, TQTextBlockGroup, CQTextBlockGroup, qCast_QTextBlockGroup, QTextBlockGroupSc, TQTextBlockGroupSc, CQTextBlockGroupSc, qCastList_QTextBlockGroup, withQTextBlockGroupResult, qTextBlockGroupFromPtr, withQListQTextBlockGroupResult, qTextBlockGroupListFromPtrList
  ,QTextFrame, TQTextFrame, CQTextFrame, qCast_QTextFrame, QTextFrameSc, TQTextFrameSc, CQTextFrameSc, qCastList_QTextFrame, withQTextFrameResult, qTextFrameFromPtr, withQListQTextFrameResult, qTextFrameListFromPtrList
  ,QComboBox, TQComboBox, CQComboBox, qCast_QComboBox, QComboBoxSc, TQComboBoxSc, CQComboBoxSc, qCastList_QComboBox, withQComboBoxResult, qComboBoxFromPtr, withQListQComboBoxResult, qComboBoxListFromPtrList
  ,QTextOption, TQTextOption, CQTextOption, qCast_QTextOption, QTextOptionSc, TQTextOptionSc, CQTextOptionSc, qCastList_QTextOption, withQTextOptionResult, qTextOptionAddFinalizer
  ,QTextFrameLayoutData, TQTextFrameLayoutData, CQTextFrameLayoutData, qCast_QTextFrameLayoutData, QTextFrameLayoutDataSc, TQTextFrameLayoutDataSc, CQTextFrameLayoutDataSc, qCastList_QTextFrameLayoutData, withQTextFrameLayoutDataResult
  ,QTableWidgetItem, TQTableWidgetItem, CQTableWidgetItem, qCast_QTableWidgetItem, QTableWidgetItemSc, TQTableWidgetItemSc, CQTableWidgetItemSc, qCastList_QTableWidgetItem, withQTableWidgetItemResult, qTableWidgetItemAddFinalizer, qTableWidgetItemAddFinalizer1
  ,QPainterPath, TQPainterPath, CQPainterPath, qCast_QPainterPath, QPainterPathSc, TQPainterPathSc, CQPainterPathSc, qCastList_QPainterPath, withQPainterPathResult, qPainterPathAddFinalizer
  ,QTextBlockUserData, TQTextBlockUserData, CQTextBlockUserData, qCast_QTextBlockUserData, QTextBlockUserDataSc, TQTextBlockUserDataSc, CQTextBlockUserDataSc, qCastList_QTextBlockUserData, withQTextBlockUserDataResult
  ,QStyleHintReturn, TQStyleHintReturn, CQStyleHintReturn, qCast_QStyleHintReturn, QStyleHintReturnSc, TQStyleHintReturnSc, CQStyleHintReturnSc, qCastList_QStyleHintReturn, withQStyleHintReturnResult, qStyleHintReturnAddFinalizer
  ,QPixmapCache, TQPixmapCache, CQPixmapCache, qCast_QPixmapCache, QPixmapCacheSc, TQPixmapCacheSc, CQPixmapCacheSc, qCastList_QPixmapCache, withQPixmapCacheResult, qPixmapCacheAddFinalizer
  ,QFontInfo, TQFontInfo, CQFontInfo, qCast_QFontInfo, QFontInfoSc, TQFontInfoSc, CQFontInfoSc, qCastList_QFontInfo, withQFontInfoResult, qFontInfoAddFinalizer
  ,QSizePolicy, TQSizePolicy, CQSizePolicy, qCast_QSizePolicy, QSizePolicySc, TQSizePolicySc, CQSizePolicySc, qCastList_QSizePolicy, withQSizePolicyResult, qSizePolicyAddFinalizer
  ,QBrush, TQBrush, CQBrush, qCast_QBrush, QBrushSc, TQBrushSc, CQBrushSc, qCastList_QBrush, withQBrushResult, qBrushAddFinalizer
  ,QTextCursor, TQTextCursor, CQTextCursor, qCast_QTextCursor, QTextCursorSc, TQTextCursorSc, CQTextCursorSc, qCastList_QTextCursor, withQTextCursorResult, qTextCursorAddFinalizer
  ,QWhatsThis, TQWhatsThis, CQWhatsThis
  ,QTextFragment, TQTextFragment, CQTextFragment, qCast_QTextFragment, QTextFragmentSc, TQTextFragmentSc, CQTextFragmentSc, qCastList_QTextFragment, withQTextFragmentResult, qTextFragmentAddFinalizer
  ,QTextTableCell, TQTextTableCell, CQTextTableCell, qCast_QTextTableCell, QTextTableCellSc, TQTextTableCellSc, CQTextTableCellSc, qCastList_QTextTableCell, withQTextTableCellResult, qTextTableCellAddFinalizer
  ,QFontMetrics, TQFontMetrics, CQFontMetrics, qCast_QFontMetrics, QFontMetricsSc, TQFontMetricsSc, CQFontMetricsSc, qCastList_QFontMetrics, withQFontMetricsResult, qFontMetricsAddFinalizer
  ,QPen, TQPen, CQPen, qCast_QPen, QPenSc, TQPenSc, CQPenSc, qCastList_QPen, withQPenResult, qPenAddFinalizer
  ,QListWidgetItem, TQListWidgetItem, CQListWidgetItem, qCast_QListWidgetItem, QListWidgetItemSc, TQListWidgetItemSc, CQListWidgetItemSc, qCastList_QListWidgetItem, withQListWidgetItemResult, qListWidgetItemAddFinalizer, qListWidgetItemAddFinalizer1
  ,QItemSelection, TQItemSelection, CQItemSelection, qCast_QItemSelection, QItemSelectionSc, TQItemSelectionSc, CQItemSelectionSc, qCastList_QItemSelection, withQItemSelectionResult
  ,QToolTip, TQToolTip, CQToolTip, qCast_QToolTip, QToolTipSc, TQToolTipSc, CQToolTipSc, qCastList_QToolTip, withQToolTipResult, qToolTipAddFinalizer
  ,QUndoCommand, TQUndoCommand, CQUndoCommand, qCast_QUndoCommand, QUndoCommandSc, TQUndoCommandSc, CQUndoCommandSc, qCastList_QUndoCommand, withQUndoCommandResult, qUndoCommandAddFinalizer, qUndoCommandAddFinalizer1
  ,QRegion, TQRegion, CQRegion, qCast_QRegion, QRegionSc, TQRegionSc, CQRegionSc, qCastList_QRegion, withQRegionResult, qRegionAddFinalizer
  ,QTextBlock, TQTextBlock, CQTextBlock, qCast_QTextBlock, QTextBlockSc, TQTextBlockSc, CQTextBlockSc, qCastList_QTextBlock, withQTextBlockResult, qTextBlockAddFinalizer
  ,QIcon, TQIcon, CQIcon, qCast_QIcon, QIconSc, TQIconSc, CQIconSc, qCastList_QIcon, withQIconResult, qIconAddFinalizer
  ,QColor, TQColor, CQColor, qCast_QColor, QColorSc, TQColorSc, CQColorSc, qCastList_QColor, withQColorResult, qColorAddFinalizer
  ,QTextLayout__FormatRange, TQTextLayout__FormatRange, CQTextLayout__FormatRange, qCast_QTextLayout__FormatRange, QTextLayout__FormatRangeSc, TQTextLayout__FormatRangeSc, CQTextLayout__FormatRangeSc, qCastList_QTextLayout__FormatRange, withQTextLayout__FormatRangeResult
  ,QTableWidgetSelectionRange, TQTableWidgetSelectionRange, CQTableWidgetSelectionRange, qCast_QTableWidgetSelectionRange, QTableWidgetSelectionRangeSc, TQTableWidgetSelectionRangeSc, CQTableWidgetSelectionRangeSc, qCastList_QTableWidgetSelectionRange, withQTableWidgetSelectionRangeResult, qTableWidgetSelectionRangeAddFinalizer
  ,QTextDocumentFragment, TQTextDocumentFragment, CQTextDocumentFragment, qCast_QTextDocumentFragment, QTextDocumentFragmentSc, TQTextDocumentFragmentSc, CQTextDocumentFragmentSc, qCastList_QTextDocumentFragment, withQTextDocumentFragmentResult, qTextDocumentFragmentAddFinalizer
  ,QPainter, TQPainter, CQPainter, qCast_QPainter, QPainterSc, TQPainterSc, CQPainterSc, qCastList_QPainter, withQPainterResult, qPainterAddFinalizer
  ,QFontDatabase, TQFontDatabase, CQFontDatabase, qCast_QFontDatabase, QFontDatabaseSc, TQFontDatabaseSc, CQFontDatabaseSc, qCastList_QFontDatabase, withQFontDatabaseResult, qFontDatabaseAddFinalizer
  ,QCursor, TQCursor, CQCursor, qCast_QCursor, QCursorSc, TQCursorSc, CQCursorSc, qCastList_QCursor, withQCursorResult, qCursorAddFinalizer
  ,QPrintEngine, TQPrintEngine, CQPrintEngine, qCast_QPrintEngine, QPrintEngineSc, TQPrintEngineSc, CQPrintEngineSc, qCastList_QPrintEngine, withQPrintEngineResult
  ,QTextLine, TQTextLine, CQTextLine, qCast_QTextLine, QTextLineSc, TQTextLineSc, CQTextLineSc, qCastList_QTextLine, withQTextLineResult, qTextLineAddFinalizer
  ,QColormap, TQColormap, CQColormap, qCast_QColormap, QColormapSc, TQColormapSc, CQColormapSc, qCastList_QColormap, withQColormapResult, qColormapAddFinalizer
  ,QPaintEngine, TQPaintEngine, CQPaintEngine, qCast_QPaintEngine, QPaintEngineSc, TQPaintEngineSc, CQPaintEngineSc, qCastList_QPaintEngine, withQPaintEngineResult
  ,QKeySequence, TQKeySequence, CQKeySequence, qCast_QKeySequence, QKeySequenceSc, TQKeySequenceSc, CQKeySequenceSc, qCastList_QKeySequence, withQKeySequenceResult, qKeySequenceAddFinalizer
  ,QTreeWidgetItem, TQTreeWidgetItem, CQTreeWidgetItem, qCast_QTreeWidgetItem, QTreeWidgetItemSc, TQTreeWidgetItemSc, CQTreeWidgetItemSc, qCastList_QTreeWidgetItem, withQTreeWidgetItemResult, qTreeWidgetItemAddFinalizer, qTreeWidgetItemAddFinalizer1
  ,QStandardItem, TQStandardItem, CQStandardItem, qCast_QStandardItem, QStandardItemSc, TQStandardItemSc, CQStandardItemSc, qCastList_QStandardItem, withQStandardItemResult, qStandardItemAddFinalizer, qStandardItemAddFinalizer1
  ,QTextLength, TQTextLength, CQTextLength, qCast_QTextLength, QTextLengthSc, TQTextLengthSc, CQTextLengthSc, qCastList_QTextLength, withQTextLengthResult, qTextLengthAddFinalizer
  ,QPalette, TQPalette, CQPalette, qCast_QPalette, QPaletteSc, TQPaletteSc, CQPaletteSc, qCastList_QPalette, withQPaletteResult, qPaletteAddFinalizer
  ,QItemEditorFactory, TQItemEditorFactory, CQItemEditorFactory, qCast_QItemEditorFactory, QItemEditorFactorySc, TQItemEditorFactorySc, CQItemEditorFactorySc, qCastList_QItemEditorFactory, withQItemEditorFactoryResult, qItemEditorFactoryAddFinalizer, qItemEditorFactoryAddFinalizer1
  ,QItemSelectionRange, TQItemSelectionRange, CQItemSelectionRange, qCast_QItemSelectionRange, QItemSelectionRangeSc, TQItemSelectionRangeSc, CQItemSelectionRangeSc, qCastList_QItemSelectionRange, withQItemSelectionRangeResult, qItemSelectionRangeAddFinalizer
  ,QItemEditorCreatorBase, TQItemEditorCreatorBase, CQItemEditorCreatorBase, qCast_QItemEditorCreatorBase, QItemEditorCreatorBaseSc, TQItemEditorCreatorBaseSc, CQItemEditorCreatorBaseSc, qCastList_QItemEditorCreatorBase, withQItemEditorCreatorBaseResult, qItemEditorCreatorBaseAddFinalizer, qItemEditorCreatorBaseAddFinalizer1
  ,QItemDelegate, TQItemDelegate, CQItemDelegate, qCast_QItemDelegate, QItemDelegateSc, TQItemDelegateSc, CQItemDelegateSc, qCastList_QItemDelegate, withQItemDelegateResult, qItemDelegateFromPtr, withQListQItemDelegateResult, qItemDelegateListFromPtrList
  ,QItemSelectionModel, TQItemSelectionModel, CQItemSelectionModel, qCast_QItemSelectionModel, QItemSelectionModelSc, TQItemSelectionModelSc, CQItemSelectionModelSc, qCastList_QItemSelectionModel, withQItemSelectionModelResult, qItemSelectionModelFromPtr, withQListQItemSelectionModelResult, qItemSelectionModelListFromPtrList
  ,QFont, TQFont, CQFont, qCast_QFont, QFontSc, TQFontSc, CQFontSc, qCastList_QFont, withQFontResult, qFontAddFinalizer
  ,QTextLayout, TQTextLayout, CQTextLayout, qCast_QTextLayout, QTextLayoutSc, TQTextLayoutSc, CQTextLayoutSc, qCastList_QTextLayout, withQTextLayoutResult, qTextLayoutAddFinalizer
  ,QFontMetricsF, TQFontMetricsF, CQFontMetricsF, qCast_QFontMetricsF, QFontMetricsFSc, TQFontMetricsFSc, CQFontMetricsFSc, qCastList_QFontMetricsF, withQFontMetricsFResult, qFontMetricsFAddFinalizer
  ,QPushButton, TQPushButton, CQPushButton, qCast_QPushButton, QPushButtonSc, TQPushButtonSc, CQPushButtonSc, qCastList_QPushButton, withQPushButtonResult, qPushButtonFromPtr, withQListQPushButtonResult, qPushButtonListFromPtrList
  ,QRadioButton, TQRadioButton, CQRadioButton, qCast_QRadioButton, QRadioButtonSc, TQRadioButtonSc, CQRadioButtonSc, qCastList_QRadioButton, withQRadioButtonResult, qRadioButtonFromPtr, withQListQRadioButtonResult, qRadioButtonListFromPtrList
  ,QCheckBox, TQCheckBox, CQCheckBox, qCast_QCheckBox, QCheckBoxSc, TQCheckBoxSc, CQCheckBoxSc, qCastList_QCheckBox, withQCheckBoxResult, qCheckBoxFromPtr, withQListQCheckBoxResult, qCheckBoxListFromPtrList
  ,QToolButton, TQToolButton, CQToolButton, qCast_QToolButton, QToolButtonSc, TQToolButtonSc, CQToolButtonSc, qCastList_QToolButton, withQToolButtonResult, qToolButtonFromPtr, withQListQToolButtonResult, qToolButtonListFromPtrList
  ,QGraphicsEllipseItem, TQGraphicsEllipseItem, CQGraphicsEllipseItem, qCast_QGraphicsEllipseItem, QGraphicsEllipseItemSc, TQGraphicsEllipseItemSc, CQGraphicsEllipseItemSc, qCastList_QGraphicsEllipseItem, withQGraphicsEllipseItemResult, qGraphicsEllipseItemAddFinalizer, qGraphicsEllipseItemAddFinalizer1
  ,QGraphicsSimpleTextItem, TQGraphicsSimpleTextItem, CQGraphicsSimpleTextItem, qCast_QGraphicsSimpleTextItem, QGraphicsSimpleTextItemSc, TQGraphicsSimpleTextItemSc, CQGraphicsSimpleTextItemSc, qCastList_QGraphicsSimpleTextItem, withQGraphicsSimpleTextItemResult, qGraphicsSimpleTextItemAddFinalizer, qGraphicsSimpleTextItemAddFinalizer1
  ,QGraphicsRectItem, TQGraphicsRectItem, CQGraphicsRectItem, qCast_QGraphicsRectItem, QGraphicsRectItemSc, TQGraphicsRectItemSc, CQGraphicsRectItemSc, qCastList_QGraphicsRectItem, withQGraphicsRectItemResult, qGraphicsRectItemAddFinalizer, qGraphicsRectItemAddFinalizer1
  ,QGraphicsPathItem, TQGraphicsPathItem, CQGraphicsPathItem, qCast_QGraphicsPathItem, QGraphicsPathItemSc, TQGraphicsPathItemSc, CQGraphicsPathItemSc, qCastList_QGraphicsPathItem, withQGraphicsPathItemResult, qGraphicsPathItemAddFinalizer, qGraphicsPathItemAddFinalizer1
  ,QGraphicsPolygonItem, TQGraphicsPolygonItem, CQGraphicsPolygonItem, qCast_QGraphicsPolygonItem, QGraphicsPolygonItemSc, TQGraphicsPolygonItemSc, CQGraphicsPolygonItemSc, qCastList_QGraphicsPolygonItem, withQGraphicsPolygonItemResult, qGraphicsPolygonItemAddFinalizer, qGraphicsPolygonItemAddFinalizer1
  ,QDirModel, TQDirModel, CQDirModel, qCast_QDirModel, QDirModelSc, TQDirModelSc, CQDirModelSc, qCastList_QDirModel, withQDirModelResult, qDirModelFromPtr, withQListQDirModelResult, qDirModelListFromPtrList
  ,QStandardItemModel, TQStandardItemModel, CQStandardItemModel, qCast_QStandardItemModel, QStandardItemModelSc, TQStandardItemModelSc, CQStandardItemModelSc, qCastList_QStandardItemModel, withQStandardItemModelResult, qStandardItemModelFromPtr, withQListQStandardItemModelResult, qStandardItemModelListFromPtrList
  ,QAbstractProxyModel, TQAbstractProxyModel, CQAbstractProxyModel, qCast_QAbstractProxyModel, QAbstractProxyModelSc, TQAbstractProxyModelSc, CQAbstractProxyModelSc, qCastList_QAbstractProxyModel, withQAbstractProxyModelResult, qAbstractProxyModelFromPtr, withQListQAbstractProxyModelResult, qAbstractProxyModelListFromPtrList
  ,QHeaderView, TQHeaderView, CQHeaderView, qCast_QHeaderView, QHeaderViewSc, TQHeaderViewSc, CQHeaderViewSc, qCastList_QHeaderView, withQHeaderViewResult, qHeaderViewFromPtr, withQListQHeaderViewResult, qHeaderViewListFromPtrList
  ,QPrintDialog, TQPrintDialog, CQPrintDialog, qCast_QPrintDialog, QPrintDialogSc, TQPrintDialogSc, CQPrintDialogSc, qCastList_QPrintDialog, withQPrintDialogResult, qPrintDialogFromPtr, withQListQPrintDialogResult, qPrintDialogListFromPtrList
  ,QSortFilterProxyModel, TQSortFilterProxyModel, CQSortFilterProxyModel, qCast_QSortFilterProxyModel, QSortFilterProxyModelSc, TQSortFilterProxyModelSc, CQSortFilterProxyModelSc, qCastList_QSortFilterProxyModel, withQSortFilterProxyModelResult, qSortFilterProxyModelFromPtr, withQListQSortFilterProxyModelResult, qSortFilterProxyModelListFromPtrList
  ,QGraphicsView, TQGraphicsView, CQGraphicsView, qCast_QGraphicsView, QGraphicsViewSc, TQGraphicsViewSc, CQGraphicsViewSc, qCastList_QGraphicsView, withQGraphicsViewResult, qGraphicsViewFromPtr, withQListQGraphicsViewResult, qGraphicsViewListFromPtrList
  ,QScrollArea, TQScrollArea, CQScrollArea, qCast_QScrollArea, QScrollAreaSc, TQScrollAreaSc, CQScrollAreaSc, qCastList_QScrollArea, withQScrollAreaResult, qScrollAreaFromPtr, withQListQScrollAreaResult, qScrollAreaListFromPtrList
  ,QSlider, TQSlider, CQSlider, qCast_QSlider, QSliderSc, TQSliderSc, CQSliderSc, qCastList_QSlider, withQSliderResult, qSliderFromPtr, withQListQSliderResult, qSliderListFromPtrList
  ,QDial, TQDial, CQDial, qCast_QDial, QDialSc, TQDialSc, CQDialSc, qCastList_QDial, withQDialResult, qDialFromPtr, withQListQDialResult, qDialListFromPtrList
  ,QScrollBar, TQScrollBar, CQScrollBar, qCast_QScrollBar, QScrollBarSc, TQScrollBarSc, CQScrollBarSc, qCastList_QScrollBar, withQScrollBarResult, qScrollBarFromPtr, withQListQScrollBarResult, qScrollBarListFromPtrList
  ,QDoubleSpinBox, TQDoubleSpinBox, CQDoubleSpinBox, qCast_QDoubleSpinBox, QDoubleSpinBoxSc, TQDoubleSpinBoxSc, CQDoubleSpinBoxSc, qCastList_QDoubleSpinBox, withQDoubleSpinBoxResult, qDoubleSpinBoxFromPtr, withQListQDoubleSpinBoxResult, qDoubleSpinBoxListFromPtrList
  ,QSpinBox, TQSpinBox, CQSpinBox, qCast_QSpinBox, QSpinBoxSc, TQSpinBoxSc, CQSpinBoxSc, qCastList_QSpinBox, withQSpinBoxResult, qSpinBoxFromPtr, withQListQSpinBoxResult, qSpinBoxListFromPtrList
  ,QVBoxLayout, TQVBoxLayout, CQVBoxLayout, qCast_QVBoxLayout, QVBoxLayoutSc, TQVBoxLayoutSc, CQVBoxLayoutSc, qCastList_QVBoxLayout, withQVBoxLayoutResult, qVBoxLayoutFromPtr, withQListQVBoxLayoutResult, qVBoxLayoutListFromPtrList
  ,QHBoxLayout, TQHBoxLayout, CQHBoxLayout, qCast_QHBoxLayout, QHBoxLayoutSc, TQHBoxLayoutSc, CQHBoxLayoutSc, qCastList_QHBoxLayout, withQHBoxLayoutResult, qHBoxLayoutFromPtr, withQListQHBoxLayoutResult, qHBoxLayoutListFromPtrList
  ,QFontComboBox, TQFontComboBox, CQFontComboBox, qCast_QFontComboBox, QFontComboBoxSc, TQFontComboBoxSc, CQFontComboBoxSc, qCastList_QFontComboBox, withQFontComboBoxResult, qFontComboBoxFromPtr, withQListQFontComboBoxResult, qFontComboBoxListFromPtrList
  ,QWindowsStyle, TQWindowsStyle, CQWindowsStyle, qCast_QWindowsStyle, QWindowsStyleSc, TQWindowsStyleSc, CQWindowsStyleSc, qCastList_QWindowsStyle, withQWindowsStyleResult, qWindowsStyleFromPtr, withQListQWindowsStyleResult, qWindowsStyleListFromPtrList
  ,QApplication, TQApplication, CQApplication, qCast_QApplication, QApplicationSc, TQApplicationSc, CQApplicationSc, withQApplicationResult, qApplicationFromPtr
  ,QTimeEdit, TQTimeEdit, CQTimeEdit, qCast_QTimeEdit, QTimeEditSc, TQTimeEditSc, CQTimeEditSc, qCastList_QTimeEdit, withQTimeEditResult, qTimeEditFromPtr, withQListQTimeEditResult, qTimeEditListFromPtrList
  ,QDateEdit, TQDateEdit, CQDateEdit, qCast_QDateEdit, QDateEditSc, TQDateEditSc, CQDateEditSc, qCastList_QDateEdit, withQDateEditResult, qDateEditFromPtr, withQListQDateEditResult, qDateEditListFromPtrList
  ,QColorDialog, TQColorDialog, CQColorDialog, qCast_QColorDialog, QColorDialogSc, TQColorDialogSc, CQColorDialogSc, qCastList_QColorDialog, withQColorDialogResult, qColorDialogFromPtr, withQListQColorDialogResult, qColorDialogListFromPtrList
  ,QAbstractPageSetupDialog, TQAbstractPageSetupDialog, CQAbstractPageSetupDialog, qCast_QAbstractPageSetupDialog, QAbstractPageSetupDialogSc, TQAbstractPageSetupDialogSc, CQAbstractPageSetupDialogSc, qCastList_QAbstractPageSetupDialog, withQAbstractPageSetupDialogResult, qAbstractPageSetupDialogFromPtr, withQListQAbstractPageSetupDialogResult, qAbstractPageSetupDialogListFromPtrList
  ,QMessageBox, TQMessageBox, CQMessageBox, qCast_QMessageBox, QMessageBoxSc, TQMessageBoxSc, CQMessageBoxSc, qCastList_QMessageBox, withQMessageBoxResult, qMessageBoxFromPtr, withQListQMessageBoxResult, qMessageBoxListFromPtrList
  ,QErrorMessage, TQErrorMessage, CQErrorMessage, qCast_QErrorMessage, QErrorMessageSc, TQErrorMessageSc, CQErrorMessageSc, qCastList_QErrorMessage, withQErrorMessageResult, qErrorMessageFromPtr, withQListQErrorMessageResult, qErrorMessageListFromPtrList
  ,QFileDialog, TQFileDialog, CQFileDialog, qCast_QFileDialog, QFileDialogSc, TQFileDialogSc, CQFileDialogSc, qCastList_QFileDialog, withQFileDialogResult, qFileDialogFromPtr, withQListQFileDialogResult, qFileDialogListFromPtrList
  ,QFontDialog, TQFontDialog, CQFontDialog, qCast_QFontDialog, QFontDialogSc, TQFontDialogSc, CQFontDialogSc, qCastList_QFontDialog, withQFontDialogResult, qFontDialogFromPtr, withQListQFontDialogResult, qFontDialogListFromPtrList
  ,QProgressDialog, TQProgressDialog, CQProgressDialog, qCast_QProgressDialog, QProgressDialogSc, TQProgressDialogSc, CQProgressDialogSc, qCastList_QProgressDialog, withQProgressDialogResult, qProgressDialogFromPtr, withQListQProgressDialogResult, qProgressDialogListFromPtrList
  ,QDragEnterEvent, TQDragEnterEvent, CQDragEnterEvent, qCast_QDragEnterEvent, QDragEnterEventSc, TQDragEnterEventSc, CQDragEnterEventSc, qCastList_QDragEnterEvent, withQDragEnterEventResult, qDragEnterEventAddFinalizer
  ,QWindowStateChangeEvent, TQWindowStateChangeEvent, CQWindowStateChangeEvent, qCast_QWindowStateChangeEvent, QWindowStateChangeEventSc, TQWindowStateChangeEventSc, CQWindowStateChangeEventSc, qCastList_QWindowStateChangeEvent, withQWindowStateChangeEventResult, qWindowStateChangeEventAddFinalizer
  ,QPaintEvent, TQPaintEvent, CQPaintEvent, qCast_QPaintEvent, QPaintEventSc, TQPaintEventSc, CQPaintEventSc, qCastList_QPaintEvent, withQPaintEventResult, qPaintEventAddFinalizer
  ,QHoverEvent, TQHoverEvent, CQHoverEvent, qCast_QHoverEvent, QHoverEventSc, TQHoverEventSc, CQHoverEventSc, qCastList_QHoverEvent, withQHoverEventResult, qHoverEventAddFinalizer
  ,QWhatsThisClickedEvent, TQWhatsThisClickedEvent, CQWhatsThisClickedEvent, qCast_QWhatsThisClickedEvent, QWhatsThisClickedEventSc, TQWhatsThisClickedEventSc, CQWhatsThisClickedEventSc, qCastList_QWhatsThisClickedEvent, withQWhatsThisClickedEventResult, qWhatsThisClickedEventAddFinalizer
  ,QToolBarChangeEvent, TQToolBarChangeEvent, CQToolBarChangeEvent, qCast_QToolBarChangeEvent, QToolBarChangeEventSc, TQToolBarChangeEventSc, CQToolBarChangeEventSc, qCastList_QToolBarChangeEvent, withQToolBarChangeEventResult, qToolBarChangeEventAddFinalizer
  ,QIconDragEvent, TQIconDragEvent, CQIconDragEvent, qCast_QIconDragEvent, QIconDragEventSc, TQIconDragEventSc, CQIconDragEventSc, qCastList_QIconDragEvent, withQIconDragEventResult, qIconDragEventAddFinalizer
  ,QShowEvent, TQShowEvent, CQShowEvent, qCast_QShowEvent, QShowEventSc, TQShowEventSc, CQShowEventSc, qCastList_QShowEvent, withQShowEventResult, qShowEventAddFinalizer
  ,QActionEvent, TQActionEvent, CQActionEvent, qCast_QActionEvent, QActionEventSc, TQActionEventSc, CQActionEventSc, qCastList_QActionEvent, withQActionEventResult, qActionEventAddFinalizer
  ,QInputMethodEvent, TQInputMethodEvent, CQInputMethodEvent, qCast_QInputMethodEvent, QInputMethodEventSc, TQInputMethodEventSc, CQInputMethodEventSc, qCastList_QInputMethodEvent, withQInputMethodEventResult
  ,QFocusEvent, TQFocusEvent, CQFocusEvent, qCast_QFocusEvent, QFocusEventSc, TQFocusEventSc, CQFocusEventSc, qCastList_QFocusEvent, withQFocusEventResult, qFocusEventAddFinalizer
  ,QResizeEvent, TQResizeEvent, CQResizeEvent, qCast_QResizeEvent, QResizeEventSc, TQResizeEventSc, CQResizeEventSc, qCastList_QResizeEvent, withQResizeEventResult, qResizeEventAddFinalizer
  ,QHelpEvent, TQHelpEvent, CQHelpEvent, qCast_QHelpEvent, QHelpEventSc, TQHelpEventSc, CQHelpEventSc, qCastList_QHelpEvent, withQHelpEventResult, qHelpEventAddFinalizer
  ,QStatusTipEvent, TQStatusTipEvent, CQStatusTipEvent, qCast_QStatusTipEvent, QStatusTipEventSc, TQStatusTipEventSc, CQStatusTipEventSc, qCastList_QStatusTipEvent, withQStatusTipEventResult, qStatusTipEventAddFinalizer
  ,QDragLeaveEvent, TQDragLeaveEvent, CQDragLeaveEvent, qCast_QDragLeaveEvent, QDragLeaveEventSc, TQDragLeaveEventSc, CQDragLeaveEventSc, qCastList_QDragLeaveEvent, withQDragLeaveEventResult, qDragLeaveEventAddFinalizer
  ,QHideEvent, TQHideEvent, CQHideEvent, qCast_QHideEvent, QHideEventSc, TQHideEventSc, CQHideEventSc, qCastList_QHideEvent, withQHideEventResult, qHideEventAddFinalizer
  ,QShortcutEvent, TQShortcutEvent, CQShortcutEvent, qCast_QShortcutEvent, QShortcutEventSc, TQShortcutEventSc, CQShortcutEventSc, qCastList_QShortcutEvent, withQShortcutEventResult, qShortcutEventAddFinalizer
  ,QCloseEvent, TQCloseEvent, CQCloseEvent, qCast_QCloseEvent, QCloseEventSc, TQCloseEventSc, CQCloseEventSc, qCastList_QCloseEvent, withQCloseEventResult, qCloseEventAddFinalizer
  ,QMoveEvent, TQMoveEvent, CQMoveEvent, qCast_QMoveEvent, QMoveEventSc, TQMoveEventSc, CQMoveEventSc, qCastList_QMoveEvent, withQMoveEventResult, qMoveEventAddFinalizer
  ,QLabel, TQLabel, CQLabel, qCast_QLabel, QLabelSc, TQLabelSc, CQLabelSc, qCastList_QLabel, withQLabelResult, qLabelFromPtr, withQListQLabelResult, qLabelListFromPtrList
  ,QToolBox, TQToolBox, CQToolBox, qCast_QToolBox, QToolBoxSc, TQToolBoxSc, CQToolBoxSc, qCastList_QToolBox, withQToolBoxResult, qToolBoxFromPtr, withQListQToolBoxResult, qToolBoxListFromPtrList
  ,QLCDNumber, TQLCDNumber, CQLCDNumber, qCast_QLCDNumber, QLCDNumberSc, TQLCDNumberSc, CQLCDNumberSc, qCastList_QLCDNumber, withQLCDNumberResult, qLCDNumberFromPtr, withQListQLCDNumberResult, qLCDNumberListFromPtrList
  ,QStackedWidget, TQStackedWidget, CQStackedWidget, qCast_QStackedWidget, QStackedWidgetSc, TQStackedWidgetSc, CQStackedWidgetSc, qCastList_QStackedWidget, withQStackedWidgetResult, qStackedWidgetFromPtr, withQListQStackedWidgetResult, qStackedWidgetListFromPtrList
  ,QSplitter, TQSplitter, CQSplitter, qCast_QSplitter, QSplitterSc, TQSplitterSc, CQSplitterSc, qCastList_QSplitter, withQSplitterResult, qSplitterFromPtr, withQListQSplitterResult, qSplitterListFromPtrList
  ,QLinearGradient, TQLinearGradient, CQLinearGradient, qCast_QLinearGradient, QLinearGradientSc, TQLinearGradientSc, CQLinearGradientSc, qCastList_QLinearGradient, withQLinearGradientResult, qLinearGradientAddFinalizer
  ,QConicalGradient, TQConicalGradient, CQConicalGradient, qCast_QConicalGradient, QConicalGradientSc, TQConicalGradientSc, CQConicalGradientSc, qCastList_QConicalGradient, withQConicalGradientResult, qConicalGradientAddFinalizer
  ,QRadialGradient, TQRadialGradient, CQRadialGradient, qCast_QRadialGradient, QRadialGradientSc, TQRadialGradientSc, CQRadialGradientSc, qCastList_QRadialGradient, withQRadialGradientResult, qRadialGradientAddFinalizer
  ,QGraphicsLineItem, TQGraphicsLineItem, CQGraphicsLineItem, qCast_QGraphicsLineItem, QGraphicsLineItemSc, TQGraphicsLineItemSc, CQGraphicsLineItemSc, qCastList_QGraphicsLineItem, withQGraphicsLineItemResult, qGraphicsLineItemAddFinalizer, qGraphicsLineItemAddFinalizer1
  ,QGraphicsPixmapItem, TQGraphicsPixmapItem, CQGraphicsPixmapItem, qCast_QGraphicsPixmapItem, QGraphicsPixmapItemSc, TQGraphicsPixmapItemSc, CQGraphicsPixmapItemSc, qCastList_QGraphicsPixmapItem, withQGraphicsPixmapItemResult, qGraphicsPixmapItemAddFinalizer, qGraphicsPixmapItemAddFinalizer1
  ,QGraphicsItemGroup, TQGraphicsItemGroup, CQGraphicsItemGroup, qCast_QGraphicsItemGroup, QGraphicsItemGroupSc, TQGraphicsItemGroupSc, CQGraphicsItemGroupSc, qCastList_QGraphicsItemGroup, withQGraphicsItemGroupResult, qGraphicsItemGroupAddFinalizer, qGraphicsItemGroupAddFinalizer1
  ,QGraphicsSceneHelpEvent, TQGraphicsSceneHelpEvent, CQGraphicsSceneHelpEvent, qCast_QGraphicsSceneHelpEvent, QGraphicsSceneHelpEventSc, TQGraphicsSceneHelpEventSc, CQGraphicsSceneHelpEventSc, qCastList_QGraphicsSceneHelpEvent, withQGraphicsSceneHelpEventResult, qGraphicsSceneHelpEventAddFinalizer
  ,QGraphicsSceneHoverEvent, TQGraphicsSceneHoverEvent, CQGraphicsSceneHoverEvent, qCast_QGraphicsSceneHoverEvent, QGraphicsSceneHoverEventSc, TQGraphicsSceneHoverEventSc, CQGraphicsSceneHoverEventSc, qCastList_QGraphicsSceneHoverEvent, withQGraphicsSceneHoverEventResult, qGraphicsSceneHoverEventAddFinalizer
  ,QGraphicsSceneContextMenuEvent, TQGraphicsSceneContextMenuEvent, CQGraphicsSceneContextMenuEvent, qCast_QGraphicsSceneContextMenuEvent, QGraphicsSceneContextMenuEventSc, TQGraphicsSceneContextMenuEventSc, CQGraphicsSceneContextMenuEventSc, qCastList_QGraphicsSceneContextMenuEvent, withQGraphicsSceneContextMenuEventResult, qGraphicsSceneContextMenuEventAddFinalizer
  ,QGraphicsSceneMouseEvent, TQGraphicsSceneMouseEvent, CQGraphicsSceneMouseEvent, qCast_QGraphicsSceneMouseEvent, QGraphicsSceneMouseEventSc, TQGraphicsSceneMouseEventSc, CQGraphicsSceneMouseEventSc, qCastList_QGraphicsSceneMouseEvent, withQGraphicsSceneMouseEventResult, qGraphicsSceneMouseEventAddFinalizer
  ,QGraphicsSceneDragDropEvent, TQGraphicsSceneDragDropEvent, CQGraphicsSceneDragDropEvent, qCast_QGraphicsSceneDragDropEvent, QGraphicsSceneDragDropEventSc, TQGraphicsSceneDragDropEventSc, CQGraphicsSceneDragDropEventSc, qCastList_QGraphicsSceneDragDropEvent, withQGraphicsSceneDragDropEventResult, qGraphicsSceneDragDropEventAddFinalizer
  ,QGraphicsSceneWheelEvent, TQGraphicsSceneWheelEvent, CQGraphicsSceneWheelEvent, qCast_QGraphicsSceneWheelEvent, QGraphicsSceneWheelEventSc, TQGraphicsSceneWheelEventSc, CQGraphicsSceneWheelEventSc, qCastList_QGraphicsSceneWheelEvent, withQGraphicsSceneWheelEventResult, qGraphicsSceneWheelEventAddFinalizer
  ,QIconEngineV2, TQIconEngineV2, CQIconEngineV2, qCast_QIconEngineV2, QIconEngineV2Sc, TQIconEngineV2Sc, CQIconEngineV2Sc, qCastList_QIconEngineV2, withQIconEngineV2Result, qIconEngineV2AddFinalizer, qIconEngineV2AddFinalizer1
  ,QMouseEvent, TQMouseEvent, CQMouseEvent, qCast_QMouseEvent, QMouseEventSc, TQMouseEventSc, CQMouseEventSc, qCastList_QMouseEvent, withQMouseEventResult, qMouseEventAddFinalizer
  ,QKeyEvent, TQKeyEvent, CQKeyEvent, qCast_QKeyEvent, QKeyEventSc, TQKeyEventSc, CQKeyEventSc, qCastList_QKeyEvent, withQKeyEventResult, qKeyEventAddFinalizer
  ,QWheelEvent, TQWheelEvent, CQWheelEvent, qCast_QWheelEvent, QWheelEventSc, TQWheelEventSc, CQWheelEventSc, qCastList_QWheelEvent, withQWheelEventResult, qWheelEventAddFinalizer
  ,QTabletEvent, TQTabletEvent, CQTabletEvent, qCast_QTabletEvent, QTabletEventSc, TQTabletEventSc, CQTabletEventSc, qCastList_QTabletEvent, withQTabletEventResult, qTabletEventAddFinalizer
  ,QContextMenuEvent, TQContextMenuEvent, CQContextMenuEvent, qCast_QContextMenuEvent, QContextMenuEventSc, TQContextMenuEventSc, CQContextMenuEventSc, qCastList_QContextMenuEvent, withQContextMenuEventResult, qContextMenuEventAddFinalizer
  ,QGridLayout, TQGridLayout, CQGridLayout, qCast_QGridLayout, QGridLayoutSc, TQGridLayoutSc, CQGridLayoutSc, qCastList_QGridLayout, withQGridLayoutResult, qGridLayoutFromPtr, withQListQGridLayoutResult, qGridLayoutListFromPtrList
  ,QStackedLayout, TQStackedLayout, CQStackedLayout, qCast_QStackedLayout, QStackedLayoutSc, TQStackedLayoutSc, CQStackedLayoutSc, qCastList_QStackedLayout, withQStackedLayoutResult, qStackedLayoutFromPtr, withQListQStackedLayoutResult, qStackedLayoutListFromPtrList
  ,QSpacerItem, TQSpacerItem, CQSpacerItem, qCast_QSpacerItem, QSpacerItemSc, TQSpacerItemSc, CQSpacerItemSc, qCastList_QSpacerItem, withQSpacerItemResult
  ,QListWidget, TQListWidget, CQListWidget, qCast_QListWidget, QListWidgetSc, TQListWidgetSc, CQListWidgetSc, qCastList_QListWidget, withQListWidgetResult, qListWidgetFromPtr, withQListQListWidgetResult, qListWidgetListFromPtrList
  ,QUndoView, TQUndoView, CQUndoView, qCast_QUndoView, QUndoViewSc, TQUndoViewSc, CQUndoViewSc, qCastList_QUndoView, withQUndoViewResult, qUndoViewFromPtr, withQListQUndoViewResult, qUndoViewListFromPtrList
  ,QGraphicsItemAnimation, TQGraphicsItemAnimation, CQGraphicsItemAnimation, qCast_QGraphicsItemAnimation, QGraphicsItemAnimationSc, TQGraphicsItemAnimationSc, CQGraphicsItemAnimationSc, qCastList_QGraphicsItemAnimation, withQGraphicsItemAnimationResult, qGraphicsItemAnimationFromPtr, withQListQGraphicsItemAnimationResult, qGraphicsItemAnimationListFromPtrList
  ,QTextDocument, TQTextDocument, CQTextDocument, qCast_QTextDocument, QTextDocumentSc, TQTextDocumentSc, CQTextDocumentSc, qCastList_QTextDocument, withQTextDocumentResult, qTextDocumentFromPtr, withQListQTextDocumentResult, qTextDocumentListFromPtrList
  ,QMovie, TQMovie, CQMovie, qCast_QMovie, QMovieSc, TQMovieSc, CQMovieSc, qCastList_QMovie, withQMovieResult, qMovieFromPtr, withQListQMovieResult, qMovieListFromPtrList
  ,QAction, TQAction, CQAction, qCast_QAction, QActionSc, TQActionSc, CQActionSc, qCastList_QAction, withQActionResult, qActionFromPtr, withQListQActionResult, qActionListFromPtrList
  ,QButtonGroup, TQButtonGroup, CQButtonGroup, qCast_QButtonGroup, QButtonGroupSc, TQButtonGroupSc, CQButtonGroupSc, qCastList_QButtonGroup, withQButtonGroupResult, qButtonGroupFromPtr, withQListQButtonGroupResult, qButtonGroupListFromPtrList
  ,QDrag, TQDrag, CQDrag, qCast_QDrag, QDragSc, TQDragSc, CQDragSc, qCastList_QDrag, withQDragResult, qDragFromPtr, withQListQDragResult, qDragListFromPtrList
  ,QShortcut, TQShortcut, CQShortcut, qCast_QShortcut, QShortcutSc, TQShortcutSc, CQShortcutSc, qCastList_QShortcut, withQShortcutResult, qShortcutFromPtr, withQListQShortcutResult, qShortcutListFromPtrList
  ,QSound, TQSound, CQSound, qCast_QSound, QSoundSc, TQSoundSc, CQSoundSc, qCastList_QSound, withQSoundResult, qSoundFromPtr, withQListQSoundResult, qSoundListFromPtrList
  ,QAbstractItemDelegate, TQAbstractItemDelegate, CQAbstractItemDelegate, qCast_QAbstractItemDelegate, QAbstractItemDelegateSc, TQAbstractItemDelegateSc, CQAbstractItemDelegateSc, qCastList_QAbstractItemDelegate, withQAbstractItemDelegateResult, qAbstractItemDelegateFromPtr, withQListQAbstractItemDelegateResult, qAbstractItemDelegateListFromPtrList
  ,QSyntaxHighlighter, TQSyntaxHighlighter, CQSyntaxHighlighter, qCast_QSyntaxHighlighter, QSyntaxHighlighterSc, TQSyntaxHighlighterSc, CQSyntaxHighlighterSc, qCastList_QSyntaxHighlighter, withQSyntaxHighlighterResult, qSyntaxHighlighterFromPtr, withQListQSyntaxHighlighterResult, qSyntaxHighlighterListFromPtrList
  ,QCompleter, TQCompleter, CQCompleter, qCast_QCompleter, QCompleterSc, TQCompleterSc, CQCompleterSc, qCastList_QCompleter, withQCompleterResult, qCompleterFromPtr, withQListQCompleterResult, qCompleterListFromPtrList
  ,QUndoStack, TQUndoStack, CQUndoStack, qCast_QUndoStack, QUndoStackSc, TQUndoStackSc, CQUndoStackSc, qCastList_QUndoStack, withQUndoStackResult, qUndoStackFromPtr, withQListQUndoStackResult, qUndoStackListFromPtrList
  ,QInputContext, TQInputContext, CQInputContext, qCast_QInputContext, QInputContextSc, TQInputContextSc, CQInputContextSc, qCastList_QInputContext, withQInputContextResult, qInputContextFromPtr, withQListQInputContextResult, qInputContextListFromPtrList
  ,QAbstractTextDocumentLayout, TQAbstractTextDocumentLayout, CQAbstractTextDocumentLayout, qCast_QAbstractTextDocumentLayout, QAbstractTextDocumentLayoutSc, TQAbstractTextDocumentLayoutSc, CQAbstractTextDocumentLayoutSc, qCastList_QAbstractTextDocumentLayout, withQAbstractTextDocumentLayoutResult, qAbstractTextDocumentLayoutFromPtr, withQListQAbstractTextDocumentLayoutResult, qAbstractTextDocumentLayoutListFromPtrList
  ,QDataWidgetMapper, TQDataWidgetMapper, CQDataWidgetMapper, qCast_QDataWidgetMapper, QDataWidgetMapperSc, TQDataWidgetMapperSc, CQDataWidgetMapperSc, qCastList_QDataWidgetMapper, withQDataWidgetMapperResult, qDataWidgetMapperFromPtr, withQListQDataWidgetMapperResult, qDataWidgetMapperListFromPtrList
  ,QSystemTrayIcon, TQSystemTrayIcon, CQSystemTrayIcon, qCast_QSystemTrayIcon, QSystemTrayIconSc, TQSystemTrayIconSc, CQSystemTrayIconSc, qCastList_QSystemTrayIcon, withQSystemTrayIconResult, qSystemTrayIconFromPtr, withQListQSystemTrayIconResult, qSystemTrayIconListFromPtrList
  ,QClipboard, TQClipboard, CQClipboard, qCast_QClipboard, QClipboardSc, TQClipboardSc, CQClipboardSc, qCastList_QClipboard, withQClipboardResult, qClipboardFromPtr, withQListQClipboardResult, qClipboardListFromPtrList
  ,QGraphicsScene, TQGraphicsScene, CQGraphicsScene, qCast_QGraphicsScene, QGraphicsSceneSc, TQGraphicsSceneSc, CQGraphicsSceneSc, qCastList_QGraphicsScene, withQGraphicsSceneResult, qGraphicsSceneFromPtr, withQListQGraphicsSceneResult, qGraphicsSceneListFromPtrList
  ,QUndoGroup, TQUndoGroup, CQUndoGroup, qCast_QUndoGroup, QUndoGroupSc, TQUndoGroupSc, CQUndoGroupSc, qCastList_QUndoGroup, withQUndoGroupResult, qUndoGroupFromPtr, withQListQUndoGroupResult, qUndoGroupListFromPtrList
  ,QGraphicsTextItem, TQGraphicsTextItem, CQGraphicsTextItem, qCast_QGraphicsTextItem, QGraphicsTextItemSc, TQGraphicsTextItemSc, CQGraphicsTextItemSc, qCastList_QGraphicsTextItem, withQGraphicsTextItemResult, qGraphicsTextItemFromPtr, withQListQGraphicsTextItemResult, qGraphicsTextItemListFromPtrList
  ,QActionGroup, TQActionGroup, CQActionGroup, qCast_QActionGroup, QActionGroupSc, TQActionGroupSc, CQActionGroupSc, qCastList_QActionGroup, withQActionGroupResult, qActionGroupFromPtr, withQListQActionGroupResult, qActionGroupListFromPtrList
  ,QPicture, TQPicture, CQPicture, qCast_QPicture, QPictureSc, TQPictureSc, CQPictureSc, qCastList_QPicture, withQPictureResult
  ,QPrinter, TQPrinter, CQPrinter, qCast_QPrinter, QPrinterSc, TQPrinterSc, CQPrinterSc, qCastList_QPrinter, withQPrinterResult, qPrinterAddFinalizer, qPrinterAddFinalizer1
  ,QImage, TQImage, CQImage, qCast_QImage, QImageSc, TQImageSc, CQImageSc, qCastList_QImage, withQImageResult, qImageAddFinalizer, qImageAddFinalizer1
  ,QBitmap, TQBitmap, CQBitmap, qCast_QBitmap, QBitmapSc, TQBitmapSc, CQBitmapSc, qCastList_QBitmap, withQBitmapResult, qBitmapAddFinalizer, qBitmapAddFinalizer1
  ,QStyleOptionRubberBand, TQStyleOptionRubberBand, CQStyleOptionRubberBand, qCast_QStyleOptionRubberBand, QStyleOptionRubberBandSc, TQStyleOptionRubberBandSc, CQStyleOptionRubberBandSc, qCastList_QStyleOptionRubberBand, withQStyleOptionRubberBandResult, qStyleOptionRubberBandAddFinalizer
  ,QStyleOptionGraphicsItem, TQStyleOptionGraphicsItem, CQStyleOptionGraphicsItem, qCast_QStyleOptionGraphicsItem, QStyleOptionGraphicsItemSc, TQStyleOptionGraphicsItemSc, CQStyleOptionGraphicsItemSc, qCastList_QStyleOptionGraphicsItem, withQStyleOptionGraphicsItemResult, qStyleOptionGraphicsItemAddFinalizer
  ,QStyleOptionToolBar, TQStyleOptionToolBar, CQStyleOptionToolBar, qCast_QStyleOptionToolBar, QStyleOptionToolBarSc, TQStyleOptionToolBarSc, CQStyleOptionToolBarSc, qCastList_QStyleOptionToolBar, withQStyleOptionToolBarResult, qStyleOptionToolBarAddFinalizer
  ,QStyleOptionHeader, TQStyleOptionHeader, CQStyleOptionHeader, qCast_QStyleOptionHeader, QStyleOptionHeaderSc, TQStyleOptionHeaderSc, CQStyleOptionHeaderSc, qCastList_QStyleOptionHeader, withQStyleOptionHeaderResult, qStyleOptionHeaderAddFinalizer
  ,QStyleOptionTabBarBase, TQStyleOptionTabBarBase, CQStyleOptionTabBarBase, qCast_QStyleOptionTabBarBase, QStyleOptionTabBarBaseSc, TQStyleOptionTabBarBaseSc, CQStyleOptionTabBarBaseSc, qCastList_QStyleOptionTabBarBase, withQStyleOptionTabBarBaseResult, qStyleOptionTabBarBaseAddFinalizer
  ,QStyleOptionFocusRect, TQStyleOptionFocusRect, CQStyleOptionFocusRect, qCast_QStyleOptionFocusRect, QStyleOptionFocusRectSc, TQStyleOptionFocusRectSc, CQStyleOptionFocusRectSc, qCastList_QStyleOptionFocusRect, withQStyleOptionFocusRectResult, qStyleOptionFocusRectAddFinalizer
  ,QStyleOptionTabWidgetFrame, TQStyleOptionTabWidgetFrame, CQStyleOptionTabWidgetFrame, qCast_QStyleOptionTabWidgetFrame, QStyleOptionTabWidgetFrameSc, TQStyleOptionTabWidgetFrameSc, CQStyleOptionTabWidgetFrameSc, qCastList_QStyleOptionTabWidgetFrame, withQStyleOptionTabWidgetFrameResult, qStyleOptionTabWidgetFrameAddFinalizer
  ,QStyleOptionMenuItem, TQStyleOptionMenuItem, CQStyleOptionMenuItem, qCast_QStyleOptionMenuItem, QStyleOptionMenuItemSc, TQStyleOptionMenuItemSc, CQStyleOptionMenuItemSc, qCastList_QStyleOptionMenuItem, withQStyleOptionMenuItemResult, qStyleOptionMenuItemAddFinalizer
  ,QStyleOptionButton, TQStyleOptionButton, CQStyleOptionButton, qCast_QStyleOptionButton, QStyleOptionButtonSc, TQStyleOptionButtonSc, CQStyleOptionButtonSc, qCastList_QStyleOptionButton, withQStyleOptionButtonResult, qStyleOptionButtonAddFinalizer
  ,QStyleOptionToolButton, TQStyleOptionToolButton, CQStyleOptionToolButton, qCast_QStyleOptionToolButton, QStyleOptionToolButtonSc, TQStyleOptionToolButtonSc, CQStyleOptionToolButtonSc, qCastList_QStyleOptionToolButton, withQStyleOptionToolButtonResult, qStyleOptionToolButtonAddFinalizer
  ,QStyleOptionSlider, TQStyleOptionSlider, CQStyleOptionSlider, qCast_QStyleOptionSlider, QStyleOptionSliderSc, TQStyleOptionSliderSc, CQStyleOptionSliderSc, qCastList_QStyleOptionSlider, withQStyleOptionSliderResult, qStyleOptionSliderAddFinalizer
  ,QStyleOptionTitleBar, TQStyleOptionTitleBar, CQStyleOptionTitleBar, qCast_QStyleOptionTitleBar, QStyleOptionTitleBarSc, TQStyleOptionTitleBarSc, CQStyleOptionTitleBarSc, qCastList_QStyleOptionTitleBar, withQStyleOptionTitleBarResult, qStyleOptionTitleBarAddFinalizer
  ,QStyleOptionGroupBox, TQStyleOptionGroupBox, CQStyleOptionGroupBox, qCast_QStyleOptionGroupBox, QStyleOptionGroupBoxSc, TQStyleOptionGroupBoxSc, CQStyleOptionGroupBoxSc, qCastList_QStyleOptionGroupBox, withQStyleOptionGroupBoxResult, qStyleOptionGroupBoxAddFinalizer
  ,QStyleOptionSpinBox, TQStyleOptionSpinBox, CQStyleOptionSpinBox, qCast_QStyleOptionSpinBox, QStyleOptionSpinBoxSc, TQStyleOptionSpinBoxSc, CQStyleOptionSpinBoxSc, qCastList_QStyleOptionSpinBox, withQStyleOptionSpinBoxResult, qStyleOptionSpinBoxAddFinalizer
  ,QStyleOptionComboBox, TQStyleOptionComboBox, CQStyleOptionComboBox, qCast_QStyleOptionComboBox, QStyleOptionComboBoxSc, TQStyleOptionComboBoxSc, CQStyleOptionComboBoxSc, qCastList_QStyleOptionComboBox, withQStyleOptionComboBoxResult, qStyleOptionComboBoxAddFinalizer
  ,QStyleOptionSizeGrip, TQStyleOptionSizeGrip, CQStyleOptionSizeGrip, qCast_QStyleOptionSizeGrip, QStyleOptionSizeGripSc, TQStyleOptionSizeGripSc, CQStyleOptionSizeGripSc, qCastList_QStyleOptionSizeGrip, withQStyleOptionSizeGripResult, qStyleOptionSizeGripAddFinalizer
  ,QStyleOptionDockWidgetV2, TQStyleOptionDockWidgetV2, CQStyleOptionDockWidgetV2, qCast_QStyleOptionDockWidgetV2, QStyleOptionDockWidgetV2Sc, TQStyleOptionDockWidgetV2Sc, CQStyleOptionDockWidgetV2Sc, qCastList_QStyleOptionDockWidgetV2, withQStyleOptionDockWidgetV2Result, qStyleOptionDockWidgetV2AddFinalizer
  ,QStyleOptionFrameV2, TQStyleOptionFrameV2, CQStyleOptionFrameV2, qCast_QStyleOptionFrameV2, QStyleOptionFrameV2Sc, TQStyleOptionFrameV2Sc, CQStyleOptionFrameV2Sc, qCastList_QStyleOptionFrameV2, withQStyleOptionFrameV2Result, qStyleOptionFrameV2AddFinalizer
  ,QStyleOptionProgressBarV2, TQStyleOptionProgressBarV2, CQStyleOptionProgressBarV2, qCast_QStyleOptionProgressBarV2, QStyleOptionProgressBarV2Sc, TQStyleOptionProgressBarV2Sc, CQStyleOptionProgressBarV2Sc, qCastList_QStyleOptionProgressBarV2, withQStyleOptionProgressBarV2Result, qStyleOptionProgressBarV2AddFinalizer
  ,QStyleOptionTabV2, TQStyleOptionTabV2, CQStyleOptionTabV2, qCast_QStyleOptionTabV2, QStyleOptionTabV2Sc, TQStyleOptionTabV2Sc, CQStyleOptionTabV2Sc, qCastList_QStyleOptionTabV2, withQStyleOptionTabV2Result, qStyleOptionTabV2AddFinalizer
  ,QStyleOptionToolBoxV2, TQStyleOptionToolBoxV2, CQStyleOptionToolBoxV2, qCast_QStyleOptionToolBoxV2, QStyleOptionToolBoxV2Sc, TQStyleOptionToolBoxV2Sc, CQStyleOptionToolBoxV2Sc, qCastList_QStyleOptionToolBoxV2, withQStyleOptionToolBoxV2Result, qStyleOptionToolBoxV2AddFinalizer
  ,QStyleOptionViewItemV3, TQStyleOptionViewItemV3, CQStyleOptionViewItemV3, qCast_QStyleOptionViewItemV3, QStyleOptionViewItemV3Sc, TQStyleOptionViewItemV3Sc, CQStyleOptionViewItemV3Sc, qCastList_QStyleOptionViewItemV3, withQStyleOptionViewItemV3Result, qStyleOptionViewItemV3AddFinalizer
  ,QTableWidget, TQTableWidget, CQTableWidget, qCast_QTableWidget, QTableWidgetSc, TQTableWidgetSc, CQTableWidgetSc, qCastList_QTableWidget, withQTableWidgetResult, qTableWidgetFromPtr, withQListQTableWidgetResult, qTableWidgetListFromPtrList
  ,QTextList, TQTextList, CQTextList, qCast_QTextList, QTextListSc, TQTextListSc, CQTextListSc, qCastList_QTextList, withQTextListResult, qTextListFromPtr, withQListQTextListResult, qTextListListFromPtrList
  ,QTextImageFormat, TQTextImageFormat, CQTextImageFormat, qCast_QTextImageFormat, QTextImageFormatSc, TQTextImageFormatSc, CQTextImageFormatSc, qCastList_QTextImageFormat, withQTextImageFormatResult, qTextImageFormatAddFinalizer
  ,QTextBrowser, TQTextBrowser, CQTextBrowser, qCast_QTextBrowser, QTextBrowserSc, TQTextBrowserSc, CQTextBrowserSc, qCastList_QTextBrowser, withQTextBrowserResult, qTextBrowserFromPtr, withQListQTextBrowserResult, qTextBrowserListFromPtrList
  ,QTextBlockFormat, TQTextBlockFormat, CQTextBlockFormat, qCast_QTextBlockFormat, QTextBlockFormatSc, TQTextBlockFormatSc, CQTextBlockFormatSc, qCastList_QTextBlockFormat, withQTextBlockFormatResult, qTextBlockFormatAddFinalizer
  ,QTextListFormat, TQTextListFormat, CQTextListFormat, qCast_QTextListFormat, QTextListFormatSc, TQTextListFormatSc, CQTextListFormatSc, qCastList_QTextListFormat, withQTextListFormatResult, qTextListFormatAddFinalizer
  ,QTextTable, TQTextTable, CQTextTable, qCast_QTextTable, QTextTableSc, TQTextTableSc, CQTextTableSc, qCastList_QTextTable, withQTextTableResult, qTextTableFromPtr, withQListQTextTableResult, qTextTableListFromPtrList
  ,QTextTableFormat, TQTextTableFormat, CQTextTableFormat, qCast_QTextTableFormat, QTextTableFormatSc, TQTextTableFormatSc, CQTextTableFormatSc, qCastList_QTextTableFormat, withQTextTableFormatResult, qTextTableFormatAddFinalizer
  ,QTreeWidget, TQTreeWidget, CQTreeWidget, qCast_QTreeWidget, QTreeWidgetSc, TQTreeWidgetSc, CQTreeWidgetSc, qCastList_QTreeWidget, withQTreeWidgetResult, qTreeWidgetFromPtr, withQListQTreeWidgetResult, qTreeWidgetListFromPtrList
  ,QRegExpValidator, TQRegExpValidator, CQRegExpValidator, qCast_QRegExpValidator, QRegExpValidatorSc, TQRegExpValidatorSc, CQRegExpValidatorSc, qCastList_QRegExpValidator, withQRegExpValidatorResult, qRegExpValidatorFromPtr, withQListQRegExpValidatorResult, qRegExpValidatorListFromPtrList
  ,QIntValidator, TQIntValidator, CQIntValidator, qCast_QIntValidator, QIntValidatorSc, TQIntValidatorSc, CQIntValidatorSc, qCastList_QIntValidator, withQIntValidatorResult, qIntValidatorFromPtr, withQListQIntValidatorResult, qIntValidatorListFromPtrList
  ,QDoubleValidator, TQDoubleValidator, CQDoubleValidator, qCast_QDoubleValidator, QDoubleValidatorSc, TQDoubleValidatorSc, CQDoubleValidatorSc, qCastList_QDoubleValidator, withQDoubleValidatorResult, qDoubleValidatorFromPtr, withQListQDoubleValidatorResult, qDoubleValidatorListFromPtrList
  ,QMenu, TQMenu, CQMenu, qCast_QMenu, QMenuSc, TQMenuSc, CQMenuSc, qCastList_QMenu, withQMenuResult, qMenuFromPtr, withQListQMenuResult, qMenuListFromPtrList
  ,QCalendarWidget, TQCalendarWidget, CQCalendarWidget, qCast_QCalendarWidget, QCalendarWidgetSc, TQCalendarWidgetSc, CQCalendarWidgetSc, qCastList_QCalendarWidget, withQCalendarWidgetResult, qCalendarWidgetFromPtr, withQListQCalendarWidgetResult, qCalendarWidgetListFromPtrList
  ,QLineEdit, TQLineEdit, CQLineEdit, qCast_QLineEdit, QLineEditSc, TQLineEditSc, CQLineEditSc, qCastList_QLineEdit, withQLineEditResult, qLineEditFromPtr, withQListQLineEditResult, qLineEditListFromPtrList
  ,QDesktopWidget, TQDesktopWidget, CQDesktopWidget, qCast_QDesktopWidget, QDesktopWidgetSc, TQDesktopWidgetSc, CQDesktopWidgetSc, qCastList_QDesktopWidget, withQDesktopWidgetResult, qDesktopWidgetFromPtr, withQListQDesktopWidgetResult, qDesktopWidgetListFromPtrList
  ,QSplitterHandle, TQSplitterHandle, CQSplitterHandle, qCast_QSplitterHandle, QSplitterHandleSc, TQSplitterHandleSc, CQSplitterHandleSc, qCastList_QSplitterHandle, withQSplitterHandleResult, qSplitterHandleFromPtr, withQListQSplitterHandleResult, qSplitterHandleListFromPtrList
  ,QMainWindow, TQMainWindow, CQMainWindow, qCast_QMainWindow, QMainWindowSc, TQMainWindowSc, CQMainWindowSc, qCastList_QMainWindow, withQMainWindowResult, qMainWindowFromPtr, withQListQMainWindowResult, qMainWindowListFromPtrList
  ,QFocusFrame, TQFocusFrame, CQFocusFrame, qCast_QFocusFrame, QFocusFrameSc, TQFocusFrameSc, CQFocusFrameSc, qCastList_QFocusFrame, withQFocusFrameResult, qFocusFrameFromPtr, withQListQFocusFrameResult, qFocusFrameListFromPtrList
  ,QSplashScreen, TQSplashScreen, CQSplashScreen, qCast_QSplashScreen, QSplashScreenSc, TQSplashScreenSc, CQSplashScreenSc, qCastList_QSplashScreen, withQSplashScreenResult, qSplashScreenFromPtr, withQListQSplashScreenResult, qSplashScreenListFromPtrList
  ,QTabWidget, TQTabWidget, CQTabWidget, qCast_QTabWidget, QTabWidgetSc, TQTabWidgetSc, CQTabWidgetSc, qCastList_QTabWidget, withQTabWidgetResult, qTabWidgetFromPtr, withQListQTabWidgetResult, qTabWidgetListFromPtrList
  ,QProgressBar, TQProgressBar, CQProgressBar, qCast_QProgressBar, QProgressBarSc, TQProgressBarSc, CQProgressBarSc, qCastList_QProgressBar, withQProgressBarResult, qProgressBarFromPtr, withQListQProgressBarResult, qProgressBarListFromPtrList
  ,QDialogButtonBox, TQDialogButtonBox, CQDialogButtonBox, qCast_QDialogButtonBox, QDialogButtonBoxSc, TQDialogButtonBoxSc, CQDialogButtonBoxSc, qCastList_QDialogButtonBox, withQDialogButtonBoxResult, qDialogButtonBoxFromPtr, withQListQDialogButtonBoxResult, qDialogButtonBoxListFromPtrList
  ,QRubberBand, TQRubberBand, CQRubberBand, qCast_QRubberBand, QRubberBandSc, TQRubberBandSc, CQRubberBandSc, qCastList_QRubberBand, withQRubberBandResult, qRubberBandFromPtr, withQListQRubberBandResult, qRubberBandListFromPtrList
  ,QMenuBar, TQMenuBar, CQMenuBar, qCast_QMenuBar, QMenuBarSc, TQMenuBarSc, CQMenuBarSc, qCastList_QMenuBar, withQMenuBarResult, qMenuBarFromPtr, withQListQMenuBarResult, qMenuBarListFromPtrList
  ,QDockWidget, TQDockWidget, CQDockWidget, qCast_QDockWidget, QDockWidgetSc, TQDockWidgetSc, CQDockWidgetSc, qCastList_QDockWidget, withQDockWidgetResult, qDockWidgetFromPtr, withQListQDockWidgetResult, qDockWidgetListFromPtrList
  ,QSizeGrip, TQSizeGrip, CQSizeGrip, qCast_QSizeGrip, QSizeGripSc, TQSizeGripSc, CQSizeGripSc, qCastList_QSizeGrip, withQSizeGripResult, qSizeGripFromPtr, withQListQSizeGripResult, qSizeGripListFromPtrList
  ,QStatusBar, TQStatusBar, CQStatusBar, qCast_QStatusBar, QStatusBarSc, TQStatusBarSc, CQStatusBarSc, qCastList_QStatusBar, withQStatusBarResult, qStatusBarFromPtr, withQListQStatusBarResult, qStatusBarListFromPtrList
  ,QTabBar, TQTabBar, CQTabBar, qCast_QTabBar, QTabBarSc, TQTabBarSc, CQTabBarSc, qCastList_QTabBar, withQTabBarResult, qTabBarFromPtr, withQListQTabBarResult, qTabBarListFromPtrList
  ,QGroupBox, TQGroupBox, CQGroupBox, qCast_QGroupBox, QGroupBoxSc, TQGroupBoxSc, CQGroupBoxSc, qCastList_QGroupBox, withQGroupBoxResult, qGroupBoxFromPtr, withQListQGroupBoxResult, qGroupBoxListFromPtrList
  ,QToolBar, TQToolBar, CQToolBar, qCast_QToolBar, QToolBarSc, TQToolBarSc, CQToolBarSc, qCastList_QToolBar, withQToolBarResult, qToolBarFromPtr, withQListQToolBarResult, qToolBarListFromPtrList
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types
import Qtc.ClassTypes.Core

type QPaintDevice a = Object (CQPaintDevice a)
type TQPaintDevice a = CQPaintDevice a
data CQPaintDevice a = CQPaintDevice

type QPaintDeviceSc a = QPaintDevice (CQPaintDeviceSc a)
type TQPaintDeviceSc a = TQPaintDevice (CQPaintDeviceSc a)
data CQPaintDeviceSc a = CQPaintDeviceSc

qCast_QPaintDevice :: Object a -> IO (QPaintDevice ())
qCast_QPaintDevice _qobj
  = return (objectCast _qobj)

withQPaintDeviceResult :: IO (Ptr (TQPaintDevice a)) -> IO (QPaintDevice a)
withQPaintDeviceResult f
  = withObjectRefResult f

class QqCastList_QPaintDevice a r where
  qcl_QPaintDevice :: [QPaintDevice ()] -> a -> r

instance QqCastList_QPaintDevice (QPaintDevice ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ x:l

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QPaintDevice ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice (x:l) sx

instance QqCastList_QPaintDevice (QPixmap ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QPixmap ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice ((objectCast x):l) sx

instance QqCastList_QPaintDevice (QPicture ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QPicture ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice ((objectCast x):l) sx

instance QqCastList_QPaintDevice (QPrinter ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QPrinter ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice ((objectCast x):l) sx

instance QqCastList_QPaintDevice (QImage ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QImage ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice ((objectCast x):l) sx

instance QqCastList_QPaintDevice (QBitmap ()) [QPaintDevice ()] where
  qcl_QPaintDevice l x = reverse $ ((objectCast x):l)

instance QqCastList_QPaintDevice a r => QqCastList_QPaintDevice (QBitmap ()) (a -> r) where
  qcl_QPaintDevice l x sx = qcl_QPaintDevice ((objectCast x):l) sx

qCastList_QPaintDevice x = qcl_QPaintDevice [] x

type QWidget a = QObject (CQWidget a)
type TQWidget a = TQObject (CQWidget a)
data CQWidget a = CQWidget

type QWidgetSc a = QWidget (CQWidgetSc a)
type TQWidgetSc a = TQWidget (CQWidgetSc a)
data CQWidgetSc a = CQWidgetSc

qCast_QWidget :: Object a -> IO (QWidget ())
qCast_QWidget _qobj
  = return (objectCast _qobj)

withQWidgetResult :: IO (Ptr (TQWidget a)) -> IO (QWidget a)
withQWidgetResult f
  = withObjectResult qtc_QWidget_getFinalizer f

qWidgetFromPtr :: Ptr (TQWidget a) -> IO (QWidget a)
qWidgetFromPtr p
  = objectFromPtr qtc_QWidget_getFinalizer p

withQListQWidgetResult :: (Ptr (Ptr (TQWidget a)) -> IO CInt) -> IO [QWidget a]
withQListQWidgetResult f
  = withQListObjectResult qtc_QWidget_getFinalizer f

qWidgetListFromPtrList :: [Ptr (TQWidget a)] -> IO [QWidget a]
qWidgetListFromPtrList p
  = objectListFromPtrList qtc_QWidget_getFinalizer p

foreign import ccall qtc_QWidget_getFinalizer :: FunPtr (Ptr (TQWidget a) -> IO ())

class QqCastList_QWidget a r where
  qcl_QWidget :: [QWidget ()] -> a -> r

instance QqCastList_QWidget (QWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ x:l

instance QqCastList_QWidget a r => QqCastList_QWidget (QWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget (x:l) sx

instance QqCastList_QWidget (QFrame ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QFrame ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractScrollArea ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractScrollArea ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractItemView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractItemView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractSpinBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractSpinBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractButton ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractButton ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractSlider ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractSlider ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QListView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QListView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDateTimeEdit ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDateTimeEdit ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTreeView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTreeView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTableView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTableView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTextEdit ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTextEdit ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractPrintDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractPrintDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QComboBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QComboBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QPushButton ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QPushButton ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QRadioButton ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QRadioButton ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QCheckBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QCheckBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QToolButton ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QToolButton ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QHeaderView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QHeaderView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QPrintDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QPrintDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QGraphicsView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QGraphicsView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QScrollArea ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QScrollArea ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSlider ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSlider ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDial ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDial ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QScrollBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QScrollBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDoubleSpinBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDoubleSpinBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSpinBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSpinBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QFontComboBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QFontComboBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTimeEdit ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTimeEdit ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDateEdit ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDateEdit ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QColorDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QColorDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QAbstractPageSetupDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QAbstractPageSetupDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QMessageBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QMessageBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QErrorMessage ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QErrorMessage ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QFileDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QFileDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QFontDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QFontDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QProgressDialog ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QProgressDialog ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QLabel ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QLabel ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QToolBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QToolBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QLCDNumber ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QLCDNumber ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QStackedWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QStackedWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSplitter ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSplitter ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QListWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QListWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QUndoView ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QUndoView ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTableWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTableWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTextBrowser ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTextBrowser ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTreeWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTreeWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QMenu ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QMenu ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QCalendarWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QCalendarWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QLineEdit ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QLineEdit ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDesktopWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDesktopWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSplitterHandle ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSplitterHandle ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QMainWindow ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QMainWindow ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QFocusFrame ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QFocusFrame ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSplashScreen ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSplashScreen ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTabWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTabWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QProgressBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QProgressBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDialogButtonBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDialogButtonBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QRubberBand ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QRubberBand ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QMenuBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QMenuBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QDockWidget ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QDockWidget ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QSizeGrip ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QSizeGrip ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QStatusBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QStatusBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QTabBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QTabBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QGroupBox ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QGroupBox ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

instance QqCastList_QWidget (QToolBar ()) [QWidget ()] where
  qcl_QWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QWidget a r => QqCastList_QWidget (QToolBar ()) (a -> r) where
  qcl_QWidget l x sx = qcl_QWidget ((objectCast x):l) sx

qCastList_QWidget x = qcl_QWidget [] x

type QStyleOption a = Object (CQStyleOption a)
type TQStyleOption a = CQStyleOption a
data CQStyleOption a = CQStyleOption

type QStyleOptionSc a = QStyleOption (CQStyleOptionSc a)
type TQStyleOptionSc a = TQStyleOption (CQStyleOptionSc a)
data CQStyleOptionSc a = CQStyleOptionSc

qCast_QStyleOption :: Object a -> IO (QStyleOption ())
qCast_QStyleOption _qobj
  = return (objectCast _qobj)

withQStyleOptionResult :: IO (Ptr (TQStyleOption a)) -> IO (QStyleOption a)
withQStyleOptionResult f
  = withObjectResult qtc_QStyleOption_getFinalizer f

foreign import ccall qtc_QStyleOption_getFinalizer :: FunPtr (Ptr (TQStyleOption a) -> IO ())

qStyleOptionAddFinalizer :: QStyleOption a -> IO ()
qStyleOptionAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOption_getFinalizer fp

class QqCastList_QStyleOption a r where
  qcl_QStyleOption :: [QStyleOption ()] -> a -> r

instance QqCastList_QStyleOption (QStyleOption ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ x:l

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOption ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption (x:l) sx

instance QqCastList_QStyleOption (QStyleOptionComplex ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionComplex ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionViewItem ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionViewItem ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionProgressBar ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionProgressBar ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionDockWidget ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionDockWidget ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionFrame ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionFrame ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionTab ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionTab ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionToolBox ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionToolBox ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionViewItemV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionViewItemV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionRubberBand ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionRubberBand ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionGraphicsItem ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionGraphicsItem ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionToolBar ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionToolBar ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionHeader ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionHeader ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionTabBarBase ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionTabBarBase ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionFocusRect ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionFocusRect ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionTabWidgetFrame ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionTabWidgetFrame ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionMenuItem ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionMenuItem ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionButton ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionButton ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionToolButton ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionToolButton ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionSlider ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionSlider ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionTitleBar ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionTitleBar ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionGroupBox ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionGroupBox ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionSpinBox ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionSpinBox ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionComboBox ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionComboBox ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionSizeGrip ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionSizeGrip ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionDockWidgetV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionDockWidgetV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionFrameV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionFrameV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionProgressBarV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionProgressBarV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionTabV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionTabV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionToolBoxV2 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionToolBoxV2 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

instance QqCastList_QStyleOption (QStyleOptionViewItemV3 ()) [QStyleOption ()] where
  qcl_QStyleOption l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOption a r => QqCastList_QStyleOption (QStyleOptionViewItemV3 ()) (a -> r) where
  qcl_QStyleOption l x sx = qcl_QStyleOption ((objectCast x):l) sx

qCastList_QStyleOption x = qcl_QStyleOption [] x

type QFrame a = QWidget (CQFrame a)
type TQFrame a = TQWidget (CQFrame a)
data CQFrame a = CQFrame

type QFrameSc a = QFrame (CQFrameSc a)
type TQFrameSc a = TQFrame (CQFrameSc a)
data CQFrameSc a = CQFrameSc

qCast_QFrame :: Object a -> IO (QFrame ())
qCast_QFrame _qobj
  = return (objectCast _qobj)

withQFrameResult :: IO (Ptr (TQFrame a)) -> IO (QFrame a)
withQFrameResult f
  = withObjectResult qtc_QFrame_getFinalizer f

qFrameFromPtr :: Ptr (TQFrame a) -> IO (QFrame a)
qFrameFromPtr p
  = objectFromPtr qtc_QFrame_getFinalizer p

withQListQFrameResult :: (Ptr (Ptr (TQFrame a)) -> IO CInt) -> IO [QFrame a]
withQListQFrameResult f
  = withQListObjectResult qtc_QFrame_getFinalizer f

qFrameListFromPtrList :: [Ptr (TQFrame a)] -> IO [QFrame a]
qFrameListFromPtrList p
  = objectListFromPtrList qtc_QFrame_getFinalizer p

foreign import ccall qtc_QFrame_getFinalizer :: FunPtr (Ptr (TQFrame a) -> IO ())

class QqCastList_QFrame a r where
  qcl_QFrame :: [QFrame ()] -> a -> r

instance QqCastList_QFrame (QFrame ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ x:l

instance QqCastList_QFrame a r => QqCastList_QFrame (QFrame ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame (x:l) sx

instance QqCastList_QFrame (QAbstractScrollArea ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QAbstractScrollArea ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QAbstractItemView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QAbstractItemView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QListView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QListView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTreeView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTreeView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTableView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTableView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTextEdit ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTextEdit ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QHeaderView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QHeaderView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QGraphicsView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QGraphicsView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QScrollArea ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QScrollArea ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QLabel ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QLabel ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QToolBox ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QToolBox ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QLCDNumber ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QLCDNumber ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QStackedWidget ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QStackedWidget ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QSplitter ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QSplitter ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QListWidget ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QListWidget ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QUndoView ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QUndoView ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTableWidget ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTableWidget ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTextBrowser ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTextBrowser ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

instance QqCastList_QFrame (QTreeWidget ()) [QFrame ()] where
  qcl_QFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QFrame a r => QqCastList_QFrame (QTreeWidget ()) (a -> r) where
  qcl_QFrame l x sx = qcl_QFrame ((objectCast x):l) sx

qCastList_QFrame x = qcl_QFrame [] x

type QAbstractScrollArea a = QFrame (CQAbstractScrollArea a)
type TQAbstractScrollArea a = TQFrame (CQAbstractScrollArea a)
data CQAbstractScrollArea a = CQAbstractScrollArea

type QAbstractScrollAreaSc a = QAbstractScrollArea (CQAbstractScrollAreaSc a)
type TQAbstractScrollAreaSc a = TQAbstractScrollArea (CQAbstractScrollAreaSc a)
data CQAbstractScrollAreaSc a = CQAbstractScrollAreaSc

qCast_QAbstractScrollArea :: Object a -> IO (QAbstractScrollArea ())
qCast_QAbstractScrollArea _qobj
  = return (objectCast _qobj)

withQAbstractScrollAreaResult :: IO (Ptr (TQAbstractScrollArea a)) -> IO (QAbstractScrollArea a)
withQAbstractScrollAreaResult f
  = withObjectResult qtc_QAbstractScrollArea_getFinalizer f

qAbstractScrollAreaFromPtr :: Ptr (TQAbstractScrollArea a) -> IO (QAbstractScrollArea a)
qAbstractScrollAreaFromPtr p
  = objectFromPtr qtc_QAbstractScrollArea_getFinalizer p

withQListQAbstractScrollAreaResult :: (Ptr (Ptr (TQAbstractScrollArea a)) -> IO CInt) -> IO [QAbstractScrollArea a]
withQListQAbstractScrollAreaResult f
  = withQListObjectResult qtc_QAbstractScrollArea_getFinalizer f

qAbstractScrollAreaListFromPtrList :: [Ptr (TQAbstractScrollArea a)] -> IO [QAbstractScrollArea a]
qAbstractScrollAreaListFromPtrList p
  = objectListFromPtrList qtc_QAbstractScrollArea_getFinalizer p

foreign import ccall qtc_QAbstractScrollArea_getFinalizer :: FunPtr (Ptr (TQAbstractScrollArea a) -> IO ())

class QqCastList_QAbstractScrollArea a r where
  qcl_QAbstractScrollArea :: [QAbstractScrollArea ()] -> a -> r

instance QqCastList_QAbstractScrollArea (QAbstractScrollArea ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ x:l

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QAbstractScrollArea ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea (x:l) sx

instance QqCastList_QAbstractScrollArea (QAbstractItemView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QAbstractItemView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QListView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QListView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTreeView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTreeView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTableView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTableView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTextEdit ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTextEdit ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QHeaderView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QHeaderView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QGraphicsView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QGraphicsView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QScrollArea ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QScrollArea ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QListWidget ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QListWidget ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QUndoView ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QUndoView ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTableWidget ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTableWidget ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTextBrowser ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTextBrowser ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

instance QqCastList_QAbstractScrollArea (QTreeWidget ()) [QAbstractScrollArea ()] where
  qcl_QAbstractScrollArea l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractScrollArea a r => QqCastList_QAbstractScrollArea (QTreeWidget ()) (a -> r) where
  qcl_QAbstractScrollArea l x sx = qcl_QAbstractScrollArea ((objectCast x):l) sx

qCastList_QAbstractScrollArea x = qcl_QAbstractScrollArea [] x

type QGraphicsItem a = Object (CQGraphicsItem a)
type TQGraphicsItem a = CQGraphicsItem a
data CQGraphicsItem a = CQGraphicsItem

type QGraphicsItemSc a = QGraphicsItem (CQGraphicsItemSc a)
type TQGraphicsItemSc a = TQGraphicsItem (CQGraphicsItemSc a)
data CQGraphicsItemSc a = CQGraphicsItemSc

qCast_QGraphicsItem :: Object a -> IO (QGraphicsItem ())
qCast_QGraphicsItem _qobj
  = return (objectCast _qobj)

withQGraphicsItemResult :: IO (Ptr (TQGraphicsItem a)) -> IO (QGraphicsItem a)
withQGraphicsItemResult f
  = withObjectResult qtc_QGraphicsItem_getFinalizer f

foreign import ccall qtc_QGraphicsItem_getFinalizer :: FunPtr (Ptr (TQGraphicsItem a) -> IO ())

qGraphicsItemAddFinalizer :: QGraphicsItem a -> IO ()
qGraphicsItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsItem_getFinalizer fp

foreign import ccall qtc_QGraphicsItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsItem a) -> IO ())

qGraphicsItemAddFinalizer1 :: QGraphicsItem a -> IO ()
qGraphicsItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsItem_getFinalizer1 fp

class QqCastList_QGraphicsItem a r where
  qcl_QGraphicsItem :: [QGraphicsItem ()] -> a -> r

instance QqCastList_QGraphicsItem (QGraphicsItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ x:l

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem (x:l) sx

instance QqCastList_QGraphicsItem (QAbstractGraphicsShapeItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QAbstractGraphicsShapeItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsEllipseItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsEllipseItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsSimpleTextItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsSimpleTextItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsRectItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsRectItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsPathItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsPathItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsPolygonItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsPolygonItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsLineItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsLineItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsPixmapItem ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsPixmapItem ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

instance QqCastList_QGraphicsItem (QGraphicsItemGroup ()) [QGraphicsItem ()] where
  qcl_QGraphicsItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsItem a r => QqCastList_QGraphicsItem (QGraphicsItemGroup ()) (a -> r) where
  qcl_QGraphicsItem l x sx = qcl_QGraphicsItem ((objectCast x):l) sx

qCastList_QGraphicsItem x = qcl_QGraphicsItem [] x

type QDialog a = QWidget (CQDialog a)
type TQDialog a = TQWidget (CQDialog a)
data CQDialog a = CQDialog

type QDialogSc a = QDialog (CQDialogSc a)
type TQDialogSc a = TQDialog (CQDialogSc a)
data CQDialogSc a = CQDialogSc

qCast_QDialog :: Object a -> IO (QDialog ())
qCast_QDialog _qobj
  = return (objectCast _qobj)

withQDialogResult :: IO (Ptr (TQDialog a)) -> IO (QDialog a)
withQDialogResult f
  = withObjectResult qtc_QDialog_getFinalizer f

qDialogFromPtr :: Ptr (TQDialog a) -> IO (QDialog a)
qDialogFromPtr p
  = objectFromPtr qtc_QDialog_getFinalizer p

withQListQDialogResult :: (Ptr (Ptr (TQDialog a)) -> IO CInt) -> IO [QDialog a]
withQListQDialogResult f
  = withQListObjectResult qtc_QDialog_getFinalizer f

qDialogListFromPtrList :: [Ptr (TQDialog a)] -> IO [QDialog a]
qDialogListFromPtrList p
  = objectListFromPtrList qtc_QDialog_getFinalizer p

foreign import ccall qtc_QDialog_getFinalizer :: FunPtr (Ptr (TQDialog a) -> IO ())

class QqCastList_QDialog a r where
  qcl_QDialog :: [QDialog ()] -> a -> r

instance QqCastList_QDialog (QDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ x:l

instance QqCastList_QDialog a r => QqCastList_QDialog (QDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog (x:l) sx

instance QqCastList_QDialog (QAbstractPrintDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QAbstractPrintDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QPrintDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QPrintDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QColorDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QColorDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QAbstractPageSetupDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QAbstractPageSetupDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QMessageBox ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QMessageBox ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QErrorMessage ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QErrorMessage ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QFileDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QFileDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QFontDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QFontDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

instance QqCastList_QDialog (QProgressDialog ()) [QDialog ()] where
  qcl_QDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QDialog a r => QqCastList_QDialog (QProgressDialog ()) (a -> r) where
  qcl_QDialog l x sx = qcl_QDialog ((objectCast x):l) sx

qCastList_QDialog x = qcl_QDialog [] x

type QAbstractItemView a = QAbstractScrollArea (CQAbstractItemView a)
type TQAbstractItemView a = TQAbstractScrollArea (CQAbstractItemView a)
data CQAbstractItemView a = CQAbstractItemView

type QAbstractItemViewSc a = QAbstractItemView (CQAbstractItemViewSc a)
type TQAbstractItemViewSc a = TQAbstractItemView (CQAbstractItemViewSc a)
data CQAbstractItemViewSc a = CQAbstractItemViewSc

qCast_QAbstractItemView :: Object a -> IO (QAbstractItemView ())
qCast_QAbstractItemView _qobj
  = return (objectCast _qobj)

withQAbstractItemViewResult :: IO (Ptr (TQAbstractItemView a)) -> IO (QAbstractItemView a)
withQAbstractItemViewResult f
  = withObjectRefResult f

qAbstractItemViewFromPtr :: Ptr (TQAbstractItemView a) -> IO (QAbstractItemView a)
qAbstractItemViewFromPtr p
  = objectFromPtr_nf p

withQListQAbstractItemViewResult :: (Ptr (Ptr (TQAbstractItemView a)) -> IO CInt) -> IO [QAbstractItemView a]
withQListQAbstractItemViewResult f
  = withQListObjectRefResult f

qAbstractItemViewListFromPtrList :: [Ptr (TQAbstractItemView a)] -> IO [QAbstractItemView a]
qAbstractItemViewListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractItemView a r where
  qcl_QAbstractItemView :: [QAbstractItemView ()] -> a -> r

instance QqCastList_QAbstractItemView (QAbstractItemView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ x:l

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QAbstractItemView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView (x:l) sx

instance QqCastList_QAbstractItemView (QListView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QListView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QTreeView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QTreeView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QTableView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QTableView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QHeaderView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QHeaderView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QListWidget ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QListWidget ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QUndoView ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QUndoView ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QTableWidget ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QTableWidget ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

instance QqCastList_QAbstractItemView (QTreeWidget ()) [QAbstractItemView ()] where
  qcl_QAbstractItemView l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractItemView a r => QqCastList_QAbstractItemView (QTreeWidget ()) (a -> r) where
  qcl_QAbstractItemView l x sx = qcl_QAbstractItemView ((objectCast x):l) sx

qCastList_QAbstractItemView x = qcl_QAbstractItemView [] x

type QStyleOptionComplex a = QStyleOption (CQStyleOptionComplex a)
type TQStyleOptionComplex a = TQStyleOption (CQStyleOptionComplex a)
data CQStyleOptionComplex a = CQStyleOptionComplex

type QStyleOptionComplexSc a = QStyleOptionComplex (CQStyleOptionComplexSc a)
type TQStyleOptionComplexSc a = TQStyleOptionComplex (CQStyleOptionComplexSc a)
data CQStyleOptionComplexSc a = CQStyleOptionComplexSc

qCast_QStyleOptionComplex :: Object a -> IO (QStyleOptionComplex ())
qCast_QStyleOptionComplex _qobj
  = return (objectCast _qobj)

withQStyleOptionComplexResult :: IO (Ptr (TQStyleOptionComplex a)) -> IO (QStyleOptionComplex a)
withQStyleOptionComplexResult f
  = withObjectResult qtc_QStyleOptionComplex_getFinalizer f

foreign import ccall qtc_QStyleOptionComplex_getFinalizer :: FunPtr (Ptr (TQStyleOptionComplex a) -> IO ())

qStyleOptionComplexAddFinalizer :: QStyleOptionComplex a -> IO ()
qStyleOptionComplexAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionComplex_getFinalizer fp

class QqCastList_QStyleOptionComplex a r where
  qcl_QStyleOptionComplex :: [QStyleOptionComplex ()] -> a -> r

instance QqCastList_QStyleOptionComplex (QStyleOptionComplex ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ x:l

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionComplex ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex (x:l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionToolButton ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionToolButton ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionSlider ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionSlider ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionTitleBar ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionTitleBar ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionGroupBox ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionGroupBox ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionSpinBox ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionSpinBox ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionComboBox ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionComboBox ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

instance QqCastList_QStyleOptionComplex (QStyleOptionSizeGrip ()) [QStyleOptionComplex ()] where
  qcl_QStyleOptionComplex l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionComplex a r => QqCastList_QStyleOptionComplex (QStyleOptionSizeGrip ()) (a -> r) where
  qcl_QStyleOptionComplex l x sx = qcl_QStyleOptionComplex ((objectCast x):l) sx

qCastList_QStyleOptionComplex x = qcl_QStyleOptionComplex [] x

type QLayoutItem a = Object (CQLayoutItem a)
type TQLayoutItem a = CQLayoutItem a
data CQLayoutItem a = CQLayoutItem

type QLayoutItemSc a = QLayoutItem (CQLayoutItemSc a)
type TQLayoutItemSc a = TQLayoutItem (CQLayoutItemSc a)
data CQLayoutItemSc a = CQLayoutItemSc

qCast_QLayoutItem :: Object a -> IO (QLayoutItem ())
qCast_QLayoutItem _qobj
  = return (objectCast _qobj)

withQLayoutItemResult :: IO (Ptr (TQLayoutItem a)) -> IO (QLayoutItem a)
withQLayoutItemResult f
  = withObjectRefResult f

class QqCastList_QLayoutItem a r where
  qcl_QLayoutItem :: [QLayoutItem ()] -> a -> r

instance QqCastList_QLayoutItem (QLayoutItem ()) [QLayoutItem ()] where
  qcl_QLayoutItem l x = reverse $ x:l

instance QqCastList_QLayoutItem a r => QqCastList_QLayoutItem (QLayoutItem ()) (a -> r) where
  qcl_QLayoutItem l x sx = qcl_QLayoutItem (x:l) sx

instance QqCastList_QLayoutItem (QSpacerItem ()) [QLayoutItem ()] where
  qcl_QLayoutItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayoutItem a r => QqCastList_QLayoutItem (QSpacerItem ()) (a -> r) where
  qcl_QLayoutItem l x sx = qcl_QLayoutItem ((objectCast x):l) sx

qCastList_QLayoutItem x = qcl_QLayoutItem [] x

type QTextFormat a = Object (CQTextFormat a)
type TQTextFormat a = CQTextFormat a
data CQTextFormat a = CQTextFormat

type QTextFormatSc a = QTextFormat (CQTextFormatSc a)
type TQTextFormatSc a = TQTextFormat (CQTextFormatSc a)
data CQTextFormatSc a = CQTextFormatSc

qCast_QTextFormat :: Object a -> IO (QTextFormat ())
qCast_QTextFormat _qobj
  = return (objectCast _qobj)

withQTextFormatResult :: IO (Ptr (TQTextFormat a)) -> IO (QTextFormat a)
withQTextFormatResult f
  = withObjectResult qtc_QTextFormat_getFinalizer f

foreign import ccall qtc_QTextFormat_getFinalizer :: FunPtr (Ptr (TQTextFormat a) -> IO ())

qTextFormatAddFinalizer :: QTextFormat a -> IO ()
qTextFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextFormat_getFinalizer fp

class QqCastList_QTextFormat a r where
  qcl_QTextFormat :: [QTextFormat ()] -> a -> r

instance QqCastList_QTextFormat (QTextFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ x:l

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat (x:l) sx

instance QqCastList_QTextFormat (QTextFrameFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextFrameFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

instance QqCastList_QTextFormat (QTextCharFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextCharFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

instance QqCastList_QTextFormat (QTextImageFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextImageFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

instance QqCastList_QTextFormat (QTextBlockFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextBlockFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

instance QqCastList_QTextFormat (QTextListFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextListFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

instance QqCastList_QTextFormat (QTextTableFormat ()) [QTextFormat ()] where
  qcl_QTextFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFormat a r => QqCastList_QTextFormat (QTextTableFormat ()) (a -> r) where
  qcl_QTextFormat l x sx = qcl_QTextFormat ((objectCast x):l) sx

qCastList_QTextFormat x = qcl_QTextFormat [] x

type QGraphicsSceneEvent a = QEvent (CQGraphicsSceneEvent a)
type TQGraphicsSceneEvent a = TQEvent (CQGraphicsSceneEvent a)
data CQGraphicsSceneEvent a = CQGraphicsSceneEvent

type QGraphicsSceneEventSc a = QGraphicsSceneEvent (CQGraphicsSceneEventSc a)
type TQGraphicsSceneEventSc a = TQGraphicsSceneEvent (CQGraphicsSceneEventSc a)
data CQGraphicsSceneEventSc a = CQGraphicsSceneEventSc

qCast_QGraphicsSceneEvent :: Object a -> IO (QGraphicsSceneEvent ())
qCast_QGraphicsSceneEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneEventResult :: IO (Ptr (TQGraphicsSceneEvent a)) -> IO (QGraphicsSceneEvent a)
withQGraphicsSceneEventResult f
  = withObjectResult qtc_QGraphicsSceneEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneEvent a) -> IO ())

qGraphicsSceneEventAddFinalizer :: QGraphicsSceneEvent a -> IO ()
qGraphicsSceneEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneEvent_getFinalizer fp

class QqCastList_QGraphicsSceneEvent a r where
  qcl_QGraphicsSceneEvent :: [QGraphicsSceneEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent (x:l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneHelpEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneHelpEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneHoverEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneHoverEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneContextMenuEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneContextMenuEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneMouseEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneMouseEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneDragDropEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneDragDropEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

instance QqCastList_QGraphicsSceneEvent (QGraphicsSceneWheelEvent ()) [QGraphicsSceneEvent ()] where
  qcl_QGraphicsSceneEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QGraphicsSceneEvent a r => QqCastList_QGraphicsSceneEvent (QGraphicsSceneWheelEvent ()) (a -> r) where
  qcl_QGraphicsSceneEvent l x sx = qcl_QGraphicsSceneEvent ((objectCast x):l) sx

qCastList_QGraphicsSceneEvent x = qcl_QGraphicsSceneEvent [] x

type QAbstractGraphicsShapeItem a = QGraphicsItem (CQAbstractGraphicsShapeItem a)
type TQAbstractGraphicsShapeItem a = TQGraphicsItem (CQAbstractGraphicsShapeItem a)
data CQAbstractGraphicsShapeItem a = CQAbstractGraphicsShapeItem

type QAbstractGraphicsShapeItemSc a = QAbstractGraphicsShapeItem (CQAbstractGraphicsShapeItemSc a)
type TQAbstractGraphicsShapeItemSc a = TQAbstractGraphicsShapeItem (CQAbstractGraphicsShapeItemSc a)
data CQAbstractGraphicsShapeItemSc a = CQAbstractGraphicsShapeItemSc

qCast_QAbstractGraphicsShapeItem :: Object a -> IO (QAbstractGraphicsShapeItem ())
qCast_QAbstractGraphicsShapeItem _qobj
  = return (objectCast _qobj)

withQAbstractGraphicsShapeItemResult :: IO (Ptr (TQAbstractGraphicsShapeItem a)) -> IO (QAbstractGraphicsShapeItem a)
withQAbstractGraphicsShapeItemResult f
  = withObjectRefResult f

class QqCastList_QAbstractGraphicsShapeItem a r where
  qcl_QAbstractGraphicsShapeItem :: [QAbstractGraphicsShapeItem ()] -> a -> r

instance QqCastList_QAbstractGraphicsShapeItem (QAbstractGraphicsShapeItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ x:l

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QAbstractGraphicsShapeItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem (x:l) sx

instance QqCastList_QAbstractGraphicsShapeItem (QGraphicsEllipseItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QGraphicsEllipseItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem ((objectCast x):l) sx

instance QqCastList_QAbstractGraphicsShapeItem (QGraphicsSimpleTextItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QGraphicsSimpleTextItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem ((objectCast x):l) sx

instance QqCastList_QAbstractGraphicsShapeItem (QGraphicsRectItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QGraphicsRectItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem ((objectCast x):l) sx

instance QqCastList_QAbstractGraphicsShapeItem (QGraphicsPathItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QGraphicsPathItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem ((objectCast x):l) sx

instance QqCastList_QAbstractGraphicsShapeItem (QGraphicsPolygonItem ()) [QAbstractGraphicsShapeItem ()] where
  qcl_QAbstractGraphicsShapeItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractGraphicsShapeItem a r => QqCastList_QAbstractGraphicsShapeItem (QGraphicsPolygonItem ()) (a -> r) where
  qcl_QAbstractGraphicsShapeItem l x sx = qcl_QAbstractGraphicsShapeItem ((objectCast x):l) sx

qCastList_QAbstractGraphicsShapeItem x = qcl_QAbstractGraphicsShapeItem [] x

type QLayout a = QObject (CQLayout a)
type TQLayout a = TQObject (CQLayout a)
data CQLayout a = CQLayout

type QLayoutSc a = QLayout (CQLayoutSc a)
type TQLayoutSc a = TQLayout (CQLayoutSc a)
data CQLayoutSc a = CQLayoutSc

qCast_QLayout :: Object a -> IO (QLayout ())
qCast_QLayout _qobj
  = return (objectCast _qobj)

withQLayoutResult :: IO (Ptr (TQLayout a)) -> IO (QLayout a)
withQLayoutResult f
  = withObjectRefResult f

qLayoutFromPtr :: Ptr (TQLayout a) -> IO (QLayout a)
qLayoutFromPtr p
  = objectFromPtr_nf p

withQListQLayoutResult :: (Ptr (Ptr (TQLayout a)) -> IO CInt) -> IO [QLayout a]
withQListQLayoutResult f
  = withQListObjectRefResult f

qLayoutListFromPtrList :: [Ptr (TQLayout a)] -> IO [QLayout a]
qLayoutListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QLayout a r where
  qcl_QLayout :: [QLayout ()] -> a -> r

instance QqCastList_QLayout (QLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ x:l

instance QqCastList_QLayout a r => QqCastList_QLayout (QLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout (x:l) sx

instance QqCastList_QLayout (QBoxLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayout a r => QqCastList_QLayout (QBoxLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout ((objectCast x):l) sx

instance QqCastList_QLayout (QVBoxLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayout a r => QqCastList_QLayout (QVBoxLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout ((objectCast x):l) sx

instance QqCastList_QLayout (QHBoxLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayout a r => QqCastList_QLayout (QHBoxLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout ((objectCast x):l) sx

instance QqCastList_QLayout (QGridLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayout a r => QqCastList_QLayout (QGridLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout ((objectCast x):l) sx

instance QqCastList_QLayout (QStackedLayout ()) [QLayout ()] where
  qcl_QLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QLayout a r => QqCastList_QLayout (QStackedLayout ()) (a -> r) where
  qcl_QLayout l x sx = qcl_QLayout ((objectCast x):l) sx

qCastList_QLayout x = qcl_QLayout [] x

type QAbstractSpinBox a = QWidget (CQAbstractSpinBox a)
type TQAbstractSpinBox a = TQWidget (CQAbstractSpinBox a)
data CQAbstractSpinBox a = CQAbstractSpinBox

type QAbstractSpinBoxSc a = QAbstractSpinBox (CQAbstractSpinBoxSc a)
type TQAbstractSpinBoxSc a = TQAbstractSpinBox (CQAbstractSpinBoxSc a)
data CQAbstractSpinBoxSc a = CQAbstractSpinBoxSc

qCast_QAbstractSpinBox :: Object a -> IO (QAbstractSpinBox ())
qCast_QAbstractSpinBox _qobj
  = return (objectCast _qobj)

withQAbstractSpinBoxResult :: IO (Ptr (TQAbstractSpinBox a)) -> IO (QAbstractSpinBox a)
withQAbstractSpinBoxResult f
  = withObjectResult qtc_QAbstractSpinBox_getFinalizer f

qAbstractSpinBoxFromPtr :: Ptr (TQAbstractSpinBox a) -> IO (QAbstractSpinBox a)
qAbstractSpinBoxFromPtr p
  = objectFromPtr qtc_QAbstractSpinBox_getFinalizer p

withQListQAbstractSpinBoxResult :: (Ptr (Ptr (TQAbstractSpinBox a)) -> IO CInt) -> IO [QAbstractSpinBox a]
withQListQAbstractSpinBoxResult f
  = withQListObjectResult qtc_QAbstractSpinBox_getFinalizer f

qAbstractSpinBoxListFromPtrList :: [Ptr (TQAbstractSpinBox a)] -> IO [QAbstractSpinBox a]
qAbstractSpinBoxListFromPtrList p
  = objectListFromPtrList qtc_QAbstractSpinBox_getFinalizer p

foreign import ccall qtc_QAbstractSpinBox_getFinalizer :: FunPtr (Ptr (TQAbstractSpinBox a) -> IO ())

class QqCastList_QAbstractSpinBox a r where
  qcl_QAbstractSpinBox :: [QAbstractSpinBox ()] -> a -> r

instance QqCastList_QAbstractSpinBox (QAbstractSpinBox ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ x:l

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QAbstractSpinBox ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox (x:l) sx

instance QqCastList_QAbstractSpinBox (QDateTimeEdit ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QDateTimeEdit ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox ((objectCast x):l) sx

instance QqCastList_QAbstractSpinBox (QDoubleSpinBox ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QDoubleSpinBox ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox ((objectCast x):l) sx

instance QqCastList_QAbstractSpinBox (QSpinBox ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QSpinBox ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox ((objectCast x):l) sx

instance QqCastList_QAbstractSpinBox (QTimeEdit ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QTimeEdit ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox ((objectCast x):l) sx

instance QqCastList_QAbstractSpinBox (QDateEdit ()) [QAbstractSpinBox ()] where
  qcl_QAbstractSpinBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSpinBox a r => QqCastList_QAbstractSpinBox (QDateEdit ()) (a -> r) where
  qcl_QAbstractSpinBox l x sx = qcl_QAbstractSpinBox ((objectCast x):l) sx

qCastList_QAbstractSpinBox x = qcl_QAbstractSpinBox [] x

type QInputEvent a = QEvent (CQInputEvent a)
type TQInputEvent a = TQEvent (CQInputEvent a)
data CQInputEvent a = CQInputEvent

type QInputEventSc a = QInputEvent (CQInputEventSc a)
type TQInputEventSc a = TQInputEvent (CQInputEventSc a)
data CQInputEventSc a = CQInputEventSc

qCast_QInputEvent :: Object a -> IO (QInputEvent ())
qCast_QInputEvent _qobj
  = return (objectCast _qobj)

withQInputEventResult :: IO (Ptr (TQInputEvent a)) -> IO (QInputEvent a)
withQInputEventResult f
  = withObjectRefResult f

class QqCastList_QInputEvent a r where
  qcl_QInputEvent :: [QInputEvent ()] -> a -> r

instance QqCastList_QInputEvent (QInputEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ x:l

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QInputEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent (x:l) sx

instance QqCastList_QInputEvent (QMouseEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QMouseEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent ((objectCast x):l) sx

instance QqCastList_QInputEvent (QKeyEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QKeyEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent ((objectCast x):l) sx

instance QqCastList_QInputEvent (QWheelEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QWheelEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent ((objectCast x):l) sx

instance QqCastList_QInputEvent (QTabletEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QTabletEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent ((objectCast x):l) sx

instance QqCastList_QInputEvent (QContextMenuEvent ()) [QInputEvent ()] where
  qcl_QInputEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QInputEvent a r => QqCastList_QInputEvent (QContextMenuEvent ()) (a -> r) where
  qcl_QInputEvent l x sx = qcl_QInputEvent ((objectCast x):l) sx

qCastList_QInputEvent x = qcl_QInputEvent [] x

type QTextObject a = QObject (CQTextObject a)
type TQTextObject a = TQObject (CQTextObject a)
data CQTextObject a = CQTextObject

type QTextObjectSc a = QTextObject (CQTextObjectSc a)
type TQTextObjectSc a = TQTextObject (CQTextObjectSc a)
data CQTextObjectSc a = CQTextObjectSc

qCast_QTextObject :: Object a -> IO (QTextObject ())
qCast_QTextObject _qobj
  = return (objectCast _qobj)

withQTextObjectResult :: IO (Ptr (TQTextObject a)) -> IO (QTextObject a)
withQTextObjectResult f
  = withObjectRefResult f

qTextObjectFromPtr :: Ptr (TQTextObject a) -> IO (QTextObject a)
qTextObjectFromPtr p
  = objectFromPtr_nf p

withQListQTextObjectResult :: (Ptr (Ptr (TQTextObject a)) -> IO CInt) -> IO [QTextObject a]
withQListQTextObjectResult f
  = withQListObjectRefResult f

qTextObjectListFromPtrList :: [Ptr (TQTextObject a)] -> IO [QTextObject a]
qTextObjectListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QTextObject a r where
  qcl_QTextObject :: [QTextObject ()] -> a -> r

instance QqCastList_QTextObject (QTextObject ()) [QTextObject ()] where
  qcl_QTextObject l x = reverse $ x:l

instance QqCastList_QTextObject a r => QqCastList_QTextObject (QTextObject ()) (a -> r) where
  qcl_QTextObject l x sx = qcl_QTextObject (x:l) sx

instance QqCastList_QTextObject (QTextBlockGroup ()) [QTextObject ()] where
  qcl_QTextObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextObject a r => QqCastList_QTextObject (QTextBlockGroup ()) (a -> r) where
  qcl_QTextObject l x sx = qcl_QTextObject ((objectCast x):l) sx

instance QqCastList_QTextObject (QTextFrame ()) [QTextObject ()] where
  qcl_QTextObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextObject a r => QqCastList_QTextObject (QTextFrame ()) (a -> r) where
  qcl_QTextObject l x sx = qcl_QTextObject ((objectCast x):l) sx

instance QqCastList_QTextObject (QTextList ()) [QTextObject ()] where
  qcl_QTextObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextObject a r => QqCastList_QTextObject (QTextList ()) (a -> r) where
  qcl_QTextObject l x sx = qcl_QTextObject ((objectCast x):l) sx

instance QqCastList_QTextObject (QTextTable ()) [QTextObject ()] where
  qcl_QTextObject l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextObject a r => QqCastList_QTextObject (QTextTable ()) (a -> r) where
  qcl_QTextObject l x sx = qcl_QTextObject ((objectCast x):l) sx

qCastList_QTextObject x = qcl_QTextObject [] x

type QAbstractButton a = QWidget (CQAbstractButton a)
type TQAbstractButton a = TQWidget (CQAbstractButton a)
data CQAbstractButton a = CQAbstractButton

type QAbstractButtonSc a = QAbstractButton (CQAbstractButtonSc a)
type TQAbstractButtonSc a = TQAbstractButton (CQAbstractButtonSc a)
data CQAbstractButtonSc a = CQAbstractButtonSc

qCast_QAbstractButton :: Object a -> IO (QAbstractButton ())
qCast_QAbstractButton _qobj
  = return (objectCast _qobj)

withQAbstractButtonResult :: IO (Ptr (TQAbstractButton a)) -> IO (QAbstractButton a)
withQAbstractButtonResult f
  = withObjectResult qtc_QAbstractButton_getFinalizer f

qAbstractButtonFromPtr :: Ptr (TQAbstractButton a) -> IO (QAbstractButton a)
qAbstractButtonFromPtr p
  = objectFromPtr qtc_QAbstractButton_getFinalizer p

withQListQAbstractButtonResult :: (Ptr (Ptr (TQAbstractButton a)) -> IO CInt) -> IO [QAbstractButton a]
withQListQAbstractButtonResult f
  = withQListObjectResult qtc_QAbstractButton_getFinalizer f

qAbstractButtonListFromPtrList :: [Ptr (TQAbstractButton a)] -> IO [QAbstractButton a]
qAbstractButtonListFromPtrList p
  = objectListFromPtrList qtc_QAbstractButton_getFinalizer p

foreign import ccall qtc_QAbstractButton_getFinalizer :: FunPtr (Ptr (TQAbstractButton a) -> IO ())

class QqCastList_QAbstractButton a r where
  qcl_QAbstractButton :: [QAbstractButton ()] -> a -> r

instance QqCastList_QAbstractButton (QAbstractButton ()) [QAbstractButton ()] where
  qcl_QAbstractButton l x = reverse $ x:l

instance QqCastList_QAbstractButton a r => QqCastList_QAbstractButton (QAbstractButton ()) (a -> r) where
  qcl_QAbstractButton l x sx = qcl_QAbstractButton (x:l) sx

instance QqCastList_QAbstractButton (QPushButton ()) [QAbstractButton ()] where
  qcl_QAbstractButton l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractButton a r => QqCastList_QAbstractButton (QPushButton ()) (a -> r) where
  qcl_QAbstractButton l x sx = qcl_QAbstractButton ((objectCast x):l) sx

instance QqCastList_QAbstractButton (QRadioButton ()) [QAbstractButton ()] where
  qcl_QAbstractButton l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractButton a r => QqCastList_QAbstractButton (QRadioButton ()) (a -> r) where
  qcl_QAbstractButton l x sx = qcl_QAbstractButton ((objectCast x):l) sx

instance QqCastList_QAbstractButton (QCheckBox ()) [QAbstractButton ()] where
  qcl_QAbstractButton l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractButton a r => QqCastList_QAbstractButton (QCheckBox ()) (a -> r) where
  qcl_QAbstractButton l x sx = qcl_QAbstractButton ((objectCast x):l) sx

instance QqCastList_QAbstractButton (QToolButton ()) [QAbstractButton ()] where
  qcl_QAbstractButton l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractButton a r => QqCastList_QAbstractButton (QToolButton ()) (a -> r) where
  qcl_QAbstractButton l x sx = qcl_QAbstractButton ((objectCast x):l) sx

qCastList_QAbstractButton x = qcl_QAbstractButton [] x

type QGradient a = Object (CQGradient a)
type TQGradient a = CQGradient a
data CQGradient a = CQGradient

type QGradientSc a = QGradient (CQGradientSc a)
type TQGradientSc a = TQGradient (CQGradientSc a)
data CQGradientSc a = CQGradientSc

qCast_QGradient :: Object a -> IO (QGradient ())
qCast_QGradient _qobj
  = return (objectCast _qobj)

withQGradientResult :: IO (Ptr (TQGradient a)) -> IO (QGradient a)
withQGradientResult f
  = withObjectResult qtc_QGradient_getFinalizer f

foreign import ccall qtc_QGradient_getFinalizer :: FunPtr (Ptr (TQGradient a) -> IO ())

qGradientAddFinalizer :: QGradient a -> IO ()
qGradientAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGradient_getFinalizer fp

class QqCastList_QGradient a r where
  qcl_QGradient :: [QGradient ()] -> a -> r

instance QqCastList_QGradient (QGradient ()) [QGradient ()] where
  qcl_QGradient l x = reverse $ x:l

instance QqCastList_QGradient a r => QqCastList_QGradient (QGradient ()) (a -> r) where
  qcl_QGradient l x sx = qcl_QGradient (x:l) sx

instance QqCastList_QGradient (QLinearGradient ()) [QGradient ()] where
  qcl_QGradient l x = reverse $ ((objectCast x):l)

instance QqCastList_QGradient a r => QqCastList_QGradient (QLinearGradient ()) (a -> r) where
  qcl_QGradient l x sx = qcl_QGradient ((objectCast x):l) sx

instance QqCastList_QGradient (QConicalGradient ()) [QGradient ()] where
  qcl_QGradient l x = reverse $ ((objectCast x):l)

instance QqCastList_QGradient a r => QqCastList_QGradient (QConicalGradient ()) (a -> r) where
  qcl_QGradient l x sx = qcl_QGradient ((objectCast x):l) sx

instance QqCastList_QGradient (QRadialGradient ()) [QGradient ()] where
  qcl_QGradient l x = reverse $ ((objectCast x):l)

instance QqCastList_QGradient a r => QqCastList_QGradient (QRadialGradient ()) (a -> r) where
  qcl_QGradient l x sx = qcl_QGradient ((objectCast x):l) sx

qCastList_QGradient x = qcl_QGradient [] x

type QValidator a = QObject (CQValidator a)
type TQValidator a = TQObject (CQValidator a)
data CQValidator a = CQValidator

type QValidatorSc a = QValidator (CQValidatorSc a)
type TQValidatorSc a = TQValidator (CQValidatorSc a)
data CQValidatorSc a = CQValidatorSc

qCast_QValidator :: Object a -> IO (QValidator ())
qCast_QValidator _qobj
  = return (objectCast _qobj)

withQValidatorResult :: IO (Ptr (TQValidator a)) -> IO (QValidator a)
withQValidatorResult f
  = withObjectRefResult f

qValidatorFromPtr :: Ptr (TQValidator a) -> IO (QValidator a)
qValidatorFromPtr p
  = objectFromPtr_nf p

withQListQValidatorResult :: (Ptr (Ptr (TQValidator a)) -> IO CInt) -> IO [QValidator a]
withQListQValidatorResult f
  = withQListObjectRefResult f

qValidatorListFromPtrList :: [Ptr (TQValidator a)] -> IO [QValidator a]
qValidatorListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QValidator a r where
  qcl_QValidator :: [QValidator ()] -> a -> r

instance QqCastList_QValidator (QValidator ()) [QValidator ()] where
  qcl_QValidator l x = reverse $ x:l

instance QqCastList_QValidator a r => QqCastList_QValidator (QValidator ()) (a -> r) where
  qcl_QValidator l x sx = qcl_QValidator (x:l) sx

instance QqCastList_QValidator (QRegExpValidator ()) [QValidator ()] where
  qcl_QValidator l x = reverse $ ((objectCast x):l)

instance QqCastList_QValidator a r => QqCastList_QValidator (QRegExpValidator ()) (a -> r) where
  qcl_QValidator l x sx = qcl_QValidator ((objectCast x):l) sx

instance QqCastList_QValidator (QIntValidator ()) [QValidator ()] where
  qcl_QValidator l x = reverse $ ((objectCast x):l)

instance QqCastList_QValidator a r => QqCastList_QValidator (QIntValidator ()) (a -> r) where
  qcl_QValidator l x sx = qcl_QValidator ((objectCast x):l) sx

instance QqCastList_QValidator (QDoubleValidator ()) [QValidator ()] where
  qcl_QValidator l x = reverse $ ((objectCast x):l)

instance QqCastList_QValidator a r => QqCastList_QValidator (QDoubleValidator ()) (a -> r) where
  qcl_QValidator l x sx = qcl_QValidator ((objectCast x):l) sx

qCastList_QValidator x = qcl_QValidator [] x

type QAbstractSlider a = QWidget (CQAbstractSlider a)
type TQAbstractSlider a = TQWidget (CQAbstractSlider a)
data CQAbstractSlider a = CQAbstractSlider

type QAbstractSliderSc a = QAbstractSlider (CQAbstractSliderSc a)
type TQAbstractSliderSc a = TQAbstractSlider (CQAbstractSliderSc a)
data CQAbstractSliderSc a = CQAbstractSliderSc

qCast_QAbstractSlider :: Object a -> IO (QAbstractSlider ())
qCast_QAbstractSlider _qobj
  = return (objectCast _qobj)

withQAbstractSliderResult :: IO (Ptr (TQAbstractSlider a)) -> IO (QAbstractSlider a)
withQAbstractSliderResult f
  = withObjectResult qtc_QAbstractSlider_getFinalizer f

qAbstractSliderFromPtr :: Ptr (TQAbstractSlider a) -> IO (QAbstractSlider a)
qAbstractSliderFromPtr p
  = objectFromPtr qtc_QAbstractSlider_getFinalizer p

withQListQAbstractSliderResult :: (Ptr (Ptr (TQAbstractSlider a)) -> IO CInt) -> IO [QAbstractSlider a]
withQListQAbstractSliderResult f
  = withQListObjectResult qtc_QAbstractSlider_getFinalizer f

qAbstractSliderListFromPtrList :: [Ptr (TQAbstractSlider a)] -> IO [QAbstractSlider a]
qAbstractSliderListFromPtrList p
  = objectListFromPtrList qtc_QAbstractSlider_getFinalizer p

foreign import ccall qtc_QAbstractSlider_getFinalizer :: FunPtr (Ptr (TQAbstractSlider a) -> IO ())

class QqCastList_QAbstractSlider a r where
  qcl_QAbstractSlider :: [QAbstractSlider ()] -> a -> r

instance QqCastList_QAbstractSlider (QAbstractSlider ()) [QAbstractSlider ()] where
  qcl_QAbstractSlider l x = reverse $ x:l

instance QqCastList_QAbstractSlider a r => QqCastList_QAbstractSlider (QAbstractSlider ()) (a -> r) where
  qcl_QAbstractSlider l x sx = qcl_QAbstractSlider (x:l) sx

instance QqCastList_QAbstractSlider (QSlider ()) [QAbstractSlider ()] where
  qcl_QAbstractSlider l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSlider a r => QqCastList_QAbstractSlider (QSlider ()) (a -> r) where
  qcl_QAbstractSlider l x sx = qcl_QAbstractSlider ((objectCast x):l) sx

instance QqCastList_QAbstractSlider (QDial ()) [QAbstractSlider ()] where
  qcl_QAbstractSlider l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSlider a r => QqCastList_QAbstractSlider (QDial ()) (a -> r) where
  qcl_QAbstractSlider l x sx = qcl_QAbstractSlider ((objectCast x):l) sx

instance QqCastList_QAbstractSlider (QScrollBar ()) [QAbstractSlider ()] where
  qcl_QAbstractSlider l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractSlider a r => QqCastList_QAbstractSlider (QScrollBar ()) (a -> r) where
  qcl_QAbstractSlider l x sx = qcl_QAbstractSlider ((objectCast x):l) sx

qCastList_QAbstractSlider x = qcl_QAbstractSlider [] x

type QMimeSource a = Object (CQMimeSource a)
type TQMimeSource a = CQMimeSource a
data CQMimeSource a = CQMimeSource

type QMimeSourceSc a = QMimeSource (CQMimeSourceSc a)
type TQMimeSourceSc a = TQMimeSource (CQMimeSourceSc a)
data CQMimeSourceSc a = CQMimeSourceSc

qCast_QMimeSource :: Object a -> IO (QMimeSource ())
qCast_QMimeSource _qobj
  = return (objectCast _qobj)

withQMimeSourceResult :: IO (Ptr (TQMimeSource a)) -> IO (QMimeSource a)
withQMimeSourceResult f
  = withObjectRefResult f

class QqCastList_QMimeSource a r where
  qcl_QMimeSource :: [QMimeSource ()] -> a -> r

instance QqCastList_QMimeSource (QMimeSource ()) [QMimeSource ()] where
  qcl_QMimeSource l x = reverse $ x:l

instance QqCastList_QMimeSource a r => QqCastList_QMimeSource (QMimeSource ()) (a -> r) where
  qcl_QMimeSource l x sx = qcl_QMimeSource (x:l) sx

qCastList_QMimeSource x = qcl_QMimeSource [] x

type QListView a = QAbstractItemView (CQListView a)
type TQListView a = TQAbstractItemView (CQListView a)
data CQListView a = CQListView

type QListViewSc a = QListView (CQListViewSc a)
type TQListViewSc a = TQListView (CQListViewSc a)
data CQListViewSc a = CQListViewSc

qCast_QListView :: Object a -> IO (QListView ())
qCast_QListView _qobj
  = return (objectCast _qobj)

withQListViewResult :: IO (Ptr (TQListView a)) -> IO (QListView a)
withQListViewResult f
  = withObjectResult qtc_QListView_getFinalizer f

qListViewFromPtr :: Ptr (TQListView a) -> IO (QListView a)
qListViewFromPtr p
  = objectFromPtr qtc_QListView_getFinalizer p

withQListQListViewResult :: (Ptr (Ptr (TQListView a)) -> IO CInt) -> IO [QListView a]
withQListQListViewResult f
  = withQListObjectResult qtc_QListView_getFinalizer f

qListViewListFromPtrList :: [Ptr (TQListView a)] -> IO [QListView a]
qListViewListFromPtrList p
  = objectListFromPtrList qtc_QListView_getFinalizer p

foreign import ccall qtc_QListView_getFinalizer :: FunPtr (Ptr (TQListView a) -> IO ())

class QqCastList_QListView a r where
  qcl_QListView :: [QListView ()] -> a -> r

instance QqCastList_QListView (QListView ()) [QListView ()] where
  qcl_QListView l x = reverse $ x:l

instance QqCastList_QListView a r => QqCastList_QListView (QListView ()) (a -> r) where
  qcl_QListView l x sx = qcl_QListView (x:l) sx

instance QqCastList_QListView (QListWidget ()) [QListView ()] where
  qcl_QListView l x = reverse $ ((objectCast x):l)

instance QqCastList_QListView a r => QqCastList_QListView (QListWidget ()) (a -> r) where
  qcl_QListView l x sx = qcl_QListView ((objectCast x):l) sx

instance QqCastList_QListView (QUndoView ()) [QListView ()] where
  qcl_QListView l x = reverse $ ((objectCast x):l)

instance QqCastList_QListView a r => QqCastList_QListView (QUndoView ()) (a -> r) where
  qcl_QListView l x sx = qcl_QListView ((objectCast x):l) sx

qCastList_QListView x = qcl_QListView [] x

type QDateTimeEdit a = QAbstractSpinBox (CQDateTimeEdit a)
type TQDateTimeEdit a = TQAbstractSpinBox (CQDateTimeEdit a)
data CQDateTimeEdit a = CQDateTimeEdit

type QDateTimeEditSc a = QDateTimeEdit (CQDateTimeEditSc a)
type TQDateTimeEditSc a = TQDateTimeEdit (CQDateTimeEditSc a)
data CQDateTimeEditSc a = CQDateTimeEditSc

qCast_QDateTimeEdit :: Object a -> IO (QDateTimeEdit ())
qCast_QDateTimeEdit _qobj
  = return (objectCast _qobj)

withQDateTimeEditResult :: IO (Ptr (TQDateTimeEdit a)) -> IO (QDateTimeEdit a)
withQDateTimeEditResult f
  = withObjectResult qtc_QDateTimeEdit_getFinalizer f

qDateTimeEditFromPtr :: Ptr (TQDateTimeEdit a) -> IO (QDateTimeEdit a)
qDateTimeEditFromPtr p
  = objectFromPtr qtc_QDateTimeEdit_getFinalizer p

withQListQDateTimeEditResult :: (Ptr (Ptr (TQDateTimeEdit a)) -> IO CInt) -> IO [QDateTimeEdit a]
withQListQDateTimeEditResult f
  = withQListObjectResult qtc_QDateTimeEdit_getFinalizer f

qDateTimeEditListFromPtrList :: [Ptr (TQDateTimeEdit a)] -> IO [QDateTimeEdit a]
qDateTimeEditListFromPtrList p
  = objectListFromPtrList qtc_QDateTimeEdit_getFinalizer p

foreign import ccall qtc_QDateTimeEdit_getFinalizer :: FunPtr (Ptr (TQDateTimeEdit a) -> IO ())

class QqCastList_QDateTimeEdit a r where
  qcl_QDateTimeEdit :: [QDateTimeEdit ()] -> a -> r

instance QqCastList_QDateTimeEdit (QDateTimeEdit ()) [QDateTimeEdit ()] where
  qcl_QDateTimeEdit l x = reverse $ x:l

instance QqCastList_QDateTimeEdit a r => QqCastList_QDateTimeEdit (QDateTimeEdit ()) (a -> r) where
  qcl_QDateTimeEdit l x sx = qcl_QDateTimeEdit (x:l) sx

instance QqCastList_QDateTimeEdit (QTimeEdit ()) [QDateTimeEdit ()] where
  qcl_QDateTimeEdit l x = reverse $ ((objectCast x):l)

instance QqCastList_QDateTimeEdit a r => QqCastList_QDateTimeEdit (QTimeEdit ()) (a -> r) where
  qcl_QDateTimeEdit l x sx = qcl_QDateTimeEdit ((objectCast x):l) sx

instance QqCastList_QDateTimeEdit (QDateEdit ()) [QDateTimeEdit ()] where
  qcl_QDateTimeEdit l x = reverse $ ((objectCast x):l)

instance QqCastList_QDateTimeEdit a r => QqCastList_QDateTimeEdit (QDateEdit ()) (a -> r) where
  qcl_QDateTimeEdit l x sx = qcl_QDateTimeEdit ((objectCast x):l) sx

qCastList_QDateTimeEdit x = qcl_QDateTimeEdit [] x

type QDropEvent a = QEvent (CQDropEvent a)
type TQDropEvent a = TQEvent (CQDropEvent a)
data CQDropEvent a = CQDropEvent

type QDropEventSc a = QDropEvent (CQDropEventSc a)
type TQDropEventSc a = TQDropEvent (CQDropEventSc a)
data CQDropEventSc a = CQDropEventSc

qCast_QDropEvent :: Object a -> IO (QDropEvent ())
qCast_QDropEvent _qobj
  = return (objectCast _qobj)

withQDropEventResult :: IO (Ptr (TQDropEvent a)) -> IO (QDropEvent a)
withQDropEventResult f
  = withObjectResult qtc_QDropEvent_getFinalizer f

foreign import ccall qtc_QDropEvent_getFinalizer :: FunPtr (Ptr (TQDropEvent a) -> IO ())

qDropEventAddFinalizer :: QDropEvent a -> IO ()
qDropEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDropEvent_getFinalizer fp

class QqCastList_QDropEvent a r where
  qcl_QDropEvent :: [QDropEvent ()] -> a -> r

instance QqCastList_QDropEvent (QDropEvent ()) [QDropEvent ()] where
  qcl_QDropEvent l x = reverse $ x:l

instance QqCastList_QDropEvent a r => QqCastList_QDropEvent (QDropEvent ()) (a -> r) where
  qcl_QDropEvent l x sx = qcl_QDropEvent (x:l) sx

instance QqCastList_QDropEvent (QDragMoveEvent ()) [QDropEvent ()] where
  qcl_QDropEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QDropEvent a r => QqCastList_QDropEvent (QDragMoveEvent ()) (a -> r) where
  qcl_QDropEvent l x sx = qcl_QDropEvent ((objectCast x):l) sx

instance QqCastList_QDropEvent (QDragEnterEvent ()) [QDropEvent ()] where
  qcl_QDropEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QDropEvent a r => QqCastList_QDropEvent (QDragEnterEvent ()) (a -> r) where
  qcl_QDropEvent l x sx = qcl_QDropEvent ((objectCast x):l) sx

qCastList_QDropEvent x = qcl_QDropEvent [] x

type QBoxLayout a = QLayout (CQBoxLayout a)
type TQBoxLayout a = TQLayout (CQBoxLayout a)
data CQBoxLayout a = CQBoxLayout

type QBoxLayoutSc a = QBoxLayout (CQBoxLayoutSc a)
type TQBoxLayoutSc a = TQBoxLayout (CQBoxLayoutSc a)
data CQBoxLayoutSc a = CQBoxLayoutSc

qCast_QBoxLayout :: Object a -> IO (QBoxLayout ())
qCast_QBoxLayout _qobj
  = return (objectCast _qobj)

withQBoxLayoutResult :: IO (Ptr (TQBoxLayout a)) -> IO (QBoxLayout a)
withQBoxLayoutResult f
  = withObjectResult qtc_QBoxLayout_getFinalizer f

qBoxLayoutFromPtr :: Ptr (TQBoxLayout a) -> IO (QBoxLayout a)
qBoxLayoutFromPtr p
  = objectFromPtr qtc_QBoxLayout_getFinalizer p

withQListQBoxLayoutResult :: (Ptr (Ptr (TQBoxLayout a)) -> IO CInt) -> IO [QBoxLayout a]
withQListQBoxLayoutResult f
  = withQListObjectResult qtc_QBoxLayout_getFinalizer f

qBoxLayoutListFromPtrList :: [Ptr (TQBoxLayout a)] -> IO [QBoxLayout a]
qBoxLayoutListFromPtrList p
  = objectListFromPtrList qtc_QBoxLayout_getFinalizer p

foreign import ccall qtc_QBoxLayout_getFinalizer :: FunPtr (Ptr (TQBoxLayout a) -> IO ())

class QqCastList_QBoxLayout a r where
  qcl_QBoxLayout :: [QBoxLayout ()] -> a -> r

instance QqCastList_QBoxLayout (QBoxLayout ()) [QBoxLayout ()] where
  qcl_QBoxLayout l x = reverse $ x:l

instance QqCastList_QBoxLayout a r => QqCastList_QBoxLayout (QBoxLayout ()) (a -> r) where
  qcl_QBoxLayout l x sx = qcl_QBoxLayout (x:l) sx

instance QqCastList_QBoxLayout (QVBoxLayout ()) [QBoxLayout ()] where
  qcl_QBoxLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QBoxLayout a r => QqCastList_QBoxLayout (QVBoxLayout ()) (a -> r) where
  qcl_QBoxLayout l x sx = qcl_QBoxLayout ((objectCast x):l) sx

instance QqCastList_QBoxLayout (QHBoxLayout ()) [QBoxLayout ()] where
  qcl_QBoxLayout l x = reverse $ ((objectCast x):l)

instance QqCastList_QBoxLayout a r => QqCastList_QBoxLayout (QHBoxLayout ()) (a -> r) where
  qcl_QBoxLayout l x sx = qcl_QBoxLayout ((objectCast x):l) sx

qCastList_QBoxLayout x = qcl_QBoxLayout [] x

type QStyle a = QObject (CQStyle a)
type TQStyle a = TQObject (CQStyle a)
data CQStyle a = CQStyle

type QStyleSc a = QStyle (CQStyleSc a)
type TQStyleSc a = TQStyle (CQStyleSc a)
data CQStyleSc a = CQStyleSc

qCast_QStyle :: Object a -> IO (QStyle ())
qCast_QStyle _qobj
  = return (objectCast _qobj)

withQStyleResult :: IO (Ptr (TQStyle a)) -> IO (QStyle a)
withQStyleResult f
  = withObjectResult qtc_QStyle_getFinalizer f

qStyleFromPtr :: Ptr (TQStyle a) -> IO (QStyle a)
qStyleFromPtr p
  = objectFromPtr qtc_QStyle_getFinalizer p

withQListQStyleResult :: (Ptr (Ptr (TQStyle a)) -> IO CInt) -> IO [QStyle a]
withQListQStyleResult f
  = withQListObjectResult qtc_QStyle_getFinalizer f

qStyleListFromPtrList :: [Ptr (TQStyle a)] -> IO [QStyle a]
qStyleListFromPtrList p
  = objectListFromPtrList qtc_QStyle_getFinalizer p

foreign import ccall qtc_QStyle_getFinalizer :: FunPtr (Ptr (TQStyle a) -> IO ())

class QqCastList_QStyle a r where
  qcl_QStyle :: [QStyle ()] -> a -> r

instance QqCastList_QStyle (QStyle ()) [QStyle ()] where
  qcl_QStyle l x = reverse $ x:l

instance QqCastList_QStyle a r => QqCastList_QStyle (QStyle ()) (a -> r) where
  qcl_QStyle l x sx = qcl_QStyle (x:l) sx

instance QqCastList_QStyle (QCommonStyle ()) [QStyle ()] where
  qcl_QStyle l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyle a r => QqCastList_QStyle (QCommonStyle ()) (a -> r) where
  qcl_QStyle l x sx = qcl_QStyle ((objectCast x):l) sx

instance QqCastList_QStyle (QWindowsStyle ()) [QStyle ()] where
  qcl_QStyle l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyle a r => QqCastList_QStyle (QWindowsStyle ()) (a -> r) where
  qcl_QStyle l x sx = qcl_QStyle ((objectCast x):l) sx

qCastList_QStyle x = qcl_QStyle [] x

type QStyleOptionViewItem a = QStyleOption (CQStyleOptionViewItem a)
type TQStyleOptionViewItem a = TQStyleOption (CQStyleOptionViewItem a)
data CQStyleOptionViewItem a = CQStyleOptionViewItem

type QStyleOptionViewItemSc a = QStyleOptionViewItem (CQStyleOptionViewItemSc a)
type TQStyleOptionViewItemSc a = TQStyleOptionViewItem (CQStyleOptionViewItemSc a)
data CQStyleOptionViewItemSc a = CQStyleOptionViewItemSc

qCast_QStyleOptionViewItem :: Object a -> IO (QStyleOptionViewItem ())
qCast_QStyleOptionViewItem _qobj
  = return (objectCast _qobj)

withQStyleOptionViewItemResult :: IO (Ptr (TQStyleOptionViewItem a)) -> IO (QStyleOptionViewItem a)
withQStyleOptionViewItemResult f
  = withObjectResult qtc_QStyleOptionViewItem_getFinalizer f

foreign import ccall qtc_QStyleOptionViewItem_getFinalizer :: FunPtr (Ptr (TQStyleOptionViewItem a) -> IO ())

qStyleOptionViewItemAddFinalizer :: QStyleOptionViewItem a -> IO ()
qStyleOptionViewItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionViewItem_getFinalizer fp

class QqCastList_QStyleOptionViewItem a r where
  qcl_QStyleOptionViewItem :: [QStyleOptionViewItem ()] -> a -> r

instance QqCastList_QStyleOptionViewItem (QStyleOptionViewItem ()) [QStyleOptionViewItem ()] where
  qcl_QStyleOptionViewItem l x = reverse $ x:l

instance QqCastList_QStyleOptionViewItem a r => QqCastList_QStyleOptionViewItem (QStyleOptionViewItem ()) (a -> r) where
  qcl_QStyleOptionViewItem l x sx = qcl_QStyleOptionViewItem (x:l) sx

instance QqCastList_QStyleOptionViewItem (QStyleOptionViewItemV2 ()) [QStyleOptionViewItem ()] where
  qcl_QStyleOptionViewItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionViewItem a r => QqCastList_QStyleOptionViewItem (QStyleOptionViewItemV2 ()) (a -> r) where
  qcl_QStyleOptionViewItem l x sx = qcl_QStyleOptionViewItem ((objectCast x):l) sx

instance QqCastList_QStyleOptionViewItem (QStyleOptionViewItemV3 ()) [QStyleOptionViewItem ()] where
  qcl_QStyleOptionViewItem l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionViewItem a r => QqCastList_QStyleOptionViewItem (QStyleOptionViewItemV3 ()) (a -> r) where
  qcl_QStyleOptionViewItem l x sx = qcl_QStyleOptionViewItem ((objectCast x):l) sx

qCastList_QStyleOptionViewItem x = qcl_QStyleOptionViewItem [] x

type QIconEngine a = Object (CQIconEngine a)
type TQIconEngine a = CQIconEngine a
data CQIconEngine a = CQIconEngine

type QIconEngineSc a = QIconEngine (CQIconEngineSc a)
type TQIconEngineSc a = TQIconEngine (CQIconEngineSc a)
data CQIconEngineSc a = CQIconEngineSc

qCast_QIconEngine :: Object a -> IO (QIconEngine ())
qCast_QIconEngine _qobj
  = return (objectCast _qobj)

withQIconEngineResult :: IO (Ptr (TQIconEngine a)) -> IO (QIconEngine a)
withQIconEngineResult f
  = withObjectResult qtc_QIconEngine_getFinalizer f

foreign import ccall qtc_QIconEngine_getFinalizer :: FunPtr (Ptr (TQIconEngine a) -> IO ())

qIconEngineAddFinalizer :: QIconEngine a -> IO ()
qIconEngineAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QIconEngine_getFinalizer fp

foreign import ccall qtc_QIconEngine_getFinalizer1 :: FunPtr (Ptr (TQIconEngine a) -> IO ())

qIconEngineAddFinalizer1 :: QIconEngine a -> IO ()
qIconEngineAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QIconEngine_getFinalizer1 fp

class QqCastList_QIconEngine a r where
  qcl_QIconEngine :: [QIconEngine ()] -> a -> r

instance QqCastList_QIconEngine (QIconEngine ()) [QIconEngine ()] where
  qcl_QIconEngine l x = reverse $ x:l

instance QqCastList_QIconEngine a r => QqCastList_QIconEngine (QIconEngine ()) (a -> r) where
  qcl_QIconEngine l x sx = qcl_QIconEngine (x:l) sx

instance QqCastList_QIconEngine (QIconEngineV2 ()) [QIconEngine ()] where
  qcl_QIconEngine l x = reverse $ ((objectCast x):l)

instance QqCastList_QIconEngine a r => QqCastList_QIconEngine (QIconEngineV2 ()) (a -> r) where
  qcl_QIconEngine l x sx = qcl_QIconEngine ((objectCast x):l) sx

qCastList_QIconEngine x = qcl_QIconEngine [] x

type QTreeView a = QAbstractItemView (CQTreeView a)
type TQTreeView a = TQAbstractItemView (CQTreeView a)
data CQTreeView a = CQTreeView

type QTreeViewSc a = QTreeView (CQTreeViewSc a)
type TQTreeViewSc a = TQTreeView (CQTreeViewSc a)
data CQTreeViewSc a = CQTreeViewSc

qCast_QTreeView :: Object a -> IO (QTreeView ())
qCast_QTreeView _qobj
  = return (objectCast _qobj)

withQTreeViewResult :: IO (Ptr (TQTreeView a)) -> IO (QTreeView a)
withQTreeViewResult f
  = withObjectResult qtc_QTreeView_getFinalizer f

qTreeViewFromPtr :: Ptr (TQTreeView a) -> IO (QTreeView a)
qTreeViewFromPtr p
  = objectFromPtr qtc_QTreeView_getFinalizer p

withQListQTreeViewResult :: (Ptr (Ptr (TQTreeView a)) -> IO CInt) -> IO [QTreeView a]
withQListQTreeViewResult f
  = withQListObjectResult qtc_QTreeView_getFinalizer f

qTreeViewListFromPtrList :: [Ptr (TQTreeView a)] -> IO [QTreeView a]
qTreeViewListFromPtrList p
  = objectListFromPtrList qtc_QTreeView_getFinalizer p

foreign import ccall qtc_QTreeView_getFinalizer :: FunPtr (Ptr (TQTreeView a) -> IO ())

class QqCastList_QTreeView a r where
  qcl_QTreeView :: [QTreeView ()] -> a -> r

instance QqCastList_QTreeView (QTreeView ()) [QTreeView ()] where
  qcl_QTreeView l x = reverse $ x:l

instance QqCastList_QTreeView a r => QqCastList_QTreeView (QTreeView ()) (a -> r) where
  qcl_QTreeView l x sx = qcl_QTreeView (x:l) sx

instance QqCastList_QTreeView (QTreeWidget ()) [QTreeView ()] where
  qcl_QTreeView l x = reverse $ ((objectCast x):l)

instance QqCastList_QTreeView a r => QqCastList_QTreeView (QTreeWidget ()) (a -> r) where
  qcl_QTreeView l x sx = qcl_QTreeView ((objectCast x):l) sx

qCastList_QTreeView x = qcl_QTreeView [] x

type QTableView a = QAbstractItemView (CQTableView a)
type TQTableView a = TQAbstractItemView (CQTableView a)
data CQTableView a = CQTableView

type QTableViewSc a = QTableView (CQTableViewSc a)
type TQTableViewSc a = TQTableView (CQTableViewSc a)
data CQTableViewSc a = CQTableViewSc

qCast_QTableView :: Object a -> IO (QTableView ())
qCast_QTableView _qobj
  = return (objectCast _qobj)

withQTableViewResult :: IO (Ptr (TQTableView a)) -> IO (QTableView a)
withQTableViewResult f
  = withObjectResult qtc_QTableView_getFinalizer f

qTableViewFromPtr :: Ptr (TQTableView a) -> IO (QTableView a)
qTableViewFromPtr p
  = objectFromPtr qtc_QTableView_getFinalizer p

withQListQTableViewResult :: (Ptr (Ptr (TQTableView a)) -> IO CInt) -> IO [QTableView a]
withQListQTableViewResult f
  = withQListObjectResult qtc_QTableView_getFinalizer f

qTableViewListFromPtrList :: [Ptr (TQTableView a)] -> IO [QTableView a]
qTableViewListFromPtrList p
  = objectListFromPtrList qtc_QTableView_getFinalizer p

foreign import ccall qtc_QTableView_getFinalizer :: FunPtr (Ptr (TQTableView a) -> IO ())

class QqCastList_QTableView a r where
  qcl_QTableView :: [QTableView ()] -> a -> r

instance QqCastList_QTableView (QTableView ()) [QTableView ()] where
  qcl_QTableView l x = reverse $ x:l

instance QqCastList_QTableView a r => QqCastList_QTableView (QTableView ()) (a -> r) where
  qcl_QTableView l x sx = qcl_QTableView (x:l) sx

instance QqCastList_QTableView (QTableWidget ()) [QTableView ()] where
  qcl_QTableView l x = reverse $ ((objectCast x):l)

instance QqCastList_QTableView a r => QqCastList_QTableView (QTableWidget ()) (a -> r) where
  qcl_QTableView l x sx = qcl_QTableView ((objectCast x):l) sx

qCastList_QTableView x = qcl_QTableView [] x

type QTextEdit a = QAbstractScrollArea (CQTextEdit a)
type TQTextEdit a = TQAbstractScrollArea (CQTextEdit a)
data CQTextEdit a = CQTextEdit

type QTextEditSc a = QTextEdit (CQTextEditSc a)
type TQTextEditSc a = TQTextEdit (CQTextEditSc a)
data CQTextEditSc a = CQTextEditSc

qCast_QTextEdit :: Object a -> IO (QTextEdit ())
qCast_QTextEdit _qobj
  = return (objectCast _qobj)

withQTextEditResult :: IO (Ptr (TQTextEdit a)) -> IO (QTextEdit a)
withQTextEditResult f
  = withObjectResult qtc_QTextEdit_getFinalizer f

qTextEditFromPtr :: Ptr (TQTextEdit a) -> IO (QTextEdit a)
qTextEditFromPtr p
  = objectFromPtr qtc_QTextEdit_getFinalizer p

withQListQTextEditResult :: (Ptr (Ptr (TQTextEdit a)) -> IO CInt) -> IO [QTextEdit a]
withQListQTextEditResult f
  = withQListObjectResult qtc_QTextEdit_getFinalizer f

qTextEditListFromPtrList :: [Ptr (TQTextEdit a)] -> IO [QTextEdit a]
qTextEditListFromPtrList p
  = objectListFromPtrList qtc_QTextEdit_getFinalizer p

foreign import ccall qtc_QTextEdit_getFinalizer :: FunPtr (Ptr (TQTextEdit a) -> IO ())

class QqCastList_QTextEdit a r where
  qcl_QTextEdit :: [QTextEdit ()] -> a -> r

instance QqCastList_QTextEdit (QTextEdit ()) [QTextEdit ()] where
  qcl_QTextEdit l x = reverse $ x:l

instance QqCastList_QTextEdit a r => QqCastList_QTextEdit (QTextEdit ()) (a -> r) where
  qcl_QTextEdit l x sx = qcl_QTextEdit (x:l) sx

instance QqCastList_QTextEdit (QTextBrowser ()) [QTextEdit ()] where
  qcl_QTextEdit l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextEdit a r => QqCastList_QTextEdit (QTextBrowser ()) (a -> r) where
  qcl_QTextEdit l x sx = qcl_QTextEdit ((objectCast x):l) sx

qCastList_QTextEdit x = qcl_QTextEdit [] x

type QAbstractPrintDialog a = QDialog (CQAbstractPrintDialog a)
type TQAbstractPrintDialog a = TQDialog (CQAbstractPrintDialog a)
data CQAbstractPrintDialog a = CQAbstractPrintDialog

type QAbstractPrintDialogSc a = QAbstractPrintDialog (CQAbstractPrintDialogSc a)
type TQAbstractPrintDialogSc a = TQAbstractPrintDialog (CQAbstractPrintDialogSc a)
data CQAbstractPrintDialogSc a = CQAbstractPrintDialogSc

qCast_QAbstractPrintDialog :: Object a -> IO (QAbstractPrintDialog ())
qCast_QAbstractPrintDialog _qobj
  = return (objectCast _qobj)

withQAbstractPrintDialogResult :: IO (Ptr (TQAbstractPrintDialog a)) -> IO (QAbstractPrintDialog a)
withQAbstractPrintDialogResult f
  = withObjectRefResult f

qAbstractPrintDialogFromPtr :: Ptr (TQAbstractPrintDialog a) -> IO (QAbstractPrintDialog a)
qAbstractPrintDialogFromPtr p
  = objectFromPtr_nf p

withQListQAbstractPrintDialogResult :: (Ptr (Ptr (TQAbstractPrintDialog a)) -> IO CInt) -> IO [QAbstractPrintDialog a]
withQListQAbstractPrintDialogResult f
  = withQListObjectRefResult f

qAbstractPrintDialogListFromPtrList :: [Ptr (TQAbstractPrintDialog a)] -> IO [QAbstractPrintDialog a]
qAbstractPrintDialogListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractPrintDialog a r where
  qcl_QAbstractPrintDialog :: [QAbstractPrintDialog ()] -> a -> r

instance QqCastList_QAbstractPrintDialog (QAbstractPrintDialog ()) [QAbstractPrintDialog ()] where
  qcl_QAbstractPrintDialog l x = reverse $ x:l

instance QqCastList_QAbstractPrintDialog a r => QqCastList_QAbstractPrintDialog (QAbstractPrintDialog ()) (a -> r) where
  qcl_QAbstractPrintDialog l x sx = qcl_QAbstractPrintDialog (x:l) sx

instance QqCastList_QAbstractPrintDialog (QPrintDialog ()) [QAbstractPrintDialog ()] where
  qcl_QAbstractPrintDialog l x = reverse $ ((objectCast x):l)

instance QqCastList_QAbstractPrintDialog a r => QqCastList_QAbstractPrintDialog (QPrintDialog ()) (a -> r) where
  qcl_QAbstractPrintDialog l x sx = qcl_QAbstractPrintDialog ((objectCast x):l) sx

qCastList_QAbstractPrintDialog x = qcl_QAbstractPrintDialog [] x

type QDragMoveEvent a = QDropEvent (CQDragMoveEvent a)
type TQDragMoveEvent a = TQDropEvent (CQDragMoveEvent a)
data CQDragMoveEvent a = CQDragMoveEvent

type QDragMoveEventSc a = QDragMoveEvent (CQDragMoveEventSc a)
type TQDragMoveEventSc a = TQDragMoveEvent (CQDragMoveEventSc a)
data CQDragMoveEventSc a = CQDragMoveEventSc

qCast_QDragMoveEvent :: Object a -> IO (QDragMoveEvent ())
qCast_QDragMoveEvent _qobj
  = return (objectCast _qobj)

withQDragMoveEventResult :: IO (Ptr (TQDragMoveEvent a)) -> IO (QDragMoveEvent a)
withQDragMoveEventResult f
  = withObjectResult qtc_QDragMoveEvent_getFinalizer f

foreign import ccall qtc_QDragMoveEvent_getFinalizer :: FunPtr (Ptr (TQDragMoveEvent a) -> IO ())

qDragMoveEventAddFinalizer :: QDragMoveEvent a -> IO ()
qDragMoveEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDragMoveEvent_getFinalizer fp

class QqCastList_QDragMoveEvent a r where
  qcl_QDragMoveEvent :: [QDragMoveEvent ()] -> a -> r

instance QqCastList_QDragMoveEvent (QDragMoveEvent ()) [QDragMoveEvent ()] where
  qcl_QDragMoveEvent l x = reverse $ x:l

instance QqCastList_QDragMoveEvent a r => QqCastList_QDragMoveEvent (QDragMoveEvent ()) (a -> r) where
  qcl_QDragMoveEvent l x sx = qcl_QDragMoveEvent (x:l) sx

instance QqCastList_QDragMoveEvent (QDragEnterEvent ()) [QDragMoveEvent ()] where
  qcl_QDragMoveEvent l x = reverse $ ((objectCast x):l)

instance QqCastList_QDragMoveEvent a r => QqCastList_QDragMoveEvent (QDragEnterEvent ()) (a -> r) where
  qcl_QDragMoveEvent l x sx = qcl_QDragMoveEvent ((objectCast x):l) sx

qCastList_QDragMoveEvent x = qcl_QDragMoveEvent [] x

type QPixmap a = QPaintDevice (CQPixmap a)
type TQPixmap a = TQPaintDevice (CQPixmap a)
data CQPixmap a = CQPixmap

type QPixmapSc a = QPixmap (CQPixmapSc a)
type TQPixmapSc a = TQPixmap (CQPixmapSc a)
data CQPixmapSc a = CQPixmapSc

qCast_QPixmap :: Object a -> IO (QPixmap ())
qCast_QPixmap _qobj
  = return (objectCast _qobj)

withQPixmapResult :: IO (Ptr (TQPixmap a)) -> IO (QPixmap a)
withQPixmapResult f
  = withObjectResult qtc_QPixmap_getFinalizer f

foreign import ccall qtc_QPixmap_getFinalizer :: FunPtr (Ptr (TQPixmap a) -> IO ())

qPixmapAddFinalizer :: QPixmap a -> IO ()
qPixmapAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPixmap_getFinalizer fp

foreign import ccall qtc_QPixmap_getFinalizer1 :: FunPtr (Ptr (TQPixmap a) -> IO ())

qPixmapAddFinalizer1 :: QPixmap a -> IO ()
qPixmapAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QPixmap_getFinalizer1 fp

class QqCastList_QPixmap a r where
  qcl_QPixmap :: [QPixmap ()] -> a -> r

instance QqCastList_QPixmap (QPixmap ()) [QPixmap ()] where
  qcl_QPixmap l x = reverse $ x:l

instance QqCastList_QPixmap a r => QqCastList_QPixmap (QPixmap ()) (a -> r) where
  qcl_QPixmap l x sx = qcl_QPixmap (x:l) sx

instance QqCastList_QPixmap (QBitmap ()) [QPixmap ()] where
  qcl_QPixmap l x = reverse $ ((objectCast x):l)

instance QqCastList_QPixmap a r => QqCastList_QPixmap (QBitmap ()) (a -> r) where
  qcl_QPixmap l x sx = qcl_QPixmap ((objectCast x):l) sx

qCastList_QPixmap x = qcl_QPixmap [] x

type QCommonStyle a = QStyle (CQCommonStyle a)
type TQCommonStyle a = TQStyle (CQCommonStyle a)
data CQCommonStyle a = CQCommonStyle

type QCommonStyleSc a = QCommonStyle (CQCommonStyleSc a)
type TQCommonStyleSc a = TQCommonStyle (CQCommonStyleSc a)
data CQCommonStyleSc a = CQCommonStyleSc

qCast_QCommonStyle :: Object a -> IO (QCommonStyle ())
qCast_QCommonStyle _qobj
  = return (objectCast _qobj)

withQCommonStyleResult :: IO (Ptr (TQCommonStyle a)) -> IO (QCommonStyle a)
withQCommonStyleResult f
  = withObjectResult qtc_QCommonStyle_getFinalizer f

qCommonStyleFromPtr :: Ptr (TQCommonStyle a) -> IO (QCommonStyle a)
qCommonStyleFromPtr p
  = objectFromPtr qtc_QCommonStyle_getFinalizer p

withQListQCommonStyleResult :: (Ptr (Ptr (TQCommonStyle a)) -> IO CInt) -> IO [QCommonStyle a]
withQListQCommonStyleResult f
  = withQListObjectResult qtc_QCommonStyle_getFinalizer f

qCommonStyleListFromPtrList :: [Ptr (TQCommonStyle a)] -> IO [QCommonStyle a]
qCommonStyleListFromPtrList p
  = objectListFromPtrList qtc_QCommonStyle_getFinalizer p

foreign import ccall qtc_QCommonStyle_getFinalizer :: FunPtr (Ptr (TQCommonStyle a) -> IO ())

class QqCastList_QCommonStyle a r where
  qcl_QCommonStyle :: [QCommonStyle ()] -> a -> r

instance QqCastList_QCommonStyle (QCommonStyle ()) [QCommonStyle ()] where
  qcl_QCommonStyle l x = reverse $ x:l

instance QqCastList_QCommonStyle a r => QqCastList_QCommonStyle (QCommonStyle ()) (a -> r) where
  qcl_QCommonStyle l x sx = qcl_QCommonStyle (x:l) sx

instance QqCastList_QCommonStyle (QWindowsStyle ()) [QCommonStyle ()] where
  qcl_QCommonStyle l x = reverse $ ((objectCast x):l)

instance QqCastList_QCommonStyle a r => QqCastList_QCommonStyle (QWindowsStyle ()) (a -> r) where
  qcl_QCommonStyle l x sx = qcl_QCommonStyle ((objectCast x):l) sx

qCastList_QCommonStyle x = qcl_QCommonStyle [] x

type QStyleOptionProgressBar a = QStyleOption (CQStyleOptionProgressBar a)
type TQStyleOptionProgressBar a = TQStyleOption (CQStyleOptionProgressBar a)
data CQStyleOptionProgressBar a = CQStyleOptionProgressBar

type QStyleOptionProgressBarSc a = QStyleOptionProgressBar (CQStyleOptionProgressBarSc a)
type TQStyleOptionProgressBarSc a = TQStyleOptionProgressBar (CQStyleOptionProgressBarSc a)
data CQStyleOptionProgressBarSc a = CQStyleOptionProgressBarSc

qCast_QStyleOptionProgressBar :: Object a -> IO (QStyleOptionProgressBar ())
qCast_QStyleOptionProgressBar _qobj
  = return (objectCast _qobj)

withQStyleOptionProgressBarResult :: IO (Ptr (TQStyleOptionProgressBar a)) -> IO (QStyleOptionProgressBar a)
withQStyleOptionProgressBarResult f
  = withObjectResult qtc_QStyleOptionProgressBar_getFinalizer f

foreign import ccall qtc_QStyleOptionProgressBar_getFinalizer :: FunPtr (Ptr (TQStyleOptionProgressBar a) -> IO ())

qStyleOptionProgressBarAddFinalizer :: QStyleOptionProgressBar a -> IO ()
qStyleOptionProgressBarAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionProgressBar_getFinalizer fp

class QqCastList_QStyleOptionProgressBar a r where
  qcl_QStyleOptionProgressBar :: [QStyleOptionProgressBar ()] -> a -> r

instance QqCastList_QStyleOptionProgressBar (QStyleOptionProgressBar ()) [QStyleOptionProgressBar ()] where
  qcl_QStyleOptionProgressBar l x = reverse $ x:l

instance QqCastList_QStyleOptionProgressBar a r => QqCastList_QStyleOptionProgressBar (QStyleOptionProgressBar ()) (a -> r) where
  qcl_QStyleOptionProgressBar l x sx = qcl_QStyleOptionProgressBar (x:l) sx

instance QqCastList_QStyleOptionProgressBar (QStyleOptionProgressBarV2 ()) [QStyleOptionProgressBar ()] where
  qcl_QStyleOptionProgressBar l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionProgressBar a r => QqCastList_QStyleOptionProgressBar (QStyleOptionProgressBarV2 ()) (a -> r) where
  qcl_QStyleOptionProgressBar l x sx = qcl_QStyleOptionProgressBar ((objectCast x):l) sx

qCastList_QStyleOptionProgressBar x = qcl_QStyleOptionProgressBar [] x

type QStyleOptionDockWidget a = QStyleOption (CQStyleOptionDockWidget a)
type TQStyleOptionDockWidget a = TQStyleOption (CQStyleOptionDockWidget a)
data CQStyleOptionDockWidget a = CQStyleOptionDockWidget

type QStyleOptionDockWidgetSc a = QStyleOptionDockWidget (CQStyleOptionDockWidgetSc a)
type TQStyleOptionDockWidgetSc a = TQStyleOptionDockWidget (CQStyleOptionDockWidgetSc a)
data CQStyleOptionDockWidgetSc a = CQStyleOptionDockWidgetSc

qCast_QStyleOptionDockWidget :: Object a -> IO (QStyleOptionDockWidget ())
qCast_QStyleOptionDockWidget _qobj
  = return (objectCast _qobj)

withQStyleOptionDockWidgetResult :: IO (Ptr (TQStyleOptionDockWidget a)) -> IO (QStyleOptionDockWidget a)
withQStyleOptionDockWidgetResult f
  = withObjectResult qtc_QStyleOptionDockWidget_getFinalizer f

foreign import ccall qtc_QStyleOptionDockWidget_getFinalizer :: FunPtr (Ptr (TQStyleOptionDockWidget a) -> IO ())

qStyleOptionDockWidgetAddFinalizer :: QStyleOptionDockWidget a -> IO ()
qStyleOptionDockWidgetAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionDockWidget_getFinalizer fp

class QqCastList_QStyleOptionDockWidget a r where
  qcl_QStyleOptionDockWidget :: [QStyleOptionDockWidget ()] -> a -> r

instance QqCastList_QStyleOptionDockWidget (QStyleOptionDockWidget ()) [QStyleOptionDockWidget ()] where
  qcl_QStyleOptionDockWidget l x = reverse $ x:l

instance QqCastList_QStyleOptionDockWidget a r => QqCastList_QStyleOptionDockWidget (QStyleOptionDockWidget ()) (a -> r) where
  qcl_QStyleOptionDockWidget l x sx = qcl_QStyleOptionDockWidget (x:l) sx

instance QqCastList_QStyleOptionDockWidget (QStyleOptionDockWidgetV2 ()) [QStyleOptionDockWidget ()] where
  qcl_QStyleOptionDockWidget l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionDockWidget a r => QqCastList_QStyleOptionDockWidget (QStyleOptionDockWidgetV2 ()) (a -> r) where
  qcl_QStyleOptionDockWidget l x sx = qcl_QStyleOptionDockWidget ((objectCast x):l) sx

qCastList_QStyleOptionDockWidget x = qcl_QStyleOptionDockWidget [] x

type QStyleOptionFrame a = QStyleOption (CQStyleOptionFrame a)
type TQStyleOptionFrame a = TQStyleOption (CQStyleOptionFrame a)
data CQStyleOptionFrame a = CQStyleOptionFrame

type QStyleOptionFrameSc a = QStyleOptionFrame (CQStyleOptionFrameSc a)
type TQStyleOptionFrameSc a = TQStyleOptionFrame (CQStyleOptionFrameSc a)
data CQStyleOptionFrameSc a = CQStyleOptionFrameSc

qCast_QStyleOptionFrame :: Object a -> IO (QStyleOptionFrame ())
qCast_QStyleOptionFrame _qobj
  = return (objectCast _qobj)

withQStyleOptionFrameResult :: IO (Ptr (TQStyleOptionFrame a)) -> IO (QStyleOptionFrame a)
withQStyleOptionFrameResult f
  = withObjectResult qtc_QStyleOptionFrame_getFinalizer f

foreign import ccall qtc_QStyleOptionFrame_getFinalizer :: FunPtr (Ptr (TQStyleOptionFrame a) -> IO ())

qStyleOptionFrameAddFinalizer :: QStyleOptionFrame a -> IO ()
qStyleOptionFrameAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionFrame_getFinalizer fp

class QqCastList_QStyleOptionFrame a r where
  qcl_QStyleOptionFrame :: [QStyleOptionFrame ()] -> a -> r

instance QqCastList_QStyleOptionFrame (QStyleOptionFrame ()) [QStyleOptionFrame ()] where
  qcl_QStyleOptionFrame l x = reverse $ x:l

instance QqCastList_QStyleOptionFrame a r => QqCastList_QStyleOptionFrame (QStyleOptionFrame ()) (a -> r) where
  qcl_QStyleOptionFrame l x sx = qcl_QStyleOptionFrame (x:l) sx

instance QqCastList_QStyleOptionFrame (QStyleOptionFrameV2 ()) [QStyleOptionFrame ()] where
  qcl_QStyleOptionFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionFrame a r => QqCastList_QStyleOptionFrame (QStyleOptionFrameV2 ()) (a -> r) where
  qcl_QStyleOptionFrame l x sx = qcl_QStyleOptionFrame ((objectCast x):l) sx

qCastList_QStyleOptionFrame x = qcl_QStyleOptionFrame [] x

type QStyleOptionTab a = QStyleOption (CQStyleOptionTab a)
type TQStyleOptionTab a = TQStyleOption (CQStyleOptionTab a)
data CQStyleOptionTab a = CQStyleOptionTab

type QStyleOptionTabSc a = QStyleOptionTab (CQStyleOptionTabSc a)
type TQStyleOptionTabSc a = TQStyleOptionTab (CQStyleOptionTabSc a)
data CQStyleOptionTabSc a = CQStyleOptionTabSc

qCast_QStyleOptionTab :: Object a -> IO (QStyleOptionTab ())
qCast_QStyleOptionTab _qobj
  = return (objectCast _qobj)

withQStyleOptionTabResult :: IO (Ptr (TQStyleOptionTab a)) -> IO (QStyleOptionTab a)
withQStyleOptionTabResult f
  = withObjectResult qtc_QStyleOptionTab_getFinalizer f

foreign import ccall qtc_QStyleOptionTab_getFinalizer :: FunPtr (Ptr (TQStyleOptionTab a) -> IO ())

qStyleOptionTabAddFinalizer :: QStyleOptionTab a -> IO ()
qStyleOptionTabAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionTab_getFinalizer fp

class QqCastList_QStyleOptionTab a r where
  qcl_QStyleOptionTab :: [QStyleOptionTab ()] -> a -> r

instance QqCastList_QStyleOptionTab (QStyleOptionTab ()) [QStyleOptionTab ()] where
  qcl_QStyleOptionTab l x = reverse $ x:l

instance QqCastList_QStyleOptionTab a r => QqCastList_QStyleOptionTab (QStyleOptionTab ()) (a -> r) where
  qcl_QStyleOptionTab l x sx = qcl_QStyleOptionTab (x:l) sx

instance QqCastList_QStyleOptionTab (QStyleOptionTabV2 ()) [QStyleOptionTab ()] where
  qcl_QStyleOptionTab l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionTab a r => QqCastList_QStyleOptionTab (QStyleOptionTabV2 ()) (a -> r) where
  qcl_QStyleOptionTab l x sx = qcl_QStyleOptionTab ((objectCast x):l) sx

qCastList_QStyleOptionTab x = qcl_QStyleOptionTab [] x

type QStyleOptionToolBox a = QStyleOption (CQStyleOptionToolBox a)
type TQStyleOptionToolBox a = TQStyleOption (CQStyleOptionToolBox a)
data CQStyleOptionToolBox a = CQStyleOptionToolBox

type QStyleOptionToolBoxSc a = QStyleOptionToolBox (CQStyleOptionToolBoxSc a)
type TQStyleOptionToolBoxSc a = TQStyleOptionToolBox (CQStyleOptionToolBoxSc a)
data CQStyleOptionToolBoxSc a = CQStyleOptionToolBoxSc

qCast_QStyleOptionToolBox :: Object a -> IO (QStyleOptionToolBox ())
qCast_QStyleOptionToolBox _qobj
  = return (objectCast _qobj)

withQStyleOptionToolBoxResult :: IO (Ptr (TQStyleOptionToolBox a)) -> IO (QStyleOptionToolBox a)
withQStyleOptionToolBoxResult f
  = withObjectResult qtc_QStyleOptionToolBox_getFinalizer f

foreign import ccall qtc_QStyleOptionToolBox_getFinalizer :: FunPtr (Ptr (TQStyleOptionToolBox a) -> IO ())

qStyleOptionToolBoxAddFinalizer :: QStyleOptionToolBox a -> IO ()
qStyleOptionToolBoxAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionToolBox_getFinalizer fp

class QqCastList_QStyleOptionToolBox a r where
  qcl_QStyleOptionToolBox :: [QStyleOptionToolBox ()] -> a -> r

instance QqCastList_QStyleOptionToolBox (QStyleOptionToolBox ()) [QStyleOptionToolBox ()] where
  qcl_QStyleOptionToolBox l x = reverse $ x:l

instance QqCastList_QStyleOptionToolBox a r => QqCastList_QStyleOptionToolBox (QStyleOptionToolBox ()) (a -> r) where
  qcl_QStyleOptionToolBox l x sx = qcl_QStyleOptionToolBox (x:l) sx

instance QqCastList_QStyleOptionToolBox (QStyleOptionToolBoxV2 ()) [QStyleOptionToolBox ()] where
  qcl_QStyleOptionToolBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionToolBox a r => QqCastList_QStyleOptionToolBox (QStyleOptionToolBoxV2 ()) (a -> r) where
  qcl_QStyleOptionToolBox l x sx = qcl_QStyleOptionToolBox ((objectCast x):l) sx

qCastList_QStyleOptionToolBox x = qcl_QStyleOptionToolBox [] x

type QStyleOptionViewItemV2 a = QStyleOptionViewItem (CQStyleOptionViewItemV2 a)
type TQStyleOptionViewItemV2 a = TQStyleOptionViewItem (CQStyleOptionViewItemV2 a)
data CQStyleOptionViewItemV2 a = CQStyleOptionViewItemV2

type QStyleOptionViewItemV2Sc a = QStyleOptionViewItemV2 (CQStyleOptionViewItemV2Sc a)
type TQStyleOptionViewItemV2Sc a = TQStyleOptionViewItemV2 (CQStyleOptionViewItemV2Sc a)
data CQStyleOptionViewItemV2Sc a = CQStyleOptionViewItemV2Sc

qCast_QStyleOptionViewItemV2 :: Object a -> IO (QStyleOptionViewItemV2 ())
qCast_QStyleOptionViewItemV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionViewItemV2Result :: IO (Ptr (TQStyleOptionViewItemV2 a)) -> IO (QStyleOptionViewItemV2 a)
withQStyleOptionViewItemV2Result f
  = withObjectResult qtc_QStyleOptionViewItemV2_getFinalizer f

foreign import ccall qtc_QStyleOptionViewItemV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionViewItemV2 a) -> IO ())

qStyleOptionViewItemV2AddFinalizer :: QStyleOptionViewItemV2 a -> IO ()
qStyleOptionViewItemV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionViewItemV2_getFinalizer fp

class QqCastList_QStyleOptionViewItemV2 a r where
  qcl_QStyleOptionViewItemV2 :: [QStyleOptionViewItemV2 ()] -> a -> r

instance QqCastList_QStyleOptionViewItemV2 (QStyleOptionViewItemV2 ()) [QStyleOptionViewItemV2 ()] where
  qcl_QStyleOptionViewItemV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionViewItemV2 a r => QqCastList_QStyleOptionViewItemV2 (QStyleOptionViewItemV2 ()) (a -> r) where
  qcl_QStyleOptionViewItemV2 l x sx = qcl_QStyleOptionViewItemV2 (x:l) sx

instance QqCastList_QStyleOptionViewItemV2 (QStyleOptionViewItemV3 ()) [QStyleOptionViewItemV2 ()] where
  qcl_QStyleOptionViewItemV2 l x = reverse $ ((objectCast x):l)

instance QqCastList_QStyleOptionViewItemV2 a r => QqCastList_QStyleOptionViewItemV2 (QStyleOptionViewItemV3 ()) (a -> r) where
  qcl_QStyleOptionViewItemV2 l x sx = qcl_QStyleOptionViewItemV2 ((objectCast x):l) sx

qCastList_QStyleOptionViewItemV2 x = qcl_QStyleOptionViewItemV2 [] x

type QTextFrameFormat a = QTextFormat (CQTextFrameFormat a)
type TQTextFrameFormat a = TQTextFormat (CQTextFrameFormat a)
data CQTextFrameFormat a = CQTextFrameFormat

type QTextFrameFormatSc a = QTextFrameFormat (CQTextFrameFormatSc a)
type TQTextFrameFormatSc a = TQTextFrameFormat (CQTextFrameFormatSc a)
data CQTextFrameFormatSc a = CQTextFrameFormatSc

qCast_QTextFrameFormat :: Object a -> IO (QTextFrameFormat ())
qCast_QTextFrameFormat _qobj
  = return (objectCast _qobj)

withQTextFrameFormatResult :: IO (Ptr (TQTextFrameFormat a)) -> IO (QTextFrameFormat a)
withQTextFrameFormatResult f
  = withObjectResult qtc_QTextFrameFormat_getFinalizer f

foreign import ccall qtc_QTextFrameFormat_getFinalizer :: FunPtr (Ptr (TQTextFrameFormat a) -> IO ())

qTextFrameFormatAddFinalizer :: QTextFrameFormat a -> IO ()
qTextFrameFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextFrameFormat_getFinalizer fp

class QqCastList_QTextFrameFormat a r where
  qcl_QTextFrameFormat :: [QTextFrameFormat ()] -> a -> r

instance QqCastList_QTextFrameFormat (QTextFrameFormat ()) [QTextFrameFormat ()] where
  qcl_QTextFrameFormat l x = reverse $ x:l

instance QqCastList_QTextFrameFormat a r => QqCastList_QTextFrameFormat (QTextFrameFormat ()) (a -> r) where
  qcl_QTextFrameFormat l x sx = qcl_QTextFrameFormat (x:l) sx

instance QqCastList_QTextFrameFormat (QTextTableFormat ()) [QTextFrameFormat ()] where
  qcl_QTextFrameFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFrameFormat a r => QqCastList_QTextFrameFormat (QTextTableFormat ()) (a -> r) where
  qcl_QTextFrameFormat l x sx = qcl_QTextFrameFormat ((objectCast x):l) sx

qCastList_QTextFrameFormat x = qcl_QTextFrameFormat [] x

type QTextCharFormat a = QTextFormat (CQTextCharFormat a)
type TQTextCharFormat a = TQTextFormat (CQTextCharFormat a)
data CQTextCharFormat a = CQTextCharFormat

type QTextCharFormatSc a = QTextCharFormat (CQTextCharFormatSc a)
type TQTextCharFormatSc a = TQTextCharFormat (CQTextCharFormatSc a)
data CQTextCharFormatSc a = CQTextCharFormatSc

qCast_QTextCharFormat :: Object a -> IO (QTextCharFormat ())
qCast_QTextCharFormat _qobj
  = return (objectCast _qobj)

withQTextCharFormatResult :: IO (Ptr (TQTextCharFormat a)) -> IO (QTextCharFormat a)
withQTextCharFormatResult f
  = withObjectResult qtc_QTextCharFormat_getFinalizer f

foreign import ccall qtc_QTextCharFormat_getFinalizer :: FunPtr (Ptr (TQTextCharFormat a) -> IO ())

qTextCharFormatAddFinalizer :: QTextCharFormat a -> IO ()
qTextCharFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextCharFormat_getFinalizer fp

class QqCastList_QTextCharFormat a r where
  qcl_QTextCharFormat :: [QTextCharFormat ()] -> a -> r

instance QqCastList_QTextCharFormat (QTextCharFormat ()) [QTextCharFormat ()] where
  qcl_QTextCharFormat l x = reverse $ x:l

instance QqCastList_QTextCharFormat a r => QqCastList_QTextCharFormat (QTextCharFormat ()) (a -> r) where
  qcl_QTextCharFormat l x sx = qcl_QTextCharFormat (x:l) sx

instance QqCastList_QTextCharFormat (QTextImageFormat ()) [QTextCharFormat ()] where
  qcl_QTextCharFormat l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextCharFormat a r => QqCastList_QTextCharFormat (QTextImageFormat ()) (a -> r) where
  qcl_QTextCharFormat l x sx = qcl_QTextCharFormat ((objectCast x):l) sx

qCastList_QTextCharFormat x = qcl_QTextCharFormat [] x

type QTextBlockGroup a = QTextObject (CQTextBlockGroup a)
type TQTextBlockGroup a = TQTextObject (CQTextBlockGroup a)
data CQTextBlockGroup a = CQTextBlockGroup

type QTextBlockGroupSc a = QTextBlockGroup (CQTextBlockGroupSc a)
type TQTextBlockGroupSc a = TQTextBlockGroup (CQTextBlockGroupSc a)
data CQTextBlockGroupSc a = CQTextBlockGroupSc

qCast_QTextBlockGroup :: Object a -> IO (QTextBlockGroup ())
qCast_QTextBlockGroup _qobj
  = return (objectCast _qobj)

withQTextBlockGroupResult :: IO (Ptr (TQTextBlockGroup a)) -> IO (QTextBlockGroup a)
withQTextBlockGroupResult f
  = withObjectResult qtc_QTextBlockGroup_getFinalizer f

qTextBlockGroupFromPtr :: Ptr (TQTextBlockGroup a) -> IO (QTextBlockGroup a)
qTextBlockGroupFromPtr p
  = objectFromPtr qtc_QTextBlockGroup_getFinalizer p

withQListQTextBlockGroupResult :: (Ptr (Ptr (TQTextBlockGroup a)) -> IO CInt) -> IO [QTextBlockGroup a]
withQListQTextBlockGroupResult f
  = withQListObjectResult qtc_QTextBlockGroup_getFinalizer f

qTextBlockGroupListFromPtrList :: [Ptr (TQTextBlockGroup a)] -> IO [QTextBlockGroup a]
qTextBlockGroupListFromPtrList p
  = objectListFromPtrList qtc_QTextBlockGroup_getFinalizer p

foreign import ccall qtc_QTextBlockGroup_getFinalizer :: FunPtr (Ptr (TQTextBlockGroup a) -> IO ())

class QqCastList_QTextBlockGroup a r where
  qcl_QTextBlockGroup :: [QTextBlockGroup ()] -> a -> r

instance QqCastList_QTextBlockGroup (QTextBlockGroup ()) [QTextBlockGroup ()] where
  qcl_QTextBlockGroup l x = reverse $ x:l

instance QqCastList_QTextBlockGroup a r => QqCastList_QTextBlockGroup (QTextBlockGroup ()) (a -> r) where
  qcl_QTextBlockGroup l x sx = qcl_QTextBlockGroup (x:l) sx

instance QqCastList_QTextBlockGroup (QTextList ()) [QTextBlockGroup ()] where
  qcl_QTextBlockGroup l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextBlockGroup a r => QqCastList_QTextBlockGroup (QTextList ()) (a -> r) where
  qcl_QTextBlockGroup l x sx = qcl_QTextBlockGroup ((objectCast x):l) sx

qCastList_QTextBlockGroup x = qcl_QTextBlockGroup [] x

type QTextFrame a = QTextObject (CQTextFrame a)
type TQTextFrame a = TQTextObject (CQTextFrame a)
data CQTextFrame a = CQTextFrame

type QTextFrameSc a = QTextFrame (CQTextFrameSc a)
type TQTextFrameSc a = TQTextFrame (CQTextFrameSc a)
data CQTextFrameSc a = CQTextFrameSc

qCast_QTextFrame :: Object a -> IO (QTextFrame ())
qCast_QTextFrame _qobj
  = return (objectCast _qobj)

withQTextFrameResult :: IO (Ptr (TQTextFrame a)) -> IO (QTextFrame a)
withQTextFrameResult f
  = withObjectResult qtc_QTextFrame_getFinalizer f

qTextFrameFromPtr :: Ptr (TQTextFrame a) -> IO (QTextFrame a)
qTextFrameFromPtr p
  = objectFromPtr qtc_QTextFrame_getFinalizer p

withQListQTextFrameResult :: (Ptr (Ptr (TQTextFrame a)) -> IO CInt) -> IO [QTextFrame a]
withQListQTextFrameResult f
  = withQListObjectResult qtc_QTextFrame_getFinalizer f

qTextFrameListFromPtrList :: [Ptr (TQTextFrame a)] -> IO [QTextFrame a]
qTextFrameListFromPtrList p
  = objectListFromPtrList qtc_QTextFrame_getFinalizer p

foreign import ccall qtc_QTextFrame_getFinalizer :: FunPtr (Ptr (TQTextFrame a) -> IO ())

class QqCastList_QTextFrame a r where
  qcl_QTextFrame :: [QTextFrame ()] -> a -> r

instance QqCastList_QTextFrame (QTextFrame ()) [QTextFrame ()] where
  qcl_QTextFrame l x = reverse $ x:l

instance QqCastList_QTextFrame a r => QqCastList_QTextFrame (QTextFrame ()) (a -> r) where
  qcl_QTextFrame l x sx = qcl_QTextFrame (x:l) sx

instance QqCastList_QTextFrame (QTextTable ()) [QTextFrame ()] where
  qcl_QTextFrame l x = reverse $ ((objectCast x):l)

instance QqCastList_QTextFrame a r => QqCastList_QTextFrame (QTextTable ()) (a -> r) where
  qcl_QTextFrame l x sx = qcl_QTextFrame ((objectCast x):l) sx

qCastList_QTextFrame x = qcl_QTextFrame [] x

type QComboBox a = QWidget (CQComboBox a)
type TQComboBox a = TQWidget (CQComboBox a)
data CQComboBox a = CQComboBox

type QComboBoxSc a = QComboBox (CQComboBoxSc a)
type TQComboBoxSc a = TQComboBox (CQComboBoxSc a)
data CQComboBoxSc a = CQComboBoxSc

qCast_QComboBox :: Object a -> IO (QComboBox ())
qCast_QComboBox _qobj
  = return (objectCast _qobj)

withQComboBoxResult :: IO (Ptr (TQComboBox a)) -> IO (QComboBox a)
withQComboBoxResult f
  = withObjectResult qtc_QComboBox_getFinalizer f

qComboBoxFromPtr :: Ptr (TQComboBox a) -> IO (QComboBox a)
qComboBoxFromPtr p
  = objectFromPtr qtc_QComboBox_getFinalizer p

withQListQComboBoxResult :: (Ptr (Ptr (TQComboBox a)) -> IO CInt) -> IO [QComboBox a]
withQListQComboBoxResult f
  = withQListObjectResult qtc_QComboBox_getFinalizer f

qComboBoxListFromPtrList :: [Ptr (TQComboBox a)] -> IO [QComboBox a]
qComboBoxListFromPtrList p
  = objectListFromPtrList qtc_QComboBox_getFinalizer p

foreign import ccall qtc_QComboBox_getFinalizer :: FunPtr (Ptr (TQComboBox a) -> IO ())

class QqCastList_QComboBox a r where
  qcl_QComboBox :: [QComboBox ()] -> a -> r

instance QqCastList_QComboBox (QComboBox ()) [QComboBox ()] where
  qcl_QComboBox l x = reverse $ x:l

instance QqCastList_QComboBox a r => QqCastList_QComboBox (QComboBox ()) (a -> r) where
  qcl_QComboBox l x sx = qcl_QComboBox (x:l) sx

instance QqCastList_QComboBox (QFontComboBox ()) [QComboBox ()] where
  qcl_QComboBox l x = reverse $ ((objectCast x):l)

instance QqCastList_QComboBox a r => QqCastList_QComboBox (QFontComboBox ()) (a -> r) where
  qcl_QComboBox l x sx = qcl_QComboBox ((objectCast x):l) sx

qCastList_QComboBox x = qcl_QComboBox [] x

type QTextOption a = Object (CQTextOption a)
type TQTextOption a = CQTextOption a
data CQTextOption a = CQTextOption

type QTextOptionSc a = QTextOption (CQTextOptionSc a)
type TQTextOptionSc a = TQTextOption (CQTextOptionSc a)
data CQTextOptionSc a = CQTextOptionSc

qCast_QTextOption :: Object a -> IO (QTextOption ())
qCast_QTextOption _qobj
  = return (objectCast _qobj)

withQTextOptionResult :: IO (Ptr (TQTextOption a)) -> IO (QTextOption a)
withQTextOptionResult f
  = withObjectResult qtc_QTextOption_getFinalizer f

foreign import ccall qtc_QTextOption_getFinalizer :: FunPtr (Ptr (TQTextOption a) -> IO ())

qTextOptionAddFinalizer :: QTextOption a -> IO ()
qTextOptionAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextOption_getFinalizer fp

class QqCastList_QTextOption a r where
  qcl_QTextOption :: [QTextOption ()] -> a -> r

instance QqCastList_QTextOption (QTextOption ()) [QTextOption ()] where
  qcl_QTextOption l x = reverse $ x:l

instance QqCastList_QTextOption a r => QqCastList_QTextOption (QTextOption ()) (a -> r) where
  qcl_QTextOption l x sx = qcl_QTextOption (x:l) sx

qCastList_QTextOption x = qcl_QTextOption [] x

type QTextFrameLayoutData a = Object (CQTextFrameLayoutData a)
type TQTextFrameLayoutData a = CQTextFrameLayoutData a
data CQTextFrameLayoutData a = CQTextFrameLayoutData

type QTextFrameLayoutDataSc a = QTextFrameLayoutData (CQTextFrameLayoutDataSc a)
type TQTextFrameLayoutDataSc a = TQTextFrameLayoutData (CQTextFrameLayoutDataSc a)
data CQTextFrameLayoutDataSc a = CQTextFrameLayoutDataSc

qCast_QTextFrameLayoutData :: Object a -> IO (QTextFrameLayoutData ())
qCast_QTextFrameLayoutData _qobj
  = return (objectCast _qobj)

withQTextFrameLayoutDataResult :: IO (Ptr (TQTextFrameLayoutData a)) -> IO (QTextFrameLayoutData a)
withQTextFrameLayoutDataResult f
  = withObjectRefResult f

class QqCastList_QTextFrameLayoutData a r where
  qcl_QTextFrameLayoutData :: [QTextFrameLayoutData ()] -> a -> r

instance QqCastList_QTextFrameLayoutData (QTextFrameLayoutData ()) [QTextFrameLayoutData ()] where
  qcl_QTextFrameLayoutData l x = reverse $ x:l

instance QqCastList_QTextFrameLayoutData a r => QqCastList_QTextFrameLayoutData (QTextFrameLayoutData ()) (a -> r) where
  qcl_QTextFrameLayoutData l x sx = qcl_QTextFrameLayoutData (x:l) sx

qCastList_QTextFrameLayoutData x = qcl_QTextFrameLayoutData [] x

type QTableWidgetItem a = Object (CQTableWidgetItem a)
type TQTableWidgetItem a = CQTableWidgetItem a
data CQTableWidgetItem a = CQTableWidgetItem

type QTableWidgetItemSc a = QTableWidgetItem (CQTableWidgetItemSc a)
type TQTableWidgetItemSc a = TQTableWidgetItem (CQTableWidgetItemSc a)
data CQTableWidgetItemSc a = CQTableWidgetItemSc

qCast_QTableWidgetItem :: Object a -> IO (QTableWidgetItem ())
qCast_QTableWidgetItem _qobj
  = return (objectCast _qobj)

withQTableWidgetItemResult :: IO (Ptr (TQTableWidgetItem a)) -> IO (QTableWidgetItem a)
withQTableWidgetItemResult f
  = withObjectResult qtc_QTableWidgetItem_getFinalizer f

foreign import ccall qtc_QTableWidgetItem_getFinalizer :: FunPtr (Ptr (TQTableWidgetItem a) -> IO ())

qTableWidgetItemAddFinalizer :: QTableWidgetItem a -> IO ()
qTableWidgetItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTableWidgetItem_getFinalizer fp

foreign import ccall qtc_QTableWidgetItem_getFinalizer1 :: FunPtr (Ptr (TQTableWidgetItem a) -> IO ())

qTableWidgetItemAddFinalizer1 :: QTableWidgetItem a -> IO ()
qTableWidgetItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QTableWidgetItem_getFinalizer1 fp

class QqCastList_QTableWidgetItem a r where
  qcl_QTableWidgetItem :: [QTableWidgetItem ()] -> a -> r

instance QqCastList_QTableWidgetItem (QTableWidgetItem ()) [QTableWidgetItem ()] where
  qcl_QTableWidgetItem l x = reverse $ x:l

instance QqCastList_QTableWidgetItem a r => QqCastList_QTableWidgetItem (QTableWidgetItem ()) (a -> r) where
  qcl_QTableWidgetItem l x sx = qcl_QTableWidgetItem (x:l) sx

qCastList_QTableWidgetItem x = qcl_QTableWidgetItem [] x

type QPainterPath a = Object (CQPainterPath a)
type TQPainterPath a = CQPainterPath a
data CQPainterPath a = CQPainterPath

type QPainterPathSc a = QPainterPath (CQPainterPathSc a)
type TQPainterPathSc a = TQPainterPath (CQPainterPathSc a)
data CQPainterPathSc a = CQPainterPathSc

qCast_QPainterPath :: Object a -> IO (QPainterPath ())
qCast_QPainterPath _qobj
  = return (objectCast _qobj)

withQPainterPathResult :: IO (Ptr (TQPainterPath a)) -> IO (QPainterPath a)
withQPainterPathResult f
  = withObjectResult qtc_QPainterPath_getFinalizer f

foreign import ccall qtc_QPainterPath_getFinalizer :: FunPtr (Ptr (TQPainterPath a) -> IO ())

qPainterPathAddFinalizer :: QPainterPath a -> IO ()
qPainterPathAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPainterPath_getFinalizer fp

class QqCastList_QPainterPath a r where
  qcl_QPainterPath :: [QPainterPath ()] -> a -> r

instance QqCastList_QPainterPath (QPainterPath ()) [QPainterPath ()] where
  qcl_QPainterPath l x = reverse $ x:l

instance QqCastList_QPainterPath a r => QqCastList_QPainterPath (QPainterPath ()) (a -> r) where
  qcl_QPainterPath l x sx = qcl_QPainterPath (x:l) sx

qCastList_QPainterPath x = qcl_QPainterPath [] x

type QTextBlockUserData a = Object (CQTextBlockUserData a)
type TQTextBlockUserData a = CQTextBlockUserData a
data CQTextBlockUserData a = CQTextBlockUserData

type QTextBlockUserDataSc a = QTextBlockUserData (CQTextBlockUserDataSc a)
type TQTextBlockUserDataSc a = TQTextBlockUserData (CQTextBlockUserDataSc a)
data CQTextBlockUserDataSc a = CQTextBlockUserDataSc

qCast_QTextBlockUserData :: Object a -> IO (QTextBlockUserData ())
qCast_QTextBlockUserData _qobj
  = return (objectCast _qobj)

withQTextBlockUserDataResult :: IO (Ptr (TQTextBlockUserData a)) -> IO (QTextBlockUserData a)
withQTextBlockUserDataResult f
  = withObjectRefResult f

class QqCastList_QTextBlockUserData a r where
  qcl_QTextBlockUserData :: [QTextBlockUserData ()] -> a -> r

instance QqCastList_QTextBlockUserData (QTextBlockUserData ()) [QTextBlockUserData ()] where
  qcl_QTextBlockUserData l x = reverse $ x:l

instance QqCastList_QTextBlockUserData a r => QqCastList_QTextBlockUserData (QTextBlockUserData ()) (a -> r) where
  qcl_QTextBlockUserData l x sx = qcl_QTextBlockUserData (x:l) sx

qCastList_QTextBlockUserData x = qcl_QTextBlockUserData [] x

type QStyleHintReturn a = Object (CQStyleHintReturn a)
type TQStyleHintReturn a = CQStyleHintReturn a
data CQStyleHintReturn a = CQStyleHintReturn

type QStyleHintReturnSc a = QStyleHintReturn (CQStyleHintReturnSc a)
type TQStyleHintReturnSc a = TQStyleHintReturn (CQStyleHintReturnSc a)
data CQStyleHintReturnSc a = CQStyleHintReturnSc

qCast_QStyleHintReturn :: Object a -> IO (QStyleHintReturn ())
qCast_QStyleHintReturn _qobj
  = return (objectCast _qobj)

withQStyleHintReturnResult :: IO (Ptr (TQStyleHintReturn a)) -> IO (QStyleHintReturn a)
withQStyleHintReturnResult f
  = withObjectResult qtc_QStyleHintReturn_getFinalizer f

foreign import ccall qtc_QStyleHintReturn_getFinalizer :: FunPtr (Ptr (TQStyleHintReturn a) -> IO ())

qStyleHintReturnAddFinalizer :: QStyleHintReturn a -> IO ()
qStyleHintReturnAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleHintReturn_getFinalizer fp

class QqCastList_QStyleHintReturn a r where
  qcl_QStyleHintReturn :: [QStyleHintReturn ()] -> a -> r

instance QqCastList_QStyleHintReturn (QStyleHintReturn ()) [QStyleHintReturn ()] where
  qcl_QStyleHintReturn l x = reverse $ x:l

instance QqCastList_QStyleHintReturn a r => QqCastList_QStyleHintReturn (QStyleHintReturn ()) (a -> r) where
  qcl_QStyleHintReturn l x sx = qcl_QStyleHintReturn (x:l) sx

qCastList_QStyleHintReturn x = qcl_QStyleHintReturn [] x

type QPixmapCache a = Object (CQPixmapCache a)
type TQPixmapCache a = CQPixmapCache a
data CQPixmapCache a = CQPixmapCache

type QPixmapCacheSc a = QPixmapCache (CQPixmapCacheSc a)
type TQPixmapCacheSc a = TQPixmapCache (CQPixmapCacheSc a)
data CQPixmapCacheSc a = CQPixmapCacheSc

qCast_QPixmapCache :: Object a -> IO (QPixmapCache ())
qCast_QPixmapCache _qobj
  = return (objectCast _qobj)

withQPixmapCacheResult :: IO (Ptr (TQPixmapCache a)) -> IO (QPixmapCache a)
withQPixmapCacheResult f
  = withObjectResult qtc_QPixmapCache_getFinalizer f

foreign import ccall qtc_QPixmapCache_getFinalizer :: FunPtr (Ptr (TQPixmapCache a) -> IO ())

qPixmapCacheAddFinalizer :: QPixmapCache a -> IO ()
qPixmapCacheAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPixmapCache_getFinalizer fp

class QqCastList_QPixmapCache a r where
  qcl_QPixmapCache :: [QPixmapCache ()] -> a -> r

instance QqCastList_QPixmapCache (QPixmapCache ()) [QPixmapCache ()] where
  qcl_QPixmapCache l x = reverse $ x:l

instance QqCastList_QPixmapCache a r => QqCastList_QPixmapCache (QPixmapCache ()) (a -> r) where
  qcl_QPixmapCache l x sx = qcl_QPixmapCache (x:l) sx

qCastList_QPixmapCache x = qcl_QPixmapCache [] x

type QFontInfo a = Object (CQFontInfo a)
type TQFontInfo a = CQFontInfo a
data CQFontInfo a = CQFontInfo

type QFontInfoSc a = QFontInfo (CQFontInfoSc a)
type TQFontInfoSc a = TQFontInfo (CQFontInfoSc a)
data CQFontInfoSc a = CQFontInfoSc

qCast_QFontInfo :: Object a -> IO (QFontInfo ())
qCast_QFontInfo _qobj
  = return (objectCast _qobj)

withQFontInfoResult :: IO (Ptr (TQFontInfo a)) -> IO (QFontInfo a)
withQFontInfoResult f
  = withObjectResult qtc_QFontInfo_getFinalizer f

foreign import ccall qtc_QFontInfo_getFinalizer :: FunPtr (Ptr (TQFontInfo a) -> IO ())

qFontInfoAddFinalizer :: QFontInfo a -> IO ()
qFontInfoAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFontInfo_getFinalizer fp

class QqCastList_QFontInfo a r where
  qcl_QFontInfo :: [QFontInfo ()] -> a -> r

instance QqCastList_QFontInfo (QFontInfo ()) [QFontInfo ()] where
  qcl_QFontInfo l x = reverse $ x:l

instance QqCastList_QFontInfo a r => QqCastList_QFontInfo (QFontInfo ()) (a -> r) where
  qcl_QFontInfo l x sx = qcl_QFontInfo (x:l) sx

qCastList_QFontInfo x = qcl_QFontInfo [] x

type QSizePolicy a = Object (CQSizePolicy a)
type TQSizePolicy a = CQSizePolicy a
data CQSizePolicy a = CQSizePolicy

type QSizePolicySc a = QSizePolicy (CQSizePolicySc a)
type TQSizePolicySc a = TQSizePolicy (CQSizePolicySc a)
data CQSizePolicySc a = CQSizePolicySc

qCast_QSizePolicy :: Object a -> IO (QSizePolicy ())
qCast_QSizePolicy _qobj
  = return (objectCast _qobj)

withQSizePolicyResult :: IO (Ptr (TQSizePolicy a)) -> IO (QSizePolicy a)
withQSizePolicyResult f
  = withObjectResult qtc_QSizePolicy_getFinalizer f

foreign import ccall qtc_QSizePolicy_getFinalizer :: FunPtr (Ptr (TQSizePolicy a) -> IO ())

qSizePolicyAddFinalizer :: QSizePolicy a -> IO ()
qSizePolicyAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QSizePolicy_getFinalizer fp

class QqCastList_QSizePolicy a r where
  qcl_QSizePolicy :: [QSizePolicy ()] -> a -> r

instance QqCastList_QSizePolicy (QSizePolicy ()) [QSizePolicy ()] where
  qcl_QSizePolicy l x = reverse $ x:l

instance QqCastList_QSizePolicy a r => QqCastList_QSizePolicy (QSizePolicy ()) (a -> r) where
  qcl_QSizePolicy l x sx = qcl_QSizePolicy (x:l) sx

qCastList_QSizePolicy x = qcl_QSizePolicy [] x

type QBrush a = Object (CQBrush a)
type TQBrush a = CQBrush a
data CQBrush a = CQBrush

type QBrushSc a = QBrush (CQBrushSc a)
type TQBrushSc a = TQBrush (CQBrushSc a)
data CQBrushSc a = CQBrushSc

qCast_QBrush :: Object a -> IO (QBrush ())
qCast_QBrush _qobj
  = return (objectCast _qobj)

withQBrushResult :: IO (Ptr (TQBrush a)) -> IO (QBrush a)
withQBrushResult f
  = withObjectResult qtc_QBrush_getFinalizer f

foreign import ccall qtc_QBrush_getFinalizer :: FunPtr (Ptr (TQBrush a) -> IO ())

qBrushAddFinalizer :: QBrush a -> IO ()
qBrushAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QBrush_getFinalizer fp

class QqCastList_QBrush a r where
  qcl_QBrush :: [QBrush ()] -> a -> r

instance QqCastList_QBrush (QBrush ()) [QBrush ()] where
  qcl_QBrush l x = reverse $ x:l

instance QqCastList_QBrush a r => QqCastList_QBrush (QBrush ()) (a -> r) where
  qcl_QBrush l x sx = qcl_QBrush (x:l) sx

qCastList_QBrush x = qcl_QBrush [] x

type QTextCursor a = Object (CQTextCursor a)
type TQTextCursor a = CQTextCursor a
data CQTextCursor a = CQTextCursor

type QTextCursorSc a = QTextCursor (CQTextCursorSc a)
type TQTextCursorSc a = TQTextCursor (CQTextCursorSc a)
data CQTextCursorSc a = CQTextCursorSc

qCast_QTextCursor :: Object a -> IO (QTextCursor ())
qCast_QTextCursor _qobj
  = return (objectCast _qobj)

withQTextCursorResult :: IO (Ptr (TQTextCursor a)) -> IO (QTextCursor a)
withQTextCursorResult f
  = withObjectResult qtc_QTextCursor_getFinalizer f

foreign import ccall qtc_QTextCursor_getFinalizer :: FunPtr (Ptr (TQTextCursor a) -> IO ())

qTextCursorAddFinalizer :: QTextCursor a -> IO ()
qTextCursorAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextCursor_getFinalizer fp

class QqCastList_QTextCursor a r where
  qcl_QTextCursor :: [QTextCursor ()] -> a -> r

instance QqCastList_QTextCursor (QTextCursor ()) [QTextCursor ()] where
  qcl_QTextCursor l x = reverse $ x:l

instance QqCastList_QTextCursor a r => QqCastList_QTextCursor (QTextCursor ()) (a -> r) where
  qcl_QTextCursor l x sx = qcl_QTextCursor (x:l) sx

qCastList_QTextCursor x = qcl_QTextCursor [] x

type QWhatsThis a = Object (CQWhatsThis a)
type TQWhatsThis a = CQWhatsThis a
data CQWhatsThis a = CQWhatsThis

type QTextFragment a = Object (CQTextFragment a)
type TQTextFragment a = CQTextFragment a
data CQTextFragment a = CQTextFragment

type QTextFragmentSc a = QTextFragment (CQTextFragmentSc a)
type TQTextFragmentSc a = TQTextFragment (CQTextFragmentSc a)
data CQTextFragmentSc a = CQTextFragmentSc

qCast_QTextFragment :: Object a -> IO (QTextFragment ())
qCast_QTextFragment _qobj
  = return (objectCast _qobj)

withQTextFragmentResult :: IO (Ptr (TQTextFragment a)) -> IO (QTextFragment a)
withQTextFragmentResult f
  = withObjectResult qtc_QTextFragment_getFinalizer f

foreign import ccall qtc_QTextFragment_getFinalizer :: FunPtr (Ptr (TQTextFragment a) -> IO ())

qTextFragmentAddFinalizer :: QTextFragment a -> IO ()
qTextFragmentAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextFragment_getFinalizer fp

class QqCastList_QTextFragment a r where
  qcl_QTextFragment :: [QTextFragment ()] -> a -> r

instance QqCastList_QTextFragment (QTextFragment ()) [QTextFragment ()] where
  qcl_QTextFragment l x = reverse $ x:l

instance QqCastList_QTextFragment a r => QqCastList_QTextFragment (QTextFragment ()) (a -> r) where
  qcl_QTextFragment l x sx = qcl_QTextFragment (x:l) sx

qCastList_QTextFragment x = qcl_QTextFragment [] x

type QTextTableCell a = Object (CQTextTableCell a)
type TQTextTableCell a = CQTextTableCell a
data CQTextTableCell a = CQTextTableCell

type QTextTableCellSc a = QTextTableCell (CQTextTableCellSc a)
type TQTextTableCellSc a = TQTextTableCell (CQTextTableCellSc a)
data CQTextTableCellSc a = CQTextTableCellSc

qCast_QTextTableCell :: Object a -> IO (QTextTableCell ())
qCast_QTextTableCell _qobj
  = return (objectCast _qobj)

withQTextTableCellResult :: IO (Ptr (TQTextTableCell a)) -> IO (QTextTableCell a)
withQTextTableCellResult f
  = withObjectResult qtc_QTextTableCell_getFinalizer f

foreign import ccall qtc_QTextTableCell_getFinalizer :: FunPtr (Ptr (TQTextTableCell a) -> IO ())

qTextTableCellAddFinalizer :: QTextTableCell a -> IO ()
qTextTableCellAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextTableCell_getFinalizer fp

class QqCastList_QTextTableCell a r where
  qcl_QTextTableCell :: [QTextTableCell ()] -> a -> r

instance QqCastList_QTextTableCell (QTextTableCell ()) [QTextTableCell ()] where
  qcl_QTextTableCell l x = reverse $ x:l

instance QqCastList_QTextTableCell a r => QqCastList_QTextTableCell (QTextTableCell ()) (a -> r) where
  qcl_QTextTableCell l x sx = qcl_QTextTableCell (x:l) sx

qCastList_QTextTableCell x = qcl_QTextTableCell [] x

type QFontMetrics a = Object (CQFontMetrics a)
type TQFontMetrics a = CQFontMetrics a
data CQFontMetrics a = CQFontMetrics

type QFontMetricsSc a = QFontMetrics (CQFontMetricsSc a)
type TQFontMetricsSc a = TQFontMetrics (CQFontMetricsSc a)
data CQFontMetricsSc a = CQFontMetricsSc

qCast_QFontMetrics :: Object a -> IO (QFontMetrics ())
qCast_QFontMetrics _qobj
  = return (objectCast _qobj)

withQFontMetricsResult :: IO (Ptr (TQFontMetrics a)) -> IO (QFontMetrics a)
withQFontMetricsResult f
  = withObjectResult qtc_QFontMetrics_getFinalizer f

foreign import ccall qtc_QFontMetrics_getFinalizer :: FunPtr (Ptr (TQFontMetrics a) -> IO ())

qFontMetricsAddFinalizer :: QFontMetrics a -> IO ()
qFontMetricsAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFontMetrics_getFinalizer fp

class QqCastList_QFontMetrics a r where
  qcl_QFontMetrics :: [QFontMetrics ()] -> a -> r

instance QqCastList_QFontMetrics (QFontMetrics ()) [QFontMetrics ()] where
  qcl_QFontMetrics l x = reverse $ x:l

instance QqCastList_QFontMetrics a r => QqCastList_QFontMetrics (QFontMetrics ()) (a -> r) where
  qcl_QFontMetrics l x sx = qcl_QFontMetrics (x:l) sx

qCastList_QFontMetrics x = qcl_QFontMetrics [] x

type QPen a = Object (CQPen a)
type TQPen a = CQPen a
data CQPen a = CQPen

type QPenSc a = QPen (CQPenSc a)
type TQPenSc a = TQPen (CQPenSc a)
data CQPenSc a = CQPenSc

qCast_QPen :: Object a -> IO (QPen ())
qCast_QPen _qobj
  = return (objectCast _qobj)

withQPenResult :: IO (Ptr (TQPen a)) -> IO (QPen a)
withQPenResult f
  = withObjectResult qtc_QPen_getFinalizer f

foreign import ccall qtc_QPen_getFinalizer :: FunPtr (Ptr (TQPen a) -> IO ())

qPenAddFinalizer :: QPen a -> IO ()
qPenAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPen_getFinalizer fp

class QqCastList_QPen a r where
  qcl_QPen :: [QPen ()] -> a -> r

instance QqCastList_QPen (QPen ()) [QPen ()] where
  qcl_QPen l x = reverse $ x:l

instance QqCastList_QPen a r => QqCastList_QPen (QPen ()) (a -> r) where
  qcl_QPen l x sx = qcl_QPen (x:l) sx

qCastList_QPen x = qcl_QPen [] x

type QListWidgetItem a = Object (CQListWidgetItem a)
type TQListWidgetItem a = CQListWidgetItem a
data CQListWidgetItem a = CQListWidgetItem

type QListWidgetItemSc a = QListWidgetItem (CQListWidgetItemSc a)
type TQListWidgetItemSc a = TQListWidgetItem (CQListWidgetItemSc a)
data CQListWidgetItemSc a = CQListWidgetItemSc

qCast_QListWidgetItem :: Object a -> IO (QListWidgetItem ())
qCast_QListWidgetItem _qobj
  = return (objectCast _qobj)

withQListWidgetItemResult :: IO (Ptr (TQListWidgetItem a)) -> IO (QListWidgetItem a)
withQListWidgetItemResult f
  = withObjectResult qtc_QListWidgetItem_getFinalizer f

foreign import ccall qtc_QListWidgetItem_getFinalizer :: FunPtr (Ptr (TQListWidgetItem a) -> IO ())

qListWidgetItemAddFinalizer :: QListWidgetItem a -> IO ()
qListWidgetItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QListWidgetItem_getFinalizer fp

foreign import ccall qtc_QListWidgetItem_getFinalizer1 :: FunPtr (Ptr (TQListWidgetItem a) -> IO ())

qListWidgetItemAddFinalizer1 :: QListWidgetItem a -> IO ()
qListWidgetItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QListWidgetItem_getFinalizer1 fp

class QqCastList_QListWidgetItem a r where
  qcl_QListWidgetItem :: [QListWidgetItem ()] -> a -> r

instance QqCastList_QListWidgetItem (QListWidgetItem ()) [QListWidgetItem ()] where
  qcl_QListWidgetItem l x = reverse $ x:l

instance QqCastList_QListWidgetItem a r => QqCastList_QListWidgetItem (QListWidgetItem ()) (a -> r) where
  qcl_QListWidgetItem l x sx = qcl_QListWidgetItem (x:l) sx

qCastList_QListWidgetItem x = qcl_QListWidgetItem [] x

type QItemSelection a = Object (CQItemSelection a)
type TQItemSelection a = CQItemSelection a
data CQItemSelection a = CQItemSelection

type QItemSelectionSc a = QItemSelection (CQItemSelectionSc a)
type TQItemSelectionSc a = TQItemSelection (CQItemSelectionSc a)
data CQItemSelectionSc a = CQItemSelectionSc

qCast_QItemSelection :: Object a -> IO (QItemSelection ())
qCast_QItemSelection _qobj
  = return (objectCast _qobj)

withQItemSelectionResult :: IO (Ptr (TQItemSelection a)) -> IO (QItemSelection a)
withQItemSelectionResult f
  = withObjectRefResult f

class QqCastList_QItemSelection a r where
  qcl_QItemSelection :: [QItemSelection ()] -> a -> r

instance QqCastList_QItemSelection (QItemSelection ()) [QItemSelection ()] where
  qcl_QItemSelection l x = reverse $ x:l

instance QqCastList_QItemSelection a r => QqCastList_QItemSelection (QItemSelection ()) (a -> r) where
  qcl_QItemSelection l x sx = qcl_QItemSelection (x:l) sx

qCastList_QItemSelection x = qcl_QItemSelection [] x

type QItemDelegate a = QAbstractItemDelegate (CQItemDelegate a)
type TQItemDelegate a = TQAbstractItemDelegate (CQItemDelegate a)
data CQItemDelegate a = CQItemDelegate

type QItemDelegateSc a = QItemDelegate (CQItemDelegateSc a)
type TQItemDelegateSc a = TQItemDelegate (CQItemDelegateSc a)
data CQItemDelegateSc a = CQItemDelegateSc

qCast_QItemDelegate :: Object a -> IO (QItemDelegate ())
qCast_QItemDelegate _qobj
  = return (objectCast _qobj)

withQItemDelegateResult :: IO (Ptr (TQItemDelegate a)) -> IO (QItemDelegate a)
withQItemDelegateResult f
  = withObjectResult qtc_QItemDelegate_getFinalizer f

qItemDelegateFromPtr :: Ptr (TQItemDelegate a) -> IO (QItemDelegate a)
qItemDelegateFromPtr p
  = objectFromPtr qtc_QItemDelegate_getFinalizer p

withQListQItemDelegateResult :: (Ptr (Ptr (TQItemDelegate a)) -> IO CInt) -> IO [QItemDelegate a]
withQListQItemDelegateResult f
  = withQListObjectResult qtc_QItemDelegate_getFinalizer f

qItemDelegateListFromPtrList :: [Ptr (TQItemDelegate a)] -> IO [QItemDelegate a]
qItemDelegateListFromPtrList p
  = objectListFromPtrList qtc_QItemDelegate_getFinalizer p

foreign import ccall qtc_QItemDelegate_getFinalizer :: FunPtr (Ptr (TQItemDelegate a) -> IO ())

class QqCastList_QItemDelegate a r where
  qcl_QItemDelegate :: [QItemDelegate ()] -> a -> r

instance QqCastList_QItemDelegate (QItemDelegate ()) [QItemDelegate ()] where
  qcl_QItemDelegate l x = reverse $ x:l

instance QqCastList_QItemDelegate a r => QqCastList_QItemDelegate (QItemDelegate ()) (a -> r) where
  qcl_QItemDelegate l x sx = qcl_QItemDelegate (x:l) sx

qCastList_QItemDelegate x = qcl_QItemDelegate [] x

type QItemEditorCreatorBase a = Object (CQItemEditorCreatorBase a)
type TQItemEditorCreatorBase a = CQItemEditorCreatorBase a
data CQItemEditorCreatorBase a = CQItemEditorCreatorBase

type QItemEditorCreatorBaseSc a = QItemEditorCreatorBase (CQItemEditorCreatorBaseSc a)
type TQItemEditorCreatorBaseSc a = TQItemEditorCreatorBase (CQItemEditorCreatorBaseSc a)
data CQItemEditorCreatorBaseSc a = CQItemEditorCreatorBaseSc

qCast_QItemEditorCreatorBase :: Object a -> IO (QItemEditorCreatorBase ())
qCast_QItemEditorCreatorBase _qobj
  = return (objectCast _qobj)

withQItemEditorCreatorBaseResult :: IO (Ptr (TQItemEditorCreatorBase a)) -> IO (QItemEditorCreatorBase a)
withQItemEditorCreatorBaseResult f
  = withObjectResult qtc_QItemEditorCreatorBase_getFinalizer f

foreign import ccall qtc_QItemEditorCreatorBase_getFinalizer :: FunPtr (Ptr (TQItemEditorCreatorBase a) -> IO ())

qItemEditorCreatorBaseAddFinalizer :: QItemEditorCreatorBase a -> IO ()
qItemEditorCreatorBaseAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QItemEditorCreatorBase_getFinalizer fp

foreign import ccall qtc_QItemEditorCreatorBase_getFinalizer1 :: FunPtr (Ptr (TQItemEditorCreatorBase a) -> IO ())

qItemEditorCreatorBaseAddFinalizer1 :: QItemEditorCreatorBase a -> IO ()
qItemEditorCreatorBaseAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QItemEditorCreatorBase_getFinalizer1 fp

class QqCastList_QItemEditorCreatorBase a r where
  qcl_QItemEditorCreatorBase :: [QItemEditorCreatorBase ()] -> a -> r

instance QqCastList_QItemEditorCreatorBase (QItemEditorCreatorBase ()) [QItemEditorCreatorBase ()] where
  qcl_QItemEditorCreatorBase l x = reverse $ x:l

instance QqCastList_QItemEditorCreatorBase a r => QqCastList_QItemEditorCreatorBase (QItemEditorCreatorBase ()) (a -> r) where
  qcl_QItemEditorCreatorBase l x sx = qcl_QItemEditorCreatorBase (x:l) sx

qCastList_QItemEditorCreatorBase x = qcl_QItemEditorCreatorBase [] x

type QItemSelectionRange a = Object (CQItemSelectionRange a)
type TQItemSelectionRange a = CQItemSelectionRange a
data CQItemSelectionRange a = CQItemSelectionRange

type QItemSelectionRangeSc a = QItemSelectionRange (CQItemSelectionRangeSc a)
type TQItemSelectionRangeSc a = TQItemSelectionRange (CQItemSelectionRangeSc a)
data CQItemSelectionRangeSc a = CQItemSelectionRangeSc

qCast_QItemSelectionRange :: Object a -> IO (QItemSelectionRange ())
qCast_QItemSelectionRange _qobj
  = return (objectCast _qobj)

withQItemSelectionRangeResult :: IO (Ptr (TQItemSelectionRange a)) -> IO (QItemSelectionRange a)
withQItemSelectionRangeResult f
  = withObjectResult qtc_QItemSelectionRange_getFinalizer f

foreign import ccall qtc_QItemSelectionRange_getFinalizer :: FunPtr (Ptr (TQItemSelectionRange a) -> IO ())

qItemSelectionRangeAddFinalizer :: QItemSelectionRange a -> IO ()
qItemSelectionRangeAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QItemSelectionRange_getFinalizer fp

class QqCastList_QItemSelectionRange a r where
  qcl_QItemSelectionRange :: [QItemSelectionRange ()] -> a -> r

instance QqCastList_QItemSelectionRange (QItemSelectionRange ()) [QItemSelectionRange ()] where
  qcl_QItemSelectionRange l x = reverse $ x:l

instance QqCastList_QItemSelectionRange a r => QqCastList_QItemSelectionRange (QItemSelectionRange ()) (a -> r) where
  qcl_QItemSelectionRange l x sx = qcl_QItemSelectionRange (x:l) sx

qCastList_QItemSelectionRange x = qcl_QItemSelectionRange [] x

type QItemEditorFactory a = Object (CQItemEditorFactory a)
type TQItemEditorFactory a = CQItemEditorFactory a
data CQItemEditorFactory a = CQItemEditorFactory

type QItemEditorFactorySc a = QItemEditorFactory (CQItemEditorFactorySc a)
type TQItemEditorFactorySc a = TQItemEditorFactory (CQItemEditorFactorySc a)
data CQItemEditorFactorySc a = CQItemEditorFactorySc

qCast_QItemEditorFactory :: Object a -> IO (QItemEditorFactory ())
qCast_QItemEditorFactory _qobj
  = return (objectCast _qobj)

withQItemEditorFactoryResult :: IO (Ptr (TQItemEditorFactory a)) -> IO (QItemEditorFactory a)
withQItemEditorFactoryResult f
  = withObjectResult qtc_QItemEditorFactory_getFinalizer f

foreign import ccall qtc_QItemEditorFactory_getFinalizer :: FunPtr (Ptr (TQItemEditorFactory a) -> IO ())

qItemEditorFactoryAddFinalizer :: QItemEditorFactory a -> IO ()
qItemEditorFactoryAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QItemEditorFactory_getFinalizer fp

foreign import ccall qtc_QItemEditorFactory_getFinalizer1 :: FunPtr (Ptr (TQItemEditorFactory a) -> IO ())

qItemEditorFactoryAddFinalizer1 :: QItemEditorFactory a -> IO ()
qItemEditorFactoryAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QItemEditorFactory_getFinalizer1 fp

class QqCastList_QItemEditorFactory a r where
  qcl_QItemEditorFactory :: [QItemEditorFactory ()] -> a -> r

instance QqCastList_QItemEditorFactory (QItemEditorFactory ()) [QItemEditorFactory ()] where
  qcl_QItemEditorFactory l x = reverse $ x:l

instance QqCastList_QItemEditorFactory a r => QqCastList_QItemEditorFactory (QItemEditorFactory ()) (a -> r) where
  qcl_QItemEditorFactory l x sx = qcl_QItemEditorFactory (x:l) sx

qCastList_QItemEditorFactory x = qcl_QItemEditorFactory [] x

type QToolTip a = Object (CQToolTip a)
type TQToolTip a = CQToolTip a
data CQToolTip a = CQToolTip

type QToolTipSc a = QToolTip (CQToolTipSc a)
type TQToolTipSc a = TQToolTip (CQToolTipSc a)
data CQToolTipSc a = CQToolTipSc

qCast_QToolTip :: Object a -> IO (QToolTip ())
qCast_QToolTip _qobj
  = return (objectCast _qobj)

withQToolTipResult :: IO (Ptr (TQToolTip a)) -> IO (QToolTip a)
withQToolTipResult f
  = withObjectResult qtc_QToolTip_getFinalizer f

foreign import ccall qtc_QToolTip_getFinalizer :: FunPtr (Ptr (TQToolTip a) -> IO ())

qToolTipAddFinalizer :: QToolTip a -> IO ()
qToolTipAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QToolTip_getFinalizer fp

class QqCastList_QToolTip a r where
  qcl_QToolTip :: [QToolTip ()] -> a -> r

instance QqCastList_QToolTip (QToolTip ()) [QToolTip ()] where
  qcl_QToolTip l x = reverse $ x:l

instance QqCastList_QToolTip a r => QqCastList_QToolTip (QToolTip ()) (a -> r) where
  qcl_QToolTip l x sx = qcl_QToolTip (x:l) sx

qCastList_QToolTip x = qcl_QToolTip [] x

type QUndoCommand a = Object (CQUndoCommand a)
type TQUndoCommand a = CQUndoCommand a
data CQUndoCommand a = CQUndoCommand

type QUndoCommandSc a = QUndoCommand (CQUndoCommandSc a)
type TQUndoCommandSc a = TQUndoCommand (CQUndoCommandSc a)
data CQUndoCommandSc a = CQUndoCommandSc

qCast_QUndoCommand :: Object a -> IO (QUndoCommand ())
qCast_QUndoCommand _qobj
  = return (objectCast _qobj)

withQUndoCommandResult :: IO (Ptr (TQUndoCommand a)) -> IO (QUndoCommand a)
withQUndoCommandResult f
  = withObjectResult qtc_QUndoCommand_getFinalizer f

foreign import ccall qtc_QUndoCommand_getFinalizer :: FunPtr (Ptr (TQUndoCommand a) -> IO ())

qUndoCommandAddFinalizer :: QUndoCommand a -> IO ()
qUndoCommandAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QUndoCommand_getFinalizer fp

foreign import ccall qtc_QUndoCommand_getFinalizer1 :: FunPtr (Ptr (TQUndoCommand a) -> IO ())

qUndoCommandAddFinalizer1 :: QUndoCommand a -> IO ()
qUndoCommandAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QUndoCommand_getFinalizer1 fp

class QqCastList_QUndoCommand a r where
  qcl_QUndoCommand :: [QUndoCommand ()] -> a -> r

instance QqCastList_QUndoCommand (QUndoCommand ()) [QUndoCommand ()] where
  qcl_QUndoCommand l x = reverse $ x:l

instance QqCastList_QUndoCommand a r => QqCastList_QUndoCommand (QUndoCommand ()) (a -> r) where
  qcl_QUndoCommand l x sx = qcl_QUndoCommand (x:l) sx

qCastList_QUndoCommand x = qcl_QUndoCommand [] x

type QRegion a = Object (CQRegion a)
type TQRegion a = CQRegion a
data CQRegion a = CQRegion

type QRegionSc a = QRegion (CQRegionSc a)
type TQRegionSc a = TQRegion (CQRegionSc a)
data CQRegionSc a = CQRegionSc

qCast_QRegion :: Object a -> IO (QRegion ())
qCast_QRegion _qobj
  = return (objectCast _qobj)

withQRegionResult :: IO (Ptr (TQRegion a)) -> IO (QRegion a)
withQRegionResult f
  = withObjectResult qtc_QRegion_getFinalizer f

foreign import ccall qtc_QRegion_getFinalizer :: FunPtr (Ptr (TQRegion a) -> IO ())

qRegionAddFinalizer :: QRegion a -> IO ()
qRegionAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QRegion_getFinalizer fp

class QqCastList_QRegion a r where
  qcl_QRegion :: [QRegion ()] -> a -> r

instance QqCastList_QRegion (QRegion ()) [QRegion ()] where
  qcl_QRegion l x = reverse $ x:l

instance QqCastList_QRegion a r => QqCastList_QRegion (QRegion ()) (a -> r) where
  qcl_QRegion l x sx = qcl_QRegion (x:l) sx

qCastList_QRegion x = qcl_QRegion [] x

type QTextBlock a = Object (CQTextBlock a)
type TQTextBlock a = CQTextBlock a
data CQTextBlock a = CQTextBlock

type QTextBlockSc a = QTextBlock (CQTextBlockSc a)
type TQTextBlockSc a = TQTextBlock (CQTextBlockSc a)
data CQTextBlockSc a = CQTextBlockSc

qCast_QTextBlock :: Object a -> IO (QTextBlock ())
qCast_QTextBlock _qobj
  = return (objectCast _qobj)

withQTextBlockResult :: IO (Ptr (TQTextBlock a)) -> IO (QTextBlock a)
withQTextBlockResult f
  = withObjectResult qtc_QTextBlock_getFinalizer f

foreign import ccall qtc_QTextBlock_getFinalizer :: FunPtr (Ptr (TQTextBlock a) -> IO ())

qTextBlockAddFinalizer :: QTextBlock a -> IO ()
qTextBlockAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextBlock_getFinalizer fp

class QqCastList_QTextBlock a r where
  qcl_QTextBlock :: [QTextBlock ()] -> a -> r

instance QqCastList_QTextBlock (QTextBlock ()) [QTextBlock ()] where
  qcl_QTextBlock l x = reverse $ x:l

instance QqCastList_QTextBlock a r => QqCastList_QTextBlock (QTextBlock ()) (a -> r) where
  qcl_QTextBlock l x sx = qcl_QTextBlock (x:l) sx

qCastList_QTextBlock x = qcl_QTextBlock [] x

type QIcon a = Object (CQIcon a)
type TQIcon a = CQIcon a
data CQIcon a = CQIcon

type QIconSc a = QIcon (CQIconSc a)
type TQIconSc a = TQIcon (CQIconSc a)
data CQIconSc a = CQIconSc

qCast_QIcon :: Object a -> IO (QIcon ())
qCast_QIcon _qobj
  = return (objectCast _qobj)

withQIconResult :: IO (Ptr (TQIcon a)) -> IO (QIcon a)
withQIconResult f
  = withObjectResult qtc_QIcon_getFinalizer f

foreign import ccall qtc_QIcon_getFinalizer :: FunPtr (Ptr (TQIcon a) -> IO ())

qIconAddFinalizer :: QIcon a -> IO ()
qIconAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QIcon_getFinalizer fp

class QqCastList_QIcon a r where
  qcl_QIcon :: [QIcon ()] -> a -> r

instance QqCastList_QIcon (QIcon ()) [QIcon ()] where
  qcl_QIcon l x = reverse $ x:l

instance QqCastList_QIcon a r => QqCastList_QIcon (QIcon ()) (a -> r) where
  qcl_QIcon l x sx = qcl_QIcon (x:l) sx

qCastList_QIcon x = qcl_QIcon [] x

type QColor a = Object (CQColor a)
type TQColor a = CQColor a
data CQColor a = CQColor

type QColorSc a = QColor (CQColorSc a)
type TQColorSc a = TQColor (CQColorSc a)
data CQColorSc a = CQColorSc

qCast_QColor :: Object a -> IO (QColor ())
qCast_QColor _qobj
  = return (objectCast _qobj)

withQColorResult :: IO (Ptr (TQColor a)) -> IO (QColor a)
withQColorResult f
  = withObjectResult qtc_QColor_getFinalizer f

foreign import ccall qtc_QColor_getFinalizer :: FunPtr (Ptr (TQColor a) -> IO ())

qColorAddFinalizer :: QColor a -> IO ()
qColorAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QColor_getFinalizer fp

class QqCastList_QColor a r where
  qcl_QColor :: [QColor ()] -> a -> r

instance QqCastList_QColor (QColor ()) [QColor ()] where
  qcl_QColor l x = reverse $ x:l

instance QqCastList_QColor a r => QqCastList_QColor (QColor ()) (a -> r) where
  qcl_QColor l x sx = qcl_QColor (x:l) sx

qCastList_QColor x = qcl_QColor [] x

type QTextLayout__FormatRange a = Object (CQTextLayout__FormatRange a)
type TQTextLayout__FormatRange a = CQTextLayout__FormatRange a
data CQTextLayout__FormatRange a = CQTextLayout__FormatRange

type QTextLayout__FormatRangeSc a = QTextLayout__FormatRange (CQTextLayout__FormatRangeSc a)
type TQTextLayout__FormatRangeSc a = TQTextLayout__FormatRange (CQTextLayout__FormatRangeSc a)
data CQTextLayout__FormatRangeSc a = CQTextLayout__FormatRangeSc

qCast_QTextLayout__FormatRange :: Object a -> IO (QTextLayout__FormatRange ())
qCast_QTextLayout__FormatRange _qobj
  = return (objectCast _qobj)

withQTextLayout__FormatRangeResult :: IO (Ptr (TQTextLayout__FormatRange a)) -> IO (QTextLayout__FormatRange a)
withQTextLayout__FormatRangeResult f
  = withObjectRefResult f

class QqCastList_QTextLayout__FormatRange a r where
  qcl_QTextLayout__FormatRange :: [QTextLayout__FormatRange ()] -> a -> r

instance QqCastList_QTextLayout__FormatRange (QTextLayout__FormatRange ()) [QTextLayout__FormatRange ()] where
  qcl_QTextLayout__FormatRange l x = reverse $ x:l

instance QqCastList_QTextLayout__FormatRange a r => QqCastList_QTextLayout__FormatRange (QTextLayout__FormatRange ()) (a -> r) where
  qcl_QTextLayout__FormatRange l x sx = qcl_QTextLayout__FormatRange (x:l) sx

qCastList_QTextLayout__FormatRange x = qcl_QTextLayout__FormatRange [] x

type QTableWidgetSelectionRange a = Object (CQTableWidgetSelectionRange a)
type TQTableWidgetSelectionRange a = CQTableWidgetSelectionRange a
data CQTableWidgetSelectionRange a = CQTableWidgetSelectionRange

type QTableWidgetSelectionRangeSc a = QTableWidgetSelectionRange (CQTableWidgetSelectionRangeSc a)
type TQTableWidgetSelectionRangeSc a = TQTableWidgetSelectionRange (CQTableWidgetSelectionRangeSc a)
data CQTableWidgetSelectionRangeSc a = CQTableWidgetSelectionRangeSc

qCast_QTableWidgetSelectionRange :: Object a -> IO (QTableWidgetSelectionRange ())
qCast_QTableWidgetSelectionRange _qobj
  = return (objectCast _qobj)

withQTableWidgetSelectionRangeResult :: IO (Ptr (TQTableWidgetSelectionRange a)) -> IO (QTableWidgetSelectionRange a)
withQTableWidgetSelectionRangeResult f
  = withObjectResult qtc_QTableWidgetSelectionRange_getFinalizer f

foreign import ccall qtc_QTableWidgetSelectionRange_getFinalizer :: FunPtr (Ptr (TQTableWidgetSelectionRange a) -> IO ())

qTableWidgetSelectionRangeAddFinalizer :: QTableWidgetSelectionRange a -> IO ()
qTableWidgetSelectionRangeAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTableWidgetSelectionRange_getFinalizer fp

class QqCastList_QTableWidgetSelectionRange a r where
  qcl_QTableWidgetSelectionRange :: [QTableWidgetSelectionRange ()] -> a -> r

instance QqCastList_QTableWidgetSelectionRange (QTableWidgetSelectionRange ()) [QTableWidgetSelectionRange ()] where
  qcl_QTableWidgetSelectionRange l x = reverse $ x:l

instance QqCastList_QTableWidgetSelectionRange a r => QqCastList_QTableWidgetSelectionRange (QTableWidgetSelectionRange ()) (a -> r) where
  qcl_QTableWidgetSelectionRange l x sx = qcl_QTableWidgetSelectionRange (x:l) sx

qCastList_QTableWidgetSelectionRange x = qcl_QTableWidgetSelectionRange [] x

type QTextDocumentFragment a = Object (CQTextDocumentFragment a)
type TQTextDocumentFragment a = CQTextDocumentFragment a
data CQTextDocumentFragment a = CQTextDocumentFragment

type QTextDocumentFragmentSc a = QTextDocumentFragment (CQTextDocumentFragmentSc a)
type TQTextDocumentFragmentSc a = TQTextDocumentFragment (CQTextDocumentFragmentSc a)
data CQTextDocumentFragmentSc a = CQTextDocumentFragmentSc

qCast_QTextDocumentFragment :: Object a -> IO (QTextDocumentFragment ())
qCast_QTextDocumentFragment _qobj
  = return (objectCast _qobj)

withQTextDocumentFragmentResult :: IO (Ptr (TQTextDocumentFragment a)) -> IO (QTextDocumentFragment a)
withQTextDocumentFragmentResult f
  = withObjectResult qtc_QTextDocumentFragment_getFinalizer f

foreign import ccall qtc_QTextDocumentFragment_getFinalizer :: FunPtr (Ptr (TQTextDocumentFragment a) -> IO ())

qTextDocumentFragmentAddFinalizer :: QTextDocumentFragment a -> IO ()
qTextDocumentFragmentAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextDocumentFragment_getFinalizer fp

class QqCastList_QTextDocumentFragment a r where
  qcl_QTextDocumentFragment :: [QTextDocumentFragment ()] -> a -> r

instance QqCastList_QTextDocumentFragment (QTextDocumentFragment ()) [QTextDocumentFragment ()] where
  qcl_QTextDocumentFragment l x = reverse $ x:l

instance QqCastList_QTextDocumentFragment a r => QqCastList_QTextDocumentFragment (QTextDocumentFragment ()) (a -> r) where
  qcl_QTextDocumentFragment l x sx = qcl_QTextDocumentFragment (x:l) sx

qCastList_QTextDocumentFragment x = qcl_QTextDocumentFragment [] x

type QPainter a = Object (CQPainter a)
type TQPainter a = CQPainter a
data CQPainter a = CQPainter

type QPainterSc a = QPainter (CQPainterSc a)
type TQPainterSc a = TQPainter (CQPainterSc a)
data CQPainterSc a = CQPainterSc

qCast_QPainter :: Object a -> IO (QPainter ())
qCast_QPainter _qobj
  = return (objectCast _qobj)

withQPainterResult :: IO (Ptr (TQPainter a)) -> IO (QPainter a)
withQPainterResult f
  = withObjectResult qtc_QPainter_getFinalizer f

foreign import ccall qtc_QPainter_getFinalizer :: FunPtr (Ptr (TQPainter a) -> IO ())

qPainterAddFinalizer :: QPainter a -> IO ()
qPainterAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPainter_getFinalizer fp

class QqCastList_QPainter a r where
  qcl_QPainter :: [QPainter ()] -> a -> r

instance QqCastList_QPainter (QPainter ()) [QPainter ()] where
  qcl_QPainter l x = reverse $ x:l

instance QqCastList_QPainter a r => QqCastList_QPainter (QPainter ()) (a -> r) where
  qcl_QPainter l x sx = qcl_QPainter (x:l) sx

qCastList_QPainter x = qcl_QPainter [] x

type QFontDatabase a = Object (CQFontDatabase a)
type TQFontDatabase a = CQFontDatabase a
data CQFontDatabase a = CQFontDatabase

type QFontDatabaseSc a = QFontDatabase (CQFontDatabaseSc a)
type TQFontDatabaseSc a = TQFontDatabase (CQFontDatabaseSc a)
data CQFontDatabaseSc a = CQFontDatabaseSc

qCast_QFontDatabase :: Object a -> IO (QFontDatabase ())
qCast_QFontDatabase _qobj
  = return (objectCast _qobj)

withQFontDatabaseResult :: IO (Ptr (TQFontDatabase a)) -> IO (QFontDatabase a)
withQFontDatabaseResult f
  = withObjectResult qtc_QFontDatabase_getFinalizer f

foreign import ccall qtc_QFontDatabase_getFinalizer :: FunPtr (Ptr (TQFontDatabase a) -> IO ())

qFontDatabaseAddFinalizer :: QFontDatabase a -> IO ()
qFontDatabaseAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFontDatabase_getFinalizer fp

class QqCastList_QFontDatabase a r where
  qcl_QFontDatabase :: [QFontDatabase ()] -> a -> r

instance QqCastList_QFontDatabase (QFontDatabase ()) [QFontDatabase ()] where
  qcl_QFontDatabase l x = reverse $ x:l

instance QqCastList_QFontDatabase a r => QqCastList_QFontDatabase (QFontDatabase ()) (a -> r) where
  qcl_QFontDatabase l x sx = qcl_QFontDatabase (x:l) sx

qCastList_QFontDatabase x = qcl_QFontDatabase [] x

type QCursor a = Object (CQCursor a)
type TQCursor a = CQCursor a
data CQCursor a = CQCursor

type QCursorSc a = QCursor (CQCursorSc a)
type TQCursorSc a = TQCursor (CQCursorSc a)
data CQCursorSc a = CQCursorSc

qCast_QCursor :: Object a -> IO (QCursor ())
qCast_QCursor _qobj
  = return (objectCast _qobj)

withQCursorResult :: IO (Ptr (TQCursor a)) -> IO (QCursor a)
withQCursorResult f
  = withObjectResult qtc_QCursor_getFinalizer f

foreign import ccall qtc_QCursor_getFinalizer :: FunPtr (Ptr (TQCursor a) -> IO ())

qCursorAddFinalizer :: QCursor a -> IO ()
qCursorAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QCursor_getFinalizer fp

class QqCastList_QCursor a r where
  qcl_QCursor :: [QCursor ()] -> a -> r

instance QqCastList_QCursor (QCursor ()) [QCursor ()] where
  qcl_QCursor l x = reverse $ x:l

instance QqCastList_QCursor a r => QqCastList_QCursor (QCursor ()) (a -> r) where
  qcl_QCursor l x sx = qcl_QCursor (x:l) sx

qCastList_QCursor x = qcl_QCursor [] x

type QTextLine a = Object (CQTextLine a)
type TQTextLine a = CQTextLine a
data CQTextLine a = CQTextLine

type QTextLineSc a = QTextLine (CQTextLineSc a)
type TQTextLineSc a = TQTextLine (CQTextLineSc a)
data CQTextLineSc a = CQTextLineSc

qCast_QTextLine :: Object a -> IO (QTextLine ())
qCast_QTextLine _qobj
  = return (objectCast _qobj)

withQTextLineResult :: IO (Ptr (TQTextLine a)) -> IO (QTextLine a)
withQTextLineResult f
  = withObjectResult qtc_QTextLine_getFinalizer f

foreign import ccall qtc_QTextLine_getFinalizer :: FunPtr (Ptr (TQTextLine a) -> IO ())

qTextLineAddFinalizer :: QTextLine a -> IO ()
qTextLineAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextLine_getFinalizer fp

class QqCastList_QTextLine a r where
  qcl_QTextLine :: [QTextLine ()] -> a -> r

instance QqCastList_QTextLine (QTextLine ()) [QTextLine ()] where
  qcl_QTextLine l x = reverse $ x:l

instance QqCastList_QTextLine a r => QqCastList_QTextLine (QTextLine ()) (a -> r) where
  qcl_QTextLine l x sx = qcl_QTextLine (x:l) sx

qCastList_QTextLine x = qcl_QTextLine [] x

type QPrintEngine a = Object (CQPrintEngine a)
type TQPrintEngine a = CQPrintEngine a
data CQPrintEngine a = CQPrintEngine

type QPrintEngineSc a = QPrintEngine (CQPrintEngineSc a)
type TQPrintEngineSc a = TQPrintEngine (CQPrintEngineSc a)
data CQPrintEngineSc a = CQPrintEngineSc

qCast_QPrintEngine :: Object a -> IO (QPrintEngine ())
qCast_QPrintEngine _qobj
  = return (objectCast _qobj)

withQPrintEngineResult :: IO (Ptr (TQPrintEngine a)) -> IO (QPrintEngine a)
withQPrintEngineResult f
  = withObjectRefResult f

class QqCastList_QPrintEngine a r where
  qcl_QPrintEngine :: [QPrintEngine ()] -> a -> r

instance QqCastList_QPrintEngine (QPrintEngine ()) [QPrintEngine ()] where
  qcl_QPrintEngine l x = reverse $ x:l

instance QqCastList_QPrintEngine a r => QqCastList_QPrintEngine (QPrintEngine ()) (a -> r) where
  qcl_QPrintEngine l x sx = qcl_QPrintEngine (x:l) sx

qCastList_QPrintEngine x = qcl_QPrintEngine [] x

type QColormap a = Object (CQColormap a)
type TQColormap a = CQColormap a
data CQColormap a = CQColormap

type QColormapSc a = QColormap (CQColormapSc a)
type TQColormapSc a = TQColormap (CQColormapSc a)
data CQColormapSc a = CQColormapSc

qCast_QColormap :: Object a -> IO (QColormap ())
qCast_QColormap _qobj
  = return (objectCast _qobj)

withQColormapResult :: IO (Ptr (TQColormap a)) -> IO (QColormap a)
withQColormapResult f
  = withObjectResult qtc_QColormap_getFinalizer f

foreign import ccall qtc_QColormap_getFinalizer :: FunPtr (Ptr (TQColormap a) -> IO ())

qColormapAddFinalizer :: QColormap a -> IO ()
qColormapAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QColormap_getFinalizer fp

class QqCastList_QColormap a r where
  qcl_QColormap :: [QColormap ()] -> a -> r

instance QqCastList_QColormap (QColormap ()) [QColormap ()] where
  qcl_QColormap l x = reverse $ x:l

instance QqCastList_QColormap a r => QqCastList_QColormap (QColormap ()) (a -> r) where
  qcl_QColormap l x sx = qcl_QColormap (x:l) sx

qCastList_QColormap x = qcl_QColormap [] x

type QPaintEngine a = Object (CQPaintEngine a)
type TQPaintEngine a = CQPaintEngine a
data CQPaintEngine a = CQPaintEngine

type QPaintEngineSc a = QPaintEngine (CQPaintEngineSc a)
type TQPaintEngineSc a = TQPaintEngine (CQPaintEngineSc a)
data CQPaintEngineSc a = CQPaintEngineSc

qCast_QPaintEngine :: Object a -> IO (QPaintEngine ())
qCast_QPaintEngine _qobj
  = return (objectCast _qobj)

withQPaintEngineResult :: IO (Ptr (TQPaintEngine a)) -> IO (QPaintEngine a)
withQPaintEngineResult f
  = withObjectRefResult f

class QqCastList_QPaintEngine a r where
  qcl_QPaintEngine :: [QPaintEngine ()] -> a -> r

instance QqCastList_QPaintEngine (QPaintEngine ()) [QPaintEngine ()] where
  qcl_QPaintEngine l x = reverse $ x:l

instance QqCastList_QPaintEngine a r => QqCastList_QPaintEngine (QPaintEngine ()) (a -> r) where
  qcl_QPaintEngine l x sx = qcl_QPaintEngine (x:l) sx

qCastList_QPaintEngine x = qcl_QPaintEngine [] x

type QKeySequence a = Object (CQKeySequence a)
type TQKeySequence a = CQKeySequence a
data CQKeySequence a = CQKeySequence

type QKeySequenceSc a = QKeySequence (CQKeySequenceSc a)
type TQKeySequenceSc a = TQKeySequence (CQKeySequenceSc a)
data CQKeySequenceSc a = CQKeySequenceSc

qCast_QKeySequence :: Object a -> IO (QKeySequence ())
qCast_QKeySequence _qobj
  = return (objectCast _qobj)

withQKeySequenceResult :: IO (Ptr (TQKeySequence a)) -> IO (QKeySequence a)
withQKeySequenceResult f
  = withObjectResult qtc_QKeySequence_getFinalizer f

foreign import ccall qtc_QKeySequence_getFinalizer :: FunPtr (Ptr (TQKeySequence a) -> IO ())

qKeySequenceAddFinalizer :: QKeySequence a -> IO ()
qKeySequenceAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QKeySequence_getFinalizer fp

class QqCastList_QKeySequence a r where
  qcl_QKeySequence :: [QKeySequence ()] -> a -> r

instance QqCastList_QKeySequence (QKeySequence ()) [QKeySequence ()] where
  qcl_QKeySequence l x = reverse $ x:l

instance QqCastList_QKeySequence a r => QqCastList_QKeySequence (QKeySequence ()) (a -> r) where
  qcl_QKeySequence l x sx = qcl_QKeySequence (x:l) sx

qCastList_QKeySequence x = qcl_QKeySequence [] x

type QTreeWidgetItem a = Object (CQTreeWidgetItem a)
type TQTreeWidgetItem a = CQTreeWidgetItem a
data CQTreeWidgetItem a = CQTreeWidgetItem

type QTreeWidgetItemSc a = QTreeWidgetItem (CQTreeWidgetItemSc a)
type TQTreeWidgetItemSc a = TQTreeWidgetItem (CQTreeWidgetItemSc a)
data CQTreeWidgetItemSc a = CQTreeWidgetItemSc

qCast_QTreeWidgetItem :: Object a -> IO (QTreeWidgetItem ())
qCast_QTreeWidgetItem _qobj
  = return (objectCast _qobj)

withQTreeWidgetItemResult :: IO (Ptr (TQTreeWidgetItem a)) -> IO (QTreeWidgetItem a)
withQTreeWidgetItemResult f
  = withObjectResult qtc_QTreeWidgetItem_getFinalizer f

foreign import ccall qtc_QTreeWidgetItem_getFinalizer :: FunPtr (Ptr (TQTreeWidgetItem a) -> IO ())

qTreeWidgetItemAddFinalizer :: QTreeWidgetItem a -> IO ()
qTreeWidgetItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTreeWidgetItem_getFinalizer fp

foreign import ccall qtc_QTreeWidgetItem_getFinalizer1 :: FunPtr (Ptr (TQTreeWidgetItem a) -> IO ())

qTreeWidgetItemAddFinalizer1 :: QTreeWidgetItem a -> IO ()
qTreeWidgetItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QTreeWidgetItem_getFinalizer1 fp

class QqCastList_QTreeWidgetItem a r where
  qcl_QTreeWidgetItem :: [QTreeWidgetItem ()] -> a -> r

instance QqCastList_QTreeWidgetItem (QTreeWidgetItem ()) [QTreeWidgetItem ()] where
  qcl_QTreeWidgetItem l x = reverse $ x:l

instance QqCastList_QTreeWidgetItem a r => QqCastList_QTreeWidgetItem (QTreeWidgetItem ()) (a -> r) where
  qcl_QTreeWidgetItem l x sx = qcl_QTreeWidgetItem (x:l) sx

qCastList_QTreeWidgetItem x = qcl_QTreeWidgetItem [] x

type QStandardItem a = Object (CQStandardItem a)
type TQStandardItem a = CQStandardItem a
data CQStandardItem a = CQStandardItem

type QStandardItemSc a = QStandardItem (CQStandardItemSc a)
type TQStandardItemSc a = TQStandardItem (CQStandardItemSc a)
data CQStandardItemSc a = CQStandardItemSc

qCast_QStandardItem :: Object a -> IO (QStandardItem ())
qCast_QStandardItem _qobj
  = return (objectCast _qobj)

withQStandardItemResult :: IO (Ptr (TQStandardItem a)) -> IO (QStandardItem a)
withQStandardItemResult f
  = withObjectResult qtc_QStandardItem_getFinalizer f

foreign import ccall qtc_QStandardItem_getFinalizer :: FunPtr (Ptr (TQStandardItem a) -> IO ())

qStandardItemAddFinalizer :: QStandardItem a -> IO ()
qStandardItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStandardItem_getFinalizer fp

foreign import ccall qtc_QStandardItem_getFinalizer1 :: FunPtr (Ptr (TQStandardItem a) -> IO ())

qStandardItemAddFinalizer1 :: QStandardItem a -> IO ()
qStandardItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QStandardItem_getFinalizer1 fp

class QqCastList_QStandardItem a r where
  qcl_QStandardItem :: [QStandardItem ()] -> a -> r

instance QqCastList_QStandardItem (QStandardItem ()) [QStandardItem ()] where
  qcl_QStandardItem l x = reverse $ x:l

instance QqCastList_QStandardItem a r => QqCastList_QStandardItem (QStandardItem ()) (a -> r) where
  qcl_QStandardItem l x sx = qcl_QStandardItem (x:l) sx

qCastList_QStandardItem x = qcl_QStandardItem [] x

type QTextLength a = Object (CQTextLength a)
type TQTextLength a = CQTextLength a
data CQTextLength a = CQTextLength

type QTextLengthSc a = QTextLength (CQTextLengthSc a)
type TQTextLengthSc a = TQTextLength (CQTextLengthSc a)
data CQTextLengthSc a = CQTextLengthSc

qCast_QTextLength :: Object a -> IO (QTextLength ())
qCast_QTextLength _qobj
  = return (objectCast _qobj)

withQTextLengthResult :: IO (Ptr (TQTextLength a)) -> IO (QTextLength a)
withQTextLengthResult f
  = withObjectResult qtc_QTextLength_getFinalizer f

foreign import ccall qtc_QTextLength_getFinalizer :: FunPtr (Ptr (TQTextLength a) -> IO ())

qTextLengthAddFinalizer :: QTextLength a -> IO ()
qTextLengthAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextLength_getFinalizer fp

class QqCastList_QTextLength a r where
  qcl_QTextLength :: [QTextLength ()] -> a -> r

instance QqCastList_QTextLength (QTextLength ()) [QTextLength ()] where
  qcl_QTextLength l x = reverse $ x:l

instance QqCastList_QTextLength a r => QqCastList_QTextLength (QTextLength ()) (a -> r) where
  qcl_QTextLength l x sx = qcl_QTextLength (x:l) sx

qCastList_QTextLength x = qcl_QTextLength [] x

type QPalette a = Object (CQPalette a)
type TQPalette a = CQPalette a
data CQPalette a = CQPalette

type QPaletteSc a = QPalette (CQPaletteSc a)
type TQPaletteSc a = TQPalette (CQPaletteSc a)
data CQPaletteSc a = CQPaletteSc

qCast_QPalette :: Object a -> IO (QPalette ())
qCast_QPalette _qobj
  = return (objectCast _qobj)

withQPaletteResult :: IO (Ptr (TQPalette a)) -> IO (QPalette a)
withQPaletteResult f
  = withObjectResult qtc_QPalette_getFinalizer f

foreign import ccall qtc_QPalette_getFinalizer :: FunPtr (Ptr (TQPalette a) -> IO ())

qPaletteAddFinalizer :: QPalette a -> IO ()
qPaletteAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPalette_getFinalizer fp

class QqCastList_QPalette a r where
  qcl_QPalette :: [QPalette ()] -> a -> r

instance QqCastList_QPalette (QPalette ()) [QPalette ()] where
  qcl_QPalette l x = reverse $ x:l

instance QqCastList_QPalette a r => QqCastList_QPalette (QPalette ()) (a -> r) where
  qcl_QPalette l x sx = qcl_QPalette (x:l) sx

qCastList_QPalette x = qcl_QPalette [] x

type QFont a = Object (CQFont a)
type TQFont a = CQFont a
data CQFont a = CQFont

type QFontSc a = QFont (CQFontSc a)
type TQFontSc a = TQFont (CQFontSc a)
data CQFontSc a = CQFontSc

qCast_QFont :: Object a -> IO (QFont ())
qCast_QFont _qobj
  = return (objectCast _qobj)

withQFontResult :: IO (Ptr (TQFont a)) -> IO (QFont a)
withQFontResult f
  = withObjectResult qtc_QFont_getFinalizer f

foreign import ccall qtc_QFont_getFinalizer :: FunPtr (Ptr (TQFont a) -> IO ())

qFontAddFinalizer :: QFont a -> IO ()
qFontAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFont_getFinalizer fp

class QqCastList_QFont a r where
  qcl_QFont :: [QFont ()] -> a -> r

instance QqCastList_QFont (QFont ()) [QFont ()] where
  qcl_QFont l x = reverse $ x:l

instance QqCastList_QFont a r => QqCastList_QFont (QFont ()) (a -> r) where
  qcl_QFont l x sx = qcl_QFont (x:l) sx

qCastList_QFont x = qcl_QFont [] x

type QTextLayout a = Object (CQTextLayout a)
type TQTextLayout a = CQTextLayout a
data CQTextLayout a = CQTextLayout

type QTextLayoutSc a = QTextLayout (CQTextLayoutSc a)
type TQTextLayoutSc a = TQTextLayout (CQTextLayoutSc a)
data CQTextLayoutSc a = CQTextLayoutSc

qCast_QTextLayout :: Object a -> IO (QTextLayout ())
qCast_QTextLayout _qobj
  = return (objectCast _qobj)

withQTextLayoutResult :: IO (Ptr (TQTextLayout a)) -> IO (QTextLayout a)
withQTextLayoutResult f
  = withObjectResult qtc_QTextLayout_getFinalizer f

foreign import ccall qtc_QTextLayout_getFinalizer :: FunPtr (Ptr (TQTextLayout a) -> IO ())

qTextLayoutAddFinalizer :: QTextLayout a -> IO ()
qTextLayoutAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextLayout_getFinalizer fp

class QqCastList_QTextLayout a r where
  qcl_QTextLayout :: [QTextLayout ()] -> a -> r

instance QqCastList_QTextLayout (QTextLayout ()) [QTextLayout ()] where
  qcl_QTextLayout l x = reverse $ x:l

instance QqCastList_QTextLayout a r => QqCastList_QTextLayout (QTextLayout ()) (a -> r) where
  qcl_QTextLayout l x sx = qcl_QTextLayout (x:l) sx

qCastList_QTextLayout x = qcl_QTextLayout [] x

type QFontMetricsF a = Object (CQFontMetricsF a)
type TQFontMetricsF a = CQFontMetricsF a
data CQFontMetricsF a = CQFontMetricsF

type QFontMetricsFSc a = QFontMetricsF (CQFontMetricsFSc a)
type TQFontMetricsFSc a = TQFontMetricsF (CQFontMetricsFSc a)
data CQFontMetricsFSc a = CQFontMetricsFSc

qCast_QFontMetricsF :: Object a -> IO (QFontMetricsF ())
qCast_QFontMetricsF _qobj
  = return (objectCast _qobj)

withQFontMetricsFResult :: IO (Ptr (TQFontMetricsF a)) -> IO (QFontMetricsF a)
withQFontMetricsFResult f
  = withObjectResult qtc_QFontMetricsF_getFinalizer f

foreign import ccall qtc_QFontMetricsF_getFinalizer :: FunPtr (Ptr (TQFontMetricsF a) -> IO ())

qFontMetricsFAddFinalizer :: QFontMetricsF a -> IO ()
qFontMetricsFAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFontMetricsF_getFinalizer fp

class QqCastList_QFontMetricsF a r where
  qcl_QFontMetricsF :: [QFontMetricsF ()] -> a -> r

instance QqCastList_QFontMetricsF (QFontMetricsF ()) [QFontMetricsF ()] where
  qcl_QFontMetricsF l x = reverse $ x:l

instance QqCastList_QFontMetricsF a r => QqCastList_QFontMetricsF (QFontMetricsF ()) (a -> r) where
  qcl_QFontMetricsF l x sx = qcl_QFontMetricsF (x:l) sx

qCastList_QFontMetricsF x = qcl_QFontMetricsF [] x

type QPushButton a = QAbstractButton (CQPushButton a)
type TQPushButton a = TQAbstractButton (CQPushButton a)
data CQPushButton a = CQPushButton

type QPushButtonSc a = QPushButton (CQPushButtonSc a)
type TQPushButtonSc a = TQPushButton (CQPushButtonSc a)
data CQPushButtonSc a = CQPushButtonSc

qCast_QPushButton :: Object a -> IO (QPushButton ())
qCast_QPushButton _qobj
  = return (objectCast _qobj)

withQPushButtonResult :: IO (Ptr (TQPushButton a)) -> IO (QPushButton a)
withQPushButtonResult f
  = withObjectResult qtc_QPushButton_getFinalizer f

qPushButtonFromPtr :: Ptr (TQPushButton a) -> IO (QPushButton a)
qPushButtonFromPtr p
  = objectFromPtr qtc_QPushButton_getFinalizer p

withQListQPushButtonResult :: (Ptr (Ptr (TQPushButton a)) -> IO CInt) -> IO [QPushButton a]
withQListQPushButtonResult f
  = withQListObjectResult qtc_QPushButton_getFinalizer f

qPushButtonListFromPtrList :: [Ptr (TQPushButton a)] -> IO [QPushButton a]
qPushButtonListFromPtrList p
  = objectListFromPtrList qtc_QPushButton_getFinalizer p

foreign import ccall qtc_QPushButton_getFinalizer :: FunPtr (Ptr (TQPushButton a) -> IO ())

class QqCastList_QPushButton a r where
  qcl_QPushButton :: [QPushButton ()] -> a -> r

instance QqCastList_QPushButton (QPushButton ()) [QPushButton ()] where
  qcl_QPushButton l x = reverse $ x:l

instance QqCastList_QPushButton a r => QqCastList_QPushButton (QPushButton ()) (a -> r) where
  qcl_QPushButton l x sx = qcl_QPushButton (x:l) sx

qCastList_QPushButton x = qcl_QPushButton [] x

type QRadioButton a = QAbstractButton (CQRadioButton a)
type TQRadioButton a = TQAbstractButton (CQRadioButton a)
data CQRadioButton a = CQRadioButton

type QRadioButtonSc a = QRadioButton (CQRadioButtonSc a)
type TQRadioButtonSc a = TQRadioButton (CQRadioButtonSc a)
data CQRadioButtonSc a = CQRadioButtonSc

qCast_QRadioButton :: Object a -> IO (QRadioButton ())
qCast_QRadioButton _qobj
  = return (objectCast _qobj)

withQRadioButtonResult :: IO (Ptr (TQRadioButton a)) -> IO (QRadioButton a)
withQRadioButtonResult f
  = withObjectResult qtc_QRadioButton_getFinalizer f

qRadioButtonFromPtr :: Ptr (TQRadioButton a) -> IO (QRadioButton a)
qRadioButtonFromPtr p
  = objectFromPtr qtc_QRadioButton_getFinalizer p

withQListQRadioButtonResult :: (Ptr (Ptr (TQRadioButton a)) -> IO CInt) -> IO [QRadioButton a]
withQListQRadioButtonResult f
  = withQListObjectResult qtc_QRadioButton_getFinalizer f

qRadioButtonListFromPtrList :: [Ptr (TQRadioButton a)] -> IO [QRadioButton a]
qRadioButtonListFromPtrList p
  = objectListFromPtrList qtc_QRadioButton_getFinalizer p

foreign import ccall qtc_QRadioButton_getFinalizer :: FunPtr (Ptr (TQRadioButton a) -> IO ())

class QqCastList_QRadioButton a r where
  qcl_QRadioButton :: [QRadioButton ()] -> a -> r

instance QqCastList_QRadioButton (QRadioButton ()) [QRadioButton ()] where
  qcl_QRadioButton l x = reverse $ x:l

instance QqCastList_QRadioButton a r => QqCastList_QRadioButton (QRadioButton ()) (a -> r) where
  qcl_QRadioButton l x sx = qcl_QRadioButton (x:l) sx

qCastList_QRadioButton x = qcl_QRadioButton [] x

type QCheckBox a = QAbstractButton (CQCheckBox a)
type TQCheckBox a = TQAbstractButton (CQCheckBox a)
data CQCheckBox a = CQCheckBox

type QCheckBoxSc a = QCheckBox (CQCheckBoxSc a)
type TQCheckBoxSc a = TQCheckBox (CQCheckBoxSc a)
data CQCheckBoxSc a = CQCheckBoxSc

qCast_QCheckBox :: Object a -> IO (QCheckBox ())
qCast_QCheckBox _qobj
  = return (objectCast _qobj)

withQCheckBoxResult :: IO (Ptr (TQCheckBox a)) -> IO (QCheckBox a)
withQCheckBoxResult f
  = withObjectResult qtc_QCheckBox_getFinalizer f

qCheckBoxFromPtr :: Ptr (TQCheckBox a) -> IO (QCheckBox a)
qCheckBoxFromPtr p
  = objectFromPtr qtc_QCheckBox_getFinalizer p

withQListQCheckBoxResult :: (Ptr (Ptr (TQCheckBox a)) -> IO CInt) -> IO [QCheckBox a]
withQListQCheckBoxResult f
  = withQListObjectResult qtc_QCheckBox_getFinalizer f

qCheckBoxListFromPtrList :: [Ptr (TQCheckBox a)] -> IO [QCheckBox a]
qCheckBoxListFromPtrList p
  = objectListFromPtrList qtc_QCheckBox_getFinalizer p

foreign import ccall qtc_QCheckBox_getFinalizer :: FunPtr (Ptr (TQCheckBox a) -> IO ())

class QqCastList_QCheckBox a r where
  qcl_QCheckBox :: [QCheckBox ()] -> a -> r

instance QqCastList_QCheckBox (QCheckBox ()) [QCheckBox ()] where
  qcl_QCheckBox l x = reverse $ x:l

instance QqCastList_QCheckBox a r => QqCastList_QCheckBox (QCheckBox ()) (a -> r) where
  qcl_QCheckBox l x sx = qcl_QCheckBox (x:l) sx

qCastList_QCheckBox x = qcl_QCheckBox [] x

type QToolButton a = QAbstractButton (CQToolButton a)
type TQToolButton a = TQAbstractButton (CQToolButton a)
data CQToolButton a = CQToolButton

type QToolButtonSc a = QToolButton (CQToolButtonSc a)
type TQToolButtonSc a = TQToolButton (CQToolButtonSc a)
data CQToolButtonSc a = CQToolButtonSc

qCast_QToolButton :: Object a -> IO (QToolButton ())
qCast_QToolButton _qobj
  = return (objectCast _qobj)

withQToolButtonResult :: IO (Ptr (TQToolButton a)) -> IO (QToolButton a)
withQToolButtonResult f
  = withObjectResult qtc_QToolButton_getFinalizer f

qToolButtonFromPtr :: Ptr (TQToolButton a) -> IO (QToolButton a)
qToolButtonFromPtr p
  = objectFromPtr qtc_QToolButton_getFinalizer p

withQListQToolButtonResult :: (Ptr (Ptr (TQToolButton a)) -> IO CInt) -> IO [QToolButton a]
withQListQToolButtonResult f
  = withQListObjectResult qtc_QToolButton_getFinalizer f

qToolButtonListFromPtrList :: [Ptr (TQToolButton a)] -> IO [QToolButton a]
qToolButtonListFromPtrList p
  = objectListFromPtrList qtc_QToolButton_getFinalizer p

foreign import ccall qtc_QToolButton_getFinalizer :: FunPtr (Ptr (TQToolButton a) -> IO ())

class QqCastList_QToolButton a r where
  qcl_QToolButton :: [QToolButton ()] -> a -> r

instance QqCastList_QToolButton (QToolButton ()) [QToolButton ()] where
  qcl_QToolButton l x = reverse $ x:l

instance QqCastList_QToolButton a r => QqCastList_QToolButton (QToolButton ()) (a -> r) where
  qcl_QToolButton l x sx = qcl_QToolButton (x:l) sx

qCastList_QToolButton x = qcl_QToolButton [] x

type QGraphicsEllipseItem a = QAbstractGraphicsShapeItem (CQGraphicsEllipseItem a)
type TQGraphicsEllipseItem a = TQAbstractGraphicsShapeItem (CQGraphicsEllipseItem a)
data CQGraphicsEllipseItem a = CQGraphicsEllipseItem

type QGraphicsEllipseItemSc a = QGraphicsEllipseItem (CQGraphicsEllipseItemSc a)
type TQGraphicsEllipseItemSc a = TQGraphicsEllipseItem (CQGraphicsEllipseItemSc a)
data CQGraphicsEllipseItemSc a = CQGraphicsEllipseItemSc

qCast_QGraphicsEllipseItem :: Object a -> IO (QGraphicsEllipseItem ())
qCast_QGraphicsEllipseItem _qobj
  = return (objectCast _qobj)

withQGraphicsEllipseItemResult :: IO (Ptr (TQGraphicsEllipseItem a)) -> IO (QGraphicsEllipseItem a)
withQGraphicsEllipseItemResult f
  = withObjectResult qtc_QGraphicsEllipseItem_getFinalizer f

foreign import ccall qtc_QGraphicsEllipseItem_getFinalizer :: FunPtr (Ptr (TQGraphicsEllipseItem a) -> IO ())

qGraphicsEllipseItemAddFinalizer :: QGraphicsEllipseItem a -> IO ()
qGraphicsEllipseItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsEllipseItem_getFinalizer fp

foreign import ccall qtc_QGraphicsEllipseItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsEllipseItem a) -> IO ())

qGraphicsEllipseItemAddFinalizer1 :: QGraphicsEllipseItem a -> IO ()
qGraphicsEllipseItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsEllipseItem_getFinalizer1 fp

class QqCastList_QGraphicsEllipseItem a r where
  qcl_QGraphicsEllipseItem :: [QGraphicsEllipseItem ()] -> a -> r

instance QqCastList_QGraphicsEllipseItem (QGraphicsEllipseItem ()) [QGraphicsEllipseItem ()] where
  qcl_QGraphicsEllipseItem l x = reverse $ x:l

instance QqCastList_QGraphicsEllipseItem a r => QqCastList_QGraphicsEllipseItem (QGraphicsEllipseItem ()) (a -> r) where
  qcl_QGraphicsEllipseItem l x sx = qcl_QGraphicsEllipseItem (x:l) sx

qCastList_QGraphicsEllipseItem x = qcl_QGraphicsEllipseItem [] x

type QGraphicsSimpleTextItem a = QAbstractGraphicsShapeItem (CQGraphicsSimpleTextItem a)
type TQGraphicsSimpleTextItem a = TQAbstractGraphicsShapeItem (CQGraphicsSimpleTextItem a)
data CQGraphicsSimpleTextItem a = CQGraphicsSimpleTextItem

type QGraphicsSimpleTextItemSc a = QGraphicsSimpleTextItem (CQGraphicsSimpleTextItemSc a)
type TQGraphicsSimpleTextItemSc a = TQGraphicsSimpleTextItem (CQGraphicsSimpleTextItemSc a)
data CQGraphicsSimpleTextItemSc a = CQGraphicsSimpleTextItemSc

qCast_QGraphicsSimpleTextItem :: Object a -> IO (QGraphicsSimpleTextItem ())
qCast_QGraphicsSimpleTextItem _qobj
  = return (objectCast _qobj)

withQGraphicsSimpleTextItemResult :: IO (Ptr (TQGraphicsSimpleTextItem a)) -> IO (QGraphicsSimpleTextItem a)
withQGraphicsSimpleTextItemResult f
  = withObjectResult qtc_QGraphicsSimpleTextItem_getFinalizer f

foreign import ccall qtc_QGraphicsSimpleTextItem_getFinalizer :: FunPtr (Ptr (TQGraphicsSimpleTextItem a) -> IO ())

qGraphicsSimpleTextItemAddFinalizer :: QGraphicsSimpleTextItem a -> IO ()
qGraphicsSimpleTextItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSimpleTextItem_getFinalizer fp

foreign import ccall qtc_QGraphicsSimpleTextItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsSimpleTextItem a) -> IO ())

qGraphicsSimpleTextItemAddFinalizer1 :: QGraphicsSimpleTextItem a -> IO ()
qGraphicsSimpleTextItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSimpleTextItem_getFinalizer1 fp

class QqCastList_QGraphicsSimpleTextItem a r where
  qcl_QGraphicsSimpleTextItem :: [QGraphicsSimpleTextItem ()] -> a -> r

instance QqCastList_QGraphicsSimpleTextItem (QGraphicsSimpleTextItem ()) [QGraphicsSimpleTextItem ()] where
  qcl_QGraphicsSimpleTextItem l x = reverse $ x:l

instance QqCastList_QGraphicsSimpleTextItem a r => QqCastList_QGraphicsSimpleTextItem (QGraphicsSimpleTextItem ()) (a -> r) where
  qcl_QGraphicsSimpleTextItem l x sx = qcl_QGraphicsSimpleTextItem (x:l) sx

qCastList_QGraphicsSimpleTextItem x = qcl_QGraphicsSimpleTextItem [] x

type QGraphicsRectItem a = QAbstractGraphicsShapeItem (CQGraphicsRectItem a)
type TQGraphicsRectItem a = TQAbstractGraphicsShapeItem (CQGraphicsRectItem a)
data CQGraphicsRectItem a = CQGraphicsRectItem

type QGraphicsRectItemSc a = QGraphicsRectItem (CQGraphicsRectItemSc a)
type TQGraphicsRectItemSc a = TQGraphicsRectItem (CQGraphicsRectItemSc a)
data CQGraphicsRectItemSc a = CQGraphicsRectItemSc

qCast_QGraphicsRectItem :: Object a -> IO (QGraphicsRectItem ())
qCast_QGraphicsRectItem _qobj
  = return (objectCast _qobj)

withQGraphicsRectItemResult :: IO (Ptr (TQGraphicsRectItem a)) -> IO (QGraphicsRectItem a)
withQGraphicsRectItemResult f
  = withObjectResult qtc_QGraphicsRectItem_getFinalizer f

foreign import ccall qtc_QGraphicsRectItem_getFinalizer :: FunPtr (Ptr (TQGraphicsRectItem a) -> IO ())

qGraphicsRectItemAddFinalizer :: QGraphicsRectItem a -> IO ()
qGraphicsRectItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsRectItem_getFinalizer fp

foreign import ccall qtc_QGraphicsRectItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsRectItem a) -> IO ())

qGraphicsRectItemAddFinalizer1 :: QGraphicsRectItem a -> IO ()
qGraphicsRectItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsRectItem_getFinalizer1 fp

class QqCastList_QGraphicsRectItem a r where
  qcl_QGraphicsRectItem :: [QGraphicsRectItem ()] -> a -> r

instance QqCastList_QGraphicsRectItem (QGraphicsRectItem ()) [QGraphicsRectItem ()] where
  qcl_QGraphicsRectItem l x = reverse $ x:l

instance QqCastList_QGraphicsRectItem a r => QqCastList_QGraphicsRectItem (QGraphicsRectItem ()) (a -> r) where
  qcl_QGraphicsRectItem l x sx = qcl_QGraphicsRectItem (x:l) sx

qCastList_QGraphicsRectItem x = qcl_QGraphicsRectItem [] x

type QGraphicsPathItem a = QAbstractGraphicsShapeItem (CQGraphicsPathItem a)
type TQGraphicsPathItem a = TQAbstractGraphicsShapeItem (CQGraphicsPathItem a)
data CQGraphicsPathItem a = CQGraphicsPathItem

type QGraphicsPathItemSc a = QGraphicsPathItem (CQGraphicsPathItemSc a)
type TQGraphicsPathItemSc a = TQGraphicsPathItem (CQGraphicsPathItemSc a)
data CQGraphicsPathItemSc a = CQGraphicsPathItemSc

qCast_QGraphicsPathItem :: Object a -> IO (QGraphicsPathItem ())
qCast_QGraphicsPathItem _qobj
  = return (objectCast _qobj)

withQGraphicsPathItemResult :: IO (Ptr (TQGraphicsPathItem a)) -> IO (QGraphicsPathItem a)
withQGraphicsPathItemResult f
  = withObjectResult qtc_QGraphicsPathItem_getFinalizer f

foreign import ccall qtc_QGraphicsPathItem_getFinalizer :: FunPtr (Ptr (TQGraphicsPathItem a) -> IO ())

qGraphicsPathItemAddFinalizer :: QGraphicsPathItem a -> IO ()
qGraphicsPathItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPathItem_getFinalizer fp

foreign import ccall qtc_QGraphicsPathItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsPathItem a) -> IO ())

qGraphicsPathItemAddFinalizer1 :: QGraphicsPathItem a -> IO ()
qGraphicsPathItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPathItem_getFinalizer1 fp

class QqCastList_QGraphicsPathItem a r where
  qcl_QGraphicsPathItem :: [QGraphicsPathItem ()] -> a -> r

instance QqCastList_QGraphicsPathItem (QGraphicsPathItem ()) [QGraphicsPathItem ()] where
  qcl_QGraphicsPathItem l x = reverse $ x:l

instance QqCastList_QGraphicsPathItem a r => QqCastList_QGraphicsPathItem (QGraphicsPathItem ()) (a -> r) where
  qcl_QGraphicsPathItem l x sx = qcl_QGraphicsPathItem (x:l) sx

qCastList_QGraphicsPathItem x = qcl_QGraphicsPathItem [] x

type QGraphicsPolygonItem a = QAbstractGraphicsShapeItem (CQGraphicsPolygonItem a)
type TQGraphicsPolygonItem a = TQAbstractGraphicsShapeItem (CQGraphicsPolygonItem a)
data CQGraphicsPolygonItem a = CQGraphicsPolygonItem

type QGraphicsPolygonItemSc a = QGraphicsPolygonItem (CQGraphicsPolygonItemSc a)
type TQGraphicsPolygonItemSc a = TQGraphicsPolygonItem (CQGraphicsPolygonItemSc a)
data CQGraphicsPolygonItemSc a = CQGraphicsPolygonItemSc

qCast_QGraphicsPolygonItem :: Object a -> IO (QGraphicsPolygonItem ())
qCast_QGraphicsPolygonItem _qobj
  = return (objectCast _qobj)

withQGraphicsPolygonItemResult :: IO (Ptr (TQGraphicsPolygonItem a)) -> IO (QGraphicsPolygonItem a)
withQGraphicsPolygonItemResult f
  = withObjectResult qtc_QGraphicsPolygonItem_getFinalizer f

foreign import ccall qtc_QGraphicsPolygonItem_getFinalizer :: FunPtr (Ptr (TQGraphicsPolygonItem a) -> IO ())

qGraphicsPolygonItemAddFinalizer :: QGraphicsPolygonItem a -> IO ()
qGraphicsPolygonItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPolygonItem_getFinalizer fp

foreign import ccall qtc_QGraphicsPolygonItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsPolygonItem a) -> IO ())

qGraphicsPolygonItemAddFinalizer1 :: QGraphicsPolygonItem a -> IO ()
qGraphicsPolygonItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPolygonItem_getFinalizer1 fp

class QqCastList_QGraphicsPolygonItem a r where
  qcl_QGraphicsPolygonItem :: [QGraphicsPolygonItem ()] -> a -> r

instance QqCastList_QGraphicsPolygonItem (QGraphicsPolygonItem ()) [QGraphicsPolygonItem ()] where
  qcl_QGraphicsPolygonItem l x = reverse $ x:l

instance QqCastList_QGraphicsPolygonItem a r => QqCastList_QGraphicsPolygonItem (QGraphicsPolygonItem ()) (a -> r) where
  qcl_QGraphicsPolygonItem l x sx = qcl_QGraphicsPolygonItem (x:l) sx

qCastList_QGraphicsPolygonItem x = qcl_QGraphicsPolygonItem [] x

type QDirModel a = QAbstractItemModel (CQDirModel a)
type TQDirModel a = TQAbstractItemModel (CQDirModel a)
data CQDirModel a = CQDirModel

type QDirModelSc a = QDirModel (CQDirModelSc a)
type TQDirModelSc a = TQDirModel (CQDirModelSc a)
data CQDirModelSc a = CQDirModelSc

qCast_QDirModel :: Object a -> IO (QDirModel ())
qCast_QDirModel _qobj
  = return (objectCast _qobj)

withQDirModelResult :: IO (Ptr (TQDirModel a)) -> IO (QDirModel a)
withQDirModelResult f
  = withObjectResult qtc_QDirModel_getFinalizer f

qDirModelFromPtr :: Ptr (TQDirModel a) -> IO (QDirModel a)
qDirModelFromPtr p
  = objectFromPtr qtc_QDirModel_getFinalizer p

withQListQDirModelResult :: (Ptr (Ptr (TQDirModel a)) -> IO CInt) -> IO [QDirModel a]
withQListQDirModelResult f
  = withQListObjectResult qtc_QDirModel_getFinalizer f

qDirModelListFromPtrList :: [Ptr (TQDirModel a)] -> IO [QDirModel a]
qDirModelListFromPtrList p
  = objectListFromPtrList qtc_QDirModel_getFinalizer p

foreign import ccall qtc_QDirModel_getFinalizer :: FunPtr (Ptr (TQDirModel a) -> IO ())

class QqCastList_QDirModel a r where
  qcl_QDirModel :: [QDirModel ()] -> a -> r

instance QqCastList_QDirModel (QDirModel ()) [QDirModel ()] where
  qcl_QDirModel l x = reverse $ x:l

instance QqCastList_QDirModel a r => QqCastList_QDirModel (QDirModel ()) (a -> r) where
  qcl_QDirModel l x sx = qcl_QDirModel (x:l) sx

qCastList_QDirModel x = qcl_QDirModel [] x

type QStandardItemModel a = QAbstractItemModel (CQStandardItemModel a)
type TQStandardItemModel a = TQAbstractItemModel (CQStandardItemModel a)
data CQStandardItemModel a = CQStandardItemModel

type QStandardItemModelSc a = QStandardItemModel (CQStandardItemModelSc a)
type TQStandardItemModelSc a = TQStandardItemModel (CQStandardItemModelSc a)
data CQStandardItemModelSc a = CQStandardItemModelSc

qCast_QStandardItemModel :: Object a -> IO (QStandardItemModel ())
qCast_QStandardItemModel _qobj
  = return (objectCast _qobj)

withQStandardItemModelResult :: IO (Ptr (TQStandardItemModel a)) -> IO (QStandardItemModel a)
withQStandardItemModelResult f
  = withObjectResult qtc_QStandardItemModel_getFinalizer f

qStandardItemModelFromPtr :: Ptr (TQStandardItemModel a) -> IO (QStandardItemModel a)
qStandardItemModelFromPtr p
  = objectFromPtr qtc_QStandardItemModel_getFinalizer p

withQListQStandardItemModelResult :: (Ptr (Ptr (TQStandardItemModel a)) -> IO CInt) -> IO [QStandardItemModel a]
withQListQStandardItemModelResult f
  = withQListObjectResult qtc_QStandardItemModel_getFinalizer f

qStandardItemModelListFromPtrList :: [Ptr (TQStandardItemModel a)] -> IO [QStandardItemModel a]
qStandardItemModelListFromPtrList p
  = objectListFromPtrList qtc_QStandardItemModel_getFinalizer p

foreign import ccall qtc_QStandardItemModel_getFinalizer :: FunPtr (Ptr (TQStandardItemModel a) -> IO ())

class QqCastList_QStandardItemModel a r where
  qcl_QStandardItemModel :: [QStandardItemModel ()] -> a -> r

instance QqCastList_QStandardItemModel (QStandardItemModel ()) [QStandardItemModel ()] where
  qcl_QStandardItemModel l x = reverse $ x:l

instance QqCastList_QStandardItemModel a r => QqCastList_QStandardItemModel (QStandardItemModel ()) (a -> r) where
  qcl_QStandardItemModel l x sx = qcl_QStandardItemModel (x:l) sx

qCastList_QStandardItemModel x = qcl_QStandardItemModel [] x

type QAbstractProxyModel a = QAbstractItemModel (CQAbstractProxyModel a)
type TQAbstractProxyModel a = TQAbstractItemModel (CQAbstractProxyModel a)
data CQAbstractProxyModel a = CQAbstractProxyModel

type QAbstractProxyModelSc a = QAbstractProxyModel (CQAbstractProxyModelSc a)
type TQAbstractProxyModelSc a = TQAbstractProxyModel (CQAbstractProxyModelSc a)
data CQAbstractProxyModelSc a = CQAbstractProxyModelSc

qCast_QAbstractProxyModel :: Object a -> IO (QAbstractProxyModel ())
qCast_QAbstractProxyModel _qobj
  = return (objectCast _qobj)

withQAbstractProxyModelResult :: IO (Ptr (TQAbstractProxyModel a)) -> IO (QAbstractProxyModel a)
withQAbstractProxyModelResult f
  = withObjectRefResult f

qAbstractProxyModelFromPtr :: Ptr (TQAbstractProxyModel a) -> IO (QAbstractProxyModel a)
qAbstractProxyModelFromPtr p
  = objectFromPtr_nf p

withQListQAbstractProxyModelResult :: (Ptr (Ptr (TQAbstractProxyModel a)) -> IO CInt) -> IO [QAbstractProxyModel a]
withQListQAbstractProxyModelResult f
  = withQListObjectRefResult f

qAbstractProxyModelListFromPtrList :: [Ptr (TQAbstractProxyModel a)] -> IO [QAbstractProxyModel a]
qAbstractProxyModelListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractProxyModel a r where
  qcl_QAbstractProxyModel :: [QAbstractProxyModel ()] -> a -> r

instance QqCastList_QAbstractProxyModel (QAbstractProxyModel ()) [QAbstractProxyModel ()] where
  qcl_QAbstractProxyModel l x = reverse $ x:l

instance QqCastList_QAbstractProxyModel a r => QqCastList_QAbstractProxyModel (QAbstractProxyModel ()) (a -> r) where
  qcl_QAbstractProxyModel l x sx = qcl_QAbstractProxyModel (x:l) sx

qCastList_QAbstractProxyModel x = qcl_QAbstractProxyModel [] x

type QHeaderView a = QAbstractItemView (CQHeaderView a)
type TQHeaderView a = TQAbstractItemView (CQHeaderView a)
data CQHeaderView a = CQHeaderView

type QHeaderViewSc a = QHeaderView (CQHeaderViewSc a)
type TQHeaderViewSc a = TQHeaderView (CQHeaderViewSc a)
data CQHeaderViewSc a = CQHeaderViewSc

qCast_QHeaderView :: Object a -> IO (QHeaderView ())
qCast_QHeaderView _qobj
  = return (objectCast _qobj)

withQHeaderViewResult :: IO (Ptr (TQHeaderView a)) -> IO (QHeaderView a)
withQHeaderViewResult f
  = withObjectResult qtc_QHeaderView_getFinalizer f

qHeaderViewFromPtr :: Ptr (TQHeaderView a) -> IO (QHeaderView a)
qHeaderViewFromPtr p
  = objectFromPtr qtc_QHeaderView_getFinalizer p

withQListQHeaderViewResult :: (Ptr (Ptr (TQHeaderView a)) -> IO CInt) -> IO [QHeaderView a]
withQListQHeaderViewResult f
  = withQListObjectResult qtc_QHeaderView_getFinalizer f

qHeaderViewListFromPtrList :: [Ptr (TQHeaderView a)] -> IO [QHeaderView a]
qHeaderViewListFromPtrList p
  = objectListFromPtrList qtc_QHeaderView_getFinalizer p

foreign import ccall qtc_QHeaderView_getFinalizer :: FunPtr (Ptr (TQHeaderView a) -> IO ())

class QqCastList_QHeaderView a r where
  qcl_QHeaderView :: [QHeaderView ()] -> a -> r

instance QqCastList_QHeaderView (QHeaderView ()) [QHeaderView ()] where
  qcl_QHeaderView l x = reverse $ x:l

instance QqCastList_QHeaderView a r => QqCastList_QHeaderView (QHeaderView ()) (a -> r) where
  qcl_QHeaderView l x sx = qcl_QHeaderView (x:l) sx

qCastList_QHeaderView x = qcl_QHeaderView [] x

type QPrintDialog a = QAbstractPrintDialog (CQPrintDialog a)
type TQPrintDialog a = TQAbstractPrintDialog (CQPrintDialog a)
data CQPrintDialog a = CQPrintDialog

type QPrintDialogSc a = QPrintDialog (CQPrintDialogSc a)
type TQPrintDialogSc a = TQPrintDialog (CQPrintDialogSc a)
data CQPrintDialogSc a = CQPrintDialogSc

qCast_QPrintDialog :: Object a -> IO (QPrintDialog ())
qCast_QPrintDialog _qobj
  = return (objectCast _qobj)

withQPrintDialogResult :: IO (Ptr (TQPrintDialog a)) -> IO (QPrintDialog a)
withQPrintDialogResult f
  = withObjectResult qtc_QPrintDialog_getFinalizer f

qPrintDialogFromPtr :: Ptr (TQPrintDialog a) -> IO (QPrintDialog a)
qPrintDialogFromPtr p
  = objectFromPtr qtc_QPrintDialog_getFinalizer p

withQListQPrintDialogResult :: (Ptr (Ptr (TQPrintDialog a)) -> IO CInt) -> IO [QPrintDialog a]
withQListQPrintDialogResult f
  = withQListObjectResult qtc_QPrintDialog_getFinalizer f

qPrintDialogListFromPtrList :: [Ptr (TQPrintDialog a)] -> IO [QPrintDialog a]
qPrintDialogListFromPtrList p
  = objectListFromPtrList qtc_QPrintDialog_getFinalizer p

foreign import ccall qtc_QPrintDialog_getFinalizer :: FunPtr (Ptr (TQPrintDialog a) -> IO ())

class QqCastList_QPrintDialog a r where
  qcl_QPrintDialog :: [QPrintDialog ()] -> a -> r

instance QqCastList_QPrintDialog (QPrintDialog ()) [QPrintDialog ()] where
  qcl_QPrintDialog l x = reverse $ x:l

instance QqCastList_QPrintDialog a r => QqCastList_QPrintDialog (QPrintDialog ()) (a -> r) where
  qcl_QPrintDialog l x sx = qcl_QPrintDialog (x:l) sx

qCastList_QPrintDialog x = qcl_QPrintDialog [] x

type QSortFilterProxyModel a = QAbstractProxyModel (CQSortFilterProxyModel a)
type TQSortFilterProxyModel a = TQAbstractProxyModel (CQSortFilterProxyModel a)
data CQSortFilterProxyModel a = CQSortFilterProxyModel

type QSortFilterProxyModelSc a = QSortFilterProxyModel (CQSortFilterProxyModelSc a)
type TQSortFilterProxyModelSc a = TQSortFilterProxyModel (CQSortFilterProxyModelSc a)
data CQSortFilterProxyModelSc a = CQSortFilterProxyModelSc

qCast_QSortFilterProxyModel :: Object a -> IO (QSortFilterProxyModel ())
qCast_QSortFilterProxyModel _qobj
  = return (objectCast _qobj)

withQSortFilterProxyModelResult :: IO (Ptr (TQSortFilterProxyModel a)) -> IO (QSortFilterProxyModel a)
withQSortFilterProxyModelResult f
  = withObjectResult qtc_QSortFilterProxyModel_getFinalizer f

qSortFilterProxyModelFromPtr :: Ptr (TQSortFilterProxyModel a) -> IO (QSortFilterProxyModel a)
qSortFilterProxyModelFromPtr p
  = objectFromPtr qtc_QSortFilterProxyModel_getFinalizer p

withQListQSortFilterProxyModelResult :: (Ptr (Ptr (TQSortFilterProxyModel a)) -> IO CInt) -> IO [QSortFilterProxyModel a]
withQListQSortFilterProxyModelResult f
  = withQListObjectResult qtc_QSortFilterProxyModel_getFinalizer f

qSortFilterProxyModelListFromPtrList :: [Ptr (TQSortFilterProxyModel a)] -> IO [QSortFilterProxyModel a]
qSortFilterProxyModelListFromPtrList p
  = objectListFromPtrList qtc_QSortFilterProxyModel_getFinalizer p

foreign import ccall qtc_QSortFilterProxyModel_getFinalizer :: FunPtr (Ptr (TQSortFilterProxyModel a) -> IO ())

class QqCastList_QSortFilterProxyModel a r where
  qcl_QSortFilterProxyModel :: [QSortFilterProxyModel ()] -> a -> r

instance QqCastList_QSortFilterProxyModel (QSortFilterProxyModel ()) [QSortFilterProxyModel ()] where
  qcl_QSortFilterProxyModel l x = reverse $ x:l

instance QqCastList_QSortFilterProxyModel a r => QqCastList_QSortFilterProxyModel (QSortFilterProxyModel ()) (a -> r) where
  qcl_QSortFilterProxyModel l x sx = qcl_QSortFilterProxyModel (x:l) sx

qCastList_QSortFilterProxyModel x = qcl_QSortFilterProxyModel [] x

type QGraphicsView a = QAbstractScrollArea (CQGraphicsView a)
type TQGraphicsView a = TQAbstractScrollArea (CQGraphicsView a)
data CQGraphicsView a = CQGraphicsView

type QGraphicsViewSc a = QGraphicsView (CQGraphicsViewSc a)
type TQGraphicsViewSc a = TQGraphicsView (CQGraphicsViewSc a)
data CQGraphicsViewSc a = CQGraphicsViewSc

qCast_QGraphicsView :: Object a -> IO (QGraphicsView ())
qCast_QGraphicsView _qobj
  = return (objectCast _qobj)

withQGraphicsViewResult :: IO (Ptr (TQGraphicsView a)) -> IO (QGraphicsView a)
withQGraphicsViewResult f
  = withObjectResult qtc_QGraphicsView_getFinalizer f

qGraphicsViewFromPtr :: Ptr (TQGraphicsView a) -> IO (QGraphicsView a)
qGraphicsViewFromPtr p
  = objectFromPtr qtc_QGraphicsView_getFinalizer p

withQListQGraphicsViewResult :: (Ptr (Ptr (TQGraphicsView a)) -> IO CInt) -> IO [QGraphicsView a]
withQListQGraphicsViewResult f
  = withQListObjectResult qtc_QGraphicsView_getFinalizer f

qGraphicsViewListFromPtrList :: [Ptr (TQGraphicsView a)] -> IO [QGraphicsView a]
qGraphicsViewListFromPtrList p
  = objectListFromPtrList qtc_QGraphicsView_getFinalizer p

foreign import ccall qtc_QGraphicsView_getFinalizer :: FunPtr (Ptr (TQGraphicsView a) -> IO ())

class QqCastList_QGraphicsView a r where
  qcl_QGraphicsView :: [QGraphicsView ()] -> a -> r

instance QqCastList_QGraphicsView (QGraphicsView ()) [QGraphicsView ()] where
  qcl_QGraphicsView l x = reverse $ x:l

instance QqCastList_QGraphicsView a r => QqCastList_QGraphicsView (QGraphicsView ()) (a -> r) where
  qcl_QGraphicsView l x sx = qcl_QGraphicsView (x:l) sx

qCastList_QGraphicsView x = qcl_QGraphicsView [] x

type QScrollArea a = QAbstractScrollArea (CQScrollArea a)
type TQScrollArea a = TQAbstractScrollArea (CQScrollArea a)
data CQScrollArea a = CQScrollArea

type QScrollAreaSc a = QScrollArea (CQScrollAreaSc a)
type TQScrollAreaSc a = TQScrollArea (CQScrollAreaSc a)
data CQScrollAreaSc a = CQScrollAreaSc

qCast_QScrollArea :: Object a -> IO (QScrollArea ())
qCast_QScrollArea _qobj
  = return (objectCast _qobj)

withQScrollAreaResult :: IO (Ptr (TQScrollArea a)) -> IO (QScrollArea a)
withQScrollAreaResult f
  = withObjectResult qtc_QScrollArea_getFinalizer f

qScrollAreaFromPtr :: Ptr (TQScrollArea a) -> IO (QScrollArea a)
qScrollAreaFromPtr p
  = objectFromPtr qtc_QScrollArea_getFinalizer p

withQListQScrollAreaResult :: (Ptr (Ptr (TQScrollArea a)) -> IO CInt) -> IO [QScrollArea a]
withQListQScrollAreaResult f
  = withQListObjectResult qtc_QScrollArea_getFinalizer f

qScrollAreaListFromPtrList :: [Ptr (TQScrollArea a)] -> IO [QScrollArea a]
qScrollAreaListFromPtrList p
  = objectListFromPtrList qtc_QScrollArea_getFinalizer p

foreign import ccall qtc_QScrollArea_getFinalizer :: FunPtr (Ptr (TQScrollArea a) -> IO ())

class QqCastList_QScrollArea a r where
  qcl_QScrollArea :: [QScrollArea ()] -> a -> r

instance QqCastList_QScrollArea (QScrollArea ()) [QScrollArea ()] where
  qcl_QScrollArea l x = reverse $ x:l

instance QqCastList_QScrollArea a r => QqCastList_QScrollArea (QScrollArea ()) (a -> r) where
  qcl_QScrollArea l x sx = qcl_QScrollArea (x:l) sx

qCastList_QScrollArea x = qcl_QScrollArea [] x

type QSlider a = QAbstractSlider (CQSlider a)
type TQSlider a = TQAbstractSlider (CQSlider a)
data CQSlider a = CQSlider

type QSliderSc a = QSlider (CQSliderSc a)
type TQSliderSc a = TQSlider (CQSliderSc a)
data CQSliderSc a = CQSliderSc

qCast_QSlider :: Object a -> IO (QSlider ())
qCast_QSlider _qobj
  = return (objectCast _qobj)

withQSliderResult :: IO (Ptr (TQSlider a)) -> IO (QSlider a)
withQSliderResult f
  = withObjectResult qtc_QSlider_getFinalizer f

qSliderFromPtr :: Ptr (TQSlider a) -> IO (QSlider a)
qSliderFromPtr p
  = objectFromPtr qtc_QSlider_getFinalizer p

withQListQSliderResult :: (Ptr (Ptr (TQSlider a)) -> IO CInt) -> IO [QSlider a]
withQListQSliderResult f
  = withQListObjectResult qtc_QSlider_getFinalizer f

qSliderListFromPtrList :: [Ptr (TQSlider a)] -> IO [QSlider a]
qSliderListFromPtrList p
  = objectListFromPtrList qtc_QSlider_getFinalizer p

foreign import ccall qtc_QSlider_getFinalizer :: FunPtr (Ptr (TQSlider a) -> IO ())

class QqCastList_QSlider a r where
  qcl_QSlider :: [QSlider ()] -> a -> r

instance QqCastList_QSlider (QSlider ()) [QSlider ()] where
  qcl_QSlider l x = reverse $ x:l

instance QqCastList_QSlider a r => QqCastList_QSlider (QSlider ()) (a -> r) where
  qcl_QSlider l x sx = qcl_QSlider (x:l) sx

qCastList_QSlider x = qcl_QSlider [] x

type QDial a = QAbstractSlider (CQDial a)
type TQDial a = TQAbstractSlider (CQDial a)
data CQDial a = CQDial

type QDialSc a = QDial (CQDialSc a)
type TQDialSc a = TQDial (CQDialSc a)
data CQDialSc a = CQDialSc

qCast_QDial :: Object a -> IO (QDial ())
qCast_QDial _qobj
  = return (objectCast _qobj)

withQDialResult :: IO (Ptr (TQDial a)) -> IO (QDial a)
withQDialResult f
  = withObjectResult qtc_QDial_getFinalizer f

qDialFromPtr :: Ptr (TQDial a) -> IO (QDial a)
qDialFromPtr p
  = objectFromPtr qtc_QDial_getFinalizer p

withQListQDialResult :: (Ptr (Ptr (TQDial a)) -> IO CInt) -> IO [QDial a]
withQListQDialResult f
  = withQListObjectResult qtc_QDial_getFinalizer f

qDialListFromPtrList :: [Ptr (TQDial a)] -> IO [QDial a]
qDialListFromPtrList p
  = objectListFromPtrList qtc_QDial_getFinalizer p

foreign import ccall qtc_QDial_getFinalizer :: FunPtr (Ptr (TQDial a) -> IO ())

class QqCastList_QDial a r where
  qcl_QDial :: [QDial ()] -> a -> r

instance QqCastList_QDial (QDial ()) [QDial ()] where
  qcl_QDial l x = reverse $ x:l

instance QqCastList_QDial a r => QqCastList_QDial (QDial ()) (a -> r) where
  qcl_QDial l x sx = qcl_QDial (x:l) sx

qCastList_QDial x = qcl_QDial [] x

type QScrollBar a = QAbstractSlider (CQScrollBar a)
type TQScrollBar a = TQAbstractSlider (CQScrollBar a)
data CQScrollBar a = CQScrollBar

type QScrollBarSc a = QScrollBar (CQScrollBarSc a)
type TQScrollBarSc a = TQScrollBar (CQScrollBarSc a)
data CQScrollBarSc a = CQScrollBarSc

qCast_QScrollBar :: Object a -> IO (QScrollBar ())
qCast_QScrollBar _qobj
  = return (objectCast _qobj)

withQScrollBarResult :: IO (Ptr (TQScrollBar a)) -> IO (QScrollBar a)
withQScrollBarResult f
  = withObjectResult qtc_QScrollBar_getFinalizer f

qScrollBarFromPtr :: Ptr (TQScrollBar a) -> IO (QScrollBar a)
qScrollBarFromPtr p
  = objectFromPtr qtc_QScrollBar_getFinalizer p

withQListQScrollBarResult :: (Ptr (Ptr (TQScrollBar a)) -> IO CInt) -> IO [QScrollBar a]
withQListQScrollBarResult f
  = withQListObjectResult qtc_QScrollBar_getFinalizer f

qScrollBarListFromPtrList :: [Ptr (TQScrollBar a)] -> IO [QScrollBar a]
qScrollBarListFromPtrList p
  = objectListFromPtrList qtc_QScrollBar_getFinalizer p

foreign import ccall qtc_QScrollBar_getFinalizer :: FunPtr (Ptr (TQScrollBar a) -> IO ())

class QqCastList_QScrollBar a r where
  qcl_QScrollBar :: [QScrollBar ()] -> a -> r

instance QqCastList_QScrollBar (QScrollBar ()) [QScrollBar ()] where
  qcl_QScrollBar l x = reverse $ x:l

instance QqCastList_QScrollBar a r => QqCastList_QScrollBar (QScrollBar ()) (a -> r) where
  qcl_QScrollBar l x sx = qcl_QScrollBar (x:l) sx

qCastList_QScrollBar x = qcl_QScrollBar [] x

type QDoubleSpinBox a = QAbstractSpinBox (CQDoubleSpinBox a)
type TQDoubleSpinBox a = TQAbstractSpinBox (CQDoubleSpinBox a)
data CQDoubleSpinBox a = CQDoubleSpinBox

type QDoubleSpinBoxSc a = QDoubleSpinBox (CQDoubleSpinBoxSc a)
type TQDoubleSpinBoxSc a = TQDoubleSpinBox (CQDoubleSpinBoxSc a)
data CQDoubleSpinBoxSc a = CQDoubleSpinBoxSc

qCast_QDoubleSpinBox :: Object a -> IO (QDoubleSpinBox ())
qCast_QDoubleSpinBox _qobj
  = return (objectCast _qobj)

withQDoubleSpinBoxResult :: IO (Ptr (TQDoubleSpinBox a)) -> IO (QDoubleSpinBox a)
withQDoubleSpinBoxResult f
  = withObjectResult qtc_QDoubleSpinBox_getFinalizer f

qDoubleSpinBoxFromPtr :: Ptr (TQDoubleSpinBox a) -> IO (QDoubleSpinBox a)
qDoubleSpinBoxFromPtr p
  = objectFromPtr qtc_QDoubleSpinBox_getFinalizer p

withQListQDoubleSpinBoxResult :: (Ptr (Ptr (TQDoubleSpinBox a)) -> IO CInt) -> IO [QDoubleSpinBox a]
withQListQDoubleSpinBoxResult f
  = withQListObjectResult qtc_QDoubleSpinBox_getFinalizer f

qDoubleSpinBoxListFromPtrList :: [Ptr (TQDoubleSpinBox a)] -> IO [QDoubleSpinBox a]
qDoubleSpinBoxListFromPtrList p
  = objectListFromPtrList qtc_QDoubleSpinBox_getFinalizer p

foreign import ccall qtc_QDoubleSpinBox_getFinalizer :: FunPtr (Ptr (TQDoubleSpinBox a) -> IO ())

class QqCastList_QDoubleSpinBox a r where
  qcl_QDoubleSpinBox :: [QDoubleSpinBox ()] -> a -> r

instance QqCastList_QDoubleSpinBox (QDoubleSpinBox ()) [QDoubleSpinBox ()] where
  qcl_QDoubleSpinBox l x = reverse $ x:l

instance QqCastList_QDoubleSpinBox a r => QqCastList_QDoubleSpinBox (QDoubleSpinBox ()) (a -> r) where
  qcl_QDoubleSpinBox l x sx = qcl_QDoubleSpinBox (x:l) sx

qCastList_QDoubleSpinBox x = qcl_QDoubleSpinBox [] x

type QSpinBox a = QAbstractSpinBox (CQSpinBox a)
type TQSpinBox a = TQAbstractSpinBox (CQSpinBox a)
data CQSpinBox a = CQSpinBox

type QSpinBoxSc a = QSpinBox (CQSpinBoxSc a)
type TQSpinBoxSc a = TQSpinBox (CQSpinBoxSc a)
data CQSpinBoxSc a = CQSpinBoxSc

qCast_QSpinBox :: Object a -> IO (QSpinBox ())
qCast_QSpinBox _qobj
  = return (objectCast _qobj)

withQSpinBoxResult :: IO (Ptr (TQSpinBox a)) -> IO (QSpinBox a)
withQSpinBoxResult f
  = withObjectResult qtc_QSpinBox_getFinalizer f

qSpinBoxFromPtr :: Ptr (TQSpinBox a) -> IO (QSpinBox a)
qSpinBoxFromPtr p
  = objectFromPtr qtc_QSpinBox_getFinalizer p

withQListQSpinBoxResult :: (Ptr (Ptr (TQSpinBox a)) -> IO CInt) -> IO [QSpinBox a]
withQListQSpinBoxResult f
  = withQListObjectResult qtc_QSpinBox_getFinalizer f

qSpinBoxListFromPtrList :: [Ptr (TQSpinBox a)] -> IO [QSpinBox a]
qSpinBoxListFromPtrList p
  = objectListFromPtrList qtc_QSpinBox_getFinalizer p

foreign import ccall qtc_QSpinBox_getFinalizer :: FunPtr (Ptr (TQSpinBox a) -> IO ())

class QqCastList_QSpinBox a r where
  qcl_QSpinBox :: [QSpinBox ()] -> a -> r

instance QqCastList_QSpinBox (QSpinBox ()) [QSpinBox ()] where
  qcl_QSpinBox l x = reverse $ x:l

instance QqCastList_QSpinBox a r => QqCastList_QSpinBox (QSpinBox ()) (a -> r) where
  qcl_QSpinBox l x sx = qcl_QSpinBox (x:l) sx

qCastList_QSpinBox x = qcl_QSpinBox [] x

type QVBoxLayout a = QBoxLayout (CQVBoxLayout a)
type TQVBoxLayout a = TQBoxLayout (CQVBoxLayout a)
data CQVBoxLayout a = CQVBoxLayout

type QVBoxLayoutSc a = QVBoxLayout (CQVBoxLayoutSc a)
type TQVBoxLayoutSc a = TQVBoxLayout (CQVBoxLayoutSc a)
data CQVBoxLayoutSc a = CQVBoxLayoutSc

qCast_QVBoxLayout :: Object a -> IO (QVBoxLayout ())
qCast_QVBoxLayout _qobj
  = return (objectCast _qobj)

withQVBoxLayoutResult :: IO (Ptr (TQVBoxLayout a)) -> IO (QVBoxLayout a)
withQVBoxLayoutResult f
  = withObjectResult qtc_QVBoxLayout_getFinalizer f

qVBoxLayoutFromPtr :: Ptr (TQVBoxLayout a) -> IO (QVBoxLayout a)
qVBoxLayoutFromPtr p
  = objectFromPtr qtc_QVBoxLayout_getFinalizer p

withQListQVBoxLayoutResult :: (Ptr (Ptr (TQVBoxLayout a)) -> IO CInt) -> IO [QVBoxLayout a]
withQListQVBoxLayoutResult f
  = withQListObjectResult qtc_QVBoxLayout_getFinalizer f

qVBoxLayoutListFromPtrList :: [Ptr (TQVBoxLayout a)] -> IO [QVBoxLayout a]
qVBoxLayoutListFromPtrList p
  = objectListFromPtrList qtc_QVBoxLayout_getFinalizer p

foreign import ccall qtc_QVBoxLayout_getFinalizer :: FunPtr (Ptr (TQVBoxLayout a) -> IO ())

class QqCastList_QVBoxLayout a r where
  qcl_QVBoxLayout :: [QVBoxLayout ()] -> a -> r

instance QqCastList_QVBoxLayout (QVBoxLayout ()) [QVBoxLayout ()] where
  qcl_QVBoxLayout l x = reverse $ x:l

instance QqCastList_QVBoxLayout a r => QqCastList_QVBoxLayout (QVBoxLayout ()) (a -> r) where
  qcl_QVBoxLayout l x sx = qcl_QVBoxLayout (x:l) sx

qCastList_QVBoxLayout x = qcl_QVBoxLayout [] x

type QHBoxLayout a = QBoxLayout (CQHBoxLayout a)
type TQHBoxLayout a = TQBoxLayout (CQHBoxLayout a)
data CQHBoxLayout a = CQHBoxLayout

type QHBoxLayoutSc a = QHBoxLayout (CQHBoxLayoutSc a)
type TQHBoxLayoutSc a = TQHBoxLayout (CQHBoxLayoutSc a)
data CQHBoxLayoutSc a = CQHBoxLayoutSc

qCast_QHBoxLayout :: Object a -> IO (QHBoxLayout ())
qCast_QHBoxLayout _qobj
  = return (objectCast _qobj)

withQHBoxLayoutResult :: IO (Ptr (TQHBoxLayout a)) -> IO (QHBoxLayout a)
withQHBoxLayoutResult f
  = withObjectResult qtc_QHBoxLayout_getFinalizer f

qHBoxLayoutFromPtr :: Ptr (TQHBoxLayout a) -> IO (QHBoxLayout a)
qHBoxLayoutFromPtr p
  = objectFromPtr qtc_QHBoxLayout_getFinalizer p

withQListQHBoxLayoutResult :: (Ptr (Ptr (TQHBoxLayout a)) -> IO CInt) -> IO [QHBoxLayout a]
withQListQHBoxLayoutResult f
  = withQListObjectResult qtc_QHBoxLayout_getFinalizer f

qHBoxLayoutListFromPtrList :: [Ptr (TQHBoxLayout a)] -> IO [QHBoxLayout a]
qHBoxLayoutListFromPtrList p
  = objectListFromPtrList qtc_QHBoxLayout_getFinalizer p

foreign import ccall qtc_QHBoxLayout_getFinalizer :: FunPtr (Ptr (TQHBoxLayout a) -> IO ())

class QqCastList_QHBoxLayout a r where
  qcl_QHBoxLayout :: [QHBoxLayout ()] -> a -> r

instance QqCastList_QHBoxLayout (QHBoxLayout ()) [QHBoxLayout ()] where
  qcl_QHBoxLayout l x = reverse $ x:l

instance QqCastList_QHBoxLayout a r => QqCastList_QHBoxLayout (QHBoxLayout ()) (a -> r) where
  qcl_QHBoxLayout l x sx = qcl_QHBoxLayout (x:l) sx

qCastList_QHBoxLayout x = qcl_QHBoxLayout [] x

type QFontComboBox a = QComboBox (CQFontComboBox a)
type TQFontComboBox a = TQComboBox (CQFontComboBox a)
data CQFontComboBox a = CQFontComboBox

type QFontComboBoxSc a = QFontComboBox (CQFontComboBoxSc a)
type TQFontComboBoxSc a = TQFontComboBox (CQFontComboBoxSc a)
data CQFontComboBoxSc a = CQFontComboBoxSc

qCast_QFontComboBox :: Object a -> IO (QFontComboBox ())
qCast_QFontComboBox _qobj
  = return (objectCast _qobj)

withQFontComboBoxResult :: IO (Ptr (TQFontComboBox a)) -> IO (QFontComboBox a)
withQFontComboBoxResult f
  = withObjectResult qtc_QFontComboBox_getFinalizer f

qFontComboBoxFromPtr :: Ptr (TQFontComboBox a) -> IO (QFontComboBox a)
qFontComboBoxFromPtr p
  = objectFromPtr qtc_QFontComboBox_getFinalizer p

withQListQFontComboBoxResult :: (Ptr (Ptr (TQFontComboBox a)) -> IO CInt) -> IO [QFontComboBox a]
withQListQFontComboBoxResult f
  = withQListObjectResult qtc_QFontComboBox_getFinalizer f

qFontComboBoxListFromPtrList :: [Ptr (TQFontComboBox a)] -> IO [QFontComboBox a]
qFontComboBoxListFromPtrList p
  = objectListFromPtrList qtc_QFontComboBox_getFinalizer p

foreign import ccall qtc_QFontComboBox_getFinalizer :: FunPtr (Ptr (TQFontComboBox a) -> IO ())

class QqCastList_QFontComboBox a r where
  qcl_QFontComboBox :: [QFontComboBox ()] -> a -> r

instance QqCastList_QFontComboBox (QFontComboBox ()) [QFontComboBox ()] where
  qcl_QFontComboBox l x = reverse $ x:l

instance QqCastList_QFontComboBox a r => QqCastList_QFontComboBox (QFontComboBox ()) (a -> r) where
  qcl_QFontComboBox l x sx = qcl_QFontComboBox (x:l) sx

qCastList_QFontComboBox x = qcl_QFontComboBox [] x

type QWindowsStyle a = QCommonStyle (CQWindowsStyle a)
type TQWindowsStyle a = TQCommonStyle (CQWindowsStyle a)
data CQWindowsStyle a = CQWindowsStyle

type QWindowsStyleSc a = QWindowsStyle (CQWindowsStyleSc a)
type TQWindowsStyleSc a = TQWindowsStyle (CQWindowsStyleSc a)
data CQWindowsStyleSc a = CQWindowsStyleSc

qCast_QWindowsStyle :: Object a -> IO (QWindowsStyle ())
qCast_QWindowsStyle _qobj
  = return (objectCast _qobj)

withQWindowsStyleResult :: IO (Ptr (TQWindowsStyle a)) -> IO (QWindowsStyle a)
withQWindowsStyleResult f
  = withObjectResult qtc_QWindowsStyle_getFinalizer f

qWindowsStyleFromPtr :: Ptr (TQWindowsStyle a) -> IO (QWindowsStyle a)
qWindowsStyleFromPtr p
  = objectFromPtr qtc_QWindowsStyle_getFinalizer p

withQListQWindowsStyleResult :: (Ptr (Ptr (TQWindowsStyle a)) -> IO CInt) -> IO [QWindowsStyle a]
withQListQWindowsStyleResult f
  = withQListObjectResult qtc_QWindowsStyle_getFinalizer f

qWindowsStyleListFromPtrList :: [Ptr (TQWindowsStyle a)] -> IO [QWindowsStyle a]
qWindowsStyleListFromPtrList p
  = objectListFromPtrList qtc_QWindowsStyle_getFinalizer p

foreign import ccall qtc_QWindowsStyle_getFinalizer :: FunPtr (Ptr (TQWindowsStyle a) -> IO ())

class QqCastList_QWindowsStyle a r where
  qcl_QWindowsStyle :: [QWindowsStyle ()] -> a -> r

instance QqCastList_QWindowsStyle (QWindowsStyle ()) [QWindowsStyle ()] where
  qcl_QWindowsStyle l x = reverse $ x:l

instance QqCastList_QWindowsStyle a r => QqCastList_QWindowsStyle (QWindowsStyle ()) (a -> r) where
  qcl_QWindowsStyle l x sx = qcl_QWindowsStyle (x:l) sx

qCastList_QWindowsStyle x = qcl_QWindowsStyle [] x

type QApplication a = QCoreApplication (CQApplication a)
type TQApplication a = TQCoreApplication (CQApplication a)
data CQApplication a = CQApplication

type QApplicationSc a = QApplication (CQApplicationSc a)
type TQApplicationSc a = TQApplication (CQApplicationSc a)
data CQApplicationSc a = CQApplicationSc

qCast_QApplication :: Object a -> IO (QApplication ())
qCast_QApplication _qobj
  = return (objectCast _qobj)

withQApplicationResult :: IO (Ptr (TQApplication a)) -> IO (QApplication a)
withQApplicationResult f
  = withObjectResult qtc_QApplication_getFinalizer f

qApplicationFromPtr :: Ptr (TQApplication a) -> IO (QApplication a)
qApplicationFromPtr p
  = objectFromPtr qtc_QApplication_getFinalizer p

foreign import ccall qtc_QApplication_getFinalizer :: FunPtr (Ptr (TQApplication a) -> IO ())

type QTimeEdit a = QDateTimeEdit (CQTimeEdit a)
type TQTimeEdit a = TQDateTimeEdit (CQTimeEdit a)
data CQTimeEdit a = CQTimeEdit

type QTimeEditSc a = QTimeEdit (CQTimeEditSc a)
type TQTimeEditSc a = TQTimeEdit (CQTimeEditSc a)
data CQTimeEditSc a = CQTimeEditSc

qCast_QTimeEdit :: Object a -> IO (QTimeEdit ())
qCast_QTimeEdit _qobj
  = return (objectCast _qobj)

withQTimeEditResult :: IO (Ptr (TQTimeEdit a)) -> IO (QTimeEdit a)
withQTimeEditResult f
  = withObjectResult qtc_QTimeEdit_getFinalizer f

qTimeEditFromPtr :: Ptr (TQTimeEdit a) -> IO (QTimeEdit a)
qTimeEditFromPtr p
  = objectFromPtr qtc_QTimeEdit_getFinalizer p

withQListQTimeEditResult :: (Ptr (Ptr (TQTimeEdit a)) -> IO CInt) -> IO [QTimeEdit a]
withQListQTimeEditResult f
  = withQListObjectResult qtc_QTimeEdit_getFinalizer f

qTimeEditListFromPtrList :: [Ptr (TQTimeEdit a)] -> IO [QTimeEdit a]
qTimeEditListFromPtrList p
  = objectListFromPtrList qtc_QTimeEdit_getFinalizer p

foreign import ccall qtc_QTimeEdit_getFinalizer :: FunPtr (Ptr (TQTimeEdit a) -> IO ())

class QqCastList_QTimeEdit a r where
  qcl_QTimeEdit :: [QTimeEdit ()] -> a -> r

instance QqCastList_QTimeEdit (QTimeEdit ()) [QTimeEdit ()] where
  qcl_QTimeEdit l x = reverse $ x:l

instance QqCastList_QTimeEdit a r => QqCastList_QTimeEdit (QTimeEdit ()) (a -> r) where
  qcl_QTimeEdit l x sx = qcl_QTimeEdit (x:l) sx

qCastList_QTimeEdit x = qcl_QTimeEdit [] x

type QDateEdit a = QDateTimeEdit (CQDateEdit a)
type TQDateEdit a = TQDateTimeEdit (CQDateEdit a)
data CQDateEdit a = CQDateEdit

type QDateEditSc a = QDateEdit (CQDateEditSc a)
type TQDateEditSc a = TQDateEdit (CQDateEditSc a)
data CQDateEditSc a = CQDateEditSc

qCast_QDateEdit :: Object a -> IO (QDateEdit ())
qCast_QDateEdit _qobj
  = return (objectCast _qobj)

withQDateEditResult :: IO (Ptr (TQDateEdit a)) -> IO (QDateEdit a)
withQDateEditResult f
  = withObjectResult qtc_QDateEdit_getFinalizer f

qDateEditFromPtr :: Ptr (TQDateEdit a) -> IO (QDateEdit a)
qDateEditFromPtr p
  = objectFromPtr qtc_QDateEdit_getFinalizer p

withQListQDateEditResult :: (Ptr (Ptr (TQDateEdit a)) -> IO CInt) -> IO [QDateEdit a]
withQListQDateEditResult f
  = withQListObjectResult qtc_QDateEdit_getFinalizer f

qDateEditListFromPtrList :: [Ptr (TQDateEdit a)] -> IO [QDateEdit a]
qDateEditListFromPtrList p
  = objectListFromPtrList qtc_QDateEdit_getFinalizer p

foreign import ccall qtc_QDateEdit_getFinalizer :: FunPtr (Ptr (TQDateEdit a) -> IO ())

class QqCastList_QDateEdit a r where
  qcl_QDateEdit :: [QDateEdit ()] -> a -> r

instance QqCastList_QDateEdit (QDateEdit ()) [QDateEdit ()] where
  qcl_QDateEdit l x = reverse $ x:l

instance QqCastList_QDateEdit a r => QqCastList_QDateEdit (QDateEdit ()) (a -> r) where
  qcl_QDateEdit l x sx = qcl_QDateEdit (x:l) sx

qCastList_QDateEdit x = qcl_QDateEdit [] x

type QColorDialog a = QDialog (CQColorDialog a)
type TQColorDialog a = TQDialog (CQColorDialog a)
data CQColorDialog a = CQColorDialog

type QColorDialogSc a = QColorDialog (CQColorDialogSc a)
type TQColorDialogSc a = TQColorDialog (CQColorDialogSc a)
data CQColorDialogSc a = CQColorDialogSc

qCast_QColorDialog :: Object a -> IO (QColorDialog ())
qCast_QColorDialog _qobj
  = return (objectCast _qobj)

withQColorDialogResult :: IO (Ptr (TQColorDialog a)) -> IO (QColorDialog a)
withQColorDialogResult f
  = withObjectResult qtc_QColorDialog_getFinalizer f

qColorDialogFromPtr :: Ptr (TQColorDialog a) -> IO (QColorDialog a)
qColorDialogFromPtr p
  = objectFromPtr qtc_QColorDialog_getFinalizer p

withQListQColorDialogResult :: (Ptr (Ptr (TQColorDialog a)) -> IO CInt) -> IO [QColorDialog a]
withQListQColorDialogResult f
  = withQListObjectResult qtc_QColorDialog_getFinalizer f

qColorDialogListFromPtrList :: [Ptr (TQColorDialog a)] -> IO [QColorDialog a]
qColorDialogListFromPtrList p
  = objectListFromPtrList qtc_QColorDialog_getFinalizer p

foreign import ccall qtc_QColorDialog_getFinalizer :: FunPtr (Ptr (TQColorDialog a) -> IO ())

class QqCastList_QColorDialog a r where
  qcl_QColorDialog :: [QColorDialog ()] -> a -> r

instance QqCastList_QColorDialog (QColorDialog ()) [QColorDialog ()] where
  qcl_QColorDialog l x = reverse $ x:l

instance QqCastList_QColorDialog a r => QqCastList_QColorDialog (QColorDialog ()) (a -> r) where
  qcl_QColorDialog l x sx = qcl_QColorDialog (x:l) sx

qCastList_QColorDialog x = qcl_QColorDialog [] x

type QAbstractPageSetupDialog a = QDialog (CQAbstractPageSetupDialog a)
type TQAbstractPageSetupDialog a = TQDialog (CQAbstractPageSetupDialog a)
data CQAbstractPageSetupDialog a = CQAbstractPageSetupDialog

type QAbstractPageSetupDialogSc a = QAbstractPageSetupDialog (CQAbstractPageSetupDialogSc a)
type TQAbstractPageSetupDialogSc a = TQAbstractPageSetupDialog (CQAbstractPageSetupDialogSc a)
data CQAbstractPageSetupDialogSc a = CQAbstractPageSetupDialogSc

qCast_QAbstractPageSetupDialog :: Object a -> IO (QAbstractPageSetupDialog ())
qCast_QAbstractPageSetupDialog _qobj
  = return (objectCast _qobj)

withQAbstractPageSetupDialogResult :: IO (Ptr (TQAbstractPageSetupDialog a)) -> IO (QAbstractPageSetupDialog a)
withQAbstractPageSetupDialogResult f
  = withObjectRefResult f

qAbstractPageSetupDialogFromPtr :: Ptr (TQAbstractPageSetupDialog a) -> IO (QAbstractPageSetupDialog a)
qAbstractPageSetupDialogFromPtr p
  = objectFromPtr_nf p

withQListQAbstractPageSetupDialogResult :: (Ptr (Ptr (TQAbstractPageSetupDialog a)) -> IO CInt) -> IO [QAbstractPageSetupDialog a]
withQListQAbstractPageSetupDialogResult f
  = withQListObjectRefResult f

qAbstractPageSetupDialogListFromPtrList :: [Ptr (TQAbstractPageSetupDialog a)] -> IO [QAbstractPageSetupDialog a]
qAbstractPageSetupDialogListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractPageSetupDialog a r where
  qcl_QAbstractPageSetupDialog :: [QAbstractPageSetupDialog ()] -> a -> r

instance QqCastList_QAbstractPageSetupDialog (QAbstractPageSetupDialog ()) [QAbstractPageSetupDialog ()] where
  qcl_QAbstractPageSetupDialog l x = reverse $ x:l

instance QqCastList_QAbstractPageSetupDialog a r => QqCastList_QAbstractPageSetupDialog (QAbstractPageSetupDialog ()) (a -> r) where
  qcl_QAbstractPageSetupDialog l x sx = qcl_QAbstractPageSetupDialog (x:l) sx

qCastList_QAbstractPageSetupDialog x = qcl_QAbstractPageSetupDialog [] x

type QMessageBox a = QDialog (CQMessageBox a)
type TQMessageBox a = TQDialog (CQMessageBox a)
data CQMessageBox a = CQMessageBox

type QMessageBoxSc a = QMessageBox (CQMessageBoxSc a)
type TQMessageBoxSc a = TQMessageBox (CQMessageBoxSc a)
data CQMessageBoxSc a = CQMessageBoxSc

qCast_QMessageBox :: Object a -> IO (QMessageBox ())
qCast_QMessageBox _qobj
  = return (objectCast _qobj)

withQMessageBoxResult :: IO (Ptr (TQMessageBox a)) -> IO (QMessageBox a)
withQMessageBoxResult f
  = withObjectResult qtc_QMessageBox_getFinalizer f

qMessageBoxFromPtr :: Ptr (TQMessageBox a) -> IO (QMessageBox a)
qMessageBoxFromPtr p
  = objectFromPtr qtc_QMessageBox_getFinalizer p

withQListQMessageBoxResult :: (Ptr (Ptr (TQMessageBox a)) -> IO CInt) -> IO [QMessageBox a]
withQListQMessageBoxResult f
  = withQListObjectResult qtc_QMessageBox_getFinalizer f

qMessageBoxListFromPtrList :: [Ptr (TQMessageBox a)] -> IO [QMessageBox a]
qMessageBoxListFromPtrList p
  = objectListFromPtrList qtc_QMessageBox_getFinalizer p

foreign import ccall qtc_QMessageBox_getFinalizer :: FunPtr (Ptr (TQMessageBox a) -> IO ())

class QqCastList_QMessageBox a r where
  qcl_QMessageBox :: [QMessageBox ()] -> a -> r

instance QqCastList_QMessageBox (QMessageBox ()) [QMessageBox ()] where
  qcl_QMessageBox l x = reverse $ x:l

instance QqCastList_QMessageBox a r => QqCastList_QMessageBox (QMessageBox ()) (a -> r) where
  qcl_QMessageBox l x sx = qcl_QMessageBox (x:l) sx

qCastList_QMessageBox x = qcl_QMessageBox [] x

type QErrorMessage a = QDialog (CQErrorMessage a)
type TQErrorMessage a = TQDialog (CQErrorMessage a)
data CQErrorMessage a = CQErrorMessage

type QErrorMessageSc a = QErrorMessage (CQErrorMessageSc a)
type TQErrorMessageSc a = TQErrorMessage (CQErrorMessageSc a)
data CQErrorMessageSc a = CQErrorMessageSc

qCast_QErrorMessage :: Object a -> IO (QErrorMessage ())
qCast_QErrorMessage _qobj
  = return (objectCast _qobj)

withQErrorMessageResult :: IO (Ptr (TQErrorMessage a)) -> IO (QErrorMessage a)
withQErrorMessageResult f
  = withObjectResult qtc_QErrorMessage_getFinalizer f

qErrorMessageFromPtr :: Ptr (TQErrorMessage a) -> IO (QErrorMessage a)
qErrorMessageFromPtr p
  = objectFromPtr qtc_QErrorMessage_getFinalizer p

withQListQErrorMessageResult :: (Ptr (Ptr (TQErrorMessage a)) -> IO CInt) -> IO [QErrorMessage a]
withQListQErrorMessageResult f
  = withQListObjectResult qtc_QErrorMessage_getFinalizer f

qErrorMessageListFromPtrList :: [Ptr (TQErrorMessage a)] -> IO [QErrorMessage a]
qErrorMessageListFromPtrList p
  = objectListFromPtrList qtc_QErrorMessage_getFinalizer p

foreign import ccall qtc_QErrorMessage_getFinalizer :: FunPtr (Ptr (TQErrorMessage a) -> IO ())

class QqCastList_QErrorMessage a r where
  qcl_QErrorMessage :: [QErrorMessage ()] -> a -> r

instance QqCastList_QErrorMessage (QErrorMessage ()) [QErrorMessage ()] where
  qcl_QErrorMessage l x = reverse $ x:l

instance QqCastList_QErrorMessage a r => QqCastList_QErrorMessage (QErrorMessage ()) (a -> r) where
  qcl_QErrorMessage l x sx = qcl_QErrorMessage (x:l) sx

qCastList_QErrorMessage x = qcl_QErrorMessage [] x

type QFileDialog a = QDialog (CQFileDialog a)
type TQFileDialog a = TQDialog (CQFileDialog a)
data CQFileDialog a = CQFileDialog

type QFileDialogSc a = QFileDialog (CQFileDialogSc a)
type TQFileDialogSc a = TQFileDialog (CQFileDialogSc a)
data CQFileDialogSc a = CQFileDialogSc

qCast_QFileDialog :: Object a -> IO (QFileDialog ())
qCast_QFileDialog _qobj
  = return (objectCast _qobj)

withQFileDialogResult :: IO (Ptr (TQFileDialog a)) -> IO (QFileDialog a)
withQFileDialogResult f
  = withObjectResult qtc_QFileDialog_getFinalizer f

qFileDialogFromPtr :: Ptr (TQFileDialog a) -> IO (QFileDialog a)
qFileDialogFromPtr p
  = objectFromPtr qtc_QFileDialog_getFinalizer p

withQListQFileDialogResult :: (Ptr (Ptr (TQFileDialog a)) -> IO CInt) -> IO [QFileDialog a]
withQListQFileDialogResult f
  = withQListObjectResult qtc_QFileDialog_getFinalizer f

qFileDialogListFromPtrList :: [Ptr (TQFileDialog a)] -> IO [QFileDialog a]
qFileDialogListFromPtrList p
  = objectListFromPtrList qtc_QFileDialog_getFinalizer p

foreign import ccall qtc_QFileDialog_getFinalizer :: FunPtr (Ptr (TQFileDialog a) -> IO ())

class QqCastList_QFileDialog a r where
  qcl_QFileDialog :: [QFileDialog ()] -> a -> r

instance QqCastList_QFileDialog (QFileDialog ()) [QFileDialog ()] where
  qcl_QFileDialog l x = reverse $ x:l

instance QqCastList_QFileDialog a r => QqCastList_QFileDialog (QFileDialog ()) (a -> r) where
  qcl_QFileDialog l x sx = qcl_QFileDialog (x:l) sx

qCastList_QFileDialog x = qcl_QFileDialog [] x

type QFontDialog a = QDialog (CQFontDialog a)
type TQFontDialog a = TQDialog (CQFontDialog a)
data CQFontDialog a = CQFontDialog

type QFontDialogSc a = QFontDialog (CQFontDialogSc a)
type TQFontDialogSc a = TQFontDialog (CQFontDialogSc a)
data CQFontDialogSc a = CQFontDialogSc

qCast_QFontDialog :: Object a -> IO (QFontDialog ())
qCast_QFontDialog _qobj
  = return (objectCast _qobj)

withQFontDialogResult :: IO (Ptr (TQFontDialog a)) -> IO (QFontDialog a)
withQFontDialogResult f
  = withObjectResult qtc_QFontDialog_getFinalizer f

qFontDialogFromPtr :: Ptr (TQFontDialog a) -> IO (QFontDialog a)
qFontDialogFromPtr p
  = objectFromPtr qtc_QFontDialog_getFinalizer p

withQListQFontDialogResult :: (Ptr (Ptr (TQFontDialog a)) -> IO CInt) -> IO [QFontDialog a]
withQListQFontDialogResult f
  = withQListObjectResult qtc_QFontDialog_getFinalizer f

qFontDialogListFromPtrList :: [Ptr (TQFontDialog a)] -> IO [QFontDialog a]
qFontDialogListFromPtrList p
  = objectListFromPtrList qtc_QFontDialog_getFinalizer p

foreign import ccall qtc_QFontDialog_getFinalizer :: FunPtr (Ptr (TQFontDialog a) -> IO ())

class QqCastList_QFontDialog a r where
  qcl_QFontDialog :: [QFontDialog ()] -> a -> r

instance QqCastList_QFontDialog (QFontDialog ()) [QFontDialog ()] where
  qcl_QFontDialog l x = reverse $ x:l

instance QqCastList_QFontDialog a r => QqCastList_QFontDialog (QFontDialog ()) (a -> r) where
  qcl_QFontDialog l x sx = qcl_QFontDialog (x:l) sx

qCastList_QFontDialog x = qcl_QFontDialog [] x

type QProgressDialog a = QDialog (CQProgressDialog a)
type TQProgressDialog a = TQDialog (CQProgressDialog a)
data CQProgressDialog a = CQProgressDialog

type QProgressDialogSc a = QProgressDialog (CQProgressDialogSc a)
type TQProgressDialogSc a = TQProgressDialog (CQProgressDialogSc a)
data CQProgressDialogSc a = CQProgressDialogSc

qCast_QProgressDialog :: Object a -> IO (QProgressDialog ())
qCast_QProgressDialog _qobj
  = return (objectCast _qobj)

withQProgressDialogResult :: IO (Ptr (TQProgressDialog a)) -> IO (QProgressDialog a)
withQProgressDialogResult f
  = withObjectResult qtc_QProgressDialog_getFinalizer f

qProgressDialogFromPtr :: Ptr (TQProgressDialog a) -> IO (QProgressDialog a)
qProgressDialogFromPtr p
  = objectFromPtr qtc_QProgressDialog_getFinalizer p

withQListQProgressDialogResult :: (Ptr (Ptr (TQProgressDialog a)) -> IO CInt) -> IO [QProgressDialog a]
withQListQProgressDialogResult f
  = withQListObjectResult qtc_QProgressDialog_getFinalizer f

qProgressDialogListFromPtrList :: [Ptr (TQProgressDialog a)] -> IO [QProgressDialog a]
qProgressDialogListFromPtrList p
  = objectListFromPtrList qtc_QProgressDialog_getFinalizer p

foreign import ccall qtc_QProgressDialog_getFinalizer :: FunPtr (Ptr (TQProgressDialog a) -> IO ())

class QqCastList_QProgressDialog a r where
  qcl_QProgressDialog :: [QProgressDialog ()] -> a -> r

instance QqCastList_QProgressDialog (QProgressDialog ()) [QProgressDialog ()] where
  qcl_QProgressDialog l x = reverse $ x:l

instance QqCastList_QProgressDialog a r => QqCastList_QProgressDialog (QProgressDialog ()) (a -> r) where
  qcl_QProgressDialog l x sx = qcl_QProgressDialog (x:l) sx

qCastList_QProgressDialog x = qcl_QProgressDialog [] x

type QDragEnterEvent a = QDragMoveEvent (CQDragEnterEvent a)
type TQDragEnterEvent a = TQDragMoveEvent (CQDragEnterEvent a)
data CQDragEnterEvent a = CQDragEnterEvent

type QDragEnterEventSc a = QDragEnterEvent (CQDragEnterEventSc a)
type TQDragEnterEventSc a = TQDragEnterEvent (CQDragEnterEventSc a)
data CQDragEnterEventSc a = CQDragEnterEventSc

qCast_QDragEnterEvent :: Object a -> IO (QDragEnterEvent ())
qCast_QDragEnterEvent _qobj
  = return (objectCast _qobj)

withQDragEnterEventResult :: IO (Ptr (TQDragEnterEvent a)) -> IO (QDragEnterEvent a)
withQDragEnterEventResult f
  = withObjectResult qtc_QDragEnterEvent_getFinalizer f

foreign import ccall qtc_QDragEnterEvent_getFinalizer :: FunPtr (Ptr (TQDragEnterEvent a) -> IO ())

qDragEnterEventAddFinalizer :: QDragEnterEvent a -> IO ()
qDragEnterEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDragEnterEvent_getFinalizer fp

class QqCastList_QDragEnterEvent a r where
  qcl_QDragEnterEvent :: [QDragEnterEvent ()] -> a -> r

instance QqCastList_QDragEnterEvent (QDragEnterEvent ()) [QDragEnterEvent ()] where
  qcl_QDragEnterEvent l x = reverse $ x:l

instance QqCastList_QDragEnterEvent a r => QqCastList_QDragEnterEvent (QDragEnterEvent ()) (a -> r) where
  qcl_QDragEnterEvent l x sx = qcl_QDragEnterEvent (x:l) sx

qCastList_QDragEnterEvent x = qcl_QDragEnterEvent [] x

type QWindowStateChangeEvent a = QEvent (CQWindowStateChangeEvent a)
type TQWindowStateChangeEvent a = TQEvent (CQWindowStateChangeEvent a)
data CQWindowStateChangeEvent a = CQWindowStateChangeEvent

type QWindowStateChangeEventSc a = QWindowStateChangeEvent (CQWindowStateChangeEventSc a)
type TQWindowStateChangeEventSc a = TQWindowStateChangeEvent (CQWindowStateChangeEventSc a)
data CQWindowStateChangeEventSc a = CQWindowStateChangeEventSc

qCast_QWindowStateChangeEvent :: Object a -> IO (QWindowStateChangeEvent ())
qCast_QWindowStateChangeEvent _qobj
  = return (objectCast _qobj)

withQWindowStateChangeEventResult :: IO (Ptr (TQWindowStateChangeEvent a)) -> IO (QWindowStateChangeEvent a)
withQWindowStateChangeEventResult f
  = withObjectResult qtc_QWindowStateChangeEvent_getFinalizer f

foreign import ccall qtc_QWindowStateChangeEvent_getFinalizer :: FunPtr (Ptr (TQWindowStateChangeEvent a) -> IO ())

qWindowStateChangeEventAddFinalizer :: QWindowStateChangeEvent a -> IO ()
qWindowStateChangeEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QWindowStateChangeEvent_getFinalizer fp

class QqCastList_QWindowStateChangeEvent a r where
  qcl_QWindowStateChangeEvent :: [QWindowStateChangeEvent ()] -> a -> r

instance QqCastList_QWindowStateChangeEvent (QWindowStateChangeEvent ()) [QWindowStateChangeEvent ()] where
  qcl_QWindowStateChangeEvent l x = reverse $ x:l

instance QqCastList_QWindowStateChangeEvent a r => QqCastList_QWindowStateChangeEvent (QWindowStateChangeEvent ()) (a -> r) where
  qcl_QWindowStateChangeEvent l x sx = qcl_QWindowStateChangeEvent (x:l) sx

qCastList_QWindowStateChangeEvent x = qcl_QWindowStateChangeEvent [] x

type QPaintEvent a = QEvent (CQPaintEvent a)
type TQPaintEvent a = TQEvent (CQPaintEvent a)
data CQPaintEvent a = CQPaintEvent

type QPaintEventSc a = QPaintEvent (CQPaintEventSc a)
type TQPaintEventSc a = TQPaintEvent (CQPaintEventSc a)
data CQPaintEventSc a = CQPaintEventSc

qCast_QPaintEvent :: Object a -> IO (QPaintEvent ())
qCast_QPaintEvent _qobj
  = return (objectCast _qobj)

withQPaintEventResult :: IO (Ptr (TQPaintEvent a)) -> IO (QPaintEvent a)
withQPaintEventResult f
  = withObjectResult qtc_QPaintEvent_getFinalizer f

foreign import ccall qtc_QPaintEvent_getFinalizer :: FunPtr (Ptr (TQPaintEvent a) -> IO ())

qPaintEventAddFinalizer :: QPaintEvent a -> IO ()
qPaintEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPaintEvent_getFinalizer fp

class QqCastList_QPaintEvent a r where
  qcl_QPaintEvent :: [QPaintEvent ()] -> a -> r

instance QqCastList_QPaintEvent (QPaintEvent ()) [QPaintEvent ()] where
  qcl_QPaintEvent l x = reverse $ x:l

instance QqCastList_QPaintEvent a r => QqCastList_QPaintEvent (QPaintEvent ()) (a -> r) where
  qcl_QPaintEvent l x sx = qcl_QPaintEvent (x:l) sx

qCastList_QPaintEvent x = qcl_QPaintEvent [] x

type QHoverEvent a = QEvent (CQHoverEvent a)
type TQHoverEvent a = TQEvent (CQHoverEvent a)
data CQHoverEvent a = CQHoverEvent

type QHoverEventSc a = QHoverEvent (CQHoverEventSc a)
type TQHoverEventSc a = TQHoverEvent (CQHoverEventSc a)
data CQHoverEventSc a = CQHoverEventSc

qCast_QHoverEvent :: Object a -> IO (QHoverEvent ())
qCast_QHoverEvent _qobj
  = return (objectCast _qobj)

withQHoverEventResult :: IO (Ptr (TQHoverEvent a)) -> IO (QHoverEvent a)
withQHoverEventResult f
  = withObjectResult qtc_QHoverEvent_getFinalizer f

foreign import ccall qtc_QHoverEvent_getFinalizer :: FunPtr (Ptr (TQHoverEvent a) -> IO ())

qHoverEventAddFinalizer :: QHoverEvent a -> IO ()
qHoverEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHoverEvent_getFinalizer fp

class QqCastList_QHoverEvent a r where
  qcl_QHoverEvent :: [QHoverEvent ()] -> a -> r

instance QqCastList_QHoverEvent (QHoverEvent ()) [QHoverEvent ()] where
  qcl_QHoverEvent l x = reverse $ x:l

instance QqCastList_QHoverEvent a r => QqCastList_QHoverEvent (QHoverEvent ()) (a -> r) where
  qcl_QHoverEvent l x sx = qcl_QHoverEvent (x:l) sx

qCastList_QHoverEvent x = qcl_QHoverEvent [] x

type QWhatsThisClickedEvent a = QEvent (CQWhatsThisClickedEvent a)
type TQWhatsThisClickedEvent a = TQEvent (CQWhatsThisClickedEvent a)
data CQWhatsThisClickedEvent a = CQWhatsThisClickedEvent

type QWhatsThisClickedEventSc a = QWhatsThisClickedEvent (CQWhatsThisClickedEventSc a)
type TQWhatsThisClickedEventSc a = TQWhatsThisClickedEvent (CQWhatsThisClickedEventSc a)
data CQWhatsThisClickedEventSc a = CQWhatsThisClickedEventSc

qCast_QWhatsThisClickedEvent :: Object a -> IO (QWhatsThisClickedEvent ())
qCast_QWhatsThisClickedEvent _qobj
  = return (objectCast _qobj)

withQWhatsThisClickedEventResult :: IO (Ptr (TQWhatsThisClickedEvent a)) -> IO (QWhatsThisClickedEvent a)
withQWhatsThisClickedEventResult f
  = withObjectResult qtc_QWhatsThisClickedEvent_getFinalizer f

foreign import ccall qtc_QWhatsThisClickedEvent_getFinalizer :: FunPtr (Ptr (TQWhatsThisClickedEvent a) -> IO ())

qWhatsThisClickedEventAddFinalizer :: QWhatsThisClickedEvent a -> IO ()
qWhatsThisClickedEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QWhatsThisClickedEvent_getFinalizer fp

class QqCastList_QWhatsThisClickedEvent a r where
  qcl_QWhatsThisClickedEvent :: [QWhatsThisClickedEvent ()] -> a -> r

instance QqCastList_QWhatsThisClickedEvent (QWhatsThisClickedEvent ()) [QWhatsThisClickedEvent ()] where
  qcl_QWhatsThisClickedEvent l x = reverse $ x:l

instance QqCastList_QWhatsThisClickedEvent a r => QqCastList_QWhatsThisClickedEvent (QWhatsThisClickedEvent ()) (a -> r) where
  qcl_QWhatsThisClickedEvent l x sx = qcl_QWhatsThisClickedEvent (x:l) sx

qCastList_QWhatsThisClickedEvent x = qcl_QWhatsThisClickedEvent [] x

type QToolBarChangeEvent a = QEvent (CQToolBarChangeEvent a)
type TQToolBarChangeEvent a = TQEvent (CQToolBarChangeEvent a)
data CQToolBarChangeEvent a = CQToolBarChangeEvent

type QToolBarChangeEventSc a = QToolBarChangeEvent (CQToolBarChangeEventSc a)
type TQToolBarChangeEventSc a = TQToolBarChangeEvent (CQToolBarChangeEventSc a)
data CQToolBarChangeEventSc a = CQToolBarChangeEventSc

qCast_QToolBarChangeEvent :: Object a -> IO (QToolBarChangeEvent ())
qCast_QToolBarChangeEvent _qobj
  = return (objectCast _qobj)

withQToolBarChangeEventResult :: IO (Ptr (TQToolBarChangeEvent a)) -> IO (QToolBarChangeEvent a)
withQToolBarChangeEventResult f
  = withObjectResult qtc_QToolBarChangeEvent_getFinalizer f

foreign import ccall qtc_QToolBarChangeEvent_getFinalizer :: FunPtr (Ptr (TQToolBarChangeEvent a) -> IO ())

qToolBarChangeEventAddFinalizer :: QToolBarChangeEvent a -> IO ()
qToolBarChangeEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QToolBarChangeEvent_getFinalizer fp

class QqCastList_QToolBarChangeEvent a r where
  qcl_QToolBarChangeEvent :: [QToolBarChangeEvent ()] -> a -> r

instance QqCastList_QToolBarChangeEvent (QToolBarChangeEvent ()) [QToolBarChangeEvent ()] where
  qcl_QToolBarChangeEvent l x = reverse $ x:l

instance QqCastList_QToolBarChangeEvent a r => QqCastList_QToolBarChangeEvent (QToolBarChangeEvent ()) (a -> r) where
  qcl_QToolBarChangeEvent l x sx = qcl_QToolBarChangeEvent (x:l) sx

qCastList_QToolBarChangeEvent x = qcl_QToolBarChangeEvent [] x

type QIconDragEvent a = QEvent (CQIconDragEvent a)
type TQIconDragEvent a = TQEvent (CQIconDragEvent a)
data CQIconDragEvent a = CQIconDragEvent

type QIconDragEventSc a = QIconDragEvent (CQIconDragEventSc a)
type TQIconDragEventSc a = TQIconDragEvent (CQIconDragEventSc a)
data CQIconDragEventSc a = CQIconDragEventSc

qCast_QIconDragEvent :: Object a -> IO (QIconDragEvent ())
qCast_QIconDragEvent _qobj
  = return (objectCast _qobj)

withQIconDragEventResult :: IO (Ptr (TQIconDragEvent a)) -> IO (QIconDragEvent a)
withQIconDragEventResult f
  = withObjectResult qtc_QIconDragEvent_getFinalizer f

foreign import ccall qtc_QIconDragEvent_getFinalizer :: FunPtr (Ptr (TQIconDragEvent a) -> IO ())

qIconDragEventAddFinalizer :: QIconDragEvent a -> IO ()
qIconDragEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QIconDragEvent_getFinalizer fp

class QqCastList_QIconDragEvent a r where
  qcl_QIconDragEvent :: [QIconDragEvent ()] -> a -> r

instance QqCastList_QIconDragEvent (QIconDragEvent ()) [QIconDragEvent ()] where
  qcl_QIconDragEvent l x = reverse $ x:l

instance QqCastList_QIconDragEvent a r => QqCastList_QIconDragEvent (QIconDragEvent ()) (a -> r) where
  qcl_QIconDragEvent l x sx = qcl_QIconDragEvent (x:l) sx

qCastList_QIconDragEvent x = qcl_QIconDragEvent [] x

type QShowEvent a = QEvent (CQShowEvent a)
type TQShowEvent a = TQEvent (CQShowEvent a)
data CQShowEvent a = CQShowEvent

type QShowEventSc a = QShowEvent (CQShowEventSc a)
type TQShowEventSc a = TQShowEvent (CQShowEventSc a)
data CQShowEventSc a = CQShowEventSc

qCast_QShowEvent :: Object a -> IO (QShowEvent ())
qCast_QShowEvent _qobj
  = return (objectCast _qobj)

withQShowEventResult :: IO (Ptr (TQShowEvent a)) -> IO (QShowEvent a)
withQShowEventResult f
  = withObjectResult qtc_QShowEvent_getFinalizer f

foreign import ccall qtc_QShowEvent_getFinalizer :: FunPtr (Ptr (TQShowEvent a) -> IO ())

qShowEventAddFinalizer :: QShowEvent a -> IO ()
qShowEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QShowEvent_getFinalizer fp

class QqCastList_QShowEvent a r where
  qcl_QShowEvent :: [QShowEvent ()] -> a -> r

instance QqCastList_QShowEvent (QShowEvent ()) [QShowEvent ()] where
  qcl_QShowEvent l x = reverse $ x:l

instance QqCastList_QShowEvent a r => QqCastList_QShowEvent (QShowEvent ()) (a -> r) where
  qcl_QShowEvent l x sx = qcl_QShowEvent (x:l) sx

qCastList_QShowEvent x = qcl_QShowEvent [] x

type QActionEvent a = QEvent (CQActionEvent a)
type TQActionEvent a = TQEvent (CQActionEvent a)
data CQActionEvent a = CQActionEvent

type QActionEventSc a = QActionEvent (CQActionEventSc a)
type TQActionEventSc a = TQActionEvent (CQActionEventSc a)
data CQActionEventSc a = CQActionEventSc

qCast_QActionEvent :: Object a -> IO (QActionEvent ())
qCast_QActionEvent _qobj
  = return (objectCast _qobj)

withQActionEventResult :: IO (Ptr (TQActionEvent a)) -> IO (QActionEvent a)
withQActionEventResult f
  = withObjectResult qtc_QActionEvent_getFinalizer f

foreign import ccall qtc_QActionEvent_getFinalizer :: FunPtr (Ptr (TQActionEvent a) -> IO ())

qActionEventAddFinalizer :: QActionEvent a -> IO ()
qActionEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QActionEvent_getFinalizer fp

class QqCastList_QActionEvent a r where
  qcl_QActionEvent :: [QActionEvent ()] -> a -> r

instance QqCastList_QActionEvent (QActionEvent ()) [QActionEvent ()] where
  qcl_QActionEvent l x = reverse $ x:l

instance QqCastList_QActionEvent a r => QqCastList_QActionEvent (QActionEvent ()) (a -> r) where
  qcl_QActionEvent l x sx = qcl_QActionEvent (x:l) sx

qCastList_QActionEvent x = qcl_QActionEvent [] x

type QInputMethodEvent a = QEvent (CQInputMethodEvent a)
type TQInputMethodEvent a = TQEvent (CQInputMethodEvent a)
data CQInputMethodEvent a = CQInputMethodEvent

type QInputMethodEventSc a = QInputMethodEvent (CQInputMethodEventSc a)
type TQInputMethodEventSc a = TQInputMethodEvent (CQInputMethodEventSc a)
data CQInputMethodEventSc a = CQInputMethodEventSc

qCast_QInputMethodEvent :: Object a -> IO (QInputMethodEvent ())
qCast_QInputMethodEvent _qobj
  = return (objectCast _qobj)

withQInputMethodEventResult :: IO (Ptr (TQInputMethodEvent a)) -> IO (QInputMethodEvent a)
withQInputMethodEventResult f
  = withObjectRefResult f

class QqCastList_QInputMethodEvent a r where
  qcl_QInputMethodEvent :: [QInputMethodEvent ()] -> a -> r

instance QqCastList_QInputMethodEvent (QInputMethodEvent ()) [QInputMethodEvent ()] where
  qcl_QInputMethodEvent l x = reverse $ x:l

instance QqCastList_QInputMethodEvent a r => QqCastList_QInputMethodEvent (QInputMethodEvent ()) (a -> r) where
  qcl_QInputMethodEvent l x sx = qcl_QInputMethodEvent (x:l) sx

qCastList_QInputMethodEvent x = qcl_QInputMethodEvent [] x

type QFocusEvent a = QEvent (CQFocusEvent a)
type TQFocusEvent a = TQEvent (CQFocusEvent a)
data CQFocusEvent a = CQFocusEvent

type QFocusEventSc a = QFocusEvent (CQFocusEventSc a)
type TQFocusEventSc a = TQFocusEvent (CQFocusEventSc a)
data CQFocusEventSc a = CQFocusEventSc

qCast_QFocusEvent :: Object a -> IO (QFocusEvent ())
qCast_QFocusEvent _qobj
  = return (objectCast _qobj)

withQFocusEventResult :: IO (Ptr (TQFocusEvent a)) -> IO (QFocusEvent a)
withQFocusEventResult f
  = withObjectResult qtc_QFocusEvent_getFinalizer f

foreign import ccall qtc_QFocusEvent_getFinalizer :: FunPtr (Ptr (TQFocusEvent a) -> IO ())

qFocusEventAddFinalizer :: QFocusEvent a -> IO ()
qFocusEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QFocusEvent_getFinalizer fp

class QqCastList_QFocusEvent a r where
  qcl_QFocusEvent :: [QFocusEvent ()] -> a -> r

instance QqCastList_QFocusEvent (QFocusEvent ()) [QFocusEvent ()] where
  qcl_QFocusEvent l x = reverse $ x:l

instance QqCastList_QFocusEvent a r => QqCastList_QFocusEvent (QFocusEvent ()) (a -> r) where
  qcl_QFocusEvent l x sx = qcl_QFocusEvent (x:l) sx

qCastList_QFocusEvent x = qcl_QFocusEvent [] x

type QResizeEvent a = QEvent (CQResizeEvent a)
type TQResizeEvent a = TQEvent (CQResizeEvent a)
data CQResizeEvent a = CQResizeEvent

type QResizeEventSc a = QResizeEvent (CQResizeEventSc a)
type TQResizeEventSc a = TQResizeEvent (CQResizeEventSc a)
data CQResizeEventSc a = CQResizeEventSc

qCast_QResizeEvent :: Object a -> IO (QResizeEvent ())
qCast_QResizeEvent _qobj
  = return (objectCast _qobj)

withQResizeEventResult :: IO (Ptr (TQResizeEvent a)) -> IO (QResizeEvent a)
withQResizeEventResult f
  = withObjectResult qtc_QResizeEvent_getFinalizer f

foreign import ccall qtc_QResizeEvent_getFinalizer :: FunPtr (Ptr (TQResizeEvent a) -> IO ())

qResizeEventAddFinalizer :: QResizeEvent a -> IO ()
qResizeEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QResizeEvent_getFinalizer fp

class QqCastList_QResizeEvent a r where
  qcl_QResizeEvent :: [QResizeEvent ()] -> a -> r

instance QqCastList_QResizeEvent (QResizeEvent ()) [QResizeEvent ()] where
  qcl_QResizeEvent l x = reverse $ x:l

instance QqCastList_QResizeEvent a r => QqCastList_QResizeEvent (QResizeEvent ()) (a -> r) where
  qcl_QResizeEvent l x sx = qcl_QResizeEvent (x:l) sx

qCastList_QResizeEvent x = qcl_QResizeEvent [] x

type QHelpEvent a = QEvent (CQHelpEvent a)
type TQHelpEvent a = TQEvent (CQHelpEvent a)
data CQHelpEvent a = CQHelpEvent

type QHelpEventSc a = QHelpEvent (CQHelpEventSc a)
type TQHelpEventSc a = TQHelpEvent (CQHelpEventSc a)
data CQHelpEventSc a = CQHelpEventSc

qCast_QHelpEvent :: Object a -> IO (QHelpEvent ())
qCast_QHelpEvent _qobj
  = return (objectCast _qobj)

withQHelpEventResult :: IO (Ptr (TQHelpEvent a)) -> IO (QHelpEvent a)
withQHelpEventResult f
  = withObjectResult qtc_QHelpEvent_getFinalizer f

foreign import ccall qtc_QHelpEvent_getFinalizer :: FunPtr (Ptr (TQHelpEvent a) -> IO ())

qHelpEventAddFinalizer :: QHelpEvent a -> IO ()
qHelpEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHelpEvent_getFinalizer fp

class QqCastList_QHelpEvent a r where
  qcl_QHelpEvent :: [QHelpEvent ()] -> a -> r

instance QqCastList_QHelpEvent (QHelpEvent ()) [QHelpEvent ()] where
  qcl_QHelpEvent l x = reverse $ x:l

instance QqCastList_QHelpEvent a r => QqCastList_QHelpEvent (QHelpEvent ()) (a -> r) where
  qcl_QHelpEvent l x sx = qcl_QHelpEvent (x:l) sx

qCastList_QHelpEvent x = qcl_QHelpEvent [] x

type QStatusTipEvent a = QEvent (CQStatusTipEvent a)
type TQStatusTipEvent a = TQEvent (CQStatusTipEvent a)
data CQStatusTipEvent a = CQStatusTipEvent

type QStatusTipEventSc a = QStatusTipEvent (CQStatusTipEventSc a)
type TQStatusTipEventSc a = TQStatusTipEvent (CQStatusTipEventSc a)
data CQStatusTipEventSc a = CQStatusTipEventSc

qCast_QStatusTipEvent :: Object a -> IO (QStatusTipEvent ())
qCast_QStatusTipEvent _qobj
  = return (objectCast _qobj)

withQStatusTipEventResult :: IO (Ptr (TQStatusTipEvent a)) -> IO (QStatusTipEvent a)
withQStatusTipEventResult f
  = withObjectResult qtc_QStatusTipEvent_getFinalizer f

foreign import ccall qtc_QStatusTipEvent_getFinalizer :: FunPtr (Ptr (TQStatusTipEvent a) -> IO ())

qStatusTipEventAddFinalizer :: QStatusTipEvent a -> IO ()
qStatusTipEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStatusTipEvent_getFinalizer fp

class QqCastList_QStatusTipEvent a r where
  qcl_QStatusTipEvent :: [QStatusTipEvent ()] -> a -> r

instance QqCastList_QStatusTipEvent (QStatusTipEvent ()) [QStatusTipEvent ()] where
  qcl_QStatusTipEvent l x = reverse $ x:l

instance QqCastList_QStatusTipEvent a r => QqCastList_QStatusTipEvent (QStatusTipEvent ()) (a -> r) where
  qcl_QStatusTipEvent l x sx = qcl_QStatusTipEvent (x:l) sx

qCastList_QStatusTipEvent x = qcl_QStatusTipEvent [] x

type QDragLeaveEvent a = QEvent (CQDragLeaveEvent a)
type TQDragLeaveEvent a = TQEvent (CQDragLeaveEvent a)
data CQDragLeaveEvent a = CQDragLeaveEvent

type QDragLeaveEventSc a = QDragLeaveEvent (CQDragLeaveEventSc a)
type TQDragLeaveEventSc a = TQDragLeaveEvent (CQDragLeaveEventSc a)
data CQDragLeaveEventSc a = CQDragLeaveEventSc

qCast_QDragLeaveEvent :: Object a -> IO (QDragLeaveEvent ())
qCast_QDragLeaveEvent _qobj
  = return (objectCast _qobj)

withQDragLeaveEventResult :: IO (Ptr (TQDragLeaveEvent a)) -> IO (QDragLeaveEvent a)
withQDragLeaveEventResult f
  = withObjectResult qtc_QDragLeaveEvent_getFinalizer f

foreign import ccall qtc_QDragLeaveEvent_getFinalizer :: FunPtr (Ptr (TQDragLeaveEvent a) -> IO ())

qDragLeaveEventAddFinalizer :: QDragLeaveEvent a -> IO ()
qDragLeaveEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QDragLeaveEvent_getFinalizer fp

class QqCastList_QDragLeaveEvent a r where
  qcl_QDragLeaveEvent :: [QDragLeaveEvent ()] -> a -> r

instance QqCastList_QDragLeaveEvent (QDragLeaveEvent ()) [QDragLeaveEvent ()] where
  qcl_QDragLeaveEvent l x = reverse $ x:l

instance QqCastList_QDragLeaveEvent a r => QqCastList_QDragLeaveEvent (QDragLeaveEvent ()) (a -> r) where
  qcl_QDragLeaveEvent l x sx = qcl_QDragLeaveEvent (x:l) sx

qCastList_QDragLeaveEvent x = qcl_QDragLeaveEvent [] x

type QHideEvent a = QEvent (CQHideEvent a)
type TQHideEvent a = TQEvent (CQHideEvent a)
data CQHideEvent a = CQHideEvent

type QHideEventSc a = QHideEvent (CQHideEventSc a)
type TQHideEventSc a = TQHideEvent (CQHideEventSc a)
data CQHideEventSc a = CQHideEventSc

qCast_QHideEvent :: Object a -> IO (QHideEvent ())
qCast_QHideEvent _qobj
  = return (objectCast _qobj)

withQHideEventResult :: IO (Ptr (TQHideEvent a)) -> IO (QHideEvent a)
withQHideEventResult f
  = withObjectResult qtc_QHideEvent_getFinalizer f

foreign import ccall qtc_QHideEvent_getFinalizer :: FunPtr (Ptr (TQHideEvent a) -> IO ())

qHideEventAddFinalizer :: QHideEvent a -> IO ()
qHideEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QHideEvent_getFinalizer fp

class QqCastList_QHideEvent a r where
  qcl_QHideEvent :: [QHideEvent ()] -> a -> r

instance QqCastList_QHideEvent (QHideEvent ()) [QHideEvent ()] where
  qcl_QHideEvent l x = reverse $ x:l

instance QqCastList_QHideEvent a r => QqCastList_QHideEvent (QHideEvent ()) (a -> r) where
  qcl_QHideEvent l x sx = qcl_QHideEvent (x:l) sx

qCastList_QHideEvent x = qcl_QHideEvent [] x

type QShortcutEvent a = QEvent (CQShortcutEvent a)
type TQShortcutEvent a = TQEvent (CQShortcutEvent a)
data CQShortcutEvent a = CQShortcutEvent

type QShortcutEventSc a = QShortcutEvent (CQShortcutEventSc a)
type TQShortcutEventSc a = TQShortcutEvent (CQShortcutEventSc a)
data CQShortcutEventSc a = CQShortcutEventSc

qCast_QShortcutEvent :: Object a -> IO (QShortcutEvent ())
qCast_QShortcutEvent _qobj
  = return (objectCast _qobj)

withQShortcutEventResult :: IO (Ptr (TQShortcutEvent a)) -> IO (QShortcutEvent a)
withQShortcutEventResult f
  = withObjectResult qtc_QShortcutEvent_getFinalizer f

foreign import ccall qtc_QShortcutEvent_getFinalizer :: FunPtr (Ptr (TQShortcutEvent a) -> IO ())

qShortcutEventAddFinalizer :: QShortcutEvent a -> IO ()
qShortcutEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QShortcutEvent_getFinalizer fp

class QqCastList_QShortcutEvent a r where
  qcl_QShortcutEvent :: [QShortcutEvent ()] -> a -> r

instance QqCastList_QShortcutEvent (QShortcutEvent ()) [QShortcutEvent ()] where
  qcl_QShortcutEvent l x = reverse $ x:l

instance QqCastList_QShortcutEvent a r => QqCastList_QShortcutEvent (QShortcutEvent ()) (a -> r) where
  qcl_QShortcutEvent l x sx = qcl_QShortcutEvent (x:l) sx

qCastList_QShortcutEvent x = qcl_QShortcutEvent [] x

type QCloseEvent a = QEvent (CQCloseEvent a)
type TQCloseEvent a = TQEvent (CQCloseEvent a)
data CQCloseEvent a = CQCloseEvent

type QCloseEventSc a = QCloseEvent (CQCloseEventSc a)
type TQCloseEventSc a = TQCloseEvent (CQCloseEventSc a)
data CQCloseEventSc a = CQCloseEventSc

qCast_QCloseEvent :: Object a -> IO (QCloseEvent ())
qCast_QCloseEvent _qobj
  = return (objectCast _qobj)

withQCloseEventResult :: IO (Ptr (TQCloseEvent a)) -> IO (QCloseEvent a)
withQCloseEventResult f
  = withObjectResult qtc_QCloseEvent_getFinalizer f

foreign import ccall qtc_QCloseEvent_getFinalizer :: FunPtr (Ptr (TQCloseEvent a) -> IO ())

qCloseEventAddFinalizer :: QCloseEvent a -> IO ()
qCloseEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QCloseEvent_getFinalizer fp

class QqCastList_QCloseEvent a r where
  qcl_QCloseEvent :: [QCloseEvent ()] -> a -> r

instance QqCastList_QCloseEvent (QCloseEvent ()) [QCloseEvent ()] where
  qcl_QCloseEvent l x = reverse $ x:l

instance QqCastList_QCloseEvent a r => QqCastList_QCloseEvent (QCloseEvent ()) (a -> r) where
  qcl_QCloseEvent l x sx = qcl_QCloseEvent (x:l) sx

qCastList_QCloseEvent x = qcl_QCloseEvent [] x

type QMoveEvent a = QEvent (CQMoveEvent a)
type TQMoveEvent a = TQEvent (CQMoveEvent a)
data CQMoveEvent a = CQMoveEvent

type QMoveEventSc a = QMoveEvent (CQMoveEventSc a)
type TQMoveEventSc a = TQMoveEvent (CQMoveEventSc a)
data CQMoveEventSc a = CQMoveEventSc

qCast_QMoveEvent :: Object a -> IO (QMoveEvent ())
qCast_QMoveEvent _qobj
  = return (objectCast _qobj)

withQMoveEventResult :: IO (Ptr (TQMoveEvent a)) -> IO (QMoveEvent a)
withQMoveEventResult f
  = withObjectResult qtc_QMoveEvent_getFinalizer f

foreign import ccall qtc_QMoveEvent_getFinalizer :: FunPtr (Ptr (TQMoveEvent a) -> IO ())

qMoveEventAddFinalizer :: QMoveEvent a -> IO ()
qMoveEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QMoveEvent_getFinalizer fp

class QqCastList_QMoveEvent a r where
  qcl_QMoveEvent :: [QMoveEvent ()] -> a -> r

instance QqCastList_QMoveEvent (QMoveEvent ()) [QMoveEvent ()] where
  qcl_QMoveEvent l x = reverse $ x:l

instance QqCastList_QMoveEvent a r => QqCastList_QMoveEvent (QMoveEvent ()) (a -> r) where
  qcl_QMoveEvent l x sx = qcl_QMoveEvent (x:l) sx

qCastList_QMoveEvent x = qcl_QMoveEvent [] x

type QLabel a = QFrame (CQLabel a)
type TQLabel a = TQFrame (CQLabel a)
data CQLabel a = CQLabel

type QLabelSc a = QLabel (CQLabelSc a)
type TQLabelSc a = TQLabel (CQLabelSc a)
data CQLabelSc a = CQLabelSc

qCast_QLabel :: Object a -> IO (QLabel ())
qCast_QLabel _qobj
  = return (objectCast _qobj)

withQLabelResult :: IO (Ptr (TQLabel a)) -> IO (QLabel a)
withQLabelResult f
  = withObjectResult qtc_QLabel_getFinalizer f

qLabelFromPtr :: Ptr (TQLabel a) -> IO (QLabel a)
qLabelFromPtr p
  = objectFromPtr qtc_QLabel_getFinalizer p

withQListQLabelResult :: (Ptr (Ptr (TQLabel a)) -> IO CInt) -> IO [QLabel a]
withQListQLabelResult f
  = withQListObjectResult qtc_QLabel_getFinalizer f

qLabelListFromPtrList :: [Ptr (TQLabel a)] -> IO [QLabel a]
qLabelListFromPtrList p
  = objectListFromPtrList qtc_QLabel_getFinalizer p

foreign import ccall qtc_QLabel_getFinalizer :: FunPtr (Ptr (TQLabel a) -> IO ())

class QqCastList_QLabel a r where
  qcl_QLabel :: [QLabel ()] -> a -> r

instance QqCastList_QLabel (QLabel ()) [QLabel ()] where
  qcl_QLabel l x = reverse $ x:l

instance QqCastList_QLabel a r => QqCastList_QLabel (QLabel ()) (a -> r) where
  qcl_QLabel l x sx = qcl_QLabel (x:l) sx

qCastList_QLabel x = qcl_QLabel [] x

type QToolBox a = QFrame (CQToolBox a)
type TQToolBox a = TQFrame (CQToolBox a)
data CQToolBox a = CQToolBox

type QToolBoxSc a = QToolBox (CQToolBoxSc a)
type TQToolBoxSc a = TQToolBox (CQToolBoxSc a)
data CQToolBoxSc a = CQToolBoxSc

qCast_QToolBox :: Object a -> IO (QToolBox ())
qCast_QToolBox _qobj
  = return (objectCast _qobj)

withQToolBoxResult :: IO (Ptr (TQToolBox a)) -> IO (QToolBox a)
withQToolBoxResult f
  = withObjectResult qtc_QToolBox_getFinalizer f

qToolBoxFromPtr :: Ptr (TQToolBox a) -> IO (QToolBox a)
qToolBoxFromPtr p
  = objectFromPtr qtc_QToolBox_getFinalizer p

withQListQToolBoxResult :: (Ptr (Ptr (TQToolBox a)) -> IO CInt) -> IO [QToolBox a]
withQListQToolBoxResult f
  = withQListObjectResult qtc_QToolBox_getFinalizer f

qToolBoxListFromPtrList :: [Ptr (TQToolBox a)] -> IO [QToolBox a]
qToolBoxListFromPtrList p
  = objectListFromPtrList qtc_QToolBox_getFinalizer p

foreign import ccall qtc_QToolBox_getFinalizer :: FunPtr (Ptr (TQToolBox a) -> IO ())

class QqCastList_QToolBox a r where
  qcl_QToolBox :: [QToolBox ()] -> a -> r

instance QqCastList_QToolBox (QToolBox ()) [QToolBox ()] where
  qcl_QToolBox l x = reverse $ x:l

instance QqCastList_QToolBox a r => QqCastList_QToolBox (QToolBox ()) (a -> r) where
  qcl_QToolBox l x sx = qcl_QToolBox (x:l) sx

qCastList_QToolBox x = qcl_QToolBox [] x

type QLCDNumber a = QFrame (CQLCDNumber a)
type TQLCDNumber a = TQFrame (CQLCDNumber a)
data CQLCDNumber a = CQLCDNumber

type QLCDNumberSc a = QLCDNumber (CQLCDNumberSc a)
type TQLCDNumberSc a = TQLCDNumber (CQLCDNumberSc a)
data CQLCDNumberSc a = CQLCDNumberSc

qCast_QLCDNumber :: Object a -> IO (QLCDNumber ())
qCast_QLCDNumber _qobj
  = return (objectCast _qobj)

withQLCDNumberResult :: IO (Ptr (TQLCDNumber a)) -> IO (QLCDNumber a)
withQLCDNumberResult f
  = withObjectResult qtc_QLCDNumber_getFinalizer f

qLCDNumberFromPtr :: Ptr (TQLCDNumber a) -> IO (QLCDNumber a)
qLCDNumberFromPtr p
  = objectFromPtr qtc_QLCDNumber_getFinalizer p

withQListQLCDNumberResult :: (Ptr (Ptr (TQLCDNumber a)) -> IO CInt) -> IO [QLCDNumber a]
withQListQLCDNumberResult f
  = withQListObjectResult qtc_QLCDNumber_getFinalizer f

qLCDNumberListFromPtrList :: [Ptr (TQLCDNumber a)] -> IO [QLCDNumber a]
qLCDNumberListFromPtrList p
  = objectListFromPtrList qtc_QLCDNumber_getFinalizer p

foreign import ccall qtc_QLCDNumber_getFinalizer :: FunPtr (Ptr (TQLCDNumber a) -> IO ())

class QqCastList_QLCDNumber a r where
  qcl_QLCDNumber :: [QLCDNumber ()] -> a -> r

instance QqCastList_QLCDNumber (QLCDNumber ()) [QLCDNumber ()] where
  qcl_QLCDNumber l x = reverse $ x:l

instance QqCastList_QLCDNumber a r => QqCastList_QLCDNumber (QLCDNumber ()) (a -> r) where
  qcl_QLCDNumber l x sx = qcl_QLCDNumber (x:l) sx

qCastList_QLCDNumber x = qcl_QLCDNumber [] x

type QStackedWidget a = QFrame (CQStackedWidget a)
type TQStackedWidget a = TQFrame (CQStackedWidget a)
data CQStackedWidget a = CQStackedWidget

type QStackedWidgetSc a = QStackedWidget (CQStackedWidgetSc a)
type TQStackedWidgetSc a = TQStackedWidget (CQStackedWidgetSc a)
data CQStackedWidgetSc a = CQStackedWidgetSc

qCast_QStackedWidget :: Object a -> IO (QStackedWidget ())
qCast_QStackedWidget _qobj
  = return (objectCast _qobj)

withQStackedWidgetResult :: IO (Ptr (TQStackedWidget a)) -> IO (QStackedWidget a)
withQStackedWidgetResult f
  = withObjectResult qtc_QStackedWidget_getFinalizer f

qStackedWidgetFromPtr :: Ptr (TQStackedWidget a) -> IO (QStackedWidget a)
qStackedWidgetFromPtr p
  = objectFromPtr qtc_QStackedWidget_getFinalizer p

withQListQStackedWidgetResult :: (Ptr (Ptr (TQStackedWidget a)) -> IO CInt) -> IO [QStackedWidget a]
withQListQStackedWidgetResult f
  = withQListObjectResult qtc_QStackedWidget_getFinalizer f

qStackedWidgetListFromPtrList :: [Ptr (TQStackedWidget a)] -> IO [QStackedWidget a]
qStackedWidgetListFromPtrList p
  = objectListFromPtrList qtc_QStackedWidget_getFinalizer p

foreign import ccall qtc_QStackedWidget_getFinalizer :: FunPtr (Ptr (TQStackedWidget a) -> IO ())

class QqCastList_QStackedWidget a r where
  qcl_QStackedWidget :: [QStackedWidget ()] -> a -> r

instance QqCastList_QStackedWidget (QStackedWidget ()) [QStackedWidget ()] where
  qcl_QStackedWidget l x = reverse $ x:l

instance QqCastList_QStackedWidget a r => QqCastList_QStackedWidget (QStackedWidget ()) (a -> r) where
  qcl_QStackedWidget l x sx = qcl_QStackedWidget (x:l) sx

qCastList_QStackedWidget x = qcl_QStackedWidget [] x

type QSplitter a = QFrame (CQSplitter a)
type TQSplitter a = TQFrame (CQSplitter a)
data CQSplitter a = CQSplitter

type QSplitterSc a = QSplitter (CQSplitterSc a)
type TQSplitterSc a = TQSplitter (CQSplitterSc a)
data CQSplitterSc a = CQSplitterSc

qCast_QSplitter :: Object a -> IO (QSplitter ())
qCast_QSplitter _qobj
  = return (objectCast _qobj)

withQSplitterResult :: IO (Ptr (TQSplitter a)) -> IO (QSplitter a)
withQSplitterResult f
  = withObjectResult qtc_QSplitter_getFinalizer f

qSplitterFromPtr :: Ptr (TQSplitter a) -> IO (QSplitter a)
qSplitterFromPtr p
  = objectFromPtr qtc_QSplitter_getFinalizer p

withQListQSplitterResult :: (Ptr (Ptr (TQSplitter a)) -> IO CInt) -> IO [QSplitter a]
withQListQSplitterResult f
  = withQListObjectResult qtc_QSplitter_getFinalizer f

qSplitterListFromPtrList :: [Ptr (TQSplitter a)] -> IO [QSplitter a]
qSplitterListFromPtrList p
  = objectListFromPtrList qtc_QSplitter_getFinalizer p

foreign import ccall qtc_QSplitter_getFinalizer :: FunPtr (Ptr (TQSplitter a) -> IO ())

class QqCastList_QSplitter a r where
  qcl_QSplitter :: [QSplitter ()] -> a -> r

instance QqCastList_QSplitter (QSplitter ()) [QSplitter ()] where
  qcl_QSplitter l x = reverse $ x:l

instance QqCastList_QSplitter a r => QqCastList_QSplitter (QSplitter ()) (a -> r) where
  qcl_QSplitter l x sx = qcl_QSplitter (x:l) sx

qCastList_QSplitter x = qcl_QSplitter [] x

type QLinearGradient a = QGradient (CQLinearGradient a)
type TQLinearGradient a = TQGradient (CQLinearGradient a)
data CQLinearGradient a = CQLinearGradient

type QLinearGradientSc a = QLinearGradient (CQLinearGradientSc a)
type TQLinearGradientSc a = TQLinearGradient (CQLinearGradientSc a)
data CQLinearGradientSc a = CQLinearGradientSc

qCast_QLinearGradient :: Object a -> IO (QLinearGradient ())
qCast_QLinearGradient _qobj
  = return (objectCast _qobj)

withQLinearGradientResult :: IO (Ptr (TQLinearGradient a)) -> IO (QLinearGradient a)
withQLinearGradientResult f
  = withObjectResult qtc_QLinearGradient_getFinalizer f

foreign import ccall qtc_QLinearGradient_getFinalizer :: FunPtr (Ptr (TQLinearGradient a) -> IO ())

qLinearGradientAddFinalizer :: QLinearGradient a -> IO ()
qLinearGradientAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QLinearGradient_getFinalizer fp

class QqCastList_QLinearGradient a r where
  qcl_QLinearGradient :: [QLinearGradient ()] -> a -> r

instance QqCastList_QLinearGradient (QLinearGradient ()) [QLinearGradient ()] where
  qcl_QLinearGradient l x = reverse $ x:l

instance QqCastList_QLinearGradient a r => QqCastList_QLinearGradient (QLinearGradient ()) (a -> r) where
  qcl_QLinearGradient l x sx = qcl_QLinearGradient (x:l) sx

qCastList_QLinearGradient x = qcl_QLinearGradient [] x

type QConicalGradient a = QGradient (CQConicalGradient a)
type TQConicalGradient a = TQGradient (CQConicalGradient a)
data CQConicalGradient a = CQConicalGradient

type QConicalGradientSc a = QConicalGradient (CQConicalGradientSc a)
type TQConicalGradientSc a = TQConicalGradient (CQConicalGradientSc a)
data CQConicalGradientSc a = CQConicalGradientSc

qCast_QConicalGradient :: Object a -> IO (QConicalGradient ())
qCast_QConicalGradient _qobj
  = return (objectCast _qobj)

withQConicalGradientResult :: IO (Ptr (TQConicalGradient a)) -> IO (QConicalGradient a)
withQConicalGradientResult f
  = withObjectResult qtc_QConicalGradient_getFinalizer f

foreign import ccall qtc_QConicalGradient_getFinalizer :: FunPtr (Ptr (TQConicalGradient a) -> IO ())

qConicalGradientAddFinalizer :: QConicalGradient a -> IO ()
qConicalGradientAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QConicalGradient_getFinalizer fp

class QqCastList_QConicalGradient a r where
  qcl_QConicalGradient :: [QConicalGradient ()] -> a -> r

instance QqCastList_QConicalGradient (QConicalGradient ()) [QConicalGradient ()] where
  qcl_QConicalGradient l x = reverse $ x:l

instance QqCastList_QConicalGradient a r => QqCastList_QConicalGradient (QConicalGradient ()) (a -> r) where
  qcl_QConicalGradient l x sx = qcl_QConicalGradient (x:l) sx

qCastList_QConicalGradient x = qcl_QConicalGradient [] x

type QRadialGradient a = QGradient (CQRadialGradient a)
type TQRadialGradient a = TQGradient (CQRadialGradient a)
data CQRadialGradient a = CQRadialGradient

type QRadialGradientSc a = QRadialGradient (CQRadialGradientSc a)
type TQRadialGradientSc a = TQRadialGradient (CQRadialGradientSc a)
data CQRadialGradientSc a = CQRadialGradientSc

qCast_QRadialGradient :: Object a -> IO (QRadialGradient ())
qCast_QRadialGradient _qobj
  = return (objectCast _qobj)

withQRadialGradientResult :: IO (Ptr (TQRadialGradient a)) -> IO (QRadialGradient a)
withQRadialGradientResult f
  = withObjectResult qtc_QRadialGradient_getFinalizer f

foreign import ccall qtc_QRadialGradient_getFinalizer :: FunPtr (Ptr (TQRadialGradient a) -> IO ())

qRadialGradientAddFinalizer :: QRadialGradient a -> IO ()
qRadialGradientAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QRadialGradient_getFinalizer fp

class QqCastList_QRadialGradient a r where
  qcl_QRadialGradient :: [QRadialGradient ()] -> a -> r

instance QqCastList_QRadialGradient (QRadialGradient ()) [QRadialGradient ()] where
  qcl_QRadialGradient l x = reverse $ x:l

instance QqCastList_QRadialGradient a r => QqCastList_QRadialGradient (QRadialGradient ()) (a -> r) where
  qcl_QRadialGradient l x sx = qcl_QRadialGradient (x:l) sx

qCastList_QRadialGradient x = qcl_QRadialGradient [] x

type QGraphicsLineItem a = QGraphicsItem (CQGraphicsLineItem a)
type TQGraphicsLineItem a = TQGraphicsItem (CQGraphicsLineItem a)
data CQGraphicsLineItem a = CQGraphicsLineItem

type QGraphicsLineItemSc a = QGraphicsLineItem (CQGraphicsLineItemSc a)
type TQGraphicsLineItemSc a = TQGraphicsLineItem (CQGraphicsLineItemSc a)
data CQGraphicsLineItemSc a = CQGraphicsLineItemSc

qCast_QGraphicsLineItem :: Object a -> IO (QGraphicsLineItem ())
qCast_QGraphicsLineItem _qobj
  = return (objectCast _qobj)

withQGraphicsLineItemResult :: IO (Ptr (TQGraphicsLineItem a)) -> IO (QGraphicsLineItem a)
withQGraphicsLineItemResult f
  = withObjectResult qtc_QGraphicsLineItem_getFinalizer f

foreign import ccall qtc_QGraphicsLineItem_getFinalizer :: FunPtr (Ptr (TQGraphicsLineItem a) -> IO ())

qGraphicsLineItemAddFinalizer :: QGraphicsLineItem a -> IO ()
qGraphicsLineItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsLineItem_getFinalizer fp

foreign import ccall qtc_QGraphicsLineItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsLineItem a) -> IO ())

qGraphicsLineItemAddFinalizer1 :: QGraphicsLineItem a -> IO ()
qGraphicsLineItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsLineItem_getFinalizer1 fp

class QqCastList_QGraphicsLineItem a r where
  qcl_QGraphicsLineItem :: [QGraphicsLineItem ()] -> a -> r

instance QqCastList_QGraphicsLineItem (QGraphicsLineItem ()) [QGraphicsLineItem ()] where
  qcl_QGraphicsLineItem l x = reverse $ x:l

instance QqCastList_QGraphicsLineItem a r => QqCastList_QGraphicsLineItem (QGraphicsLineItem ()) (a -> r) where
  qcl_QGraphicsLineItem l x sx = qcl_QGraphicsLineItem (x:l) sx

qCastList_QGraphicsLineItem x = qcl_QGraphicsLineItem [] x

type QGraphicsPixmapItem a = QGraphicsItem (CQGraphicsPixmapItem a)
type TQGraphicsPixmapItem a = TQGraphicsItem (CQGraphicsPixmapItem a)
data CQGraphicsPixmapItem a = CQGraphicsPixmapItem

type QGraphicsPixmapItemSc a = QGraphicsPixmapItem (CQGraphicsPixmapItemSc a)
type TQGraphicsPixmapItemSc a = TQGraphicsPixmapItem (CQGraphicsPixmapItemSc a)
data CQGraphicsPixmapItemSc a = CQGraphicsPixmapItemSc

qCast_QGraphicsPixmapItem :: Object a -> IO (QGraphicsPixmapItem ())
qCast_QGraphicsPixmapItem _qobj
  = return (objectCast _qobj)

withQGraphicsPixmapItemResult :: IO (Ptr (TQGraphicsPixmapItem a)) -> IO (QGraphicsPixmapItem a)
withQGraphicsPixmapItemResult f
  = withObjectResult qtc_QGraphicsPixmapItem_getFinalizer f

foreign import ccall qtc_QGraphicsPixmapItem_getFinalizer :: FunPtr (Ptr (TQGraphicsPixmapItem a) -> IO ())

qGraphicsPixmapItemAddFinalizer :: QGraphicsPixmapItem a -> IO ()
qGraphicsPixmapItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPixmapItem_getFinalizer fp

foreign import ccall qtc_QGraphicsPixmapItem_getFinalizer1 :: FunPtr (Ptr (TQGraphicsPixmapItem a) -> IO ())

qGraphicsPixmapItemAddFinalizer1 :: QGraphicsPixmapItem a -> IO ()
qGraphicsPixmapItemAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsPixmapItem_getFinalizer1 fp

class QqCastList_QGraphicsPixmapItem a r where
  qcl_QGraphicsPixmapItem :: [QGraphicsPixmapItem ()] -> a -> r

instance QqCastList_QGraphicsPixmapItem (QGraphicsPixmapItem ()) [QGraphicsPixmapItem ()] where
  qcl_QGraphicsPixmapItem l x = reverse $ x:l

instance QqCastList_QGraphicsPixmapItem a r => QqCastList_QGraphicsPixmapItem (QGraphicsPixmapItem ()) (a -> r) where
  qcl_QGraphicsPixmapItem l x sx = qcl_QGraphicsPixmapItem (x:l) sx

qCastList_QGraphicsPixmapItem x = qcl_QGraphicsPixmapItem [] x

type QGraphicsItemGroup a = QGraphicsItem (CQGraphicsItemGroup a)
type TQGraphicsItemGroup a = TQGraphicsItem (CQGraphicsItemGroup a)
data CQGraphicsItemGroup a = CQGraphicsItemGroup

type QGraphicsItemGroupSc a = QGraphicsItemGroup (CQGraphicsItemGroupSc a)
type TQGraphicsItemGroupSc a = TQGraphicsItemGroup (CQGraphicsItemGroupSc a)
data CQGraphicsItemGroupSc a = CQGraphicsItemGroupSc

qCast_QGraphicsItemGroup :: Object a -> IO (QGraphicsItemGroup ())
qCast_QGraphicsItemGroup _qobj
  = return (objectCast _qobj)

withQGraphicsItemGroupResult :: IO (Ptr (TQGraphicsItemGroup a)) -> IO (QGraphicsItemGroup a)
withQGraphicsItemGroupResult f
  = withObjectResult qtc_QGraphicsItemGroup_getFinalizer f

foreign import ccall qtc_QGraphicsItemGroup_getFinalizer :: FunPtr (Ptr (TQGraphicsItemGroup a) -> IO ())

qGraphicsItemGroupAddFinalizer :: QGraphicsItemGroup a -> IO ()
qGraphicsItemGroupAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsItemGroup_getFinalizer fp

foreign import ccall qtc_QGraphicsItemGroup_getFinalizer1 :: FunPtr (Ptr (TQGraphicsItemGroup a) -> IO ())

qGraphicsItemGroupAddFinalizer1 :: QGraphicsItemGroup a -> IO ()
qGraphicsItemGroupAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsItemGroup_getFinalizer1 fp

class QqCastList_QGraphicsItemGroup a r where
  qcl_QGraphicsItemGroup :: [QGraphicsItemGroup ()] -> a -> r

instance QqCastList_QGraphicsItemGroup (QGraphicsItemGroup ()) [QGraphicsItemGroup ()] where
  qcl_QGraphicsItemGroup l x = reverse $ x:l

instance QqCastList_QGraphicsItemGroup a r => QqCastList_QGraphicsItemGroup (QGraphicsItemGroup ()) (a -> r) where
  qcl_QGraphicsItemGroup l x sx = qcl_QGraphicsItemGroup (x:l) sx

qCastList_QGraphicsItemGroup x = qcl_QGraphicsItemGroup [] x

type QGraphicsSceneHelpEvent a = QGraphicsSceneEvent (CQGraphicsSceneHelpEvent a)
type TQGraphicsSceneHelpEvent a = TQGraphicsSceneEvent (CQGraphicsSceneHelpEvent a)
data CQGraphicsSceneHelpEvent a = CQGraphicsSceneHelpEvent

type QGraphicsSceneHelpEventSc a = QGraphicsSceneHelpEvent (CQGraphicsSceneHelpEventSc a)
type TQGraphicsSceneHelpEventSc a = TQGraphicsSceneHelpEvent (CQGraphicsSceneHelpEventSc a)
data CQGraphicsSceneHelpEventSc a = CQGraphicsSceneHelpEventSc

qCast_QGraphicsSceneHelpEvent :: Object a -> IO (QGraphicsSceneHelpEvent ())
qCast_QGraphicsSceneHelpEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneHelpEventResult :: IO (Ptr (TQGraphicsSceneHelpEvent a)) -> IO (QGraphicsSceneHelpEvent a)
withQGraphicsSceneHelpEventResult f
  = withObjectResult qtc_QGraphicsSceneHelpEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneHelpEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneHelpEvent a) -> IO ())

qGraphicsSceneHelpEventAddFinalizer :: QGraphicsSceneHelpEvent a -> IO ()
qGraphicsSceneHelpEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneHelpEvent_getFinalizer fp

class QqCastList_QGraphicsSceneHelpEvent a r where
  qcl_QGraphicsSceneHelpEvent :: [QGraphicsSceneHelpEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneHelpEvent (QGraphicsSceneHelpEvent ()) [QGraphicsSceneHelpEvent ()] where
  qcl_QGraphicsSceneHelpEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneHelpEvent a r => QqCastList_QGraphicsSceneHelpEvent (QGraphicsSceneHelpEvent ()) (a -> r) where
  qcl_QGraphicsSceneHelpEvent l x sx = qcl_QGraphicsSceneHelpEvent (x:l) sx

qCastList_QGraphicsSceneHelpEvent x = qcl_QGraphicsSceneHelpEvent [] x

type QGraphicsSceneHoverEvent a = QGraphicsSceneEvent (CQGraphicsSceneHoverEvent a)
type TQGraphicsSceneHoverEvent a = TQGraphicsSceneEvent (CQGraphicsSceneHoverEvent a)
data CQGraphicsSceneHoverEvent a = CQGraphicsSceneHoverEvent

type QGraphicsSceneHoverEventSc a = QGraphicsSceneHoverEvent (CQGraphicsSceneHoverEventSc a)
type TQGraphicsSceneHoverEventSc a = TQGraphicsSceneHoverEvent (CQGraphicsSceneHoverEventSc a)
data CQGraphicsSceneHoverEventSc a = CQGraphicsSceneHoverEventSc

qCast_QGraphicsSceneHoverEvent :: Object a -> IO (QGraphicsSceneHoverEvent ())
qCast_QGraphicsSceneHoverEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneHoverEventResult :: IO (Ptr (TQGraphicsSceneHoverEvent a)) -> IO (QGraphicsSceneHoverEvent a)
withQGraphicsSceneHoverEventResult f
  = withObjectResult qtc_QGraphicsSceneHoverEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneHoverEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneHoverEvent a) -> IO ())

qGraphicsSceneHoverEventAddFinalizer :: QGraphicsSceneHoverEvent a -> IO ()
qGraphicsSceneHoverEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneHoverEvent_getFinalizer fp

class QqCastList_QGraphicsSceneHoverEvent a r where
  qcl_QGraphicsSceneHoverEvent :: [QGraphicsSceneHoverEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneHoverEvent (QGraphicsSceneHoverEvent ()) [QGraphicsSceneHoverEvent ()] where
  qcl_QGraphicsSceneHoverEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneHoverEvent a r => QqCastList_QGraphicsSceneHoverEvent (QGraphicsSceneHoverEvent ()) (a -> r) where
  qcl_QGraphicsSceneHoverEvent l x sx = qcl_QGraphicsSceneHoverEvent (x:l) sx

qCastList_QGraphicsSceneHoverEvent x = qcl_QGraphicsSceneHoverEvent [] x

type QGraphicsSceneContextMenuEvent a = QGraphicsSceneEvent (CQGraphicsSceneContextMenuEvent a)
type TQGraphicsSceneContextMenuEvent a = TQGraphicsSceneEvent (CQGraphicsSceneContextMenuEvent a)
data CQGraphicsSceneContextMenuEvent a = CQGraphicsSceneContextMenuEvent

type QGraphicsSceneContextMenuEventSc a = QGraphicsSceneContextMenuEvent (CQGraphicsSceneContextMenuEventSc a)
type TQGraphicsSceneContextMenuEventSc a = TQGraphicsSceneContextMenuEvent (CQGraphicsSceneContextMenuEventSc a)
data CQGraphicsSceneContextMenuEventSc a = CQGraphicsSceneContextMenuEventSc

qCast_QGraphicsSceneContextMenuEvent :: Object a -> IO (QGraphicsSceneContextMenuEvent ())
qCast_QGraphicsSceneContextMenuEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneContextMenuEventResult :: IO (Ptr (TQGraphicsSceneContextMenuEvent a)) -> IO (QGraphicsSceneContextMenuEvent a)
withQGraphicsSceneContextMenuEventResult f
  = withObjectResult qtc_QGraphicsSceneContextMenuEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneContextMenuEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneContextMenuEvent a) -> IO ())

qGraphicsSceneContextMenuEventAddFinalizer :: QGraphicsSceneContextMenuEvent a -> IO ()
qGraphicsSceneContextMenuEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneContextMenuEvent_getFinalizer fp

class QqCastList_QGraphicsSceneContextMenuEvent a r where
  qcl_QGraphicsSceneContextMenuEvent :: [QGraphicsSceneContextMenuEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneContextMenuEvent (QGraphicsSceneContextMenuEvent ()) [QGraphicsSceneContextMenuEvent ()] where
  qcl_QGraphicsSceneContextMenuEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneContextMenuEvent a r => QqCastList_QGraphicsSceneContextMenuEvent (QGraphicsSceneContextMenuEvent ()) (a -> r) where
  qcl_QGraphicsSceneContextMenuEvent l x sx = qcl_QGraphicsSceneContextMenuEvent (x:l) sx

qCastList_QGraphicsSceneContextMenuEvent x = qcl_QGraphicsSceneContextMenuEvent [] x

type QGraphicsSceneMouseEvent a = QGraphicsSceneEvent (CQGraphicsSceneMouseEvent a)
type TQGraphicsSceneMouseEvent a = TQGraphicsSceneEvent (CQGraphicsSceneMouseEvent a)
data CQGraphicsSceneMouseEvent a = CQGraphicsSceneMouseEvent

type QGraphicsSceneMouseEventSc a = QGraphicsSceneMouseEvent (CQGraphicsSceneMouseEventSc a)
type TQGraphicsSceneMouseEventSc a = TQGraphicsSceneMouseEvent (CQGraphicsSceneMouseEventSc a)
data CQGraphicsSceneMouseEventSc a = CQGraphicsSceneMouseEventSc

qCast_QGraphicsSceneMouseEvent :: Object a -> IO (QGraphicsSceneMouseEvent ())
qCast_QGraphicsSceneMouseEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneMouseEventResult :: IO (Ptr (TQGraphicsSceneMouseEvent a)) -> IO (QGraphicsSceneMouseEvent a)
withQGraphicsSceneMouseEventResult f
  = withObjectResult qtc_QGraphicsSceneMouseEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneMouseEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneMouseEvent a) -> IO ())

qGraphicsSceneMouseEventAddFinalizer :: QGraphicsSceneMouseEvent a -> IO ()
qGraphicsSceneMouseEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneMouseEvent_getFinalizer fp

class QqCastList_QGraphicsSceneMouseEvent a r where
  qcl_QGraphicsSceneMouseEvent :: [QGraphicsSceneMouseEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneMouseEvent (QGraphicsSceneMouseEvent ()) [QGraphicsSceneMouseEvent ()] where
  qcl_QGraphicsSceneMouseEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneMouseEvent a r => QqCastList_QGraphicsSceneMouseEvent (QGraphicsSceneMouseEvent ()) (a -> r) where
  qcl_QGraphicsSceneMouseEvent l x sx = qcl_QGraphicsSceneMouseEvent (x:l) sx

qCastList_QGraphicsSceneMouseEvent x = qcl_QGraphicsSceneMouseEvent [] x

type QGraphicsSceneDragDropEvent a = QGraphicsSceneEvent (CQGraphicsSceneDragDropEvent a)
type TQGraphicsSceneDragDropEvent a = TQGraphicsSceneEvent (CQGraphicsSceneDragDropEvent a)
data CQGraphicsSceneDragDropEvent a = CQGraphicsSceneDragDropEvent

type QGraphicsSceneDragDropEventSc a = QGraphicsSceneDragDropEvent (CQGraphicsSceneDragDropEventSc a)
type TQGraphicsSceneDragDropEventSc a = TQGraphicsSceneDragDropEvent (CQGraphicsSceneDragDropEventSc a)
data CQGraphicsSceneDragDropEventSc a = CQGraphicsSceneDragDropEventSc

qCast_QGraphicsSceneDragDropEvent :: Object a -> IO (QGraphicsSceneDragDropEvent ())
qCast_QGraphicsSceneDragDropEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneDragDropEventResult :: IO (Ptr (TQGraphicsSceneDragDropEvent a)) -> IO (QGraphicsSceneDragDropEvent a)
withQGraphicsSceneDragDropEventResult f
  = withObjectResult qtc_QGraphicsSceneDragDropEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneDragDropEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneDragDropEvent a) -> IO ())

qGraphicsSceneDragDropEventAddFinalizer :: QGraphicsSceneDragDropEvent a -> IO ()
qGraphicsSceneDragDropEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneDragDropEvent_getFinalizer fp

class QqCastList_QGraphicsSceneDragDropEvent a r where
  qcl_QGraphicsSceneDragDropEvent :: [QGraphicsSceneDragDropEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneDragDropEvent (QGraphicsSceneDragDropEvent ()) [QGraphicsSceneDragDropEvent ()] where
  qcl_QGraphicsSceneDragDropEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneDragDropEvent a r => QqCastList_QGraphicsSceneDragDropEvent (QGraphicsSceneDragDropEvent ()) (a -> r) where
  qcl_QGraphicsSceneDragDropEvent l x sx = qcl_QGraphicsSceneDragDropEvent (x:l) sx

qCastList_QGraphicsSceneDragDropEvent x = qcl_QGraphicsSceneDragDropEvent [] x

type QGraphicsSceneWheelEvent a = QGraphicsSceneEvent (CQGraphicsSceneWheelEvent a)
type TQGraphicsSceneWheelEvent a = TQGraphicsSceneEvent (CQGraphicsSceneWheelEvent a)
data CQGraphicsSceneWheelEvent a = CQGraphicsSceneWheelEvent

type QGraphicsSceneWheelEventSc a = QGraphicsSceneWheelEvent (CQGraphicsSceneWheelEventSc a)
type TQGraphicsSceneWheelEventSc a = TQGraphicsSceneWheelEvent (CQGraphicsSceneWheelEventSc a)
data CQGraphicsSceneWheelEventSc a = CQGraphicsSceneWheelEventSc

qCast_QGraphicsSceneWheelEvent :: Object a -> IO (QGraphicsSceneWheelEvent ())
qCast_QGraphicsSceneWheelEvent _qobj
  = return (objectCast _qobj)

withQGraphicsSceneWheelEventResult :: IO (Ptr (TQGraphicsSceneWheelEvent a)) -> IO (QGraphicsSceneWheelEvent a)
withQGraphicsSceneWheelEventResult f
  = withObjectResult qtc_QGraphicsSceneWheelEvent_getFinalizer f

foreign import ccall qtc_QGraphicsSceneWheelEvent_getFinalizer :: FunPtr (Ptr (TQGraphicsSceneWheelEvent a) -> IO ())

qGraphicsSceneWheelEventAddFinalizer :: QGraphicsSceneWheelEvent a -> IO ()
qGraphicsSceneWheelEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QGraphicsSceneWheelEvent_getFinalizer fp

class QqCastList_QGraphicsSceneWheelEvent a r where
  qcl_QGraphicsSceneWheelEvent :: [QGraphicsSceneWheelEvent ()] -> a -> r

instance QqCastList_QGraphicsSceneWheelEvent (QGraphicsSceneWheelEvent ()) [QGraphicsSceneWheelEvent ()] where
  qcl_QGraphicsSceneWheelEvent l x = reverse $ x:l

instance QqCastList_QGraphicsSceneWheelEvent a r => QqCastList_QGraphicsSceneWheelEvent (QGraphicsSceneWheelEvent ()) (a -> r) where
  qcl_QGraphicsSceneWheelEvent l x sx = qcl_QGraphicsSceneWheelEvent (x:l) sx

qCastList_QGraphicsSceneWheelEvent x = qcl_QGraphicsSceneWheelEvent [] x

type QIconEngineV2 a = QIconEngine (CQIconEngineV2 a)
type TQIconEngineV2 a = TQIconEngine (CQIconEngineV2 a)
data CQIconEngineV2 a = CQIconEngineV2

type QIconEngineV2Sc a = QIconEngineV2 (CQIconEngineV2Sc a)
type TQIconEngineV2Sc a = TQIconEngineV2 (CQIconEngineV2Sc a)
data CQIconEngineV2Sc a = CQIconEngineV2Sc

qCast_QIconEngineV2 :: Object a -> IO (QIconEngineV2 ())
qCast_QIconEngineV2 _qobj
  = return (objectCast _qobj)

withQIconEngineV2Result :: IO (Ptr (TQIconEngineV2 a)) -> IO (QIconEngineV2 a)
withQIconEngineV2Result f
  = withObjectResult qtc_QIconEngineV2_getFinalizer f

foreign import ccall qtc_QIconEngineV2_getFinalizer :: FunPtr (Ptr (TQIconEngineV2 a) -> IO ())

qIconEngineV2AddFinalizer :: QIconEngineV2 a -> IO ()
qIconEngineV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QIconEngineV2_getFinalizer fp

foreign import ccall qtc_QIconEngineV2_getFinalizer1 :: FunPtr (Ptr (TQIconEngineV2 a) -> IO ())

qIconEngineV2AddFinalizer1 :: QIconEngineV2 a -> IO ()
qIconEngineV2AddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QIconEngineV2_getFinalizer1 fp

class QqCastList_QIconEngineV2 a r where
  qcl_QIconEngineV2 :: [QIconEngineV2 ()] -> a -> r

instance QqCastList_QIconEngineV2 (QIconEngineV2 ()) [QIconEngineV2 ()] where
  qcl_QIconEngineV2 l x = reverse $ x:l

instance QqCastList_QIconEngineV2 a r => QqCastList_QIconEngineV2 (QIconEngineV2 ()) (a -> r) where
  qcl_QIconEngineV2 l x sx = qcl_QIconEngineV2 (x:l) sx

qCastList_QIconEngineV2 x = qcl_QIconEngineV2 [] x

type QMouseEvent a = QInputEvent (CQMouseEvent a)
type TQMouseEvent a = TQInputEvent (CQMouseEvent a)
data CQMouseEvent a = CQMouseEvent

type QMouseEventSc a = QMouseEvent (CQMouseEventSc a)
type TQMouseEventSc a = TQMouseEvent (CQMouseEventSc a)
data CQMouseEventSc a = CQMouseEventSc

qCast_QMouseEvent :: Object a -> IO (QMouseEvent ())
qCast_QMouseEvent _qobj
  = return (objectCast _qobj)

withQMouseEventResult :: IO (Ptr (TQMouseEvent a)) -> IO (QMouseEvent a)
withQMouseEventResult f
  = withObjectResult qtc_QMouseEvent_getFinalizer f

foreign import ccall qtc_QMouseEvent_getFinalizer :: FunPtr (Ptr (TQMouseEvent a) -> IO ())

qMouseEventAddFinalizer :: QMouseEvent a -> IO ()
qMouseEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QMouseEvent_getFinalizer fp

class QqCastList_QMouseEvent a r where
  qcl_QMouseEvent :: [QMouseEvent ()] -> a -> r

instance QqCastList_QMouseEvent (QMouseEvent ()) [QMouseEvent ()] where
  qcl_QMouseEvent l x = reverse $ x:l

instance QqCastList_QMouseEvent a r => QqCastList_QMouseEvent (QMouseEvent ()) (a -> r) where
  qcl_QMouseEvent l x sx = qcl_QMouseEvent (x:l) sx

qCastList_QMouseEvent x = qcl_QMouseEvent [] x

type QKeyEvent a = QInputEvent (CQKeyEvent a)
type TQKeyEvent a = TQInputEvent (CQKeyEvent a)
data CQKeyEvent a = CQKeyEvent

type QKeyEventSc a = QKeyEvent (CQKeyEventSc a)
type TQKeyEventSc a = TQKeyEvent (CQKeyEventSc a)
data CQKeyEventSc a = CQKeyEventSc

qCast_QKeyEvent :: Object a -> IO (QKeyEvent ())
qCast_QKeyEvent _qobj
  = return (objectCast _qobj)

withQKeyEventResult :: IO (Ptr (TQKeyEvent a)) -> IO (QKeyEvent a)
withQKeyEventResult f
  = withObjectResult qtc_QKeyEvent_getFinalizer f

foreign import ccall qtc_QKeyEvent_getFinalizer :: FunPtr (Ptr (TQKeyEvent a) -> IO ())

qKeyEventAddFinalizer :: QKeyEvent a -> IO ()
qKeyEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QKeyEvent_getFinalizer fp

class QqCastList_QKeyEvent a r where
  qcl_QKeyEvent :: [QKeyEvent ()] -> a -> r

instance QqCastList_QKeyEvent (QKeyEvent ()) [QKeyEvent ()] where
  qcl_QKeyEvent l x = reverse $ x:l

instance QqCastList_QKeyEvent a r => QqCastList_QKeyEvent (QKeyEvent ()) (a -> r) where
  qcl_QKeyEvent l x sx = qcl_QKeyEvent (x:l) sx

qCastList_QKeyEvent x = qcl_QKeyEvent [] x

type QWheelEvent a = QInputEvent (CQWheelEvent a)
type TQWheelEvent a = TQInputEvent (CQWheelEvent a)
data CQWheelEvent a = CQWheelEvent

type QWheelEventSc a = QWheelEvent (CQWheelEventSc a)
type TQWheelEventSc a = TQWheelEvent (CQWheelEventSc a)
data CQWheelEventSc a = CQWheelEventSc

qCast_QWheelEvent :: Object a -> IO (QWheelEvent ())
qCast_QWheelEvent _qobj
  = return (objectCast _qobj)

withQWheelEventResult :: IO (Ptr (TQWheelEvent a)) -> IO (QWheelEvent a)
withQWheelEventResult f
  = withObjectResult qtc_QWheelEvent_getFinalizer f

foreign import ccall qtc_QWheelEvent_getFinalizer :: FunPtr (Ptr (TQWheelEvent a) -> IO ())

qWheelEventAddFinalizer :: QWheelEvent a -> IO ()
qWheelEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QWheelEvent_getFinalizer fp

class QqCastList_QWheelEvent a r where
  qcl_QWheelEvent :: [QWheelEvent ()] -> a -> r

instance QqCastList_QWheelEvent (QWheelEvent ()) [QWheelEvent ()] where
  qcl_QWheelEvent l x = reverse $ x:l

instance QqCastList_QWheelEvent a r => QqCastList_QWheelEvent (QWheelEvent ()) (a -> r) where
  qcl_QWheelEvent l x sx = qcl_QWheelEvent (x:l) sx

qCastList_QWheelEvent x = qcl_QWheelEvent [] x

type QTabletEvent a = QInputEvent (CQTabletEvent a)
type TQTabletEvent a = TQInputEvent (CQTabletEvent a)
data CQTabletEvent a = CQTabletEvent

type QTabletEventSc a = QTabletEvent (CQTabletEventSc a)
type TQTabletEventSc a = TQTabletEvent (CQTabletEventSc a)
data CQTabletEventSc a = CQTabletEventSc

qCast_QTabletEvent :: Object a -> IO (QTabletEvent ())
qCast_QTabletEvent _qobj
  = return (objectCast _qobj)

withQTabletEventResult :: IO (Ptr (TQTabletEvent a)) -> IO (QTabletEvent a)
withQTabletEventResult f
  = withObjectResult qtc_QTabletEvent_getFinalizer f

foreign import ccall qtc_QTabletEvent_getFinalizer :: FunPtr (Ptr (TQTabletEvent a) -> IO ())

qTabletEventAddFinalizer :: QTabletEvent a -> IO ()
qTabletEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTabletEvent_getFinalizer fp

class QqCastList_QTabletEvent a r where
  qcl_QTabletEvent :: [QTabletEvent ()] -> a -> r

instance QqCastList_QTabletEvent (QTabletEvent ()) [QTabletEvent ()] where
  qcl_QTabletEvent l x = reverse $ x:l

instance QqCastList_QTabletEvent a r => QqCastList_QTabletEvent (QTabletEvent ()) (a -> r) where
  qcl_QTabletEvent l x sx = qcl_QTabletEvent (x:l) sx

qCastList_QTabletEvent x = qcl_QTabletEvent [] x

type QContextMenuEvent a = QInputEvent (CQContextMenuEvent a)
type TQContextMenuEvent a = TQInputEvent (CQContextMenuEvent a)
data CQContextMenuEvent a = CQContextMenuEvent

type QContextMenuEventSc a = QContextMenuEvent (CQContextMenuEventSc a)
type TQContextMenuEventSc a = TQContextMenuEvent (CQContextMenuEventSc a)
data CQContextMenuEventSc a = CQContextMenuEventSc

qCast_QContextMenuEvent :: Object a -> IO (QContextMenuEvent ())
qCast_QContextMenuEvent _qobj
  = return (objectCast _qobj)

withQContextMenuEventResult :: IO (Ptr (TQContextMenuEvent a)) -> IO (QContextMenuEvent a)
withQContextMenuEventResult f
  = withObjectResult qtc_QContextMenuEvent_getFinalizer f

foreign import ccall qtc_QContextMenuEvent_getFinalizer :: FunPtr (Ptr (TQContextMenuEvent a) -> IO ())

qContextMenuEventAddFinalizer :: QContextMenuEvent a -> IO ()
qContextMenuEventAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QContextMenuEvent_getFinalizer fp

class QqCastList_QContextMenuEvent a r where
  qcl_QContextMenuEvent :: [QContextMenuEvent ()] -> a -> r

instance QqCastList_QContextMenuEvent (QContextMenuEvent ()) [QContextMenuEvent ()] where
  qcl_QContextMenuEvent l x = reverse $ x:l

instance QqCastList_QContextMenuEvent a r => QqCastList_QContextMenuEvent (QContextMenuEvent ()) (a -> r) where
  qcl_QContextMenuEvent l x sx = qcl_QContextMenuEvent (x:l) sx

qCastList_QContextMenuEvent x = qcl_QContextMenuEvent [] x

type QGridLayout a = QLayout (CQGridLayout a)
type TQGridLayout a = TQLayout (CQGridLayout a)
data CQGridLayout a = CQGridLayout

type QGridLayoutSc a = QGridLayout (CQGridLayoutSc a)
type TQGridLayoutSc a = TQGridLayout (CQGridLayoutSc a)
data CQGridLayoutSc a = CQGridLayoutSc

qCast_QGridLayout :: Object a -> IO (QGridLayout ())
qCast_QGridLayout _qobj
  = return (objectCast _qobj)

withQGridLayoutResult :: IO (Ptr (TQGridLayout a)) -> IO (QGridLayout a)
withQGridLayoutResult f
  = withObjectResult qtc_QGridLayout_getFinalizer f

qGridLayoutFromPtr :: Ptr (TQGridLayout a) -> IO (QGridLayout a)
qGridLayoutFromPtr p
  = objectFromPtr qtc_QGridLayout_getFinalizer p

withQListQGridLayoutResult :: (Ptr (Ptr (TQGridLayout a)) -> IO CInt) -> IO [QGridLayout a]
withQListQGridLayoutResult f
  = withQListObjectResult qtc_QGridLayout_getFinalizer f

qGridLayoutListFromPtrList :: [Ptr (TQGridLayout a)] -> IO [QGridLayout a]
qGridLayoutListFromPtrList p
  = objectListFromPtrList qtc_QGridLayout_getFinalizer p

foreign import ccall qtc_QGridLayout_getFinalizer :: FunPtr (Ptr (TQGridLayout a) -> IO ())

class QqCastList_QGridLayout a r where
  qcl_QGridLayout :: [QGridLayout ()] -> a -> r

instance QqCastList_QGridLayout (QGridLayout ()) [QGridLayout ()] where
  qcl_QGridLayout l x = reverse $ x:l

instance QqCastList_QGridLayout a r => QqCastList_QGridLayout (QGridLayout ()) (a -> r) where
  qcl_QGridLayout l x sx = qcl_QGridLayout (x:l) sx

qCastList_QGridLayout x = qcl_QGridLayout [] x

type QStackedLayout a = QLayout (CQStackedLayout a)
type TQStackedLayout a = TQLayout (CQStackedLayout a)
data CQStackedLayout a = CQStackedLayout

type QStackedLayoutSc a = QStackedLayout (CQStackedLayoutSc a)
type TQStackedLayoutSc a = TQStackedLayout (CQStackedLayoutSc a)
data CQStackedLayoutSc a = CQStackedLayoutSc

qCast_QStackedLayout :: Object a -> IO (QStackedLayout ())
qCast_QStackedLayout _qobj
  = return (objectCast _qobj)

withQStackedLayoutResult :: IO (Ptr (TQStackedLayout a)) -> IO (QStackedLayout a)
withQStackedLayoutResult f
  = withObjectResult qtc_QStackedLayout_getFinalizer f

qStackedLayoutFromPtr :: Ptr (TQStackedLayout a) -> IO (QStackedLayout a)
qStackedLayoutFromPtr p
  = objectFromPtr qtc_QStackedLayout_getFinalizer p

withQListQStackedLayoutResult :: (Ptr (Ptr (TQStackedLayout a)) -> IO CInt) -> IO [QStackedLayout a]
withQListQStackedLayoutResult f
  = withQListObjectResult qtc_QStackedLayout_getFinalizer f

qStackedLayoutListFromPtrList :: [Ptr (TQStackedLayout a)] -> IO [QStackedLayout a]
qStackedLayoutListFromPtrList p
  = objectListFromPtrList qtc_QStackedLayout_getFinalizer p

foreign import ccall qtc_QStackedLayout_getFinalizer :: FunPtr (Ptr (TQStackedLayout a) -> IO ())

class QqCastList_QStackedLayout a r where
  qcl_QStackedLayout :: [QStackedLayout ()] -> a -> r

instance QqCastList_QStackedLayout (QStackedLayout ()) [QStackedLayout ()] where
  qcl_QStackedLayout l x = reverse $ x:l

instance QqCastList_QStackedLayout a r => QqCastList_QStackedLayout (QStackedLayout ()) (a -> r) where
  qcl_QStackedLayout l x sx = qcl_QStackedLayout (x:l) sx

qCastList_QStackedLayout x = qcl_QStackedLayout [] x

type QSpacerItem a = QLayoutItem (CQSpacerItem a)
type TQSpacerItem a = TQLayoutItem (CQSpacerItem a)
data CQSpacerItem a = CQSpacerItem

type QSpacerItemSc a = QSpacerItem (CQSpacerItemSc a)
type TQSpacerItemSc a = TQSpacerItem (CQSpacerItemSc a)
data CQSpacerItemSc a = CQSpacerItemSc

qCast_QSpacerItem :: Object a -> IO (QSpacerItem ())
qCast_QSpacerItem _qobj
  = return (objectCast _qobj)

withQSpacerItemResult :: IO (Ptr (TQSpacerItem a)) -> IO (QSpacerItem a)
withQSpacerItemResult f
  = withObjectRefResult f

class QqCastList_QSpacerItem a r where
  qcl_QSpacerItem :: [QSpacerItem ()] -> a -> r

instance QqCastList_QSpacerItem (QSpacerItem ()) [QSpacerItem ()] where
  qcl_QSpacerItem l x = reverse $ x:l

instance QqCastList_QSpacerItem a r => QqCastList_QSpacerItem (QSpacerItem ()) (a -> r) where
  qcl_QSpacerItem l x sx = qcl_QSpacerItem (x:l) sx

qCastList_QSpacerItem x = qcl_QSpacerItem [] x

type QListWidget a = QListView (CQListWidget a)
type TQListWidget a = TQListView (CQListWidget a)
data CQListWidget a = CQListWidget

type QListWidgetSc a = QListWidget (CQListWidgetSc a)
type TQListWidgetSc a = TQListWidget (CQListWidgetSc a)
data CQListWidgetSc a = CQListWidgetSc

qCast_QListWidget :: Object a -> IO (QListWidget ())
qCast_QListWidget _qobj
  = return (objectCast _qobj)

withQListWidgetResult :: IO (Ptr (TQListWidget a)) -> IO (QListWidget a)
withQListWidgetResult f
  = withObjectResult qtc_QListWidget_getFinalizer f

qListWidgetFromPtr :: Ptr (TQListWidget a) -> IO (QListWidget a)
qListWidgetFromPtr p
  = objectFromPtr qtc_QListWidget_getFinalizer p

withQListQListWidgetResult :: (Ptr (Ptr (TQListWidget a)) -> IO CInt) -> IO [QListWidget a]
withQListQListWidgetResult f
  = withQListObjectResult qtc_QListWidget_getFinalizer f

qListWidgetListFromPtrList :: [Ptr (TQListWidget a)] -> IO [QListWidget a]
qListWidgetListFromPtrList p
  = objectListFromPtrList qtc_QListWidget_getFinalizer p

foreign import ccall qtc_QListWidget_getFinalizer :: FunPtr (Ptr (TQListWidget a) -> IO ())

class QqCastList_QListWidget a r where
  qcl_QListWidget :: [QListWidget ()] -> a -> r

instance QqCastList_QListWidget (QListWidget ()) [QListWidget ()] where
  qcl_QListWidget l x = reverse $ x:l

instance QqCastList_QListWidget a r => QqCastList_QListWidget (QListWidget ()) (a -> r) where
  qcl_QListWidget l x sx = qcl_QListWidget (x:l) sx

qCastList_QListWidget x = qcl_QListWidget [] x

type QUndoView a = QListView (CQUndoView a)
type TQUndoView a = TQListView (CQUndoView a)
data CQUndoView a = CQUndoView

type QUndoViewSc a = QUndoView (CQUndoViewSc a)
type TQUndoViewSc a = TQUndoView (CQUndoViewSc a)
data CQUndoViewSc a = CQUndoViewSc

qCast_QUndoView :: Object a -> IO (QUndoView ())
qCast_QUndoView _qobj
  = return (objectCast _qobj)

withQUndoViewResult :: IO (Ptr (TQUndoView a)) -> IO (QUndoView a)
withQUndoViewResult f
  = withObjectResult qtc_QUndoView_getFinalizer f

qUndoViewFromPtr :: Ptr (TQUndoView a) -> IO (QUndoView a)
qUndoViewFromPtr p
  = objectFromPtr qtc_QUndoView_getFinalizer p

withQListQUndoViewResult :: (Ptr (Ptr (TQUndoView a)) -> IO CInt) -> IO [QUndoView a]
withQListQUndoViewResult f
  = withQListObjectResult qtc_QUndoView_getFinalizer f

qUndoViewListFromPtrList :: [Ptr (TQUndoView a)] -> IO [QUndoView a]
qUndoViewListFromPtrList p
  = objectListFromPtrList qtc_QUndoView_getFinalizer p

foreign import ccall qtc_QUndoView_getFinalizer :: FunPtr (Ptr (TQUndoView a) -> IO ())

class QqCastList_QUndoView a r where
  qcl_QUndoView :: [QUndoView ()] -> a -> r

instance QqCastList_QUndoView (QUndoView ()) [QUndoView ()] where
  qcl_QUndoView l x = reverse $ x:l

instance QqCastList_QUndoView a r => QqCastList_QUndoView (QUndoView ()) (a -> r) where
  qcl_QUndoView l x sx = qcl_QUndoView (x:l) sx

qCastList_QUndoView x = qcl_QUndoView [] x

type QGraphicsItemAnimation a = QObject (CQGraphicsItemAnimation a)
type TQGraphicsItemAnimation a = TQObject (CQGraphicsItemAnimation a)
data CQGraphicsItemAnimation a = CQGraphicsItemAnimation

type QGraphicsItemAnimationSc a = QGraphicsItemAnimation (CQGraphicsItemAnimationSc a)
type TQGraphicsItemAnimationSc a = TQGraphicsItemAnimation (CQGraphicsItemAnimationSc a)
data CQGraphicsItemAnimationSc a = CQGraphicsItemAnimationSc

qCast_QGraphicsItemAnimation :: Object a -> IO (QGraphicsItemAnimation ())
qCast_QGraphicsItemAnimation _qobj
  = return (objectCast _qobj)

withQGraphicsItemAnimationResult :: IO (Ptr (TQGraphicsItemAnimation a)) -> IO (QGraphicsItemAnimation a)
withQGraphicsItemAnimationResult f
  = withObjectResult qtc_QGraphicsItemAnimation_getFinalizer f

qGraphicsItemAnimationFromPtr :: Ptr (TQGraphicsItemAnimation a) -> IO (QGraphicsItemAnimation a)
qGraphicsItemAnimationFromPtr p
  = objectFromPtr qtc_QGraphicsItemAnimation_getFinalizer p

withQListQGraphicsItemAnimationResult :: (Ptr (Ptr (TQGraphicsItemAnimation a)) -> IO CInt) -> IO [QGraphicsItemAnimation a]
withQListQGraphicsItemAnimationResult f
  = withQListObjectResult qtc_QGraphicsItemAnimation_getFinalizer f

qGraphicsItemAnimationListFromPtrList :: [Ptr (TQGraphicsItemAnimation a)] -> IO [QGraphicsItemAnimation a]
qGraphicsItemAnimationListFromPtrList p
  = objectListFromPtrList qtc_QGraphicsItemAnimation_getFinalizer p

foreign import ccall qtc_QGraphicsItemAnimation_getFinalizer :: FunPtr (Ptr (TQGraphicsItemAnimation a) -> IO ())

class QqCastList_QGraphicsItemAnimation a r where
  qcl_QGraphicsItemAnimation :: [QGraphicsItemAnimation ()] -> a -> r

instance QqCastList_QGraphicsItemAnimation (QGraphicsItemAnimation ()) [QGraphicsItemAnimation ()] where
  qcl_QGraphicsItemAnimation l x = reverse $ x:l

instance QqCastList_QGraphicsItemAnimation a r => QqCastList_QGraphicsItemAnimation (QGraphicsItemAnimation ()) (a -> r) where
  qcl_QGraphicsItemAnimation l x sx = qcl_QGraphicsItemAnimation (x:l) sx

qCastList_QGraphicsItemAnimation x = qcl_QGraphicsItemAnimation [] x

type QTextDocument a = QObject (CQTextDocument a)
type TQTextDocument a = TQObject (CQTextDocument a)
data CQTextDocument a = CQTextDocument

type QTextDocumentSc a = QTextDocument (CQTextDocumentSc a)
type TQTextDocumentSc a = TQTextDocument (CQTextDocumentSc a)
data CQTextDocumentSc a = CQTextDocumentSc

qCast_QTextDocument :: Object a -> IO (QTextDocument ())
qCast_QTextDocument _qobj
  = return (objectCast _qobj)

withQTextDocumentResult :: IO (Ptr (TQTextDocument a)) -> IO (QTextDocument a)
withQTextDocumentResult f
  = withObjectResult qtc_QTextDocument_getFinalizer f

qTextDocumentFromPtr :: Ptr (TQTextDocument a) -> IO (QTextDocument a)
qTextDocumentFromPtr p
  = objectFromPtr qtc_QTextDocument_getFinalizer p

withQListQTextDocumentResult :: (Ptr (Ptr (TQTextDocument a)) -> IO CInt) -> IO [QTextDocument a]
withQListQTextDocumentResult f
  = withQListObjectResult qtc_QTextDocument_getFinalizer f

qTextDocumentListFromPtrList :: [Ptr (TQTextDocument a)] -> IO [QTextDocument a]
qTextDocumentListFromPtrList p
  = objectListFromPtrList qtc_QTextDocument_getFinalizer p

foreign import ccall qtc_QTextDocument_getFinalizer :: FunPtr (Ptr (TQTextDocument a) -> IO ())

class QqCastList_QTextDocument a r where
  qcl_QTextDocument :: [QTextDocument ()] -> a -> r

instance QqCastList_QTextDocument (QTextDocument ()) [QTextDocument ()] where
  qcl_QTextDocument l x = reverse $ x:l

instance QqCastList_QTextDocument a r => QqCastList_QTextDocument (QTextDocument ()) (a -> r) where
  qcl_QTextDocument l x sx = qcl_QTextDocument (x:l) sx

qCastList_QTextDocument x = qcl_QTextDocument [] x

type QMovie a = QObject (CQMovie a)
type TQMovie a = TQObject (CQMovie a)
data CQMovie a = CQMovie

type QMovieSc a = QMovie (CQMovieSc a)
type TQMovieSc a = TQMovie (CQMovieSc a)
data CQMovieSc a = CQMovieSc

qCast_QMovie :: Object a -> IO (QMovie ())
qCast_QMovie _qobj
  = return (objectCast _qobj)

withQMovieResult :: IO (Ptr (TQMovie a)) -> IO (QMovie a)
withQMovieResult f
  = withObjectResult qtc_QMovie_getFinalizer f

qMovieFromPtr :: Ptr (TQMovie a) -> IO (QMovie a)
qMovieFromPtr p
  = objectFromPtr qtc_QMovie_getFinalizer p

withQListQMovieResult :: (Ptr (Ptr (TQMovie a)) -> IO CInt) -> IO [QMovie a]
withQListQMovieResult f
  = withQListObjectResult qtc_QMovie_getFinalizer f

qMovieListFromPtrList :: [Ptr (TQMovie a)] -> IO [QMovie a]
qMovieListFromPtrList p
  = objectListFromPtrList qtc_QMovie_getFinalizer p

foreign import ccall qtc_QMovie_getFinalizer :: FunPtr (Ptr (TQMovie a) -> IO ())

class QqCastList_QMovie a r where
  qcl_QMovie :: [QMovie ()] -> a -> r

instance QqCastList_QMovie (QMovie ()) [QMovie ()] where
  qcl_QMovie l x = reverse $ x:l

instance QqCastList_QMovie a r => QqCastList_QMovie (QMovie ()) (a -> r) where
  qcl_QMovie l x sx = qcl_QMovie (x:l) sx

qCastList_QMovie x = qcl_QMovie [] x

type QAction a = QObject (CQAction a)
type TQAction a = TQObject (CQAction a)
data CQAction a = CQAction

type QActionSc a = QAction (CQActionSc a)
type TQActionSc a = TQAction (CQActionSc a)
data CQActionSc a = CQActionSc

qCast_QAction :: Object a -> IO (QAction ())
qCast_QAction _qobj
  = return (objectCast _qobj)

withQActionResult :: IO (Ptr (TQAction a)) -> IO (QAction a)
withQActionResult f
  = withObjectResult qtc_QAction_getFinalizer f

qActionFromPtr :: Ptr (TQAction a) -> IO (QAction a)
qActionFromPtr p
  = objectFromPtr qtc_QAction_getFinalizer p

withQListQActionResult :: (Ptr (Ptr (TQAction a)) -> IO CInt) -> IO [QAction a]
withQListQActionResult f
  = withQListObjectResult qtc_QAction_getFinalizer f

qActionListFromPtrList :: [Ptr (TQAction a)] -> IO [QAction a]
qActionListFromPtrList p
  = objectListFromPtrList qtc_QAction_getFinalizer p

foreign import ccall qtc_QAction_getFinalizer :: FunPtr (Ptr (TQAction a) -> IO ())

class QqCastList_QAction a r where
  qcl_QAction :: [QAction ()] -> a -> r

instance QqCastList_QAction (QAction ()) [QAction ()] where
  qcl_QAction l x = reverse $ x:l

instance QqCastList_QAction a r => QqCastList_QAction (QAction ()) (a -> r) where
  qcl_QAction l x sx = qcl_QAction (x:l) sx

qCastList_QAction x = qcl_QAction [] x

type QButtonGroup a = QObject (CQButtonGroup a)
type TQButtonGroup a = TQObject (CQButtonGroup a)
data CQButtonGroup a = CQButtonGroup

type QButtonGroupSc a = QButtonGroup (CQButtonGroupSc a)
type TQButtonGroupSc a = TQButtonGroup (CQButtonGroupSc a)
data CQButtonGroupSc a = CQButtonGroupSc

qCast_QButtonGroup :: Object a -> IO (QButtonGroup ())
qCast_QButtonGroup _qobj
  = return (objectCast _qobj)

withQButtonGroupResult :: IO (Ptr (TQButtonGroup a)) -> IO (QButtonGroup a)
withQButtonGroupResult f
  = withObjectResult qtc_QButtonGroup_getFinalizer f

qButtonGroupFromPtr :: Ptr (TQButtonGroup a) -> IO (QButtonGroup a)
qButtonGroupFromPtr p
  = objectFromPtr qtc_QButtonGroup_getFinalizer p

withQListQButtonGroupResult :: (Ptr (Ptr (TQButtonGroup a)) -> IO CInt) -> IO [QButtonGroup a]
withQListQButtonGroupResult f
  = withQListObjectResult qtc_QButtonGroup_getFinalizer f

qButtonGroupListFromPtrList :: [Ptr (TQButtonGroup a)] -> IO [QButtonGroup a]
qButtonGroupListFromPtrList p
  = objectListFromPtrList qtc_QButtonGroup_getFinalizer p

foreign import ccall qtc_QButtonGroup_getFinalizer :: FunPtr (Ptr (TQButtonGroup a) -> IO ())

class QqCastList_QButtonGroup a r where
  qcl_QButtonGroup :: [QButtonGroup ()] -> a -> r

instance QqCastList_QButtonGroup (QButtonGroup ()) [QButtonGroup ()] where
  qcl_QButtonGroup l x = reverse $ x:l

instance QqCastList_QButtonGroup a r => QqCastList_QButtonGroup (QButtonGroup ()) (a -> r) where
  qcl_QButtonGroup l x sx = qcl_QButtonGroup (x:l) sx

qCastList_QButtonGroup x = qcl_QButtonGroup [] x

type QDrag a = QObject (CQDrag a)
type TQDrag a = TQObject (CQDrag a)
data CQDrag a = CQDrag

type QDragSc a = QDrag (CQDragSc a)
type TQDragSc a = TQDrag (CQDragSc a)
data CQDragSc a = CQDragSc

qCast_QDrag :: Object a -> IO (QDrag ())
qCast_QDrag _qobj
  = return (objectCast _qobj)

withQDragResult :: IO (Ptr (TQDrag a)) -> IO (QDrag a)
withQDragResult f
  = withObjectResult qtc_QDrag_getFinalizer f

qDragFromPtr :: Ptr (TQDrag a) -> IO (QDrag a)
qDragFromPtr p
  = objectFromPtr qtc_QDrag_getFinalizer p

withQListQDragResult :: (Ptr (Ptr (TQDrag a)) -> IO CInt) -> IO [QDrag a]
withQListQDragResult f
  = withQListObjectResult qtc_QDrag_getFinalizer f

qDragListFromPtrList :: [Ptr (TQDrag a)] -> IO [QDrag a]
qDragListFromPtrList p
  = objectListFromPtrList qtc_QDrag_getFinalizer p

foreign import ccall qtc_QDrag_getFinalizer :: FunPtr (Ptr (TQDrag a) -> IO ())

class QqCastList_QDrag a r where
  qcl_QDrag :: [QDrag ()] -> a -> r

instance QqCastList_QDrag (QDrag ()) [QDrag ()] where
  qcl_QDrag l x = reverse $ x:l

instance QqCastList_QDrag a r => QqCastList_QDrag (QDrag ()) (a -> r) where
  qcl_QDrag l x sx = qcl_QDrag (x:l) sx

qCastList_QDrag x = qcl_QDrag [] x

type QShortcut a = QObject (CQShortcut a)
type TQShortcut a = TQObject (CQShortcut a)
data CQShortcut a = CQShortcut

type QShortcutSc a = QShortcut (CQShortcutSc a)
type TQShortcutSc a = TQShortcut (CQShortcutSc a)
data CQShortcutSc a = CQShortcutSc

qCast_QShortcut :: Object a -> IO (QShortcut ())
qCast_QShortcut _qobj
  = return (objectCast _qobj)

withQShortcutResult :: IO (Ptr (TQShortcut a)) -> IO (QShortcut a)
withQShortcutResult f
  = withObjectResult qtc_QShortcut_getFinalizer f

qShortcutFromPtr :: Ptr (TQShortcut a) -> IO (QShortcut a)
qShortcutFromPtr p
  = objectFromPtr qtc_QShortcut_getFinalizer p

withQListQShortcutResult :: (Ptr (Ptr (TQShortcut a)) -> IO CInt) -> IO [QShortcut a]
withQListQShortcutResult f
  = withQListObjectResult qtc_QShortcut_getFinalizer f

qShortcutListFromPtrList :: [Ptr (TQShortcut a)] -> IO [QShortcut a]
qShortcutListFromPtrList p
  = objectListFromPtrList qtc_QShortcut_getFinalizer p

foreign import ccall qtc_QShortcut_getFinalizer :: FunPtr (Ptr (TQShortcut a) -> IO ())

class QqCastList_QShortcut a r where
  qcl_QShortcut :: [QShortcut ()] -> a -> r

instance QqCastList_QShortcut (QShortcut ()) [QShortcut ()] where
  qcl_QShortcut l x = reverse $ x:l

instance QqCastList_QShortcut a r => QqCastList_QShortcut (QShortcut ()) (a -> r) where
  qcl_QShortcut l x sx = qcl_QShortcut (x:l) sx

qCastList_QShortcut x = qcl_QShortcut [] x

type QSound a = QObject (CQSound a)
type TQSound a = TQObject (CQSound a)
data CQSound a = CQSound

type QSoundSc a = QSound (CQSoundSc a)
type TQSoundSc a = TQSound (CQSoundSc a)
data CQSoundSc a = CQSoundSc

qCast_QSound :: Object a -> IO (QSound ())
qCast_QSound _qobj
  = return (objectCast _qobj)

withQSoundResult :: IO (Ptr (TQSound a)) -> IO (QSound a)
withQSoundResult f
  = withObjectResult qtc_QSound_getFinalizer f

qSoundFromPtr :: Ptr (TQSound a) -> IO (QSound a)
qSoundFromPtr p
  = objectFromPtr qtc_QSound_getFinalizer p

withQListQSoundResult :: (Ptr (Ptr (TQSound a)) -> IO CInt) -> IO [QSound a]
withQListQSoundResult f
  = withQListObjectResult qtc_QSound_getFinalizer f

qSoundListFromPtrList :: [Ptr (TQSound a)] -> IO [QSound a]
qSoundListFromPtrList p
  = objectListFromPtrList qtc_QSound_getFinalizer p

foreign import ccall qtc_QSound_getFinalizer :: FunPtr (Ptr (TQSound a) -> IO ())

class QqCastList_QSound a r where
  qcl_QSound :: [QSound ()] -> a -> r

instance QqCastList_QSound (QSound ()) [QSound ()] where
  qcl_QSound l x = reverse $ x:l

instance QqCastList_QSound a r => QqCastList_QSound (QSound ()) (a -> r) where
  qcl_QSound l x sx = qcl_QSound (x:l) sx

qCastList_QSound x = qcl_QSound [] x

type QAbstractItemDelegate a = QObject (CQAbstractItemDelegate a)
type TQAbstractItemDelegate a = TQObject (CQAbstractItemDelegate a)
data CQAbstractItemDelegate a = CQAbstractItemDelegate

type QAbstractItemDelegateSc a = QAbstractItemDelegate (CQAbstractItemDelegateSc a)
type TQAbstractItemDelegateSc a = TQAbstractItemDelegate (CQAbstractItemDelegateSc a)
data CQAbstractItemDelegateSc a = CQAbstractItemDelegateSc

qCast_QAbstractItemDelegate :: Object a -> IO (QAbstractItemDelegate ())
qCast_QAbstractItemDelegate _qobj
  = return (objectCast _qobj)

withQAbstractItemDelegateResult :: IO (Ptr (TQAbstractItemDelegate a)) -> IO (QAbstractItemDelegate a)
withQAbstractItemDelegateResult f
  = withObjectRefResult f

qAbstractItemDelegateFromPtr :: Ptr (TQAbstractItemDelegate a) -> IO (QAbstractItemDelegate a)
qAbstractItemDelegateFromPtr p
  = objectFromPtr_nf p

withQListQAbstractItemDelegateResult :: (Ptr (Ptr (TQAbstractItemDelegate a)) -> IO CInt) -> IO [QAbstractItemDelegate a]
withQListQAbstractItemDelegateResult f
  = withQListObjectRefResult f

qAbstractItemDelegateListFromPtrList :: [Ptr (TQAbstractItemDelegate a)] -> IO [QAbstractItemDelegate a]
qAbstractItemDelegateListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractItemDelegate a r where
  qcl_QAbstractItemDelegate :: [QAbstractItemDelegate ()] -> a -> r

instance QqCastList_QAbstractItemDelegate (QAbstractItemDelegate ()) [QAbstractItemDelegate ()] where
  qcl_QAbstractItemDelegate l x = reverse $ x:l

instance QqCastList_QAbstractItemDelegate a r => QqCastList_QAbstractItemDelegate (QAbstractItemDelegate ()) (a -> r) where
  qcl_QAbstractItemDelegate l x sx = qcl_QAbstractItemDelegate (x:l) sx

qCastList_QAbstractItemDelegate x = qcl_QAbstractItemDelegate [] x

type QSyntaxHighlighter a = QObject (CQSyntaxHighlighter a)
type TQSyntaxHighlighter a = TQObject (CQSyntaxHighlighter a)
data CQSyntaxHighlighter a = CQSyntaxHighlighter

type QSyntaxHighlighterSc a = QSyntaxHighlighter (CQSyntaxHighlighterSc a)
type TQSyntaxHighlighterSc a = TQSyntaxHighlighter (CQSyntaxHighlighterSc a)
data CQSyntaxHighlighterSc a = CQSyntaxHighlighterSc

qCast_QSyntaxHighlighter :: Object a -> IO (QSyntaxHighlighter ())
qCast_QSyntaxHighlighter _qobj
  = return (objectCast _qobj)

withQSyntaxHighlighterResult :: IO (Ptr (TQSyntaxHighlighter a)) -> IO (QSyntaxHighlighter a)
withQSyntaxHighlighterResult f
  = withObjectResult qtc_QSyntaxHighlighter_getFinalizer f

qSyntaxHighlighterFromPtr :: Ptr (TQSyntaxHighlighter a) -> IO (QSyntaxHighlighter a)
qSyntaxHighlighterFromPtr p
  = objectFromPtr qtc_QSyntaxHighlighter_getFinalizer p

withQListQSyntaxHighlighterResult :: (Ptr (Ptr (TQSyntaxHighlighter a)) -> IO CInt) -> IO [QSyntaxHighlighter a]
withQListQSyntaxHighlighterResult f
  = withQListObjectResult qtc_QSyntaxHighlighter_getFinalizer f

qSyntaxHighlighterListFromPtrList :: [Ptr (TQSyntaxHighlighter a)] -> IO [QSyntaxHighlighter a]
qSyntaxHighlighterListFromPtrList p
  = objectListFromPtrList qtc_QSyntaxHighlighter_getFinalizer p

foreign import ccall qtc_QSyntaxHighlighter_getFinalizer :: FunPtr (Ptr (TQSyntaxHighlighter a) -> IO ())

class QqCastList_QSyntaxHighlighter a r where
  qcl_QSyntaxHighlighter :: [QSyntaxHighlighter ()] -> a -> r

instance QqCastList_QSyntaxHighlighter (QSyntaxHighlighter ()) [QSyntaxHighlighter ()] where
  qcl_QSyntaxHighlighter l x = reverse $ x:l

instance QqCastList_QSyntaxHighlighter a r => QqCastList_QSyntaxHighlighter (QSyntaxHighlighter ()) (a -> r) where
  qcl_QSyntaxHighlighter l x sx = qcl_QSyntaxHighlighter (x:l) sx

qCastList_QSyntaxHighlighter x = qcl_QSyntaxHighlighter [] x

type QCompleter a = QObject (CQCompleter a)
type TQCompleter a = TQObject (CQCompleter a)
data CQCompleter a = CQCompleter

type QCompleterSc a = QCompleter (CQCompleterSc a)
type TQCompleterSc a = TQCompleter (CQCompleterSc a)
data CQCompleterSc a = CQCompleterSc

qCast_QCompleter :: Object a -> IO (QCompleter ())
qCast_QCompleter _qobj
  = return (objectCast _qobj)

withQCompleterResult :: IO (Ptr (TQCompleter a)) -> IO (QCompleter a)
withQCompleterResult f
  = withObjectResult qtc_QCompleter_getFinalizer f

qCompleterFromPtr :: Ptr (TQCompleter a) -> IO (QCompleter a)
qCompleterFromPtr p
  = objectFromPtr qtc_QCompleter_getFinalizer p

withQListQCompleterResult :: (Ptr (Ptr (TQCompleter a)) -> IO CInt) -> IO [QCompleter a]
withQListQCompleterResult f
  = withQListObjectResult qtc_QCompleter_getFinalizer f

qCompleterListFromPtrList :: [Ptr (TQCompleter a)] -> IO [QCompleter a]
qCompleterListFromPtrList p
  = objectListFromPtrList qtc_QCompleter_getFinalizer p

foreign import ccall qtc_QCompleter_getFinalizer :: FunPtr (Ptr (TQCompleter a) -> IO ())

class QqCastList_QCompleter a r where
  qcl_QCompleter :: [QCompleter ()] -> a -> r

instance QqCastList_QCompleter (QCompleter ()) [QCompleter ()] where
  qcl_QCompleter l x = reverse $ x:l

instance QqCastList_QCompleter a r => QqCastList_QCompleter (QCompleter ()) (a -> r) where
  qcl_QCompleter l x sx = qcl_QCompleter (x:l) sx

qCastList_QCompleter x = qcl_QCompleter [] x

type QUndoStack a = QObject (CQUndoStack a)
type TQUndoStack a = TQObject (CQUndoStack a)
data CQUndoStack a = CQUndoStack

type QUndoStackSc a = QUndoStack (CQUndoStackSc a)
type TQUndoStackSc a = TQUndoStack (CQUndoStackSc a)
data CQUndoStackSc a = CQUndoStackSc

qCast_QUndoStack :: Object a -> IO (QUndoStack ())
qCast_QUndoStack _qobj
  = return (objectCast _qobj)

withQUndoStackResult :: IO (Ptr (TQUndoStack a)) -> IO (QUndoStack a)
withQUndoStackResult f
  = withObjectResult qtc_QUndoStack_getFinalizer f

qUndoStackFromPtr :: Ptr (TQUndoStack a) -> IO (QUndoStack a)
qUndoStackFromPtr p
  = objectFromPtr qtc_QUndoStack_getFinalizer p

withQListQUndoStackResult :: (Ptr (Ptr (TQUndoStack a)) -> IO CInt) -> IO [QUndoStack a]
withQListQUndoStackResult f
  = withQListObjectResult qtc_QUndoStack_getFinalizer f

qUndoStackListFromPtrList :: [Ptr (TQUndoStack a)] -> IO [QUndoStack a]
qUndoStackListFromPtrList p
  = objectListFromPtrList qtc_QUndoStack_getFinalizer p

foreign import ccall qtc_QUndoStack_getFinalizer :: FunPtr (Ptr (TQUndoStack a) -> IO ())

class QqCastList_QUndoStack a r where
  qcl_QUndoStack :: [QUndoStack ()] -> a -> r

instance QqCastList_QUndoStack (QUndoStack ()) [QUndoStack ()] where
  qcl_QUndoStack l x = reverse $ x:l

instance QqCastList_QUndoStack a r => QqCastList_QUndoStack (QUndoStack ()) (a -> r) where
  qcl_QUndoStack l x sx = qcl_QUndoStack (x:l) sx

qCastList_QUndoStack x = qcl_QUndoStack [] x

type QInputContext a = QObject (CQInputContext a)
type TQInputContext a = TQObject (CQInputContext a)
data CQInputContext a = CQInputContext

type QInputContextSc a = QInputContext (CQInputContextSc a)
type TQInputContextSc a = TQInputContext (CQInputContextSc a)
data CQInputContextSc a = CQInputContextSc

qCast_QInputContext :: Object a -> IO (QInputContext ())
qCast_QInputContext _qobj
  = return (objectCast _qobj)

withQInputContextResult :: IO (Ptr (TQInputContext a)) -> IO (QInputContext a)
withQInputContextResult f
  = withObjectRefResult f

qInputContextFromPtr :: Ptr (TQInputContext a) -> IO (QInputContext a)
qInputContextFromPtr p
  = objectFromPtr_nf p

withQListQInputContextResult :: (Ptr (Ptr (TQInputContext a)) -> IO CInt) -> IO [QInputContext a]
withQListQInputContextResult f
  = withQListObjectRefResult f

qInputContextListFromPtrList :: [Ptr (TQInputContext a)] -> IO [QInputContext a]
qInputContextListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QInputContext a r where
  qcl_QInputContext :: [QInputContext ()] -> a -> r

instance QqCastList_QInputContext (QInputContext ()) [QInputContext ()] where
  qcl_QInputContext l x = reverse $ x:l

instance QqCastList_QInputContext a r => QqCastList_QInputContext (QInputContext ()) (a -> r) where
  qcl_QInputContext l x sx = qcl_QInputContext (x:l) sx

qCastList_QInputContext x = qcl_QInputContext [] x

type QAbstractTextDocumentLayout a = QObject (CQAbstractTextDocumentLayout a)
type TQAbstractTextDocumentLayout a = TQObject (CQAbstractTextDocumentLayout a)
data CQAbstractTextDocumentLayout a = CQAbstractTextDocumentLayout

type QAbstractTextDocumentLayoutSc a = QAbstractTextDocumentLayout (CQAbstractTextDocumentLayoutSc a)
type TQAbstractTextDocumentLayoutSc a = TQAbstractTextDocumentLayout (CQAbstractTextDocumentLayoutSc a)
data CQAbstractTextDocumentLayoutSc a = CQAbstractTextDocumentLayoutSc

qCast_QAbstractTextDocumentLayout :: Object a -> IO (QAbstractTextDocumentLayout ())
qCast_QAbstractTextDocumentLayout _qobj
  = return (objectCast _qobj)

withQAbstractTextDocumentLayoutResult :: IO (Ptr (TQAbstractTextDocumentLayout a)) -> IO (QAbstractTextDocumentLayout a)
withQAbstractTextDocumentLayoutResult f
  = withObjectRefResult f

qAbstractTextDocumentLayoutFromPtr :: Ptr (TQAbstractTextDocumentLayout a) -> IO (QAbstractTextDocumentLayout a)
qAbstractTextDocumentLayoutFromPtr p
  = objectFromPtr_nf p

withQListQAbstractTextDocumentLayoutResult :: (Ptr (Ptr (TQAbstractTextDocumentLayout a)) -> IO CInt) -> IO [QAbstractTextDocumentLayout a]
withQListQAbstractTextDocumentLayoutResult f
  = withQListObjectRefResult f

qAbstractTextDocumentLayoutListFromPtrList :: [Ptr (TQAbstractTextDocumentLayout a)] -> IO [QAbstractTextDocumentLayout a]
qAbstractTextDocumentLayoutListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QAbstractTextDocumentLayout a r where
  qcl_QAbstractTextDocumentLayout :: [QAbstractTextDocumentLayout ()] -> a -> r

instance QqCastList_QAbstractTextDocumentLayout (QAbstractTextDocumentLayout ()) [QAbstractTextDocumentLayout ()] where
  qcl_QAbstractTextDocumentLayout l x = reverse $ x:l

instance QqCastList_QAbstractTextDocumentLayout a r => QqCastList_QAbstractTextDocumentLayout (QAbstractTextDocumentLayout ()) (a -> r) where
  qcl_QAbstractTextDocumentLayout l x sx = qcl_QAbstractTextDocumentLayout (x:l) sx

qCastList_QAbstractTextDocumentLayout x = qcl_QAbstractTextDocumentLayout [] x

type QDataWidgetMapper a = QObject (CQDataWidgetMapper a)
type TQDataWidgetMapper a = TQObject (CQDataWidgetMapper a)
data CQDataWidgetMapper a = CQDataWidgetMapper

type QDataWidgetMapperSc a = QDataWidgetMapper (CQDataWidgetMapperSc a)
type TQDataWidgetMapperSc a = TQDataWidgetMapper (CQDataWidgetMapperSc a)
data CQDataWidgetMapperSc a = CQDataWidgetMapperSc

qCast_QDataWidgetMapper :: Object a -> IO (QDataWidgetMapper ())
qCast_QDataWidgetMapper _qobj
  = return (objectCast _qobj)

withQDataWidgetMapperResult :: IO (Ptr (TQDataWidgetMapper a)) -> IO (QDataWidgetMapper a)
withQDataWidgetMapperResult f
  = withObjectResult qtc_QDataWidgetMapper_getFinalizer f

qDataWidgetMapperFromPtr :: Ptr (TQDataWidgetMapper a) -> IO (QDataWidgetMapper a)
qDataWidgetMapperFromPtr p
  = objectFromPtr qtc_QDataWidgetMapper_getFinalizer p

withQListQDataWidgetMapperResult :: (Ptr (Ptr (TQDataWidgetMapper a)) -> IO CInt) -> IO [QDataWidgetMapper a]
withQListQDataWidgetMapperResult f
  = withQListObjectResult qtc_QDataWidgetMapper_getFinalizer f

qDataWidgetMapperListFromPtrList :: [Ptr (TQDataWidgetMapper a)] -> IO [QDataWidgetMapper a]
qDataWidgetMapperListFromPtrList p
  = objectListFromPtrList qtc_QDataWidgetMapper_getFinalizer p

foreign import ccall qtc_QDataWidgetMapper_getFinalizer :: FunPtr (Ptr (TQDataWidgetMapper a) -> IO ())

class QqCastList_QDataWidgetMapper a r where
  qcl_QDataWidgetMapper :: [QDataWidgetMapper ()] -> a -> r

instance QqCastList_QDataWidgetMapper (QDataWidgetMapper ()) [QDataWidgetMapper ()] where
  qcl_QDataWidgetMapper l x = reverse $ x:l

instance QqCastList_QDataWidgetMapper a r => QqCastList_QDataWidgetMapper (QDataWidgetMapper ()) (a -> r) where
  qcl_QDataWidgetMapper l x sx = qcl_QDataWidgetMapper (x:l) sx

qCastList_QDataWidgetMapper x = qcl_QDataWidgetMapper [] x

type QSystemTrayIcon a = QObject (CQSystemTrayIcon a)
type TQSystemTrayIcon a = TQObject (CQSystemTrayIcon a)
data CQSystemTrayIcon a = CQSystemTrayIcon

type QSystemTrayIconSc a = QSystemTrayIcon (CQSystemTrayIconSc a)
type TQSystemTrayIconSc a = TQSystemTrayIcon (CQSystemTrayIconSc a)
data CQSystemTrayIconSc a = CQSystemTrayIconSc

qCast_QSystemTrayIcon :: Object a -> IO (QSystemTrayIcon ())
qCast_QSystemTrayIcon _qobj
  = return (objectCast _qobj)

withQSystemTrayIconResult :: IO (Ptr (TQSystemTrayIcon a)) -> IO (QSystemTrayIcon a)
withQSystemTrayIconResult f
  = withObjectResult qtc_QSystemTrayIcon_getFinalizer f

qSystemTrayIconFromPtr :: Ptr (TQSystemTrayIcon a) -> IO (QSystemTrayIcon a)
qSystemTrayIconFromPtr p
  = objectFromPtr qtc_QSystemTrayIcon_getFinalizer p

withQListQSystemTrayIconResult :: (Ptr (Ptr (TQSystemTrayIcon a)) -> IO CInt) -> IO [QSystemTrayIcon a]
withQListQSystemTrayIconResult f
  = withQListObjectResult qtc_QSystemTrayIcon_getFinalizer f

qSystemTrayIconListFromPtrList :: [Ptr (TQSystemTrayIcon a)] -> IO [QSystemTrayIcon a]
qSystemTrayIconListFromPtrList p
  = objectListFromPtrList qtc_QSystemTrayIcon_getFinalizer p

foreign import ccall qtc_QSystemTrayIcon_getFinalizer :: FunPtr (Ptr (TQSystemTrayIcon a) -> IO ())

class QqCastList_QSystemTrayIcon a r where
  qcl_QSystemTrayIcon :: [QSystemTrayIcon ()] -> a -> r

instance QqCastList_QSystemTrayIcon (QSystemTrayIcon ()) [QSystemTrayIcon ()] where
  qcl_QSystemTrayIcon l x = reverse $ x:l

instance QqCastList_QSystemTrayIcon a r => QqCastList_QSystemTrayIcon (QSystemTrayIcon ()) (a -> r) where
  qcl_QSystemTrayIcon l x sx = qcl_QSystemTrayIcon (x:l) sx

qCastList_QSystemTrayIcon x = qcl_QSystemTrayIcon [] x

type QClipboard a = QObject (CQClipboard a)
type TQClipboard a = TQObject (CQClipboard a)
data CQClipboard a = CQClipboard

type QClipboardSc a = QClipboard (CQClipboardSc a)
type TQClipboardSc a = TQClipboard (CQClipboardSc a)
data CQClipboardSc a = CQClipboardSc

qCast_QClipboard :: Object a -> IO (QClipboard ())
qCast_QClipboard _qobj
  = return (objectCast _qobj)

withQClipboardResult :: IO (Ptr (TQClipboard a)) -> IO (QClipboard a)
withQClipboardResult f
  = withObjectResult qtc_QClipboard_getFinalizer f

qClipboardFromPtr :: Ptr (TQClipboard a) -> IO (QClipboard a)
qClipboardFromPtr p
  = objectFromPtr qtc_QClipboard_getFinalizer p

withQListQClipboardResult :: (Ptr (Ptr (TQClipboard a)) -> IO CInt) -> IO [QClipboard a]
withQListQClipboardResult f
  = withQListObjectResult qtc_QClipboard_getFinalizer f

qClipboardListFromPtrList :: [Ptr (TQClipboard a)] -> IO [QClipboard a]
qClipboardListFromPtrList p
  = objectListFromPtrList qtc_QClipboard_getFinalizer p

foreign import ccall qtc_QClipboard_getFinalizer :: FunPtr (Ptr (TQClipboard a) -> IO ())

class QqCastList_QClipboard a r where
  qcl_QClipboard :: [QClipboard ()] -> a -> r

instance QqCastList_QClipboard (QClipboard ()) [QClipboard ()] where
  qcl_QClipboard l x = reverse $ x:l

instance QqCastList_QClipboard a r => QqCastList_QClipboard (QClipboard ()) (a -> r) where
  qcl_QClipboard l x sx = qcl_QClipboard (x:l) sx

qCastList_QClipboard x = qcl_QClipboard [] x

type QGraphicsScene a = QObject (CQGraphicsScene a)
type TQGraphicsScene a = TQObject (CQGraphicsScene a)
data CQGraphicsScene a = CQGraphicsScene

type QGraphicsSceneSc a = QGraphicsScene (CQGraphicsSceneSc a)
type TQGraphicsSceneSc a = TQGraphicsScene (CQGraphicsSceneSc a)
data CQGraphicsSceneSc a = CQGraphicsSceneSc

qCast_QGraphicsScene :: Object a -> IO (QGraphicsScene ())
qCast_QGraphicsScene _qobj
  = return (objectCast _qobj)

withQGraphicsSceneResult :: IO (Ptr (TQGraphicsScene a)) -> IO (QGraphicsScene a)
withQGraphicsSceneResult f
  = withObjectResult qtc_QGraphicsScene_getFinalizer f

qGraphicsSceneFromPtr :: Ptr (TQGraphicsScene a) -> IO (QGraphicsScene a)
qGraphicsSceneFromPtr p
  = objectFromPtr qtc_QGraphicsScene_getFinalizer p

withQListQGraphicsSceneResult :: (Ptr (Ptr (TQGraphicsScene a)) -> IO CInt) -> IO [QGraphicsScene a]
withQListQGraphicsSceneResult f
  = withQListObjectResult qtc_QGraphicsScene_getFinalizer f

qGraphicsSceneListFromPtrList :: [Ptr (TQGraphicsScene a)] -> IO [QGraphicsScene a]
qGraphicsSceneListFromPtrList p
  = objectListFromPtrList qtc_QGraphicsScene_getFinalizer p

foreign import ccall qtc_QGraphicsScene_getFinalizer :: FunPtr (Ptr (TQGraphicsScene a) -> IO ())

class QqCastList_QGraphicsScene a r where
  qcl_QGraphicsScene :: [QGraphicsScene ()] -> a -> r

instance QqCastList_QGraphicsScene (QGraphicsScene ()) [QGraphicsScene ()] where
  qcl_QGraphicsScene l x = reverse $ x:l

instance QqCastList_QGraphicsScene a r => QqCastList_QGraphicsScene (QGraphicsScene ()) (a -> r) where
  qcl_QGraphicsScene l x sx = qcl_QGraphicsScene (x:l) sx

qCastList_QGraphicsScene x = qcl_QGraphicsScene [] x

type QUndoGroup a = QObject (CQUndoGroup a)
type TQUndoGroup a = TQObject (CQUndoGroup a)
data CQUndoGroup a = CQUndoGroup

type QUndoGroupSc a = QUndoGroup (CQUndoGroupSc a)
type TQUndoGroupSc a = TQUndoGroup (CQUndoGroupSc a)
data CQUndoGroupSc a = CQUndoGroupSc

qCast_QUndoGroup :: Object a -> IO (QUndoGroup ())
qCast_QUndoGroup _qobj
  = return (objectCast _qobj)

withQUndoGroupResult :: IO (Ptr (TQUndoGroup a)) -> IO (QUndoGroup a)
withQUndoGroupResult f
  = withObjectResult qtc_QUndoGroup_getFinalizer f

qUndoGroupFromPtr :: Ptr (TQUndoGroup a) -> IO (QUndoGroup a)
qUndoGroupFromPtr p
  = objectFromPtr qtc_QUndoGroup_getFinalizer p

withQListQUndoGroupResult :: (Ptr (Ptr (TQUndoGroup a)) -> IO CInt) -> IO [QUndoGroup a]
withQListQUndoGroupResult f
  = withQListObjectResult qtc_QUndoGroup_getFinalizer f

qUndoGroupListFromPtrList :: [Ptr (TQUndoGroup a)] -> IO [QUndoGroup a]
qUndoGroupListFromPtrList p
  = objectListFromPtrList qtc_QUndoGroup_getFinalizer p

foreign import ccall qtc_QUndoGroup_getFinalizer :: FunPtr (Ptr (TQUndoGroup a) -> IO ())

class QqCastList_QUndoGroup a r where
  qcl_QUndoGroup :: [QUndoGroup ()] -> a -> r

instance QqCastList_QUndoGroup (QUndoGroup ()) [QUndoGroup ()] where
  qcl_QUndoGroup l x = reverse $ x:l

instance QqCastList_QUndoGroup a r => QqCastList_QUndoGroup (QUndoGroup ()) (a -> r) where
  qcl_QUndoGroup l x sx = qcl_QUndoGroup (x:l) sx

qCastList_QUndoGroup x = qcl_QUndoGroup [] x

type QGraphicsTextItem a = QObject (CQGraphicsTextItem a)
type TQGraphicsTextItem a = TQObject (CQGraphicsTextItem a)
data CQGraphicsTextItem a = CQGraphicsTextItem

type QGraphicsTextItemSc a = QGraphicsTextItem (CQGraphicsTextItemSc a)
type TQGraphicsTextItemSc a = TQGraphicsTextItem (CQGraphicsTextItemSc a)
data CQGraphicsTextItemSc a = CQGraphicsTextItemSc

qCast_QGraphicsTextItem :: Object a -> IO (QGraphicsTextItem ())
qCast_QGraphicsTextItem _qobj
  = return (objectCast _qobj)

withQGraphicsTextItemResult :: IO (Ptr (TQGraphicsTextItem a)) -> IO (QGraphicsTextItem a)
withQGraphicsTextItemResult f
  = withObjectResult qtc_QGraphicsTextItem_getFinalizer f

qGraphicsTextItemFromPtr :: Ptr (TQGraphicsTextItem a) -> IO (QGraphicsTextItem a)
qGraphicsTextItemFromPtr p
  = objectFromPtr qtc_QGraphicsTextItem_getFinalizer p

withQListQGraphicsTextItemResult :: (Ptr (Ptr (TQGraphicsTextItem a)) -> IO CInt) -> IO [QGraphicsTextItem a]
withQListQGraphicsTextItemResult f
  = withQListObjectResult qtc_QGraphicsTextItem_getFinalizer f

qGraphicsTextItemListFromPtrList :: [Ptr (TQGraphicsTextItem a)] -> IO [QGraphicsTextItem a]
qGraphicsTextItemListFromPtrList p
  = objectListFromPtrList qtc_QGraphicsTextItem_getFinalizer p

foreign import ccall qtc_QGraphicsTextItem_getFinalizer :: FunPtr (Ptr (TQGraphicsTextItem a) -> IO ())

class QqCastList_QGraphicsTextItem a r where
  qcl_QGraphicsTextItem :: [QGraphicsTextItem ()] -> a -> r

instance QqCastList_QGraphicsTextItem (QGraphicsTextItem ()) [QGraphicsTextItem ()] where
  qcl_QGraphicsTextItem l x = reverse $ x:l

instance QqCastList_QGraphicsTextItem a r => QqCastList_QGraphicsTextItem (QGraphicsTextItem ()) (a -> r) where
  qcl_QGraphicsTextItem l x sx = qcl_QGraphicsTextItem (x:l) sx

qCastList_QGraphicsTextItem x = qcl_QGraphicsTextItem [] x

type QActionGroup a = QObject (CQActionGroup a)
type TQActionGroup a = TQObject (CQActionGroup a)
data CQActionGroup a = CQActionGroup

type QActionGroupSc a = QActionGroup (CQActionGroupSc a)
type TQActionGroupSc a = TQActionGroup (CQActionGroupSc a)
data CQActionGroupSc a = CQActionGroupSc

qCast_QActionGroup :: Object a -> IO (QActionGroup ())
qCast_QActionGroup _qobj
  = return (objectCast _qobj)

withQActionGroupResult :: IO (Ptr (TQActionGroup a)) -> IO (QActionGroup a)
withQActionGroupResult f
  = withObjectResult qtc_QActionGroup_getFinalizer f

qActionGroupFromPtr :: Ptr (TQActionGroup a) -> IO (QActionGroup a)
qActionGroupFromPtr p
  = objectFromPtr qtc_QActionGroup_getFinalizer p

withQListQActionGroupResult :: (Ptr (Ptr (TQActionGroup a)) -> IO CInt) -> IO [QActionGroup a]
withQListQActionGroupResult f
  = withQListObjectResult qtc_QActionGroup_getFinalizer f

qActionGroupListFromPtrList :: [Ptr (TQActionGroup a)] -> IO [QActionGroup a]
qActionGroupListFromPtrList p
  = objectListFromPtrList qtc_QActionGroup_getFinalizer p

foreign import ccall qtc_QActionGroup_getFinalizer :: FunPtr (Ptr (TQActionGroup a) -> IO ())

class QqCastList_QActionGroup a r where
  qcl_QActionGroup :: [QActionGroup ()] -> a -> r

instance QqCastList_QActionGroup (QActionGroup ()) [QActionGroup ()] where
  qcl_QActionGroup l x = reverse $ x:l

instance QqCastList_QActionGroup a r => QqCastList_QActionGroup (QActionGroup ()) (a -> r) where
  qcl_QActionGroup l x sx = qcl_QActionGroup (x:l) sx

qCastList_QActionGroup x = qcl_QActionGroup [] x

type QItemSelectionModel a = QObject (CQItemSelectionModel a)
type TQItemSelectionModel a = TQObject (CQItemSelectionModel a)
data CQItemSelectionModel a = CQItemSelectionModel

type QItemSelectionModelSc a = QItemSelectionModel (CQItemSelectionModelSc a)
type TQItemSelectionModelSc a = TQItemSelectionModel (CQItemSelectionModelSc a)
data CQItemSelectionModelSc a = CQItemSelectionModelSc

qCast_QItemSelectionModel :: Object a -> IO (QItemSelectionModel ())
qCast_QItemSelectionModel _qobj
  = return (objectCast _qobj)

withQItemSelectionModelResult :: IO (Ptr (TQItemSelectionModel a)) -> IO (QItemSelectionModel a)
withQItemSelectionModelResult f
  = withObjectRefResult f

qItemSelectionModelFromPtr :: Ptr (TQItemSelectionModel a) -> IO (QItemSelectionModel a)
qItemSelectionModelFromPtr p
  = objectFromPtr_nf p

withQListQItemSelectionModelResult :: (Ptr (Ptr (TQItemSelectionModel a)) -> IO CInt) -> IO [QItemSelectionModel a]
withQListQItemSelectionModelResult f
  = withQListObjectRefResult f

qItemSelectionModelListFromPtrList :: [Ptr (TQItemSelectionModel a)] -> IO [QItemSelectionModel a]
qItemSelectionModelListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QItemSelectionModel a r where
  qcl_QItemSelectionModel :: [QItemSelectionModel ()] -> a -> r

instance QqCastList_QItemSelectionModel (QItemSelectionModel ()) [QItemSelectionModel ()] where
  qcl_QItemSelectionModel l x = reverse $ x:l

instance QqCastList_QItemSelectionModel a r => QqCastList_QItemSelectionModel (QItemSelectionModel ()) (a -> r) where
  qcl_QItemSelectionModel l x sx = qcl_QItemSelectionModel (x:l) sx

qCastList_QItemSelectionModel x = qcl_QItemSelectionModel [] x

type QPicture a = QPaintDevice (CQPicture a)
type TQPicture a = TQPaintDevice (CQPicture a)
data CQPicture a = CQPicture

type QPictureSc a = QPicture (CQPictureSc a)
type TQPictureSc a = TQPicture (CQPictureSc a)
data CQPictureSc a = CQPictureSc

qCast_QPicture :: Object a -> IO (QPicture ())
qCast_QPicture _qobj
  = return (objectCast _qobj)

withQPictureResult :: IO (Ptr (TQPicture a)) -> IO (QPicture a)
withQPictureResult f
  = withObjectRefResult f

class QqCastList_QPicture a r where
  qcl_QPicture :: [QPicture ()] -> a -> r

instance QqCastList_QPicture (QPicture ()) [QPicture ()] where
  qcl_QPicture l x = reverse $ x:l

instance QqCastList_QPicture a r => QqCastList_QPicture (QPicture ()) (a -> r) where
  qcl_QPicture l x sx = qcl_QPicture (x:l) sx

qCastList_QPicture x = qcl_QPicture [] x

type QPrinter a = QPaintDevice (CQPrinter a)
type TQPrinter a = TQPaintDevice (CQPrinter a)
data CQPrinter a = CQPrinter

type QPrinterSc a = QPrinter (CQPrinterSc a)
type TQPrinterSc a = TQPrinter (CQPrinterSc a)
data CQPrinterSc a = CQPrinterSc

qCast_QPrinter :: Object a -> IO (QPrinter ())
qCast_QPrinter _qobj
  = return (objectCast _qobj)

withQPrinterResult :: IO (Ptr (TQPrinter a)) -> IO (QPrinter a)
withQPrinterResult f
  = withObjectResult qtc_QPrinter_getFinalizer f

foreign import ccall qtc_QPrinter_getFinalizer :: FunPtr (Ptr (TQPrinter a) -> IO ())

qPrinterAddFinalizer :: QPrinter a -> IO ()
qPrinterAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QPrinter_getFinalizer fp

foreign import ccall qtc_QPrinter_getFinalizer1 :: FunPtr (Ptr (TQPrinter a) -> IO ())

qPrinterAddFinalizer1 :: QPrinter a -> IO ()
qPrinterAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QPrinter_getFinalizer1 fp

class QqCastList_QPrinter a r where
  qcl_QPrinter :: [QPrinter ()] -> a -> r

instance QqCastList_QPrinter (QPrinter ()) [QPrinter ()] where
  qcl_QPrinter l x = reverse $ x:l

instance QqCastList_QPrinter a r => QqCastList_QPrinter (QPrinter ()) (a -> r) where
  qcl_QPrinter l x sx = qcl_QPrinter (x:l) sx

qCastList_QPrinter x = qcl_QPrinter [] x

type QImage a = QPaintDevice (CQImage a)
type TQImage a = TQPaintDevice (CQImage a)
data CQImage a = CQImage

type QImageSc a = QImage (CQImageSc a)
type TQImageSc a = TQImage (CQImageSc a)
data CQImageSc a = CQImageSc

qCast_QImage :: Object a -> IO (QImage ())
qCast_QImage _qobj
  = return (objectCast _qobj)

withQImageResult :: IO (Ptr (TQImage a)) -> IO (QImage a)
withQImageResult f
  = withObjectResult qtc_QImage_getFinalizer f

foreign import ccall qtc_QImage_getFinalizer :: FunPtr (Ptr (TQImage a) -> IO ())

qImageAddFinalizer :: QImage a -> IO ()
qImageAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QImage_getFinalizer fp

foreign import ccall qtc_QImage_getFinalizer1 :: FunPtr (Ptr (TQImage a) -> IO ())

qImageAddFinalizer1 :: QImage a -> IO ()
qImageAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QImage_getFinalizer1 fp

class QqCastList_QImage a r where
  qcl_QImage :: [QImage ()] -> a -> r

instance QqCastList_QImage (QImage ()) [QImage ()] where
  qcl_QImage l x = reverse $ x:l

instance QqCastList_QImage a r => QqCastList_QImage (QImage ()) (a -> r) where
  qcl_QImage l x sx = qcl_QImage (x:l) sx

qCastList_QImage x = qcl_QImage [] x

type QBitmap a = QPixmap (CQBitmap a)
type TQBitmap a = TQPixmap (CQBitmap a)
data CQBitmap a = CQBitmap

type QBitmapSc a = QBitmap (CQBitmapSc a)
type TQBitmapSc a = TQBitmap (CQBitmapSc a)
data CQBitmapSc a = CQBitmapSc

qCast_QBitmap :: Object a -> IO (QBitmap ())
qCast_QBitmap _qobj
  = return (objectCast _qobj)

withQBitmapResult :: IO (Ptr (TQBitmap a)) -> IO (QBitmap a)
withQBitmapResult f
  = withObjectResult qtc_QBitmap_getFinalizer f

foreign import ccall qtc_QBitmap_getFinalizer :: FunPtr (Ptr (TQBitmap a) -> IO ())

qBitmapAddFinalizer :: QBitmap a -> IO ()
qBitmapAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QBitmap_getFinalizer fp

foreign import ccall qtc_QBitmap_getFinalizer1 :: FunPtr (Ptr (TQBitmap a) -> IO ())

qBitmapAddFinalizer1 :: QBitmap a -> IO ()
qBitmapAddFinalizer1 (Object fp)
  = addForeignPtrFinalizer qtc_QBitmap_getFinalizer1 fp

class QqCastList_QBitmap a r where
  qcl_QBitmap :: [QBitmap ()] -> a -> r

instance QqCastList_QBitmap (QBitmap ()) [QBitmap ()] where
  qcl_QBitmap l x = reverse $ x:l

instance QqCastList_QBitmap a r => QqCastList_QBitmap (QBitmap ()) (a -> r) where
  qcl_QBitmap l x sx = qcl_QBitmap (x:l) sx

qCastList_QBitmap x = qcl_QBitmap [] x

type QStyleOptionRubberBand a = QStyleOption (CQStyleOptionRubberBand a)
type TQStyleOptionRubberBand a = TQStyleOption (CQStyleOptionRubberBand a)
data CQStyleOptionRubberBand a = CQStyleOptionRubberBand

type QStyleOptionRubberBandSc a = QStyleOptionRubberBand (CQStyleOptionRubberBandSc a)
type TQStyleOptionRubberBandSc a = TQStyleOptionRubberBand (CQStyleOptionRubberBandSc a)
data CQStyleOptionRubberBandSc a = CQStyleOptionRubberBandSc

qCast_QStyleOptionRubberBand :: Object a -> IO (QStyleOptionRubberBand ())
qCast_QStyleOptionRubberBand _qobj
  = return (objectCast _qobj)

withQStyleOptionRubberBandResult :: IO (Ptr (TQStyleOptionRubberBand a)) -> IO (QStyleOptionRubberBand a)
withQStyleOptionRubberBandResult f
  = withObjectResult qtc_QStyleOptionRubberBand_getFinalizer f

foreign import ccall qtc_QStyleOptionRubberBand_getFinalizer :: FunPtr (Ptr (TQStyleOptionRubberBand a) -> IO ())

qStyleOptionRubberBandAddFinalizer :: QStyleOptionRubberBand a -> IO ()
qStyleOptionRubberBandAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionRubberBand_getFinalizer fp

class QqCastList_QStyleOptionRubberBand a r where
  qcl_QStyleOptionRubberBand :: [QStyleOptionRubberBand ()] -> a -> r

instance QqCastList_QStyleOptionRubberBand (QStyleOptionRubberBand ()) [QStyleOptionRubberBand ()] where
  qcl_QStyleOptionRubberBand l x = reverse $ x:l

instance QqCastList_QStyleOptionRubberBand a r => QqCastList_QStyleOptionRubberBand (QStyleOptionRubberBand ()) (a -> r) where
  qcl_QStyleOptionRubberBand l x sx = qcl_QStyleOptionRubberBand (x:l) sx

qCastList_QStyleOptionRubberBand x = qcl_QStyleOptionRubberBand [] x

type QStyleOptionGraphicsItem a = QStyleOption (CQStyleOptionGraphicsItem a)
type TQStyleOptionGraphicsItem a = TQStyleOption (CQStyleOptionGraphicsItem a)
data CQStyleOptionGraphicsItem a = CQStyleOptionGraphicsItem

type QStyleOptionGraphicsItemSc a = QStyleOptionGraphicsItem (CQStyleOptionGraphicsItemSc a)
type TQStyleOptionGraphicsItemSc a = TQStyleOptionGraphicsItem (CQStyleOptionGraphicsItemSc a)
data CQStyleOptionGraphicsItemSc a = CQStyleOptionGraphicsItemSc

qCast_QStyleOptionGraphicsItem :: Object a -> IO (QStyleOptionGraphicsItem ())
qCast_QStyleOptionGraphicsItem _qobj
  = return (objectCast _qobj)

withQStyleOptionGraphicsItemResult :: IO (Ptr (TQStyleOptionGraphicsItem a)) -> IO (QStyleOptionGraphicsItem a)
withQStyleOptionGraphicsItemResult f
  = withObjectResult qtc_QStyleOptionGraphicsItem_getFinalizer f

foreign import ccall qtc_QStyleOptionGraphicsItem_getFinalizer :: FunPtr (Ptr (TQStyleOptionGraphicsItem a) -> IO ())

qStyleOptionGraphicsItemAddFinalizer :: QStyleOptionGraphicsItem a -> IO ()
qStyleOptionGraphicsItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionGraphicsItem_getFinalizer fp

class QqCastList_QStyleOptionGraphicsItem a r where
  qcl_QStyleOptionGraphicsItem :: [QStyleOptionGraphicsItem ()] -> a -> r

instance QqCastList_QStyleOptionGraphicsItem (QStyleOptionGraphicsItem ()) [QStyleOptionGraphicsItem ()] where
  qcl_QStyleOptionGraphicsItem l x = reverse $ x:l

instance QqCastList_QStyleOptionGraphicsItem a r => QqCastList_QStyleOptionGraphicsItem (QStyleOptionGraphicsItem ()) (a -> r) where
  qcl_QStyleOptionGraphicsItem l x sx = qcl_QStyleOptionGraphicsItem (x:l) sx

qCastList_QStyleOptionGraphicsItem x = qcl_QStyleOptionGraphicsItem [] x

type QStyleOptionToolBar a = QStyleOption (CQStyleOptionToolBar a)
type TQStyleOptionToolBar a = TQStyleOption (CQStyleOptionToolBar a)
data CQStyleOptionToolBar a = CQStyleOptionToolBar

type QStyleOptionToolBarSc a = QStyleOptionToolBar (CQStyleOptionToolBarSc a)
type TQStyleOptionToolBarSc a = TQStyleOptionToolBar (CQStyleOptionToolBarSc a)
data CQStyleOptionToolBarSc a = CQStyleOptionToolBarSc

qCast_QStyleOptionToolBar :: Object a -> IO (QStyleOptionToolBar ())
qCast_QStyleOptionToolBar _qobj
  = return (objectCast _qobj)

withQStyleOptionToolBarResult :: IO (Ptr (TQStyleOptionToolBar a)) -> IO (QStyleOptionToolBar a)
withQStyleOptionToolBarResult f
  = withObjectResult qtc_QStyleOptionToolBar_getFinalizer f

foreign import ccall qtc_QStyleOptionToolBar_getFinalizer :: FunPtr (Ptr (TQStyleOptionToolBar a) -> IO ())

qStyleOptionToolBarAddFinalizer :: QStyleOptionToolBar a -> IO ()
qStyleOptionToolBarAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionToolBar_getFinalizer fp

class QqCastList_QStyleOptionToolBar a r where
  qcl_QStyleOptionToolBar :: [QStyleOptionToolBar ()] -> a -> r

instance QqCastList_QStyleOptionToolBar (QStyleOptionToolBar ()) [QStyleOptionToolBar ()] where
  qcl_QStyleOptionToolBar l x = reverse $ x:l

instance QqCastList_QStyleOptionToolBar a r => QqCastList_QStyleOptionToolBar (QStyleOptionToolBar ()) (a -> r) where
  qcl_QStyleOptionToolBar l x sx = qcl_QStyleOptionToolBar (x:l) sx

qCastList_QStyleOptionToolBar x = qcl_QStyleOptionToolBar [] x

type QStyleOptionHeader a = QStyleOption (CQStyleOptionHeader a)
type TQStyleOptionHeader a = TQStyleOption (CQStyleOptionHeader a)
data CQStyleOptionHeader a = CQStyleOptionHeader

type QStyleOptionHeaderSc a = QStyleOptionHeader (CQStyleOptionHeaderSc a)
type TQStyleOptionHeaderSc a = TQStyleOptionHeader (CQStyleOptionHeaderSc a)
data CQStyleOptionHeaderSc a = CQStyleOptionHeaderSc

qCast_QStyleOptionHeader :: Object a -> IO (QStyleOptionHeader ())
qCast_QStyleOptionHeader _qobj
  = return (objectCast _qobj)

withQStyleOptionHeaderResult :: IO (Ptr (TQStyleOptionHeader a)) -> IO (QStyleOptionHeader a)
withQStyleOptionHeaderResult f
  = withObjectResult qtc_QStyleOptionHeader_getFinalizer f

foreign import ccall qtc_QStyleOptionHeader_getFinalizer :: FunPtr (Ptr (TQStyleOptionHeader a) -> IO ())

qStyleOptionHeaderAddFinalizer :: QStyleOptionHeader a -> IO ()
qStyleOptionHeaderAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionHeader_getFinalizer fp

class QqCastList_QStyleOptionHeader a r where
  qcl_QStyleOptionHeader :: [QStyleOptionHeader ()] -> a -> r

instance QqCastList_QStyleOptionHeader (QStyleOptionHeader ()) [QStyleOptionHeader ()] where
  qcl_QStyleOptionHeader l x = reverse $ x:l

instance QqCastList_QStyleOptionHeader a r => QqCastList_QStyleOptionHeader (QStyleOptionHeader ()) (a -> r) where
  qcl_QStyleOptionHeader l x sx = qcl_QStyleOptionHeader (x:l) sx

qCastList_QStyleOptionHeader x = qcl_QStyleOptionHeader [] x

type QStyleOptionTabBarBase a = QStyleOption (CQStyleOptionTabBarBase a)
type TQStyleOptionTabBarBase a = TQStyleOption (CQStyleOptionTabBarBase a)
data CQStyleOptionTabBarBase a = CQStyleOptionTabBarBase

type QStyleOptionTabBarBaseSc a = QStyleOptionTabBarBase (CQStyleOptionTabBarBaseSc a)
type TQStyleOptionTabBarBaseSc a = TQStyleOptionTabBarBase (CQStyleOptionTabBarBaseSc a)
data CQStyleOptionTabBarBaseSc a = CQStyleOptionTabBarBaseSc

qCast_QStyleOptionTabBarBase :: Object a -> IO (QStyleOptionTabBarBase ())
qCast_QStyleOptionTabBarBase _qobj
  = return (objectCast _qobj)

withQStyleOptionTabBarBaseResult :: IO (Ptr (TQStyleOptionTabBarBase a)) -> IO (QStyleOptionTabBarBase a)
withQStyleOptionTabBarBaseResult f
  = withObjectResult qtc_QStyleOptionTabBarBase_getFinalizer f

foreign import ccall qtc_QStyleOptionTabBarBase_getFinalizer :: FunPtr (Ptr (TQStyleOptionTabBarBase a) -> IO ())

qStyleOptionTabBarBaseAddFinalizer :: QStyleOptionTabBarBase a -> IO ()
qStyleOptionTabBarBaseAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionTabBarBase_getFinalizer fp

class QqCastList_QStyleOptionTabBarBase a r where
  qcl_QStyleOptionTabBarBase :: [QStyleOptionTabBarBase ()] -> a -> r

instance QqCastList_QStyleOptionTabBarBase (QStyleOptionTabBarBase ()) [QStyleOptionTabBarBase ()] where
  qcl_QStyleOptionTabBarBase l x = reverse $ x:l

instance QqCastList_QStyleOptionTabBarBase a r => QqCastList_QStyleOptionTabBarBase (QStyleOptionTabBarBase ()) (a -> r) where
  qcl_QStyleOptionTabBarBase l x sx = qcl_QStyleOptionTabBarBase (x:l) sx

qCastList_QStyleOptionTabBarBase x = qcl_QStyleOptionTabBarBase [] x

type QStyleOptionFocusRect a = QStyleOption (CQStyleOptionFocusRect a)
type TQStyleOptionFocusRect a = TQStyleOption (CQStyleOptionFocusRect a)
data CQStyleOptionFocusRect a = CQStyleOptionFocusRect

type QStyleOptionFocusRectSc a = QStyleOptionFocusRect (CQStyleOptionFocusRectSc a)
type TQStyleOptionFocusRectSc a = TQStyleOptionFocusRect (CQStyleOptionFocusRectSc a)
data CQStyleOptionFocusRectSc a = CQStyleOptionFocusRectSc

qCast_QStyleOptionFocusRect :: Object a -> IO (QStyleOptionFocusRect ())
qCast_QStyleOptionFocusRect _qobj
  = return (objectCast _qobj)

withQStyleOptionFocusRectResult :: IO (Ptr (TQStyleOptionFocusRect a)) -> IO (QStyleOptionFocusRect a)
withQStyleOptionFocusRectResult f
  = withObjectResult qtc_QStyleOptionFocusRect_getFinalizer f

foreign import ccall qtc_QStyleOptionFocusRect_getFinalizer :: FunPtr (Ptr (TQStyleOptionFocusRect a) -> IO ())

qStyleOptionFocusRectAddFinalizer :: QStyleOptionFocusRect a -> IO ()
qStyleOptionFocusRectAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionFocusRect_getFinalizer fp

class QqCastList_QStyleOptionFocusRect a r where
  qcl_QStyleOptionFocusRect :: [QStyleOptionFocusRect ()] -> a -> r

instance QqCastList_QStyleOptionFocusRect (QStyleOptionFocusRect ()) [QStyleOptionFocusRect ()] where
  qcl_QStyleOptionFocusRect l x = reverse $ x:l

instance QqCastList_QStyleOptionFocusRect a r => QqCastList_QStyleOptionFocusRect (QStyleOptionFocusRect ()) (a -> r) where
  qcl_QStyleOptionFocusRect l x sx = qcl_QStyleOptionFocusRect (x:l) sx

qCastList_QStyleOptionFocusRect x = qcl_QStyleOptionFocusRect [] x

type QStyleOptionTabWidgetFrame a = QStyleOption (CQStyleOptionTabWidgetFrame a)
type TQStyleOptionTabWidgetFrame a = TQStyleOption (CQStyleOptionTabWidgetFrame a)
data CQStyleOptionTabWidgetFrame a = CQStyleOptionTabWidgetFrame

type QStyleOptionTabWidgetFrameSc a = QStyleOptionTabWidgetFrame (CQStyleOptionTabWidgetFrameSc a)
type TQStyleOptionTabWidgetFrameSc a = TQStyleOptionTabWidgetFrame (CQStyleOptionTabWidgetFrameSc a)
data CQStyleOptionTabWidgetFrameSc a = CQStyleOptionTabWidgetFrameSc

qCast_QStyleOptionTabWidgetFrame :: Object a -> IO (QStyleOptionTabWidgetFrame ())
qCast_QStyleOptionTabWidgetFrame _qobj
  = return (objectCast _qobj)

withQStyleOptionTabWidgetFrameResult :: IO (Ptr (TQStyleOptionTabWidgetFrame a)) -> IO (QStyleOptionTabWidgetFrame a)
withQStyleOptionTabWidgetFrameResult f
  = withObjectResult qtc_QStyleOptionTabWidgetFrame_getFinalizer f

foreign import ccall qtc_QStyleOptionTabWidgetFrame_getFinalizer :: FunPtr (Ptr (TQStyleOptionTabWidgetFrame a) -> IO ())

qStyleOptionTabWidgetFrameAddFinalizer :: QStyleOptionTabWidgetFrame a -> IO ()
qStyleOptionTabWidgetFrameAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionTabWidgetFrame_getFinalizer fp

class QqCastList_QStyleOptionTabWidgetFrame a r where
  qcl_QStyleOptionTabWidgetFrame :: [QStyleOptionTabWidgetFrame ()] -> a -> r

instance QqCastList_QStyleOptionTabWidgetFrame (QStyleOptionTabWidgetFrame ()) [QStyleOptionTabWidgetFrame ()] where
  qcl_QStyleOptionTabWidgetFrame l x = reverse $ x:l

instance QqCastList_QStyleOptionTabWidgetFrame a r => QqCastList_QStyleOptionTabWidgetFrame (QStyleOptionTabWidgetFrame ()) (a -> r) where
  qcl_QStyleOptionTabWidgetFrame l x sx = qcl_QStyleOptionTabWidgetFrame (x:l) sx

qCastList_QStyleOptionTabWidgetFrame x = qcl_QStyleOptionTabWidgetFrame [] x

type QStyleOptionMenuItem a = QStyleOption (CQStyleOptionMenuItem a)
type TQStyleOptionMenuItem a = TQStyleOption (CQStyleOptionMenuItem a)
data CQStyleOptionMenuItem a = CQStyleOptionMenuItem

type QStyleOptionMenuItemSc a = QStyleOptionMenuItem (CQStyleOptionMenuItemSc a)
type TQStyleOptionMenuItemSc a = TQStyleOptionMenuItem (CQStyleOptionMenuItemSc a)
data CQStyleOptionMenuItemSc a = CQStyleOptionMenuItemSc

qCast_QStyleOptionMenuItem :: Object a -> IO (QStyleOptionMenuItem ())
qCast_QStyleOptionMenuItem _qobj
  = return (objectCast _qobj)

withQStyleOptionMenuItemResult :: IO (Ptr (TQStyleOptionMenuItem a)) -> IO (QStyleOptionMenuItem a)
withQStyleOptionMenuItemResult f
  = withObjectResult qtc_QStyleOptionMenuItem_getFinalizer f

foreign import ccall qtc_QStyleOptionMenuItem_getFinalizer :: FunPtr (Ptr (TQStyleOptionMenuItem a) -> IO ())

qStyleOptionMenuItemAddFinalizer :: QStyleOptionMenuItem a -> IO ()
qStyleOptionMenuItemAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionMenuItem_getFinalizer fp

class QqCastList_QStyleOptionMenuItem a r where
  qcl_QStyleOptionMenuItem :: [QStyleOptionMenuItem ()] -> a -> r

instance QqCastList_QStyleOptionMenuItem (QStyleOptionMenuItem ()) [QStyleOptionMenuItem ()] where
  qcl_QStyleOptionMenuItem l x = reverse $ x:l

instance QqCastList_QStyleOptionMenuItem a r => QqCastList_QStyleOptionMenuItem (QStyleOptionMenuItem ()) (a -> r) where
  qcl_QStyleOptionMenuItem l x sx = qcl_QStyleOptionMenuItem (x:l) sx

qCastList_QStyleOptionMenuItem x = qcl_QStyleOptionMenuItem [] x

type QStyleOptionButton a = QStyleOption (CQStyleOptionButton a)
type TQStyleOptionButton a = TQStyleOption (CQStyleOptionButton a)
data CQStyleOptionButton a = CQStyleOptionButton

type QStyleOptionButtonSc a = QStyleOptionButton (CQStyleOptionButtonSc a)
type TQStyleOptionButtonSc a = TQStyleOptionButton (CQStyleOptionButtonSc a)
data CQStyleOptionButtonSc a = CQStyleOptionButtonSc

qCast_QStyleOptionButton :: Object a -> IO (QStyleOptionButton ())
qCast_QStyleOptionButton _qobj
  = return (objectCast _qobj)

withQStyleOptionButtonResult :: IO (Ptr (TQStyleOptionButton a)) -> IO (QStyleOptionButton a)
withQStyleOptionButtonResult f
  = withObjectResult qtc_QStyleOptionButton_getFinalizer f

foreign import ccall qtc_QStyleOptionButton_getFinalizer :: FunPtr (Ptr (TQStyleOptionButton a) -> IO ())

qStyleOptionButtonAddFinalizer :: QStyleOptionButton a -> IO ()
qStyleOptionButtonAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionButton_getFinalizer fp

class QqCastList_QStyleOptionButton a r where
  qcl_QStyleOptionButton :: [QStyleOptionButton ()] -> a -> r

instance QqCastList_QStyleOptionButton (QStyleOptionButton ()) [QStyleOptionButton ()] where
  qcl_QStyleOptionButton l x = reverse $ x:l

instance QqCastList_QStyleOptionButton a r => QqCastList_QStyleOptionButton (QStyleOptionButton ()) (a -> r) where
  qcl_QStyleOptionButton l x sx = qcl_QStyleOptionButton (x:l) sx

qCastList_QStyleOptionButton x = qcl_QStyleOptionButton [] x

type QStyleOptionToolButton a = QStyleOptionComplex (CQStyleOptionToolButton a)
type TQStyleOptionToolButton a = TQStyleOptionComplex (CQStyleOptionToolButton a)
data CQStyleOptionToolButton a = CQStyleOptionToolButton

type QStyleOptionToolButtonSc a = QStyleOptionToolButton (CQStyleOptionToolButtonSc a)
type TQStyleOptionToolButtonSc a = TQStyleOptionToolButton (CQStyleOptionToolButtonSc a)
data CQStyleOptionToolButtonSc a = CQStyleOptionToolButtonSc

qCast_QStyleOptionToolButton :: Object a -> IO (QStyleOptionToolButton ())
qCast_QStyleOptionToolButton _qobj
  = return (objectCast _qobj)

withQStyleOptionToolButtonResult :: IO (Ptr (TQStyleOptionToolButton a)) -> IO (QStyleOptionToolButton a)
withQStyleOptionToolButtonResult f
  = withObjectResult qtc_QStyleOptionToolButton_getFinalizer f

foreign import ccall qtc_QStyleOptionToolButton_getFinalizer :: FunPtr (Ptr (TQStyleOptionToolButton a) -> IO ())

qStyleOptionToolButtonAddFinalizer :: QStyleOptionToolButton a -> IO ()
qStyleOptionToolButtonAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionToolButton_getFinalizer fp

class QqCastList_QStyleOptionToolButton a r where
  qcl_QStyleOptionToolButton :: [QStyleOptionToolButton ()] -> a -> r

instance QqCastList_QStyleOptionToolButton (QStyleOptionToolButton ()) [QStyleOptionToolButton ()] where
  qcl_QStyleOptionToolButton l x = reverse $ x:l

instance QqCastList_QStyleOptionToolButton a r => QqCastList_QStyleOptionToolButton (QStyleOptionToolButton ()) (a -> r) where
  qcl_QStyleOptionToolButton l x sx = qcl_QStyleOptionToolButton (x:l) sx

qCastList_QStyleOptionToolButton x = qcl_QStyleOptionToolButton [] x

type QStyleOptionSlider a = QStyleOptionComplex (CQStyleOptionSlider a)
type TQStyleOptionSlider a = TQStyleOptionComplex (CQStyleOptionSlider a)
data CQStyleOptionSlider a = CQStyleOptionSlider

type QStyleOptionSliderSc a = QStyleOptionSlider (CQStyleOptionSliderSc a)
type TQStyleOptionSliderSc a = TQStyleOptionSlider (CQStyleOptionSliderSc a)
data CQStyleOptionSliderSc a = CQStyleOptionSliderSc

qCast_QStyleOptionSlider :: Object a -> IO (QStyleOptionSlider ())
qCast_QStyleOptionSlider _qobj
  = return (objectCast _qobj)

withQStyleOptionSliderResult :: IO (Ptr (TQStyleOptionSlider a)) -> IO (QStyleOptionSlider a)
withQStyleOptionSliderResult f
  = withObjectResult qtc_QStyleOptionSlider_getFinalizer f

foreign import ccall qtc_QStyleOptionSlider_getFinalizer :: FunPtr (Ptr (TQStyleOptionSlider a) -> IO ())

qStyleOptionSliderAddFinalizer :: QStyleOptionSlider a -> IO ()
qStyleOptionSliderAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionSlider_getFinalizer fp

class QqCastList_QStyleOptionSlider a r where
  qcl_QStyleOptionSlider :: [QStyleOptionSlider ()] -> a -> r

instance QqCastList_QStyleOptionSlider (QStyleOptionSlider ()) [QStyleOptionSlider ()] where
  qcl_QStyleOptionSlider l x = reverse $ x:l

instance QqCastList_QStyleOptionSlider a r => QqCastList_QStyleOptionSlider (QStyleOptionSlider ()) (a -> r) where
  qcl_QStyleOptionSlider l x sx = qcl_QStyleOptionSlider (x:l) sx

qCastList_QStyleOptionSlider x = qcl_QStyleOptionSlider [] x

type QStyleOptionTitleBar a = QStyleOptionComplex (CQStyleOptionTitleBar a)
type TQStyleOptionTitleBar a = TQStyleOptionComplex (CQStyleOptionTitleBar a)
data CQStyleOptionTitleBar a = CQStyleOptionTitleBar

type QStyleOptionTitleBarSc a = QStyleOptionTitleBar (CQStyleOptionTitleBarSc a)
type TQStyleOptionTitleBarSc a = TQStyleOptionTitleBar (CQStyleOptionTitleBarSc a)
data CQStyleOptionTitleBarSc a = CQStyleOptionTitleBarSc

qCast_QStyleOptionTitleBar :: Object a -> IO (QStyleOptionTitleBar ())
qCast_QStyleOptionTitleBar _qobj
  = return (objectCast _qobj)

withQStyleOptionTitleBarResult :: IO (Ptr (TQStyleOptionTitleBar a)) -> IO (QStyleOptionTitleBar a)
withQStyleOptionTitleBarResult f
  = withObjectResult qtc_QStyleOptionTitleBar_getFinalizer f

foreign import ccall qtc_QStyleOptionTitleBar_getFinalizer :: FunPtr (Ptr (TQStyleOptionTitleBar a) -> IO ())

qStyleOptionTitleBarAddFinalizer :: QStyleOptionTitleBar a -> IO ()
qStyleOptionTitleBarAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionTitleBar_getFinalizer fp

class QqCastList_QStyleOptionTitleBar a r where
  qcl_QStyleOptionTitleBar :: [QStyleOptionTitleBar ()] -> a -> r

instance QqCastList_QStyleOptionTitleBar (QStyleOptionTitleBar ()) [QStyleOptionTitleBar ()] where
  qcl_QStyleOptionTitleBar l x = reverse $ x:l

instance QqCastList_QStyleOptionTitleBar a r => QqCastList_QStyleOptionTitleBar (QStyleOptionTitleBar ()) (a -> r) where
  qcl_QStyleOptionTitleBar l x sx = qcl_QStyleOptionTitleBar (x:l) sx

qCastList_QStyleOptionTitleBar x = qcl_QStyleOptionTitleBar [] x

type QStyleOptionGroupBox a = QStyleOptionComplex (CQStyleOptionGroupBox a)
type TQStyleOptionGroupBox a = TQStyleOptionComplex (CQStyleOptionGroupBox a)
data CQStyleOptionGroupBox a = CQStyleOptionGroupBox

type QStyleOptionGroupBoxSc a = QStyleOptionGroupBox (CQStyleOptionGroupBoxSc a)
type TQStyleOptionGroupBoxSc a = TQStyleOptionGroupBox (CQStyleOptionGroupBoxSc a)
data CQStyleOptionGroupBoxSc a = CQStyleOptionGroupBoxSc

qCast_QStyleOptionGroupBox :: Object a -> IO (QStyleOptionGroupBox ())
qCast_QStyleOptionGroupBox _qobj
  = return (objectCast _qobj)

withQStyleOptionGroupBoxResult :: IO (Ptr (TQStyleOptionGroupBox a)) -> IO (QStyleOptionGroupBox a)
withQStyleOptionGroupBoxResult f
  = withObjectResult qtc_QStyleOptionGroupBox_getFinalizer f

foreign import ccall qtc_QStyleOptionGroupBox_getFinalizer :: FunPtr (Ptr (TQStyleOptionGroupBox a) -> IO ())

qStyleOptionGroupBoxAddFinalizer :: QStyleOptionGroupBox a -> IO ()
qStyleOptionGroupBoxAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionGroupBox_getFinalizer fp

class QqCastList_QStyleOptionGroupBox a r where
  qcl_QStyleOptionGroupBox :: [QStyleOptionGroupBox ()] -> a -> r

instance QqCastList_QStyleOptionGroupBox (QStyleOptionGroupBox ()) [QStyleOptionGroupBox ()] where
  qcl_QStyleOptionGroupBox l x = reverse $ x:l

instance QqCastList_QStyleOptionGroupBox a r => QqCastList_QStyleOptionGroupBox (QStyleOptionGroupBox ()) (a -> r) where
  qcl_QStyleOptionGroupBox l x sx = qcl_QStyleOptionGroupBox (x:l) sx

qCastList_QStyleOptionGroupBox x = qcl_QStyleOptionGroupBox [] x

type QStyleOptionSpinBox a = QStyleOptionComplex (CQStyleOptionSpinBox a)
type TQStyleOptionSpinBox a = TQStyleOptionComplex (CQStyleOptionSpinBox a)
data CQStyleOptionSpinBox a = CQStyleOptionSpinBox

type QStyleOptionSpinBoxSc a = QStyleOptionSpinBox (CQStyleOptionSpinBoxSc a)
type TQStyleOptionSpinBoxSc a = TQStyleOptionSpinBox (CQStyleOptionSpinBoxSc a)
data CQStyleOptionSpinBoxSc a = CQStyleOptionSpinBoxSc

qCast_QStyleOptionSpinBox :: Object a -> IO (QStyleOptionSpinBox ())
qCast_QStyleOptionSpinBox _qobj
  = return (objectCast _qobj)

withQStyleOptionSpinBoxResult :: IO (Ptr (TQStyleOptionSpinBox a)) -> IO (QStyleOptionSpinBox a)
withQStyleOptionSpinBoxResult f
  = withObjectResult qtc_QStyleOptionSpinBox_getFinalizer f

foreign import ccall qtc_QStyleOptionSpinBox_getFinalizer :: FunPtr (Ptr (TQStyleOptionSpinBox a) -> IO ())

qStyleOptionSpinBoxAddFinalizer :: QStyleOptionSpinBox a -> IO ()
qStyleOptionSpinBoxAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionSpinBox_getFinalizer fp

class QqCastList_QStyleOptionSpinBox a r where
  qcl_QStyleOptionSpinBox :: [QStyleOptionSpinBox ()] -> a -> r

instance QqCastList_QStyleOptionSpinBox (QStyleOptionSpinBox ()) [QStyleOptionSpinBox ()] where
  qcl_QStyleOptionSpinBox l x = reverse $ x:l

instance QqCastList_QStyleOptionSpinBox a r => QqCastList_QStyleOptionSpinBox (QStyleOptionSpinBox ()) (a -> r) where
  qcl_QStyleOptionSpinBox l x sx = qcl_QStyleOptionSpinBox (x:l) sx

qCastList_QStyleOptionSpinBox x = qcl_QStyleOptionSpinBox [] x

type QStyleOptionComboBox a = QStyleOptionComplex (CQStyleOptionComboBox a)
type TQStyleOptionComboBox a = TQStyleOptionComplex (CQStyleOptionComboBox a)
data CQStyleOptionComboBox a = CQStyleOptionComboBox

type QStyleOptionComboBoxSc a = QStyleOptionComboBox (CQStyleOptionComboBoxSc a)
type TQStyleOptionComboBoxSc a = TQStyleOptionComboBox (CQStyleOptionComboBoxSc a)
data CQStyleOptionComboBoxSc a = CQStyleOptionComboBoxSc

qCast_QStyleOptionComboBox :: Object a -> IO (QStyleOptionComboBox ())
qCast_QStyleOptionComboBox _qobj
  = return (objectCast _qobj)

withQStyleOptionComboBoxResult :: IO (Ptr (TQStyleOptionComboBox a)) -> IO (QStyleOptionComboBox a)
withQStyleOptionComboBoxResult f
  = withObjectResult qtc_QStyleOptionComboBox_getFinalizer f

foreign import ccall qtc_QStyleOptionComboBox_getFinalizer :: FunPtr (Ptr (TQStyleOptionComboBox a) -> IO ())

qStyleOptionComboBoxAddFinalizer :: QStyleOptionComboBox a -> IO ()
qStyleOptionComboBoxAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionComboBox_getFinalizer fp

class QqCastList_QStyleOptionComboBox a r where
  qcl_QStyleOptionComboBox :: [QStyleOptionComboBox ()] -> a -> r

instance QqCastList_QStyleOptionComboBox (QStyleOptionComboBox ()) [QStyleOptionComboBox ()] where
  qcl_QStyleOptionComboBox l x = reverse $ x:l

instance QqCastList_QStyleOptionComboBox a r => QqCastList_QStyleOptionComboBox (QStyleOptionComboBox ()) (a -> r) where
  qcl_QStyleOptionComboBox l x sx = qcl_QStyleOptionComboBox (x:l) sx

qCastList_QStyleOptionComboBox x = qcl_QStyleOptionComboBox [] x

type QStyleOptionSizeGrip a = QStyleOptionComplex (CQStyleOptionSizeGrip a)
type TQStyleOptionSizeGrip a = TQStyleOptionComplex (CQStyleOptionSizeGrip a)
data CQStyleOptionSizeGrip a = CQStyleOptionSizeGrip

type QStyleOptionSizeGripSc a = QStyleOptionSizeGrip (CQStyleOptionSizeGripSc a)
type TQStyleOptionSizeGripSc a = TQStyleOptionSizeGrip (CQStyleOptionSizeGripSc a)
data CQStyleOptionSizeGripSc a = CQStyleOptionSizeGripSc

qCast_QStyleOptionSizeGrip :: Object a -> IO (QStyleOptionSizeGrip ())
qCast_QStyleOptionSizeGrip _qobj
  = return (objectCast _qobj)

withQStyleOptionSizeGripResult :: IO (Ptr (TQStyleOptionSizeGrip a)) -> IO (QStyleOptionSizeGrip a)
withQStyleOptionSizeGripResult f
  = withObjectResult qtc_QStyleOptionSizeGrip_getFinalizer f

foreign import ccall qtc_QStyleOptionSizeGrip_getFinalizer :: FunPtr (Ptr (TQStyleOptionSizeGrip a) -> IO ())

qStyleOptionSizeGripAddFinalizer :: QStyleOptionSizeGrip a -> IO ()
qStyleOptionSizeGripAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionSizeGrip_getFinalizer fp

class QqCastList_QStyleOptionSizeGrip a r where
  qcl_QStyleOptionSizeGrip :: [QStyleOptionSizeGrip ()] -> a -> r

instance QqCastList_QStyleOptionSizeGrip (QStyleOptionSizeGrip ()) [QStyleOptionSizeGrip ()] where
  qcl_QStyleOptionSizeGrip l x = reverse $ x:l

instance QqCastList_QStyleOptionSizeGrip a r => QqCastList_QStyleOptionSizeGrip (QStyleOptionSizeGrip ()) (a -> r) where
  qcl_QStyleOptionSizeGrip l x sx = qcl_QStyleOptionSizeGrip (x:l) sx

qCastList_QStyleOptionSizeGrip x = qcl_QStyleOptionSizeGrip [] x

type QStyleOptionDockWidgetV2 a = QStyleOptionDockWidget (CQStyleOptionDockWidgetV2 a)
type TQStyleOptionDockWidgetV2 a = TQStyleOptionDockWidget (CQStyleOptionDockWidgetV2 a)
data CQStyleOptionDockWidgetV2 a = CQStyleOptionDockWidgetV2

type QStyleOptionDockWidgetV2Sc a = QStyleOptionDockWidgetV2 (CQStyleOptionDockWidgetV2Sc a)
type TQStyleOptionDockWidgetV2Sc a = TQStyleOptionDockWidgetV2 (CQStyleOptionDockWidgetV2Sc a)
data CQStyleOptionDockWidgetV2Sc a = CQStyleOptionDockWidgetV2Sc

qCast_QStyleOptionDockWidgetV2 :: Object a -> IO (QStyleOptionDockWidgetV2 ())
qCast_QStyleOptionDockWidgetV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionDockWidgetV2Result :: IO (Ptr (TQStyleOptionDockWidgetV2 a)) -> IO (QStyleOptionDockWidgetV2 a)
withQStyleOptionDockWidgetV2Result f
  = withObjectResult qtc_QStyleOptionDockWidgetV2_getFinalizer f

foreign import ccall qtc_QStyleOptionDockWidgetV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionDockWidgetV2 a) -> IO ())

qStyleOptionDockWidgetV2AddFinalizer :: QStyleOptionDockWidgetV2 a -> IO ()
qStyleOptionDockWidgetV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionDockWidgetV2_getFinalizer fp

class QqCastList_QStyleOptionDockWidgetV2 a r where
  qcl_QStyleOptionDockWidgetV2 :: [QStyleOptionDockWidgetV2 ()] -> a -> r

instance QqCastList_QStyleOptionDockWidgetV2 (QStyleOptionDockWidgetV2 ()) [QStyleOptionDockWidgetV2 ()] where
  qcl_QStyleOptionDockWidgetV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionDockWidgetV2 a r => QqCastList_QStyleOptionDockWidgetV2 (QStyleOptionDockWidgetV2 ()) (a -> r) where
  qcl_QStyleOptionDockWidgetV2 l x sx = qcl_QStyleOptionDockWidgetV2 (x:l) sx

qCastList_QStyleOptionDockWidgetV2 x = qcl_QStyleOptionDockWidgetV2 [] x

type QStyleOptionFrameV2 a = QStyleOptionFrame (CQStyleOptionFrameV2 a)
type TQStyleOptionFrameV2 a = TQStyleOptionFrame (CQStyleOptionFrameV2 a)
data CQStyleOptionFrameV2 a = CQStyleOptionFrameV2

type QStyleOptionFrameV2Sc a = QStyleOptionFrameV2 (CQStyleOptionFrameV2Sc a)
type TQStyleOptionFrameV2Sc a = TQStyleOptionFrameV2 (CQStyleOptionFrameV2Sc a)
data CQStyleOptionFrameV2Sc a = CQStyleOptionFrameV2Sc

qCast_QStyleOptionFrameV2 :: Object a -> IO (QStyleOptionFrameV2 ())
qCast_QStyleOptionFrameV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionFrameV2Result :: IO (Ptr (TQStyleOptionFrameV2 a)) -> IO (QStyleOptionFrameV2 a)
withQStyleOptionFrameV2Result f
  = withObjectResult qtc_QStyleOptionFrameV2_getFinalizer f

foreign import ccall qtc_QStyleOptionFrameV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionFrameV2 a) -> IO ())

qStyleOptionFrameV2AddFinalizer :: QStyleOptionFrameV2 a -> IO ()
qStyleOptionFrameV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionFrameV2_getFinalizer fp

class QqCastList_QStyleOptionFrameV2 a r where
  qcl_QStyleOptionFrameV2 :: [QStyleOptionFrameV2 ()] -> a -> r

instance QqCastList_QStyleOptionFrameV2 (QStyleOptionFrameV2 ()) [QStyleOptionFrameV2 ()] where
  qcl_QStyleOptionFrameV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionFrameV2 a r => QqCastList_QStyleOptionFrameV2 (QStyleOptionFrameV2 ()) (a -> r) where
  qcl_QStyleOptionFrameV2 l x sx = qcl_QStyleOptionFrameV2 (x:l) sx

qCastList_QStyleOptionFrameV2 x = qcl_QStyleOptionFrameV2 [] x

type QStyleOptionProgressBarV2 a = QStyleOptionProgressBar (CQStyleOptionProgressBarV2 a)
type TQStyleOptionProgressBarV2 a = TQStyleOptionProgressBar (CQStyleOptionProgressBarV2 a)
data CQStyleOptionProgressBarV2 a = CQStyleOptionProgressBarV2

type QStyleOptionProgressBarV2Sc a = QStyleOptionProgressBarV2 (CQStyleOptionProgressBarV2Sc a)
type TQStyleOptionProgressBarV2Sc a = TQStyleOptionProgressBarV2 (CQStyleOptionProgressBarV2Sc a)
data CQStyleOptionProgressBarV2Sc a = CQStyleOptionProgressBarV2Sc

qCast_QStyleOptionProgressBarV2 :: Object a -> IO (QStyleOptionProgressBarV2 ())
qCast_QStyleOptionProgressBarV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionProgressBarV2Result :: IO (Ptr (TQStyleOptionProgressBarV2 a)) -> IO (QStyleOptionProgressBarV2 a)
withQStyleOptionProgressBarV2Result f
  = withObjectResult qtc_QStyleOptionProgressBarV2_getFinalizer f

foreign import ccall qtc_QStyleOptionProgressBarV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionProgressBarV2 a) -> IO ())

qStyleOptionProgressBarV2AddFinalizer :: QStyleOptionProgressBarV2 a -> IO ()
qStyleOptionProgressBarV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionProgressBarV2_getFinalizer fp

class QqCastList_QStyleOptionProgressBarV2 a r where
  qcl_QStyleOptionProgressBarV2 :: [QStyleOptionProgressBarV2 ()] -> a -> r

instance QqCastList_QStyleOptionProgressBarV2 (QStyleOptionProgressBarV2 ()) [QStyleOptionProgressBarV2 ()] where
  qcl_QStyleOptionProgressBarV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionProgressBarV2 a r => QqCastList_QStyleOptionProgressBarV2 (QStyleOptionProgressBarV2 ()) (a -> r) where
  qcl_QStyleOptionProgressBarV2 l x sx = qcl_QStyleOptionProgressBarV2 (x:l) sx

qCastList_QStyleOptionProgressBarV2 x = qcl_QStyleOptionProgressBarV2 [] x

type QStyleOptionTabV2 a = QStyleOptionTab (CQStyleOptionTabV2 a)
type TQStyleOptionTabV2 a = TQStyleOptionTab (CQStyleOptionTabV2 a)
data CQStyleOptionTabV2 a = CQStyleOptionTabV2

type QStyleOptionTabV2Sc a = QStyleOptionTabV2 (CQStyleOptionTabV2Sc a)
type TQStyleOptionTabV2Sc a = TQStyleOptionTabV2 (CQStyleOptionTabV2Sc a)
data CQStyleOptionTabV2Sc a = CQStyleOptionTabV2Sc

qCast_QStyleOptionTabV2 :: Object a -> IO (QStyleOptionTabV2 ())
qCast_QStyleOptionTabV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionTabV2Result :: IO (Ptr (TQStyleOptionTabV2 a)) -> IO (QStyleOptionTabV2 a)
withQStyleOptionTabV2Result f
  = withObjectResult qtc_QStyleOptionTabV2_getFinalizer f

foreign import ccall qtc_QStyleOptionTabV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionTabV2 a) -> IO ())

qStyleOptionTabV2AddFinalizer :: QStyleOptionTabV2 a -> IO ()
qStyleOptionTabV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionTabV2_getFinalizer fp

class QqCastList_QStyleOptionTabV2 a r where
  qcl_QStyleOptionTabV2 :: [QStyleOptionTabV2 ()] -> a -> r

instance QqCastList_QStyleOptionTabV2 (QStyleOptionTabV2 ()) [QStyleOptionTabV2 ()] where
  qcl_QStyleOptionTabV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionTabV2 a r => QqCastList_QStyleOptionTabV2 (QStyleOptionTabV2 ()) (a -> r) where
  qcl_QStyleOptionTabV2 l x sx = qcl_QStyleOptionTabV2 (x:l) sx

qCastList_QStyleOptionTabV2 x = qcl_QStyleOptionTabV2 [] x

type QStyleOptionToolBoxV2 a = QStyleOptionToolBox (CQStyleOptionToolBoxV2 a)
type TQStyleOptionToolBoxV2 a = TQStyleOptionToolBox (CQStyleOptionToolBoxV2 a)
data CQStyleOptionToolBoxV2 a = CQStyleOptionToolBoxV2

type QStyleOptionToolBoxV2Sc a = QStyleOptionToolBoxV2 (CQStyleOptionToolBoxV2Sc a)
type TQStyleOptionToolBoxV2Sc a = TQStyleOptionToolBoxV2 (CQStyleOptionToolBoxV2Sc a)
data CQStyleOptionToolBoxV2Sc a = CQStyleOptionToolBoxV2Sc

qCast_QStyleOptionToolBoxV2 :: Object a -> IO (QStyleOptionToolBoxV2 ())
qCast_QStyleOptionToolBoxV2 _qobj
  = return (objectCast _qobj)

withQStyleOptionToolBoxV2Result :: IO (Ptr (TQStyleOptionToolBoxV2 a)) -> IO (QStyleOptionToolBoxV2 a)
withQStyleOptionToolBoxV2Result f
  = withObjectResult qtc_QStyleOptionToolBoxV2_getFinalizer f

foreign import ccall qtc_QStyleOptionToolBoxV2_getFinalizer :: FunPtr (Ptr (TQStyleOptionToolBoxV2 a) -> IO ())

qStyleOptionToolBoxV2AddFinalizer :: QStyleOptionToolBoxV2 a -> IO ()
qStyleOptionToolBoxV2AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionToolBoxV2_getFinalizer fp

class QqCastList_QStyleOptionToolBoxV2 a r where
  qcl_QStyleOptionToolBoxV2 :: [QStyleOptionToolBoxV2 ()] -> a -> r

instance QqCastList_QStyleOptionToolBoxV2 (QStyleOptionToolBoxV2 ()) [QStyleOptionToolBoxV2 ()] where
  qcl_QStyleOptionToolBoxV2 l x = reverse $ x:l

instance QqCastList_QStyleOptionToolBoxV2 a r => QqCastList_QStyleOptionToolBoxV2 (QStyleOptionToolBoxV2 ()) (a -> r) where
  qcl_QStyleOptionToolBoxV2 l x sx = qcl_QStyleOptionToolBoxV2 (x:l) sx

qCastList_QStyleOptionToolBoxV2 x = qcl_QStyleOptionToolBoxV2 [] x

type QStyleOptionViewItemV3 a = QStyleOptionViewItemV2 (CQStyleOptionViewItemV3 a)
type TQStyleOptionViewItemV3 a = TQStyleOptionViewItemV2 (CQStyleOptionViewItemV3 a)
data CQStyleOptionViewItemV3 a = CQStyleOptionViewItemV3

type QStyleOptionViewItemV3Sc a = QStyleOptionViewItemV3 (CQStyleOptionViewItemV3Sc a)
type TQStyleOptionViewItemV3Sc a = TQStyleOptionViewItemV3 (CQStyleOptionViewItemV3Sc a)
data CQStyleOptionViewItemV3Sc a = CQStyleOptionViewItemV3Sc

qCast_QStyleOptionViewItemV3 :: Object a -> IO (QStyleOptionViewItemV3 ())
qCast_QStyleOptionViewItemV3 _qobj
  = return (objectCast _qobj)

withQStyleOptionViewItemV3Result :: IO (Ptr (TQStyleOptionViewItemV3 a)) -> IO (QStyleOptionViewItemV3 a)
withQStyleOptionViewItemV3Result f
  = withObjectResult qtc_QStyleOptionViewItemV3_getFinalizer f

foreign import ccall qtc_QStyleOptionViewItemV3_getFinalizer :: FunPtr (Ptr (TQStyleOptionViewItemV3 a) -> IO ())

qStyleOptionViewItemV3AddFinalizer :: QStyleOptionViewItemV3 a -> IO ()
qStyleOptionViewItemV3AddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QStyleOptionViewItemV3_getFinalizer fp

class QqCastList_QStyleOptionViewItemV3 a r where
  qcl_QStyleOptionViewItemV3 :: [QStyleOptionViewItemV3 ()] -> a -> r

instance QqCastList_QStyleOptionViewItemV3 (QStyleOptionViewItemV3 ()) [QStyleOptionViewItemV3 ()] where
  qcl_QStyleOptionViewItemV3 l x = reverse $ x:l

instance QqCastList_QStyleOptionViewItemV3 a r => QqCastList_QStyleOptionViewItemV3 (QStyleOptionViewItemV3 ()) (a -> r) where
  qcl_QStyleOptionViewItemV3 l x sx = qcl_QStyleOptionViewItemV3 (x:l) sx

qCastList_QStyleOptionViewItemV3 x = qcl_QStyleOptionViewItemV3 [] x

type QTableWidget a = QTableView (CQTableWidget a)
type TQTableWidget a = TQTableView (CQTableWidget a)
data CQTableWidget a = CQTableWidget

type QTableWidgetSc a = QTableWidget (CQTableWidgetSc a)
type TQTableWidgetSc a = TQTableWidget (CQTableWidgetSc a)
data CQTableWidgetSc a = CQTableWidgetSc

qCast_QTableWidget :: Object a -> IO (QTableWidget ())
qCast_QTableWidget _qobj
  = return (objectCast _qobj)

withQTableWidgetResult :: IO (Ptr (TQTableWidget a)) -> IO (QTableWidget a)
withQTableWidgetResult f
  = withObjectResult qtc_QTableWidget_getFinalizer f

qTableWidgetFromPtr :: Ptr (TQTableWidget a) -> IO (QTableWidget a)
qTableWidgetFromPtr p
  = objectFromPtr qtc_QTableWidget_getFinalizer p

withQListQTableWidgetResult :: (Ptr (Ptr (TQTableWidget a)) -> IO CInt) -> IO [QTableWidget a]
withQListQTableWidgetResult f
  = withQListObjectResult qtc_QTableWidget_getFinalizer f

qTableWidgetListFromPtrList :: [Ptr (TQTableWidget a)] -> IO [QTableWidget a]
qTableWidgetListFromPtrList p
  = objectListFromPtrList qtc_QTableWidget_getFinalizer p

foreign import ccall qtc_QTableWidget_getFinalizer :: FunPtr (Ptr (TQTableWidget a) -> IO ())

class QqCastList_QTableWidget a r where
  qcl_QTableWidget :: [QTableWidget ()] -> a -> r

instance QqCastList_QTableWidget (QTableWidget ()) [QTableWidget ()] where
  qcl_QTableWidget l x = reverse $ x:l

instance QqCastList_QTableWidget a r => QqCastList_QTableWidget (QTableWidget ()) (a -> r) where
  qcl_QTableWidget l x sx = qcl_QTableWidget (x:l) sx

qCastList_QTableWidget x = qcl_QTableWidget [] x

type QTextList a = QTextBlockGroup (CQTextList a)
type TQTextList a = TQTextBlockGroup (CQTextList a)
data CQTextList a = CQTextList

type QTextListSc a = QTextList (CQTextListSc a)
type TQTextListSc a = TQTextList (CQTextListSc a)
data CQTextListSc a = CQTextListSc

qCast_QTextList :: Object a -> IO (QTextList ())
qCast_QTextList _qobj
  = return (objectCast _qobj)

withQTextListResult :: IO (Ptr (TQTextList a)) -> IO (QTextList a)
withQTextListResult f
  = withObjectResult qtc_QTextList_getFinalizer f

qTextListFromPtr :: Ptr (TQTextList a) -> IO (QTextList a)
qTextListFromPtr p
  = objectFromPtr qtc_QTextList_getFinalizer p

withQListQTextListResult :: (Ptr (Ptr (TQTextList a)) -> IO CInt) -> IO [QTextList a]
withQListQTextListResult f
  = withQListObjectResult qtc_QTextList_getFinalizer f

qTextListListFromPtrList :: [Ptr (TQTextList a)] -> IO [QTextList a]
qTextListListFromPtrList p
  = objectListFromPtrList qtc_QTextList_getFinalizer p

foreign import ccall qtc_QTextList_getFinalizer :: FunPtr (Ptr (TQTextList a) -> IO ())

class QqCastList_QTextList a r where
  qcl_QTextList :: [QTextList ()] -> a -> r

instance QqCastList_QTextList (QTextList ()) [QTextList ()] where
  qcl_QTextList l x = reverse $ x:l

instance QqCastList_QTextList a r => QqCastList_QTextList (QTextList ()) (a -> r) where
  qcl_QTextList l x sx = qcl_QTextList (x:l) sx

qCastList_QTextList x = qcl_QTextList [] x

type QTextImageFormat a = QTextCharFormat (CQTextImageFormat a)
type TQTextImageFormat a = TQTextCharFormat (CQTextImageFormat a)
data CQTextImageFormat a = CQTextImageFormat

type QTextImageFormatSc a = QTextImageFormat (CQTextImageFormatSc a)
type TQTextImageFormatSc a = TQTextImageFormat (CQTextImageFormatSc a)
data CQTextImageFormatSc a = CQTextImageFormatSc

qCast_QTextImageFormat :: Object a -> IO (QTextImageFormat ())
qCast_QTextImageFormat _qobj
  = return (objectCast _qobj)

withQTextImageFormatResult :: IO (Ptr (TQTextImageFormat a)) -> IO (QTextImageFormat a)
withQTextImageFormatResult f
  = withObjectResult qtc_QTextImageFormat_getFinalizer f

foreign import ccall qtc_QTextImageFormat_getFinalizer :: FunPtr (Ptr (TQTextImageFormat a) -> IO ())

qTextImageFormatAddFinalizer :: QTextImageFormat a -> IO ()
qTextImageFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextImageFormat_getFinalizer fp

class QqCastList_QTextImageFormat a r where
  qcl_QTextImageFormat :: [QTextImageFormat ()] -> a -> r

instance QqCastList_QTextImageFormat (QTextImageFormat ()) [QTextImageFormat ()] where
  qcl_QTextImageFormat l x = reverse $ x:l

instance QqCastList_QTextImageFormat a r => QqCastList_QTextImageFormat (QTextImageFormat ()) (a -> r) where
  qcl_QTextImageFormat l x sx = qcl_QTextImageFormat (x:l) sx

qCastList_QTextImageFormat x = qcl_QTextImageFormat [] x

type QTextBrowser a = QTextEdit (CQTextBrowser a)
type TQTextBrowser a = TQTextEdit (CQTextBrowser a)
data CQTextBrowser a = CQTextBrowser

type QTextBrowserSc a = QTextBrowser (CQTextBrowserSc a)
type TQTextBrowserSc a = TQTextBrowser (CQTextBrowserSc a)
data CQTextBrowserSc a = CQTextBrowserSc

qCast_QTextBrowser :: Object a -> IO (QTextBrowser ())
qCast_QTextBrowser _qobj
  = return (objectCast _qobj)

withQTextBrowserResult :: IO (Ptr (TQTextBrowser a)) -> IO (QTextBrowser a)
withQTextBrowserResult f
  = withObjectResult qtc_QTextBrowser_getFinalizer f

qTextBrowserFromPtr :: Ptr (TQTextBrowser a) -> IO (QTextBrowser a)
qTextBrowserFromPtr p
  = objectFromPtr qtc_QTextBrowser_getFinalizer p

withQListQTextBrowserResult :: (Ptr (Ptr (TQTextBrowser a)) -> IO CInt) -> IO [QTextBrowser a]
withQListQTextBrowserResult f
  = withQListObjectResult qtc_QTextBrowser_getFinalizer f

qTextBrowserListFromPtrList :: [Ptr (TQTextBrowser a)] -> IO [QTextBrowser a]
qTextBrowserListFromPtrList p
  = objectListFromPtrList qtc_QTextBrowser_getFinalizer p

foreign import ccall qtc_QTextBrowser_getFinalizer :: FunPtr (Ptr (TQTextBrowser a) -> IO ())

class QqCastList_QTextBrowser a r where
  qcl_QTextBrowser :: [QTextBrowser ()] -> a -> r

instance QqCastList_QTextBrowser (QTextBrowser ()) [QTextBrowser ()] where
  qcl_QTextBrowser l x = reverse $ x:l

instance QqCastList_QTextBrowser a r => QqCastList_QTextBrowser (QTextBrowser ()) (a -> r) where
  qcl_QTextBrowser l x sx = qcl_QTextBrowser (x:l) sx

qCastList_QTextBrowser x = qcl_QTextBrowser [] x

type QTextBlockFormat a = QTextFormat (CQTextBlockFormat a)
type TQTextBlockFormat a = TQTextFormat (CQTextBlockFormat a)
data CQTextBlockFormat a = CQTextBlockFormat

type QTextBlockFormatSc a = QTextBlockFormat (CQTextBlockFormatSc a)
type TQTextBlockFormatSc a = TQTextBlockFormat (CQTextBlockFormatSc a)
data CQTextBlockFormatSc a = CQTextBlockFormatSc

qCast_QTextBlockFormat :: Object a -> IO (QTextBlockFormat ())
qCast_QTextBlockFormat _qobj
  = return (objectCast _qobj)

withQTextBlockFormatResult :: IO (Ptr (TQTextBlockFormat a)) -> IO (QTextBlockFormat a)
withQTextBlockFormatResult f
  = withObjectResult qtc_QTextBlockFormat_getFinalizer f

foreign import ccall qtc_QTextBlockFormat_getFinalizer :: FunPtr (Ptr (TQTextBlockFormat a) -> IO ())

qTextBlockFormatAddFinalizer :: QTextBlockFormat a -> IO ()
qTextBlockFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextBlockFormat_getFinalizer fp

class QqCastList_QTextBlockFormat a r where
  qcl_QTextBlockFormat :: [QTextBlockFormat ()] -> a -> r

instance QqCastList_QTextBlockFormat (QTextBlockFormat ()) [QTextBlockFormat ()] where
  qcl_QTextBlockFormat l x = reverse $ x:l

instance QqCastList_QTextBlockFormat a r => QqCastList_QTextBlockFormat (QTextBlockFormat ()) (a -> r) where
  qcl_QTextBlockFormat l x sx = qcl_QTextBlockFormat (x:l) sx

qCastList_QTextBlockFormat x = qcl_QTextBlockFormat [] x

type QTextListFormat a = QTextFormat (CQTextListFormat a)
type TQTextListFormat a = TQTextFormat (CQTextListFormat a)
data CQTextListFormat a = CQTextListFormat

type QTextListFormatSc a = QTextListFormat (CQTextListFormatSc a)
type TQTextListFormatSc a = TQTextListFormat (CQTextListFormatSc a)
data CQTextListFormatSc a = CQTextListFormatSc

qCast_QTextListFormat :: Object a -> IO (QTextListFormat ())
qCast_QTextListFormat _qobj
  = return (objectCast _qobj)

withQTextListFormatResult :: IO (Ptr (TQTextListFormat a)) -> IO (QTextListFormat a)
withQTextListFormatResult f
  = withObjectResult qtc_QTextListFormat_getFinalizer f

foreign import ccall qtc_QTextListFormat_getFinalizer :: FunPtr (Ptr (TQTextListFormat a) -> IO ())

qTextListFormatAddFinalizer :: QTextListFormat a -> IO ()
qTextListFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextListFormat_getFinalizer fp

class QqCastList_QTextListFormat a r where
  qcl_QTextListFormat :: [QTextListFormat ()] -> a -> r

instance QqCastList_QTextListFormat (QTextListFormat ()) [QTextListFormat ()] where
  qcl_QTextListFormat l x = reverse $ x:l

instance QqCastList_QTextListFormat a r => QqCastList_QTextListFormat (QTextListFormat ()) (a -> r) where
  qcl_QTextListFormat l x sx = qcl_QTextListFormat (x:l) sx

qCastList_QTextListFormat x = qcl_QTextListFormat [] x

type QTextTable a = QTextFrame (CQTextTable a)
type TQTextTable a = TQTextFrame (CQTextTable a)
data CQTextTable a = CQTextTable

type QTextTableSc a = QTextTable (CQTextTableSc a)
type TQTextTableSc a = TQTextTable (CQTextTableSc a)
data CQTextTableSc a = CQTextTableSc

qCast_QTextTable :: Object a -> IO (QTextTable ())
qCast_QTextTable _qobj
  = return (objectCast _qobj)

withQTextTableResult :: IO (Ptr (TQTextTable a)) -> IO (QTextTable a)
withQTextTableResult f
  = withObjectResult qtc_QTextTable_getFinalizer f

qTextTableFromPtr :: Ptr (TQTextTable a) -> IO (QTextTable a)
qTextTableFromPtr p
  = objectFromPtr qtc_QTextTable_getFinalizer p

withQListQTextTableResult :: (Ptr (Ptr (TQTextTable a)) -> IO CInt) -> IO [QTextTable a]
withQListQTextTableResult f
  = withQListObjectResult qtc_QTextTable_getFinalizer f

qTextTableListFromPtrList :: [Ptr (TQTextTable a)] -> IO [QTextTable a]
qTextTableListFromPtrList p
  = objectListFromPtrList qtc_QTextTable_getFinalizer p

foreign import ccall qtc_QTextTable_getFinalizer :: FunPtr (Ptr (TQTextTable a) -> IO ())

class QqCastList_QTextTable a r where
  qcl_QTextTable :: [QTextTable ()] -> a -> r

instance QqCastList_QTextTable (QTextTable ()) [QTextTable ()] where
  qcl_QTextTable l x = reverse $ x:l

instance QqCastList_QTextTable a r => QqCastList_QTextTable (QTextTable ()) (a -> r) where
  qcl_QTextTable l x sx = qcl_QTextTable (x:l) sx

qCastList_QTextTable x = qcl_QTextTable [] x

type QTextTableFormat a = QTextFrameFormat (CQTextTableFormat a)
type TQTextTableFormat a = TQTextFrameFormat (CQTextTableFormat a)
data CQTextTableFormat a = CQTextTableFormat

type QTextTableFormatSc a = QTextTableFormat (CQTextTableFormatSc a)
type TQTextTableFormatSc a = TQTextTableFormat (CQTextTableFormatSc a)
data CQTextTableFormatSc a = CQTextTableFormatSc

qCast_QTextTableFormat :: Object a -> IO (QTextTableFormat ())
qCast_QTextTableFormat _qobj
  = return (objectCast _qobj)

withQTextTableFormatResult :: IO (Ptr (TQTextTableFormat a)) -> IO (QTextTableFormat a)
withQTextTableFormatResult f
  = withObjectResult qtc_QTextTableFormat_getFinalizer f

foreign import ccall qtc_QTextTableFormat_getFinalizer :: FunPtr (Ptr (TQTextTableFormat a) -> IO ())

qTextTableFormatAddFinalizer :: QTextTableFormat a -> IO ()
qTextTableFormatAddFinalizer (Object fp)
  = addForeignPtrFinalizer qtc_QTextTableFormat_getFinalizer fp

class QqCastList_QTextTableFormat a r where
  qcl_QTextTableFormat :: [QTextTableFormat ()] -> a -> r

instance QqCastList_QTextTableFormat (QTextTableFormat ()) [QTextTableFormat ()] where
  qcl_QTextTableFormat l x = reverse $ x:l

instance QqCastList_QTextTableFormat a r => QqCastList_QTextTableFormat (QTextTableFormat ()) (a -> r) where
  qcl_QTextTableFormat l x sx = qcl_QTextTableFormat (x:l) sx

qCastList_QTextTableFormat x = qcl_QTextTableFormat [] x

type QTreeWidget a = QTreeView (CQTreeWidget a)
type TQTreeWidget a = TQTreeView (CQTreeWidget a)
data CQTreeWidget a = CQTreeWidget

type QTreeWidgetSc a = QTreeWidget (CQTreeWidgetSc a)
type TQTreeWidgetSc a = TQTreeWidget (CQTreeWidgetSc a)
data CQTreeWidgetSc a = CQTreeWidgetSc

qCast_QTreeWidget :: Object a -> IO (QTreeWidget ())
qCast_QTreeWidget _qobj
  = return (objectCast _qobj)

withQTreeWidgetResult :: IO (Ptr (TQTreeWidget a)) -> IO (QTreeWidget a)
withQTreeWidgetResult f
  = withObjectResult qtc_QTreeWidget_getFinalizer f

qTreeWidgetFromPtr :: Ptr (TQTreeWidget a) -> IO (QTreeWidget a)
qTreeWidgetFromPtr p
  = objectFromPtr qtc_QTreeWidget_getFinalizer p

withQListQTreeWidgetResult :: (Ptr (Ptr (TQTreeWidget a)) -> IO CInt) -> IO [QTreeWidget a]
withQListQTreeWidgetResult f
  = withQListObjectResult qtc_QTreeWidget_getFinalizer f

qTreeWidgetListFromPtrList :: [Ptr (TQTreeWidget a)] -> IO [QTreeWidget a]
qTreeWidgetListFromPtrList p
  = objectListFromPtrList qtc_QTreeWidget_getFinalizer p

foreign import ccall qtc_QTreeWidget_getFinalizer :: FunPtr (Ptr (TQTreeWidget a) -> IO ())

class QqCastList_QTreeWidget a r where
  qcl_QTreeWidget :: [QTreeWidget ()] -> a -> r

instance QqCastList_QTreeWidget (QTreeWidget ()) [QTreeWidget ()] where
  qcl_QTreeWidget l x = reverse $ x:l

instance QqCastList_QTreeWidget a r => QqCastList_QTreeWidget (QTreeWidget ()) (a -> r) where
  qcl_QTreeWidget l x sx = qcl_QTreeWidget (x:l) sx

qCastList_QTreeWidget x = qcl_QTreeWidget [] x

type QRegExpValidator a = QValidator (CQRegExpValidator a)
type TQRegExpValidator a = TQValidator (CQRegExpValidator a)
data CQRegExpValidator a = CQRegExpValidator

type QRegExpValidatorSc a = QRegExpValidator (CQRegExpValidatorSc a)
type TQRegExpValidatorSc a = TQRegExpValidator (CQRegExpValidatorSc a)
data CQRegExpValidatorSc a = CQRegExpValidatorSc

qCast_QRegExpValidator :: Object a -> IO (QRegExpValidator ())
qCast_QRegExpValidator _qobj
  = return (objectCast _qobj)

withQRegExpValidatorResult :: IO (Ptr (TQRegExpValidator a)) -> IO (QRegExpValidator a)
withQRegExpValidatorResult f
  = withObjectResult qtc_QRegExpValidator_getFinalizer f

qRegExpValidatorFromPtr :: Ptr (TQRegExpValidator a) -> IO (QRegExpValidator a)
qRegExpValidatorFromPtr p
  = objectFromPtr qtc_QRegExpValidator_getFinalizer p

withQListQRegExpValidatorResult :: (Ptr (Ptr (TQRegExpValidator a)) -> IO CInt) -> IO [QRegExpValidator a]
withQListQRegExpValidatorResult f
  = withQListObjectResult qtc_QRegExpValidator_getFinalizer f

qRegExpValidatorListFromPtrList :: [Ptr (TQRegExpValidator a)] -> IO [QRegExpValidator a]
qRegExpValidatorListFromPtrList p
  = objectListFromPtrList qtc_QRegExpValidator_getFinalizer p

foreign import ccall qtc_QRegExpValidator_getFinalizer :: FunPtr (Ptr (TQRegExpValidator a) -> IO ())

class QqCastList_QRegExpValidator a r where
  qcl_QRegExpValidator :: [QRegExpValidator ()] -> a -> r

instance QqCastList_QRegExpValidator (QRegExpValidator ()) [QRegExpValidator ()] where
  qcl_QRegExpValidator l x = reverse $ x:l

instance QqCastList_QRegExpValidator a r => QqCastList_QRegExpValidator (QRegExpValidator ()) (a -> r) where
  qcl_QRegExpValidator l x sx = qcl_QRegExpValidator (x:l) sx

qCastList_QRegExpValidator x = qcl_QRegExpValidator [] x

type QIntValidator a = QValidator (CQIntValidator a)
type TQIntValidator a = TQValidator (CQIntValidator a)
data CQIntValidator a = CQIntValidator

type QIntValidatorSc a = QIntValidator (CQIntValidatorSc a)
type TQIntValidatorSc a = TQIntValidator (CQIntValidatorSc a)
data CQIntValidatorSc a = CQIntValidatorSc

qCast_QIntValidator :: Object a -> IO (QIntValidator ())
qCast_QIntValidator _qobj
  = return (objectCast _qobj)

withQIntValidatorResult :: IO (Ptr (TQIntValidator a)) -> IO (QIntValidator a)
withQIntValidatorResult f
  = withObjectResult qtc_QIntValidator_getFinalizer f

qIntValidatorFromPtr :: Ptr (TQIntValidator a) -> IO (QIntValidator a)
qIntValidatorFromPtr p
  = objectFromPtr qtc_QIntValidator_getFinalizer p

withQListQIntValidatorResult :: (Ptr (Ptr (TQIntValidator a)) -> IO CInt) -> IO [QIntValidator a]
withQListQIntValidatorResult f
  = withQListObjectResult qtc_QIntValidator_getFinalizer f

qIntValidatorListFromPtrList :: [Ptr (TQIntValidator a)] -> IO [QIntValidator a]
qIntValidatorListFromPtrList p
  = objectListFromPtrList qtc_QIntValidator_getFinalizer p

foreign import ccall qtc_QIntValidator_getFinalizer :: FunPtr (Ptr (TQIntValidator a) -> IO ())

class QqCastList_QIntValidator a r where
  qcl_QIntValidator :: [QIntValidator ()] -> a -> r

instance QqCastList_QIntValidator (QIntValidator ()) [QIntValidator ()] where
  qcl_QIntValidator l x = reverse $ x:l

instance QqCastList_QIntValidator a r => QqCastList_QIntValidator (QIntValidator ()) (a -> r) where
  qcl_QIntValidator l x sx = qcl_QIntValidator (x:l) sx

qCastList_QIntValidator x = qcl_QIntValidator [] x

type QDoubleValidator a = QValidator (CQDoubleValidator a)
type TQDoubleValidator a = TQValidator (CQDoubleValidator a)
data CQDoubleValidator a = CQDoubleValidator

type QDoubleValidatorSc a = QDoubleValidator (CQDoubleValidatorSc a)
type TQDoubleValidatorSc a = TQDoubleValidator (CQDoubleValidatorSc a)
data CQDoubleValidatorSc a = CQDoubleValidatorSc

qCast_QDoubleValidator :: Object a -> IO (QDoubleValidator ())
qCast_QDoubleValidator _qobj
  = return (objectCast _qobj)

withQDoubleValidatorResult :: IO (Ptr (TQDoubleValidator a)) -> IO (QDoubleValidator a)
withQDoubleValidatorResult f
  = withObjectResult qtc_QDoubleValidator_getFinalizer f

qDoubleValidatorFromPtr :: Ptr (TQDoubleValidator a) -> IO (QDoubleValidator a)
qDoubleValidatorFromPtr p
  = objectFromPtr qtc_QDoubleValidator_getFinalizer p

withQListQDoubleValidatorResult :: (Ptr (Ptr (TQDoubleValidator a)) -> IO CInt) -> IO [QDoubleValidator a]
withQListQDoubleValidatorResult f
  = withQListObjectResult qtc_QDoubleValidator_getFinalizer f

qDoubleValidatorListFromPtrList :: [Ptr (TQDoubleValidator a)] -> IO [QDoubleValidator a]
qDoubleValidatorListFromPtrList p
  = objectListFromPtrList qtc_QDoubleValidator_getFinalizer p

foreign import ccall qtc_QDoubleValidator_getFinalizer :: FunPtr (Ptr (TQDoubleValidator a) -> IO ())

class QqCastList_QDoubleValidator a r where
  qcl_QDoubleValidator :: [QDoubleValidator ()] -> a -> r

instance QqCastList_QDoubleValidator (QDoubleValidator ()) [QDoubleValidator ()] where
  qcl_QDoubleValidator l x = reverse $ x:l

instance QqCastList_QDoubleValidator a r => QqCastList_QDoubleValidator (QDoubleValidator ()) (a -> r) where
  qcl_QDoubleValidator l x sx = qcl_QDoubleValidator (x:l) sx

qCastList_QDoubleValidator x = qcl_QDoubleValidator [] x

type QMenu a = QWidget (CQMenu a)
type TQMenu a = TQWidget (CQMenu a)
data CQMenu a = CQMenu

type QMenuSc a = QMenu (CQMenuSc a)
type TQMenuSc a = TQMenu (CQMenuSc a)
data CQMenuSc a = CQMenuSc

qCast_QMenu :: Object a -> IO (QMenu ())
qCast_QMenu _qobj
  = return (objectCast _qobj)

withQMenuResult :: IO (Ptr (TQMenu a)) -> IO (QMenu a)
withQMenuResult f
  = withObjectResult qtc_QMenu_getFinalizer f

qMenuFromPtr :: Ptr (TQMenu a) -> IO (QMenu a)
qMenuFromPtr p
  = objectFromPtr qtc_QMenu_getFinalizer p

withQListQMenuResult :: (Ptr (Ptr (TQMenu a)) -> IO CInt) -> IO [QMenu a]
withQListQMenuResult f
  = withQListObjectResult qtc_QMenu_getFinalizer f

qMenuListFromPtrList :: [Ptr (TQMenu a)] -> IO [QMenu a]
qMenuListFromPtrList p
  = objectListFromPtrList qtc_QMenu_getFinalizer p

foreign import ccall qtc_QMenu_getFinalizer :: FunPtr (Ptr (TQMenu a) -> IO ())

class QqCastList_QMenu a r where
  qcl_QMenu :: [QMenu ()] -> a -> r

instance QqCastList_QMenu (QMenu ()) [QMenu ()] where
  qcl_QMenu l x = reverse $ x:l

instance QqCastList_QMenu a r => QqCastList_QMenu (QMenu ()) (a -> r) where
  qcl_QMenu l x sx = qcl_QMenu (x:l) sx

qCastList_QMenu x = qcl_QMenu [] x

type QCalendarWidget a = QWidget (CQCalendarWidget a)
type TQCalendarWidget a = TQWidget (CQCalendarWidget a)
data CQCalendarWidget a = CQCalendarWidget

type QCalendarWidgetSc a = QCalendarWidget (CQCalendarWidgetSc a)
type TQCalendarWidgetSc a = TQCalendarWidget (CQCalendarWidgetSc a)
data CQCalendarWidgetSc a = CQCalendarWidgetSc

qCast_QCalendarWidget :: Object a -> IO (QCalendarWidget ())
qCast_QCalendarWidget _qobj
  = return (objectCast _qobj)

withQCalendarWidgetResult :: IO (Ptr (TQCalendarWidget a)) -> IO (QCalendarWidget a)
withQCalendarWidgetResult f
  = withObjectResult qtc_QCalendarWidget_getFinalizer f

qCalendarWidgetFromPtr :: Ptr (TQCalendarWidget a) -> IO (QCalendarWidget a)
qCalendarWidgetFromPtr p
  = objectFromPtr qtc_QCalendarWidget_getFinalizer p

withQListQCalendarWidgetResult :: (Ptr (Ptr (TQCalendarWidget a)) -> IO CInt) -> IO [QCalendarWidget a]
withQListQCalendarWidgetResult f
  = withQListObjectResult qtc_QCalendarWidget_getFinalizer f

qCalendarWidgetListFromPtrList :: [Ptr (TQCalendarWidget a)] -> IO [QCalendarWidget a]
qCalendarWidgetListFromPtrList p
  = objectListFromPtrList qtc_QCalendarWidget_getFinalizer p

foreign import ccall qtc_QCalendarWidget_getFinalizer :: FunPtr (Ptr (TQCalendarWidget a) -> IO ())

class QqCastList_QCalendarWidget a r where
  qcl_QCalendarWidget :: [QCalendarWidget ()] -> a -> r

instance QqCastList_QCalendarWidget (QCalendarWidget ()) [QCalendarWidget ()] where
  qcl_QCalendarWidget l x = reverse $ x:l

instance QqCastList_QCalendarWidget a r => QqCastList_QCalendarWidget (QCalendarWidget ()) (a -> r) where
  qcl_QCalendarWidget l x sx = qcl_QCalendarWidget (x:l) sx

qCastList_QCalendarWidget x = qcl_QCalendarWidget [] x

type QLineEdit a = QWidget (CQLineEdit a)
type TQLineEdit a = TQWidget (CQLineEdit a)
data CQLineEdit a = CQLineEdit

type QLineEditSc a = QLineEdit (CQLineEditSc a)
type TQLineEditSc a = TQLineEdit (CQLineEditSc a)
data CQLineEditSc a = CQLineEditSc

qCast_QLineEdit :: Object a -> IO (QLineEdit ())
qCast_QLineEdit _qobj
  = return (objectCast _qobj)

withQLineEditResult :: IO (Ptr (TQLineEdit a)) -> IO (QLineEdit a)
withQLineEditResult f
  = withObjectResult qtc_QLineEdit_getFinalizer f

qLineEditFromPtr :: Ptr (TQLineEdit a) -> IO (QLineEdit a)
qLineEditFromPtr p
  = objectFromPtr qtc_QLineEdit_getFinalizer p

withQListQLineEditResult :: (Ptr (Ptr (TQLineEdit a)) -> IO CInt) -> IO [QLineEdit a]
withQListQLineEditResult f
  = withQListObjectResult qtc_QLineEdit_getFinalizer f

qLineEditListFromPtrList :: [Ptr (TQLineEdit a)] -> IO [QLineEdit a]
qLineEditListFromPtrList p
  = objectListFromPtrList qtc_QLineEdit_getFinalizer p

foreign import ccall qtc_QLineEdit_getFinalizer :: FunPtr (Ptr (TQLineEdit a) -> IO ())

class QqCastList_QLineEdit a r where
  qcl_QLineEdit :: [QLineEdit ()] -> a -> r

instance QqCastList_QLineEdit (QLineEdit ()) [QLineEdit ()] where
  qcl_QLineEdit l x = reverse $ x:l

instance QqCastList_QLineEdit a r => QqCastList_QLineEdit (QLineEdit ()) (a -> r) where
  qcl_QLineEdit l x sx = qcl_QLineEdit (x:l) sx

qCastList_QLineEdit x = qcl_QLineEdit [] x

type QDesktopWidget a = QWidget (CQDesktopWidget a)
type TQDesktopWidget a = TQWidget (CQDesktopWidget a)
data CQDesktopWidget a = CQDesktopWidget

type QDesktopWidgetSc a = QDesktopWidget (CQDesktopWidgetSc a)
type TQDesktopWidgetSc a = TQDesktopWidget (CQDesktopWidgetSc a)
data CQDesktopWidgetSc a = CQDesktopWidgetSc

qCast_QDesktopWidget :: Object a -> IO (QDesktopWidget ())
qCast_QDesktopWidget _qobj
  = return (objectCast _qobj)

withQDesktopWidgetResult :: IO (Ptr (TQDesktopWidget a)) -> IO (QDesktopWidget a)
withQDesktopWidgetResult f
  = withObjectResult qtc_QDesktopWidget_getFinalizer f

qDesktopWidgetFromPtr :: Ptr (TQDesktopWidget a) -> IO (QDesktopWidget a)
qDesktopWidgetFromPtr p
  = objectFromPtr qtc_QDesktopWidget_getFinalizer p

withQListQDesktopWidgetResult :: (Ptr (Ptr (TQDesktopWidget a)) -> IO CInt) -> IO [QDesktopWidget a]
withQListQDesktopWidgetResult f
  = withQListObjectResult qtc_QDesktopWidget_getFinalizer f

qDesktopWidgetListFromPtrList :: [Ptr (TQDesktopWidget a)] -> IO [QDesktopWidget a]
qDesktopWidgetListFromPtrList p
  = objectListFromPtrList qtc_QDesktopWidget_getFinalizer p

foreign import ccall qtc_QDesktopWidget_getFinalizer :: FunPtr (Ptr (TQDesktopWidget a) -> IO ())

class QqCastList_QDesktopWidget a r where
  qcl_QDesktopWidget :: [QDesktopWidget ()] -> a -> r

instance QqCastList_QDesktopWidget (QDesktopWidget ()) [QDesktopWidget ()] where
  qcl_QDesktopWidget l x = reverse $ x:l

instance QqCastList_QDesktopWidget a r => QqCastList_QDesktopWidget (QDesktopWidget ()) (a -> r) where
  qcl_QDesktopWidget l x sx = qcl_QDesktopWidget (x:l) sx

qCastList_QDesktopWidget x = qcl_QDesktopWidget [] x

type QSplitterHandle a = QWidget (CQSplitterHandle a)
type TQSplitterHandle a = TQWidget (CQSplitterHandle a)
data CQSplitterHandle a = CQSplitterHandle

type QSplitterHandleSc a = QSplitterHandle (CQSplitterHandleSc a)
type TQSplitterHandleSc a = TQSplitterHandle (CQSplitterHandleSc a)
data CQSplitterHandleSc a = CQSplitterHandleSc

qCast_QSplitterHandle :: Object a -> IO (QSplitterHandle ())
qCast_QSplitterHandle _qobj
  = return (objectCast _qobj)

withQSplitterHandleResult :: IO (Ptr (TQSplitterHandle a)) -> IO (QSplitterHandle a)
withQSplitterHandleResult f
  = withObjectRefResult f

qSplitterHandleFromPtr :: Ptr (TQSplitterHandle a) -> IO (QSplitterHandle a)
qSplitterHandleFromPtr p
  = objectFromPtr_nf p

withQListQSplitterHandleResult :: (Ptr (Ptr (TQSplitterHandle a)) -> IO CInt) -> IO [QSplitterHandle a]
withQListQSplitterHandleResult f
  = withQListObjectRefResult f

qSplitterHandleListFromPtrList :: [Ptr (TQSplitterHandle a)] -> IO [QSplitterHandle a]
qSplitterHandleListFromPtrList p
  = objectListFromPtrList_nf p

class QqCastList_QSplitterHandle a r where
  qcl_QSplitterHandle :: [QSplitterHandle ()] -> a -> r

instance QqCastList_QSplitterHandle (QSplitterHandle ()) [QSplitterHandle ()] where
  qcl_QSplitterHandle l x = reverse $ x:l

instance QqCastList_QSplitterHandle a r => QqCastList_QSplitterHandle (QSplitterHandle ()) (a -> r) where
  qcl_QSplitterHandle l x sx = qcl_QSplitterHandle (x:l) sx

qCastList_QSplitterHandle x = qcl_QSplitterHandle [] x

type QMainWindow a = QWidget (CQMainWindow a)
type TQMainWindow a = TQWidget (CQMainWindow a)
data CQMainWindow a = CQMainWindow

type QMainWindowSc a = QMainWindow (CQMainWindowSc a)
type TQMainWindowSc a = TQMainWindow (CQMainWindowSc a)
data CQMainWindowSc a = CQMainWindowSc

qCast_QMainWindow :: Object a -> IO (QMainWindow ())
qCast_QMainWindow _qobj
  = return (objectCast _qobj)

withQMainWindowResult :: IO (Ptr (TQMainWindow a)) -> IO (QMainWindow a)
withQMainWindowResult f
  = withObjectResult qtc_QMainWindow_getFinalizer f

qMainWindowFromPtr :: Ptr (TQMainWindow a) -> IO (QMainWindow a)
qMainWindowFromPtr p
  = objectFromPtr qtc_QMainWindow_getFinalizer p

withQListQMainWindowResult :: (Ptr (Ptr (TQMainWindow a)) -> IO CInt) -> IO [QMainWindow a]
withQListQMainWindowResult f
  = withQListObjectResult qtc_QMainWindow_getFinalizer f

qMainWindowListFromPtrList :: [Ptr (TQMainWindow a)] -> IO [QMainWindow a]
qMainWindowListFromPtrList p
  = objectListFromPtrList qtc_QMainWindow_getFinalizer p

foreign import ccall qtc_QMainWindow_getFinalizer :: FunPtr (Ptr (TQMainWindow a) -> IO ())

class QqCastList_QMainWindow a r where
  qcl_QMainWindow :: [QMainWindow ()] -> a -> r

instance QqCastList_QMainWindow (QMainWindow ()) [QMainWindow ()] where
  qcl_QMainWindow l x = reverse $ x:l

instance QqCastList_QMainWindow a r => QqCastList_QMainWindow (QMainWindow ()) (a -> r) where
  qcl_QMainWindow l x sx = qcl_QMainWindow (x:l) sx

qCastList_QMainWindow x = qcl_QMainWindow [] x

type QFocusFrame a = QWidget (CQFocusFrame a)
type TQFocusFrame a = TQWidget (CQFocusFrame a)
data CQFocusFrame a = CQFocusFrame

type QFocusFrameSc a = QFocusFrame (CQFocusFrameSc a)
type TQFocusFrameSc a = TQFocusFrame (CQFocusFrameSc a)
data CQFocusFrameSc a = CQFocusFrameSc

qCast_QFocusFrame :: Object a -> IO (QFocusFrame ())
qCast_QFocusFrame _qobj
  = return (objectCast _qobj)

withQFocusFrameResult :: IO (Ptr (TQFocusFrame a)) -> IO (QFocusFrame a)
withQFocusFrameResult f
  = withObjectResult qtc_QFocusFrame_getFinalizer f

qFocusFrameFromPtr :: Ptr (TQFocusFrame a) -> IO (QFocusFrame a)
qFocusFrameFromPtr p
  = objectFromPtr qtc_QFocusFrame_getFinalizer p

withQListQFocusFrameResult :: (Ptr (Ptr (TQFocusFrame a)) -> IO CInt) -> IO [QFocusFrame a]
withQListQFocusFrameResult f
  = withQListObjectResult qtc_QFocusFrame_getFinalizer f

qFocusFrameListFromPtrList :: [Ptr (TQFocusFrame a)] -> IO [QFocusFrame a]
qFocusFrameListFromPtrList p
  = objectListFromPtrList qtc_QFocusFrame_getFinalizer p

foreign import ccall qtc_QFocusFrame_getFinalizer :: FunPtr (Ptr (TQFocusFrame a) -> IO ())

class QqCastList_QFocusFrame a r where
  qcl_QFocusFrame :: [QFocusFrame ()] -> a -> r

instance QqCastList_QFocusFrame (QFocusFrame ()) [QFocusFrame ()] where
  qcl_QFocusFrame l x = reverse $ x:l

instance QqCastList_QFocusFrame a r => QqCastList_QFocusFrame (QFocusFrame ()) (a -> r) where
  qcl_QFocusFrame l x sx = qcl_QFocusFrame (x:l) sx

qCastList_QFocusFrame x = qcl_QFocusFrame [] x

type QSplashScreen a = QWidget (CQSplashScreen a)
type TQSplashScreen a = TQWidget (CQSplashScreen a)
data CQSplashScreen a = CQSplashScreen

type QSplashScreenSc a = QSplashScreen (CQSplashScreenSc a)
type TQSplashScreenSc a = TQSplashScreen (CQSplashScreenSc a)
data CQSplashScreenSc a = CQSplashScreenSc

qCast_QSplashScreen :: Object a -> IO (QSplashScreen ())
qCast_QSplashScreen _qobj
  = return (objectCast _qobj)

withQSplashScreenResult :: IO (Ptr (TQSplashScreen a)) -> IO (QSplashScreen a)
withQSplashScreenResult f
  = withObjectResult qtc_QSplashScreen_getFinalizer f

qSplashScreenFromPtr :: Ptr (TQSplashScreen a) -> IO (QSplashScreen a)
qSplashScreenFromPtr p
  = objectFromPtr qtc_QSplashScreen_getFinalizer p

withQListQSplashScreenResult :: (Ptr (Ptr (TQSplashScreen a)) -> IO CInt) -> IO [QSplashScreen a]
withQListQSplashScreenResult f
  = withQListObjectResult qtc_QSplashScreen_getFinalizer f

qSplashScreenListFromPtrList :: [Ptr (TQSplashScreen a)] -> IO [QSplashScreen a]
qSplashScreenListFromPtrList p
  = objectListFromPtrList qtc_QSplashScreen_getFinalizer p

foreign import ccall qtc_QSplashScreen_getFinalizer :: FunPtr (Ptr (TQSplashScreen a) -> IO ())

class QqCastList_QSplashScreen a r where
  qcl_QSplashScreen :: [QSplashScreen ()] -> a -> r

instance QqCastList_QSplashScreen (QSplashScreen ()) [QSplashScreen ()] where
  qcl_QSplashScreen l x = reverse $ x:l

instance QqCastList_QSplashScreen a r => QqCastList_QSplashScreen (QSplashScreen ()) (a -> r) where
  qcl_QSplashScreen l x sx = qcl_QSplashScreen (x:l) sx

qCastList_QSplashScreen x = qcl_QSplashScreen [] x

type QTabWidget a = QWidget (CQTabWidget a)
type TQTabWidget a = TQWidget (CQTabWidget a)
data CQTabWidget a = CQTabWidget

type QTabWidgetSc a = QTabWidget (CQTabWidgetSc a)
type TQTabWidgetSc a = TQTabWidget (CQTabWidgetSc a)
data CQTabWidgetSc a = CQTabWidgetSc

qCast_QTabWidget :: Object a -> IO (QTabWidget ())
qCast_QTabWidget _qobj
  = return (objectCast _qobj)

withQTabWidgetResult :: IO (Ptr (TQTabWidget a)) -> IO (QTabWidget a)
withQTabWidgetResult f
  = withObjectResult qtc_QTabWidget_getFinalizer f

qTabWidgetFromPtr :: Ptr (TQTabWidget a) -> IO (QTabWidget a)
qTabWidgetFromPtr p
  = objectFromPtr qtc_QTabWidget_getFinalizer p

withQListQTabWidgetResult :: (Ptr (Ptr (TQTabWidget a)) -> IO CInt) -> IO [QTabWidget a]
withQListQTabWidgetResult f
  = withQListObjectResult qtc_QTabWidget_getFinalizer f

qTabWidgetListFromPtrList :: [Ptr (TQTabWidget a)] -> IO [QTabWidget a]
qTabWidgetListFromPtrList p
  = objectListFromPtrList qtc_QTabWidget_getFinalizer p

foreign import ccall qtc_QTabWidget_getFinalizer :: FunPtr (Ptr (TQTabWidget a) -> IO ())

class QqCastList_QTabWidget a r where
  qcl_QTabWidget :: [QTabWidget ()] -> a -> r

instance QqCastList_QTabWidget (QTabWidget ()) [QTabWidget ()] where
  qcl_QTabWidget l x = reverse $ x:l

instance QqCastList_QTabWidget a r => QqCastList_QTabWidget (QTabWidget ()) (a -> r) where
  qcl_QTabWidget l x sx = qcl_QTabWidget (x:l) sx

qCastList_QTabWidget x = qcl_QTabWidget [] x

type QProgressBar a = QWidget (CQProgressBar a)
type TQProgressBar a = TQWidget (CQProgressBar a)
data CQProgressBar a = CQProgressBar

type QProgressBarSc a = QProgressBar (CQProgressBarSc a)
type TQProgressBarSc a = TQProgressBar (CQProgressBarSc a)
data CQProgressBarSc a = CQProgressBarSc

qCast_QProgressBar :: Object a -> IO (QProgressBar ())
qCast_QProgressBar _qobj
  = return (objectCast _qobj)

withQProgressBarResult :: IO (Ptr (TQProgressBar a)) -> IO (QProgressBar a)
withQProgressBarResult f
  = withObjectResult qtc_QProgressBar_getFinalizer f

qProgressBarFromPtr :: Ptr (TQProgressBar a) -> IO (QProgressBar a)
qProgressBarFromPtr p
  = objectFromPtr qtc_QProgressBar_getFinalizer p

withQListQProgressBarResult :: (Ptr (Ptr (TQProgressBar a)) -> IO CInt) -> IO [QProgressBar a]
withQListQProgressBarResult f
  = withQListObjectResult qtc_QProgressBar_getFinalizer f

qProgressBarListFromPtrList :: [Ptr (TQProgressBar a)] -> IO [QProgressBar a]
qProgressBarListFromPtrList p
  = objectListFromPtrList qtc_QProgressBar_getFinalizer p

foreign import ccall qtc_QProgressBar_getFinalizer :: FunPtr (Ptr (TQProgressBar a) -> IO ())

class QqCastList_QProgressBar a r where
  qcl_QProgressBar :: [QProgressBar ()] -> a -> r

instance QqCastList_QProgressBar (QProgressBar ()) [QProgressBar ()] where
  qcl_QProgressBar l x = reverse $ x:l

instance QqCastList_QProgressBar a r => QqCastList_QProgressBar (QProgressBar ()) (a -> r) where
  qcl_QProgressBar l x sx = qcl_QProgressBar (x:l) sx

qCastList_QProgressBar x = qcl_QProgressBar [] x

type QDialogButtonBox a = QWidget (CQDialogButtonBox a)
type TQDialogButtonBox a = TQWidget (CQDialogButtonBox a)
data CQDialogButtonBox a = CQDialogButtonBox

type QDialogButtonBoxSc a = QDialogButtonBox (CQDialogButtonBoxSc a)
type TQDialogButtonBoxSc a = TQDialogButtonBox (CQDialogButtonBoxSc a)
data CQDialogButtonBoxSc a = CQDialogButtonBoxSc

qCast_QDialogButtonBox :: Object a -> IO (QDialogButtonBox ())
qCast_QDialogButtonBox _qobj
  = return (objectCast _qobj)

withQDialogButtonBoxResult :: IO (Ptr (TQDialogButtonBox a)) -> IO (QDialogButtonBox a)
withQDialogButtonBoxResult f
  = withObjectResult qtc_QDialogButtonBox_getFinalizer f

qDialogButtonBoxFromPtr :: Ptr (TQDialogButtonBox a) -> IO (QDialogButtonBox a)
qDialogButtonBoxFromPtr p
  = objectFromPtr qtc_QDialogButtonBox_getFinalizer p

withQListQDialogButtonBoxResult :: (Ptr (Ptr (TQDialogButtonBox a)) -> IO CInt) -> IO [QDialogButtonBox a]
withQListQDialogButtonBoxResult f
  = withQListObjectResult qtc_QDialogButtonBox_getFinalizer f

qDialogButtonBoxListFromPtrList :: [Ptr (TQDialogButtonBox a)] -> IO [QDialogButtonBox a]
qDialogButtonBoxListFromPtrList p
  = objectListFromPtrList qtc_QDialogButtonBox_getFinalizer p

foreign import ccall qtc_QDialogButtonBox_getFinalizer :: FunPtr (Ptr (TQDialogButtonBox a) -> IO ())

class QqCastList_QDialogButtonBox a r where
  qcl_QDialogButtonBox :: [QDialogButtonBox ()] -> a -> r

instance QqCastList_QDialogButtonBox (QDialogButtonBox ()) [QDialogButtonBox ()] where
  qcl_QDialogButtonBox l x = reverse $ x:l

instance QqCastList_QDialogButtonBox a r => QqCastList_QDialogButtonBox (QDialogButtonBox ()) (a -> r) where
  qcl_QDialogButtonBox l x sx = qcl_QDialogButtonBox (x:l) sx

qCastList_QDialogButtonBox x = qcl_QDialogButtonBox [] x

type QRubberBand a = QWidget (CQRubberBand a)
type TQRubberBand a = TQWidget (CQRubberBand a)
data CQRubberBand a = CQRubberBand

type QRubberBandSc a = QRubberBand (CQRubberBandSc a)
type TQRubberBandSc a = TQRubberBand (CQRubberBandSc a)
data CQRubberBandSc a = CQRubberBandSc

qCast_QRubberBand :: Object a -> IO (QRubberBand ())
qCast_QRubberBand _qobj
  = return (objectCast _qobj)

withQRubberBandResult :: IO (Ptr (TQRubberBand a)) -> IO (QRubberBand a)
withQRubberBandResult f
  = withObjectResult qtc_QRubberBand_getFinalizer f

qRubberBandFromPtr :: Ptr (TQRubberBand a) -> IO (QRubberBand a)
qRubberBandFromPtr p
  = objectFromPtr qtc_QRubberBand_getFinalizer p

withQListQRubberBandResult :: (Ptr (Ptr (TQRubberBand a)) -> IO CInt) -> IO [QRubberBand a]
withQListQRubberBandResult f
  = withQListObjectResult qtc_QRubberBand_getFinalizer f

qRubberBandListFromPtrList :: [Ptr (TQRubberBand a)] -> IO [QRubberBand a]
qRubberBandListFromPtrList p
  = objectListFromPtrList qtc_QRubberBand_getFinalizer p

foreign import ccall qtc_QRubberBand_getFinalizer :: FunPtr (Ptr (TQRubberBand a) -> IO ())

class QqCastList_QRubberBand a r where
  qcl_QRubberBand :: [QRubberBand ()] -> a -> r

instance QqCastList_QRubberBand (QRubberBand ()) [QRubberBand ()] where
  qcl_QRubberBand l x = reverse $ x:l

instance QqCastList_QRubberBand a r => QqCastList_QRubberBand (QRubberBand ()) (a -> r) where
  qcl_QRubberBand l x sx = qcl_QRubberBand (x:l) sx

qCastList_QRubberBand x = qcl_QRubberBand [] x

type QMenuBar a = QWidget (CQMenuBar a)
type TQMenuBar a = TQWidget (CQMenuBar a)
data CQMenuBar a = CQMenuBar

type QMenuBarSc a = QMenuBar (CQMenuBarSc a)
type TQMenuBarSc a = TQMenuBar (CQMenuBarSc a)
data CQMenuBarSc a = CQMenuBarSc

qCast_QMenuBar :: Object a -> IO (QMenuBar ())
qCast_QMenuBar _qobj
  = return (objectCast _qobj)

withQMenuBarResult :: IO (Ptr (TQMenuBar a)) -> IO (QMenuBar a)
withQMenuBarResult f
  = withObjectResult qtc_QMenuBar_getFinalizer f

qMenuBarFromPtr :: Ptr (TQMenuBar a) -> IO (QMenuBar a)
qMenuBarFromPtr p
  = objectFromPtr qtc_QMenuBar_getFinalizer p

withQListQMenuBarResult :: (Ptr (Ptr (TQMenuBar a)) -> IO CInt) -> IO [QMenuBar a]
withQListQMenuBarResult f
  = withQListObjectResult qtc_QMenuBar_getFinalizer f

qMenuBarListFromPtrList :: [Ptr (TQMenuBar a)] -> IO [QMenuBar a]
qMenuBarListFromPtrList p
  = objectListFromPtrList qtc_QMenuBar_getFinalizer p

foreign import ccall qtc_QMenuBar_getFinalizer :: FunPtr (Ptr (TQMenuBar a) -> IO ())

class QqCastList_QMenuBar a r where
  qcl_QMenuBar :: [QMenuBar ()] -> a -> r

instance QqCastList_QMenuBar (QMenuBar ()) [QMenuBar ()] where
  qcl_QMenuBar l x = reverse $ x:l

instance QqCastList_QMenuBar a r => QqCastList_QMenuBar (QMenuBar ()) (a -> r) where
  qcl_QMenuBar l x sx = qcl_QMenuBar (x:l) sx

qCastList_QMenuBar x = qcl_QMenuBar [] x

type QDockWidget a = QWidget (CQDockWidget a)
type TQDockWidget a = TQWidget (CQDockWidget a)
data CQDockWidget a = CQDockWidget

type QDockWidgetSc a = QDockWidget (CQDockWidgetSc a)
type TQDockWidgetSc a = TQDockWidget (CQDockWidgetSc a)
data CQDockWidgetSc a = CQDockWidgetSc

qCast_QDockWidget :: Object a -> IO (QDockWidget ())
qCast_QDockWidget _qobj
  = return (objectCast _qobj)

withQDockWidgetResult :: IO (Ptr (TQDockWidget a)) -> IO (QDockWidget a)
withQDockWidgetResult f
  = withObjectResult qtc_QDockWidget_getFinalizer f

qDockWidgetFromPtr :: Ptr (TQDockWidget a) -> IO (QDockWidget a)
qDockWidgetFromPtr p
  = objectFromPtr qtc_QDockWidget_getFinalizer p

withQListQDockWidgetResult :: (Ptr (Ptr (TQDockWidget a)) -> IO CInt) -> IO [QDockWidget a]
withQListQDockWidgetResult f
  = withQListObjectResult qtc_QDockWidget_getFinalizer f

qDockWidgetListFromPtrList :: [Ptr (TQDockWidget a)] -> IO [QDockWidget a]
qDockWidgetListFromPtrList p
  = objectListFromPtrList qtc_QDockWidget_getFinalizer p

foreign import ccall qtc_QDockWidget_getFinalizer :: FunPtr (Ptr (TQDockWidget a) -> IO ())

class QqCastList_QDockWidget a r where
  qcl_QDockWidget :: [QDockWidget ()] -> a -> r

instance QqCastList_QDockWidget (QDockWidget ()) [QDockWidget ()] where
  qcl_QDockWidget l x = reverse $ x:l

instance QqCastList_QDockWidget a r => QqCastList_QDockWidget (QDockWidget ()) (a -> r) where
  qcl_QDockWidget l x sx = qcl_QDockWidget (x:l) sx

qCastList_QDockWidget x = qcl_QDockWidget [] x

type QSizeGrip a = QWidget (CQSizeGrip a)
type TQSizeGrip a = TQWidget (CQSizeGrip a)
data CQSizeGrip a = CQSizeGrip

type QSizeGripSc a = QSizeGrip (CQSizeGripSc a)
type TQSizeGripSc a = TQSizeGrip (CQSizeGripSc a)
data CQSizeGripSc a = CQSizeGripSc

qCast_QSizeGrip :: Object a -> IO (QSizeGrip ())
qCast_QSizeGrip _qobj
  = return (objectCast _qobj)

withQSizeGripResult :: IO (Ptr (TQSizeGrip a)) -> IO (QSizeGrip a)
withQSizeGripResult f
  = withObjectResult qtc_QSizeGrip_getFinalizer f

qSizeGripFromPtr :: Ptr (TQSizeGrip a) -> IO (QSizeGrip a)
qSizeGripFromPtr p
  = objectFromPtr qtc_QSizeGrip_getFinalizer p

withQListQSizeGripResult :: (Ptr (Ptr (TQSizeGrip a)) -> IO CInt) -> IO [QSizeGrip a]
withQListQSizeGripResult f
  = withQListObjectResult qtc_QSizeGrip_getFinalizer f

qSizeGripListFromPtrList :: [Ptr (TQSizeGrip a)] -> IO [QSizeGrip a]
qSizeGripListFromPtrList p
  = objectListFromPtrList qtc_QSizeGrip_getFinalizer p

foreign import ccall qtc_QSizeGrip_getFinalizer :: FunPtr (Ptr (TQSizeGrip a) -> IO ())

class QqCastList_QSizeGrip a r where
  qcl_QSizeGrip :: [QSizeGrip ()] -> a -> r

instance QqCastList_QSizeGrip (QSizeGrip ()) [QSizeGrip ()] where
  qcl_QSizeGrip l x = reverse $ x:l

instance QqCastList_QSizeGrip a r => QqCastList_QSizeGrip (QSizeGrip ()) (a -> r) where
  qcl_QSizeGrip l x sx = qcl_QSizeGrip (x:l) sx

qCastList_QSizeGrip x = qcl_QSizeGrip [] x

type QStatusBar a = QWidget (CQStatusBar a)
type TQStatusBar a = TQWidget (CQStatusBar a)
data CQStatusBar a = CQStatusBar

type QStatusBarSc a = QStatusBar (CQStatusBarSc a)
type TQStatusBarSc a = TQStatusBar (CQStatusBarSc a)
data CQStatusBarSc a = CQStatusBarSc

qCast_QStatusBar :: Object a -> IO (QStatusBar ())
qCast_QStatusBar _qobj
  = return (objectCast _qobj)

withQStatusBarResult :: IO (Ptr (TQStatusBar a)) -> IO (QStatusBar a)
withQStatusBarResult f
  = withObjectResult qtc_QStatusBar_getFinalizer f

qStatusBarFromPtr :: Ptr (TQStatusBar a) -> IO (QStatusBar a)
qStatusBarFromPtr p
  = objectFromPtr qtc_QStatusBar_getFinalizer p

withQListQStatusBarResult :: (Ptr (Ptr (TQStatusBar a)) -> IO CInt) -> IO [QStatusBar a]
withQListQStatusBarResult f
  = withQListObjectResult qtc_QStatusBar_getFinalizer f

qStatusBarListFromPtrList :: [Ptr (TQStatusBar a)] -> IO [QStatusBar a]
qStatusBarListFromPtrList p
  = objectListFromPtrList qtc_QStatusBar_getFinalizer p

foreign import ccall qtc_QStatusBar_getFinalizer :: FunPtr (Ptr (TQStatusBar a) -> IO ())

class QqCastList_QStatusBar a r where
  qcl_QStatusBar :: [QStatusBar ()] -> a -> r

instance QqCastList_QStatusBar (QStatusBar ()) [QStatusBar ()] where
  qcl_QStatusBar l x = reverse $ x:l

instance QqCastList_QStatusBar a r => QqCastList_QStatusBar (QStatusBar ()) (a -> r) where
  qcl_QStatusBar l x sx = qcl_QStatusBar (x:l) sx

qCastList_QStatusBar x = qcl_QStatusBar [] x

type QTabBar a = QWidget (CQTabBar a)
type TQTabBar a = TQWidget (CQTabBar a)
data CQTabBar a = CQTabBar

type QTabBarSc a = QTabBar (CQTabBarSc a)
type TQTabBarSc a = TQTabBar (CQTabBarSc a)
data CQTabBarSc a = CQTabBarSc

qCast_QTabBar :: Object a -> IO (QTabBar ())
qCast_QTabBar _qobj
  = return (objectCast _qobj)

withQTabBarResult :: IO (Ptr (TQTabBar a)) -> IO (QTabBar a)
withQTabBarResult f
  = withObjectResult qtc_QTabBar_getFinalizer f

qTabBarFromPtr :: Ptr (TQTabBar a) -> IO (QTabBar a)
qTabBarFromPtr p
  = objectFromPtr qtc_QTabBar_getFinalizer p

withQListQTabBarResult :: (Ptr (Ptr (TQTabBar a)) -> IO CInt) -> IO [QTabBar a]
withQListQTabBarResult f
  = withQListObjectResult qtc_QTabBar_getFinalizer f

qTabBarListFromPtrList :: [Ptr (TQTabBar a)] -> IO [QTabBar a]
qTabBarListFromPtrList p
  = objectListFromPtrList qtc_QTabBar_getFinalizer p

foreign import ccall qtc_QTabBar_getFinalizer :: FunPtr (Ptr (TQTabBar a) -> IO ())

class QqCastList_QTabBar a r where
  qcl_QTabBar :: [QTabBar ()] -> a -> r

instance QqCastList_QTabBar (QTabBar ()) [QTabBar ()] where
  qcl_QTabBar l x = reverse $ x:l

instance QqCastList_QTabBar a r => QqCastList_QTabBar (QTabBar ()) (a -> r) where
  qcl_QTabBar l x sx = qcl_QTabBar (x:l) sx

qCastList_QTabBar x = qcl_QTabBar [] x

type QGroupBox a = QWidget (CQGroupBox a)
type TQGroupBox a = TQWidget (CQGroupBox a)
data CQGroupBox a = CQGroupBox

type QGroupBoxSc a = QGroupBox (CQGroupBoxSc a)
type TQGroupBoxSc a = TQGroupBox (CQGroupBoxSc a)
data CQGroupBoxSc a = CQGroupBoxSc

qCast_QGroupBox :: Object a -> IO (QGroupBox ())
qCast_QGroupBox _qobj
  = return (objectCast _qobj)

withQGroupBoxResult :: IO (Ptr (TQGroupBox a)) -> IO (QGroupBox a)
withQGroupBoxResult f
  = withObjectResult qtc_QGroupBox_getFinalizer f

qGroupBoxFromPtr :: Ptr (TQGroupBox a) -> IO (QGroupBox a)
qGroupBoxFromPtr p
  = objectFromPtr qtc_QGroupBox_getFinalizer p

withQListQGroupBoxResult :: (Ptr (Ptr (TQGroupBox a)) -> IO CInt) -> IO [QGroupBox a]
withQListQGroupBoxResult f
  = withQListObjectResult qtc_QGroupBox_getFinalizer f

qGroupBoxListFromPtrList :: [Ptr (TQGroupBox a)] -> IO [QGroupBox a]
qGroupBoxListFromPtrList p
  = objectListFromPtrList qtc_QGroupBox_getFinalizer p

foreign import ccall qtc_QGroupBox_getFinalizer :: FunPtr (Ptr (TQGroupBox a) -> IO ())

class QqCastList_QGroupBox a r where
  qcl_QGroupBox :: [QGroupBox ()] -> a -> r

instance QqCastList_QGroupBox (QGroupBox ()) [QGroupBox ()] where
  qcl_QGroupBox l x = reverse $ x:l

instance QqCastList_QGroupBox a r => QqCastList_QGroupBox (QGroupBox ()) (a -> r) where
  qcl_QGroupBox l x sx = qcl_QGroupBox (x:l) sx

qCastList_QGroupBox x = qcl_QGroupBox [] x

type QToolBar a = QWidget (CQToolBar a)
type TQToolBar a = TQWidget (CQToolBar a)
data CQToolBar a = CQToolBar

type QToolBarSc a = QToolBar (CQToolBarSc a)
type TQToolBarSc a = TQToolBar (CQToolBarSc a)
data CQToolBarSc a = CQToolBarSc

qCast_QToolBar :: Object a -> IO (QToolBar ())
qCast_QToolBar _qobj
  = return (objectCast _qobj)

withQToolBarResult :: IO (Ptr (TQToolBar a)) -> IO (QToolBar a)
withQToolBarResult f
  = withObjectResult qtc_QToolBar_getFinalizer f

qToolBarFromPtr :: Ptr (TQToolBar a) -> IO (QToolBar a)
qToolBarFromPtr p
  = objectFromPtr qtc_QToolBar_getFinalizer p

withQListQToolBarResult :: (Ptr (Ptr (TQToolBar a)) -> IO CInt) -> IO [QToolBar a]
withQListQToolBarResult f
  = withQListObjectResult qtc_QToolBar_getFinalizer f

qToolBarListFromPtrList :: [Ptr (TQToolBar a)] -> IO [QToolBar a]
qToolBarListFromPtrList p
  = objectListFromPtrList qtc_QToolBar_getFinalizer p

foreign import ccall qtc_QToolBar_getFinalizer :: FunPtr (Ptr (TQToolBar a) -> IO ())

class QqCastList_QToolBar a r where
  qcl_QToolBar :: [QToolBar ()] -> a -> r

instance QqCastList_QToolBar (QToolBar ()) [QToolBar ()] where
  qcl_QToolBar l x = reverse $ x:l

instance QqCastList_QToolBar a r => QqCastList_QToolBar (QToolBar ()) (a -> r) where
  qcl_QToolBar l x sx = qcl_QToolBar (x:l) sx

qCastList_QToolBar x = qcl_QToolBar [] x

