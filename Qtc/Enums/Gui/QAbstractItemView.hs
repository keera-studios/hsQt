{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractItemView.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QAbstractItemView (
 QAbstractItemViewSelectionMode, eMultiSelection, eExtendedSelection, eContiguousSelection
 , SelectionBehavior, eSelectItems, eSelectRows, eSelectColumns
 , ScrollHint, eEnsureVisible, ePositionAtTop, ePositionAtBottom, ePositionAtCenter
 , EditTrigger, EditTriggers, eNoEditTriggers, fNoEditTriggers, eCurrentChanged, fCurrentChanged, eDoubleClicked, fDoubleClicked, eSelectedClicked, fSelectedClicked, eEditKeyPressed, fEditKeyPressed, eAnyKeyPressed, fAnyKeyPressed, eAllEditTriggers, fAllEditTriggers
 , ScrollMode, eScrollPerItem, eScrollPerPixel
 , DragDropMode, eNoDragDrop, eDragOnly, eDropOnly, eDragDrop, eInternalMove
 , CursorAction, eMoveUp, eMoveDown, eMoveLeft, eMoveRight, eMoveHome, eMoveEnd, eMovePageUp, eMovePageDown, eMoveNext, eMovePrevious
 , QAbstractItemViewState, eNoState, eDraggingState, eDragSelectingState, eEditingState, eExpandingState, eCollapsingState, eAnimatingState
 , DropIndicatorPosition, eOnItem, eAboveItem, eBelowItem, eOnViewport
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQAbstractItemViewSelectionMode a = CQAbstractItemViewSelectionMode a
type QAbstractItemViewSelectionMode = QEnum(CQAbstractItemViewSelectionMode Int)

ieQAbstractItemViewSelectionMode :: Int -> QAbstractItemViewSelectionMode
ieQAbstractItemViewSelectionMode x = QEnum (CQAbstractItemViewSelectionMode x)

instance QEnumC (CQAbstractItemViewSelectionMode Int) where
 qEnum_toInt (QEnum (CQAbstractItemViewSelectionMode x)) = x
 qEnum_fromInt x = QEnum (CQAbstractItemViewSelectionMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QAbstractItemViewSelectionMode -> IO ()) where
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

instance QeNoSelection QAbstractItemViewSelectionMode where
 eNoSelection
  = ieQAbstractItemViewSelectionMode $ 0
instance QeSingleSelection QAbstractItemViewSelectionMode where
 eSingleSelection
  = ieQAbstractItemViewSelectionMode $ 1
eMultiSelection :: QAbstractItemViewSelectionMode
eMultiSelection
  = ieQAbstractItemViewSelectionMode $ 2
eExtendedSelection :: QAbstractItemViewSelectionMode
eExtendedSelection
  = ieQAbstractItemViewSelectionMode $ 3
eContiguousSelection :: QAbstractItemViewSelectionMode
eContiguousSelection
  = ieQAbstractItemViewSelectionMode $ 4

data CSelectionBehavior a = CSelectionBehavior a
type SelectionBehavior = QEnum(CSelectionBehavior Int)

ieSelectionBehavior :: Int -> SelectionBehavior
ieSelectionBehavior x = QEnum (CSelectionBehavior x)

instance QEnumC (CSelectionBehavior Int) where
 qEnum_toInt (QEnum (CSelectionBehavior x)) = x
 qEnum_fromInt x = QEnum (CSelectionBehavior x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> SelectionBehavior -> IO ()) where
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

eSelectItems :: SelectionBehavior
eSelectItems
  = ieSelectionBehavior $ 0
eSelectRows :: SelectionBehavior
eSelectRows
  = ieSelectionBehavior $ 1
eSelectColumns :: SelectionBehavior
eSelectColumns
  = ieSelectionBehavior $ 2

data CScrollHint a = CScrollHint a
type ScrollHint = QEnum(CScrollHint Int)

ieScrollHint :: Int -> ScrollHint
ieScrollHint x = QEnum (CScrollHint x)

instance QEnumC (CScrollHint Int) where
 qEnum_toInt (QEnum (CScrollHint x)) = x
 qEnum_fromInt x = QEnum (CScrollHint x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ScrollHint -> IO ()) where
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

eEnsureVisible :: ScrollHint
eEnsureVisible
  = ieScrollHint $ 0
ePositionAtTop :: ScrollHint
ePositionAtTop
  = ieScrollHint $ 1
ePositionAtBottom :: ScrollHint
ePositionAtBottom
  = ieScrollHint $ 2
ePositionAtCenter :: ScrollHint
ePositionAtCenter
  = ieScrollHint $ 3

data CEditTrigger a = CEditTrigger a
type EditTrigger = QEnum(CEditTrigger Int)

ieEditTrigger :: Int -> EditTrigger
ieEditTrigger x = QEnum (CEditTrigger x)

instance QEnumC (CEditTrigger Int) where
 qEnum_toInt (QEnum (CEditTrigger x)) = x
 qEnum_fromInt x = QEnum (CEditTrigger x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> EditTrigger -> IO ()) where
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

data CEditTriggers a = CEditTriggers a
type EditTriggers = QFlags(CEditTriggers Int)

ifEditTriggers :: Int -> EditTriggers
ifEditTriggers x = QFlags (CEditTriggers x)

instance QFlagsC (CEditTriggers Int) where
 qFlags_toInt (QFlags (CEditTriggers x)) = x
 qFlags_fromInt x = QFlags (CEditTriggers x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> EditTriggers -> IO ()) where
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

eNoEditTriggers :: EditTrigger
eNoEditTriggers
  = ieEditTrigger $ 0
eCurrentChanged :: EditTrigger
eCurrentChanged
  = ieEditTrigger $ 1
eDoubleClicked :: EditTrigger
eDoubleClicked
  = ieEditTrigger $ 2
eSelectedClicked :: EditTrigger
eSelectedClicked
  = ieEditTrigger $ 4
eEditKeyPressed :: EditTrigger
eEditKeyPressed
  = ieEditTrigger $ 8
eAnyKeyPressed :: EditTrigger
eAnyKeyPressed
  = ieEditTrigger $ 16
eAllEditTriggers :: EditTrigger
eAllEditTriggers
  = ieEditTrigger $ 31

fNoEditTriggers :: EditTriggers
fNoEditTriggers
  = ifEditTriggers $ 0
fCurrentChanged :: EditTriggers
fCurrentChanged
  = ifEditTriggers $ 1
fDoubleClicked :: EditTriggers
fDoubleClicked
  = ifEditTriggers $ 2
fSelectedClicked :: EditTriggers
fSelectedClicked
  = ifEditTriggers $ 4
fEditKeyPressed :: EditTriggers
fEditKeyPressed
  = ifEditTriggers $ 8
fAnyKeyPressed :: EditTriggers
fAnyKeyPressed
  = ifEditTriggers $ 16
fAllEditTriggers :: EditTriggers
fAllEditTriggers
  = ifEditTriggers $ 31

data CScrollMode a = CScrollMode a
type ScrollMode = QEnum(CScrollMode Int)

ieScrollMode :: Int -> ScrollMode
ieScrollMode x = QEnum (CScrollMode x)

instance QEnumC (CScrollMode Int) where
 qEnum_toInt (QEnum (CScrollMode x)) = x
 qEnum_fromInt x = QEnum (CScrollMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ScrollMode -> IO ()) where
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

eScrollPerItem :: ScrollMode
eScrollPerItem
  = ieScrollMode $ 0
eScrollPerPixel :: ScrollMode
eScrollPerPixel
  = ieScrollMode $ 1

data CDragDropMode a = CDragDropMode a
type DragDropMode = QEnum(CDragDropMode Int)

ieDragDropMode :: Int -> DragDropMode
ieDragDropMode x = QEnum (CDragDropMode x)

instance QEnumC (CDragDropMode Int) where
 qEnum_toInt (QEnum (CDragDropMode x)) = x
 qEnum_fromInt x = QEnum (CDragDropMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DragDropMode -> IO ()) where
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

eNoDragDrop :: DragDropMode
eNoDragDrop
  = ieDragDropMode $ 0
eDragOnly :: DragDropMode
eDragOnly
  = ieDragDropMode $ 1
eDropOnly :: DragDropMode
eDropOnly
  = ieDragDropMode $ 2
eDragDrop :: DragDropMode
eDragDrop
  = ieDragDropMode $ 3
eInternalMove :: DragDropMode
eInternalMove
  = ieDragDropMode $ 4

data CCursorAction a = CCursorAction a
type CursorAction = QEnum(CCursorAction Int)

ieCursorAction :: Int -> CursorAction
ieCursorAction x = QEnum (CCursorAction x)

instance QEnumC (CCursorAction Int) where
 qEnum_toInt (QEnum (CCursorAction x)) = x
 qEnum_fromInt x = QEnum (CCursorAction x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> CursorAction -> IO ()) where
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

eMoveUp :: CursorAction
eMoveUp
  = ieCursorAction $ 0
eMoveDown :: CursorAction
eMoveDown
  = ieCursorAction $ 1
eMoveLeft :: CursorAction
eMoveLeft
  = ieCursorAction $ 2
eMoveRight :: CursorAction
eMoveRight
  = ieCursorAction $ 3
eMoveHome :: CursorAction
eMoveHome
  = ieCursorAction $ 4
eMoveEnd :: CursorAction
eMoveEnd
  = ieCursorAction $ 5
eMovePageUp :: CursorAction
eMovePageUp
  = ieCursorAction $ 6
eMovePageDown :: CursorAction
eMovePageDown
  = ieCursorAction $ 7
eMoveNext :: CursorAction
eMoveNext
  = ieCursorAction $ 8
eMovePrevious :: CursorAction
eMovePrevious
  = ieCursorAction $ 9

data CQAbstractItemViewState a = CQAbstractItemViewState a
type QAbstractItemViewState = QEnum(CQAbstractItemViewState Int)

ieQAbstractItemViewState :: Int -> QAbstractItemViewState
ieQAbstractItemViewState x = QEnum (CQAbstractItemViewState x)

instance QEnumC (CQAbstractItemViewState Int) where
 qEnum_toInt (QEnum (CQAbstractItemViewState x)) = x
 qEnum_fromInt x = QEnum (CQAbstractItemViewState x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QAbstractItemViewState -> IO ()) where
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

eNoState :: QAbstractItemViewState
eNoState
  = ieQAbstractItemViewState $ 0
eDraggingState :: QAbstractItemViewState
eDraggingState
  = ieQAbstractItemViewState $ 1
eDragSelectingState :: QAbstractItemViewState
eDragSelectingState
  = ieQAbstractItemViewState $ 2
eEditingState :: QAbstractItemViewState
eEditingState
  = ieQAbstractItemViewState $ 3
eExpandingState :: QAbstractItemViewState
eExpandingState
  = ieQAbstractItemViewState $ 4
eCollapsingState :: QAbstractItemViewState
eCollapsingState
  = ieQAbstractItemViewState $ 5
eAnimatingState :: QAbstractItemViewState
eAnimatingState
  = ieQAbstractItemViewState $ 6

data CDropIndicatorPosition a = CDropIndicatorPosition a
type DropIndicatorPosition = QEnum(CDropIndicatorPosition Int)

ieDropIndicatorPosition :: Int -> DropIndicatorPosition
ieDropIndicatorPosition x = QEnum (CDropIndicatorPosition x)

instance QEnumC (CDropIndicatorPosition Int) where
 qEnum_toInt (QEnum (CDropIndicatorPosition x)) = x
 qEnum_fromInt x = QEnum (CDropIndicatorPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> DropIndicatorPosition -> IO ()) where
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

eOnItem :: DropIndicatorPosition
eOnItem
  = ieDropIndicatorPosition $ 0
eAboveItem :: DropIndicatorPosition
eAboveItem
  = ieDropIndicatorPosition $ 1
eBelowItem :: DropIndicatorPosition
eBelowItem
  = ieDropIndicatorPosition $ 2
eOnViewport :: DropIndicatorPosition
eOnViewport
  = ieDropIndicatorPosition $ 3

