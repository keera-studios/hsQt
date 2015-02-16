{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QFontDatabase.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QFontDatabase (
 WritingSystem, eCyrillic, eThaana, eDevanagari, eGurmukhi, eSinhala, eKhmer, eSimplifiedChinese, eTraditionalChinese, eSymbol, eOgham, eRunic, eWritingSystemsCount
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CWritingSystem a = CWritingSystem a
type WritingSystem = QEnum(CWritingSystem Int)

ieWritingSystem :: Int -> WritingSystem
ieWritingSystem x = QEnum (CWritingSystem x)

instance QEnumC (CWritingSystem Int) where
 qEnum_toInt (QEnum (CWritingSystem x)) = x
 qEnum_fromInt x = QEnum (CWritingSystem x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> WritingSystem -> IO ()) where
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

instance QeAny WritingSystem where
 eAny
  = ieWritingSystem $ 0
instance QeLatin WritingSystem where
 eLatin
  = ieWritingSystem $ 1
instance QeGreek WritingSystem where
 eGreek
  = ieWritingSystem $ 2
eCyrillic :: WritingSystem
eCyrillic
  = ieWritingSystem $ 3
instance QeArmenian WritingSystem where
 eArmenian
  = ieWritingSystem $ 4
instance QeHebrew WritingSystem where
 eHebrew
  = ieWritingSystem $ 5
instance QeArabic WritingSystem where
 eArabic
  = ieWritingSystem $ 6
instance QeSyriac WritingSystem where
 eSyriac
  = ieWritingSystem $ 7
eThaana :: WritingSystem
eThaana
  = ieWritingSystem $ 8
eDevanagari :: WritingSystem
eDevanagari
  = ieWritingSystem $ 9
instance QeBengali WritingSystem where
 eBengali
  = ieWritingSystem $ 10
eGurmukhi :: WritingSystem
eGurmukhi
  = ieWritingSystem $ 11
instance QeGujarati WritingSystem where
 eGujarati
  = ieWritingSystem $ 12
instance QeOriya WritingSystem where
 eOriya
  = ieWritingSystem $ 13
instance QeTamil WritingSystem where
 eTamil
  = ieWritingSystem $ 14
instance QeTelugu WritingSystem where
 eTelugu
  = ieWritingSystem $ 15
instance QeKannada WritingSystem where
 eKannada
  = ieWritingSystem $ 16
instance QeMalayalam WritingSystem where
 eMalayalam
  = ieWritingSystem $ 17
eSinhala :: WritingSystem
eSinhala
  = ieWritingSystem $ 18
instance QeThai WritingSystem where
 eThai
  = ieWritingSystem $ 19
instance QeLao WritingSystem where
 eLao
  = ieWritingSystem $ 20
instance QeTibetan WritingSystem where
 eTibetan
  = ieWritingSystem $ 21
instance QeMyanmar WritingSystem where
 eMyanmar
  = ieWritingSystem $ 22
instance QeGeorgian WritingSystem where
 eGeorgian
  = ieWritingSystem $ 23
eKhmer :: WritingSystem
eKhmer
  = ieWritingSystem $ 24
eSimplifiedChinese :: WritingSystem
eSimplifiedChinese
  = ieWritingSystem $ 25
eTraditionalChinese :: WritingSystem
eTraditionalChinese
  = ieWritingSystem $ 26
instance QeJapanese WritingSystem where
 eJapanese
  = ieWritingSystem $ 27
instance QeKorean WritingSystem where
 eKorean
  = ieWritingSystem $ 28
instance QeVietnamese WritingSystem where
 eVietnamese
  = ieWritingSystem $ 29
eSymbol :: WritingSystem
eSymbol
  = ieWritingSystem $ 30
instance QeOther WritingSystem where
 eOther
  = ieWritingSystem $ 30
eOgham :: WritingSystem
eOgham
  = ieWritingSystem $ 31
eRunic :: WritingSystem
eRunic
  = ieWritingSystem $ 32
eWritingSystemsCount :: WritingSystem
eWritingSystemsCount
  = ieWritingSystem $ 33

