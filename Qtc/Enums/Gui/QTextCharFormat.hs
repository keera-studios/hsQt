{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextCharFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTextCharFormat (
 VerticalAlignment, eAlignNormal, eAlignSuperScript, eAlignSubScript, eAlignMiddle
 , UnderlineStyle, eNoUnderline, eSingleUnderline, eDashUnderline, eWaveUnderline, eSpellCheckUnderline
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CVerticalAlignment a = CVerticalAlignment a
type VerticalAlignment = QEnum(CVerticalAlignment Int)

ieVerticalAlignment :: Int -> VerticalAlignment
ieVerticalAlignment x = QEnum (CVerticalAlignment x)

instance QEnumC (CVerticalAlignment Int) where
 qEnum_toInt (QEnum (CVerticalAlignment x)) = x
 qEnum_fromInt x = QEnum (CVerticalAlignment x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> VerticalAlignment -> IO ()) where
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

eAlignNormal :: VerticalAlignment
eAlignNormal
  = ieVerticalAlignment $ 0
eAlignSuperScript :: VerticalAlignment
eAlignSuperScript
  = ieVerticalAlignment $ 1
eAlignSubScript :: VerticalAlignment
eAlignSubScript
  = ieVerticalAlignment $ 2
eAlignMiddle :: VerticalAlignment
eAlignMiddle
  = ieVerticalAlignment $ 3
instance QeAlignTop VerticalAlignment where
 eAlignTop
  = ieVerticalAlignment $ 4
instance QeAlignBottom VerticalAlignment where
 eAlignBottom
  = ieVerticalAlignment $ 5

data CUnderlineStyle a = CUnderlineStyle a
type UnderlineStyle = QEnum(CUnderlineStyle Int)

ieUnderlineStyle :: Int -> UnderlineStyle
ieUnderlineStyle x = QEnum (CUnderlineStyle x)

instance QEnumC (CUnderlineStyle Int) where
 qEnum_toInt (QEnum (CUnderlineStyle x)) = x
 qEnum_fromInt x = QEnum (CUnderlineStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> UnderlineStyle -> IO ()) where
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

eNoUnderline :: UnderlineStyle
eNoUnderline
  = ieUnderlineStyle $ 0
eSingleUnderline :: UnderlineStyle
eSingleUnderline
  = ieUnderlineStyle $ 1
eDashUnderline :: UnderlineStyle
eDashUnderline
  = ieUnderlineStyle $ 2
instance QeDotLine UnderlineStyle where
 eDotLine
  = ieUnderlineStyle $ 3
instance QeDashDotLine UnderlineStyle where
 eDashDotLine
  = ieUnderlineStyle $ 4
instance QeDashDotDotLine UnderlineStyle where
 eDashDotDotLine
  = ieUnderlineStyle $ 5
eWaveUnderline :: UnderlineStyle
eWaveUnderline
  = ieUnderlineStyle $ 6
eSpellCheckUnderline :: UnderlineStyle
eSpellCheckUnderline
  = ieUnderlineStyle $ 7

