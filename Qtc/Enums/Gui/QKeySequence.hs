{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QKeySequence.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QKeySequence (
 StandardKey, eUnknownKey, eHelpContents, eNew, eDelete, eCut, eCopy, ePaste, eUndo, eRedo, eBack, eZoomIn, eZoomOut, ePrint, eAddTab, eNextChild, ePreviousChild, eFind, eFindNext, eFindPrevious, eReplace, eSelectAll, eItalic, eUnderline, eMoveToNextChar, eMoveToPreviousChar, eMoveToNextWord, eMoveToPreviousWord, eMoveToNextLine, eMoveToPreviousLine, eMoveToNextPage, eMoveToPreviousPage, eMoveToStartOfLine, eMoveToEndOfLine, eMoveToStartOfBlock, eMoveToEndOfBlock, eMoveToStartOfDocument, eMoveToEndOfDocument, eSelectNextChar, eSelectPreviousChar, eSelectNextWord, eSelectPreviousWord, eSelectNextLine, eSelectPreviousLine, eSelectNextPage, eSelectPreviousPage, eSelectStartOfLine, eSelectEndOfLine, eSelectStartOfBlock, eSelectEndOfBlock, eSelectStartOfDocument, eSelectEndOfDocument, eDeleteStartOfWord, eDeleteEndOfWord, eDeleteEndOfLine
 , SequenceMatch, eNoMatch, ePartialMatch, eExactMatch
 , SequenceFormat, eNativeText, ePortableText
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CStandardKey a = CStandardKey a
type StandardKey = QEnum(CStandardKey Int)

ieStandardKey :: Int -> StandardKey
ieStandardKey x = QEnum (CStandardKey x)

instance QEnumC (CStandardKey Int) where
 qEnum_toInt (QEnum (CStandardKey x)) = x
 qEnum_fromInt x = QEnum (CStandardKey x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> StandardKey -> IO ()) where
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

eUnknownKey :: StandardKey
eUnknownKey
  = ieStandardKey $ 0
eHelpContents :: StandardKey
eHelpContents
  = ieStandardKey $ 1
instance QeWhatsThis StandardKey where
 eWhatsThis
  = ieStandardKey $ 2
instance QeOpen StandardKey where
 eOpen
  = ieStandardKey $ 3
instance QeClose StandardKey where
 eClose
  = ieStandardKey $ 4
instance QeSave StandardKey where
 eSave
  = ieStandardKey $ 5
eNew :: StandardKey
eNew
  = ieStandardKey $ 6
eDelete :: StandardKey
eDelete
  = ieStandardKey $ 7
eCut :: StandardKey
eCut
  = ieStandardKey $ 8
eCopy :: StandardKey
eCopy
  = ieStandardKey $ 9
ePaste :: StandardKey
ePaste
  = ieStandardKey $ 10
eUndo :: StandardKey
eUndo
  = ieStandardKey $ 11
eRedo :: StandardKey
eRedo
  = ieStandardKey $ 12
eBack :: StandardKey
eBack
  = ieStandardKey $ 13
instance QeForward StandardKey where
 eForward
  = ieStandardKey $ 14
instance QeRefresh StandardKey where
 eRefresh
  = ieStandardKey $ 15
eZoomIn :: StandardKey
eZoomIn
  = ieStandardKey $ 16
eZoomOut :: StandardKey
eZoomOut
  = ieStandardKey $ 17
ePrint :: StandardKey
ePrint
  = ieStandardKey $ 18
eAddTab :: StandardKey
eAddTab
  = ieStandardKey $ 19
eNextChild :: StandardKey
eNextChild
  = ieStandardKey $ 20
ePreviousChild :: StandardKey
ePreviousChild
  = ieStandardKey $ 21
eFind :: StandardKey
eFind
  = ieStandardKey $ 22
eFindNext :: StandardKey
eFindNext
  = ieStandardKey $ 23
eFindPrevious :: StandardKey
eFindPrevious
  = ieStandardKey $ 24
eReplace :: StandardKey
eReplace
  = ieStandardKey $ 25
eSelectAll :: StandardKey
eSelectAll
  = ieStandardKey $ 26
instance QeBold StandardKey where
 eBold
  = ieStandardKey $ 27
eItalic :: StandardKey
eItalic
  = ieStandardKey $ 28
eUnderline :: StandardKey
eUnderline
  = ieStandardKey $ 29
eMoveToNextChar :: StandardKey
eMoveToNextChar
  = ieStandardKey $ 30
eMoveToPreviousChar :: StandardKey
eMoveToPreviousChar
  = ieStandardKey $ 31
eMoveToNextWord :: StandardKey
eMoveToNextWord
  = ieStandardKey $ 32
eMoveToPreviousWord :: StandardKey
eMoveToPreviousWord
  = ieStandardKey $ 33
eMoveToNextLine :: StandardKey
eMoveToNextLine
  = ieStandardKey $ 34
eMoveToPreviousLine :: StandardKey
eMoveToPreviousLine
  = ieStandardKey $ 35
eMoveToNextPage :: StandardKey
eMoveToNextPage
  = ieStandardKey $ 36
eMoveToPreviousPage :: StandardKey
eMoveToPreviousPage
  = ieStandardKey $ 37
eMoveToStartOfLine :: StandardKey
eMoveToStartOfLine
  = ieStandardKey $ 38
eMoveToEndOfLine :: StandardKey
eMoveToEndOfLine
  = ieStandardKey $ 39
eMoveToStartOfBlock :: StandardKey
eMoveToStartOfBlock
  = ieStandardKey $ 40
eMoveToEndOfBlock :: StandardKey
eMoveToEndOfBlock
  = ieStandardKey $ 41
eMoveToStartOfDocument :: StandardKey
eMoveToStartOfDocument
  = ieStandardKey $ 42
eMoveToEndOfDocument :: StandardKey
eMoveToEndOfDocument
  = ieStandardKey $ 43
eSelectNextChar :: StandardKey
eSelectNextChar
  = ieStandardKey $ 44
eSelectPreviousChar :: StandardKey
eSelectPreviousChar
  = ieStandardKey $ 45
eSelectNextWord :: StandardKey
eSelectNextWord
  = ieStandardKey $ 46
eSelectPreviousWord :: StandardKey
eSelectPreviousWord
  = ieStandardKey $ 47
eSelectNextLine :: StandardKey
eSelectNextLine
  = ieStandardKey $ 48
eSelectPreviousLine :: StandardKey
eSelectPreviousLine
  = ieStandardKey $ 49
eSelectNextPage :: StandardKey
eSelectNextPage
  = ieStandardKey $ 50
eSelectPreviousPage :: StandardKey
eSelectPreviousPage
  = ieStandardKey $ 51
eSelectStartOfLine :: StandardKey
eSelectStartOfLine
  = ieStandardKey $ 52
eSelectEndOfLine :: StandardKey
eSelectEndOfLine
  = ieStandardKey $ 53
eSelectStartOfBlock :: StandardKey
eSelectStartOfBlock
  = ieStandardKey $ 54
eSelectEndOfBlock :: StandardKey
eSelectEndOfBlock
  = ieStandardKey $ 55
eSelectStartOfDocument :: StandardKey
eSelectStartOfDocument
  = ieStandardKey $ 56
eSelectEndOfDocument :: StandardKey
eSelectEndOfDocument
  = ieStandardKey $ 57
eDeleteStartOfWord :: StandardKey
eDeleteStartOfWord
  = ieStandardKey $ 58
eDeleteEndOfWord :: StandardKey
eDeleteEndOfWord
  = ieStandardKey $ 59
eDeleteEndOfLine :: StandardKey
eDeleteEndOfLine
  = ieStandardKey $ 60

data CSequenceMatch a = CSequenceMatch a
type SequenceMatch = QEnum(CSequenceMatch Int)

ieSequenceMatch :: Int -> SequenceMatch
ieSequenceMatch x = QEnum (CSequenceMatch x)

instance QEnumC (CSequenceMatch Int) where
 qEnum_toInt (QEnum (CSequenceMatch x)) = x
 qEnum_fromInt x = QEnum (CSequenceMatch x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SequenceMatch -> IO ()) where
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

eNoMatch :: SequenceMatch
eNoMatch
  = ieSequenceMatch $ 0
ePartialMatch :: SequenceMatch
ePartialMatch
  = ieSequenceMatch $ 1
eExactMatch :: SequenceMatch
eExactMatch
  = ieSequenceMatch $ 2

data CSequenceFormat a = CSequenceFormat a
type SequenceFormat = QEnum(CSequenceFormat Int)

ieSequenceFormat :: Int -> SequenceFormat
ieSequenceFormat x = QEnum (CSequenceFormat x)

instance QEnumC (CSequenceFormat Int) where
 qEnum_toInt (QEnum (CSequenceFormat x)) = x
 qEnum_fromInt x = QEnum (CSequenceFormat x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SequenceFormat -> IO ()) where
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

eNativeText :: SequenceFormat
eNativeText
  = ieSequenceFormat $ 0
ePortableText :: SequenceFormat
ePortableText
  = ieSequenceFormat $ 1

