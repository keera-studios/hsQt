{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Qt.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.Qt (
 Qcsm(..), connectSignalM
 ,GlobalColor, ecolor0, ecolor1, eblack, ewhite, edarkGray, egray, elightGray, ered, egreen, eblue, ecyan, emagenta, eyellow, edarkRed, edarkGreen, edarkBlue, edarkCyan, edarkMagenta, edarkYellow, etransparent
 , KeyboardModifier, KeyboardModifiers, eNoModifier, fNoModifier, eShiftModifier, fShiftModifier, eControlModifier, fControlModifier, eAltModifier, fAltModifier, eMetaModifier, fMetaModifier, eKeypadModifier, fKeypadModifier, eGroupSwitchModifier, fGroupSwitchModifier, eKeyboardModifierMask, fKeyboardModifierMask
 , Modifier, eMETA, eSHIFT, eCTRL, eALT, eMODIFIER_MASK, eUNICODE_ACCEL
 , MouseButton, MouseButtons, eLeftButton, fLeftButton, eRightButton, fRightButton, eMidButton, fMidButton, eXButton1, fXButton1, eXButton2, fXButton2, eMouseButtonMask, fMouseButtonMask
 , QtOrientation, Orientations, eHorizontal, fHorizontal, fVertical
 , FocusPolicy, eNoFocus, eTabFocus, eClickFocus, eStrongFocus, eWheelFocus
 , SortOrder, eAscendingOrder, eDescendingOrder
 , AlignmentFlag, Alignment, fAlignLeft, eAlignLeading, fAlignLeading, fAlignRight, eAlignTrailing, fAlignTrailing, eAlignHCenter, fAlignHCenter, eAlignJustify, fAlignJustify, eAlignAbsolute, fAlignAbsolute, eAlignHorizontal_Mask, fAlignHorizontal_Mask, fAlignTop, fAlignBottom, eAlignVCenter, fAlignVCenter, eAlignVertical_Mask, fAlignVertical_Mask, fAlignCenter
 , TextFlag, eTextSingleLine, eTextDontClip, eTextExpandTabs, eTextShowMnemonic, eTextWordWrap, eTextWrapAnywhere, eTextDontPrint, eTextIncludeTrailingSpaces, eTextHideMnemonic, eTextJustificationForced
 , TextElideMode, eElideLeft, eElideRight, eElideMiddle, eElideNone
 , WindowType, WindowFlags, eWidget, fWidget, fWindow, eDialog, fDialog, eSheet, fSheet, eDrawer, fDrawer, ePopup, fPopup, eTool, fTool, fToolTip, eSplashScreen, fSplashScreen, eDesktop, fDesktop, eSubWindow, fSubWindow, eWindowType_Mask, fWindowType_Mask, eMSWindowsFixedSizeDialogHint, fMSWindowsFixedSizeDialogHint, eMSWindowsOwnDC, fMSWindowsOwnDC, eX11BypassWindowManagerHint, fX11BypassWindowManagerHint, eFramelessWindowHint, fFramelessWindowHint, eWindowTitleHint, fWindowTitleHint, eWindowSystemMenuHint, fWindowSystemMenuHint, eWindowMinimizeButtonHint, fWindowMinimizeButtonHint, eWindowMaximizeButtonHint, fWindowMaximizeButtonHint, eWindowMinMaxButtonsHint, fWindowMinMaxButtonsHint, eWindowContextHelpButtonHint, fWindowContextHelpButtonHint, eWindowShadeButtonHint, fWindowShadeButtonHint, eWindowStaysOnTopHint, fWindowStaysOnTopHint, eCustomizeWindowHint, fCustomizeWindowHint
 , WindowState, WindowStates, eWindowNoState, fWindowNoState, eWindowMinimized, fWindowMinimized, eWindowMaximized, fWindowMaximized, eWindowFullScreen, fWindowFullScreen, eWindowActive, fWindowActive
 , WidgetAttribute, eWA_Disabled, eWA_UnderMouse, eWA_MouseTracking, eWA_ContentsPropagated, eWA_OpaquePaintEvent, eWA_NoBackground, eWA_StaticContents, eWA_LaidOut, eWA_PaintOnScreen, eWA_NoSystemBackground, eWA_UpdatesDisabled, eWA_Mapped, eWA_MacNoClickThrough, eWA_PaintOutsidePaintEvent, eWA_InputMethodEnabled, eWA_WState_Visible, eWA_WState_Hidden, eWA_ForceDisabled, eWA_KeyCompression, eWA_PendingMoveEvent, eWA_PendingResizeEvent, eWA_SetPalette, eWA_SetFont, eWA_SetCursor, eWA_NoChildEventsFromChildren, eWA_WindowModified, eWA_Resized, eWA_Moved, eWA_PendingUpdate, eWA_InvalidSize, eWA_MacBrushedMetal, eWA_MacMetalStyle, eWA_CustomWhatsThis, eWA_LayoutOnEntireRect, eWA_OutsideWSRange, eWA_GrabbedShortcut, eWA_TransparentForMouseEvents, eWA_PaintUnclipped, eWA_SetWindowIcon, eWA_NoMouseReplay, eWA_DeleteOnClose, eWA_RightToLeft, eWA_SetLayoutDirection, eWA_NoChildEventsForParent, eWA_ForceUpdatesDisabled, eWA_WState_Created, eWA_WState_CompressKeys, eWA_WState_InPaintEvent, eWA_WState_Reparented, eWA_WState_ConfigPending, eWA_WState_Polished, eWA_WState_DND, eWA_WState_OwnSizePolicy, eWA_WState_ExplicitShowHide, eWA_ShowModal, eWA_MouseNoMask, eWA_GroupLeader, eWA_NoMousePropagation, eWA_Hover, eWA_InputMethodTransparent, eWA_QuitOnClose, eWA_KeyboardFocusChange, eWA_AcceptDrops, eWA_DropSiteRegistered, eWA_ForceAcceptDrops, eWA_WindowPropagation, eWA_NoX11EventCompression, eWA_TintedBackground, eWA_X11OpenGLOverlay, eWA_AlwaysShowToolTips, eWA_MacOpaqueSizeGrip, eWA_SetStyle, eWA_SetLocale, eWA_MacShowFocusRect, eWA_MacNormalSize, eWA_MacSmallSize, eWA_MacMiniSize, eWA_LayoutUsesWidgetRect, eWA_StyledBackground, eWA_MSWindowsUseDirect3D, eWA_CanHostQMdiSubWindowTitleBar, eWA_MacAlwaysShowToolWindow, eWA_StyleSheet, eWA_AttributeCount
 , ApplicationAttribute, eAA_ImmediateWidgetCreation, eAA_MSWindowsUseDirect3DByDefault, eAA_AttributeCount
 , ImageConversionFlag, ImageConversionFlags, eColorMode_Mask, fColorMode_Mask, eAutoColor, fAutoColor, eColorOnly, fColorOnly, eMonoOnly, fMonoOnly, eAlphaDither_Mask, fAlphaDither_Mask, eThresholdAlphaDither, fThresholdAlphaDither, eOrderedAlphaDither, fOrderedAlphaDither, eDiffuseAlphaDither, fDiffuseAlphaDither, eNoAlpha, fNoAlpha, eDither_Mask, fDither_Mask, eDiffuseDither, fDiffuseDither, eOrderedDither, fOrderedDither, eThresholdDither, fThresholdDither, eDitherMode_Mask, fDitherMode_Mask, eAutoDither, fAutoDither, ePreferDither, fPreferDither, eAvoidDither, fAvoidDither
 , BGMode, eTransparentMode, eOpaqueMode
 , Key, eKey_Escape, eKey_Tab, eKey_Backtab, eKey_Backspace, eKey_Return, eKey_Enter, eKey_Insert, eKey_Delete, eKey_Pause, eKey_Print, eKey_SysReq, eKey_Clear, eKey_Home, eKey_End, eKey_Left, eKey_Up, eKey_Right, eKey_Down, eKey_PageUp, eKey_PageDown, eKey_Shift, eKey_Control, eKey_Meta, eKey_Alt, eKey_CapsLock, eKey_NumLock, eKey_ScrollLock, eKey_F1, eKey_F2, eKey_F3, eKey_F4, eKey_F5, eKey_F6, eKey_F7, eKey_F8, eKey_F9, eKey_F10, eKey_F11, eKey_F12, eKey_F13, eKey_F14, eKey_F15, eKey_F16, eKey_F17, eKey_F18, eKey_F19, eKey_F20, eKey_F21, eKey_F22, eKey_F23, eKey_F24, eKey_F25, eKey_F26, eKey_F27, eKey_F28, eKey_F29, eKey_F30, eKey_F31, eKey_F32, eKey_F33, eKey_F34, eKey_F35, eKey_Super_L, eKey_Super_R, eKey_Menu, eKey_Hyper_L, eKey_Hyper_R, eKey_Help, eKey_Direction_L, eKey_Direction_R, eKey_Space, eKey_Any, eKey_Exclam, eKey_QuoteDbl, eKey_NumberSign, eKey_Dollar, eKey_Percent, eKey_Ampersand, eKey_Apostrophe, eKey_ParenLeft, eKey_ParenRight, eKey_Asterisk, eKey_Plus, eKey_Comma, eKey_Minus, eKey_Period, eKey_Slash, eKey_0, eKey_1, eKey_2, eKey_3, eKey_4, eKey_5, eKey_6, eKey_7, eKey_8, eKey_9, eKey_Colon, eKey_Semicolon, eKey_Less, eKey_Equal, eKey_Greater, eKey_Question, eKey_At, eKey_A, eKey_B, eKey_C, eKey_D, eKey_E, eKey_F, eKey_G, eKey_H, eKey_I, eKey_J, eKey_K, eKey_L, eKey_M, eKey_N, eKey_O, eKey_P, eKey_Q, eKey_R, eKey_S, eKey_T, eKey_U, eKey_V, eKey_W, eKey_X, eKey_Y, eKey_Z, eKey_BracketLeft, eKey_Backslash, eKey_BracketRight, eKey_AsciiCircum, eKey_Underscore, eKey_QuoteLeft, eKey_BraceLeft, eKey_Bar, eKey_BraceRight, eKey_AsciiTilde, eKey_nobreakspace, eKey_exclamdown, eKey_cent, eKey_sterling, eKey_currency, eKey_yen, eKey_brokenbar, eKey_section, eKey_diaeresis, eKey_copyright, eKey_ordfeminine, eKey_guillemotleft, eKey_notsign, eKey_hyphen, eKey_registered, eKey_macron, eKey_degree, eKey_plusminus, eKey_twosuperior, eKey_threesuperior, eKey_acute, eKey_mu, eKey_paragraph, eKey_periodcentered, eKey_cedilla, eKey_onesuperior, eKey_masculine, eKey_guillemotright, eKey_onequarter, eKey_onehalf, eKey_threequarters, eKey_questiondown, eKey_Agrave, eKey_Aacute, eKey_Acircumflex, eKey_Atilde, eKey_Adiaeresis, eKey_Aring, eKey_AE, eKey_Ccedilla, eKey_Egrave, eKey_Eacute, eKey_Ecircumflex, eKey_Ediaeresis, eKey_Igrave, eKey_Iacute, eKey_Icircumflex, eKey_Idiaeresis, eKey_ETH, eKey_Ntilde, eKey_Ograve, eKey_Oacute, eKey_Ocircumflex, eKey_Otilde, eKey_Odiaeresis, eKey_multiply, eKey_Ooblique, eKey_Ugrave, eKey_Uacute, eKey_Ucircumflex, eKey_Udiaeresis, eKey_Yacute, eKey_THORN, eKey_ssharp, eKey_division, eKey_ydiaeresis, eKey_AltGr, eKey_Multi_key, eKey_Codeinput, eKey_SingleCandidate, eKey_MultipleCandidate, eKey_PreviousCandidate, eKey_Mode_switch, eKey_Kanji, eKey_Muhenkan, eKey_Henkan, eKey_Romaji, eKey_Hiragana, eKey_Katakana, eKey_Hiragana_Katakana, eKey_Zenkaku, eKey_Hankaku, eKey_Zenkaku_Hankaku, eKey_Touroku, eKey_Massyo, eKey_Kana_Lock, eKey_Kana_Shift, eKey_Eisu_Shift, eKey_Eisu_toggle, eKey_Hangul, eKey_Hangul_Start, eKey_Hangul_End, eKey_Hangul_Hanja, eKey_Hangul_Jamo, eKey_Hangul_Romaja, eKey_Hangul_Jeonja, eKey_Hangul_Banja, eKey_Hangul_PreHanja, eKey_Hangul_PostHanja, eKey_Hangul_Special, eKey_Dead_Grave, eKey_Dead_Acute, eKey_Dead_Circumflex, eKey_Dead_Tilde, eKey_Dead_Macron, eKey_Dead_Breve, eKey_Dead_Abovedot, eKey_Dead_Diaeresis, eKey_Dead_Abovering, eKey_Dead_Doubleacute, eKey_Dead_Caron, eKey_Dead_Cedilla, eKey_Dead_Ogonek, eKey_Dead_Iota, eKey_Dead_Voiced_Sound, eKey_Dead_Semivoiced_Sound, eKey_Dead_Belowdot, eKey_Dead_Hook, eKey_Dead_Horn, eKey_Back, eKey_Forward, eKey_Stop, eKey_Refresh, eKey_VolumeDown, eKey_VolumeMute, eKey_VolumeUp, eKey_BassBoost, eKey_BassUp, eKey_BassDown, eKey_TrebleUp, eKey_TrebleDown, eKey_MediaPlay, eKey_MediaStop, eKey_MediaPrevious, eKey_MediaNext, eKey_MediaRecord, eKey_HomePage, eKey_Favorites, eKey_Search, eKey_Standby, eKey_OpenUrl, eKey_LaunchMail, eKey_LaunchMedia, eKey_Launch0, eKey_Launch1, eKey_Launch2, eKey_Launch3, eKey_Launch4, eKey_Launch5, eKey_Launch6, eKey_Launch7, eKey_Launch8, eKey_Launch9, eKey_LaunchA, eKey_LaunchB, eKey_LaunchC, eKey_LaunchD, eKey_LaunchE, eKey_LaunchF, eKey_MediaLast, eKey_Select, eKey_Yes, eKey_No, eKey_Cancel, eKey_Printer, eKey_Execute, eKey_Sleep, eKey_Play, eKey_Zoom, eKey_Context1, eKey_Context2, eKey_Context3, eKey_Context4, eKey_Call, eKey_Hangup, eKey_Flip, eKey_unknown
 , ArrowType, eNoArrow, eUpArrow, eDownArrow, eLeftArrow, eRightArrow
 , PenStyle, eNoPen, eSolidLine, eDashLine, eCustomDashLine, eMPenStyle
 , PenCapStyle, eFlatCap, eSquareCap, eRoundCap, eMPenCapStyle
 , PenJoinStyle, eMiterJoin, eBevelJoin, eRoundJoin, eSvgMiterJoin, eMPenJoinStyle
 , BrushStyle, eNoBrush, eSolidPattern, eDense1Pattern, eDense2Pattern, eDense3Pattern, eDense4Pattern, eDense5Pattern, eDense6Pattern, eDense7Pattern, eHorPattern, eVerPattern, eCrossPattern, eBDiagPattern, eFDiagPattern, eDiagCrossPattern, eLinearGradientPattern, eRadialGradientPattern, eConicalGradientPattern, eTexturePattern
 , UIEffect, eUI_General, eUI_AnimateMenu, eUI_FadeMenu, eUI_AnimateCombo, eUI_AnimateTooltip, eUI_FadeTooltip, eUI_AnimateToolBox
 , CursorShape, eArrowCursor, eUpArrowCursor, eCrossCursor, eWaitCursor, eIBeamCursor, eSizeVerCursor, eSizeHorCursor, eSizeBDiagCursor, eSizeFDiagCursor, eSizeAllCursor, eBlankCursor, eSplitVCursor, eSplitHCursor, ePointingHandCursor, eForbiddenCursor, eWhatsThisCursor, eBusyCursor, eOpenHandCursor, eClosedHandCursor, eLastCursor, eBitmapCursor, eCustomCursor
 , TextFormat, ePlainText, eRichText, eAutoText, eLogText
 , AspectRatioMode, eIgnoreAspectRatio, eKeepAspectRatio, eKeepAspectRatioByExpanding
 , AnchorAttribute
 , DockWidgetArea, DockWidgetAreas, eLeftDockWidgetArea, fLeftDockWidgetArea, eRightDockWidgetArea, fRightDockWidgetArea, eTopDockWidgetArea, fTopDockWidgetArea, eBottomDockWidgetArea, fBottomDockWidgetArea, eDockWidgetArea_Mask, fDockWidgetArea_Mask, eAllDockWidgetAreas, fAllDockWidgetAreas, eNoDockWidgetArea, fNoDockWidgetArea
 , DockWidgetAreaSizes, eNDockWidgetAreas
 , ToolBarArea, ToolBarAreas, eLeftToolBarArea, fLeftToolBarArea, eRightToolBarArea, fRightToolBarArea, eTopToolBarArea, fTopToolBarArea, eBottomToolBarArea, fBottomToolBarArea, eToolBarArea_Mask, fToolBarArea_Mask, eAllToolBarAreas, fAllToolBarAreas, eNoToolBarArea, fNoToolBarArea
 , ToolBarAreaSizes, eNToolBarAreas
 , DateFormat, eTextDate, eISODate, eSystemLocaleDate, eLocalDate, eLocaleDate
 , TimeSpec, eLocalTime, eUTC
 , DayOfWeek, eMonday, eTuesday, eWednesday, eThursday, eFriday, eSaturday, eSunday
 , ScrollBarPolicy, eScrollBarAsNeeded, eScrollBarAlwaysOff, eScrollBarAlwaysOn
 , CaseSensitivity, eCaseInsensitive
 , Corner, eTopLeftCorner, eTopRightCorner, eBottomLeftCorner, eBottomRightCorner
 , ConnectionType, eAutoConnection, eDirectConnection, eQueuedConnection, eAutoCompatConnection, eBlockingQueuedConnection
 , ShortcutContext, eWidgetShortcut, eWindowShortcut, eApplicationShortcut
 , FillRule, eOddEvenFill, eWindingFill
 , MaskMode, eMaskInColor, eMaskOutColor
 , ClipOperation, eNoClip, eReplaceClip, eIntersectClip, eUniteClip
 , ItemSelectionMode, eContainsItemShape, eIntersectsItemShape, eContainsItemBoundingRect, eIntersectsItemBoundingRect
 , TransformationMode, eFastTransformation, eSmoothTransformation
 , Axis, eXAxis, eYAxis, eZAxis
 , FocusReason, eMouseFocusReason, eTabFocusReason, eBacktabFocusReason, eActiveWindowFocusReason, ePopupFocusReason, eShortcutFocusReason, eMenuBarFocusReason, eOtherFocusReason, eNoFocusReason
 , ContextMenuPolicy, eNoContextMenu, eDefaultContextMenu, eActionsContextMenu, eCustomContextMenu, ePreventContextMenu
 , InputMethodQuery, eImMicroFocus, eImFont, eImCursorPosition, eImSurroundingText, eImCurrentSelection
 , ToolButtonStyle, eToolButtonIconOnly, eToolButtonTextOnly, eToolButtonTextBesideIcon, eToolButtonTextUnderIcon
 , LayoutDirection
 , DropAction, DropActions, eCopyAction, fCopyAction, eMoveAction, fMoveAction, eLinkAction, fLinkAction, eActionMask, fActionMask, eTargetMoveAction, fTargetMoveAction, eIgnoreAction, fIgnoreAction
 , CheckState, eUnchecked, ePartiallyChecked, eChecked
 , ItemDataRole, eDisplayRole, eDecorationRole, eEditRole, eToolTipRole, eStatusTipRole, eWhatsThisRole, eFontRole, eTextAlignmentRole, eBackgroundColorRole, eBackgroundRole, eTextColorRole, eForegroundRole, eCheckStateRole, eAccessibleTextRole, eAccessibleDescriptionRole, eSizeHintRole, eUserRole
 , ItemFlag, ItemFlags, eItemIsEditable, fItemIsEditable, eItemIsDragEnabled, fItemIsDragEnabled, eItemIsDropEnabled, fItemIsDropEnabled, eItemIsUserCheckable, fItemIsUserCheckable, eItemIsEnabled, fItemIsEnabled, eItemIsTristate, fItemIsTristate
 , MatchFlag, MatchFlags, eMatchExactly, fMatchExactly, eMatchContains, fMatchContains, eMatchStartsWith, fMatchStartsWith, eMatchEndsWith, fMatchEndsWith, eMatchRegExp, fMatchRegExp, eMatchWildcard, fMatchWildcard, eMatchFixedString, fMatchFixedString, eMatchCaseSensitive, fMatchCaseSensitive, eMatchWrap, fMatchWrap, eMatchRecursive, fMatchRecursive
 , WindowModality, eNonModal, eWindowModal, eApplicationModal
 , TextInteractionFlag, TextInteractionFlags, eNoTextInteraction, fNoTextInteraction, eTextSelectableByMouse, fTextSelectableByMouse, eTextSelectableByKeyboard, fTextSelectableByKeyboard, eLinksAccessibleByMouse, fLinksAccessibleByMouse, eLinksAccessibleByKeyboard, fLinksAccessibleByKeyboard, eTextEditable, fTextEditable, eTextEditorInteraction, fTextEditorInteraction, eTextBrowserInteraction, fTextBrowserInteraction
 , EventPriority, eHighEventPriority, eNormalEventPriority, eLowEventPriority
 , HitTestAccuracy, eExactHit, eFuzzyHit
 , WhiteSpaceMode, eWhiteSpaceNormal, eWhiteSpacePre, eWhiteSpaceNoWrap, eWhiteSpaceModeUndefined
 )
 where

import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core
import Foreign.C.Types

class Qcsm x where
  connectSlotM :: QObject a -> String -> QObject b -> String -> ConnectionType -> x -> IO ()

instance Qcsm (()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ ()
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    withCWString _qslt_nam $ \cstr_slt ->
    qtc_connectSlot_public_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ)

instance Qcsm (QObject c -> IO ()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ _handler
  = do
    funptr  <- wrapSlotHandler_m slotHandlerWrapper_m
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ) (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_m :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> IO ()
    slotHandlerWrapper_m funptr stptr qobjptr
      = do qobj <- qObjectFromPtr qobjptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj
           return ()

instance Qcsm (QObject c -> Int -> IO ()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ _handler
  = do
    funptr  <- wrapSlotHandler_int_m slotHandlerWrapper_int_m
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_int_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ) (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_int_m :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CInt -> IO ()
    slotHandlerWrapper_int_m funptr stptr qobjptr cint
      = do qobj <- qObjectFromPtr qobjptr
           let hint = fromCInt cint
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj hint
           return ()

instance Qcsm (QObject c -> Bool -> IO ()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ _handler
  = do
    funptr  <- wrapSlotHandler_bool_m slotHandlerWrapper_bool_m
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_bool_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ) (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_bool_m :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> CBool -> IO ()
    slotHandlerWrapper_bool_m funptr stptr qobjptr cbool
      = do qobj <- qObjectFromPtr qobjptr
           let hbool = fromCBool cbool
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj hbool
           return ()

instance Qcsm (QObject c -> Object d -> IO ()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ _handler
  = do
    funptr  <- wrapSlotHandler_ptr_m slotHandlerWrapper_ptr_m
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_ptr_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ) (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_ptr_m :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr d -> IO ()
    slotHandlerWrapper_ptr_m funptr stptr qobjptr1 qobjptr2
      = do qobj1 <- qObjectFromPtr qobjptr1
           qobj2 <- objectFromPtr_nf qobjptr2
           if (objectIsNull qobj1)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj1 qobj2
           return ()

instance Qcsm (QObject c -> String -> IO ()) where
 connectSlotM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ _handler
  = do
    funptr  <- wrapSlotHandler_str_m slotHandlerWrapper_str_m
    stptr   <- newStablePtr (Wrap _handler)
    withObjectPtr _qsig_obj $ \cobj_sig ->
      withCWString _qsig_nam $ \cstr_sig ->
      withObjectPtr _qslt_obj $ \cobj_slt ->
      withCWString _qslt_nam $ \cstr_slt ->
      qtc_connectSlot_str_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ) (toCFunPtr funptr) (castStablePtrToPtr stptr)
    return ()
  where
    slotHandlerWrapper_str_m :: Ptr fun -> Ptr () -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()
    slotHandlerWrapper_str_m funptr stptr qobjptr qstrptr
      = do qobj <- qObjectFromPtr qobjptr
           qstr <- stringFromPtr qstrptr
           if (objectIsNull qobj)
            then do when (stptr/=ptrNull)
                      (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                      (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _handler qobj qstr
           return ()

foreign import ccall "qtc_connectSlot_public_m" qtc_connectSlot_public_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> IO ()

foreign import ccall "qtc_connectSlot_m" qtc_connectSlot_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_m :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> IO ()))

foreign import ccall "qtc_connectSlot_int_m" qtc_connectSlot_int_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_int_m :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CInt -> IO ()))

foreign import ccall "qtc_connectSlot_bool_m" qtc_connectSlot_bool_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_bool_m :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> CBool -> IO ()))

