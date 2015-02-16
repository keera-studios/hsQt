{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontComboBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QFontComboBox (
 FontFilter, FontFilters, eAllFonts, fAllFonts, eScalableFonts, fScalableFonts, eNonScalableFonts, fNonScalableFonts, eMonospacedFonts, fMonospacedFonts, eProportionalFonts, fProportionalFonts
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CFontFilter a = CFontFilter a
type FontFilter = QEnum(CFontFilter Int)

ieFontFilter :: Int -> FontFilter
ieFontFilter x = QEnum (CFontFilter x)

instance QEnumC (CFontFilter Int) where
 qEnum_toInt (QEnum (CFontFilter x)) = x
 qEnum_fromInt x = QEnum (CFontFilter x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FontFilter -> IO ()) where
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

data CFontFilters a = CFontFilters a
type FontFilters = QFlags(CFontFilters Int)

ifFontFilters :: Int -> FontFilters
ifFontFilters x = QFlags (CFontFilters x)

instance QFlagsC (CFontFilters Int) where
 qFlags_toInt (QFlags (CFontFilters x)) = x
 qFlags_fromInt x = QFlags (CFontFilters x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> FontFilters -> IO ()) where
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

eAllFonts :: FontFilter
eAllFonts
  = ieFontFilter $ 0
eScalableFonts :: FontFilter
eScalableFonts
  = ieFontFilter $ 1
eNonScalableFonts :: FontFilter
eNonScalableFonts
  = ieFontFilter $ 2
eMonospacedFonts :: FontFilter
eMonospacedFonts
  = ieFontFilter $ 4
eProportionalFonts :: FontFilter
eProportionalFonts
  = ieFontFilter $ 8

fAllFonts :: FontFilters
fAllFonts
  = ifFontFilters $ 0
fScalableFonts :: FontFilters
fScalableFonts
  = ifFontFilters $ 1
fNonScalableFonts :: FontFilters
fNonScalableFonts
  = ifFontFilters $ 2
fMonospacedFonts :: FontFilters
fMonospacedFonts
  = ifFontFilters $ 4
fProportionalFonts :: FontFilters
fProportionalFonts
  = ifFontFilters $ 8

