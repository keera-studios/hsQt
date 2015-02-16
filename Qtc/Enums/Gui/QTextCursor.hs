{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextCursor.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTextCursor (
 MoveMode, eMoveAnchor, eKeepAnchor
 , MoveOperation, eNoMove, eStart, eStartOfLine, eStartOfBlock, eStartOfWord, ePreviousBlock, ePreviousCharacter, ePreviousWord, eWordLeft, eEndOfLine, eEndOfWord, eEndOfBlock, eNextBlock, eNextCharacter, eNextWord, eWordRight
 , SelectionType, eWordUnderCursor, eLineUnderCursor, eBlockUnderCursor, eDocument
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CMoveMode a = CMoveMode a
type MoveMode = QEnum(CMoveMode Int)

ieMoveMode :: Int -> MoveMode
ieMoveMode x = QEnum (CMoveMode x)

instance QEnumC (CMoveMode Int) where
 qEnum_toInt (QEnum (CMoveMode x)) = x
 qEnum_fromInt x = QEnum (CMoveMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MoveMode -> IO ()) where
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

eMoveAnchor :: MoveMode
eMoveAnchor
  = ieMoveMode $ 0
eKeepAnchor :: MoveMode
eKeepAnchor
  = ieMoveMode $ 1

data CMoveOperation a = CMoveOperation a
type MoveOperation = QEnum(CMoveOperation Int)

ieMoveOperation :: Int -> MoveOperation
ieMoveOperation x = QEnum (CMoveOperation x)

instance QEnumC (CMoveOperation Int) where
 qEnum_toInt (QEnum (CMoveOperation x)) = x
 qEnum_fromInt x = QEnum (CMoveOperation x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> MoveOperation -> IO ()) where
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

eNoMove :: MoveOperation
eNoMove
  = ieMoveOperation $ 0
eStart :: MoveOperation
eStart
  = ieMoveOperation $ 1
instance QeUp MoveOperation where
 eUp
  = ieMoveOperation $ 2
eStartOfLine :: MoveOperation
eStartOfLine
  = ieMoveOperation $ 3
eStartOfBlock :: MoveOperation
eStartOfBlock
  = ieMoveOperation $ 4
eStartOfWord :: MoveOperation
eStartOfWord
  = ieMoveOperation $ 5
ePreviousBlock :: MoveOperation
ePreviousBlock
  = ieMoveOperation $ 6
ePreviousCharacter :: MoveOperation
ePreviousCharacter
  = ieMoveOperation $ 7
ePreviousWord :: MoveOperation
ePreviousWord
  = ieMoveOperation $ 8
instance QeLeft MoveOperation where
 eLeft
  = ieMoveOperation $ 9
eWordLeft :: MoveOperation
eWordLeft
  = ieMoveOperation $ 10
instance QeEnd MoveOperation where
 eEnd
  = ieMoveOperation $ 11
instance QeDown MoveOperation where
 eDown
  = ieMoveOperation $ 12
eEndOfLine :: MoveOperation
eEndOfLine
  = ieMoveOperation $ 13
eEndOfWord :: MoveOperation
eEndOfWord
  = ieMoveOperation $ 14
eEndOfBlock :: MoveOperation
eEndOfBlock
  = ieMoveOperation $ 15
eNextBlock :: MoveOperation
eNextBlock
  = ieMoveOperation $ 16
eNextCharacter :: MoveOperation
eNextCharacter
  = ieMoveOperation $ 17
eNextWord :: MoveOperation
eNextWord
  = ieMoveOperation $ 18
instance QeRight MoveOperation where
 eRight
  = ieMoveOperation $ 19
eWordRight :: MoveOperation
eWordRight
  = ieMoveOperation $ 20

data CSelectionType a = CSelectionType a
type SelectionType = QEnum(CSelectionType Int)

ieSelectionType :: Int -> SelectionType
ieSelectionType x = QEnum (CSelectionType x)

instance QEnumC (CSelectionType Int) where
 qEnum_toInt (QEnum (CSelectionType x)) = x
 qEnum_fromInt x = QEnum (CSelectionType x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SelectionType -> IO ()) where
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

eWordUnderCursor :: SelectionType
eWordUnderCursor
  = ieSelectionType $ 0
eLineUnderCursor :: SelectionType
eLineUnderCursor
  = ieSelectionType $ 1
eBlockUnderCursor :: SelectionType
eBlockUnderCursor
  = ieSelectionType $ 2
eDocument :: SelectionType
eDocument
  = ieSelectionType $ 3