foreign import ccall "qtc_connectSlot_ptr_m" qtc_connectSlot_ptr_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_ptr_m :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr d -> IO ()))

foreign import ccall "qtc_connectSlot_str_m" qtc_connectSlot_str_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> Ptr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()) -> Ptr () -> IO ()

foreign import ccall "wrapper" wrapSlotHandler_str_m :: (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQObject c) -> Ptr (TQString ()) -> IO ()))

connectSignalM :: QObject a -> String -> QObject b -> String -> ConnectionType -> IO ()
connectSignalM _qsig_obj _qsig_nam _qslt_obj _qslt_nam _qcon_typ
  = withObjectPtr _qsig_obj $ \cobj_sig ->
    withCWString _qsig_nam $ \cstr_sig ->
    withObjectPtr _qslt_obj $ \cobj_slt ->
    withCWString _qslt_nam $ \cstr_slt ->
    qtc_connectSignal_m cobj_sig cstr_sig cobj_slt cstr_slt (toCLong $ qEnum_toInt _qcon_typ)

foreign import ccall "qtc_connectSignal_m" qtc_connectSignal_m :: Ptr (TQObject a) -> CWString -> Ptr (TQObject b) -> CWString -> CLong -> IO ()

data CGlobalColor a = CGlobalColor a
type GlobalColor = QEnum(CGlobalColor Int)

ieGlobalColor :: Int -> GlobalColor
ieGlobalColor x = QEnum (CGlobalColor x)

instance QEnumC (CGlobalColor Int) where
 qEnum_toInt (QEnum (CGlobalColor x)) = x
 qEnum_fromInt x = QEnum (CGlobalColor x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> GlobalColor -> IO ()) where
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

ecolor0 :: GlobalColor
ecolor0
  = ieGlobalColor $ 0
ecolor1 :: GlobalColor
ecolor1
  = ieGlobalColor $ 1
eblack :: GlobalColor
eblack
  = ieGlobalColor $ 2
ewhite :: GlobalColor
ewhite
  = ieGlobalColor $ 3
edarkGray :: GlobalColor
edarkGray
  = ieGlobalColor $ 4
egray :: GlobalColor
egray
  = ieGlobalColor $ 5
elightGray :: GlobalColor
elightGray
  = ieGlobalColor $ 6
ered :: GlobalColor
ered
  = ieGlobalColor $ 7
egreen :: GlobalColor
egreen
  = ieGlobalColor $ 8
eblue :: GlobalColor
eblue
  = ieGlobalColor $ 9
ecyan :: GlobalColor
ecyan
  = ieGlobalColor $ 10
emagenta :: GlobalColor
emagenta
  = ieGlobalColor $ 11
eyellow :: GlobalColor
eyellow
  = ieGlobalColor $ 12
edarkRed :: GlobalColor
edarkRed
  = ieGlobalColor $ 13
edarkGreen :: GlobalColor
edarkGreen
  = ieGlobalColor $ 14
edarkBlue :: GlobalColor
edarkBlue
  = ieGlobalColor $ 15
edarkCyan :: GlobalColor
edarkCyan
  = ieGlobalColor $ 16
edarkMagenta :: GlobalColor
edarkMagenta
  = ieGlobalColor $ 17
edarkYellow :: GlobalColor
edarkYellow
  = ieGlobalColor $ 18
etransparent :: GlobalColor
etransparent
  = ieGlobalColor $ 19

data CKeyboardModifier a = CKeyboardModifier a
type KeyboardModifier = QEnum(CKeyboardModifier Int)

ieKeyboardModifier :: Int -> KeyboardModifier
ieKeyboardModifier x = QEnum (CKeyboardModifier x)

instance QEnumC (CKeyboardModifier Int) where
 qEnum_toInt (QEnum (CKeyboardModifier x)) = x
 qEnum_fromInt x = QEnum (CKeyboardModifier x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> KeyboardModifier -> IO ()) where
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

data CKeyboardModifiers a = CKeyboardModifiers a
type KeyboardModifiers = QFlags(CKeyboardModifiers Int)

ifKeyboardModifiers :: Int -> KeyboardModifiers
ifKeyboardModifiers x = QFlags (CKeyboardModifiers x)

instance QFlagsC (CKeyboardModifiers Int) where
 qFlags_toInt (QFlags (CKeyboardModifiers x)) = x
 qFlags_fromInt x = QFlags (CKeyboardModifiers x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> KeyboardModifiers -> IO ()) where
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

eNoModifier :: KeyboardModifier
eNoModifier
  = ieKeyboardModifier $ 0
eShiftModifier :: KeyboardModifier
eShiftModifier
  = ieKeyboardModifier $ 33554432
eControlModifier :: KeyboardModifier
eControlModifier
  = ieKeyboardModifier $ 67108864
eAltModifier :: KeyboardModifier
eAltModifier
  = ieKeyboardModifier $ 134217728
eMetaModifier :: KeyboardModifier
eMetaModifier
  = ieKeyboardModifier $ 268435456
eKeypadModifier :: KeyboardModifier
eKeypadModifier
  = ieKeyboardModifier $ 536870912
eGroupSwitchModifier :: KeyboardModifier
eGroupSwitchModifier
  = ieKeyboardModifier $ 1073741824
eKeyboardModifierMask :: KeyboardModifier
eKeyboardModifierMask
  = ieKeyboardModifier $ -33554432

fNoModifier :: KeyboardModifiers
fNoModifier
  = ifKeyboardModifiers $ 0
fShiftModifier :: KeyboardModifiers
fShiftModifier
  = ifKeyboardModifiers $ 33554432
fControlModifier :: KeyboardModifiers
fControlModifier
  = ifKeyboardModifiers $ 67108864
fAltModifier :: KeyboardModifiers
fAltModifier
  = ifKeyboardModifiers $ 134217728
fMetaModifier :: KeyboardModifiers
fMetaModifier
  = ifKeyboardModifiers $ 268435456
fKeypadModifier :: KeyboardModifiers
fKeypadModifier
  = ifKeyboardModifiers $ 536870912
fGroupSwitchModifier :: KeyboardModifiers
fGroupSwitchModifier
  = ifKeyboardModifiers $ 1073741824
fKeyboardModifierMask :: KeyboardModifiers
fKeyboardModifierMask
  = ifKeyboardModifiers $ -33554432

data CModifier a = CModifier a
type Modifier = QEnum(CModifier Int)

ieModifier :: Int -> Modifier
ieModifier x = QEnum (CModifier x)

instance QEnumC (CModifier Int) where
 qEnum_toInt (QEnum (CModifier x)) = x
 qEnum_fromInt x = QEnum (CModifier x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Modifier -> IO ()) where
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

eMETA :: Modifier
eMETA
  = ieModifier $ 268435456
eSHIFT :: Modifier
eSHIFT
  = ieModifier $ 33554432
eCTRL :: Modifier
eCTRL
  = ieModifier $ 67108864
eALT :: Modifier
eALT
  = ieModifier $ 134217728
eMODIFIER_MASK :: Modifier
eMODIFIER_MASK
  = ieModifier $ -33554432
eUNICODE_ACCEL :: Modifier
eUNICODE_ACCEL
  = ieModifier $ 0

data CMouseButton a = CMouseButton a
type MouseButton = QEnum(CMouseButton Int)

ieMouseButton :: Int -> MouseButton
ieMouseButton x = QEnum (CMouseButton x)

instance QEnumC (CMouseButton Int) where
 qEnum_toInt (QEnum (CMouseButton x)) = x
 qEnum_fromInt x = QEnum (CMouseButton x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MouseButton -> IO ()) where
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

data CMouseButtons a = CMouseButtons a
type MouseButtons = QFlags(CMouseButtons Int)

ifMouseButtons :: Int -> MouseButtons
ifMouseButtons x = QFlags (CMouseButtons x)

instance QFlagsC (CMouseButtons Int) where
 qFlags_toInt (QFlags (CMouseButtons x)) = x
 qFlags_fromInt x = QFlags (CMouseButtons x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> MouseButtons -> IO ()) where
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

instance QeNoButton MouseButton where
 eNoButton
  = ieMouseButton $ 0
eLeftButton :: MouseButton
eLeftButton
  = ieMouseButton $ 1
eRightButton :: MouseButton
eRightButton
  = ieMouseButton $ 2
eMidButton :: MouseButton
eMidButton
  = ieMouseButton $ 4
eXButton1 :: MouseButton
eXButton1
  = ieMouseButton $ 8
eXButton2 :: MouseButton
eXButton2
  = ieMouseButton $ 16
eMouseButtonMask :: MouseButton
eMouseButtonMask
  = ieMouseButton $ 255

instance QfNoButton MouseButtons where
 fNoButton
  = ifMouseButtons $ 0
fLeftButton :: MouseButtons
fLeftButton
  = ifMouseButtons $ 1
fRightButton :: MouseButtons
fRightButton
  = ifMouseButtons $ 2
fMidButton :: MouseButtons
fMidButton
  = ifMouseButtons $ 4
fXButton1 :: MouseButtons
fXButton1
  = ifMouseButtons $ 8
fXButton2 :: MouseButtons
fXButton2
  = ifMouseButtons $ 16
fMouseButtonMask :: MouseButtons
fMouseButtonMask
  = ifMouseButtons $ 255

data CQtOrientation a = CQtOrientation a
type QtOrientation = QEnum(CQtOrientation Int)

ieQtOrientation :: Int -> QtOrientation
ieQtOrientation x = QEnum (CQtOrientation x)

instance QEnumC (CQtOrientation Int) where
 qEnum_toInt (QEnum (CQtOrientation x)) = x
 qEnum_fromInt x = QEnum (CQtOrientation x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QtOrientation -> IO ()) where
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

data COrientations a = COrientations a
type Orientations = QFlags(COrientations Int)

ifOrientations :: Int -> Orientations
ifOrientations x = QFlags (COrientations x)

instance QFlagsC (COrientations Int) where
 qFlags_toInt (QFlags (COrientations x)) = x
 qFlags_fromInt x = QFlags (COrientations x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Orientations -> IO ()) where
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

eHorizontal :: QtOrientation
eHorizontal
  = ieQtOrientation $ 1
instance QeVertical QtOrientation where
 eVertical
  = ieQtOrientation $ 2

fHorizontal :: Orientations
fHorizontal
  = ifOrientations $ 1
fVertical :: Orientations
fVertical
  = ifOrientations $ 2

data CFocusPolicy a = CFocusPolicy a
type FocusPolicy = QEnum(CFocusPolicy Int)

ieFocusPolicy :: Int -> FocusPolicy
ieFocusPolicy x = QEnum (CFocusPolicy x)

instance QEnumC (CFocusPolicy Int) where
 qEnum_toInt (QEnum (CFocusPolicy x)) = x
 qEnum_fromInt x = QEnum (CFocusPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FocusPolicy -> IO ()) where
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

eNoFocus :: FocusPolicy
eNoFocus
  = ieFocusPolicy $ 0
eTabFocus :: FocusPolicy
eTabFocus
  = ieFocusPolicy $ 1
eClickFocus :: FocusPolicy
eClickFocus
  = ieFocusPolicy $ 2
eStrongFocus :: FocusPolicy
eStrongFocus
  = ieFocusPolicy $ 11
eWheelFocus :: FocusPolicy
eWheelFocus
  = ieFocusPolicy $ 15

