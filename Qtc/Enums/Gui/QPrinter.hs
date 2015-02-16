{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPrinter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QPrinter (
 PrinterMode, eScreenResolution, ePrinterResolution, eHighResolution
 , QPrinterOrientation, ePortrait, eLandscape
 , PageSize, eA4, eB5, eLetter, eLegal, eExecutive, eA0, eA1, eA2, eA3, eA5, eA6, eA7, eA8, eA9, eB0, eB1, eB10, eB2, eB3, eB4, eB6, eB7, eB8, eB9, eC5E, eComm10E, eDLE, eFolio, eLedger, eTabloid, eNPageSize
 , PageOrder, eFirstPageFirst, eLastPageFirst
 , ColorMode, eGrayScale
 , PaperSource, eLower, eManual, eEnvelope, eEnvelopeManual, eAuto, eTractor, eSmallFormat, eLargeFormat, eLargeCapacity, eCassette, eFormSource, eMaxPageSource
 , PrinterState, eIdle, eError
 , OutputFormat, ePdfFormat, ePostScriptFormat
 , QPrinterPrintRange
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CPrinterMode a = CPrinterMode a
type PrinterMode = QEnum(CPrinterMode Int)

iePrinterMode :: Int -> PrinterMode
iePrinterMode x = QEnum (CPrinterMode x)

instance QEnumC (CPrinterMode Int) where
 qEnum_toInt (QEnum (CPrinterMode x)) = x
 qEnum_fromInt x = QEnum (CPrinterMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PrinterMode -> IO ()) where
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

eScreenResolution :: PrinterMode
eScreenResolution
  = iePrinterMode $ 0
ePrinterResolution :: PrinterMode
ePrinterResolution
  = iePrinterMode $ 1
eHighResolution :: PrinterMode
eHighResolution
  = iePrinterMode $ 2

data CQPrinterOrientation a = CQPrinterOrientation a
type QPrinterOrientation = QEnum(CQPrinterOrientation Int)

ieQPrinterOrientation :: Int -> QPrinterOrientation
ieQPrinterOrientation x = QEnum (CQPrinterOrientation x)

instance QEnumC (CQPrinterOrientation Int) where
 qEnum_toInt (QEnum (CQPrinterOrientation x)) = x
 qEnum_fromInt x = QEnum (CQPrinterOrientation x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QPrinterOrientation -> IO ()) where
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

ePortrait :: QPrinterOrientation
ePortrait
  = ieQPrinterOrientation $ 0
eLandscape :: QPrinterOrientation
eLandscape
  = ieQPrinterOrientation $ 1

data CPageSize a = CPageSize a
type PageSize = QEnum(CPageSize Int)

iePageSize :: Int -> PageSize
iePageSize x = QEnum (CPageSize x)

instance QEnumC (CPageSize Int) where
 qEnum_toInt (QEnum (CPageSize x)) = x
 qEnum_fromInt x = QEnum (CPageSize x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PageSize -> IO ()) where
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

eA4 :: PageSize
eA4
  = iePageSize $ 0
eB5 :: PageSize
eB5
  = iePageSize $ 1
eLetter :: PageSize
eLetter
  = iePageSize $ 2
eLegal :: PageSize
eLegal
  = iePageSize $ 3
eExecutive :: PageSize
eExecutive
  = iePageSize $ 4
eA0 :: PageSize
eA0
  = iePageSize $ 5
eA1 :: PageSize
eA1
  = iePageSize $ 6
eA2 :: PageSize
eA2
  = iePageSize $ 7
eA3 :: PageSize
eA3
  = iePageSize $ 8
eA5 :: PageSize
eA5
  = iePageSize $ 9
eA6 :: PageSize
eA6
  = iePageSize $ 10
eA7 :: PageSize
eA7
  = iePageSize $ 11
eA8 :: PageSize
eA8
  = iePageSize $ 12
eA9 :: PageSize
eA9
  = iePageSize $ 13
eB0 :: PageSize
eB0
  = iePageSize $ 14
eB1 :: PageSize
eB1
  = iePageSize $ 15
eB10 :: PageSize
eB10
  = iePageSize $ 16
eB2 :: PageSize
eB2
  = iePageSize $ 17
eB3 :: PageSize
eB3
  = iePageSize $ 18
eB4 :: PageSize
eB4
  = iePageSize $ 19
eB6 :: PageSize
eB6
  = iePageSize $ 20
eB7 :: PageSize
eB7
  = iePageSize $ 21
eB8 :: PageSize
eB8
  = iePageSize $ 22
eB9 :: PageSize
eB9
  = iePageSize $ 23
eC5E :: PageSize
eC5E
  = iePageSize $ 24
eComm10E :: PageSize
eComm10E
  = iePageSize $ 25
eDLE :: PageSize
eDLE
  = iePageSize $ 26
eFolio :: PageSize
eFolio
  = iePageSize $ 27
eLedger :: PageSize
eLedger
  = iePageSize $ 28
eTabloid :: PageSize
eTabloid
  = iePageSize $ 29
instance QeCustom PageSize where
 eCustom
  = iePageSize $ 30
eNPageSize :: PageSize
eNPageSize
  = iePageSize $ 30

data CPageOrder a = CPageOrder a
type PageOrder = QEnum(CPageOrder Int)

iePageOrder :: Int -> PageOrder
iePageOrder x = QEnum (CPageOrder x)

instance QEnumC (CPageOrder Int) where
 qEnum_toInt (QEnum (CPageOrder x)) = x
 qEnum_fromInt x = QEnum (CPageOrder x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PageOrder -> IO ()) where
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

eFirstPageFirst :: PageOrder
eFirstPageFirst
  = iePageOrder $ 0
eLastPageFirst :: PageOrder
eLastPageFirst
  = iePageOrder $ 1

data CColorMode a = CColorMode a
type ColorMode = QEnum(CColorMode Int)

ieColorMode :: Int -> ColorMode
ieColorMode x = QEnum (CColorMode x)

instance QEnumC (CColorMode Int) where
 qEnum_toInt (QEnum (CColorMode x)) = x
 qEnum_fromInt x = QEnum (CColorMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ColorMode -> IO ()) where
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

eGrayScale :: ColorMode
eGrayScale
  = ieColorMode $ 0
instance QeColor ColorMode where
 eColor
  = ieColorMode $ 1

data CPaperSource a = CPaperSource a
type PaperSource = QEnum(CPaperSource Int)

iePaperSource :: Int -> PaperSource
iePaperSource x = QEnum (CPaperSource x)

instance QEnumC (CPaperSource Int) where
 qEnum_toInt (QEnum (CPaperSource x)) = x
 qEnum_fromInt x = QEnum (CPaperSource x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PaperSource -> IO ()) where
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

instance QeOnlyOne PaperSource where
 eOnlyOne
  = iePaperSource $ 0
eLower :: PaperSource
eLower
  = iePaperSource $ 1
instance QeMiddle PaperSource where
 eMiddle
  = iePaperSource $ 2
eManual :: PaperSource
eManual
  = iePaperSource $ 3
eEnvelope :: PaperSource
eEnvelope
  = iePaperSource $ 4
eEnvelopeManual :: PaperSource
eEnvelopeManual
  = iePaperSource $ 5
eAuto :: PaperSource
eAuto
  = iePaperSource $ 6
eTractor :: PaperSource
eTractor
  = iePaperSource $ 7
eSmallFormat :: PaperSource
eSmallFormat
  = iePaperSource $ 8
eLargeFormat :: PaperSource
eLargeFormat
  = iePaperSource $ 9
eLargeCapacity :: PaperSource
eLargeCapacity
  = iePaperSource $ 10
eCassette :: PaperSource
eCassette
  = iePaperSource $ 11
eFormSource :: PaperSource
eFormSource
  = iePaperSource $ 12
eMaxPageSource :: PaperSource
eMaxPageSource
  = iePaperSource $ 13

data CPrinterState a = CPrinterState a
type PrinterState = QEnum(CPrinterState Int)

iePrinterState :: Int -> PrinterState
iePrinterState x = QEnum (CPrinterState x)

instance QEnumC (CPrinterState Int) where
 qEnum_toInt (QEnum (CPrinterState x)) = x
 qEnum_fromInt x = QEnum (CPrinterState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PrinterState -> IO ()) where
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

eIdle :: PrinterState
eIdle
  = iePrinterState $ 0
instance QeActive PrinterState where
 eActive
  = iePrinterState $ 1
instance QeAborted PrinterState where
 eAborted
  = iePrinterState $ 2
eError :: PrinterState
eError
  = iePrinterState $ 3

data COutputFormat a = COutputFormat a
type OutputFormat = QEnum(COutputFormat Int)

ieOutputFormat :: Int -> OutputFormat
ieOutputFormat x = QEnum (COutputFormat x)

instance QEnumC (COutputFormat Int) where
 qEnum_toInt (QEnum (COutputFormat x)) = x
 qEnum_fromInt x = QEnum (COutputFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> OutputFormat -> IO ()) where
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

instance QeNativeFormat OutputFormat where
 eNativeFormat
  = ieOutputFormat $ 0
ePdfFormat :: OutputFormat
ePdfFormat
  = ieOutputFormat $ 1
ePostScriptFormat :: OutputFormat
ePostScriptFormat
  = ieOutputFormat $ 2

data CQPrinterPrintRange a = CQPrinterPrintRange a
type QPrinterPrintRange = QEnum(CQPrinterPrintRange Int)

ieQPrinterPrintRange :: Int -> QPrinterPrintRange
ieQPrinterPrintRange x = QEnum (CQPrinterPrintRange x)

instance QEnumC (CQPrinterPrintRange Int) where
 qEnum_toInt (QEnum (CQPrinterPrintRange x)) = x
 qEnum_fromInt x = QEnum (CQPrinterPrintRange x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QPrinterPrintRange -> IO ()) where
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

instance QeAllPages QPrinterPrintRange where
 eAllPages
  = ieQPrinterPrintRange $ 0
instance QeSelection QPrinterPrintRange where
 eSelection
  = ieQPrinterPrintRange $ 1
instance QePageRange QPrinterPrintRange where
 ePageRange
  = ieQPrinterPrintRange $ 2

