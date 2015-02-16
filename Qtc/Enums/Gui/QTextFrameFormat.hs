{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextFrameFormat.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:35
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QTextFrameFormat (
 QTextFrameFormatPosition, eInFlow, eFloatLeft, eFloatRight
 , BorderStyle, eBorderStyle_None, eBorderStyle_Dotted, eBorderStyle_Dashed, eBorderStyle_Solid, eBorderStyle_Double, eBorderStyle_DotDash, eBorderStyle_DotDotDash, eBorderStyle_Groove, eBorderStyle_Ridge, eBorderStyle_Inset, eBorderStyle_Outset
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CQTextFrameFormatPosition a = CQTextFrameFormatPosition a
type QTextFrameFormatPosition = QEnum(CQTextFrameFormatPosition Int)

ieQTextFrameFormatPosition :: Int -> QTextFrameFormatPosition
ieQTextFrameFormatPosition x = QEnum (CQTextFrameFormatPosition x)

instance QEnumC (CQTextFrameFormatPosition Int) where
 qEnum_toInt (QEnum (CQTextFrameFormatPosition x)) = x
 qEnum_fromInt x = QEnum (CQTextFrameFormatPosition x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> QTextFrameFormatPosition -> IO ()) where
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

eInFlow :: QTextFrameFormatPosition
eInFlow
  = ieQTextFrameFormatPosition $ 0
eFloatLeft :: QTextFrameFormatPosition
eFloatLeft
  = ieQTextFrameFormatPosition $ 1
eFloatRight :: QTextFrameFormatPosition
eFloatRight
  = ieQTextFrameFormatPosition $ 2

data CBorderStyle a = CBorderStyle a
type BorderStyle = QEnum(CBorderStyle Int)

ieBorderStyle :: Int -> BorderStyle
ieBorderStyle x = QEnum (CBorderStyle x)

instance QEnumC (CBorderStyle Int) where
 qEnum_toInt (QEnum (CBorderStyle x)) = x
 qEnum_fromInt x = QEnum (CBorderStyle x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> BorderStyle -> IO ()) where
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

eBorderStyle_None :: BorderStyle
eBorderStyle_None
  = ieBorderStyle $ 0
eBorderStyle_Dotted :: BorderStyle
eBorderStyle_Dotted
  = ieBorderStyle $ 1
eBorderStyle_Dashed :: BorderStyle
eBorderStyle_Dashed
  = ieBorderStyle $ 2
eBorderStyle_Solid :: BorderStyle
eBorderStyle_Solid
  = ieBorderStyle $ 3
eBorderStyle_Double :: BorderStyle
eBorderStyle_Double
  = ieBorderStyle $ 4
eBorderStyle_DotDash :: BorderStyle
eBorderStyle_DotDash
  = ieBorderStyle $ 5
eBorderStyle_DotDotDash :: BorderStyle
eBorderStyle_DotDotDash
  = ieBorderStyle $ 6
eBorderStyle_Groove :: BorderStyle
eBorderStyle_Groove
  = ieBorderStyle $ 7
eBorderStyle_Ridge :: BorderStyle
eBorderStyle_Ridge
  = ieBorderStyle $ 8
eBorderStyle_Inset :: BorderStyle
eBorderStyle_Inset
  = ieBorderStyle $ 9
eBorderStyle_Outset :: BorderStyle
eBorderStyle_Outset
  = ieBorderStyle $ 10