data CSortOrder a = CSortOrder a
type SortOrder = QEnum(CSortOrder Int)

ieSortOrder :: Int -> SortOrder
ieSortOrder x = QEnum (CSortOrder x)

instance QEnumC (CSortOrder Int) where
 qEnum_toInt (QEnum (CSortOrder x)) = x
 qEnum_fromInt x = QEnum (CSortOrder x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SortOrder -> IO ()) where
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

eAscendingOrder :: SortOrder
eAscendingOrder
  = ieSortOrder $ 0
eDescendingOrder :: SortOrder
eDescendingOrder
  = ieSortOrder $ 1

data CAlignmentFlag a = CAlignmentFlag a
type AlignmentFlag = QEnum(CAlignmentFlag Int)

ieAlignmentFlag :: Int -> AlignmentFlag
ieAlignmentFlag x = QEnum (CAlignmentFlag x)

instance QEnumC (CAlignmentFlag Int) where
 qEnum_toInt (QEnum (CAlignmentFlag x)) = x
 qEnum_fromInt x = QEnum (CAlignmentFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> AlignmentFlag -> IO ()) where
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

data CAlignment a = CAlignment a
type Alignment = QFlags(CAlignment Int)

ifAlignment :: Int -> Alignment
ifAlignment x = QFlags (CAlignment x)

instance QFlagsC (CAlignment Int) where
 qFlags_toInt (QFlags (CAlignment x)) = x
 qFlags_fromInt x = QFlags (CAlignment x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Alignment -> IO ()) where
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

instance QeAlignLeft AlignmentFlag where
 eAlignLeft
  = ieAlignmentFlag $ 1
eAlignLeading :: AlignmentFlag
eAlignLeading
  = ieAlignmentFlag $ 1
instance QeAlignRight AlignmentFlag where
 eAlignRight
  = ieAlignmentFlag $ 2
eAlignTrailing :: AlignmentFlag
eAlignTrailing
  = ieAlignmentFlag $ 2
eAlignHCenter :: AlignmentFlag
eAlignHCenter
  = ieAlignmentFlag $ 4
eAlignJustify :: AlignmentFlag
eAlignJustify
  = ieAlignmentFlag $ 8
eAlignAbsolute :: AlignmentFlag
eAlignAbsolute
  = ieAlignmentFlag $ 16
eAlignHorizontal_Mask :: AlignmentFlag
eAlignHorizontal_Mask
  = ieAlignmentFlag $ 31
instance QeAlignTop AlignmentFlag where
 eAlignTop
  = ieAlignmentFlag $ 32
instance QeAlignBottom AlignmentFlag where
 eAlignBottom
  = ieAlignmentFlag $ 64
eAlignVCenter :: AlignmentFlag
eAlignVCenter
  = ieAlignmentFlag $ 128
eAlignVertical_Mask :: AlignmentFlag
eAlignVertical_Mask
  = ieAlignmentFlag $ 224
instance QeAlignCenter AlignmentFlag where
 eAlignCenter
  = ieAlignmentFlag $ 132

fAlignLeft :: Alignment
fAlignLeft
  = ifAlignment $ 1
fAlignLeading :: Alignment
fAlignLeading
  = ifAlignment $ 1
fAlignRight :: Alignment
fAlignRight
  = ifAlignment $ 2
fAlignTrailing :: Alignment
fAlignTrailing
  = ifAlignment $ 2
fAlignHCenter :: Alignment
fAlignHCenter
  = ifAlignment $ 4
fAlignJustify :: Alignment
fAlignJustify
  = ifAlignment $ 8
fAlignAbsolute :: Alignment
fAlignAbsolute
  = ifAlignment $ 16
fAlignHorizontal_Mask :: Alignment
fAlignHorizontal_Mask
  = ifAlignment $ 31
fAlignTop :: Alignment
fAlignTop
  = ifAlignment $ 32
fAlignBottom :: Alignment
fAlignBottom
  = ifAlignment $ 64
fAlignVCenter :: Alignment
fAlignVCenter
  = ifAlignment $ 128
fAlignVertical_Mask :: Alignment
fAlignVertical_Mask
  = ifAlignment $ 224
fAlignCenter :: Alignment
fAlignCenter
  = ifAlignment $ 132

data CTextFlag a = CTextFlag a
type TextFlag = QEnum(CTextFlag Int)

ieTextFlag :: Int -> TextFlag
ieTextFlag x = QEnum (CTextFlag x)

instance QEnumC (CTextFlag Int) where
 qEnum_toInt (QEnum (CTextFlag x)) = x
 qEnum_fromInt x = QEnum (CTextFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TextFlag -> IO ()) where
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

eTextSingleLine :: TextFlag
eTextSingleLine
  = ieTextFlag $ 256
eTextDontClip :: TextFlag
eTextDontClip
  = ieTextFlag $ 512
eTextExpandTabs :: TextFlag
eTextExpandTabs
  = ieTextFlag $ 1024
eTextShowMnemonic :: TextFlag
eTextShowMnemonic
  = ieTextFlag $ 2048
eTextWordWrap :: TextFlag
eTextWordWrap
  = ieTextFlag $ 4096
eTextWrapAnywhere :: TextFlag
eTextWrapAnywhere
  = ieTextFlag $ 8192
eTextDontPrint :: TextFlag
eTextDontPrint
  = ieTextFlag $ 16384
eTextIncludeTrailingSpaces :: TextFlag
eTextIncludeTrailingSpaces
  = ieTextFlag $ 134217728
eTextHideMnemonic :: TextFlag
eTextHideMnemonic
  = ieTextFlag $ 32768
eTextJustificationForced :: TextFlag
eTextJustificationForced
  = ieTextFlag $ 65536

data CTextElideMode a = CTextElideMode a
type TextElideMode = QEnum(CTextElideMode Int)

ieTextElideMode :: Int -> TextElideMode
ieTextElideMode x = QEnum (CTextElideMode x)

instance QEnumC (CTextElideMode Int) where
 qEnum_toInt (QEnum (CTextElideMode x)) = x
 qEnum_fromInt x = QEnum (CTextElideMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TextElideMode -> IO ()) where
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

eElideLeft :: TextElideMode
eElideLeft
  = ieTextElideMode $ 0
eElideRight :: TextElideMode
eElideRight
  = ieTextElideMode $ 1
eElideMiddle :: TextElideMode
eElideMiddle
  = ieTextElideMode $ 2
eElideNone :: TextElideMode
eElideNone
  = ieTextElideMode $ 3

data CWindowType a = CWindowType a
type WindowType = QEnum(CWindowType Int)

ieWindowType :: Int -> WindowType
ieWindowType x = QEnum (CWindowType x)

instance QEnumC (CWindowType Int) where
 qEnum_toInt (QEnum (CWindowType x)) = x
 qEnum_fromInt x = QEnum (CWindowType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WindowType -> IO ()) where
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

data CWindowFlags a = CWindowFlags a
type WindowFlags = QFlags(CWindowFlags Int)

ifWindowFlags :: Int -> WindowFlags
ifWindowFlags x = QFlags (CWindowFlags x)

instance QFlagsC (CWindowFlags Int) where
 qFlags_toInt (QFlags (CWindowFlags x)) = x
 qFlags_fromInt x = QFlags (CWindowFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> WindowFlags -> IO ()) where
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

eWidget :: WindowType
eWidget
  = ieWindowType $ 0
instance QeWindow WindowType where
 eWindow
  = ieWindowType $ 1
eDialog :: WindowType
eDialog
  = ieWindowType $ 3
eSheet :: WindowType
eSheet
  = ieWindowType $ 5
eDrawer :: WindowType
eDrawer
  = ieWindowType $ 7
ePopup :: WindowType
ePopup
  = ieWindowType $ 9
eTool :: WindowType
eTool
  = ieWindowType $ 11
instance QeToolTip WindowType where
 eToolTip
  = ieWindowType $ 13
eSplashScreen :: WindowType
eSplashScreen
  = ieWindowType $ 15
eDesktop :: WindowType
eDesktop
  = ieWindowType $ 17
eSubWindow :: WindowType
eSubWindow
  = ieWindowType $ 18
eWindowType_Mask :: WindowType
eWindowType_Mask
  = ieWindowType $ 255
eMSWindowsFixedSizeDialogHint :: WindowType
eMSWindowsFixedSizeDialogHint
  = ieWindowType $ 256
eMSWindowsOwnDC :: WindowType
eMSWindowsOwnDC
  = ieWindowType $ 512
eX11BypassWindowManagerHint :: WindowType
eX11BypassWindowManagerHint
  = ieWindowType $ 1024
eFramelessWindowHint :: WindowType
eFramelessWindowHint
  = ieWindowType $ 2048
eWindowTitleHint :: WindowType
eWindowTitleHint
  = ieWindowType $ 4096
eWindowSystemMenuHint :: WindowType
eWindowSystemMenuHint
  = ieWindowType $ 8192
eWindowMinimizeButtonHint :: WindowType
eWindowMinimizeButtonHint
  = ieWindowType $ 16384
eWindowMaximizeButtonHint :: WindowType
eWindowMaximizeButtonHint
  = ieWindowType $ 32768
eWindowMinMaxButtonsHint :: WindowType
eWindowMinMaxButtonsHint
  = ieWindowType $ 49152
eWindowContextHelpButtonHint :: WindowType
eWindowContextHelpButtonHint
  = ieWindowType $ 65536
eWindowShadeButtonHint :: WindowType
eWindowShadeButtonHint
  = ieWindowType $ 131072
eWindowStaysOnTopHint :: WindowType
eWindowStaysOnTopHint
  = ieWindowType $ 262144
eCustomizeWindowHint :: WindowType
eCustomizeWindowHint
  = ieWindowType $ 33554432

fWidget :: WindowFlags
fWidget
  = ifWindowFlags $ 0
fWindow :: WindowFlags
fWindow
  = ifWindowFlags $ 1
fDialog :: WindowFlags
fDialog
  = ifWindowFlags $ 3
fSheet :: WindowFlags
fSheet
  = ifWindowFlags $ 5
fDrawer :: WindowFlags
fDrawer
  = ifWindowFlags $ 7
fPopup :: WindowFlags
fPopup
  = ifWindowFlags $ 9
fTool :: WindowFlags
fTool
  = ifWindowFlags $ 11
fToolTip :: WindowFlags
fToolTip
  = ifWindowFlags $ 13
fSplashScreen :: WindowFlags
fSplashScreen
  = ifWindowFlags $ 15
fDesktop :: WindowFlags
fDesktop
  = ifWindowFlags $ 17
fSubWindow :: WindowFlags
fSubWindow
  = ifWindowFlags $ 18
fWindowType_Mask :: WindowFlags
fWindowType_Mask
  = ifWindowFlags $ 255
fMSWindowsFixedSizeDialogHint :: WindowFlags
fMSWindowsFixedSizeDialogHint
  = ifWindowFlags $ 256
fMSWindowsOwnDC :: WindowFlags
fMSWindowsOwnDC
  = ifWindowFlags $ 512
fX11BypassWindowManagerHint :: WindowFlags
fX11BypassWindowManagerHint
  = ifWindowFlags $ 1024
fFramelessWindowHint :: WindowFlags
fFramelessWindowHint
  = ifWindowFlags $ 2048
fWindowTitleHint :: WindowFlags
fWindowTitleHint
  = ifWindowFlags $ 4096
fWindowSystemMenuHint :: WindowFlags
fWindowSystemMenuHint
  = ifWindowFlags $ 8192
fWindowMinimizeButtonHint :: WindowFlags
fWindowMinimizeButtonHint
  = ifWindowFlags $ 16384
fWindowMaximizeButtonHint :: WindowFlags
fWindowMaximizeButtonHint
  = ifWindowFlags $ 32768
fWindowMinMaxButtonsHint :: WindowFlags
fWindowMinMaxButtonsHint
  = ifWindowFlags $ 49152
fWindowContextHelpButtonHint :: WindowFlags
fWindowContextHelpButtonHint
  = ifWindowFlags $ 65536
fWindowShadeButtonHint :: WindowFlags
fWindowShadeButtonHint
  = ifWindowFlags $ 131072
fWindowStaysOnTopHint :: WindowFlags
fWindowStaysOnTopHint
  = ifWindowFlags $ 262144
fCustomizeWindowHint :: WindowFlags
fCustomizeWindowHint
  = ifWindowFlags $ 33554432

data CWindowState a = CWindowState a
type WindowState = QEnum(CWindowState Int)

ieWindowState :: Int -> WindowState
ieWindowState x = QEnum (CWindowState x)

instance QEnumC (CWindowState Int) where
 qEnum_toInt (QEnum (CWindowState x)) = x
 qEnum_fromInt x = QEnum (CWindowState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WindowState -> IO ()) where
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

data CWindowStates a = CWindowStates a
type WindowStates = QFlags(CWindowStates Int)

ifWindowStates :: Int -> WindowStates
ifWindowStates x = QFlags (CWindowStates x)

instance QFlagsC (CWindowStates Int) where
 qFlags_toInt (QFlags (CWindowStates x)) = x
 qFlags_fromInt x = QFlags (CWindowStates x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> WindowStates -> IO ()) where
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

eWindowNoState :: WindowState
eWindowNoState
  = ieWindowState $ 0
eWindowMinimized :: WindowState
eWindowMinimized
  = ieWindowState $ 1
eWindowMaximized :: WindowState
eWindowMaximized
  = ieWindowState $ 2
eWindowFullScreen :: WindowState
eWindowFullScreen
  = ieWindowState $ 4
eWindowActive :: WindowState
eWindowActive
  = ieWindowState $ 8

fWindowNoState :: WindowStates
fWindowNoState
  = ifWindowStates $ 0
fWindowMinimized :: WindowStates
fWindowMinimized
  = ifWindowStates $ 1
fWindowMaximized :: WindowStates
fWindowMaximized
  = ifWindowStates $ 2
fWindowFullScreen :: WindowStates
fWindowFullScreen
  = ifWindowStates $ 4
fWindowActive :: WindowStates
fWindowActive
  = ifWindowStates $ 8

data CWidgetAttribute a = CWidgetAttribute a
type WidgetAttribute = QEnum(CWidgetAttribute Int)

ieWidgetAttribute :: Int -> WidgetAttribute
ieWidgetAttribute x = QEnum (CWidgetAttribute x)

instance QEnumC (CWidgetAttribute Int) where
 qEnum_toInt (QEnum (CWidgetAttribute x)) = x
 qEnum_fromInt x = QEnum (CWidgetAttribute x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WidgetAttribute -> IO ()) where
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

eWA_Disabled :: WidgetAttribute
eWA_Disabled
  = ieWidgetAttribute $ 0
eWA_UnderMouse :: WidgetAttribute
eWA_UnderMouse
  = ieWidgetAttribute $ 1
eWA_MouseTracking :: WidgetAttribute
eWA_MouseTracking
  = ieWidgetAttribute $ 2
eWA_ContentsPropagated :: WidgetAttribute
eWA_ContentsPropagated
  = ieWidgetAttribute $ 3
eWA_OpaquePaintEvent :: WidgetAttribute
eWA_OpaquePaintEvent
  = ieWidgetAttribute $ 4
eWA_NoBackground :: WidgetAttribute
eWA_NoBackground
  = ieWidgetAttribute $ 4
eWA_StaticContents :: WidgetAttribute
eWA_StaticContents
  = ieWidgetAttribute $ 5
eWA_LaidOut :: WidgetAttribute
eWA_LaidOut
  = ieWidgetAttribute $ 7
eWA_PaintOnScreen :: WidgetAttribute
eWA_PaintOnScreen
  = ieWidgetAttribute $ 8
eWA_NoSystemBackground :: WidgetAttribute
eWA_NoSystemBackground
  = ieWidgetAttribute $ 9
eWA_UpdatesDisabled :: WidgetAttribute
eWA_UpdatesDisabled
  = ieWidgetAttribute $ 10
eWA_Mapped :: WidgetAttribute
eWA_Mapped
  = ieWidgetAttribute $ 11
eWA_MacNoClickThrough :: WidgetAttribute
eWA_MacNoClickThrough
  = ieWidgetAttribute $ 12
eWA_PaintOutsidePaintEvent :: WidgetAttribute
eWA_PaintOutsidePaintEvent
  = ieWidgetAttribute $ 13
eWA_InputMethodEnabled :: WidgetAttribute
eWA_InputMethodEnabled
  = ieWidgetAttribute $ 14
eWA_WState_Visible :: WidgetAttribute
eWA_WState_Visible
  = ieWidgetAttribute $ 15
eWA_WState_Hidden :: WidgetAttribute
eWA_WState_Hidden
  = ieWidgetAttribute $ 16
eWA_ForceDisabled :: WidgetAttribute
eWA_ForceDisabled
  = ieWidgetAttribute $ 32
eWA_KeyCompression :: WidgetAttribute
eWA_KeyCompression
  = ieWidgetAttribute $ 33
eWA_PendingMoveEvent :: WidgetAttribute
eWA_PendingMoveEvent
  = ieWidgetAttribute $ 34
eWA_PendingResizeEvent :: WidgetAttribute
eWA_PendingResizeEvent
  = ieWidgetAttribute $ 35
eWA_SetPalette :: WidgetAttribute
eWA_SetPalette
  = ieWidgetAttribute $ 36
eWA_SetFont :: WidgetAttribute
eWA_SetFont
  = ieWidgetAttribute $ 37
eWA_SetCursor :: WidgetAttribute
eWA_SetCursor
  = ieWidgetAttribute $ 38
eWA_NoChildEventsFromChildren :: WidgetAttribute
eWA_NoChildEventsFromChildren
  = ieWidgetAttribute $ 39
eWA_WindowModified :: WidgetAttribute
eWA_WindowModified
  = ieWidgetAttribute $ 41
eWA_Resized :: WidgetAttribute
eWA_Resized
  = ieWidgetAttribute $ 42
eWA_Moved :: WidgetAttribute
eWA_Moved
  = ieWidgetAttribute $ 43
eWA_PendingUpdate :: WidgetAttribute
eWA_PendingUpdate
  = ieWidgetAttribute $ 44
eWA_InvalidSize :: WidgetAttribute
eWA_InvalidSize
  = ieWidgetAttribute $ 45
eWA_MacBrushedMetal :: WidgetAttribute
eWA_MacBrushedMetal
  = ieWidgetAttribute $ 46
