{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPaintDevice.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Gui.QPaintDevice (
 PaintDeviceMetric, ePdmWidth, ePdmHeight, ePdmWidthMM, ePdmHeightMM, ePdmNumColors, ePdmDepth, ePdmDpiX, ePdmDpiY, ePdmPhysicalDpiX, ePdmPhysicalDpiY
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CPaintDeviceMetric a = CPaintDeviceMetric a
type PaintDeviceMetric = QEnum(CPaintDeviceMetric Int)

iePaintDeviceMetric :: Int -> PaintDeviceMetric
iePaintDeviceMetric x = QEnum (CPaintDeviceMetric x)

instance QEnumC (CPaintDeviceMetric Int) where
 qEnum_toInt (QEnum (CPaintDeviceMetric x)) = x
 qEnum_fromInt x = QEnum (CPaintDeviceMetric x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> PaintDeviceMetric -> IO ()) where
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

ePdmWidth :: PaintDeviceMetric
ePdmWidth
  = iePaintDeviceMetric $ 1
ePdmHeight :: PaintDeviceMetric
ePdmHeight
  = iePaintDeviceMetric $ 2
ePdmWidthMM :: PaintDeviceMetric
ePdmWidthMM
  = iePaintDeviceMetric $ 3
ePdmHeightMM :: PaintDeviceMetric
ePdmHeightMM
  = iePaintDeviceMetric $ 4
ePdmNumColors :: PaintDeviceMetric
ePdmNumColors
  = iePaintDeviceMetric $ 5
ePdmDepth :: PaintDeviceMetric
ePdmDepth
  = iePaintDeviceMetric $ 6
ePdmDpiX :: PaintDeviceMetric
ePdmDpiX
  = iePaintDeviceMetric $ 7
ePdmDpiY :: PaintDeviceMetric
ePdmDpiY
  = iePaintDeviceMetric $ 8
ePdmPhysicalDpiX :: PaintDeviceMetric
ePdmPhysicalDpiX
  = iePaintDeviceMetric $ 9
ePdmPhysicalDpiY :: PaintDeviceMetric
ePdmPhysicalDpiY
  = iePaintDeviceMetric $ 10

