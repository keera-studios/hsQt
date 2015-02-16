{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDateTimeEdit.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QDateTimeEdit (
 Section, Sections, eNoSection, fNoSection, eAmPmSection, fAmPmSection, eMSecSection, fMSecSection, eSecondSection, fSecondSection, eMinuteSection, fMinuteSection, eHourSection, fHourSection, eDaySection, fDaySection, eMonthSection, fMonthSection, eYearSection, fYearSection, eTimeSections_Mask, fTimeSections_Mask, eDateSections_Mask, fDateSections_Mask
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CSection a = CSection a
type Section = QEnum(CSection Int)

ieSection :: Int -> Section
ieSection x = QEnum (CSection x)

instance QEnumC (CSection Int) where
 qEnum_toInt (QEnum (CSection x)) = x
 qEnum_fromInt x = QEnum (CSection x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> Section -> IO ()) where
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

data CSections a = CSections a
type Sections = QFlags(CSections Int)

ifSections :: Int -> Sections
ifSections x = QFlags (CSections x)

instance QFlagsC (CSections Int) where
 qFlags_toInt (QFlags (CSections x)) = x
 qFlags_fromInt x = QFlags (CSections x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> Sections -> IO ()) where
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

eNoSection :: Section
eNoSection
  = ieSection $ 0
eAmPmSection :: Section
eAmPmSection
  = ieSection $ 1
eMSecSection :: Section
eMSecSection
  = ieSection $ 2
eSecondSection :: Section
eSecondSection
  = ieSection $ 4
eMinuteSection :: Section
eMinuteSection
  = ieSection $ 8
eHourSection :: Section
eHourSection
  = ieSection $ 16
eDaySection :: Section
eDaySection
  = ieSection $ 256
eMonthSection :: Section
eMonthSection
  = ieSection $ 512
eYearSection :: Section
eYearSection
  = ieSection $ 1024
eTimeSections_Mask :: Section
eTimeSections_Mask
  = ieSection $ 31
eDateSections_Mask :: Section
eDateSections_Mask
  = ieSection $ 1792

fNoSection :: Sections
fNoSection
  = ifSections $ 0
fAmPmSection :: Sections
fAmPmSection
  = ifSections $ 1
fMSecSection :: Sections
fMSecSection
  = ifSections $ 2
fSecondSection :: Sections
fSecondSection
  = ifSections $ 4
fMinuteSection :: Sections
fMinuteSection
  = ifSections $ 8
fHourSection :: Sections
fHourSection
  = ifSections $ 16
fDaySection :: Sections
fDaySection
  = ifSections $ 256
fMonthSection :: Sections
fMonthSection
  = ifSections $ 512
fYearSection :: Sections
fYearSection
  = ifSections $ 1024
fTimeSections_Mask :: Sections
fTimeSections_Mask
  = ifSections $ 31
fDateSections_Mask :: Sections
fDateSections_Mask
  = ifSections $ 1792