eWA_MacMetalStyle :: WidgetAttribute
eWA_MacMetalStyle
  = ieWidgetAttribute $ 46
eWA_CustomWhatsThis :: WidgetAttribute
eWA_CustomWhatsThis
  = ieWidgetAttribute $ 47
eWA_LayoutOnEntireRect :: WidgetAttribute
eWA_LayoutOnEntireRect
  = ieWidgetAttribute $ 48
eWA_OutsideWSRange :: WidgetAttribute
eWA_OutsideWSRange
  = ieWidgetAttribute $ 49
eWA_GrabbedShortcut :: WidgetAttribute
eWA_GrabbedShortcut
  = ieWidgetAttribute $ 50
eWA_TransparentForMouseEvents :: WidgetAttribute
eWA_TransparentForMouseEvents
  = ieWidgetAttribute $ 51
eWA_PaintUnclipped :: WidgetAttribute
eWA_PaintUnclipped
  = ieWidgetAttribute $ 52
eWA_SetWindowIcon :: WidgetAttribute
eWA_SetWindowIcon
  = ieWidgetAttribute $ 53
eWA_NoMouseReplay :: WidgetAttribute
eWA_NoMouseReplay
  = ieWidgetAttribute $ 54
eWA_DeleteOnClose :: WidgetAttribute
eWA_DeleteOnClose
  = ieWidgetAttribute $ 55
eWA_RightToLeft :: WidgetAttribute
eWA_RightToLeft
  = ieWidgetAttribute $ 56
eWA_SetLayoutDirection :: WidgetAttribute
eWA_SetLayoutDirection
  = ieWidgetAttribute $ 57
eWA_NoChildEventsForParent :: WidgetAttribute
eWA_NoChildEventsForParent
  = ieWidgetAttribute $ 58
eWA_ForceUpdatesDisabled :: WidgetAttribute
eWA_ForceUpdatesDisabled
  = ieWidgetAttribute $ 59
eWA_WState_Created :: WidgetAttribute
eWA_WState_Created
  = ieWidgetAttribute $ 60
eWA_WState_CompressKeys :: WidgetAttribute
eWA_WState_CompressKeys
  = ieWidgetAttribute $ 61
eWA_WState_InPaintEvent :: WidgetAttribute
eWA_WState_InPaintEvent
  = ieWidgetAttribute $ 62
eWA_WState_Reparented :: WidgetAttribute
eWA_WState_Reparented
  = ieWidgetAttribute $ 63
eWA_WState_ConfigPending :: WidgetAttribute
eWA_WState_ConfigPending
  = ieWidgetAttribute $ 64
eWA_WState_Polished :: WidgetAttribute
eWA_WState_Polished
  = ieWidgetAttribute $ 66
eWA_WState_DND :: WidgetAttribute
eWA_WState_DND
  = ieWidgetAttribute $ 67
eWA_WState_OwnSizePolicy :: WidgetAttribute
eWA_WState_OwnSizePolicy
  = ieWidgetAttribute $ 68
eWA_WState_ExplicitShowHide :: WidgetAttribute
eWA_WState_ExplicitShowHide
  = ieWidgetAttribute $ 69
eWA_ShowModal :: WidgetAttribute
eWA_ShowModal
  = ieWidgetAttribute $ 70
eWA_MouseNoMask :: WidgetAttribute
eWA_MouseNoMask
  = ieWidgetAttribute $ 71
eWA_GroupLeader :: WidgetAttribute
eWA_GroupLeader
  = ieWidgetAttribute $ 72
eWA_NoMousePropagation :: WidgetAttribute
eWA_NoMousePropagation
  = ieWidgetAttribute $ 73
eWA_Hover :: WidgetAttribute
eWA_Hover
  = ieWidgetAttribute $ 74
eWA_InputMethodTransparent :: WidgetAttribute
eWA_InputMethodTransparent
  = ieWidgetAttribute $ 75
eWA_QuitOnClose :: WidgetAttribute
eWA_QuitOnClose
  = ieWidgetAttribute $ 76
eWA_KeyboardFocusChange :: WidgetAttribute
eWA_KeyboardFocusChange
  = ieWidgetAttribute $ 77
eWA_AcceptDrops :: WidgetAttribute
eWA_AcceptDrops
  = ieWidgetAttribute $ 78
eWA_DropSiteRegistered :: WidgetAttribute
eWA_DropSiteRegistered
  = ieWidgetAttribute $ 79
eWA_ForceAcceptDrops :: WidgetAttribute
eWA_ForceAcceptDrops
  = ieWidgetAttribute $ 79
eWA_WindowPropagation :: WidgetAttribute
eWA_WindowPropagation
  = ieWidgetAttribute $ 80
eWA_NoX11EventCompression :: WidgetAttribute
eWA_NoX11EventCompression
  = ieWidgetAttribute $ 81
eWA_TintedBackground :: WidgetAttribute
eWA_TintedBackground
  = ieWidgetAttribute $ 82
eWA_X11OpenGLOverlay :: WidgetAttribute
eWA_X11OpenGLOverlay
  = ieWidgetAttribute $ 83
eWA_AlwaysShowToolTips :: WidgetAttribute
eWA_AlwaysShowToolTips
  = ieWidgetAttribute $ 84
eWA_MacOpaqueSizeGrip :: WidgetAttribute
eWA_MacOpaqueSizeGrip
  = ieWidgetAttribute $ 85
eWA_SetStyle :: WidgetAttribute
eWA_SetStyle
  = ieWidgetAttribute $ 86
eWA_SetLocale :: WidgetAttribute
eWA_SetLocale
  = ieWidgetAttribute $ 87
eWA_MacShowFocusRect :: WidgetAttribute
eWA_MacShowFocusRect
  = ieWidgetAttribute $ 88
eWA_MacNormalSize :: WidgetAttribute
eWA_MacNormalSize
  = ieWidgetAttribute $ 89
eWA_MacSmallSize :: WidgetAttribute
eWA_MacSmallSize
  = ieWidgetAttribute $ 90
eWA_MacMiniSize :: WidgetAttribute
eWA_MacMiniSize
  = ieWidgetAttribute $ 91
eWA_LayoutUsesWidgetRect :: WidgetAttribute
eWA_LayoutUsesWidgetRect
  = ieWidgetAttribute $ 92
eWA_StyledBackground :: WidgetAttribute
eWA_StyledBackground
  = ieWidgetAttribute $ 93
eWA_MSWindowsUseDirect3D :: WidgetAttribute
eWA_MSWindowsUseDirect3D
  = ieWidgetAttribute $ 94
eWA_CanHostQMdiSubWindowTitleBar :: WidgetAttribute
eWA_CanHostQMdiSubWindowTitleBar
  = ieWidgetAttribute $ 95
eWA_MacAlwaysShowToolWindow :: WidgetAttribute
eWA_MacAlwaysShowToolWindow
  = ieWidgetAttribute $ 96
eWA_StyleSheet :: WidgetAttribute
eWA_StyleSheet
  = ieWidgetAttribute $ 97
eWA_AttributeCount :: WidgetAttribute
eWA_AttributeCount
  = ieWidgetAttribute $ 98

data CApplicationAttribute a = CApplicationAttribute a
type ApplicationAttribute = QEnum(CApplicationAttribute Int)

ieApplicationAttribute :: Int -> ApplicationAttribute
ieApplicationAttribute x = QEnum (CApplicationAttribute x)

instance QEnumC (CApplicationAttribute Int) where
 qEnum_toInt (QEnum (CApplicationAttribute x)) = x
 qEnum_fromInt x = QEnum (CApplicationAttribute x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ApplicationAttribute -> IO ()) where
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

eAA_ImmediateWidgetCreation :: ApplicationAttribute
eAA_ImmediateWidgetCreation
  = ieApplicationAttribute $ 0
eAA_MSWindowsUseDirect3DByDefault :: ApplicationAttribute
eAA_MSWindowsUseDirect3DByDefault
  = ieApplicationAttribute $ 1
eAA_AttributeCount :: ApplicationAttribute
eAA_AttributeCount
  = ieApplicationAttribute $ 2

data CImageConversionFlag a = CImageConversionFlag a
type ImageConversionFlag = QEnum(CImageConversionFlag Int)

ieImageConversionFlag :: Int -> ImageConversionFlag
ieImageConversionFlag x = QEnum (CImageConversionFlag x)

instance QEnumC (CImageConversionFlag Int) where
 qEnum_toInt (QEnum (CImageConversionFlag x)) = x
 qEnum_fromInt x = QEnum (CImageConversionFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ImageConversionFlag -> IO ()) where
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

data CImageConversionFlags a = CImageConversionFlags a
type ImageConversionFlags = QFlags(CImageConversionFlags Int)

ifImageConversionFlags :: Int -> ImageConversionFlags
ifImageConversionFlags x = QFlags (CImageConversionFlags x)

instance QFlagsC (CImageConversionFlags Int) where
 qFlags_toInt (QFlags (CImageConversionFlags x)) = x
 qFlags_fromInt x = QFlags (CImageConversionFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ImageConversionFlags -> IO ()) where
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

eColorMode_Mask :: ImageConversionFlag
eColorMode_Mask
  = ieImageConversionFlag $ 3
eAutoColor :: ImageConversionFlag
eAutoColor
  = ieImageConversionFlag $ 0
eColorOnly :: ImageConversionFlag
eColorOnly
  = ieImageConversionFlag $ 3
eMonoOnly :: ImageConversionFlag
eMonoOnly
  = ieImageConversionFlag $ 2
eAlphaDither_Mask :: ImageConversionFlag
eAlphaDither_Mask
  = ieImageConversionFlag $ 12
eThresholdAlphaDither :: ImageConversionFlag
eThresholdAlphaDither
  = ieImageConversionFlag $ 0
eOrderedAlphaDither :: ImageConversionFlag
eOrderedAlphaDither
  = ieImageConversionFlag $ 4
eDiffuseAlphaDither :: ImageConversionFlag
eDiffuseAlphaDither
  = ieImageConversionFlag $ 8
eNoAlpha :: ImageConversionFlag
eNoAlpha
  = ieImageConversionFlag $ 12
eDither_Mask :: ImageConversionFlag
eDither_Mask
  = ieImageConversionFlag $ 48
eDiffuseDither :: ImageConversionFlag
eDiffuseDither
  = ieImageConversionFlag $ 0
eOrderedDither :: ImageConversionFlag
eOrderedDither
  = ieImageConversionFlag $ 16
eThresholdDither :: ImageConversionFlag
eThresholdDither
  = ieImageConversionFlag $ 32
eDitherMode_Mask :: ImageConversionFlag
eDitherMode_Mask
  = ieImageConversionFlag $ 192
eAutoDither :: ImageConversionFlag
eAutoDither
  = ieImageConversionFlag $ 0
ePreferDither :: ImageConversionFlag
ePreferDither
  = ieImageConversionFlag $ 64
eAvoidDither :: ImageConversionFlag
eAvoidDither
  = ieImageConversionFlag $ 128

fColorMode_Mask :: ImageConversionFlags
fColorMode_Mask
  = ifImageConversionFlags $ 3
fAutoColor :: ImageConversionFlags
fAutoColor
  = ifImageConversionFlags $ 0
fColorOnly :: ImageConversionFlags
fColorOnly
  = ifImageConversionFlags $ 3
fMonoOnly :: ImageConversionFlags
fMonoOnly
  = ifImageConversionFlags $ 2
fAlphaDither_Mask :: ImageConversionFlags
fAlphaDither_Mask
  = ifImageConversionFlags $ 12
fThresholdAlphaDither :: ImageConversionFlags
fThresholdAlphaDither
  = ifImageConversionFlags $ 0
fOrderedAlphaDither :: ImageConversionFlags
fOrderedAlphaDither
  = ifImageConversionFlags $ 4
fDiffuseAlphaDither :: ImageConversionFlags
fDiffuseAlphaDither
  = ifImageConversionFlags $ 8
fNoAlpha :: ImageConversionFlags
fNoAlpha
  = ifImageConversionFlags $ 12
fDither_Mask :: ImageConversionFlags
fDither_Mask
  = ifImageConversionFlags $ 48
fDiffuseDither :: ImageConversionFlags
fDiffuseDither
  = ifImageConversionFlags $ 0
fOrderedDither :: ImageConversionFlags
fOrderedDither
  = ifImageConversionFlags $ 16
fThresholdDither :: ImageConversionFlags
fThresholdDither
  = ifImageConversionFlags $ 32
fDitherMode_Mask :: ImageConversionFlags
fDitherMode_Mask
  = ifImageConversionFlags $ 192
fAutoDither :: ImageConversionFlags
fAutoDither
  = ifImageConversionFlags $ 0
fPreferDither :: ImageConversionFlags
fPreferDither
  = ifImageConversionFlags $ 64
fAvoidDither :: ImageConversionFlags
fAvoidDither
  = ifImageConversionFlags $ 128

data CBGMode a = CBGMode a
type BGMode = QEnum(CBGMode Int)

ieBGMode :: Int -> BGMode
ieBGMode x = QEnum (CBGMode x)

instance QEnumC (CBGMode Int) where
 qEnum_toInt (QEnum (CBGMode x)) = x
 qEnum_fromInt x = QEnum (CBGMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> BGMode -> IO ()) where
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

eTransparentMode :: BGMode
eTransparentMode
  = ieBGMode $ 0
eOpaqueMode :: BGMode
eOpaqueMode
  = ieBGMode $ 1

data CKey a = CKey a
type Key = QEnum(CKey Int)

ieKey :: Int -> Key
ieKey x = QEnum (CKey x)

instance QEnumC (CKey Int) where
 qEnum_toInt (QEnum (CKey x)) = x
 qEnum_fromInt x = QEnum (CKey x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Key -> IO ()) where
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

eKey_Escape :: Key
eKey_Escape
  = ieKey $ 16777216
eKey_Tab :: Key
eKey_Tab
  = ieKey $ 16777217
eKey_Backtab :: Key
eKey_Backtab
  = ieKey $ 16777218
eKey_Backspace :: Key
eKey_Backspace
  = ieKey $ 16777219
eKey_Return :: Key
eKey_Return
  = ieKey $ 16777220
eKey_Enter :: Key
eKey_Enter
  = ieKey $ 16777221
eKey_Insert :: Key
eKey_Insert
  = ieKey $ 16777222
eKey_Delete :: Key
eKey_Delete
  = ieKey $ 16777223
eKey_Pause :: Key
eKey_Pause
  = ieKey $ 16777224
eKey_Print :: Key
eKey_Print
  = ieKey $ 16777225
eKey_SysReq :: Key
eKey_SysReq
  = ieKey $ 16777226
eKey_Clear :: Key
eKey_Clear
  = ieKey $ 16777227
eKey_Home :: Key
eKey_Home
  = ieKey $ 16777232
eKey_End :: Key
eKey_End
  = ieKey $ 16777233
eKey_Left :: Key
eKey_Left
  = ieKey $ 16777234
eKey_Up :: Key
eKey_Up
  = ieKey $ 16777235
eKey_Right :: Key
eKey_Right
  = ieKey $ 16777236
eKey_Down :: Key
eKey_Down
  = ieKey $ 16777237
eKey_PageUp :: Key
eKey_PageUp
  = ieKey $ 16777238
eKey_PageDown :: Key
eKey_PageDown
  = ieKey $ 16777239
eKey_Shift :: Key
eKey_Shift
  = ieKey $ 16777248
eKey_Control :: Key
eKey_Control
  = ieKey $ 16777249
eKey_Meta :: Key
eKey_Meta
  = ieKey $ 16777250
eKey_Alt :: Key
eKey_Alt
  = ieKey $ 16777251
eKey_CapsLock :: Key
eKey_CapsLock
  = ieKey $ 16777252
eKey_NumLock :: Key
eKey_NumLock
  = ieKey $ 16777253
eKey_ScrollLock :: Key
eKey_ScrollLock
  = ieKey $ 16777254
eKey_F1 :: Key
eKey_F1
  = ieKey $ 16777264
eKey_F2 :: Key
eKey_F2
  = ieKey $ 16777265
eKey_F3 :: Key
eKey_F3
  = ieKey $ 16777266
eKey_F4 :: Key
eKey_F4
  = ieKey $ 16777267
eKey_F5 :: Key
eKey_F5
  = ieKey $ 16777268
eKey_F6 :: Key
eKey_F6
  = ieKey $ 16777269
eKey_F7 :: Key
eKey_F7
  = ieKey $ 16777270
eKey_F8 :: Key
eKey_F8
  = ieKey $ 16777271
eKey_F9 :: Key
eKey_F9
  = ieKey $ 16777272
eKey_F10 :: Key
eKey_F10
  = ieKey $ 16777273
eKey_F11 :: Key
eKey_F11
  = ieKey $ 16777274
eKey_F12 :: Key
eKey_F12
  = ieKey $ 16777275
eKey_F13 :: Key
eKey_F13
  = ieKey $ 16777276
eKey_F14 :: Key
eKey_F14
  = ieKey $ 16777277
eKey_F15 :: Key
eKey_F15
  = ieKey $ 16777278
eKey_F16 :: Key
eKey_F16
  = ieKey $ 16777279
eKey_F17 :: Key
eKey_F17
  = ieKey $ 16777280
eKey_F18 :: Key
eKey_F18
  = ieKey $ 16777281
eKey_F19 :: Key
eKey_F19
  = ieKey $ 16777282
eKey_F20 :: Key
eKey_F20
  = ieKey $ 16777283
eKey_F21 :: Key
eKey_F21
  = ieKey $ 16777284
eKey_F22 :: Key
eKey_F22
  = ieKey $ 16777285
eKey_F23 :: Key
eKey_F23
  = ieKey $ 16777286
eKey_F24 :: Key
eKey_F24
  = ieKey $ 16777287
eKey_F25 :: Key
eKey_F25
  = ieKey $ 16777288
eKey_F26 :: Key
eKey_F26
  = ieKey $ 16777289
eKey_F27 :: Key
eKey_F27
  = ieKey $ 16777290
eKey_F28 :: Key
eKey_F28
  = ieKey $ 16777291
eKey_F29 :: Key
eKey_F29
  = ieKey $ 16777292
eKey_F30 :: Key
eKey_F30
  = ieKey $ 16777293
eKey_F31 :: Key
eKey_F31
  = ieKey $ 16777294
