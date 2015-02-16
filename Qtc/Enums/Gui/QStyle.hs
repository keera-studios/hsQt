{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyle.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QStyle (
 StateFlag, QStyleState, eState_None, fState_None, eState_Enabled, fState_Enabled, eState_Raised, fState_Raised, eState_Sunken, fState_Sunken, eState_Off, fState_Off, eState_NoChange, fState_NoChange, eState_On, fState_On, eState_DownArrow, fState_DownArrow, eState_Horizontal, fState_Horizontal, eState_HasFocus, fState_HasFocus, eState_Top, fState_Top, eState_Bottom, fState_Bottom, eState_FocusAtBorder, fState_FocusAtBorder, eState_AutoRaise, fState_AutoRaise, eState_MouseOver, fState_MouseOver, eState_UpArrow, fState_UpArrow, eState_Selected, fState_Selected, eState_Active, fState_Active, eState_Window, fState_Window, eState_Open, fState_Open, eState_Children, fState_Children, eState_Item, fState_Item, eState_Sibling, fState_Sibling, eState_Editing, fState_Editing, eState_KeyboardFocusChange, fState_KeyboardFocusChange, eState_ReadOnly, fState_ReadOnly, eState_Small, fState_Small, eState_Mini, fState_Mini
 , PrimitiveElement, ePE_Q3CheckListController, ePE_Q3CheckListExclusiveIndicator, ePE_Q3CheckListIndicator, ePE_Q3DockWindowSeparator, ePE_Q3Separator, ePE_Frame, ePE_FrameDefaultButton, ePE_FrameDockWidget, ePE_FrameFocusRect, ePE_FrameGroupBox, ePE_FrameLineEdit, ePE_FrameMenu, ePE_FrameStatusBar, ePE_FrameTabWidget, ePE_FrameWindow, ePE_FrameButtonBevel, ePE_FrameButtonTool, ePE_FrameTabBarBase, ePE_PanelButtonCommand, ePE_PanelButtonBevel, ePE_PanelButtonTool, ePE_PanelMenuBar, ePE_PanelToolBar, ePE_PanelLineEdit, ePE_IndicatorArrowDown, ePE_IndicatorArrowLeft, ePE_IndicatorArrowRight, ePE_IndicatorArrowUp, ePE_IndicatorBranch, ePE_IndicatorButtonDropDown, ePE_IndicatorViewItemCheck, ePE_IndicatorCheckBox, ePE_IndicatorDockWidgetResizeHandle, ePE_IndicatorHeaderArrow, ePE_IndicatorMenuCheckMark, ePE_IndicatorProgressChunk, ePE_IndicatorRadioButton, ePE_IndicatorSpinDown, ePE_IndicatorSpinMinus, ePE_IndicatorSpinPlus, ePE_IndicatorSpinUp, ePE_IndicatorToolBarHandle, ePE_IndicatorToolBarSeparator, ePE_PanelTipLabel, ePE_IndicatorTabTear, ePE_PanelScrollAreaCorner, ePE_Widget, ePE_IndicatorColumnViewArrow, ePE_CustomBase
 , ControlElement, eCE_PushButton, eCE_PushButtonBevel, eCE_PushButtonLabel, eCE_CheckBox, eCE_CheckBoxLabel, eCE_RadioButton, eCE_RadioButtonLabel, eCE_TabBarTab, eCE_TabBarTabShape, eCE_TabBarTabLabel, eCE_ProgressBar, eCE_ProgressBarGroove, eCE_ProgressBarContents, eCE_ProgressBarLabel, eCE_MenuItem, eCE_MenuScroller, eCE_MenuVMargin, eCE_MenuHMargin, eCE_MenuTearoff, eCE_MenuEmptyArea, eCE_MenuBarItem, eCE_MenuBarEmptyArea, eCE_ToolButtonLabel, eCE_Header, eCE_HeaderSection, eCE_HeaderLabel, eCE_Q3DockWindowEmptyArea, eCE_ToolBoxTab, eCE_SizeGrip, eCE_Splitter, eCE_RubberBand, eCE_DockWidgetTitle, eCE_ScrollBarAddLine, eCE_ScrollBarSubLine, eCE_ScrollBarAddPage, eCE_ScrollBarSubPage, eCE_ScrollBarSlider, eCE_ScrollBarFirst, eCE_ScrollBarLast, eCE_FocusFrame, eCE_ComboBoxLabel, eCE_ToolBar, eCE_ToolBoxTabShape, eCE_ToolBoxTabLabel, eCE_HeaderEmptyArea, eCE_ColumnViewGrip, eCE_CustomBase
 , SubElement, eSE_PushButtonContents, eSE_PushButtonFocusRect, eSE_CheckBoxIndicator, eSE_CheckBoxContents, eSE_CheckBoxFocusRect, eSE_CheckBoxClickRect, eSE_RadioButtonIndicator, eSE_RadioButtonContents, eSE_RadioButtonFocusRect, eSE_RadioButtonClickRect, eSE_ComboBoxFocusRect, eSE_SliderFocusRect, eSE_Q3DockWindowHandleRect, eSE_ProgressBarGroove, eSE_ProgressBarContents, eSE_ProgressBarLabel, eSE_DialogButtonAccept, eSE_DialogButtonReject, eSE_DialogButtonApply, eSE_DialogButtonHelp, eSE_DialogButtonAll, eSE_DialogButtonAbort, eSE_DialogButtonIgnore, eSE_DialogButtonRetry, eSE_DialogButtonCustom, eSE_ToolBoxTabContents, eSE_HeaderLabel, eSE_HeaderArrow, eSE_TabWidgetTabBar, eSE_TabWidgetTabPane, eSE_TabWidgetTabContents, eSE_TabWidgetLeftCorner, eSE_TabWidgetRightCorner, eSE_ViewItemCheckIndicator, eSE_TabBarTearIndicator, eSE_TreeViewDisclosureItem, eSE_LineEditContents, eSE_FrameContents, eSE_DockWidgetCloseButton, eSE_DockWidgetFloatButton, eSE_DockWidgetTitleBarText, eSE_DockWidgetIcon, eSE_CheckBoxLayoutItem, eSE_ComboBoxLayoutItem, eSE_DateTimeEditLayoutItem, eSE_DialogButtonBoxLayoutItem, eSE_LabelLayoutItem, eSE_ProgressBarLayoutItem, eSE_PushButtonLayoutItem, eSE_RadioButtonLayoutItem, eSE_SliderLayoutItem, eSE_SpinBoxLayoutItem, eSE_ToolButtonLayoutItem, eSE_FrameLayoutItem, eSE_GroupBoxLayoutItem, eSE_TabWidgetLayoutItem, eSE_CustomBase
 , ComplexControl, eCC_SpinBox, eCC_ComboBox, eCC_ScrollBar, eCC_Slider, eCC_ToolButton, eCC_TitleBar, eCC_Q3ListView, eCC_Dial, eCC_GroupBox, eCC_MdiControls, eCC_CustomBase
 , SubControl, SubControls, eSC_None, fSC_None, eSC_ScrollBarAddLine, fSC_ScrollBarAddLine, eSC_ScrollBarSubLine, fSC_ScrollBarSubLine, eSC_ScrollBarAddPage, fSC_ScrollBarAddPage, eSC_ScrollBarSubPage, fSC_ScrollBarSubPage, eSC_ScrollBarFirst, fSC_ScrollBarFirst, eSC_ScrollBarLast, fSC_ScrollBarLast, eSC_ScrollBarSlider, fSC_ScrollBarSlider, eSC_ScrollBarGroove, fSC_ScrollBarGroove, eSC_SpinBoxUp, fSC_SpinBoxUp, eSC_SpinBoxDown, fSC_SpinBoxDown, eSC_SpinBoxFrame, fSC_SpinBoxFrame, eSC_SpinBoxEditField, fSC_SpinBoxEditField, eSC_ComboBoxFrame, fSC_ComboBoxFrame, eSC_ComboBoxEditField, fSC_ComboBoxEditField, eSC_ComboBoxArrow, fSC_ComboBoxArrow, eSC_ComboBoxListBoxPopup, fSC_ComboBoxListBoxPopup, eSC_SliderGroove, fSC_SliderGroove, eSC_SliderHandle, fSC_SliderHandle, eSC_SliderTickmarks, fSC_SliderTickmarks, eSC_ToolButton, fSC_ToolButton, eSC_ToolButtonMenu, fSC_ToolButtonMenu, eSC_TitleBarSysMenu, fSC_TitleBarSysMenu, eSC_TitleBarMinButton, fSC_TitleBarMinButton, eSC_TitleBarMaxButton, fSC_TitleBarMaxButton, eSC_TitleBarCloseButton, fSC_TitleBarCloseButton, eSC_TitleBarNormalButton, fSC_TitleBarNormalButton, eSC_TitleBarShadeButton, fSC_TitleBarShadeButton, eSC_TitleBarUnshadeButton, fSC_TitleBarUnshadeButton, eSC_TitleBarContextHelpButton, fSC_TitleBarContextHelpButton, eSC_TitleBarLabel, fSC_TitleBarLabel, eSC_Q3ListView, fSC_Q3ListView, eSC_Q3ListViewBranch, fSC_Q3ListViewBranch, eSC_Q3ListViewExpand, fSC_Q3ListViewExpand, eSC_DialGroove, fSC_DialGroove, eSC_DialHandle, fSC_DialHandle, eSC_DialTickmarks, fSC_DialTickmarks, eSC_GroupBoxCheckBox, fSC_GroupBoxCheckBox, eSC_GroupBoxLabel, fSC_GroupBoxLabel, eSC_GroupBoxContents, fSC_GroupBoxContents, eSC_GroupBoxFrame, fSC_GroupBoxFrame, eSC_MdiMinButton, fSC_MdiMinButton, eSC_MdiNormalButton, fSC_MdiNormalButton, eSC_MdiCloseButton, fSC_MdiCloseButton, eSC_All, fSC_All
 , PixelMetric, ePM_ButtonMargin, ePM_ButtonDefaultIndicator, ePM_MenuButtonIndicator, ePM_ButtonShiftHorizontal, ePM_ButtonShiftVertical, ePM_DefaultFrameWidth, ePM_SpinBoxFrameWidth, ePM_ComboBoxFrameWidth, ePM_MaximumDragDistance, ePM_ScrollBarExtent, ePM_ScrollBarSliderMin, ePM_SliderThickness, ePM_SliderControlThickness, ePM_SliderLength, ePM_SliderTickmarkOffset, ePM_SliderSpaceAvailable, ePM_DockWidgetSeparatorExtent, ePM_DockWidgetHandleExtent, ePM_DockWidgetFrameWidth, ePM_TabBarTabOverlap, ePM_TabBarTabHSpace, ePM_TabBarTabVSpace, ePM_TabBarBaseHeight, ePM_TabBarBaseOverlap, ePM_ProgressBarChunkWidth, ePM_SplitterWidth, ePM_TitleBarHeight, ePM_MenuScrollerHeight, ePM_MenuHMargin, ePM_MenuVMargin, ePM_MenuPanelWidth, ePM_MenuTearoffHeight, ePM_MenuDesktopFrameWidth, ePM_MenuBarPanelWidth, ePM_MenuBarItemSpacing, ePM_MenuBarVMargin, ePM_MenuBarHMargin, ePM_IndicatorWidth, ePM_IndicatorHeight, ePM_ExclusiveIndicatorWidth, ePM_ExclusiveIndicatorHeight, ePM_CheckListButtonSize, ePM_CheckListControllerSize, ePM_DialogButtonsSeparator, ePM_DialogButtonsButtonWidth, ePM_DialogButtonsButtonHeight, ePM_MdiSubWindowFrameWidth, ePM_MDIFrameWidth, ePM_MdiSubWindowMinimizedWidth, ePM_MDIMinimizedWidth, ePM_HeaderMargin, ePM_HeaderMarkSize, ePM_HeaderGripMargin, ePM_TabBarTabShiftHorizontal, ePM_TabBarTabShiftVertical, ePM_TabBarScrollButtonWidth, ePM_ToolBarFrameWidth, ePM_ToolBarHandleExtent, ePM_ToolBarItemSpacing, ePM_ToolBarItemMargin, ePM_ToolBarSeparatorExtent, ePM_ToolBarExtensionExtent, ePM_SpinBoxSliderHeight, ePM_DefaultTopLevelMargin, ePM_DefaultChildMargin, ePM_DefaultLayoutSpacing, ePM_ToolBarIconSize, ePM_ListViewIconSize, ePM_IconViewIconSize, ePM_SmallIconSize, ePM_LargeIconSize, ePM_FocusFrameVMargin, ePM_FocusFrameHMargin, ePM_ToolTipLabelFrameWidth, ePM_CheckBoxLabelSpacing, ePM_TabBarIconSize, ePM_SizeGripSize, ePM_DockWidgetTitleMargin, ePM_MessageBoxIconSize, ePM_ButtonIconSize, ePM_DockWidgetTitleBarButtonMargin, ePM_RadioButtonLabelSpacing, ePM_LayoutLeftMargin, ePM_LayoutTopMargin, ePM_LayoutRightMargin, ePM_LayoutBottomMargin, ePM_LayoutHorizontalSpacing, ePM_LayoutVerticalSpacing, ePM_CustomBase
 , ContentsType, eCT_PushButton, eCT_CheckBox, eCT_RadioButton, eCT_ToolButton, eCT_ComboBox, eCT_Splitter, eCT_Q3DockWindow, eCT_ProgressBar, eCT_MenuItem, eCT_MenuBarItem, eCT_MenuBar, eCT_Menu, eCT_TabBarTab, eCT_Slider, eCT_ScrollBar, eCT_Q3Header, eCT_LineEdit, eCT_SpinBox, eCT_SizeGrip, eCT_TabWidget, eCT_DialogButtons, eCT_HeaderSection, eCT_GroupBox, eCT_MdiControls, eCT_CustomBase
 , QStyleStyleHint, eSH_EtchDisabledText, eSH_DitherDisabledText, eSH_ScrollBar_MiddleClickAbsolutePosition, eSH_ScrollBar_ScrollWhenPointerLeavesControl, eSH_TabBar_SelectMouseType, eSH_TabBar_Alignment, eSH_Header_ArrowAlignment, eSH_Slider_SnapToValue, eSH_Slider_SloppyKeyEvents, eSH_ProgressDialog_CenterCancelButton, eSH_ProgressDialog_TextLabelAlignment, eSH_PrintDialog_RightAlignButtons, eSH_MainWindow_SpaceBelowMenuBar, eSH_FontDialog_SelectAssociatedText, eSH_Menu_AllowActiveAndDisabled, eSH_Menu_SpaceActivatesItem, eSH_Menu_SubMenuPopupDelay, eSH_ScrollView_FrameOnlyAroundContents, eSH_MenuBar_AltKeyNavigation, eSH_ComboBox_ListMouseTracking, eSH_Menu_MouseTracking, eSH_MenuBar_MouseTracking, eSH_ItemView_ChangeHighlightOnFocus, eSH_Widget_ShareActivation, eSH_Workspace_FillSpaceOnMaximize, eSH_ComboBox_Popup, eSH_TitleBar_NoBorder, eSH_Slider_StopMouseOverSlider, eSH_ScrollBar_StopMouseOverSlider, eSH_BlinkCursorWhenTextSelected, eSH_RichText_FullWidthSelection, eSH_Menu_Scrollable, eSH_GroupBox_TextLabelVerticalAlignment, eSH_GroupBox_TextLabelColor, eSH_Menu_SloppySubMenus, eSH_Table_GridLineColor, eSH_LineEdit_PasswordCharacter, eSH_DialogButtons_DefaultButton, eSH_ToolBox_SelectedPageTitleBold, eSH_TabBar_PreferNoArrows, eSH_ScrollBar_LeftClickAbsolutePosition, eSH_Q3ListViewExpand_SelectMouseType, eSH_UnderlineShortcut, eSH_SpinBox_AnimateButton, eSH_SpinBox_KeyPressAutoRepeatRate, eSH_SpinBox_ClickAutoRepeatRate, eSH_Menu_FillScreenWithScroll, eSH_ToolTipLabel_Opacity, eSH_DrawMenuBarSeparator, eSH_TitleBar_ModifyNotification, eSH_Button_FocusPolicy, eSH_MenuBar_DismissOnSecondClick, eSH_MessageBox_UseBorderForButtonSpacing, eSH_TitleBar_AutoRaise, eSH_ToolButton_PopupDelay, eSH_FocusFrame_Mask, eSH_RubberBand_Mask, eSH_WindowFrame_Mask, eSH_SpinControls_DisableOnBounds, eSH_Dial_BackgroundRole, eSH_ComboBox_LayoutDirection, eSH_ItemView_EllipsisLocation, eSH_ItemView_ShowDecorationSelected, eSH_ItemView_ActivateItemOnSingleClick, eSH_ScrollBar_ContextMenu, eSH_ScrollBar_RollBetweenButtons, eSH_Slider_AbsoluteSetButtons, eSH_Slider_PageSetButtons, eSH_Menu_KeyboardSearch, eSH_TabBar_ElideMode, eSH_DialogButtonLayout, eSH_ComboBox_PopupFrameStyle, eSH_MessageBox_TextInteractionFlags, eSH_DialogButtonBox_ButtonsHaveIcons, eSH_SpellCheckUnderlineStyle, eSH_MessageBox_CenterButtons, eSH_Menu_SelectionWrap, eSH_ItemView_MovementWithoutUpdatingSelection, eSH_ToolTip_Mask, eSH_FocusFrame_AboveWidget, eSH_TextControl_FocusIndicatorTextCharFormat, eSH_WizardStyle, eSH_ItemView_ArrowKeysNavigateIntoChildren, eSH_CustomBase
 , StandardPixmap, eSP_TitleBarMenuButton, eSP_TitleBarMinButton, eSP_TitleBarMaxButton, eSP_TitleBarCloseButton, eSP_TitleBarNormalButton, eSP_TitleBarShadeButton, eSP_TitleBarUnshadeButton, eSP_TitleBarContextHelpButton, eSP_DockWidgetCloseButton, eSP_MessageBoxInformation, eSP_MessageBoxWarning, eSP_MessageBoxCritical, eSP_MessageBoxQuestion, eSP_DesktopIcon, eSP_TrashIcon, eSP_ComputerIcon, eSP_DriveFDIcon, eSP_DriveHDIcon, eSP_DriveCDIcon, eSP_DriveDVDIcon, eSP_DriveNetIcon, eSP_DirOpenIcon, eSP_DirClosedIcon, eSP_DirLinkIcon, eSP_FileIcon, eSP_FileLinkIcon, eSP_ToolBarHorizontalExtensionButton, eSP_ToolBarVerticalExtensionButton, eSP_FileDialogStart, eSP_FileDialogEnd, eSP_FileDialogToParent, eSP_FileDialogNewFolder, eSP_FileDialogDetailedView, eSP_FileDialogInfoView, eSP_FileDialogContentsView, eSP_FileDialogListView, eSP_FileDialogBack, eSP_DirIcon, eSP_DialogOkButton, eSP_DialogCancelButton, eSP_DialogHelpButton, eSP_DialogOpenButton, eSP_DialogSaveButton, eSP_DialogCloseButton, eSP_DialogApplyButton, eSP_DialogResetButton, eSP_DialogDiscardButton, eSP_DialogYesButton, eSP_DialogNoButton, eSP_ArrowUp, eSP_ArrowDown, eSP_ArrowLeft, eSP_ArrowRight, eSP_ArrowBack, eSP_ArrowForward, eSP_DirHomeIcon, eSP_CommandLink, eSP_VistaShield, eSP_CustomBase
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CStateFlag a = CStateFlag a
type StateFlag = QEnum(CStateFlag Int)

ieStateFlag :: Int -> StateFlag
ieStateFlag x = QEnum (CStateFlag x)

instance QEnumC (CStateFlag Int) where
 qEnum_toInt (QEnum (CStateFlag x)) = x
 qEnum_fromInt x = QEnum (CStateFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StateFlag -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

data CQStyleState a = CQStyleState a
type QStyleState = QFlags(CQStyleState Int)

ifQStyleState :: Int -> QStyleState
ifQStyleState x = QFlags (CQStyleState x)

instance QFlagsC (CQStyleState Int) where
 qFlags_toInt (QFlags (CQStyleState x)) = x
 qFlags_fromInt x = QFlags (CQStyleState x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> QStyleState -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qFlags_fromInt hint)
           return ()

eState_None :: StateFlag
eState_None
  = ieStateFlag $ 0
eState_Enabled :: StateFlag
eState_Enabled
  = ieStateFlag $ 1
eState_Raised :: StateFlag
eState_Raised
  = ieStateFlag $ 2
eState_Sunken :: StateFlag
eState_Sunken
  = ieStateFlag $ 4
eState_Off :: StateFlag
eState_Off
  = ieStateFlag $ 8
eState_NoChange :: StateFlag
eState_NoChange
  = ieStateFlag $ 16
eState_On :: StateFlag
eState_On
  = ieStateFlag $ 32
eState_DownArrow :: StateFlag
eState_DownArrow
  = ieStateFlag $ 64
eState_Horizontal :: StateFlag
eState_Horizontal
  = ieStateFlag $ 128
eState_HasFocus :: StateFlag
eState_HasFocus
  = ieStateFlag $ 256
eState_Top :: StateFlag
eState_Top
  = ieStateFlag $ 512
eState_Bottom :: StateFlag
eState_Bottom
  = ieStateFlag $ 1024
eState_FocusAtBorder :: StateFlag
eState_FocusAtBorder
  = ieStateFlag $ 2048
eState_AutoRaise :: StateFlag
eState_AutoRaise
  = ieStateFlag $ 4096
eState_MouseOver :: StateFlag
eState_MouseOver
  = ieStateFlag $ 8192
eState_UpArrow :: StateFlag
eState_UpArrow
  = ieStateFlag $ 16384
eState_Selected :: StateFlag
eState_Selected
  = ieStateFlag $ 32768
eState_Active :: StateFlag
eState_Active
  = ieStateFlag $ 65536
eState_Window :: StateFlag
eState_Window
  = ieStateFlag $ 131072
eState_Open :: StateFlag
eState_Open
  = ieStateFlag $ 262144
eState_Children :: StateFlag
eState_Children
  = ieStateFlag $ 524288
eState_Item :: StateFlag
eState_Item
  = ieStateFlag $ 1048576
eState_Sibling :: StateFlag
eState_Sibling
  = ieStateFlag $ 2097152
eState_Editing :: StateFlag
eState_Editing
  = ieStateFlag $ 4194304
eState_KeyboardFocusChange :: StateFlag
eState_KeyboardFocusChange
  = ieStateFlag $ 8388608
eState_ReadOnly :: StateFlag
eState_ReadOnly
  = ieStateFlag $ 33554432
eState_Small :: StateFlag
eState_Small
  = ieStateFlag $ 67108864
eState_Mini :: StateFlag
eState_Mini
  = ieStateFlag $ 134217728

fState_None :: QStyleState
fState_None
  = ifQStyleState $ 0
fState_Enabled :: QStyleState
fState_Enabled
  = ifQStyleState $ 1
fState_Raised :: QStyleState
fState_Raised
  = ifQStyleState $ 2
fState_Sunken :: QStyleState
fState_Sunken
  = ifQStyleState $ 4
fState_Off :: QStyleState
fState_Off
  = ifQStyleState $ 8
fState_NoChange :: QStyleState
fState_NoChange
  = ifQStyleState $ 16
fState_On :: QStyleState
fState_On
  = ifQStyleState $ 32
fState_DownArrow :: QStyleState
fState_DownArrow
  = ifQStyleState $ 64
fState_Horizontal :: QStyleState
fState_Horizontal
  = ifQStyleState $ 128
fState_HasFocus :: QStyleState
fState_HasFocus
  = ifQStyleState $ 256
fState_Top :: QStyleState
fState_Top
  = ifQStyleState $ 512
fState_Bottom :: QStyleState
fState_Bottom
  = ifQStyleState $ 1024
fState_FocusAtBorder :: QStyleState
fState_FocusAtBorder
  = ifQStyleState $ 2048
fState_AutoRaise :: QStyleState
fState_AutoRaise
  = ifQStyleState $ 4096
fState_MouseOver :: QStyleState
fState_MouseOver
  = ifQStyleState $ 8192
fState_UpArrow :: QStyleState
fState_UpArrow
  = ifQStyleState $ 16384
fState_Selected :: QStyleState
fState_Selected
  = ifQStyleState $ 32768
fState_Active :: QStyleState
fState_Active
  = ifQStyleState $ 65536
fState_Window :: QStyleState
fState_Window
  = ifQStyleState $ 131072
fState_Open :: QStyleState
fState_Open
  = ifQStyleState $ 262144
fState_Children :: QStyleState
fState_Children
  = ifQStyleState $ 524288
fState_Item :: QStyleState
fState_Item
  = ifQStyleState $ 1048576
fState_Sibling :: QStyleState
fState_Sibling
  = ifQStyleState $ 2097152
fState_Editing :: QStyleState
fState_Editing
  = ifQStyleState $ 4194304
fState_KeyboardFocusChange :: QStyleState
fState_KeyboardFocusChange
  = ifQStyleState $ 8388608
fState_ReadOnly :: QStyleState
fState_ReadOnly
  = ifQStyleState $ 33554432
fState_Small :: QStyleState
fState_Small
  = ifQStyleState $ 67108864
fState_Mini :: QStyleState
fState_Mini
  = ifQStyleState $ 134217728

data CPrimitiveElement a = CPrimitiveElement a
type PrimitiveElement = QEnum(CPrimitiveElement Int)

iePrimitiveElement :: Int -> PrimitiveElement
iePrimitiveElement x = QEnum (CPrimitiveElement x)

instance QEnumC (CPrimitiveElement Int) where
 qEnum_toInt (QEnum (CPrimitiveElement x)) = x
 qEnum_fromInt x = QEnum (CPrimitiveElement x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PrimitiveElement -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

ePE_Q3CheckListController :: PrimitiveElement
ePE_Q3CheckListController
  = iePrimitiveElement $ 0
ePE_Q3CheckListExclusiveIndicator :: PrimitiveElement
ePE_Q3CheckListExclusiveIndicator
  = iePrimitiveElement $ 1
ePE_Q3CheckListIndicator :: PrimitiveElement
ePE_Q3CheckListIndicator
  = iePrimitiveElement $ 2
ePE_Q3DockWindowSeparator :: PrimitiveElement
ePE_Q3DockWindowSeparator
  = iePrimitiveElement $ 3
ePE_Q3Separator :: PrimitiveElement
ePE_Q3Separator
  = iePrimitiveElement $ 4
ePE_Frame :: PrimitiveElement
ePE_Frame
  = iePrimitiveElement $ 5
ePE_FrameDefaultButton :: PrimitiveElement
ePE_FrameDefaultButton
  = iePrimitiveElement $ 6
ePE_FrameDockWidget :: PrimitiveElement
ePE_FrameDockWidget
  = iePrimitiveElement $ 7
ePE_FrameFocusRect :: PrimitiveElement
ePE_FrameFocusRect
  = iePrimitiveElement $ 8
ePE_FrameGroupBox :: PrimitiveElement
ePE_FrameGroupBox
  = iePrimitiveElement $ 9
ePE_FrameLineEdit :: PrimitiveElement
ePE_FrameLineEdit
  = iePrimitiveElement $ 10
ePE_FrameMenu :: PrimitiveElement
ePE_FrameMenu
  = iePrimitiveElement $ 11
ePE_FrameStatusBar :: PrimitiveElement
ePE_FrameStatusBar
  = iePrimitiveElement $ 12
ePE_FrameTabWidget :: PrimitiveElement
ePE_FrameTabWidget
  = iePrimitiveElement $ 13
ePE_FrameWindow :: PrimitiveElement
ePE_FrameWindow
  = iePrimitiveElement $ 14
ePE_FrameButtonBevel :: PrimitiveElement
ePE_FrameButtonBevel
  = iePrimitiveElement $ 15
ePE_FrameButtonTool :: PrimitiveElement
ePE_FrameButtonTool
  = iePrimitiveElement $ 16
ePE_FrameTabBarBase :: PrimitiveElement
ePE_FrameTabBarBase
  = iePrimitiveElement $ 17
ePE_PanelButtonCommand :: PrimitiveElement
ePE_PanelButtonCommand
  = iePrimitiveElement $ 18
ePE_PanelButtonBevel :: PrimitiveElement
ePE_PanelButtonBevel
  = iePrimitiveElement $ 19
ePE_PanelButtonTool :: PrimitiveElement
ePE_PanelButtonTool
  = iePrimitiveElement $ 20
ePE_PanelMenuBar :: PrimitiveElement
ePE_PanelMenuBar
  = iePrimitiveElement $ 21
ePE_PanelToolBar :: PrimitiveElement
ePE_PanelToolBar
  = iePrimitiveElement $ 22
ePE_PanelLineEdit :: PrimitiveElement
ePE_PanelLineEdit
  = iePrimitiveElement $ 23
ePE_IndicatorArrowDown :: PrimitiveElement
ePE_IndicatorArrowDown
  = iePrimitiveElement $ 24
ePE_IndicatorArrowLeft :: PrimitiveElement
ePE_IndicatorArrowLeft
  = iePrimitiveElement $ 25
ePE_IndicatorArrowRight :: PrimitiveElement
ePE_IndicatorArrowRight
  = iePrimitiveElement $ 26
ePE_IndicatorArrowUp :: PrimitiveElement
ePE_IndicatorArrowUp
  = iePrimitiveElement $ 27
ePE_IndicatorBranch :: PrimitiveElement
ePE_IndicatorBranch
  = iePrimitiveElement $ 28
ePE_IndicatorButtonDropDown :: PrimitiveElement
ePE_IndicatorButtonDropDown
  = iePrimitiveElement $ 29
ePE_IndicatorViewItemCheck :: PrimitiveElement
ePE_IndicatorViewItemCheck
  = iePrimitiveElement $ 30
ePE_IndicatorCheckBox :: PrimitiveElement
ePE_IndicatorCheckBox
  = iePrimitiveElement $ 31
ePE_IndicatorDockWidgetResizeHandle :: PrimitiveElement
ePE_IndicatorDockWidgetResizeHandle
  = iePrimitiveElement $ 32
ePE_IndicatorHeaderArrow :: PrimitiveElement
ePE_IndicatorHeaderArrow
  = iePrimitiveElement $ 33
ePE_IndicatorMenuCheckMark :: PrimitiveElement
ePE_IndicatorMenuCheckMark
  = iePrimitiveElement $ 34
ePE_IndicatorProgressChunk :: PrimitiveElement
ePE_IndicatorProgressChunk
  = iePrimitiveElement $ 35
ePE_IndicatorRadioButton :: PrimitiveElement
ePE_IndicatorRadioButton
  = iePrimitiveElement $ 36
ePE_IndicatorSpinDown :: PrimitiveElement
ePE_IndicatorSpinDown
  = iePrimitiveElement $ 37
ePE_IndicatorSpinMinus :: PrimitiveElement
ePE_IndicatorSpinMinus
  = iePrimitiveElement $ 38
ePE_IndicatorSpinPlus :: PrimitiveElement
ePE_IndicatorSpinPlus
  = iePrimitiveElement $ 39
ePE_IndicatorSpinUp :: PrimitiveElement
ePE_IndicatorSpinUp
  = iePrimitiveElement $ 40
ePE_IndicatorToolBarHandle :: PrimitiveElement
ePE_IndicatorToolBarHandle
  = iePrimitiveElement $ 41
ePE_IndicatorToolBarSeparator :: PrimitiveElement
ePE_IndicatorToolBarSeparator
  = iePrimitiveElement $ 42
ePE_PanelTipLabel :: PrimitiveElement
ePE_PanelTipLabel
  = iePrimitiveElement $ 43
ePE_IndicatorTabTear :: PrimitiveElement
ePE_IndicatorTabTear
  = iePrimitiveElement $ 44
ePE_PanelScrollAreaCorner :: PrimitiveElement
ePE_PanelScrollAreaCorner
  = iePrimitiveElement $ 45
ePE_Widget :: PrimitiveElement
ePE_Widget
  = iePrimitiveElement $ 46
ePE_IndicatorColumnViewArrow :: PrimitiveElement
ePE_IndicatorColumnViewArrow
  = iePrimitiveElement $ 47
ePE_CustomBase :: PrimitiveElement
ePE_CustomBase
  = iePrimitiveElement $ 251658240

data CControlElement a = CControlElement a
type ControlElement = QEnum(CControlElement Int)

ieControlElement :: Int -> ControlElement
ieControlElement x = QEnum (CControlElement x)

instance QEnumC (CControlElement Int) where
 qEnum_toInt (QEnum (CControlElement x)) = x
 qEnum_fromInt x = QEnum (CControlElement x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ControlElement -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eCE_PushButton :: ControlElement
eCE_PushButton
  = ieControlElement $ 0
eCE_PushButtonBevel :: ControlElement
eCE_PushButtonBevel
  = ieControlElement $ 1
eCE_PushButtonLabel :: ControlElement
eCE_PushButtonLabel
  = ieControlElement $ 2
eCE_CheckBox :: ControlElement
eCE_CheckBox
  = ieControlElement $ 3
eCE_CheckBoxLabel :: ControlElement
eCE_CheckBoxLabel
  = ieControlElement $ 4
eCE_RadioButton :: ControlElement
eCE_RadioButton
  = ieControlElement $ 5
eCE_RadioButtonLabel :: ControlElement
eCE_RadioButtonLabel
  = ieControlElement $ 6
eCE_TabBarTab :: ControlElement
eCE_TabBarTab
  = ieControlElement $ 7
eCE_TabBarTabShape :: ControlElement
eCE_TabBarTabShape
  = ieControlElement $ 8
eCE_TabBarTabLabel :: ControlElement
eCE_TabBarTabLabel
  = ieControlElement $ 9
eCE_ProgressBar :: ControlElement
eCE_ProgressBar
  = ieControlElement $ 10
eCE_ProgressBarGroove :: ControlElement
eCE_ProgressBarGroove
  = ieControlElement $ 11
eCE_ProgressBarContents :: ControlElement
eCE_ProgressBarContents
  = ieControlElement $ 12
eCE_ProgressBarLabel :: ControlElement
eCE_ProgressBarLabel
  = ieControlElement $ 13
eCE_MenuItem :: ControlElement
eCE_MenuItem
  = ieControlElement $ 14
eCE_MenuScroller :: ControlElement
eCE_MenuScroller
  = ieControlElement $ 15
eCE_MenuVMargin :: ControlElement
eCE_MenuVMargin
  = ieControlElement $ 16
eCE_MenuHMargin :: ControlElement
eCE_MenuHMargin
  = ieControlElement $ 17
eCE_MenuTearoff :: ControlElement
eCE_MenuTearoff
  = ieControlElement $ 18
eCE_MenuEmptyArea :: ControlElement
eCE_MenuEmptyArea
  = ieControlElement $ 19
eCE_MenuBarItem :: ControlElement
eCE_MenuBarItem
  = ieControlElement $ 20
eCE_MenuBarEmptyArea :: ControlElement
eCE_MenuBarEmptyArea
  = ieControlElement $ 21
eCE_ToolButtonLabel :: ControlElement
eCE_ToolButtonLabel
  = ieControlElement $ 22
eCE_Header :: ControlElement
eCE_Header
  = ieControlElement $ 23
eCE_HeaderSection :: ControlElement
eCE_HeaderSection
  = ieControlElement $ 24
eCE_HeaderLabel :: ControlElement
eCE_HeaderLabel
  = ieControlElement $ 25
eCE_Q3DockWindowEmptyArea :: ControlElement
eCE_Q3DockWindowEmptyArea
  = ieControlElement $ 26
eCE_ToolBoxTab :: ControlElement
eCE_ToolBoxTab
  = ieControlElement $ 27
eCE_SizeGrip :: ControlElement
eCE_SizeGrip
  = ieControlElement $ 28
eCE_Splitter :: ControlElement
eCE_Splitter
  = ieControlElement $ 29
eCE_RubberBand :: ControlElement
eCE_RubberBand
  = ieControlElement $ 30
eCE_DockWidgetTitle :: ControlElement
eCE_DockWidgetTitle
  = ieControlElement $ 31
eCE_ScrollBarAddLine :: ControlElement
eCE_ScrollBarAddLine
  = ieControlElement $ 32
eCE_ScrollBarSubLine :: ControlElement
eCE_ScrollBarSubLine
  = ieControlElement $ 33
eCE_ScrollBarAddPage :: ControlElement
eCE_ScrollBarAddPage
  = ieControlElement $ 34
eCE_ScrollBarSubPage :: ControlElement
eCE_ScrollBarSubPage
  = ieControlElement $ 35
eCE_ScrollBarSlider :: ControlElement
eCE_ScrollBarSlider
  = ieControlElement $ 36
eCE_ScrollBarFirst :: ControlElement
eCE_ScrollBarFirst
  = ieControlElement $ 37
eCE_ScrollBarLast :: ControlElement
eCE_ScrollBarLast
  = ieControlElement $ 38
eCE_FocusFrame :: ControlElement
eCE_FocusFrame
  = ieControlElement $ 39
eCE_ComboBoxLabel :: ControlElement
eCE_ComboBoxLabel
  = ieControlElement $ 40
eCE_ToolBar :: ControlElement
eCE_ToolBar
  = ieControlElement $ 41
eCE_ToolBoxTabShape :: ControlElement
eCE_ToolBoxTabShape
  = ieControlElement $ 42
eCE_ToolBoxTabLabel :: ControlElement
eCE_ToolBoxTabLabel
  = ieControlElement $ 43
eCE_HeaderEmptyArea :: ControlElement
eCE_HeaderEmptyArea
  = ieControlElement $ 44
eCE_ColumnViewGrip :: ControlElement
eCE_ColumnViewGrip
  = ieControlElement $ 45
eCE_CustomBase :: ControlElement
eCE_CustomBase
  = ieControlElement $ -268435456

data CSubElement a = CSubElement a
type SubElement = QEnum(CSubElement Int)

ieSubElement :: Int -> SubElement
ieSubElement x = QEnum (CSubElement x)

instance QEnumC (CSubElement Int) where
 qEnum_toInt (QEnum (CSubElement x)) = x
 qEnum_fromInt x = QEnum (CSubElement x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SubElement -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eSE_PushButtonContents :: SubElement
eSE_PushButtonContents
  = ieSubElement $ 0
eSE_PushButtonFocusRect :: SubElement
eSE_PushButtonFocusRect
  = ieSubElement $ 1
eSE_CheckBoxIndicator :: SubElement
eSE_CheckBoxIndicator
  = ieSubElement $ 2
eSE_CheckBoxContents :: SubElement
eSE_CheckBoxContents
  = ieSubElement $ 3
eSE_CheckBoxFocusRect :: SubElement
eSE_CheckBoxFocusRect
  = ieSubElement $ 4
eSE_CheckBoxClickRect :: SubElement
eSE_CheckBoxClickRect
  = ieSubElement $ 5
eSE_RadioButtonIndicator :: SubElement
eSE_RadioButtonIndicator
  = ieSubElement $ 6
eSE_RadioButtonContents :: SubElement
eSE_RadioButtonContents
  = ieSubElement $ 7
eSE_RadioButtonFocusRect :: SubElement
eSE_RadioButtonFocusRect
  = ieSubElement $ 8
eSE_RadioButtonClickRect :: SubElement
eSE_RadioButtonClickRect
  = ieSubElement $ 9
eSE_ComboBoxFocusRect :: SubElement
eSE_ComboBoxFocusRect
  = ieSubElement $ 10
eSE_SliderFocusRect :: SubElement
eSE_SliderFocusRect
  = ieSubElement $ 11
eSE_Q3DockWindowHandleRect :: SubElement
eSE_Q3DockWindowHandleRect
  = ieSubElement $ 12
eSE_ProgressBarGroove :: SubElement
eSE_ProgressBarGroove
  = ieSubElement $ 13
eSE_ProgressBarContents :: SubElement
eSE_ProgressBarContents
  = ieSubElement $ 14
eSE_ProgressBarLabel :: SubElement
eSE_ProgressBarLabel
  = ieSubElement $ 15
eSE_DialogButtonAccept :: SubElement
eSE_DialogButtonAccept
  = ieSubElement $ 16
eSE_DialogButtonReject :: SubElement
eSE_DialogButtonReject
  = ieSubElement $ 17
eSE_DialogButtonApply :: SubElement
eSE_DialogButtonApply
  = ieSubElement $ 18
eSE_DialogButtonHelp :: SubElement
eSE_DialogButtonHelp
  = ieSubElement $ 19
eSE_DialogButtonAll :: SubElement
eSE_DialogButtonAll
  = ieSubElement $ 20
eSE_DialogButtonAbort :: SubElement
eSE_DialogButtonAbort
  = ieSubElement $ 21
eSE_DialogButtonIgnore :: SubElement
eSE_DialogButtonIgnore
  = ieSubElement $ 22
eSE_DialogButtonRetry :: SubElement
eSE_DialogButtonRetry
  = ieSubElement $ 23
eSE_DialogButtonCustom :: SubElement
eSE_DialogButtonCustom
  = ieSubElement $ 24
eSE_ToolBoxTabContents :: SubElement
eSE_ToolBoxTabContents
  = ieSubElement $ 25
eSE_HeaderLabel :: SubElement
eSE_HeaderLabel
  = ieSubElement $ 26
eSE_HeaderArrow :: SubElement
eSE_HeaderArrow
  = ieSubElement $ 27
eSE_TabWidgetTabBar :: SubElement
eSE_TabWidgetTabBar
  = ieSubElement $ 28
eSE_TabWidgetTabPane :: SubElement
eSE_TabWidgetTabPane
  = ieSubElement $ 29
eSE_TabWidgetTabContents :: SubElement
eSE_TabWidgetTabContents
  = ieSubElement $ 30
eSE_TabWidgetLeftCorner :: SubElement
eSE_TabWidgetLeftCorner
  = ieSubElement $ 31
eSE_TabWidgetRightCorner :: SubElement
eSE_TabWidgetRightCorner
  = ieSubElement $ 32
eSE_ViewItemCheckIndicator :: SubElement
eSE_ViewItemCheckIndicator
  = ieSubElement $ 33
eSE_TabBarTearIndicator :: SubElement
eSE_TabBarTearIndicator
  = ieSubElement $ 34
eSE_TreeViewDisclosureItem :: SubElement
eSE_TreeViewDisclosureItem
  = ieSubElement $ 35
eSE_LineEditContents :: SubElement
eSE_LineEditContents
  = ieSubElement $ 36
eSE_FrameContents :: SubElement
eSE_FrameContents
  = ieSubElement $ 37
eSE_DockWidgetCloseButton :: SubElement
eSE_DockWidgetCloseButton
  = ieSubElement $ 38
eSE_DockWidgetFloatButton :: SubElement
eSE_DockWidgetFloatButton
  = ieSubElement $ 39
eSE_DockWidgetTitleBarText :: SubElement
eSE_DockWidgetTitleBarText
  = ieSubElement $ 40
eSE_DockWidgetIcon :: SubElement
eSE_DockWidgetIcon
  = ieSubElement $ 41
eSE_CheckBoxLayoutItem :: SubElement
eSE_CheckBoxLayoutItem
  = ieSubElement $ 42
eSE_ComboBoxLayoutItem :: SubElement
eSE_ComboBoxLayoutItem
  = ieSubElement $ 43
eSE_DateTimeEditLayoutItem :: SubElement
eSE_DateTimeEditLayoutItem
  = ieSubElement $ 44
eSE_DialogButtonBoxLayoutItem :: SubElement
eSE_DialogButtonBoxLayoutItem
  = ieSubElement $ 45
eSE_LabelLayoutItem :: SubElement
eSE_LabelLayoutItem
  = ieSubElement $ 46
eSE_ProgressBarLayoutItem :: SubElement
eSE_ProgressBarLayoutItem
  = ieSubElement $ 47
eSE_PushButtonLayoutItem :: SubElement
eSE_PushButtonLayoutItem
  = ieSubElement $ 48
eSE_RadioButtonLayoutItem :: SubElement
eSE_RadioButtonLayoutItem
  = ieSubElement $ 49
eSE_SliderLayoutItem :: SubElement
eSE_SliderLayoutItem
  = ieSubElement $ 50
eSE_SpinBoxLayoutItem :: SubElement
eSE_SpinBoxLayoutItem
  = ieSubElement $ 51
eSE_ToolButtonLayoutItem :: SubElement
eSE_ToolButtonLayoutItem
  = ieSubElement $ 52
eSE_FrameLayoutItem :: SubElement
eSE_FrameLayoutItem
  = ieSubElement $ 53
eSE_GroupBoxLayoutItem :: SubElement
eSE_GroupBoxLayoutItem
  = ieSubElement $ 54
eSE_TabWidgetLayoutItem :: SubElement
eSE_TabWidgetLayoutItem
  = ieSubElement $ 55
eSE_CustomBase :: SubElement
eSE_CustomBase
  = ieSubElement $ -268435456

data CComplexControl a = CComplexControl a
type ComplexControl = QEnum(CComplexControl Int)

ieComplexControl :: Int -> ComplexControl
ieComplexControl x = QEnum (CComplexControl x)

instance QEnumC (CComplexControl Int) where
 qEnum_toInt (QEnum (CComplexControl x)) = x
 qEnum_fromInt x = QEnum (CComplexControl x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ComplexControl -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eCC_SpinBox :: ComplexControl
eCC_SpinBox
  = ieComplexControl $ 0
eCC_ComboBox :: ComplexControl
eCC_ComboBox
  = ieComplexControl $ 1
eCC_ScrollBar :: ComplexControl
eCC_ScrollBar
  = ieComplexControl $ 2
eCC_Slider :: ComplexControl
eCC_Slider
  = ieComplexControl $ 3
eCC_ToolButton :: ComplexControl
eCC_ToolButton
  = ieComplexControl $ 4
eCC_TitleBar :: ComplexControl
eCC_TitleBar
  = ieComplexControl $ 5
eCC_Q3ListView :: ComplexControl
eCC_Q3ListView
  = ieComplexControl $ 6
eCC_Dial :: ComplexControl
eCC_Dial
  = ieComplexControl $ 7
eCC_GroupBox :: ComplexControl
eCC_GroupBox
  = ieComplexControl $ 8
eCC_MdiControls :: ComplexControl
eCC_MdiControls
  = ieComplexControl $ 9
eCC_CustomBase :: ComplexControl
eCC_CustomBase
  = ieComplexControl $ -268435456

data CSubControl a = CSubControl a
type SubControl = QEnum(CSubControl Int)

ieSubControl :: Int -> SubControl
ieSubControl x = QEnum (CSubControl x)

instance QEnumC (CSubControl Int) where
 qEnum_toInt (QEnum (CSubControl x)) = x
 qEnum_fromInt x = QEnum (CSubControl x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SubControl -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

data CSubControls a = CSubControls a
type SubControls = QFlags(CSubControls Int)

ifSubControls :: Int -> SubControls
ifSubControls x = QFlags (CSubControls x)

instance QFlagsC (CSubControls Int) where
 qFlags_toInt (QFlags (CSubControls x)) = x
 qFlags_fromInt x = QFlags (CSubControls x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> SubControls -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qFlags_fromInt hint)
           return ()

eSC_None :: SubControl
eSC_None
  = ieSubControl $ 0
eSC_ScrollBarAddLine :: SubControl
eSC_ScrollBarAddLine
  = ieSubControl $ 1
eSC_ScrollBarSubLine :: SubControl
eSC_ScrollBarSubLine
  = ieSubControl $ 2
eSC_ScrollBarAddPage :: SubControl
eSC_ScrollBarAddPage
  = ieSubControl $ 4
eSC_ScrollBarSubPage :: SubControl
eSC_ScrollBarSubPage
  = ieSubControl $ 8
eSC_ScrollBarFirst :: SubControl
eSC_ScrollBarFirst
  = ieSubControl $ 16
eSC_ScrollBarLast :: SubControl
eSC_ScrollBarLast
  = ieSubControl $ 32
eSC_ScrollBarSlider :: SubControl
eSC_ScrollBarSlider
  = ieSubControl $ 64
eSC_ScrollBarGroove :: SubControl
eSC_ScrollBarGroove
  = ieSubControl $ 128
eSC_SpinBoxUp :: SubControl
eSC_SpinBoxUp
  = ieSubControl $ 1
eSC_SpinBoxDown :: SubControl
eSC_SpinBoxDown
  = ieSubControl $ 2
eSC_SpinBoxFrame :: SubControl
eSC_SpinBoxFrame
  = ieSubControl $ 4
eSC_SpinBoxEditField :: SubControl
eSC_SpinBoxEditField
  = ieSubControl $ 8
eSC_ComboBoxFrame :: SubControl
eSC_ComboBoxFrame
  = ieSubControl $ 1
eSC_ComboBoxEditField :: SubControl
eSC_ComboBoxEditField
  = ieSubControl $ 2
eSC_ComboBoxArrow :: SubControl
eSC_ComboBoxArrow
  = ieSubControl $ 4
eSC_ComboBoxListBoxPopup :: SubControl
eSC_ComboBoxListBoxPopup
  = ieSubControl $ 8
eSC_SliderGroove :: SubControl
eSC_SliderGroove
  = ieSubControl $ 1
eSC_SliderHandle :: SubControl
eSC_SliderHandle
  = ieSubControl $ 2
eSC_SliderTickmarks :: SubControl
eSC_SliderTickmarks
  = ieSubControl $ 4
eSC_ToolButton :: SubControl
eSC_ToolButton
  = ieSubControl $ 1
eSC_ToolButtonMenu :: SubControl
eSC_ToolButtonMenu
  = ieSubControl $ 2
eSC_TitleBarSysMenu :: SubControl
eSC_TitleBarSysMenu
  = ieSubControl $ 1
eSC_TitleBarMinButton :: SubControl
eSC_TitleBarMinButton
  = ieSubControl $ 2
eSC_TitleBarMaxButton :: SubControl
eSC_TitleBarMaxButton
  = ieSubControl $ 4
eSC_TitleBarCloseButton :: SubControl
eSC_TitleBarCloseButton
  = ieSubControl $ 8
eSC_TitleBarNormalButton :: SubControl
eSC_TitleBarNormalButton
  = ieSubControl $ 16
eSC_TitleBarShadeButton :: SubControl
eSC_TitleBarShadeButton
  = ieSubControl $ 32
eSC_TitleBarUnshadeButton :: SubControl
eSC_TitleBarUnshadeButton
  = ieSubControl $ 64
eSC_TitleBarContextHelpButton :: SubControl
eSC_TitleBarContextHelpButton
  = ieSubControl $ 128
eSC_TitleBarLabel :: SubControl
eSC_TitleBarLabel
  = ieSubControl $ 256
eSC_Q3ListView :: SubControl
eSC_Q3ListView
  = ieSubControl $ 1
eSC_Q3ListViewBranch :: SubControl
eSC_Q3ListViewBranch
  = ieSubControl $ 2
eSC_Q3ListViewExpand :: SubControl
eSC_Q3ListViewExpand
  = ieSubControl $ 4
eSC_DialGroove :: SubControl
eSC_DialGroove
  = ieSubControl $ 1
eSC_DialHandle :: SubControl
eSC_DialHandle
  = ieSubControl $ 2
eSC_DialTickmarks :: SubControl
eSC_DialTickmarks
  = ieSubControl $ 4
eSC_GroupBoxCheckBox :: SubControl
eSC_GroupBoxCheckBox
  = ieSubControl $ 1
eSC_GroupBoxLabel :: SubControl
eSC_GroupBoxLabel
  = ieSubControl $ 2
eSC_GroupBoxContents :: SubControl
eSC_GroupBoxContents
  = ieSubControl $ 4
eSC_GroupBoxFrame :: SubControl
eSC_GroupBoxFrame
  = ieSubControl $ 8
eSC_MdiMinButton :: SubControl
eSC_MdiMinButton
  = ieSubControl $ 1
eSC_MdiNormalButton :: SubControl
eSC_MdiNormalButton
  = ieSubControl $ 2
eSC_MdiCloseButton :: SubControl
eSC_MdiCloseButton
  = ieSubControl $ 4
eSC_All :: SubControl
eSC_All
  = ieSubControl $ -1

fSC_None :: SubControls
fSC_None
  = ifSubControls $ 0
fSC_ScrollBarAddLine :: SubControls
fSC_ScrollBarAddLine
  = ifSubControls $ 1
fSC_ScrollBarSubLine :: SubControls
fSC_ScrollBarSubLine
  = ifSubControls $ 2
fSC_ScrollBarAddPage :: SubControls
fSC_ScrollBarAddPage
  = ifSubControls $ 4
fSC_ScrollBarSubPage :: SubControls
fSC_ScrollBarSubPage
  = ifSubControls $ 8
fSC_ScrollBarFirst :: SubControls
fSC_ScrollBarFirst
  = ifSubControls $ 16
fSC_ScrollBarLast :: SubControls
fSC_ScrollBarLast
  = ifSubControls $ 32
fSC_ScrollBarSlider :: SubControls
fSC_ScrollBarSlider
  = ifSubControls $ 64
fSC_ScrollBarGroove :: SubControls
fSC_ScrollBarGroove
  = ifSubControls $ 128
fSC_SpinBoxUp :: SubControls
fSC_SpinBoxUp
  = ifSubControls $ 1
fSC_SpinBoxDown :: SubControls
fSC_SpinBoxDown
  = ifSubControls $ 2
fSC_SpinBoxFrame :: SubControls
fSC_SpinBoxFrame
  = ifSubControls $ 4
fSC_SpinBoxEditField :: SubControls
fSC_SpinBoxEditField
  = ifSubControls $ 8
fSC_ComboBoxFrame :: SubControls
fSC_ComboBoxFrame
  = ifSubControls $ 1
fSC_ComboBoxEditField :: SubControls
fSC_ComboBoxEditField
  = ifSubControls $ 2
fSC_ComboBoxArrow :: SubControls
fSC_ComboBoxArrow
  = ifSubControls $ 4
fSC_ComboBoxListBoxPopup :: SubControls
fSC_ComboBoxListBoxPopup
  = ifSubControls $ 8
fSC_SliderGroove :: SubControls
fSC_SliderGroove
  = ifSubControls $ 1
fSC_SliderHandle :: SubControls
fSC_SliderHandle
  = ifSubControls $ 2
fSC_SliderTickmarks :: SubControls
fSC_SliderTickmarks
  = ifSubControls $ 4
fSC_ToolButton :: SubControls
fSC_ToolButton
  = ifSubControls $ 1
fSC_ToolButtonMenu :: SubControls
fSC_ToolButtonMenu
  = ifSubControls $ 2
fSC_TitleBarSysMenu :: SubControls
fSC_TitleBarSysMenu
  = ifSubControls $ 1
fSC_TitleBarMinButton :: SubControls
fSC_TitleBarMinButton
  = ifSubControls $ 2
fSC_TitleBarMaxButton :: SubControls
fSC_TitleBarMaxButton
  = ifSubControls $ 4
fSC_TitleBarCloseButton :: SubControls
fSC_TitleBarCloseButton
  = ifSubControls $ 8
fSC_TitleBarNormalButton :: SubControls
fSC_TitleBarNormalButton
  = ifSubControls $ 16
fSC_TitleBarShadeButton :: SubControls
fSC_TitleBarShadeButton
  = ifSubControls $ 32
fSC_TitleBarUnshadeButton :: SubControls
fSC_TitleBarUnshadeButton
  = ifSubControls $ 64
fSC_TitleBarContextHelpButton :: SubControls
fSC_TitleBarContextHelpButton
  = ifSubControls $ 128
fSC_TitleBarLabel :: SubControls
fSC_TitleBarLabel
  = ifSubControls $ 256
fSC_Q3ListView :: SubControls
fSC_Q3ListView
  = ifSubControls $ 1
fSC_Q3ListViewBranch :: SubControls
fSC_Q3ListViewBranch
  = ifSubControls $ 2
fSC_Q3ListViewExpand :: SubControls
fSC_Q3ListViewExpand
  = ifSubControls $ 4
fSC_DialGroove :: SubControls
fSC_DialGroove
  = ifSubControls $ 1
fSC_DialHandle :: SubControls
fSC_DialHandle
  = ifSubControls $ 2
fSC_DialTickmarks :: SubControls
fSC_DialTickmarks
  = ifSubControls $ 4
fSC_GroupBoxCheckBox :: SubControls
fSC_GroupBoxCheckBox
  = ifSubControls $ 1
fSC_GroupBoxLabel :: SubControls
fSC_GroupBoxLabel
  = ifSubControls $ 2
fSC_GroupBoxContents :: SubControls
fSC_GroupBoxContents
  = ifSubControls $ 4
fSC_GroupBoxFrame :: SubControls
fSC_GroupBoxFrame
  = ifSubControls $ 8
fSC_MdiMinButton :: SubControls
fSC_MdiMinButton
  = ifSubControls $ 1
fSC_MdiNormalButton :: SubControls
fSC_MdiNormalButton
  = ifSubControls $ 2
fSC_MdiCloseButton :: SubControls
fSC_MdiCloseButton
  = ifSubControls $ 4
fSC_All :: SubControls
fSC_All
  = ifSubControls $ -1

data CPixelMetric a = CPixelMetric a
type PixelMetric = QEnum(CPixelMetric Int)

iePixelMetric :: Int -> PixelMetric
iePixelMetric x = QEnum (CPixelMetric x)

instance QEnumC (CPixelMetric Int) where
 qEnum_toInt (QEnum (CPixelMetric x)) = x
 qEnum_fromInt x = QEnum (CPixelMetric x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PixelMetric -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

ePM_ButtonMargin :: PixelMetric
ePM_ButtonMargin
  = iePixelMetric $ 0
ePM_ButtonDefaultIndicator :: PixelMetric
ePM_ButtonDefaultIndicator
  = iePixelMetric $ 1
ePM_MenuButtonIndicator :: PixelMetric
ePM_MenuButtonIndicator
  = iePixelMetric $ 2
ePM_ButtonShiftHorizontal :: PixelMetric
ePM_ButtonShiftHorizontal
  = iePixelMetric $ 3
ePM_ButtonShiftVertical :: PixelMetric
ePM_ButtonShiftVertical
  = iePixelMetric $ 4
ePM_DefaultFrameWidth :: PixelMetric
ePM_DefaultFrameWidth
  = iePixelMetric $ 5
ePM_SpinBoxFrameWidth :: PixelMetric
ePM_SpinBoxFrameWidth
  = iePixelMetric $ 6
ePM_ComboBoxFrameWidth :: PixelMetric
ePM_ComboBoxFrameWidth
  = iePixelMetric $ 7
ePM_MaximumDragDistance :: PixelMetric
ePM_MaximumDragDistance
  = iePixelMetric $ 8
ePM_ScrollBarExtent :: PixelMetric
ePM_ScrollBarExtent
  = iePixelMetric $ 9
ePM_ScrollBarSliderMin :: PixelMetric
ePM_ScrollBarSliderMin
  = iePixelMetric $ 10
ePM_SliderThickness :: PixelMetric
ePM_SliderThickness
  = iePixelMetric $ 11
ePM_SliderControlThickness :: PixelMetric
ePM_SliderControlThickness
  = iePixelMetric $ 12
ePM_SliderLength :: PixelMetric
ePM_SliderLength
  = iePixelMetric $ 13
ePM_SliderTickmarkOffset :: PixelMetric
ePM_SliderTickmarkOffset
  = iePixelMetric $ 14
ePM_SliderSpaceAvailable :: PixelMetric
ePM_SliderSpaceAvailable
  = iePixelMetric $ 15
ePM_DockWidgetSeparatorExtent :: PixelMetric
ePM_DockWidgetSeparatorExtent
  = iePixelMetric $ 16
ePM_DockWidgetHandleExtent :: PixelMetric
ePM_DockWidgetHandleExtent
  = iePixelMetric $ 17
ePM_DockWidgetFrameWidth :: PixelMetric
ePM_DockWidgetFrameWidth
  = iePixelMetric $ 18
ePM_TabBarTabOverlap :: PixelMetric
ePM_TabBarTabOverlap
  = iePixelMetric $ 19
ePM_TabBarTabHSpace :: PixelMetric
ePM_TabBarTabHSpace
  = iePixelMetric $ 20
ePM_TabBarTabVSpace :: PixelMetric
ePM_TabBarTabVSpace
  = iePixelMetric $ 21
ePM_TabBarBaseHeight :: PixelMetric
ePM_TabBarBaseHeight
  = iePixelMetric $ 22
ePM_TabBarBaseOverlap :: PixelMetric
ePM_TabBarBaseOverlap
  = iePixelMetric $ 23
ePM_ProgressBarChunkWidth :: PixelMetric
ePM_ProgressBarChunkWidth
  = iePixelMetric $ 24
ePM_SplitterWidth :: PixelMetric
ePM_SplitterWidth
  = iePixelMetric $ 25
ePM_TitleBarHeight :: PixelMetric
ePM_TitleBarHeight
  = iePixelMetric $ 26
ePM_MenuScrollerHeight :: PixelMetric
ePM_MenuScrollerHeight
  = iePixelMetric $ 27
ePM_MenuHMargin :: PixelMetric
ePM_MenuHMargin
  = iePixelMetric $ 28
ePM_MenuVMargin :: PixelMetric
ePM_MenuVMargin
  = iePixelMetric $ 29
ePM_MenuPanelWidth :: PixelMetric
ePM_MenuPanelWidth
  = iePixelMetric $ 30
ePM_MenuTearoffHeight :: PixelMetric
ePM_MenuTearoffHeight
  = iePixelMetric $ 31
ePM_MenuDesktopFrameWidth :: PixelMetric
ePM_MenuDesktopFrameWidth
  = iePixelMetric $ 32
ePM_MenuBarPanelWidth :: PixelMetric
ePM_MenuBarPanelWidth
  = iePixelMetric $ 33
ePM_MenuBarItemSpacing :: PixelMetric
ePM_MenuBarItemSpacing
  = iePixelMetric $ 34
ePM_MenuBarVMargin :: PixelMetric
ePM_MenuBarVMargin
  = iePixelMetric $ 35
ePM_MenuBarHMargin :: PixelMetric
ePM_MenuBarHMargin
  = iePixelMetric $ 36
ePM_IndicatorWidth :: PixelMetric
ePM_IndicatorWidth
  = iePixelMetric $ 37
ePM_IndicatorHeight :: PixelMetric
ePM_IndicatorHeight
  = iePixelMetric $ 38
ePM_ExclusiveIndicatorWidth :: PixelMetric
ePM_ExclusiveIndicatorWidth
  = iePixelMetric $ 39
ePM_ExclusiveIndicatorHeight :: PixelMetric
ePM_ExclusiveIndicatorHeight
  = iePixelMetric $ 40
ePM_CheckListButtonSize :: PixelMetric
ePM_CheckListButtonSize
  = iePixelMetric $ 41
ePM_CheckListControllerSize :: PixelMetric
ePM_CheckListControllerSize
  = iePixelMetric $ 42
ePM_DialogButtonsSeparator :: PixelMetric
ePM_DialogButtonsSeparator
  = iePixelMetric $ 43
ePM_DialogButtonsButtonWidth :: PixelMetric
ePM_DialogButtonsButtonWidth
  = iePixelMetric $ 44
ePM_DialogButtonsButtonHeight :: PixelMetric
ePM_DialogButtonsButtonHeight
  = iePixelMetric $ 45
ePM_MdiSubWindowFrameWidth :: PixelMetric
ePM_MdiSubWindowFrameWidth
  = iePixelMetric $ 46
ePM_MDIFrameWidth :: PixelMetric
ePM_MDIFrameWidth
  = iePixelMetric $ 46
ePM_MdiSubWindowMinimizedWidth :: PixelMetric
ePM_MdiSubWindowMinimizedWidth
  = iePixelMetric $ 47
ePM_MDIMinimizedWidth :: PixelMetric
ePM_MDIMinimizedWidth
  = iePixelMetric $ 47
ePM_HeaderMargin :: PixelMetric
ePM_HeaderMargin
  = iePixelMetric $ 48
ePM_HeaderMarkSize :: PixelMetric
ePM_HeaderMarkSize
  = iePixelMetric $ 49
ePM_HeaderGripMargin :: PixelMetric
ePM_HeaderGripMargin
  = iePixelMetric $ 50
ePM_TabBarTabShiftHorizontal :: PixelMetric
ePM_TabBarTabShiftHorizontal
  = iePixelMetric $ 51
ePM_TabBarTabShiftVertical :: PixelMetric
ePM_TabBarTabShiftVertical
  = iePixelMetric $ 52
ePM_TabBarScrollButtonWidth :: PixelMetric
ePM_TabBarScrollButtonWidth
  = iePixelMetric $ 53
ePM_ToolBarFrameWidth :: PixelMetric
ePM_ToolBarFrameWidth
  = iePixelMetric $ 54
ePM_ToolBarHandleExtent :: PixelMetric
ePM_ToolBarHandleExtent
  = iePixelMetric $ 55
ePM_ToolBarItemSpacing :: PixelMetric
ePM_ToolBarItemSpacing
  = iePixelMetric $ 56
ePM_ToolBarItemMargin :: PixelMetric
ePM_ToolBarItemMargin
  = iePixelMetric $ 57
ePM_ToolBarSeparatorExtent :: PixelMetric
ePM_ToolBarSeparatorExtent
  = iePixelMetric $ 58
ePM_ToolBarExtensionExtent :: PixelMetric
ePM_ToolBarExtensionExtent
  = iePixelMetric $ 59
ePM_SpinBoxSliderHeight :: PixelMetric
ePM_SpinBoxSliderHeight
  = iePixelMetric $ 60
ePM_DefaultTopLevelMargin :: PixelMetric
ePM_DefaultTopLevelMargin
  = iePixelMetric $ 61
ePM_DefaultChildMargin :: PixelMetric
ePM_DefaultChildMargin
  = iePixelMetric $ 62
ePM_DefaultLayoutSpacing :: PixelMetric
ePM_DefaultLayoutSpacing
  = iePixelMetric $ 63
ePM_ToolBarIconSize :: PixelMetric
ePM_ToolBarIconSize
  = iePixelMetric $ 64
ePM_ListViewIconSize :: PixelMetric
ePM_ListViewIconSize
  = iePixelMetric $ 65
ePM_IconViewIconSize :: PixelMetric
ePM_IconViewIconSize
  = iePixelMetric $ 66
ePM_SmallIconSize :: PixelMetric
ePM_SmallIconSize
  = iePixelMetric $ 67
ePM_LargeIconSize :: PixelMetric
ePM_LargeIconSize
  = iePixelMetric $ 68
ePM_FocusFrameVMargin :: PixelMetric
ePM_FocusFrameVMargin
  = iePixelMetric $ 69
ePM_FocusFrameHMargin :: PixelMetric
ePM_FocusFrameHMargin
  = iePixelMetric $ 70
ePM_ToolTipLabelFrameWidth :: PixelMetric
ePM_ToolTipLabelFrameWidth
  = iePixelMetric $ 71
ePM_CheckBoxLabelSpacing :: PixelMetric
ePM_CheckBoxLabelSpacing
  = iePixelMetric $ 72
ePM_TabBarIconSize :: PixelMetric
ePM_TabBarIconSize
  = iePixelMetric $ 73
ePM_SizeGripSize :: PixelMetric
ePM_SizeGripSize
  = iePixelMetric $ 74
ePM_DockWidgetTitleMargin :: PixelMetric
ePM_DockWidgetTitleMargin
  = iePixelMetric $ 75
ePM_MessageBoxIconSize :: PixelMetric
ePM_MessageBoxIconSize
  = iePixelMetric $ 76
ePM_ButtonIconSize :: PixelMetric
ePM_ButtonIconSize
  = iePixelMetric $ 77
ePM_DockWidgetTitleBarButtonMargin :: PixelMetric
ePM_DockWidgetTitleBarButtonMargin
  = iePixelMetric $ 78
ePM_RadioButtonLabelSpacing :: PixelMetric
ePM_RadioButtonLabelSpacing
  = iePixelMetric $ 79
ePM_LayoutLeftMargin :: PixelMetric
ePM_LayoutLeftMargin
  = iePixelMetric $ 80
ePM_LayoutTopMargin :: PixelMetric
ePM_LayoutTopMargin
  = iePixelMetric $ 81
ePM_LayoutRightMargin :: PixelMetric
ePM_LayoutRightMargin
  = iePixelMetric $ 82
ePM_LayoutBottomMargin :: PixelMetric
ePM_LayoutBottomMargin
  = iePixelMetric $ 83
ePM_LayoutHorizontalSpacing :: PixelMetric
ePM_LayoutHorizontalSpacing
  = iePixelMetric $ 84
ePM_LayoutVerticalSpacing :: PixelMetric
ePM_LayoutVerticalSpacing
  = iePixelMetric $ 85
ePM_CustomBase :: PixelMetric
ePM_CustomBase
  = iePixelMetric $ -268435456

data CContentsType a = CContentsType a
type ContentsType = QEnum(CContentsType Int)

ieContentsType :: Int -> ContentsType
ieContentsType x = QEnum (CContentsType x)

instance QEnumC (CContentsType Int) where
 qEnum_toInt (QEnum (CContentsType x)) = x
 qEnum_fromInt x = QEnum (CContentsType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ContentsType -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eCT_PushButton :: ContentsType
eCT_PushButton
  = ieContentsType $ 0
eCT_CheckBox :: ContentsType
eCT_CheckBox
  = ieContentsType $ 1
eCT_RadioButton :: ContentsType
eCT_RadioButton
  = ieContentsType $ 2
eCT_ToolButton :: ContentsType
eCT_ToolButton
  = ieContentsType $ 3
eCT_ComboBox :: ContentsType
eCT_ComboBox
  = ieContentsType $ 4
eCT_Splitter :: ContentsType
eCT_Splitter
  = ieContentsType $ 5
eCT_Q3DockWindow :: ContentsType
eCT_Q3DockWindow
  = ieContentsType $ 6
eCT_ProgressBar :: ContentsType
eCT_ProgressBar
  = ieContentsType $ 7
eCT_MenuItem :: ContentsType
eCT_MenuItem
  = ieContentsType $ 8
eCT_MenuBarItem :: ContentsType
eCT_MenuBarItem
  = ieContentsType $ 9
eCT_MenuBar :: ContentsType
eCT_MenuBar
  = ieContentsType $ 10
eCT_Menu :: ContentsType
eCT_Menu
  = ieContentsType $ 11
eCT_TabBarTab :: ContentsType
eCT_TabBarTab
  = ieContentsType $ 12
eCT_Slider :: ContentsType
eCT_Slider
  = ieContentsType $ 13
eCT_ScrollBar :: ContentsType
eCT_ScrollBar
  = ieContentsType $ 14
eCT_Q3Header :: ContentsType
eCT_Q3Header
  = ieContentsType $ 15
eCT_LineEdit :: ContentsType
eCT_LineEdit
  = ieContentsType $ 16
eCT_SpinBox :: ContentsType
eCT_SpinBox
  = ieContentsType $ 17
eCT_SizeGrip :: ContentsType
eCT_SizeGrip
  = ieContentsType $ 18
eCT_TabWidget :: ContentsType
eCT_TabWidget
  = ieContentsType $ 19
eCT_DialogButtons :: ContentsType
eCT_DialogButtons
  = ieContentsType $ 20
eCT_HeaderSection :: ContentsType
eCT_HeaderSection
  = ieContentsType $ 21
eCT_GroupBox :: ContentsType
eCT_GroupBox
  = ieContentsType $ 22
eCT_MdiControls :: ContentsType
eCT_MdiControls
  = ieContentsType $ 23
eCT_CustomBase :: ContentsType
eCT_CustomBase
  = ieContentsType $ -268435456

data CQStyleStyleHint a = CQStyleStyleHint a
type QStyleStyleHint = QEnum(CQStyleStyleHint Int)

ieQStyleStyleHint :: Int -> QStyleStyleHint
ieQStyleStyleHint x = QEnum (CQStyleStyleHint x)

instance QEnumC (CQStyleStyleHint Int) where
 qEnum_toInt (QEnum (CQStyleStyleHint x)) = x
 qEnum_fromInt x = QEnum (CQStyleStyleHint x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QStyleStyleHint -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eSH_EtchDisabledText :: QStyleStyleHint
eSH_EtchDisabledText
  = ieQStyleStyleHint $ 0
eSH_DitherDisabledText :: QStyleStyleHint
eSH_DitherDisabledText
  = ieQStyleStyleHint $ 1
eSH_ScrollBar_MiddleClickAbsolutePosition :: QStyleStyleHint
eSH_ScrollBar_MiddleClickAbsolutePosition
  = ieQStyleStyleHint $ 2
eSH_ScrollBar_ScrollWhenPointerLeavesControl :: QStyleStyleHint
eSH_ScrollBar_ScrollWhenPointerLeavesControl
  = ieQStyleStyleHint $ 3
eSH_TabBar_SelectMouseType :: QStyleStyleHint
eSH_TabBar_SelectMouseType
  = ieQStyleStyleHint $ 4
eSH_TabBar_Alignment :: QStyleStyleHint
eSH_TabBar_Alignment
  = ieQStyleStyleHint $ 5
eSH_Header_ArrowAlignment :: QStyleStyleHint
eSH_Header_ArrowAlignment
  = ieQStyleStyleHint $ 6
eSH_Slider_SnapToValue :: QStyleStyleHint
eSH_Slider_SnapToValue
  = ieQStyleStyleHint $ 7
eSH_Slider_SloppyKeyEvents :: QStyleStyleHint
eSH_Slider_SloppyKeyEvents
  = ieQStyleStyleHint $ 8
eSH_ProgressDialog_CenterCancelButton :: QStyleStyleHint
eSH_ProgressDialog_CenterCancelButton
  = ieQStyleStyleHint $ 9
eSH_ProgressDialog_TextLabelAlignment :: QStyleStyleHint
eSH_ProgressDialog_TextLabelAlignment
  = ieQStyleStyleHint $ 10
eSH_PrintDialog_RightAlignButtons :: QStyleStyleHint
eSH_PrintDialog_RightAlignButtons
  = ieQStyleStyleHint $ 11
eSH_MainWindow_SpaceBelowMenuBar :: QStyleStyleHint
eSH_MainWindow_SpaceBelowMenuBar
  = ieQStyleStyleHint $ 12
eSH_FontDialog_SelectAssociatedText :: QStyleStyleHint
eSH_FontDialog_SelectAssociatedText
  = ieQStyleStyleHint $ 13
eSH_Menu_AllowActiveAndDisabled :: QStyleStyleHint
eSH_Menu_AllowActiveAndDisabled
  = ieQStyleStyleHint $ 14
eSH_Menu_SpaceActivatesItem :: QStyleStyleHint
eSH_Menu_SpaceActivatesItem
  = ieQStyleStyleHint $ 15
eSH_Menu_SubMenuPopupDelay :: QStyleStyleHint
eSH_Menu_SubMenuPopupDelay
  = ieQStyleStyleHint $ 16
eSH_ScrollView_FrameOnlyAroundContents :: QStyleStyleHint
eSH_ScrollView_FrameOnlyAroundContents
  = ieQStyleStyleHint $ 17
eSH_MenuBar_AltKeyNavigation :: QStyleStyleHint
eSH_MenuBar_AltKeyNavigation
  = ieQStyleStyleHint $ 18
eSH_ComboBox_ListMouseTracking :: QStyleStyleHint
eSH_ComboBox_ListMouseTracking
  = ieQStyleStyleHint $ 19
eSH_Menu_MouseTracking :: QStyleStyleHint
eSH_Menu_MouseTracking
  = ieQStyleStyleHint $ 20
eSH_MenuBar_MouseTracking :: QStyleStyleHint
eSH_MenuBar_MouseTracking
  = ieQStyleStyleHint $ 21
eSH_ItemView_ChangeHighlightOnFocus :: QStyleStyleHint
eSH_ItemView_ChangeHighlightOnFocus
  = ieQStyleStyleHint $ 22
eSH_Widget_ShareActivation :: QStyleStyleHint
eSH_Widget_ShareActivation
  = ieQStyleStyleHint $ 23
eSH_Workspace_FillSpaceOnMaximize :: QStyleStyleHint
eSH_Workspace_FillSpaceOnMaximize
  = ieQStyleStyleHint $ 24
eSH_ComboBox_Popup :: QStyleStyleHint
eSH_ComboBox_Popup
  = ieQStyleStyleHint $ 25
eSH_TitleBar_NoBorder :: QStyleStyleHint
eSH_TitleBar_NoBorder
  = ieQStyleStyleHint $ 26
eSH_Slider_StopMouseOverSlider :: QStyleStyleHint
eSH_Slider_StopMouseOverSlider
  = ieQStyleStyleHint $ 27
eSH_ScrollBar_StopMouseOverSlider :: QStyleStyleHint
eSH_ScrollBar_StopMouseOverSlider
  = ieQStyleStyleHint $ 27
eSH_BlinkCursorWhenTextSelected :: QStyleStyleHint
eSH_BlinkCursorWhenTextSelected
  = ieQStyleStyleHint $ 28
eSH_RichText_FullWidthSelection :: QStyleStyleHint
eSH_RichText_FullWidthSelection
  = ieQStyleStyleHint $ 29
eSH_Menu_Scrollable :: QStyleStyleHint
eSH_Menu_Scrollable
  = ieQStyleStyleHint $ 30
eSH_GroupBox_TextLabelVerticalAlignment :: QStyleStyleHint
eSH_GroupBox_TextLabelVerticalAlignment
  = ieQStyleStyleHint $ 31
eSH_GroupBox_TextLabelColor :: QStyleStyleHint
eSH_GroupBox_TextLabelColor
  = ieQStyleStyleHint $ 32
eSH_Menu_SloppySubMenus :: QStyleStyleHint
eSH_Menu_SloppySubMenus
  = ieQStyleStyleHint $ 33
eSH_Table_GridLineColor :: QStyleStyleHint
eSH_Table_GridLineColor
  = ieQStyleStyleHint $ 34
eSH_LineEdit_PasswordCharacter :: QStyleStyleHint
eSH_LineEdit_PasswordCharacter
  = ieQStyleStyleHint $ 35
eSH_DialogButtons_DefaultButton :: QStyleStyleHint
eSH_DialogButtons_DefaultButton
  = ieQStyleStyleHint $ 36
eSH_ToolBox_SelectedPageTitleBold :: QStyleStyleHint
eSH_ToolBox_SelectedPageTitleBold
  = ieQStyleStyleHint $ 37
eSH_TabBar_PreferNoArrows :: QStyleStyleHint
eSH_TabBar_PreferNoArrows
  = ieQStyleStyleHint $ 38
eSH_ScrollBar_LeftClickAbsolutePosition :: QStyleStyleHint
eSH_ScrollBar_LeftClickAbsolutePosition
  = ieQStyleStyleHint $ 39
eSH_Q3ListViewExpand_SelectMouseType :: QStyleStyleHint
eSH_Q3ListViewExpand_SelectMouseType
  = ieQStyleStyleHint $ 40
eSH_UnderlineShortcut :: QStyleStyleHint
eSH_UnderlineShortcut
  = ieQStyleStyleHint $ 41
eSH_SpinBox_AnimateButton :: QStyleStyleHint
eSH_SpinBox_AnimateButton
  = ieQStyleStyleHint $ 42
eSH_SpinBox_KeyPressAutoRepeatRate :: QStyleStyleHint
eSH_SpinBox_KeyPressAutoRepeatRate
  = ieQStyleStyleHint $ 43
eSH_SpinBox_ClickAutoRepeatRate :: QStyleStyleHint
eSH_SpinBox_ClickAutoRepeatRate
  = ieQStyleStyleHint $ 44
eSH_Menu_FillScreenWithScroll :: QStyleStyleHint
eSH_Menu_FillScreenWithScroll
  = ieQStyleStyleHint $ 45
eSH_ToolTipLabel_Opacity :: QStyleStyleHint
eSH_ToolTipLabel_Opacity
  = ieQStyleStyleHint $ 46
eSH_DrawMenuBarSeparator :: QStyleStyleHint
eSH_DrawMenuBarSeparator
  = ieQStyleStyleHint $ 47
eSH_TitleBar_ModifyNotification :: QStyleStyleHint
eSH_TitleBar_ModifyNotification
  = ieQStyleStyleHint $ 48
eSH_Button_FocusPolicy :: QStyleStyleHint
eSH_Button_FocusPolicy
  = ieQStyleStyleHint $ 49
eSH_MenuBar_DismissOnSecondClick :: QStyleStyleHint
eSH_MenuBar_DismissOnSecondClick
  = ieQStyleStyleHint $ 50
eSH_MessageBox_UseBorderForButtonSpacing :: QStyleStyleHint
eSH_MessageBox_UseBorderForButtonSpacing
  = ieQStyleStyleHint $ 51
eSH_TitleBar_AutoRaise :: QStyleStyleHint
eSH_TitleBar_AutoRaise
  = ieQStyleStyleHint $ 52
eSH_ToolButton_PopupDelay :: QStyleStyleHint
eSH_ToolButton_PopupDelay
  = ieQStyleStyleHint $ 53
eSH_FocusFrame_Mask :: QStyleStyleHint
eSH_FocusFrame_Mask
  = ieQStyleStyleHint $ 54
eSH_RubberBand_Mask :: QStyleStyleHint
eSH_RubberBand_Mask
  = ieQStyleStyleHint $ 55
eSH_WindowFrame_Mask :: QStyleStyleHint
eSH_WindowFrame_Mask
  = ieQStyleStyleHint $ 56
eSH_SpinControls_DisableOnBounds :: QStyleStyleHint
eSH_SpinControls_DisableOnBounds
  = ieQStyleStyleHint $ 57
eSH_Dial_BackgroundRole :: QStyleStyleHint
eSH_Dial_BackgroundRole
  = ieQStyleStyleHint $ 58
eSH_ComboBox_LayoutDirection :: QStyleStyleHint
eSH_ComboBox_LayoutDirection
  = ieQStyleStyleHint $ 59
eSH_ItemView_EllipsisLocation :: QStyleStyleHint
eSH_ItemView_EllipsisLocation
  = ieQStyleStyleHint $ 60
eSH_ItemView_ShowDecorationSelected :: QStyleStyleHint
eSH_ItemView_ShowDecorationSelected
  = ieQStyleStyleHint $ 61
eSH_ItemView_ActivateItemOnSingleClick :: QStyleStyleHint
eSH_ItemView_ActivateItemOnSingleClick
  = ieQStyleStyleHint $ 62
eSH_ScrollBar_ContextMenu :: QStyleStyleHint
eSH_ScrollBar_ContextMenu
  = ieQStyleStyleHint $ 63
eSH_ScrollBar_RollBetweenButtons :: QStyleStyleHint
eSH_ScrollBar_RollBetweenButtons
  = ieQStyleStyleHint $ 64
eSH_Slider_AbsoluteSetButtons :: QStyleStyleHint
eSH_Slider_AbsoluteSetButtons
  = ieQStyleStyleHint $ 65
eSH_Slider_PageSetButtons :: QStyleStyleHint
eSH_Slider_PageSetButtons
  = ieQStyleStyleHint $ 66
eSH_Menu_KeyboardSearch :: QStyleStyleHint
eSH_Menu_KeyboardSearch
  = ieQStyleStyleHint $ 67
eSH_TabBar_ElideMode :: QStyleStyleHint
eSH_TabBar_ElideMode
  = ieQStyleStyleHint $ 68
eSH_DialogButtonLayout :: QStyleStyleHint
eSH_DialogButtonLayout
  = ieQStyleStyleHint $ 69
eSH_ComboBox_PopupFrameStyle :: QStyleStyleHint
eSH_ComboBox_PopupFrameStyle
  = ieQStyleStyleHint $ 70
eSH_MessageBox_TextInteractionFlags :: QStyleStyleHint
eSH_MessageBox_TextInteractionFlags
  = ieQStyleStyleHint $ 71
eSH_DialogButtonBox_ButtonsHaveIcons :: QStyleStyleHint
eSH_DialogButtonBox_ButtonsHaveIcons
  = ieQStyleStyleHint $ 72
eSH_SpellCheckUnderlineStyle :: QStyleStyleHint
eSH_SpellCheckUnderlineStyle
  = ieQStyleStyleHint $ 73
eSH_MessageBox_CenterButtons :: QStyleStyleHint
eSH_MessageBox_CenterButtons
  = ieQStyleStyleHint $ 74
eSH_Menu_SelectionWrap :: QStyleStyleHint
eSH_Menu_SelectionWrap
  = ieQStyleStyleHint $ 75
eSH_ItemView_MovementWithoutUpdatingSelection :: QStyleStyleHint
eSH_ItemView_MovementWithoutUpdatingSelection
  = ieQStyleStyleHint $ 76
eSH_ToolTip_Mask :: QStyleStyleHint
eSH_ToolTip_Mask
  = ieQStyleStyleHint $ 77
eSH_FocusFrame_AboveWidget :: QStyleStyleHint
eSH_FocusFrame_AboveWidget
  = ieQStyleStyleHint $ 78
eSH_TextControl_FocusIndicatorTextCharFormat :: QStyleStyleHint
eSH_TextControl_FocusIndicatorTextCharFormat
  = ieQStyleStyleHint $ 79
eSH_WizardStyle :: QStyleStyleHint
eSH_WizardStyle
  = ieQStyleStyleHint $ 80
eSH_ItemView_ArrowKeysNavigateIntoChildren :: QStyleStyleHint
eSH_ItemView_ArrowKeysNavigateIntoChildren
  = ieQStyleStyleHint $ 81
eSH_CustomBase :: QStyleStyleHint
eSH_CustomBase
  = ieQStyleStyleHint $ -268435456

data CStandardPixmap a = CStandardPixmap a
type StandardPixmap = QEnum(CStandardPixmap Int)

ieStandardPixmap :: Int -> StandardPixmap
ieStandardPixmap x = QEnum (CStandardPixmap x)

instance QEnumC (CStandardPixmap Int) where
 qEnum_toInt (QEnum (CStandardPixmap x)) = x
 qEnum_fromInt x = QEnum (CStandardPixmap x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StandardPixmap -> IO ()) where
 connectSlot _qsig_obj _qsig_nam _qslt_obj _qslt_nam _handler
  = do
    funptr  <- wrapSlotHandler_int slotHandlerWrapper_int
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int cobj_sig cstr_sig cobj_slt cstr_slt (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj (qEnum_fromInt hint)
           return ()

eSP_TitleBarMenuButton :: StandardPixmap
eSP_TitleBarMenuButton
  = ieStandardPixmap $ 0
eSP_TitleBarMinButton :: StandardPixmap
eSP_TitleBarMinButton
  = ieStandardPixmap $ 1
eSP_TitleBarMaxButton :: StandardPixmap
eSP_TitleBarMaxButton
  = ieStandardPixmap $ 2
eSP_TitleBarCloseButton :: StandardPixmap
eSP_TitleBarCloseButton
  = ieStandardPixmap $ 3
eSP_TitleBarNormalButton :: StandardPixmap
eSP_TitleBarNormalButton
  = ieStandardPixmap $ 4
eSP_TitleBarShadeButton :: StandardPixmap
eSP_TitleBarShadeButton
  = ieStandardPixmap $ 5
eSP_TitleBarUnshadeButton :: StandardPixmap
eSP_TitleBarUnshadeButton
  = ieStandardPixmap $ 6
eSP_TitleBarContextHelpButton :: StandardPixmap
eSP_TitleBarContextHelpButton
  = ieStandardPixmap $ 7
eSP_DockWidgetCloseButton :: StandardPixmap
eSP_DockWidgetCloseButton
  = ieStandardPixmap $ 8
eSP_MessageBoxInformation :: StandardPixmap
eSP_MessageBoxInformation
  = ieStandardPixmap $ 9
eSP_MessageBoxWarning :: StandardPixmap
eSP_MessageBoxWarning
  = ieStandardPixmap $ 10
eSP_MessageBoxCritical :: StandardPixmap
eSP_MessageBoxCritical
  = ieStandardPixmap $ 11
eSP_MessageBoxQuestion :: StandardPixmap
eSP_MessageBoxQuestion
  = ieStandardPixmap $ 12
eSP_DesktopIcon :: StandardPixmap
eSP_DesktopIcon
  = ieStandardPixmap $ 13
eSP_TrashIcon :: StandardPixmap
eSP_TrashIcon
  = ieStandardPixmap $ 14
eSP_ComputerIcon :: StandardPixmap
eSP_ComputerIcon
  = ieStandardPixmap $ 15
eSP_DriveFDIcon :: StandardPixmap
eSP_DriveFDIcon
  = ieStandardPixmap $ 16
eSP_DriveHDIcon :: StandardPixmap
eSP_DriveHDIcon
  = ieStandardPixmap $ 17
eSP_DriveCDIcon :: StandardPixmap
eSP_DriveCDIcon
  = ieStandardPixmap $ 18
eSP_DriveDVDIcon :: StandardPixmap
eSP_DriveDVDIcon
  = ieStandardPixmap $ 19
eSP_DriveNetIcon :: StandardPixmap
eSP_DriveNetIcon
  = ieStandardPixmap $ 20
eSP_DirOpenIcon :: StandardPixmap
eSP_DirOpenIcon
  = ieStandardPixmap $ 21
eSP_DirClosedIcon :: StandardPixmap
eSP_DirClosedIcon
  = ieStandardPixmap $ 22
eSP_DirLinkIcon :: StandardPixmap
eSP_DirLinkIcon
  = ieStandardPixmap $ 23
eSP_FileIcon :: StandardPixmap
eSP_FileIcon
  = ieStandardPixmap $ 24
eSP_FileLinkIcon :: StandardPixmap
eSP_FileLinkIcon
  = ieStandardPixmap $ 25
eSP_ToolBarHorizontalExtensionButton :: StandardPixmap
eSP_ToolBarHorizontalExtensionButton
  = ieStandardPixmap $ 26
eSP_ToolBarVerticalExtensionButton :: StandardPixmap
eSP_ToolBarVerticalExtensionButton
  = ieStandardPixmap $ 27
eSP_FileDialogStart :: StandardPixmap
eSP_FileDialogStart
  = ieStandardPixmap $ 28
eSP_FileDialogEnd :: StandardPixmap
eSP_FileDialogEnd
  = ieStandardPixmap $ 29
eSP_FileDialogToParent :: StandardPixmap
eSP_FileDialogToParent
  = ieStandardPixmap $ 30
eSP_FileDialogNewFolder :: StandardPixmap
eSP_FileDialogNewFolder
  = ieStandardPixmap $ 31
eSP_FileDialogDetailedView :: StandardPixmap
eSP_FileDialogDetailedView
  = ieStandardPixmap $ 32
eSP_FileDialogInfoView :: StandardPixmap
eSP_FileDialogInfoView
  = ieStandardPixmap $ 33
eSP_FileDialogContentsView :: StandardPixmap
eSP_FileDialogContentsView
  = ieStandardPixmap $ 34
eSP_FileDialogListView :: StandardPixmap
eSP_FileDialogListView
  = ieStandardPixmap $ 35
eSP_FileDialogBack :: StandardPixmap
eSP_FileDialogBack
  = ieStandardPixmap $ 36
eSP_DirIcon :: StandardPixmap
eSP_DirIcon
  = ieStandardPixmap $ 37
eSP_DialogOkButton :: StandardPixmap
eSP_DialogOkButton
  = ieStandardPixmap $ 38
eSP_DialogCancelButton :: StandardPixmap
eSP_DialogCancelButton
  = ieStandardPixmap $ 39
eSP_DialogHelpButton :: StandardPixmap
eSP_DialogHelpButton
  = ieStandardPixmap $ 40
eSP_DialogOpenButton :: StandardPixmap
eSP_DialogOpenButton
  = ieStandardPixmap $ 41
eSP_DialogSaveButton :: StandardPixmap
eSP_DialogSaveButton
  = ieStandardPixmap $ 42
eSP_DialogCloseButton :: StandardPixmap
eSP_DialogCloseButton
  = ieStandardPixmap $ 43
eSP_DialogApplyButton :: StandardPixmap
eSP_DialogApplyButton
  = ieStandardPixmap $ 44
eSP_DialogResetButton :: StandardPixmap
eSP_DialogResetButton
  = ieStandardPixmap $ 45
eSP_DialogDiscardButton :: StandardPixmap
eSP_DialogDiscardButton
  = ieStandardPixmap $ 46
eSP_DialogYesButton :: StandardPixmap
eSP_DialogYesButton
  = ieStandardPixmap $ 47
eSP_DialogNoButton :: StandardPixmap
eSP_DialogNoButton
  = ieStandardPixmap $ 48
eSP_ArrowUp :: StandardPixmap
eSP_ArrowUp
  = ieStandardPixmap $ 49
eSP_ArrowDown :: StandardPixmap
eSP_ArrowDown
  = ieStandardPixmap $ 50
eSP_ArrowLeft :: StandardPixmap
eSP_ArrowLeft
  = ieStandardPixmap $ 51
eSP_ArrowRight :: StandardPixmap
eSP_ArrowRight
  = ieStandardPixmap $ 52
eSP_ArrowBack :: StandardPixmap
eSP_ArrowBack
  = ieStandardPixmap $ 53
eSP_ArrowForward :: StandardPixmap
eSP_ArrowForward
  = ieStandardPixmap $ 54
eSP_DirHomeIcon :: StandardPixmap
eSP_DirHomeIcon
  = ieStandardPixmap $ 55
eSP_CommandLink :: StandardPixmap
eSP_CommandLink
  = ieStandardPixmap $ 56
eSP_VistaShield :: StandardPixmap
eSP_VistaShield
  = ieStandardPixmap $ 57
eSP_CustomBase :: StandardPixmap
eSP_CustomBase
  = ieStandardPixmap $ -268435456

