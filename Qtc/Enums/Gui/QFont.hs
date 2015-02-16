{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFont.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QFont (
 QFontStyleHint, eHelvetica, eSansSerif, eTimes, eSerif, eCourier, eTypeWriter, eOldEnglish, eDecorative, eAnyStyle
 , StyleStrategy, ePreferDefault, ePreferBitmap, ePreferDevice, ePreferOutline, eForceOutline, ePreferMatch, ePreferQuality, ePreferAntialias, eNoAntialias, eOpenGLCompatible, eNoFontMerging
 , Weight, eDemiBold, eBlack
 , QFontStyle, eStyleNormal, eStyleItalic, eStyleOblique
 , Stretch, eUltraCondensed, eExtraCondensed, eCondensed, eSemiCondensed, eUnstretched, eSemiExpanded, eExpanded, eExtraExpanded, eUltraExpanded
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQFontStyleHint a = CQFontStyleHint a
type QFontStyleHint = QEnum(CQFontStyleHint Int)

ieQFontStyleHint :: Int -> QFontStyleHint
ieQFontStyleHint x = QEnum (CQFontStyleHint x)

instance QEnumC (CQFontStyleHint Int) where
 qEnum_toInt (QEnum (CQFontStyleHint x)) = x
 qEnum_fromInt x = QEnum (CQFontStyleHint x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFontStyleHint -> IO ()) where
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

eHelvetica :: QFontStyleHint
eHelvetica
  = ieQFontStyleHint $ 0
eSansSerif :: QFontStyleHint
eSansSerif
  = ieQFontStyleHint $ 0
eTimes :: QFontStyleHint
eTimes
  = ieQFontStyleHint $ 1
eSerif :: QFontStyleHint
eSerif
  = ieQFontStyleHint $ 1
eCourier :: QFontStyleHint
eCourier
  = ieQFontStyleHint $ 2
eTypeWriter :: QFontStyleHint
eTypeWriter
  = ieQFontStyleHint $ 2
eOldEnglish :: QFontStyleHint
eOldEnglish
  = ieQFontStyleHint $ 3
eDecorative :: QFontStyleHint
eDecorative
  = ieQFontStyleHint $ 3
instance QeSystem QFontStyleHint where
 eSystem
  = ieQFontStyleHint $ 4
eAnyStyle :: QFontStyleHint
eAnyStyle
  = ieQFontStyleHint $ 5

data CStyleStrategy a = CStyleStrategy a
type StyleStrategy = QEnum(CStyleStrategy Int)

ieStyleStrategy :: Int -> StyleStrategy
ieStyleStrategy x = QEnum (CStyleStrategy x)

instance QEnumC (CStyleStrategy Int) where
 qEnum_toInt (QEnum (CStyleStrategy x)) = x
 qEnum_fromInt x = QEnum (CStyleStrategy x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StyleStrategy -> IO ()) where
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

ePreferDefault :: StyleStrategy
ePreferDefault
  = ieStyleStrategy $ 1
ePreferBitmap :: StyleStrategy
ePreferBitmap
  = ieStyleStrategy $ 2
ePreferDevice :: StyleStrategy
ePreferDevice
  = ieStyleStrategy $ 4
ePreferOutline :: StyleStrategy
ePreferOutline
  = ieStyleStrategy $ 8
eForceOutline :: StyleStrategy
eForceOutline
  = ieStyleStrategy $ 16
ePreferMatch :: StyleStrategy
ePreferMatch
  = ieStyleStrategy $ 32
ePreferQuality :: StyleStrategy
ePreferQuality
  = ieStyleStrategy $ 64
ePreferAntialias :: StyleStrategy
ePreferAntialias
  = ieStyleStrategy $ 128
eNoAntialias :: StyleStrategy
eNoAntialias
  = ieStyleStrategy $ 256
eOpenGLCompatible :: StyleStrategy
eOpenGLCompatible
  = ieStyleStrategy $ 512
eNoFontMerging :: StyleStrategy
eNoFontMerging
  = ieStyleStrategy $ 32768

data CWeight a = CWeight a
type Weight = QEnum(CWeight Int)

ieWeight :: Int -> Weight
ieWeight x = QEnum (CWeight x)

instance QEnumC (CWeight Int) where
 qEnum_toInt (QEnum (CWeight x)) = x
 qEnum_fromInt x = QEnum (CWeight x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Weight -> IO ()) where
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

instance QeLight Weight where
 eLight
  = ieWeight $ 25
instance QeNormal Weight where
 eNormal
  = ieWeight $ 50
eDemiBold :: Weight
eDemiBold
  = ieWeight $ 63
instance QeBold Weight where
 eBold
  = ieWeight $ 75
eBlack :: Weight
eBlack
  = ieWeight $ 87

data CQFontStyle a = CQFontStyle a
type QFontStyle = QEnum(CQFontStyle Int)

ieQFontStyle :: Int -> QFontStyle
ieQFontStyle x = QEnum (CQFontStyle x)

instance QEnumC (CQFontStyle Int) where
 qEnum_toInt (QEnum (CQFontStyle x)) = x
 qEnum_fromInt x = QEnum (CQFontStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QFontStyle -> IO ()) where
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

eStyleNormal :: QFontStyle
eStyleNormal
  = ieQFontStyle $ 0
eStyleItalic :: QFontStyle
eStyleItalic
  = ieQFontStyle $ 1
eStyleOblique :: QFontStyle
eStyleOblique
  = ieQFontStyle $ 2

data CStretch a = CStretch a
type Stretch = QEnum(CStretch Int)

ieStretch :: Int -> Stretch
ieStretch x = QEnum (CStretch x)

instance QEnumC (CStretch Int) where
 qEnum_toInt (QEnum (CStretch x)) = x
 qEnum_fromInt x = QEnum (CStretch x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Stretch -> IO ()) where
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

eUltraCondensed :: Stretch
eUltraCondensed
  = ieStretch $ 50
eExtraCondensed :: Stretch
eExtraCondensed
  = ieStretch $ 62
eCondensed :: Stretch
eCondensed
  = ieStretch $ 75
eSemiCondensed :: Stretch
eSemiCondensed
  = ieStretch $ 87
eUnstretched :: Stretch
eUnstretched
  = ieStretch $ 100
eSemiExpanded :: Stretch
eSemiExpanded
  = ieStretch $ 112
eExpanded :: Stretch
eExpanded
  = ieStretch $ 125
eExtraExpanded :: Stretch
eExtraExpanded
  = ieStretch $ 150
eUltraExpanded :: Stretch
eUltraExpanded
  = ieStretch $ 200