eKey_F32 :: Key
eKey_F32
  = ieKey $ 16777295
eKey_F33 :: Key
eKey_F33
  = ieKey $ 16777296
eKey_F34 :: Key
eKey_F34
  = ieKey $ 16777297
eKey_F35 :: Key
eKey_F35
  = ieKey $ 16777298
eKey_Super_L :: Key
eKey_Super_L
  = ieKey $ 16777299
eKey_Super_R :: Key
eKey_Super_R
  = ieKey $ 16777300
eKey_Menu :: Key
eKey_Menu
  = ieKey $ 16777301
eKey_Hyper_L :: Key
eKey_Hyper_L
  = ieKey $ 16777302
eKey_Hyper_R :: Key
eKey_Hyper_R
  = ieKey $ 16777303
eKey_Help :: Key
eKey_Help
  = ieKey $ 16777304
eKey_Direction_L :: Key
eKey_Direction_L
  = ieKey $ 16777305
eKey_Direction_R :: Key
eKey_Direction_R
  = ieKey $ 16777312
eKey_Space :: Key
eKey_Space
  = ieKey $ 32
eKey_Any :: Key
eKey_Any
  = ieKey $ 32
eKey_Exclam :: Key
eKey_Exclam
  = ieKey $ 33
eKey_QuoteDbl :: Key
eKey_QuoteDbl
  = ieKey $ 34
eKey_NumberSign :: Key
eKey_NumberSign
  = ieKey $ 35
eKey_Dollar :: Key
eKey_Dollar
  = ieKey $ 36
eKey_Percent :: Key
eKey_Percent
  = ieKey $ 37
eKey_Ampersand :: Key
eKey_Ampersand
  = ieKey $ 38
eKey_Apostrophe :: Key
eKey_Apostrophe
  = ieKey $ 39
eKey_ParenLeft :: Key
eKey_ParenLeft
  = ieKey $ 40
eKey_ParenRight :: Key
eKey_ParenRight
  = ieKey $ 41
eKey_Asterisk :: Key
eKey_Asterisk
  = ieKey $ 42
eKey_Plus :: Key
eKey_Plus
  = ieKey $ 43
eKey_Comma :: Key
eKey_Comma
  = ieKey $ 44
eKey_Minus :: Key
eKey_Minus
  = ieKey $ 45
eKey_Period :: Key
eKey_Period
  = ieKey $ 46
eKey_Slash :: Key
eKey_Slash
  = ieKey $ 47
eKey_0 :: Key
eKey_0
  = ieKey $ 48
eKey_1 :: Key
eKey_1
  = ieKey $ 49
eKey_2 :: Key
eKey_2
  = ieKey $ 50
eKey_3 :: Key
eKey_3
  = ieKey $ 51
eKey_4 :: Key
eKey_4
  = ieKey $ 52
eKey_5 :: Key
eKey_5
  = ieKey $ 53
eKey_6 :: Key
eKey_6
  = ieKey $ 54
eKey_7 :: Key
eKey_7
  = ieKey $ 55
eKey_8 :: Key
eKey_8
  = ieKey $ 56
eKey_9 :: Key
eKey_9
  = ieKey $ 57
eKey_Colon :: Key
eKey_Colon
  = ieKey $ 58
eKey_Semicolon :: Key
eKey_Semicolon
  = ieKey $ 59
eKey_Less :: Key
eKey_Less
  = ieKey $ 60
eKey_Equal :: Key
eKey_Equal
  = ieKey $ 61
eKey_Greater :: Key
eKey_Greater
  = ieKey $ 62
eKey_Question :: Key
eKey_Question
  = ieKey $ 63
eKey_At :: Key
eKey_At
  = ieKey $ 64
eKey_A :: Key
eKey_A
  = ieKey $ 65
eKey_B :: Key
eKey_B
  = ieKey $ 66
eKey_C :: Key
eKey_C
  = ieKey $ 67
eKey_D :: Key
eKey_D
  = ieKey $ 68
eKey_E :: Key
eKey_E
  = ieKey $ 69
eKey_F :: Key
eKey_F
  = ieKey $ 70
eKey_G :: Key
eKey_G
  = ieKey $ 71
eKey_H :: Key
eKey_H
  = ieKey $ 72
eKey_I :: Key
eKey_I
  = ieKey $ 73
eKey_J :: Key
eKey_J
  = ieKey $ 74
eKey_K :: Key
eKey_K
  = ieKey $ 75
eKey_L :: Key
eKey_L
  = ieKey $ 76
eKey_M :: Key
eKey_M
  = ieKey $ 77
eKey_N :: Key
eKey_N
  = ieKey $ 78
eKey_O :: Key
eKey_O
  = ieKey $ 79
eKey_P :: Key
eKey_P
  = ieKey $ 80
eKey_Q :: Key
eKey_Q
  = ieKey $ 81
eKey_R :: Key
eKey_R
  = ieKey $ 82
eKey_S :: Key
eKey_S
  = ieKey $ 83
eKey_T :: Key
eKey_T
  = ieKey $ 84
eKey_U :: Key
eKey_U
  = ieKey $ 85
eKey_V :: Key
eKey_V
  = ieKey $ 86
eKey_W :: Key
eKey_W
  = ieKey $ 87
eKey_X :: Key
eKey_X
  = ieKey $ 88
eKey_Y :: Key
eKey_Y
  = ieKey $ 89
eKey_Z :: Key
eKey_Z
  = ieKey $ 90
eKey_BracketLeft :: Key
eKey_BracketLeft
  = ieKey $ 91
eKey_Backslash :: Key
eKey_Backslash
  = ieKey $ 92
eKey_BracketRight :: Key
eKey_BracketRight
  = ieKey $ 93
eKey_AsciiCircum :: Key
eKey_AsciiCircum
  = ieKey $ 94
eKey_Underscore :: Key
eKey_Underscore
  = ieKey $ 95
eKey_QuoteLeft :: Key
eKey_QuoteLeft
  = ieKey $ 96
eKey_BraceLeft :: Key
eKey_BraceLeft
  = ieKey $ 123
eKey_Bar :: Key
eKey_Bar
  = ieKey $ 124
eKey_BraceRight :: Key
eKey_BraceRight
  = ieKey $ 125
eKey_AsciiTilde :: Key
eKey_AsciiTilde
  = ieKey $ 126
eKey_nobreakspace :: Key
eKey_nobreakspace
  = ieKey $ 160
eKey_exclamdown :: Key
eKey_exclamdown
  = ieKey $ 161
eKey_cent :: Key
eKey_cent
  = ieKey $ 162
eKey_sterling :: Key
eKey_sterling
  = ieKey $ 163
eKey_currency :: Key
eKey_currency
  = ieKey $ 164
eKey_yen :: Key
eKey_yen
  = ieKey $ 165
eKey_brokenbar :: Key
eKey_brokenbar
  = ieKey $ 166
eKey_section :: Key
eKey_section
  = ieKey $ 167
eKey_diaeresis :: Key
eKey_diaeresis
  = ieKey $ 168
eKey_copyright :: Key
eKey_copyright
  = ieKey $ 169
eKey_ordfeminine :: Key
eKey_ordfeminine
  = ieKey $ 170
eKey_guillemotleft :: Key
eKey_guillemotleft
  = ieKey $ 171
eKey_notsign :: Key
eKey_notsign
  = ieKey $ 172
eKey_hyphen :: Key
eKey_hyphen
  = ieKey $ 173
eKey_registered :: Key
eKey_registered
  = ieKey $ 174
eKey_macron :: Key
eKey_macron
  = ieKey $ 175
eKey_degree :: Key
eKey_degree
  = ieKey $ 176
eKey_plusminus :: Key
eKey_plusminus
  = ieKey $ 177
eKey_twosuperior :: Key
eKey_twosuperior
  = ieKey $ 178
eKey_threesuperior :: Key
eKey_threesuperior
  = ieKey $ 179
eKey_acute :: Key
eKey_acute
  = ieKey $ 180
eKey_mu :: Key
eKey_mu
  = ieKey $ 181
eKey_paragraph :: Key
eKey_paragraph
  = ieKey $ 182
eKey_periodcentered :: Key
eKey_periodcentered
  = ieKey $ 183
eKey_cedilla :: Key
eKey_cedilla
  = ieKey $ 184
eKey_onesuperior :: Key
eKey_onesuperior
  = ieKey $ 185
eKey_masculine :: Key
eKey_masculine
  = ieKey $ 186
eKey_guillemotright :: Key
eKey_guillemotright
  = ieKey $ 187
eKey_onequarter :: Key
eKey_onequarter
  = ieKey $ 188
eKey_onehalf :: Key
eKey_onehalf
  = ieKey $ 189
eKey_threequarters :: Key
eKey_threequarters
  = ieKey $ 190
eKey_questiondown :: Key
eKey_questiondown
  = ieKey $ 191
eKey_Agrave :: Key
eKey_Agrave
  = ieKey $ 192
eKey_Aacute :: Key
eKey_Aacute
  = ieKey $ 193
eKey_Acircumflex :: Key
eKey_Acircumflex
  = ieKey $ 194
eKey_Atilde :: Key
eKey_Atilde
  = ieKey $ 195
eKey_Adiaeresis :: Key
eKey_Adiaeresis
  = ieKey $ 196
eKey_Aring :: Key
eKey_Aring
  = ieKey $ 197
eKey_AE :: Key
eKey_AE
  = ieKey $ 198
eKey_Ccedilla :: Key
eKey_Ccedilla
  = ieKey $ 199
eKey_Egrave :: Key
eKey_Egrave
  = ieKey $ 200
eKey_Eacute :: Key
eKey_Eacute
  = ieKey $ 201
eKey_Ecircumflex :: Key
eKey_Ecircumflex
  = ieKey $ 202
eKey_Ediaeresis :: Key
eKey_Ediaeresis
  = ieKey $ 203
eKey_Igrave :: Key
eKey_Igrave
  = ieKey $ 204
eKey_Iacute :: Key
eKey_Iacute
  = ieKey $ 205
eKey_Icircumflex :: Key
eKey_Icircumflex
  = ieKey $ 206
eKey_Idiaeresis :: Key
eKey_Idiaeresis
  = ieKey $ 207
eKey_ETH :: Key
eKey_ETH
  = ieKey $ 208
eKey_Ntilde :: Key
eKey_Ntilde
  = ieKey $ 209
eKey_Ograve :: Key
eKey_Ograve
  = ieKey $ 210
eKey_Oacute :: Key
eKey_Oacute
  = ieKey $ 211
eKey_Ocircumflex :: Key
eKey_Ocircumflex
  = ieKey $ 212
eKey_Otilde :: Key
eKey_Otilde
  = ieKey $ 213
eKey_Odiaeresis :: Key
eKey_Odiaeresis
  = ieKey $ 214
eKey_multiply :: Key
eKey_multiply
  = ieKey $ 215
eKey_Ooblique :: Key
eKey_Ooblique
  = ieKey $ 216
eKey_Ugrave :: Key
eKey_Ugrave
  = ieKey $ 217
eKey_Uacute :: Key
eKey_Uacute
  = ieKey $ 218
eKey_Ucircumflex :: Key
eKey_Ucircumflex
  = ieKey $ 219
eKey_Udiaeresis :: Key
eKey_Udiaeresis
  = ieKey $ 220
eKey_Yacute :: Key
eKey_Yacute
  = ieKey $ 221
eKey_THORN :: Key
eKey_THORN
  = ieKey $ 222
eKey_ssharp :: Key
eKey_ssharp
  = ieKey $ 223
eKey_division :: Key
eKey_division
  = ieKey $ 247
eKey_ydiaeresis :: Key
eKey_ydiaeresis
  = ieKey $ 255
eKey_AltGr :: Key
eKey_AltGr
  = ieKey $ 16781571
eKey_Multi_key :: Key
eKey_Multi_key
  = ieKey $ 16781600
eKey_Codeinput :: Key
eKey_Codeinput
  = ieKey $ 16781623
eKey_SingleCandidate :: Key
eKey_SingleCandidate
  = ieKey $ 16781628
eKey_MultipleCandidate :: Key
eKey_MultipleCandidate
  = ieKey $ 16781629
eKey_PreviousCandidate :: Key
eKey_PreviousCandidate
  = ieKey $ 16781630
eKey_Mode_switch :: Key
eKey_Mode_switch
  = ieKey $ 16781694
eKey_Kanji :: Key
eKey_Kanji
  = ieKey $ 16781601
eKey_Muhenkan :: Key
eKey_Muhenkan
  = ieKey $ 16781602
eKey_Henkan :: Key
eKey_Henkan
  = ieKey $ 16781603
eKey_Romaji :: Key
eKey_Romaji
  = ieKey $ 16781604
eKey_Hiragana :: Key
eKey_Hiragana
  = ieKey $ 16781605
eKey_Katakana :: Key
eKey_Katakana
  = ieKey $ 16781606
eKey_Hiragana_Katakana :: Key
eKey_Hiragana_Katakana
  = ieKey $ 16781607
eKey_Zenkaku :: Key
eKey_Zenkaku
  = ieKey $ 16781608
eKey_Hankaku :: Key
eKey_Hankaku
  = ieKey $ 16781609
eKey_Zenkaku_Hankaku :: Key
eKey_Zenkaku_Hankaku
  = ieKey $ 16781610
eKey_Touroku :: Key
eKey_Touroku
  = ieKey $ 16781611
eKey_Massyo :: Key
eKey_Massyo
  = ieKey $ 16781612
eKey_Kana_Lock :: Key
eKey_Kana_Lock
  = ieKey $ 16781613
eKey_Kana_Shift :: Key
eKey_Kana_Shift
  = ieKey $ 16781614
eKey_Eisu_Shift :: Key
eKey_Eisu_Shift
  = ieKey $ 16781615
eKey_Eisu_toggle :: Key
eKey_Eisu_toggle
  = ieKey $ 16781616
eKey_Hangul :: Key
eKey_Hangul
  = ieKey $ 16781617
eKey_Hangul_Start :: Key
eKey_Hangul_Start
  = ieKey $ 16781618
eKey_Hangul_End :: Key
eKey_Hangul_End
  = ieKey $ 16781619
eKey_Hangul_Hanja :: Key
eKey_Hangul_Hanja
  = ieKey $ 16781620
eKey_Hangul_Jamo :: Key
eKey_Hangul_Jamo
  = ieKey $ 16781621
eKey_Hangul_Romaja :: Key
eKey_Hangul_Romaja
  = ieKey $ 16781622
eKey_Hangul_Jeonja :: Key
eKey_Hangul_Jeonja
  = ieKey $ 16781624
eKey_Hangul_Banja :: Key
eKey_Hangul_Banja
  = ieKey $ 16781625
eKey_Hangul_PreHanja :: Key
eKey_Hangul_PreHanja
  = ieKey $ 16781626
eKey_Hangul_PostHanja :: Key
eKey_Hangul_PostHanja
  = ieKey $ 16781627
eKey_Hangul_Special :: Key
eKey_Hangul_Special
  = ieKey $ 16781631
eKey_Dead_Grave :: Key
eKey_Dead_Grave
  = ieKey $ 16781904
eKey_Dead_Acute :: Key
eKey_Dead_Acute
  = ieKey $ 16781905
eKey_Dead_Circumflex :: Key
eKey_Dead_Circumflex
  = ieKey $ 16781906
eKey_Dead_Tilde :: Key
eKey_Dead_Tilde
  = ieKey $ 16781907
eKey_Dead_Macron :: Key
eKey_Dead_Macron
  = ieKey $ 16781908
eKey_Dead_Breve :: Key
eKey_Dead_Breve
  = ieKey $ 16781909
eKey_Dead_Abovedot :: Key
eKey_Dead_Abovedot
  = ieKey $ 16781910
eKey_Dead_Diaeresis :: Key
eKey_Dead_Diaeresis
  = ieKey $ 16781911
eKey_Dead_Abovering :: Key
eKey_Dead_Abovering
  = ieKey $ 16781912
eKey_Dead_Doubleacute :: Key
eKey_Dead_Doubleacute
  = ieKey $ 16781913
eKey_Dead_Caron :: Key
eKey_Dead_Caron
  = ieKey $ 16781914
eKey_Dead_Cedilla :: Key
eKey_Dead_Cedilla
  = ieKey $ 16781915
eKey_Dead_Ogonek :: Key
eKey_Dead_Ogonek
  = ieKey $ 16781916
eKey_Dead_Iota :: Key
eKey_Dead_Iota
  = ieKey $ 16781917
eKey_Dead_Voiced_Sound :: Key
eKey_Dead_Voiced_Sound
  = ieKey $ 16781918
eKey_Dead_Semivoiced_Sound :: Key
eKey_Dead_Semivoiced_Sound
  = ieKey $ 16781919
eKey_Dead_Belowdot :: Key
eKey_Dead_Belowdot
  = ieKey $ 16781920
eKey_Dead_Hook :: Key
eKey_Dead_Hook
  = ieKey $ 16781921
eKey_Dead_Horn :: Key
eKey_Dead_Horn
  = ieKey $ 16781922
eKey_Back :: Key
eKey_Back
  = ieKey $ 16777313
eKey_Forward :: Key
eKey_Forward
  = ieKey $ 16777314
eKey_Stop :: Key
eKey_Stop
  = ieKey $ 16777315
eKey_Refresh :: Key
eKey_Refresh
  = ieKey $ 16777316
eKey_VolumeDown :: Key
eKey_VolumeDown
  = ieKey $ 16777328
eKey_VolumeMute :: Key
eKey_VolumeMute
  = ieKey $ 16777329
eKey_VolumeUp :: Key
eKey_VolumeUp
  = ieKey $ 16777330
eKey_BassBoost :: Key
eKey_BassBoost
  = ieKey $ 16777331
eKey_BassUp :: Key
eKey_BassUp
  = ieKey $ 16777332
eKey_BassDown :: Key
eKey_BassDown
  = ieKey $ 16777333
eKey_TrebleUp :: Key
eKey_TrebleUp
  = ieKey $ 16777334
eKey_TrebleDown :: Key
eKey_TrebleDown
  = ieKey $ 16777335
eKey_MediaPlay :: Key
eKey_MediaPlay
  = ieKey $ 16777344
eKey_MediaStop :: Key
eKey_MediaStop
  = ieKey $ 16777345
