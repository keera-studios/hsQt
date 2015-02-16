{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUrl.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:36
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Enums.Core.QUrl (
 ParsingMode, eTolerantMode, eStrictMode
 , FormattingOption, FormattingOptions, eRemoveScheme, fRemoveScheme, eRemovePassword, fRemovePassword, eRemoveUserInfo, fRemoveUserInfo, eRemovePort, fRemovePort, eRemoveAuthority, fRemoveAuthority, eRemovePath, fRemovePath, eRemoveQuery, fRemoveQuery, eRemoveFragment, fRemoveFragment, eStripTrailingSlash, fStripTrailingSlash
 )
 where

import Foreign.C.Types
import Qtc.Classes.Base
import Qtc.ClassTypes.Core (QObject, TQObject, qObjectFromPtr)
import Qtc.Core.Base (Qcs, connectSlot, qtc_connectSlot_int, wrapSlotHandler_int)
import Qtc.Enums.Base
import Qtc.Enums.Classes.Core

data CParsingMode a = CParsingMode a
type ParsingMode = QEnum(CParsingMode Int)

ieParsingMode :: Int -> ParsingMode
ieParsingMode x = QEnum (CParsingMode x)

instance QEnumC (CParsingMode Int) where
 qEnum_toInt (QEnum (CParsingMode x)) = x
 qEnum_fromInt x = QEnum (CParsingMode x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> ParsingMode -> IO ()) where
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

eTolerantMode :: ParsingMode
eTolerantMode
  = ieParsingMode $ 0
eStrictMode :: ParsingMode
eStrictMode
  = ieParsingMode $ 1

data CFormattingOption a = CFormattingOption a
type FormattingOption = QEnum(CFormattingOption Int)

ieFormattingOption :: Int -> FormattingOption
ieFormattingOption x = QEnum (CFormattingOption x)

instance QEnumC (CFormattingOption Int) where
 qEnum_toInt (QEnum (CFormattingOption x)) = x
 qEnum_fromInt x = QEnum (CFormattingOption x)
 withQEnumResult x
   = do
     ti <- x
     return $ qEnum_fromInt $ fromIntegral ti
 withQEnumListResult x
   = do
     til <- x
     return $ map qEnum_fromInt til

instance Qcs (QObject c -> FormattingOption -> IO ()) where
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

data CFormattingOptions a = CFormattingOptions a
type FormattingOptions = QFlags(CFormattingOptions Int)

ifFormattingOptions :: Int -> FormattingOptions
ifFormattingOptions x = QFlags (CFormattingOptions x)

instance QFlagsC (CFormattingOptions Int) where
 qFlags_toInt (QFlags (CFormattingOptions x)) = x
 qFlags_fromInt x = QFlags (CFormattingOptions x)
 withQFlagsResult x
   = do
     ti <- x
     return $ qFlags_fromInt $ fromIntegral ti
 withQFlagsListResult x
   = do
     til <- x
     return $ map qFlags_fromInt til

instance Qcs (QObject c -> FormattingOptions -> IO ()) where
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

instance QeNone FormattingOption where
 eNone
  = ieFormattingOption $ 0
eRemoveScheme :: FormattingOption
eRemoveScheme
  = ieFormattingOption $ 1
eRemovePassword :: FormattingOption
eRemovePassword
  = ieFormattingOption $ 2
eRemoveUserInfo :: FormattingOption
eRemoveUserInfo
  = ieFormattingOption $ 6
eRemovePort :: FormattingOption
eRemovePort
  = ieFormattingOption $ 8
eRemoveAuthority :: FormattingOption
eRemoveAuthority
  = ieFormattingOption $ 30
eRemovePath :: FormattingOption
eRemovePath
  = ieFormattingOption $ 32
eRemoveQuery :: FormattingOption
eRemoveQuery
  = ieFormattingOption $ 64
eRemoveFragment :: FormattingOption
eRemoveFragment
  = ieFormattingOption $ 128
eStripTrailingSlash :: FormattingOption
eStripTrailingSlash
  = ieFormattingOption $ 65536

instance QfNone FormattingOptions where
 fNone
  = ifFormattingOptions $ 0
fRemoveScheme :: FormattingOptions
fRemoveScheme
  = ifFormattingOptions $ 1
fRemovePassword :: FormattingOptions
fRemovePassword
  = ifFormattingOptions $ 2
fRemoveUserInfo :: FormattingOptions
fRemoveUserInfo
  = ifFormattingOptions $ 6
fRemovePort :: FormattingOptions
fRemovePort
  = ifFormattingOptions $ 8
fRemoveAuthority :: FormattingOptions
fRemoveAuthority
  = ifFormattingOptions $ 30
fRemovePath :: FormattingOptions
fRemovePath
  = ifFormattingOptions $ 32
fRemoveQuery :: FormattingOptions
fRemoveQuery
  = ifFormattingOptions $ 64
fRemoveFragment :: FormattingOptions
fRemoveFragment
  = ifFormattingOptions $ 128
fStripTrailingSlash :: FormattingOptions
fStripTrailingSlash
  = ifFormattingOptions $ 65536

