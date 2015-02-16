{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPalette.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QPalette (
 ColorGroup, eInactive, eNColorGroups, eAll
 , ColorRole, eWindowText, eButton, eMidlight, eDark, eMid, eBrightText, eButtonText, eBase, eShadow, eHighlight, eHighlightedText, eLink, eLinkVisited, eAlternateBase, eNColorRoles, eForeground, eBackground
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CColorGroup a = CColorGroup a
type ColorGroup = QEnum(CColorGroup Int)

ieColorGroup :: Int -> ColorGroup
ieColorGroup x = QEnum (CColorGroup x)

instance QEnumC (CColorGroup Int) where
 qEnum_toInt (QEnum (CColorGroup x)) = x
 qEnum_fromInt x = QEnum (CColorGroup x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ColorGroup -> IO ()) where
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

instance QeActive ColorGroup where
 eActive
  = ieColorGroup $ 0
instance QeDisabled ColorGroup where
 eDisabled
  = ieColorGroup $ 1
eInactive :: ColorGroup
eInactive
  = ieColorGroup $ 2
eNColorGroups :: ColorGroup
eNColorGroups
  = ieColorGroup $ 3
instance QeCurrent ColorGroup where
 eCurrent
  = ieColorGroup $ 4
eAll :: ColorGroup
eAll
  = ieColorGroup $ 5
instance QeNormal ColorGroup where
 eNormal
  = ieColorGroup $ 0

data CColorRole a = CColorRole a
type ColorRole = QEnum(CColorRole Int)

ieColorRole :: Int -> ColorRole
ieColorRole x = QEnum (CColorRole x)

instance QEnumC (CColorRole Int) where
 qEnum_toInt (QEnum (CColorRole x)) = x
 qEnum_fromInt x = QEnum (CColorRole x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ColorRole -> IO ()) where
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

eWindowText :: ColorRole
eWindowText
  = ieColorRole $ 0
eButton :: ColorRole
eButton
  = ieColorRole $ 1
instance QeLight ColorRole where
 eLight
  = ieColorRole $ 2
eMidlight :: ColorRole
eMidlight
  = ieColorRole $ 3
eDark :: ColorRole
eDark
  = ieColorRole $ 4
eMid :: ColorRole
eMid
  = ieColorRole $ 5
instance QeText ColorRole where
 eText
  = ieColorRole $ 6
eBrightText :: ColorRole
eBrightText
  = ieColorRole $ 7
eButtonText :: ColorRole
eButtonText
  = ieColorRole $ 8
eBase :: ColorRole
eBase
  = ieColorRole $ 9
instance QeWindow ColorRole where
 eWindow
  = ieColorRole $ 10
eShadow :: ColorRole
eShadow
  = ieColorRole $ 11
eHighlight :: ColorRole
eHighlight
  = ieColorRole $ 12
eHighlightedText :: ColorRole
eHighlightedText
  = ieColorRole $ 13
eLink :: ColorRole
eLink
  = ieColorRole $ 14
eLinkVisited :: ColorRole
eLinkVisited
  = ieColorRole $ 15
eAlternateBase :: ColorRole
eAlternateBase
  = ieColorRole $ 16
instance QeNoRole ColorRole where
 eNoRole
  = ieColorRole $ 17
eNColorRoles :: ColorRole
eNColorRoles
  = ieColorRole $ 17
eForeground :: ColorRole
eForeground
  = ieColorRole $ 0
eBackground :: ColorRole
eBackground
  = ieColorRole $ 10