eKey_MediaPrevious :: Key
eKey_MediaPrevious
  = ieKey $ 16777346
eKey_MediaNext :: Key
eKey_MediaNext
  = ieKey $ 16777347
eKey_MediaRecord :: Key
eKey_MediaRecord
  = ieKey $ 16777348
eKey_HomePage :: Key
eKey_HomePage
  = ieKey $ 16777360
eKey_Favorites :: Key
eKey_Favorites
  = ieKey $ 16777361
eKey_Search :: Key
eKey_Search
  = ieKey $ 16777362
eKey_Standby :: Key
eKey_Standby
  = ieKey $ 16777363
eKey_OpenUrl :: Key
eKey_OpenUrl
  = ieKey $ 16777364
eKey_LaunchMail :: Key
eKey_LaunchMail
  = ieKey $ 16777376
eKey_LaunchMedia :: Key
eKey_LaunchMedia
  = ieKey $ 16777377
eKey_Launch0 :: Key
eKey_Launch0
  = ieKey $ 16777378
eKey_Launch1 :: Key
eKey_Launch1
  = ieKey $ 16777379
eKey_Launch2 :: Key
eKey_Launch2
  = ieKey $ 16777380
eKey_Launch3 :: Key
eKey_Launch3
  = ieKey $ 16777381
eKey_Launch4 :: Key
eKey_Launch4
  = ieKey $ 16777382
eKey_Launch5 :: Key
eKey_Launch5
  = ieKey $ 16777383
eKey_Launch6 :: Key
eKey_Launch6
  = ieKey $ 16777384
eKey_Launch7 :: Key
eKey_Launch7
  = ieKey $ 16777385
eKey_Launch8 :: Key
eKey_Launch8
  = ieKey $ 16777386
eKey_Launch9 :: Key
eKey_Launch9
  = ieKey $ 16777387
eKey_LaunchA :: Key
eKey_LaunchA
  = ieKey $ 16777388
eKey_LaunchB :: Key
eKey_LaunchB
  = ieKey $ 16777389
eKey_LaunchC :: Key
eKey_LaunchC
  = ieKey $ 16777390
eKey_LaunchD :: Key
eKey_LaunchD
  = ieKey $ 16777391
eKey_LaunchE :: Key
eKey_LaunchE
  = ieKey $ 16777392
eKey_LaunchF :: Key
eKey_LaunchF
  = ieKey $ 16777393
eKey_MediaLast :: Key
eKey_MediaLast
  = ieKey $ 16842751
eKey_Select :: Key
eKey_Select
  = ieKey $ 16842752
eKey_Yes :: Key
eKey_Yes
  = ieKey $ 16842753
eKey_No :: Key
eKey_No
  = ieKey $ 16842754
eKey_Cancel :: Key
eKey_Cancel
  = ieKey $ 16908289
eKey_Printer :: Key
eKey_Printer
  = ieKey $ 16908290
eKey_Execute :: Key
eKey_Execute
  = ieKey $ 16908291
eKey_Sleep :: Key
eKey_Sleep
  = ieKey $ 16908292
eKey_Play :: Key
eKey_Play
  = ieKey $ 16908293
eKey_Zoom :: Key
eKey_Zoom
  = ieKey $ 16908294
eKey_Context1 :: Key
eKey_Context1
  = ieKey $ 17825792
eKey_Context2 :: Key
eKey_Context2
  = ieKey $ 17825793
eKey_Context3 :: Key
eKey_Context3
  = ieKey $ 17825794
eKey_Context4 :: Key
eKey_Context4
  = ieKey $ 17825795
eKey_Call :: Key
eKey_Call
  = ieKey $ 17825796
eKey_Hangup :: Key
eKey_Hangup
  = ieKey $ 17825797
eKey_Flip :: Key
eKey_Flip
  = ieKey $ 17825798
eKey_unknown :: Key
eKey_unknown
  = ieKey $ 33554431

data CArrowType a = CArrowType a
type ArrowType = QEnum(CArrowType Int)

ieArrowType :: Int -> ArrowType
ieArrowType x = QEnum (CArrowType x)

instance QEnumC (CArrowType Int) where
 qEnum_toInt (QEnum (CArrowType x)) = x
 qEnum_fromInt x = QEnum (CArrowType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ArrowType -> IO ()) where
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

eNoArrow :: ArrowType
eNoArrow
  = ieArrowType $ 0
eUpArrow :: ArrowType
eUpArrow
  = ieArrowType $ 1
eDownArrow :: ArrowType
eDownArrow
  = ieArrowType $ 2
eLeftArrow :: ArrowType
eLeftArrow
  = ieArrowType $ 3
eRightArrow :: ArrowType
eRightArrow
  = ieArrowType $ 4

data CPenStyle a = CPenStyle a
type PenStyle = QEnum(CPenStyle Int)

iePenStyle :: Int -> PenStyle
iePenStyle x = QEnum (CPenStyle x)

instance QEnumC (CPenStyle Int) where
 qEnum_toInt (QEnum (CPenStyle x)) = x
 qEnum_fromInt x = QEnum (CPenStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PenStyle -> IO ()) where
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

eNoPen :: PenStyle
eNoPen
  = iePenStyle $ 0
eSolidLine :: PenStyle
eSolidLine
  = iePenStyle $ 1
eDashLine :: PenStyle
eDashLine
  = iePenStyle $ 2
instance QeDotLine PenStyle where
 eDotLine
  = iePenStyle $ 3
instance QeDashDotLine PenStyle where
 eDashDotLine
  = iePenStyle $ 4
instance QeDashDotDotLine PenStyle where
 eDashDotDotLine
  = iePenStyle $ 5
eCustomDashLine :: PenStyle
eCustomDashLine
  = iePenStyle $ 6
eMPenStyle :: PenStyle
eMPenStyle
  = iePenStyle $ 15

data CPenCapStyle a = CPenCapStyle a
type PenCapStyle = QEnum(CPenCapStyle Int)

iePenCapStyle :: Int -> PenCapStyle
iePenCapStyle x = QEnum (CPenCapStyle x)

instance QEnumC (CPenCapStyle Int) where
 qEnum_toInt (QEnum (CPenCapStyle x)) = x
 qEnum_fromInt x = QEnum (CPenCapStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PenCapStyle -> IO ()) where
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

eFlatCap :: PenCapStyle
eFlatCap
  = iePenCapStyle $ 0
eSquareCap :: PenCapStyle
eSquareCap
  = iePenCapStyle $ 16
eRoundCap :: PenCapStyle
eRoundCap
  = iePenCapStyle $ 32
eMPenCapStyle :: PenCapStyle
eMPenCapStyle
  = iePenCapStyle $ 48

data CPenJoinStyle a = CPenJoinStyle a
type PenJoinStyle = QEnum(CPenJoinStyle Int)

iePenJoinStyle :: Int -> PenJoinStyle
iePenJoinStyle x = QEnum (CPenJoinStyle x)

instance QEnumC (CPenJoinStyle Int) where
 qEnum_toInt (QEnum (CPenJoinStyle x)) = x
 qEnum_fromInt x = QEnum (CPenJoinStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PenJoinStyle -> IO ()) where
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

eMiterJoin :: PenJoinStyle
eMiterJoin
  = iePenJoinStyle $ 0
eBevelJoin :: PenJoinStyle
eBevelJoin
  = iePenJoinStyle $ 64
eRoundJoin :: PenJoinStyle
eRoundJoin
  = iePenJoinStyle $ 128
eSvgMiterJoin :: PenJoinStyle
eSvgMiterJoin
  = iePenJoinStyle $ 256
eMPenJoinStyle :: PenJoinStyle
eMPenJoinStyle
  = iePenJoinStyle $ 448

data CBrushStyle a = CBrushStyle a
type BrushStyle = QEnum(CBrushStyle Int)

ieBrushStyle :: Int -> BrushStyle
ieBrushStyle x = QEnum (CBrushStyle x)

instance QEnumC (CBrushStyle Int) where
 qEnum_toInt (QEnum (CBrushStyle x)) = x
 qEnum_fromInt x = QEnum (CBrushStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> BrushStyle -> IO ()) where
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

eNoBrush :: BrushStyle
eNoBrush
  = ieBrushStyle $ 0
eSolidPattern :: BrushStyle
eSolidPattern
  = ieBrushStyle $ 1
eDense1Pattern :: BrushStyle
eDense1Pattern
  = ieBrushStyle $ 2
eDense2Pattern :: BrushStyle
eDense2Pattern
  = ieBrushStyle $ 3
eDense3Pattern :: BrushStyle
eDense3Pattern
  = ieBrushStyle $ 4
eDense4Pattern :: BrushStyle
eDense4Pattern
  = ieBrushStyle $ 5
eDense5Pattern :: BrushStyle
eDense5Pattern
  = ieBrushStyle $ 6
eDense6Pattern :: BrushStyle
eDense6Pattern
  = ieBrushStyle $ 7
eDense7Pattern :: BrushStyle
eDense7Pattern
  = ieBrushStyle $ 8
eHorPattern :: BrushStyle
eHorPattern
  = ieBrushStyle $ 9
eVerPattern :: BrushStyle
eVerPattern
  = ieBrushStyle $ 10
eCrossPattern :: BrushStyle
eCrossPattern
  = ieBrushStyle $ 11
eBDiagPattern :: BrushStyle
eBDiagPattern
  = ieBrushStyle $ 12
eFDiagPattern :: BrushStyle
eFDiagPattern
  = ieBrushStyle $ 13
eDiagCrossPattern :: BrushStyle
eDiagCrossPattern
  = ieBrushStyle $ 14
eLinearGradientPattern :: BrushStyle
eLinearGradientPattern
  = ieBrushStyle $ 15
eRadialGradientPattern :: BrushStyle
eRadialGradientPattern
  = ieBrushStyle $ 16
eConicalGradientPattern :: BrushStyle
eConicalGradientPattern
  = ieBrushStyle $ 17
eTexturePattern :: BrushStyle
eTexturePattern
  = ieBrushStyle $ 24

data CUIEffect a = CUIEffect a
type UIEffect = QEnum(CUIEffect Int)

ieUIEffect :: Int -> UIEffect
ieUIEffect x = QEnum (CUIEffect x)

instance QEnumC (CUIEffect Int) where
 qEnum_toInt (QEnum (CUIEffect x)) = x
 qEnum_fromInt x = QEnum (CUIEffect x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> UIEffect -> IO ()) where
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

eUI_General :: UIEffect
eUI_General
  = ieUIEffect $ 0
eUI_AnimateMenu :: UIEffect
eUI_AnimateMenu
  = ieUIEffect $ 1
eUI_FadeMenu :: UIEffect
eUI_FadeMenu
  = ieUIEffect $ 2
eUI_AnimateCombo :: UIEffect
eUI_AnimateCombo
  = ieUIEffect $ 3
eUI_AnimateTooltip :: UIEffect
eUI_AnimateTooltip
  = ieUIEffect $ 4
eUI_FadeTooltip :: UIEffect
eUI_FadeTooltip
  = ieUIEffect $ 5
eUI_AnimateToolBox :: UIEffect
eUI_AnimateToolBox
  = ieUIEffect $ 6

data CCursorShape a = CCursorShape a
type CursorShape = QEnum(CCursorShape Int)

ieCursorShape :: Int -> CursorShape
ieCursorShape x = QEnum (CCursorShape x)

instance QEnumC (CCursorShape Int) where
 qEnum_toInt (QEnum (CCursorShape x)) = x
 qEnum_fromInt x = QEnum (CCursorShape x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CursorShape -> IO ()) where
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

eArrowCursor :: CursorShape
eArrowCursor
  = ieCursorShape $ 0
eUpArrowCursor :: CursorShape
eUpArrowCursor
  = ieCursorShape $ 1
eCrossCursor :: CursorShape
eCrossCursor
  = ieCursorShape $ 2
eWaitCursor :: CursorShape
eWaitCursor
  = ieCursorShape $ 3
eIBeamCursor :: CursorShape
eIBeamCursor
  = ieCursorShape $ 4
eSizeVerCursor :: CursorShape
eSizeVerCursor
  = ieCursorShape $ 5
eSizeHorCursor :: CursorShape
eSizeHorCursor
  = ieCursorShape $ 6
eSizeBDiagCursor :: CursorShape
eSizeBDiagCursor
  = ieCursorShape $ 7
eSizeFDiagCursor :: CursorShape
eSizeFDiagCursor
  = ieCursorShape $ 8
eSizeAllCursor :: CursorShape
eSizeAllCursor
  = ieCursorShape $ 9
eBlankCursor :: CursorShape
eBlankCursor
  = ieCursorShape $ 10
eSplitVCursor :: CursorShape
eSplitVCursor
  = ieCursorShape $ 11
eSplitHCursor :: CursorShape
eSplitHCursor
  = ieCursorShape $ 12
ePointingHandCursor :: CursorShape
ePointingHandCursor
  = ieCursorShape $ 13
eForbiddenCursor :: CursorShape
eForbiddenCursor
  = ieCursorShape $ 14
eWhatsThisCursor :: CursorShape
eWhatsThisCursor
  = ieCursorShape $ 15
eBusyCursor :: CursorShape
eBusyCursor
  = ieCursorShape $ 16
eOpenHandCursor :: CursorShape
eOpenHandCursor
  = ieCursorShape $ 17
eClosedHandCursor :: CursorShape
eClosedHandCursor
  = ieCursorShape $ 18
eLastCursor :: CursorShape
eLastCursor
  = ieCursorShape $ 18
eBitmapCursor :: CursorShape
eBitmapCursor
  = ieCursorShape $ 24
eCustomCursor :: CursorShape
eCustomCursor
  = ieCursorShape $ 25

data CTextFormat a = CTextFormat a
type TextFormat = QEnum(CTextFormat Int)

ieTextFormat :: Int -> TextFormat
ieTextFormat x = QEnum (CTextFormat x)

instance QEnumC (CTextFormat Int) where
 qEnum_toInt (QEnum (CTextFormat x)) = x
 qEnum_fromInt x = QEnum (CTextFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TextFormat -> IO ()) where
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

ePlainText :: TextFormat
ePlainText
  = ieTextFormat $ 0
eRichText :: TextFormat
eRichText
  = ieTextFormat $ 1
eAutoText :: TextFormat
eAutoText
  = ieTextFormat $ 2
eLogText :: TextFormat
eLogText
  = ieTextFormat $ 3

data CAspectRatioMode a = CAspectRatioMode a
type AspectRatioMode = QEnum(CAspectRatioMode Int)

ieAspectRatioMode :: Int -> AspectRatioMode
ieAspectRatioMode x = QEnum (CAspectRatioMode x)

instance QEnumC (CAspectRatioMode Int) where
 qEnum_toInt (QEnum (CAspectRatioMode x)) = x
 qEnum_fromInt x = QEnum (CAspectRatioMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> AspectRatioMode -> IO ()) where
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

eIgnoreAspectRatio :: AspectRatioMode
eIgnoreAspectRatio
  = ieAspectRatioMode $ 0
eKeepAspectRatio :: AspectRatioMode
eKeepAspectRatio
  = ieAspectRatioMode $ 1
eKeepAspectRatioByExpanding :: AspectRatioMode
eKeepAspectRatioByExpanding
  = ieAspectRatioMode $ 2

data CAnchorAttribute a = CAnchorAttribute a
type AnchorAttribute = QEnum(CAnchorAttribute Int)

ieAnchorAttribute :: Int -> AnchorAttribute
ieAnchorAttribute x = QEnum (CAnchorAttribute x)

instance QEnumC (CAnchorAttribute Int) where
 qEnum_toInt (QEnum (CAnchorAttribute x)) = x
 qEnum_fromInt x = QEnum (CAnchorAttribute x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> AnchorAttribute -> IO ()) where
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

instance QeAnchorName AnchorAttribute where
 eAnchorName
  = ieAnchorAttribute $ 0
instance QeAnchorHref AnchorAttribute where
 eAnchorHref
  = ieAnchorAttribute $ 1

data CDockWidgetArea a = CDockWidgetArea a
type DockWidgetArea = QEnum(CDockWidgetArea Int)

ieDockWidgetArea :: Int -> DockWidgetArea
ieDockWidgetArea x = QEnum (CDockWidgetArea x)

instance QEnumC (CDockWidgetArea Int) where
 qEnum_toInt (QEnum (CDockWidgetArea x)) = x
 qEnum_fromInt x = QEnum (CDockWidgetArea x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DockWidgetArea -> IO ()) where
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

data CDockWidgetAreas a = CDockWidgetAreas a
type DockWidgetAreas = QFlags(CDockWidgetAreas Int)

ifDockWidgetAreas :: Int -> DockWidgetAreas
ifDockWidgetAreas x = QFlags (CDockWidgetAreas x)

instance QFlagsC (CDockWidgetAreas Int) where
 qFlags_toInt (QFlags (CDockWidgetAreas x)) = x
 qFlags_fromInt x = QFlags (CDockWidgetAreas x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> DockWidgetAreas -> IO ()) where
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

eLeftDockWidgetArea :: DockWidgetArea
eLeftDockWidgetArea
  = ieDockWidgetArea $ 1
eRightDockWidgetArea :: DockWidgetArea
eRightDockWidgetArea
  = ieDockWidgetArea $ 2
eTopDockWidgetArea :: DockWidgetArea
eTopDockWidgetArea
  = ieDockWidgetArea $ 4
eBottomDockWidgetArea :: DockWidgetArea
eBottomDockWidgetArea
  = ieDockWidgetArea $ 8
eDockWidgetArea_Mask :: DockWidgetArea
eDockWidgetArea_Mask
  = ieDockWidgetArea $ 15
eAllDockWidgetAreas :: DockWidgetArea
eAllDockWidgetAreas
  = ieDockWidgetArea $ 15
eNoDockWidgetArea :: DockWidgetArea
eNoDockWidgetArea
  = ieDockWidgetArea $ 0

fLeftDockWidgetArea :: DockWidgetAreas
fLeftDockWidgetArea
  = ifDockWidgetAreas $ 1
fRightDockWidgetArea :: DockWidgetAreas
fRightDockWidgetArea
  = ifDockWidgetAreas $ 2
fTopDockWidgetArea :: DockWidgetAreas
fTopDockWidgetArea
  = ifDockWidgetAreas $ 4
