{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QEvent (
 QEventType, eTimer, eMouseButtonPress, eMouseButtonRelease, eMouseButtonDblClick, eMouseMove, eKeyPress, eKeyRelease, eFocusIn, eFocusOut, eEnter, eLeave, ePaint, eMove, eResize, eCreate, eDestroy, eShow, eHide, eQuit, eParentChange, eParentAboutToChange, eThreadChange, eWindowActivate, eWindowDeactivate, eShowToParent, eHideToParent, eWheel, eWindowTitleChange, eWindowIconChange, eApplicationWindowIconChange, eApplicationFontChange, eApplicationLayoutDirectionChange, eApplicationPaletteChange, ePaletteChange, eSpeech, eMetaCall, eSockAct, eWinEventAct, eDeferredDelete, eDragEnter, eDragMove, eDragLeave, eDrop, eDragResponse, eChildAdded, eChildPolished, eChildRemoved, eShowWindowRequest, ePolishRequest, eLayoutRequest, eUpdateRequest, eUpdateLater, eEmbeddingControl, eActivateControl, eDeactivateControl, eContextMenu, eInputMethod, eAccessibilityPrepare, eTabletMove, eLocaleChange, eLanguageChange, eLayoutDirectionChange, eStyle, eTabletPress, eTabletRelease, eOkRequest, eHelpRequest, eIconDrag, eFontChange, eEnabledChange, eActivationChange, eStyleChange, eIconTextChange, eModifiedChange, eMouseTrackingChange, eWindowBlocked, eWindowUnblocked, eWindowStateChange, eStatusTip, eActionChanged, eActionAdded, eActionRemoved, eFileOpen, eShortcut, eShortcutOverride, eWhatsThisClicked, eToolBarChange, eApplicationActivate, eApplicationActivated, eApplicationDeactivate, eApplicationDeactivated, eQueryWhatsThis, eEnterWhatsThisMode, eLeaveWhatsThisMode, eZOrderChange, eHoverEnter, eHoverLeave, eHoverMove, eAccessibilityHelp, eAccessibilityDescription, eAcceptDropsChange, eMenubarUpdated, eZeroTimerEvent, eGraphicsSceneMouseMove, eGraphicsSceneMousePress, eGraphicsSceneMouseRelease, eGraphicsSceneMouseDoubleClick, eGraphicsSceneContextMenu, eGraphicsSceneHoverEnter, eGraphicsSceneHoverMove, eGraphicsSceneHoverLeave, eGraphicsSceneHelp, eGraphicsSceneDragEnter, eGraphicsSceneDragMove, eGraphicsSceneDragLeave, eGraphicsSceneDrop, eGraphicsSceneWheel, eKeyboardLayoutChange, eDynamicPropertyChange, eTabletEnterProximity, eTabletLeaveProximity, eNonClientAreaMouseMove, eNonClientAreaMouseButtonPress, eNonClientAreaMouseButtonRelease, eNonClientAreaMouseButtonDblClick, eMacSizeChange, eContentsRectChange
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQEventType = CQEventType Int deriving (Eq, Ord)
type QEventType = QEnum(CQEventType)

ieQEventType :: Int -> QEventType
ieQEventType x = QEnum (CQEventType x)

instance QEnumC (CQEventType) where
 qEnum_toInt (QEnum (CQEventType x)) = x
 qEnum_fromInt x = QEnum (CQEventType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QEventType -> IO ()) where
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

instance QeNone QEventType where
 eNone
  = ieQEventType $ 0
eTimer :: QEventType
eTimer
  = ieQEventType $ 1
eMouseButtonPress :: QEventType
eMouseButtonPress
  = ieQEventType $ 2
eMouseButtonRelease :: QEventType
eMouseButtonRelease
  = ieQEventType $ 3
eMouseButtonDblClick :: QEventType
eMouseButtonDblClick
  = ieQEventType $ 4
eMouseMove :: QEventType
eMouseMove
  = ieQEventType $ 5
eKeyPress :: QEventType
eKeyPress
  = ieQEventType $ 6
eKeyRelease :: QEventType
eKeyRelease
  = ieQEventType $ 7
eFocusIn :: QEventType
eFocusIn
  = ieQEventType $ 8
eFocusOut :: QEventType
eFocusOut
  = ieQEventType $ 9
eEnter :: QEventType
eEnter
  = ieQEventType $ 10
eLeave :: QEventType
eLeave
  = ieQEventType $ 11
ePaint :: QEventType
ePaint
  = ieQEventType $ 12
eMove :: QEventType
eMove
  = ieQEventType $ 13
eResize :: QEventType
eResize
  = ieQEventType $ 14
eCreate :: QEventType
eCreate
  = ieQEventType $ 15
eDestroy :: QEventType
eDestroy
  = ieQEventType $ 16
eShow :: QEventType
eShow
  = ieQEventType $ 17
eHide :: QEventType
eHide
  = ieQEventType $ 18
instance QeClose QEventType where
 eClose
  = ieQEventType $ 19
eQuit :: QEventType
eQuit
  = ieQEventType $ 20
eParentChange :: QEventType
eParentChange
  = ieQEventType $ 21
eParentAboutToChange :: QEventType
eParentAboutToChange
  = ieQEventType $ 131
eThreadChange :: QEventType
eThreadChange
  = ieQEventType $ 22
eWindowActivate :: QEventType
eWindowActivate
  = ieQEventType $ 24
eWindowDeactivate :: QEventType
eWindowDeactivate
  = ieQEventType $ 25
eShowToParent :: QEventType
eShowToParent
  = ieQEventType $ 26
eHideToParent :: QEventType
eHideToParent
  = ieQEventType $ 27
eWheel :: QEventType
eWheel
  = ieQEventType $ 31
eWindowTitleChange :: QEventType
eWindowTitleChange
  = ieQEventType $ 33
eWindowIconChange :: QEventType
eWindowIconChange
  = ieQEventType $ 34
eApplicationWindowIconChange :: QEventType
eApplicationWindowIconChange
  = ieQEventType $ 35
eApplicationFontChange :: QEventType
eApplicationFontChange
  = ieQEventType $ 36
eApplicationLayoutDirectionChange :: QEventType
eApplicationLayoutDirectionChange
  = ieQEventType $ 37
eApplicationPaletteChange :: QEventType
eApplicationPaletteChange
  = ieQEventType $ 38
ePaletteChange :: QEventType
ePaletteChange
  = ieQEventType $ 39
instance QeClipboard QEventType where
 eClipboard
  = ieQEventType $ 40
eSpeech :: QEventType
eSpeech
  = ieQEventType $ 42
eMetaCall :: QEventType
eMetaCall
  = ieQEventType $ 43
eSockAct :: QEventType
eSockAct
  = ieQEventType $ 50
eWinEventAct :: QEventType
eWinEventAct
  = ieQEventType $ 132
eDeferredDelete :: QEventType
eDeferredDelete
  = ieQEventType $ 52
eDragEnter :: QEventType
eDragEnter
  = ieQEventType $ 60
eDragMove :: QEventType
eDragMove
  = ieQEventType $ 61
eDragLeave :: QEventType
eDragLeave
  = ieQEventType $ 62
eDrop :: QEventType
eDrop
  = ieQEventType $ 63
eDragResponse :: QEventType
eDragResponse
  = ieQEventType $ 64
eChildAdded :: QEventType
eChildAdded
  = ieQEventType $ 68
eChildPolished :: QEventType
eChildPolished
  = ieQEventType $ 69
eChildRemoved :: QEventType
eChildRemoved
  = ieQEventType $ 71
eShowWindowRequest :: QEventType
eShowWindowRequest
  = ieQEventType $ 73
ePolishRequest :: QEventType
ePolishRequest
  = ieQEventType $ 74
instance QePolish QEventType where
 ePolish
  = ieQEventType $ 75
eLayoutRequest :: QEventType
eLayoutRequest
  = ieQEventType $ 76
eUpdateRequest :: QEventType
eUpdateRequest
  = ieQEventType $ 77
eUpdateLater :: QEventType
eUpdateLater
  = ieQEventType $ 78
eEmbeddingControl :: QEventType
eEmbeddingControl
  = ieQEventType $ 79
eActivateControl :: QEventType
eActivateControl
  = ieQEventType $ 80
eDeactivateControl :: QEventType
eDeactivateControl
  = ieQEventType $ 81
eContextMenu :: QEventType
eContextMenu
  = ieQEventType $ 82
eInputMethod :: QEventType
eInputMethod
  = ieQEventType $ 83
eAccessibilityPrepare :: QEventType
eAccessibilityPrepare
  = ieQEventType $ 86
eTabletMove :: QEventType
eTabletMove
  = ieQEventType $ 87
eLocaleChange :: QEventType
eLocaleChange
  = ieQEventType $ 88
eLanguageChange :: QEventType
eLanguageChange
  = ieQEventType $ 89
eLayoutDirectionChange :: QEventType
eLayoutDirectionChange
  = ieQEventType $ 90
eStyle :: QEventType
eStyle
  = ieQEventType $ 91
eTabletPress :: QEventType
eTabletPress
  = ieQEventType $ 92
eTabletRelease :: QEventType
eTabletRelease
  = ieQEventType $ 93
eOkRequest :: QEventType
eOkRequest
  = ieQEventType $ 94
eHelpRequest :: QEventType
eHelpRequest
  = ieQEventType $ 95
eIconDrag :: QEventType
eIconDrag
  = ieQEventType $ 96
eFontChange :: QEventType
eFontChange
  = ieQEventType $ 97
eEnabledChange :: QEventType
eEnabledChange
  = ieQEventType $ 98
eActivationChange :: QEventType
eActivationChange
  = ieQEventType $ 99
eStyleChange :: QEventType
eStyleChange
  = ieQEventType $ 100
eIconTextChange :: QEventType
eIconTextChange
  = ieQEventType $ 101
eModifiedChange :: QEventType
eModifiedChange
  = ieQEventType $ 102
eMouseTrackingChange :: QEventType
eMouseTrackingChange
  = ieQEventType $ 109
eWindowBlocked :: QEventType
eWindowBlocked
  = ieQEventType $ 103
eWindowUnblocked :: QEventType
eWindowUnblocked
  = ieQEventType $ 104
eWindowStateChange :: QEventType
eWindowStateChange
  = ieQEventType $ 105
instance QeToolTip QEventType where
 eToolTip
  = ieQEventType $ 110
instance QeWhatsThis QEventType where
 eWhatsThis
  = ieQEventType $ 111
eStatusTip :: QEventType
eStatusTip
  = ieQEventType $ 112
eActionChanged :: QEventType
eActionChanged
  = ieQEventType $ 113
eActionAdded :: QEventType
eActionAdded
  = ieQEventType $ 114
eActionRemoved :: QEventType
eActionRemoved
  = ieQEventType $ 115
eFileOpen :: QEventType
eFileOpen
  = ieQEventType $ 116
eShortcut :: QEventType
eShortcut
  = ieQEventType $ 117
eShortcutOverride :: QEventType
eShortcutOverride
  = ieQEventType $ 51
eWhatsThisClicked :: QEventType
eWhatsThisClicked
  = ieQEventType $ 118
eToolBarChange :: QEventType
eToolBarChange
  = ieQEventType $ 120
eApplicationActivate :: QEventType
eApplicationActivate
  = ieQEventType $ 121
eApplicationActivated :: QEventType
eApplicationActivated
  = ieQEventType $ 121
eApplicationDeactivate :: QEventType
eApplicationDeactivate
  = ieQEventType $ 122
eApplicationDeactivated :: QEventType
eApplicationDeactivated
  = ieQEventType $ 122
eQueryWhatsThis :: QEventType
eQueryWhatsThis
  = ieQEventType $ 123
eEnterWhatsThisMode :: QEventType
eEnterWhatsThisMode
  = ieQEventType $ 124
eLeaveWhatsThisMode :: QEventType
eLeaveWhatsThisMode
  = ieQEventType $ 125
eZOrderChange :: QEventType
eZOrderChange
  = ieQEventType $ 126
eHoverEnter :: QEventType
eHoverEnter
  = ieQEventType $ 127
eHoverLeave :: QEventType
eHoverLeave
  = ieQEventType $ 128
eHoverMove :: QEventType
eHoverMove
  = ieQEventType $ 129
eAccessibilityHelp :: QEventType
eAccessibilityHelp
  = ieQEventType $ 119
eAccessibilityDescription :: QEventType
eAccessibilityDescription
  = ieQEventType $ 130
eAcceptDropsChange :: QEventType
eAcceptDropsChange
  = ieQEventType $ 152
eMenubarUpdated :: QEventType
eMenubarUpdated
  = ieQEventType $ 153
eZeroTimerEvent :: QEventType
eZeroTimerEvent
  = ieQEventType $ 154
eGraphicsSceneMouseMove :: QEventType
eGraphicsSceneMouseMove
  = ieQEventType $ 155
eGraphicsSceneMousePress :: QEventType
eGraphicsSceneMousePress
  = ieQEventType $ 156
eGraphicsSceneMouseRelease :: QEventType
eGraphicsSceneMouseRelease
  = ieQEventType $ 157
eGraphicsSceneMouseDoubleClick :: QEventType
eGraphicsSceneMouseDoubleClick
  = ieQEventType $ 158
eGraphicsSceneContextMenu :: QEventType
eGraphicsSceneContextMenu
  = ieQEventType $ 159
eGraphicsSceneHoverEnter :: QEventType
eGraphicsSceneHoverEnter
  = ieQEventType $ 160
eGraphicsSceneHoverMove :: QEventType
eGraphicsSceneHoverMove
  = ieQEventType $ 161
eGraphicsSceneHoverLeave :: QEventType
eGraphicsSceneHoverLeave
  = ieQEventType $ 162
eGraphicsSceneHelp :: QEventType
eGraphicsSceneHelp
  = ieQEventType $ 163
eGraphicsSceneDragEnter :: QEventType
eGraphicsSceneDragEnter
  = ieQEventType $ 164
eGraphicsSceneDragMove :: QEventType
eGraphicsSceneDragMove
  = ieQEventType $ 165
eGraphicsSceneDragLeave :: QEventType
eGraphicsSceneDragLeave
  = ieQEventType $ 166
eGraphicsSceneDrop :: QEventType
eGraphicsSceneDrop
  = ieQEventType $ 167
eGraphicsSceneWheel :: QEventType
eGraphicsSceneWheel
  = ieQEventType $ 168
eKeyboardLayoutChange :: QEventType
eKeyboardLayoutChange
  = ieQEventType $ 169
eDynamicPropertyChange :: QEventType
eDynamicPropertyChange
  = ieQEventType $ 170
eTabletEnterProximity :: QEventType
eTabletEnterProximity
  = ieQEventType $ 171
eTabletLeaveProximity :: QEventType
eTabletLeaveProximity
  = ieQEventType $ 172
eNonClientAreaMouseMove :: QEventType
eNonClientAreaMouseMove
  = ieQEventType $ 173
eNonClientAreaMouseButtonPress :: QEventType
eNonClientAreaMouseButtonPress
  = ieQEventType $ 174
eNonClientAreaMouseButtonRelease :: QEventType
eNonClientAreaMouseButtonRelease
  = ieQEventType $ 175
eNonClientAreaMouseButtonDblClick :: QEventType
eNonClientAreaMouseButtonDblClick
  = ieQEventType $ 176
eMacSizeChange :: QEventType
eMacSizeChange
  = ieQEventType $ 177
eContentsRectChange :: QEventType
eContentsRectChange
  = ieQEventType $ 178
instance QeUser QEventType where
 eUser
  = ieQEventType $ 1000
instance QeMaxUser QEventType where
 eMaxUser
  = ieQEventType $ 65535