fBottomDockWidgetArea :: DockWidgetAreas
fBottomDockWidgetArea
  = ifDockWidgetAreas $ 8
fDockWidgetArea_Mask :: DockWidgetAreas
fDockWidgetArea_Mask
  = ifDockWidgetAreas $ 15
fAllDockWidgetAreas :: DockWidgetAreas
fAllDockWidgetAreas
  = ifDockWidgetAreas $ 15
fNoDockWidgetArea :: DockWidgetAreas
fNoDockWidgetArea
  = ifDockWidgetAreas $ 0

data CDockWidgetAreaSizes a = CDockWidgetAreaSizes a
type DockWidgetAreaSizes = QEnum(CDockWidgetAreaSizes Int)

ieDockWidgetAreaSizes :: Int -> DockWidgetAreaSizes
ieDockWidgetAreaSizes x = QEnum (CDockWidgetAreaSizes x)

instance QEnumC (CDockWidgetAreaSizes Int) where
 qEnum_toInt (QEnum (CDockWidgetAreaSizes x)) = x
 qEnum_fromInt x = QEnum (CDockWidgetAreaSizes x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DockWidgetAreaSizes -> IO ()) where
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

eNDockWidgetAreas :: DockWidgetAreaSizes
eNDockWidgetAreas
  = ieDockWidgetAreaSizes $ 4

data CToolBarArea a = CToolBarArea a
type ToolBarArea = QEnum(CToolBarArea Int)

ieToolBarArea :: Int -> ToolBarArea
ieToolBarArea x = QEnum (CToolBarArea x)

instance QEnumC (CToolBarArea Int) where
 qEnum_toInt (QEnum (CToolBarArea x)) = x
 qEnum_fromInt x = QEnum (CToolBarArea x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ToolBarArea -> IO ()) where
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

data CToolBarAreas a = CToolBarAreas a
type ToolBarAreas = QFlags(CToolBarAreas Int)

ifToolBarAreas :: Int -> ToolBarAreas
ifToolBarAreas x = QFlags (CToolBarAreas x)

instance QFlagsC (CToolBarAreas Int) where
 qFlags_toInt (QFlags (CToolBarAreas x)) = x
 qFlags_fromInt x = QFlags (CToolBarAreas x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ToolBarAreas -> IO ()) where
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

eLeftToolBarArea :: ToolBarArea
eLeftToolBarArea
  = ieToolBarArea $ 1
eRightToolBarArea :: ToolBarArea
eRightToolBarArea
  = ieToolBarArea $ 2
eTopToolBarArea :: ToolBarArea
eTopToolBarArea
  = ieToolBarArea $ 4
eBottomToolBarArea :: ToolBarArea
eBottomToolBarArea
  = ieToolBarArea $ 8
eToolBarArea_Mask :: ToolBarArea
eToolBarArea_Mask
  = ieToolBarArea $ 15
eAllToolBarAreas :: ToolBarArea
eAllToolBarAreas
  = ieToolBarArea $ 15
eNoToolBarArea :: ToolBarArea
eNoToolBarArea
  = ieToolBarArea $ 0

fLeftToolBarArea :: ToolBarAreas
fLeftToolBarArea
  = ifToolBarAreas $ 1
fRightToolBarArea :: ToolBarAreas
fRightToolBarArea
  = ifToolBarAreas $ 2
fTopToolBarArea :: ToolBarAreas
fTopToolBarArea
  = ifToolBarAreas $ 4
fBottomToolBarArea :: ToolBarAreas
fBottomToolBarArea
  = ifToolBarAreas $ 8
fToolBarArea_Mask :: ToolBarAreas
fToolBarArea_Mask
  = ifToolBarAreas $ 15
fAllToolBarAreas :: ToolBarAreas
fAllToolBarAreas
  = ifToolBarAreas $ 15
fNoToolBarArea :: ToolBarAreas
fNoToolBarArea
  = ifToolBarAreas $ 0

data CToolBarAreaSizes a = CToolBarAreaSizes a
type ToolBarAreaSizes = QEnum(CToolBarAreaSizes Int)

ieToolBarAreaSizes :: Int -> ToolBarAreaSizes
ieToolBarAreaSizes x = QEnum (CToolBarAreaSizes x)

instance QEnumC (CToolBarAreaSizes Int) where
 qEnum_toInt (QEnum (CToolBarAreaSizes x)) = x
 qEnum_fromInt x = QEnum (CToolBarAreaSizes x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ToolBarAreaSizes -> IO ()) where
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

eNToolBarAreas :: ToolBarAreaSizes
eNToolBarAreas
  = ieToolBarAreaSizes $ 4

data CDateFormat a = CDateFormat a
type DateFormat = QEnum(CDateFormat Int)

ieDateFormat :: Int -> DateFormat
ieDateFormat x = QEnum (CDateFormat x)

instance QEnumC (CDateFormat Int) where
 qEnum_toInt (QEnum (CDateFormat x)) = x
 qEnum_fromInt x = QEnum (CDateFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DateFormat -> IO ()) where
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

eTextDate :: DateFormat
eTextDate
  = ieDateFormat $ 0
eISODate :: DateFormat
eISODate
  = ieDateFormat $ 1
eSystemLocaleDate :: DateFormat
eSystemLocaleDate
  = ieDateFormat $ 2
eLocalDate :: DateFormat
eLocalDate
  = ieDateFormat $ 2
eLocaleDate :: DateFormat
eLocaleDate
  = ieDateFormat $ 3

data CTimeSpec a = CTimeSpec a
type TimeSpec = QEnum(CTimeSpec Int)

ieTimeSpec :: Int -> TimeSpec
ieTimeSpec x = QEnum (CTimeSpec x)

instance QEnumC (CTimeSpec Int) where
 qEnum_toInt (QEnum (CTimeSpec x)) = x
 qEnum_fromInt x = QEnum (CTimeSpec x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TimeSpec -> IO ()) where
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

eLocalTime :: TimeSpec
eLocalTime
  = ieTimeSpec $ 0
eUTC :: TimeSpec
eUTC
  = ieTimeSpec $ 1

data CDayOfWeek a = CDayOfWeek a
type DayOfWeek = QEnum(CDayOfWeek Int)

ieDayOfWeek :: Int -> DayOfWeek
ieDayOfWeek x = QEnum (CDayOfWeek x)

instance QEnumC (CDayOfWeek Int) where
 qEnum_toInt (QEnum (CDayOfWeek x)) = x
 qEnum_fromInt x = QEnum (CDayOfWeek x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DayOfWeek -> IO ()) where
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

eMonday :: DayOfWeek
eMonday
  = ieDayOfWeek $ 1
eTuesday :: DayOfWeek
eTuesday
  = ieDayOfWeek $ 2
eWednesday :: DayOfWeek
eWednesday
  = ieDayOfWeek $ 3
eThursday :: DayOfWeek
eThursday
  = ieDayOfWeek $ 4
eFriday :: DayOfWeek
eFriday
  = ieDayOfWeek $ 5
eSaturday :: DayOfWeek
eSaturday
  = ieDayOfWeek $ 6
eSunday :: DayOfWeek
eSunday
  = ieDayOfWeek $ 7

data CScrollBarPolicy a = CScrollBarPolicy a
type ScrollBarPolicy = QEnum(CScrollBarPolicy Int)

ieScrollBarPolicy :: Int -> ScrollBarPolicy
ieScrollBarPolicy x = QEnum (CScrollBarPolicy x)

instance QEnumC (CScrollBarPolicy Int) where
 qEnum_toInt (QEnum (CScrollBarPolicy x)) = x
 qEnum_fromInt x = QEnum (CScrollBarPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ScrollBarPolicy -> IO ()) where
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

eScrollBarAsNeeded :: ScrollBarPolicy
eScrollBarAsNeeded
  = ieScrollBarPolicy $ 0
eScrollBarAlwaysOff :: ScrollBarPolicy
eScrollBarAlwaysOff
  = ieScrollBarPolicy $ 1
eScrollBarAlwaysOn :: ScrollBarPolicy
eScrollBarAlwaysOn
  = ieScrollBarPolicy $ 2

data CCaseSensitivity a = CCaseSensitivity a
type CaseSensitivity = QEnum(CCaseSensitivity Int)

ieCaseSensitivity :: Int -> CaseSensitivity
ieCaseSensitivity x = QEnum (CCaseSensitivity x)

instance QEnumC (CCaseSensitivity Int) where
 qEnum_toInt (QEnum (CCaseSensitivity x)) = x
 qEnum_fromInt x = QEnum (CCaseSensitivity x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CaseSensitivity -> IO ()) where
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

eCaseInsensitive :: CaseSensitivity
eCaseInsensitive
  = ieCaseSensitivity $ 0
instance QeCaseSensitive CaseSensitivity where
 eCaseSensitive
  = ieCaseSensitivity $ 1

data CCorner a = CCorner a
type Corner = QEnum(CCorner Int)

ieCorner :: Int -> Corner
ieCorner x = QEnum (CCorner x)

instance QEnumC (CCorner Int) where
 qEnum_toInt (QEnum (CCorner x)) = x
 qEnum_fromInt x = QEnum (CCorner x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Corner -> IO ()) where
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

eTopLeftCorner :: Corner
eTopLeftCorner
  = ieCorner $ 0
eTopRightCorner :: Corner
eTopRightCorner
  = ieCorner $ 1
eBottomLeftCorner :: Corner
eBottomLeftCorner
  = ieCorner $ 2
eBottomRightCorner :: Corner
eBottomRightCorner
  = ieCorner $ 3

data CConnectionType a = CConnectionType a
type ConnectionType = QEnum(CConnectionType Int)

ieConnectionType :: Int -> ConnectionType
ieConnectionType x = QEnum (CConnectionType x)

instance QEnumC (CConnectionType Int) where
 qEnum_toInt (QEnum (CConnectionType x)) = x
 qEnum_fromInt x = QEnum (CConnectionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ConnectionType -> IO ()) where
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

eAutoConnection :: ConnectionType
eAutoConnection
  = ieConnectionType $ 0
eDirectConnection :: ConnectionType
eDirectConnection
  = ieConnectionType $ 1
eQueuedConnection :: ConnectionType
eQueuedConnection
  = ieConnectionType $ 2
eAutoCompatConnection :: ConnectionType
eAutoCompatConnection
  = ieConnectionType $ 3
eBlockingQueuedConnection :: ConnectionType
eBlockingQueuedConnection
  = ieConnectionType $ 4

data CShortcutContext a = CShortcutContext a
type ShortcutContext = QEnum(CShortcutContext Int)

ieShortcutContext :: Int -> ShortcutContext
ieShortcutContext x = QEnum (CShortcutContext x)

instance QEnumC (CShortcutContext Int) where
 qEnum_toInt (QEnum (CShortcutContext x)) = x
 qEnum_fromInt x = QEnum (CShortcutContext x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ShortcutContext -> IO ()) where
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

eWidgetShortcut :: ShortcutContext
eWidgetShortcut
  = ieShortcutContext $ 0
eWindowShortcut :: ShortcutContext
eWindowShortcut
  = ieShortcutContext $ 1
eApplicationShortcut :: ShortcutContext
eApplicationShortcut
  = ieShortcutContext $ 2

data CFillRule a = CFillRule a
type FillRule = QEnum(CFillRule Int)

ieFillRule :: Int -> FillRule
ieFillRule x = QEnum (CFillRule x)

instance QEnumC (CFillRule Int) where
 qEnum_toInt (QEnum (CFillRule x)) = x
 qEnum_fromInt x = QEnum (CFillRule x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FillRule -> IO ()) where
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

eOddEvenFill :: FillRule
eOddEvenFill
  = ieFillRule $ 0
eWindingFill :: FillRule
eWindingFill
  = ieFillRule $ 1

data CMaskMode a = CMaskMode a
type MaskMode = QEnum(CMaskMode Int)

ieMaskMode :: Int -> MaskMode
ieMaskMode x = QEnum (CMaskMode x)

instance QEnumC (CMaskMode Int) where
 qEnum_toInt (QEnum (CMaskMode x)) = x
 qEnum_fromInt x = QEnum (CMaskMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MaskMode -> IO ()) where
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

eMaskInColor :: MaskMode
eMaskInColor
  = ieMaskMode $ 0
eMaskOutColor :: MaskMode
eMaskOutColor
  = ieMaskMode $ 1

data CClipOperation a = CClipOperation a
type ClipOperation = QEnum(CClipOperation Int)

ieClipOperation :: Int -> ClipOperation
ieClipOperation x = QEnum (CClipOperation x)

instance QEnumC (CClipOperation Int) where
 qEnum_toInt (QEnum (CClipOperation x)) = x
 qEnum_fromInt x = QEnum (CClipOperation x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ClipOperation -> IO ()) where
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

eNoClip :: ClipOperation
eNoClip
  = ieClipOperation $ 0
eReplaceClip :: ClipOperation
eReplaceClip
  = ieClipOperation $ 1
eIntersectClip :: ClipOperation
eIntersectClip
  = ieClipOperation $ 2
eUniteClip :: ClipOperation
eUniteClip
  = ieClipOperation $ 3

data CItemSelectionMode a = CItemSelectionMode a
type ItemSelectionMode = QEnum(CItemSelectionMode Int)

ieItemSelectionMode :: Int -> ItemSelectionMode
ieItemSelectionMode x = QEnum (CItemSelectionMode x)

instance QEnumC (CItemSelectionMode Int) where
 qEnum_toInt (QEnum (CItemSelectionMode x)) = x
 qEnum_fromInt x = QEnum (CItemSelectionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ItemSelectionMode -> IO ()) where
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

eContainsItemShape :: ItemSelectionMode
eContainsItemShape
  = ieItemSelectionMode $ 0
eIntersectsItemShape :: ItemSelectionMode
eIntersectsItemShape
  = ieItemSelectionMode $ 1
eContainsItemBoundingRect :: ItemSelectionMode
eContainsItemBoundingRect
  = ieItemSelectionMode $ 2
eIntersectsItemBoundingRect :: ItemSelectionMode
eIntersectsItemBoundingRect
  = ieItemSelectionMode $ 3

data CTransformationMode a = CTransformationMode a
type TransformationMode = QEnum(CTransformationMode Int)

ieTransformationMode :: Int -> TransformationMode
ieTransformationMode x = QEnum (CTransformationMode x)

instance QEnumC (CTransformationMode Int) where
 qEnum_toInt (QEnum (CTransformationMode x)) = x
 qEnum_fromInt x = QEnum (CTransformationMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TransformationMode -> IO ()) where
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

eFastTransformation :: TransformationMode
eFastTransformation
  = ieTransformationMode $ 0
eSmoothTransformation :: TransformationMode
eSmoothTransformation
  = ieTransformationMode $ 1

data CAxis a = CAxis a
type Axis = QEnum(CAxis Int)

ieAxis :: Int -> Axis
ieAxis x = QEnum (CAxis x)

instance QEnumC (CAxis Int) where
 qEnum_toInt (QEnum (CAxis x)) = x
 qEnum_fromInt x = QEnum (CAxis x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Axis -> IO ()) where
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

eXAxis :: Axis
eXAxis
  = ieAxis $ 0
eYAxis :: Axis
eYAxis
  = ieAxis $ 1
eZAxis :: Axis
eZAxis
  = ieAxis $ 2

data CFocusReason a = CFocusReason a
type FocusReason = QEnum(CFocusReason Int)

ieFocusReason :: Int -> FocusReason
ieFocusReason x = QEnum (CFocusReason x)

instance QEnumC (CFocusReason Int) where
 qEnum_toInt (QEnum (CFocusReason x)) = x
 qEnum_fromInt x = QEnum (CFocusReason x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FocusReason -> IO ()) where
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

eMouseFocusReason :: FocusReason
eMouseFocusReason
  = ieFocusReason $ 0
eTabFocusReason :: FocusReason
eTabFocusReason
  = ieFocusReason $ 1
eBacktabFocusReason :: FocusReason
eBacktabFocusReason
  = ieFocusReason $ 2
eActiveWindowFocusReason :: FocusReason
eActiveWindowFocusReason
  = ieFocusReason $ 3
ePopupFocusReason :: FocusReason
ePopupFocusReason
  = ieFocusReason $ 4
eShortcutFocusReason :: FocusReason
eShortcutFocusReason
  = ieFocusReason $ 5
eMenuBarFocusReason :: FocusReason
eMenuBarFocusReason
  = ieFocusReason $ 6
eOtherFocusReason :: FocusReason
eOtherFocusReason
  = ieFocusReason $ 7
eNoFocusReason :: FocusReason
eNoFocusReason
  = ieFocusReason $ 8

data CContextMenuPolicy a = CContextMenuPolicy a
type ContextMenuPolicy = QEnum(CContextMenuPolicy Int)

ieContextMenuPolicy :: Int -> ContextMenuPolicy
ieContextMenuPolicy x = QEnum (CContextMenuPolicy x)

instance QEnumC (CContextMenuPolicy Int) where
 qEnum_toInt (QEnum (CContextMenuPolicy x)) = x
 qEnum_fromInt x = QEnum (CContextMenuPolicy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ContextMenuPolicy -> IO ()) where
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

eNoContextMenu :: ContextMenuPolicy
eNoContextMenu
  = ieContextMenuPolicy $ 0
eDefaultContextMenu :: ContextMenuPolicy
eDefaultContextMenu
  = ieContextMenuPolicy $ 1
eActionsContextMenu :: ContextMenuPolicy
eActionsContextMenu
  = ieContextMenuPolicy $ 2
eCustomContextMenu :: ContextMenuPolicy
eCustomContextMenu
  = ieContextMenuPolicy $ 3
ePreventContextMenu :: ContextMenuPolicy
ePreventContextMenu
  = ieContextMenuPolicy $ 4

data CInputMethodQuery a = CInputMethodQuery a
type InputMethodQuery = QEnum(CInputMethodQuery Int)

ieInputMethodQuery :: Int -> InputMethodQuery
ieInputMethodQuery x = QEnum (CInputMethodQuery x)

instance QEnumC (CInputMethodQuery Int) where
 qEnum_toInt (QEnum (CInputMethodQuery x)) = x
 qEnum_fromInt x = QEnum (CInputMethodQuery x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> InputMethodQuery -> IO ()) where
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

eImMicroFocus :: InputMethodQuery
eImMicroFocus
  = ieInputMethodQuery $ 0
eImFont :: InputMethodQuery
eImFont
  = ieInputMethodQuery $ 1
eImCursorPosition :: InputMethodQuery
eImCursorPosition
  = ieInputMethodQuery $ 2
eImSurroundingText :: InputMethodQuery
eImSurroundingText
  = ieInputMethodQuery $ 3
eImCurrentSelection :: InputMethodQuery
eImCurrentSelection
  = ieInputMethodQuery $ 4

data CToolButtonStyle a = CToolButtonStyle a
type ToolButtonStyle = QEnum(CToolButtonStyle Int)

ieToolButtonStyle :: Int -> ToolButtonStyle
ieToolButtonStyle x = QEnum (CToolButtonStyle x)

instance QEnumC (CToolButtonStyle Int) where
 qEnum_toInt (QEnum (CToolButtonStyle x)) = x
 qEnum_fromInt x = QEnum (CToolButtonStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ToolButtonStyle -> IO ()) where
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

eToolButtonIconOnly :: ToolButtonStyle
eToolButtonIconOnly
  = ieToolButtonStyle $ 0
eToolButtonTextOnly :: ToolButtonStyle
eToolButtonTextOnly
  = ieToolButtonStyle $ 1
eToolButtonTextBesideIcon :: ToolButtonStyle
eToolButtonTextBesideIcon
  = ieToolButtonStyle $ 2
eToolButtonTextUnderIcon :: ToolButtonStyle
eToolButtonTextUnderIcon
  = ieToolButtonStyle $ 3

data CLayoutDirection a = CLayoutDirection a
type LayoutDirection = QEnum(CLayoutDirection Int)

ieLayoutDirection :: Int -> LayoutDirection
ieLayoutDirection x = QEnum (CLayoutDirection x)

instance QEnumC (CLayoutDirection Int) where
 qEnum_toInt (QEnum (CLayoutDirection x)) = x
 qEnum_fromInt x = QEnum (CLayoutDirection x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> LayoutDirection -> IO ()) where
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

instance QeLeftToRight LayoutDirection where
 eLeftToRight
  = ieLayoutDirection $ 0
instance QeRightToLeft LayoutDirection where
 eRightToLeft
  = ieLayoutDirection $ 1

data CDropAction a = CDropAction a
type DropAction = QEnum(CDropAction Int)

ieDropAction :: Int -> DropAction
ieDropAction x = QEnum (CDropAction x)

instance QEnumC (CDropAction Int) where
 qEnum_toInt (QEnum (CDropAction x)) = x
 qEnum_fromInt x = QEnum (CDropAction x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DropAction -> IO ()) where
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

data CDropActions a = CDropActions a
type DropActions = QFlags(CDropActions Int)

ifDropActions :: Int -> DropActions
ifDropActions x = QFlags (CDropActions x)

instance QFlagsC (CDropActions Int) where
 qFlags_toInt (QFlags (CDropActions x)) = x
 qFlags_fromInt x = QFlags (CDropActions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> DropActions -> IO ()) where
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

eCopyAction :: DropAction
eCopyAction
  = ieDropAction $ 1
eMoveAction :: DropAction
eMoveAction
  = ieDropAction $ 2
eLinkAction :: DropAction
eLinkAction
  = ieDropAction $ 4
eActionMask :: DropAction
eActionMask
  = ieDropAction $ 255
eTargetMoveAction :: DropAction
eTargetMoveAction
  = ieDropAction $ 32770
eIgnoreAction :: DropAction
eIgnoreAction
  = ieDropAction $ 0

fCopyAction :: DropActions
fCopyAction
  = ifDropActions $ 1
fMoveAction :: DropActions
fMoveAction
  = ifDropActions $ 2
fLinkAction :: DropActions
fLinkAction
  = ifDropActions $ 4
fActionMask :: DropActions
fActionMask
  = ifDropActions $ 255
fTargetMoveAction :: DropActions
fTargetMoveAction
  = ifDropActions $ 32770
fIgnoreAction :: DropActions
fIgnoreAction
  = ifDropActions $ 0

data CCheckState a = CCheckState a
type CheckState = QEnum(CCheckState Int)

ieCheckState :: Int -> CheckState
ieCheckState x = QEnum (CCheckState x)

instance QEnumC (CCheckState Int) where
 qEnum_toInt (QEnum (CCheckState x)) = x
 qEnum_fromInt x = QEnum (CCheckState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CheckState -> IO ()) where
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

eUnchecked :: CheckState
eUnchecked
  = ieCheckState $ 0
ePartiallyChecked :: CheckState
ePartiallyChecked
  = ieCheckState $ 1
eChecked :: CheckState
eChecked
  = ieCheckState $ 2

data CItemDataRole a = CItemDataRole a
type ItemDataRole = QEnum(CItemDataRole Int)

ieItemDataRole :: Int -> ItemDataRole
ieItemDataRole x = QEnum (CItemDataRole x)

instance QEnumC (CItemDataRole Int) where
 qEnum_toInt (QEnum (CItemDataRole x)) = x
 qEnum_fromInt x = QEnum (CItemDataRole x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ItemDataRole -> IO ()) where
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

eDisplayRole :: ItemDataRole
eDisplayRole
  = ieItemDataRole $ 0
eDecorationRole :: ItemDataRole
eDecorationRole
  = ieItemDataRole $ 1
eEditRole :: ItemDataRole
eEditRole
  = ieItemDataRole $ 2
eToolTipRole :: ItemDataRole
eToolTipRole
  = ieItemDataRole $ 3
eStatusTipRole :: ItemDataRole
eStatusTipRole
  = ieItemDataRole $ 4
eWhatsThisRole :: ItemDataRole
eWhatsThisRole
  = ieItemDataRole $ 5
eFontRole :: ItemDataRole
eFontRole
  = ieItemDataRole $ 6
eTextAlignmentRole :: ItemDataRole
eTextAlignmentRole
  = ieItemDataRole $ 7
eBackgroundColorRole :: ItemDataRole
eBackgroundColorRole
  = ieItemDataRole $ 8
eBackgroundRole :: ItemDataRole
eBackgroundRole
  = ieItemDataRole $ 8
eTextColorRole :: ItemDataRole
eTextColorRole
  = ieItemDataRole $ 9
eForegroundRole :: ItemDataRole
eForegroundRole
  = ieItemDataRole $ 9
eCheckStateRole :: ItemDataRole
eCheckStateRole
  = ieItemDataRole $ 10
eAccessibleTextRole :: ItemDataRole
eAccessibleTextRole
  = ieItemDataRole $ 11
eAccessibleDescriptionRole :: ItemDataRole
eAccessibleDescriptionRole
  = ieItemDataRole $ 12
eSizeHintRole :: ItemDataRole
eSizeHintRole
  = ieItemDataRole $ 13
eUserRole :: ItemDataRole
eUserRole
  = ieItemDataRole $ 32

data CItemFlag a = CItemFlag a
type ItemFlag = QEnum(CItemFlag Int)

ieItemFlag :: Int -> ItemFlag
ieItemFlag x = QEnum (CItemFlag x)

instance QEnumC (CItemFlag Int) where
 qEnum_toInt (QEnum (CItemFlag x)) = x
 qEnum_fromInt x = QEnum (CItemFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ItemFlag -> IO ()) where
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

data CItemFlags a = CItemFlags a
type ItemFlags = QFlags(CItemFlags Int)

ifItemFlags :: Int -> ItemFlags
ifItemFlags x = QFlags (CItemFlags x)

instance QFlagsC (CItemFlags Int) where
 qFlags_toInt (QFlags (CItemFlags x)) = x
 qFlags_fromInt x = QFlags (CItemFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> ItemFlags -> IO ()) where
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

instance QeItemIsSelectable ItemFlag where
 eItemIsSelectable
  = ieItemFlag $ 1
eItemIsEditable :: ItemFlag
eItemIsEditable
  = ieItemFlag $ 2
eItemIsDragEnabled :: ItemFlag
eItemIsDragEnabled
  = ieItemFlag $ 4
eItemIsDropEnabled :: ItemFlag
eItemIsDropEnabled
  = ieItemFlag $ 8
eItemIsUserCheckable :: ItemFlag
eItemIsUserCheckable
  = ieItemFlag $ 16
eItemIsEnabled :: ItemFlag
eItemIsEnabled
  = ieItemFlag $ 32
eItemIsTristate :: ItemFlag
eItemIsTristate
  = ieItemFlag $ 64

instance QfItemIsSelectable ItemFlags where
 fItemIsSelectable
  = ifItemFlags $ 1
fItemIsEditable :: ItemFlags
fItemIsEditable
  = ifItemFlags $ 2
fItemIsDragEnabled :: ItemFlags
fItemIsDragEnabled
  = ifItemFlags $ 4
fItemIsDropEnabled :: ItemFlags
fItemIsDropEnabled
  = ifItemFlags $ 8
fItemIsUserCheckable :: ItemFlags
fItemIsUserCheckable
  = ifItemFlags $ 16
fItemIsEnabled :: ItemFlags
fItemIsEnabled
  = ifItemFlags $ 32
fItemIsTristate :: ItemFlags
fItemIsTristate
  = ifItemFlags $ 64

data CMatchFlag a = CMatchFlag a
type MatchFlag = QEnum(CMatchFlag Int)

ieMatchFlag :: Int -> MatchFlag
ieMatchFlag x = QEnum (CMatchFlag x)

instance QEnumC (CMatchFlag Int) where
 qEnum_toInt (QEnum (CMatchFlag x)) = x
 qEnum_fromInt x = QEnum (CMatchFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MatchFlag -> IO ()) where
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

data CMatchFlags a = CMatchFlags a
type MatchFlags = QFlags(CMatchFlags Int)

ifMatchFlags :: Int -> MatchFlags
ifMatchFlags x = QFlags (CMatchFlags x)

instance QFlagsC (CMatchFlags Int) where
 qFlags_toInt (QFlags (CMatchFlags x)) = x
 qFlags_fromInt x = QFlags (CMatchFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> MatchFlags -> IO ()) where
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

eMatchExactly :: MatchFlag
eMatchExactly
  = ieMatchFlag $ 0
eMatchContains :: MatchFlag
eMatchContains
  = ieMatchFlag $ 1
eMatchStartsWith :: MatchFlag
eMatchStartsWith
  = ieMatchFlag $ 2
eMatchEndsWith :: MatchFlag
eMatchEndsWith
  = ieMatchFlag $ 3
eMatchRegExp :: MatchFlag
eMatchRegExp
  = ieMatchFlag $ 4
eMatchWildcard :: MatchFlag
eMatchWildcard
  = ieMatchFlag $ 5
eMatchFixedString :: MatchFlag
eMatchFixedString
  = ieMatchFlag $ 8
eMatchCaseSensitive :: MatchFlag
eMatchCaseSensitive
  = ieMatchFlag $ 16
eMatchWrap :: MatchFlag
eMatchWrap
  = ieMatchFlag $ 32
eMatchRecursive :: MatchFlag
eMatchRecursive
  = ieMatchFlag $ 64

fMatchExactly :: MatchFlags
fMatchExactly
  = ifMatchFlags $ 0
fMatchContains :: MatchFlags
fMatchContains
  = ifMatchFlags $ 1
fMatchStartsWith :: MatchFlags
fMatchStartsWith
  = ifMatchFlags $ 2
fMatchEndsWith :: MatchFlags
fMatchEndsWith
  = ifMatchFlags $ 3
fMatchRegExp :: MatchFlags
fMatchRegExp
  = ifMatchFlags $ 4
fMatchWildcard :: MatchFlags
fMatchWildcard
  = ifMatchFlags $ 5
fMatchFixedString :: MatchFlags
fMatchFixedString
  = ifMatchFlags $ 8
fMatchCaseSensitive :: MatchFlags
fMatchCaseSensitive
  = ifMatchFlags $ 16
fMatchWrap :: MatchFlags
fMatchWrap
  = ifMatchFlags $ 32
fMatchRecursive :: MatchFlags
fMatchRecursive
  = ifMatchFlags $ 64

data CWindowModality a = CWindowModality a
type WindowModality = QEnum(CWindowModality Int)

ieWindowModality :: Int -> WindowModality
ieWindowModality x = QEnum (CWindowModality x)

instance QEnumC (CWindowModality Int) where
 qEnum_toInt (QEnum (CWindowModality x)) = x
 qEnum_fromInt x = QEnum (CWindowModality x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WindowModality -> IO ()) where
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

eNonModal :: WindowModality
eNonModal
  = ieWindowModality $ 0
eWindowModal :: WindowModality
eWindowModal
  = ieWindowModality $ 1
eApplicationModal :: WindowModality
eApplicationModal
  = ieWindowModality $ 2

data CTextInteractionFlag a = CTextInteractionFlag a
type TextInteractionFlag = QEnum(CTextInteractionFlag Int)

ieTextInteractionFlag :: Int -> TextInteractionFlag
ieTextInteractionFlag x = QEnum (CTextInteractionFlag x)

instance QEnumC (CTextInteractionFlag Int) where
 qEnum_toInt (QEnum (CTextInteractionFlag x)) = x
 qEnum_fromInt x = QEnum (CTextInteractionFlag x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> TextInteractionFlag -> IO ()) where
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

data CTextInteractionFlags a = CTextInteractionFlags a
type TextInteractionFlags = QFlags(CTextInteractionFlags Int)

ifTextInteractionFlags :: Int -> TextInteractionFlags
ifTextInteractionFlags x = QFlags (CTextInteractionFlags x)

instance QFlagsC (CTextInteractionFlags Int) where
 qFlags_toInt (QFlags (CTextInteractionFlags x)) = x
 qFlags_fromInt x = QFlags (CTextInteractionFlags x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> TextInteractionFlags -> IO ()) where
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

eNoTextInteraction :: TextInteractionFlag
eNoTextInteraction
  = ieTextInteractionFlag $ 0
eTextSelectableByMouse :: TextInteractionFlag
eTextSelectableByMouse
  = ieTextInteractionFlag $ 1
eTextSelectableByKeyboard :: TextInteractionFlag
eTextSelectableByKeyboard
  = ieTextInteractionFlag $ 2
eLinksAccessibleByMouse :: TextInteractionFlag
eLinksAccessibleByMouse
  = ieTextInteractionFlag $ 4
eLinksAccessibleByKeyboard :: TextInteractionFlag
eLinksAccessibleByKeyboard
  = ieTextInteractionFlag $ 8
eTextEditable :: TextInteractionFlag
eTextEditable
  = ieTextInteractionFlag $ 16
eTextEditorInteraction :: TextInteractionFlag
eTextEditorInteraction
  = ieTextInteractionFlag $ 19
eTextBrowserInteraction :: TextInteractionFlag
eTextBrowserInteraction
  = ieTextInteractionFlag $ 13

fNoTextInteraction :: TextInteractionFlags
fNoTextInteraction
  = ifTextInteractionFlags $ 0
fTextSelectableByMouse :: TextInteractionFlags
fTextSelectableByMouse
  = ifTextInteractionFlags $ 1
fTextSelectableByKeyboard :: TextInteractionFlags
fTextSelectableByKeyboard
  = ifTextInteractionFlags $ 2
fLinksAccessibleByMouse :: TextInteractionFlags
fLinksAccessibleByMouse
  = ifTextInteractionFlags $ 4
fLinksAccessibleByKeyboard :: TextInteractionFlags
fLinksAccessibleByKeyboard
  = ifTextInteractionFlags $ 8
fTextEditable :: TextInteractionFlags
fTextEditable
  = ifTextInteractionFlags $ 16
fTextEditorInteraction :: TextInteractionFlags
fTextEditorInteraction
  = ifTextInteractionFlags $ 19
fTextBrowserInteraction :: TextInteractionFlags
fTextBrowserInteraction
  = ifTextInteractionFlags $ 13

data CEventPriority a = CEventPriority a
type EventPriority = QEnum(CEventPriority Int)

ieEventPriority :: Int -> EventPriority
ieEventPriority x = QEnum (CEventPriority x)

instance QEnumC (CEventPriority Int) where
 qEnum_toInt (QEnum (CEventPriority x)) = x
 qEnum_fromInt x = QEnum (CEventPriority x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> EventPriority -> IO ()) where
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

eHighEventPriority :: EventPriority
eHighEventPriority
  = ieEventPriority $ 1
eNormalEventPriority :: EventPriority
eNormalEventPriority
  = ieEventPriority $ 0
eLowEventPriority :: EventPriority
eLowEventPriority
  = ieEventPriority $ -1

data CHitTestAccuracy a = CHitTestAccuracy a
type HitTestAccuracy = QEnum(CHitTestAccuracy Int)

ieHitTestAccuracy :: Int -> HitTestAccuracy
ieHitTestAccuracy x = QEnum (CHitTestAccuracy x)

instance QEnumC (CHitTestAccuracy Int) where
 qEnum_toInt (QEnum (CHitTestAccuracy x)) = x
 qEnum_fromInt x = QEnum (CHitTestAccuracy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> HitTestAccuracy -> IO ()) where
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

eExactHit :: HitTestAccuracy
eExactHit
  = ieHitTestAccuracy $ 0
eFuzzyHit :: HitTestAccuracy
eFuzzyHit
  = ieHitTestAccuracy $ 1

data CWhiteSpaceMode a = CWhiteSpaceMode a
type WhiteSpaceMode = QEnum(CWhiteSpaceMode Int)

ieWhiteSpaceMode :: Int -> WhiteSpaceMode
ieWhiteSpaceMode x = QEnum (CWhiteSpaceMode x)

instance QEnumC (CWhiteSpaceMode Int) where
 qEnum_toInt (QEnum (CWhiteSpaceMode x)) = x
 qEnum_fromInt x = QEnum (CWhiteSpaceMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WhiteSpaceMode -> IO ()) where
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

eWhiteSpaceNormal :: WhiteSpaceMode
eWhiteSpaceNormal
  = ieWhiteSpaceMode $ 0
eWhiteSpacePre :: WhiteSpaceMode
eWhiteSpacePre
  = ieWhiteSpaceMode $ 1
eWhiteSpaceNoWrap :: WhiteSpaceMode
eWhiteSpaceNoWrap
  = ieWhiteSpaceMode $ 2
eWhiteSpaceModeUndefined :: WhiteSpaceMode
eWhiteSpaceModeUndefined
  = ieWhiteSpaceMode $ -1

