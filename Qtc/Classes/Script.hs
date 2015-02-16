{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Script.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Script (
  qScriptEngine, evaluate, newObject, globalObject, newQObject, newQMetaObject, toScriptValue, fromScriptValue, toScriptQObjectValue, fromScriptQObjectValue
  , construct, call, setScriptProperty, scriptProperty, qScriptValue_delete
  , toScriptInt, toBool, toScriptString 
  , fromScriptInt, fromBool, fromScriptString
  , argument, argumentCount, thisObject, qScriptContext_delete
  , qNsfContainer
  , registerDsSignal, dsSignal_nll, dsSignal_int, dsSignal_bool, dsSignal_ptr, connectDynamic, connectDynamicSlot
  , scriptSlot_nll, scriptSlot_int, scriptSlot_bool, scriptSlot_ptr
  )
  where

import Foreign.C.Types

import Qtc.Classes.Base
import Qtc.ClassTypes.Core
import Qtc.Core.Base
import Qtc.ClassTypes.Script
import Data.List

class QqScriptEngine x1 where
  qScriptEngine :: x1 -> IO (QScriptEngine ())

instance QqScriptEngine (()) where
 qScriptEngine ()
  = withQScriptEngineResult $
    qtc_QScriptEngine

foreign import ccall "qtc_QScriptEngine" qtc_QScriptEngine :: IO (Ptr (TQScriptEngine ()))

instance QqScriptEngine ((QObject a)) where
 qScriptEngine _qobj
  = withQScriptEngineResult $
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QScriptEngine1 cobj_qobj

foreign import ccall "qtc_QScriptEngine1" qtc_QScriptEngine1 :: Ptr (TQObject a) -> IO (Ptr (TQScriptEngine ()))

evaluate :: QScriptEngine a -> String -> IO (QScriptValue ())
evaluate _qsce _sdat
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    withCWString _sdat $ \cstr_sdat ->
    qtc_QScriptEngine_evaluate cobj_qsce cstr_sdat

foreign import ccall "qtc_QScriptEngine_evaluate" qtc_QScriptEngine_evaluate :: Ptr (TQScriptEngine a) -> CWString -> IO (Ptr (TQScriptValue ()))

newObject :: QScriptEngine a -> IO (QScriptValue ())
newObject _qsce
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    qtc_QScriptEngine_newObject cobj_qsce

foreign import ccall "qtc_QScriptEngine_newObject" qtc_QScriptEngine_newObject :: Ptr (TQScriptEngine a) -> IO (Ptr (TQScriptValue ()))

globalObject :: QScriptEngine a -> IO (QScriptValue ())
globalObject _qsce
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    qtc_QScriptEngine_globalObject cobj_qsce

foreign import ccall "qtc_QScriptEngine_globalObject" qtc_QScriptEngine_globalObject :: Ptr (TQScriptEngine a) -> IO (Ptr (TQScriptValue ()))

newQObject :: QScriptEngine a -> QObject b -> IO (QScriptValue ())
newQObject _qsce _qobj
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QScriptEngine_newQObject cobj_qsce cobj_qobj

foreign import ccall "qtc_QScriptEngine_newQObject" qtc_QScriptEngine_newQObject :: Ptr (TQScriptEngine a) -> Ptr (TQObject b) -> IO (Ptr (TQScriptValue ()))

newQMetaObject :: QScriptEngine a -> QMetaObject b -> IO (QScriptValue ())
newQMetaObject _qsce _qobj
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QScriptEngine_newQMetaObject cobj_qsce cobj_qobj

foreign import ccall "qtc_QScriptEngine_newQMetaObject" qtc_QScriptEngine_newQMetaObject :: Ptr (TQScriptEngine a) -> Ptr (TQMetaObject b) -> IO (Ptr (TQScriptValue ()))

toScriptValue :: String -> QScriptEngine a -> Object b -> IO (QScriptValue ())
toScriptValue _qtyp _qsce _qobj
  = withQScriptValueResult $
    withCWString _qtyp $ \cstr_qtyp ->
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QScriptEngine_toScriptValue cstr_qtyp cobj_qsce cobj_qobj

foreign import ccall "qtc_QScriptEngine_toScriptValue" qtc_QScriptEngine_toScriptValue :: CWString -> Ptr (TQScriptEngine a) -> Ptr b -> IO (Ptr (TQScriptValue ()))

toScriptQObjectValue :: String -> QScriptEngine a -> QObject b -> IO (QScriptValue ())
toScriptQObjectValue _qtyp _qsce _qobj
  = withQScriptValueResult $
    withCWString _qtyp $ \cstr_qtyp ->
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qobj $ \cobj_qobj ->
    qtc_QScriptEngine_toScriptQObjectValue cstr_qtyp cobj_qsce cobj_qobj

foreign import ccall "qtc_QScriptEngine_toScriptQObjectValue" qtc_QScriptEngine_toScriptQObjectValue :: CWString -> Ptr (TQScriptEngine a) -> Ptr (TQObject b) -> IO (Ptr (TQScriptValue ()))

fromScriptValue :: String -> QScriptEngine a -> QScriptValue () -> IO (Object ())
fromScriptValue _qtyp _qsce _qscv
  = withObjectRefResult $
    withCWString _qtyp $ \cstr_qtyp ->
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qscv $ \cobj_qscv ->
    qtc_QScriptEngine_fromScriptValue cstr_qtyp cobj_qsce cobj_qscv

foreign import ccall "qtc_QScriptEngine_fromScriptValue" qtc_QScriptEngine_fromScriptValue :: CWString -> Ptr (TQScriptEngine a) -> Ptr (TQScriptValue b) -> IO (Ptr ())

fromScriptQObjectValue :: String -> QScriptEngine a -> QScriptValue () -> IO (QObject ())
fromScriptQObjectValue _qtyp _qsce _qscv
  = withQObjectResult $
    withCWString _qtyp $ \cstr_qtyp ->
    withObjectPtr _qsce $ \cobj_qsce ->
    withObjectPtr _qscv $ \cobj_qscv ->
    qtc_QScriptEngine_fromScriptQObjectValue cstr_qtyp cobj_qsce cobj_qscv

foreign import ccall "qtc_QScriptEngine_fromScriptQObjectValue" qtc_QScriptEngine_fromScriptQObjectValue :: CWString -> Ptr (TQScriptEngine a) -> Ptr (TQScriptValue b) -> IO (Ptr (TQObject ()))

construct :: QScriptValue () -> [QScriptValue ()] -> IO (QScriptValue ())
construct _qsvl _qsva
  = withQScriptValueResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    withQListObject _qsva $ \cqlistlen_qsva cqlistobj_qsva ->
    qtc_QScriptValue_construct cobj_qsvl cqlistlen_qsva cqlistobj_qsva

foreign import ccall "qtc_QScriptValue_construct" qtc_QScriptValue_construct :: Ptr (TQScriptValue ()) -> CInt -> Ptr (Ptr (TQScriptValue ())) -> IO (Ptr (TQScriptValue ()))

call :: QScriptValue () -> QScriptValue () -> [QScriptValue ()] -> IO (QScriptValue ())
call _qsvl _qsvt _qsva
  = withQScriptValueResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    withObjectPtr _qsvt $ \cobj_qsvt ->
    withQListObject _qsva $ \cqlistlen_qsva cqlistobj_qsva ->
    qtc_QScriptValue_call cobj_qsvl cobj_qsvt cqlistlen_qsva cqlistobj_qsva

foreign import ccall "qtc_QScriptValue_call" qtc_QScriptValue_call :: Ptr (TQScriptValue ()) -> Ptr (TQScriptValue ()) -> CInt -> Ptr (Ptr (TQScriptValue ())) -> IO (Ptr (TQScriptValue ()))

setScriptProperty :: QScriptValue () -> String -> QScriptValue () -> IO ()
setScriptProperty _qsvl _sprp _qstv
  = withObjectPtr _qsvl $ \cobj_qsvl ->
    withCWString _sprp $ \cstr_sprp ->
    withObjectPtr _qstv $ \cobj_qstv ->
    qtc_QScriptValue_setProperty cobj_qsvl cstr_sprp cobj_qstv

foreign import ccall "qtc_QScriptValue_setProperty" qtc_QScriptValue_setProperty :: Ptr (TQScriptValue ()) -> CWString -> Ptr (TQScriptValue ()) -> IO ()

scriptProperty :: QScriptValue () -> String -> IO (QScriptValue ())
scriptProperty _qsvl _sprp
  = withQScriptValueResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    withCWString _sprp $ \cstr_sprp ->
    qtc_QScriptValue_property cobj_qsvl cstr_sprp 

foreign import ccall "qtc_QScriptValue_property" qtc_QScriptValue_property :: Ptr (TQScriptValue ()) -> CWString -> IO (Ptr (TQScriptValue ()))

qScriptValue_delete :: QScriptValue () -> IO ()
qScriptValue_delete _qsvl
  = withObjectPtr _qsvl $ \cobj_qsvl ->
    qtc_QScriptValue_delete cobj_qsvl

foreign import ccall "qtc_QScriptValue_delete" qtc_QScriptValue_delete :: Ptr (TQScriptValue ()) -> IO ()

toScriptInt :: QScriptValue () -> IO (Int)
toScriptInt _qsvl
  = withIntResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    qtc_QScriptValue_toInt cobj_qsvl 

foreign import ccall "qtc_QScriptValue_toInt" qtc_QScriptValue_toInt :: Ptr (TQScriptValue ()) -> IO (CInt)

toBool :: QScriptValue () -> IO (Bool)
toBool _qsvl
  = withBoolResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    qtc_QScriptValue_toBool cobj_qsvl 

foreign import ccall "qtc_QScriptValue_toBool" qtc_QScriptValue_toBool :: Ptr (TQScriptValue ()) -> IO (CBool)

toScriptString :: QScriptValue () -> IO (String)
toScriptString _qsvl
  = withStringResult $
    withObjectPtr _qsvl $ \cobj_qsvl ->
    qtc_QScriptValue_toString cobj_qsvl 
foreign import ccall "qtc_QScriptValue_toString" qtc_QScriptValue_toString :: Ptr (TQScriptValue ()) -> IO (Ptr (TQString ()))

fromScriptInt :: QScriptEngine () -> Int -> IO (QScriptValue ())
fromScriptInt _qsce _aind
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    qtc_QScriptValue_fromInt cobj_qsce (toCInt _aind) 

foreign import ccall "qtc_QScriptValue_fromInt" qtc_QScriptValue_fromInt :: Ptr (TQScriptEngine ()) -> CInt -> IO (Ptr (TQScriptValue ()))

fromBool :: QScriptEngine () -> Bool -> IO (QScriptValue ())
fromBool _qsce _abool
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    qtc_QScriptValue_fromBool cobj_qsce (toCBool _abool) 

foreign import ccall "qtc_QScriptValue_fromBool" qtc_QScriptValue_fromBool :: Ptr (TQScriptEngine ()) -> CBool -> IO (Ptr (TQScriptValue ()))

fromScriptString :: QScriptEngine () -> String -> IO (QScriptValue ())
fromScriptString _qsce _astr
  = withQScriptValueResult $
    withObjectPtr _qsce $ \cobj_qsce ->
    withCWString _astr $ \cstr_a ->
    qtc_QScriptValue_fromString cobj_qsce cstr_a

foreign import ccall "qtc_QScriptValue_fromString" qtc_QScriptValue_fromString :: Ptr (TQScriptEngine ()) -> CWString -> IO (Ptr (TQScriptValue ()))

argumentCount :: QScriptContext () -> IO (Int)
argumentCount _qctx
  = withIntResult $
    withObjectPtr _qctx $ \cobj_qctx ->
    qtc_QScriptContext_argumentCount cobj_qctx 

foreign import ccall "qtc_QScriptContext_argumentCount" qtc_QScriptContext_argumentCount :: Ptr (TQScriptContext ()) -> IO (CInt)

argument :: QScriptContext () -> Int -> IO (QScriptValue ())
argument _qctx _aind
  = withQScriptValueResult $
    withObjectPtr _qctx $ \cobj_qctx ->
    qtc_QScriptContext_argument cobj_qctx (toCInt _aind)

foreign import ccall "qtc_QScriptContext_argument" qtc_QScriptContext_argument :: Ptr (TQScriptContext ()) -> CInt -> IO (Ptr (TQScriptValue ()))

thisObject :: QScriptContext () -> IO (QScriptValue ())
thisObject _qctx
  = withQScriptValueResult $
    withObjectPtr _qctx $ \cobj_qctx ->
    qtc_QScriptContext_thisObject cobj_qctx

foreign import ccall "qtc_QScriptContext_thisObject" qtc_QScriptContext_thisObject :: Ptr (TQScriptContext ()) -> IO (Ptr (TQScriptValue ()))

qScriptContext_delete :: QScriptContext () -> IO ()
qScriptContext_delete _qctx
  = withObjectPtr _qctx $ \cobj_qctx ->
    qtc_QScriptContext_delete cobj_qctx

foreign import ccall "qtc_QScriptContext_delete" qtc_QScriptContext_delete :: Ptr (TQScriptContext ()) -> IO ()

class QqNsfContainer x1 where
  qNsfContainer :: x1 -> IO (QNsfContainer ())

instance QqNsfContainer ((QScriptContext () -> IO ())) where
 qNsfContainer (_qnsf)
  = do
    funptr  <- wrapNsfHandler2 nsfHandlerWrapper2
    stptr   <- newStablePtr (Wrap _qnsf)
    withQNsfContainerResult $
      qtc_QNsfContainer (toCFunPtr funptr) (castStablePtrToPtr stptr)
  where
    nsfHandlerWrapper2 :: Ptr fun -> Ptr () -> Ptr (TQScriptContext ()) -> IO ()
    nsfHandlerWrapper2 funptr stptr x0
      = do x0obj <- objectFromPtr_nf x0
           if (objectIsNull x0obj)
            then do when (stptr/=ptrNull)
                     (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                     (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _qnsf x0obj
           return ()

foreign import ccall "qtc_QNsfContainer" qtc_QNsfContainer :: Ptr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> Ptr () -> IO (Ptr (TQNsfContainer ()))

foreign import ccall "wrapper" wrapNsfHandler2 :: (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()))

instance QqNsfContainer (QObject a, (QScriptContext () -> IO ())) where
 qNsfContainer (_parent, _qnsf)
  = do
    funptr  <- wrapNsfHandler3 nsfHandlerWrapper3
    stptr   <- newStablePtr (Wrap _qnsf)
    withQNsfContainerResult $
      withObjectPtr _parent $ \cobj_parent ->
      qtc_QNsfContainer1 cobj_parent (toCFunPtr funptr) (castStablePtrToPtr stptr)
  where
    nsfHandlerWrapper3 :: Ptr fun -> Ptr () -> Ptr (TQScriptContext ()) -> IO ()
    nsfHandlerWrapper3 funptr stptr x0
      = do x0obj <- objectFromPtr_nf x0
           if (objectIsNull x0obj)
            then do when (stptr/=ptrNull)
                     (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                     (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _qnsf x0obj
           return ()

foreign import ccall "qtc_QNsfContainer1" qtc_QNsfContainer1 :: Ptr (TQObject a) -> Ptr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> Ptr () -> IO (Ptr (TQNsfContainer ()))

foreign import ccall "wrapper" wrapNsfHandler3 :: (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()))

instance QqNsfContainer (QObject a, String, (QScriptContext () -> IO ())) where
 qNsfContainer (_parent, _cnam, _qnsf)
  = do
    funptr  <- wrapNsfHandler4 nsfHandlerWrapper4
    stptr   <- newStablePtr (Wrap _qnsf)
    withQNsfContainerResult $
      withObjectPtr _parent $ \cobj_parent ->
      withCWString _cnam $ \cstr_cnam ->
      qtc_QNsfContainer2 cobj_parent cstr_cnam (toCFunPtr funptr) (castStablePtrToPtr stptr)
  where
    nsfHandlerWrapper4 :: Ptr fun -> Ptr () -> Ptr (TQScriptContext ()) -> IO ()
    nsfHandlerWrapper4 funptr stptr x0
      = do x0obj <- objectFromPtr_nf x0
           if (objectIsNull x0obj)
            then do when (stptr/=ptrNull)
                     (freeStablePtr (castPtrToStablePtr stptr))
                    when (funptr/=ptrNull)
                     (freeHaskellFunPtr (castPtrToFunPtr funptr))
            else _qnsf x0obj
           return ()

foreign import ccall "qtc_QNsfContainer2" qtc_QNsfContainer2 :: Ptr (TQObject a) -> CWString -> Ptr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> Ptr () -> IO (Ptr (TQNsfContainer ()))

foreign import ccall "wrapper" wrapNsfHandler4 :: (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()) -> IO (FunPtr (Ptr fun -> Ptr state -> Ptr (TQScriptContext ()) -> IO ()))

registerDsSignal :: QObject a -> QScriptEngine () -> QObject b -> String -> IO ()
registerDsSignal  _this _eng _dom _sig
  | isSuffixOf "()" _sig
   = do
     let nam = take ((length _sig) - 2) _sig
     qNsfContainer (_dom, nam, dsSignal_nll _this _sig)
     return ()
  | isSuffixOf "(int)" _sig
   = do
     let nam = take ((length _sig) - 5) _sig
     qNsfContainer (_dom, nam, dsSignal_int _this _sig)
     return ()
  | isSuffixOf "(bool)" _sig
   = do
     let nam = take ((length _sig) - 6) _sig
     qNsfContainer (_dom, nam, dsSignal_bool _this _sig)
     return ()
  | isPtrSuffix _sig
   = do
     let nam = take ((length _sig) - 7) _sig
     qNsfContainer (_dom, nam, dsSignal_ptr _this _eng _sig)
     return ()
  | otherwise
   = return ()

dsSignal_nll :: QObject a -> String -> QScriptContext () -> IO ()
dsSignal_nll _this _sig _ctx
  = emitSignal _this _sig ()

dsSignal_int :: QObject a -> String -> QScriptContext () -> IO ()
dsSignal_int _this _sig _ctx
  = emitSignal _this _sig =<< toScriptInt =<< argument _ctx 0

dsSignal_bool :: QObject a -> String -> QScriptContext () -> IO ()
dsSignal_bool _this _sig _ctx
  = emitSignal _this _sig =<< toBool =<< argument _ctx 0

dsSignal_ptr :: QObject a -> QScriptEngine () -> String -> QScriptContext () -> IO ()
dsSignal_ptr _this _eng _sig _ctx
  = do
    ptr <- fromScriptValue (getSigPtrTyp _sig) _eng =<< argument _ctx 0
    emitSignal _this _sig ptr

connectDynamic :: QObject a -> QScriptEngine () -> QScriptContext () -> IO ()
connectDynamic _this _eng _ctx
  = do
    sfv <- argument _ctx 3
    stv <- argument _ctx 1
    sig_nam <- toScriptString =<< argument _ctx 0
    slt_nam <- toScriptString =<< argument _ctx 2
    connectDynamicSlot _this _eng sig_nam slt_nam sfv stv

connectDynamicSlot :: QObject a -> QScriptEngine () -> String -> String -> QScriptValue () -> QScriptValue () -> IO ()
connectDynamicSlot _this _eng _sig_nam _slt_nam _sfv _stv
  | (isSuffixOf "()" _sig_nam) && (isSuffixOf "()" _slt_nam) 
    = connectSlot _this _sig_nam _this _slt_nam $ scriptSlot_nll _eng _sfv _stv
  | (isSuffixOf "(int)" _sig_nam) && (isSuffixOf "(int)" _slt_nam) 
    = connectSlot _this _sig_nam _this _slt_nam $ scriptSlot_int _eng _sfv _stv
  | (isSuffixOf "(bool)" _sig_nam) && (isSuffixOf "(bool)" _slt_nam) 
    = connectSlot _this _sig_nam _this _slt_nam $ scriptSlot_bool _eng _sfv _stv
  | (isPtrSuffix _sig_nam) && (isPtrSuffix _slt_nam) 
    = connectSlot _this _sig_nam _this _slt_nam $ scriptSlot_ptr _eng _sfv _stv $ getSigPtrTyp _sig_nam
  | otherwise
    = return ()

scriptSlot_nll :: QScriptEngine() -> QScriptValue () -> QScriptValue () -> QObject () -> IO ()
scriptSlot_nll _eng _sfv _stv _this
  = do
    rfv <- call _sfv _stv []
    return ()

scriptSlot_int :: QScriptEngine() -> QScriptValue () -> QScriptValue () -> QObject () -> Int -> IO ()
scriptSlot_int _eng _sfv _stv _this _int
  = do
    dso <- fromScriptInt _eng _int
    rfv <- call _sfv _stv [dso]
    return ()

scriptSlot_bool :: QScriptEngine() -> QScriptValue () -> QScriptValue () -> QObject () -> Bool -> IO ()
scriptSlot_bool _eng _sfv _stv _this _bool
  = do
    dso <- fromBool _eng _bool
    rfv <- call _sfv _stv [dso]
    return ()

scriptSlot_ptr :: QScriptEngine() -> QScriptValue () -> QScriptValue () -> String -> QObject () -> Object a -> IO ()
scriptSlot_ptr _eng _sfv _stv _spt _this _ptr
  = do
    dso <- toScriptValue _spt _eng _ptr
    rfv <- call _sfv _stv [dso]
    return ()

isPtrSuffix :: String -> Bool
isPtrSuffix sig
  = if (t1 == [])
     then False
     else 
      if (((last t1) == ')') && ((last (init t1)) == '*'))
       then True
       else False
  where
    t1 = dropWhile ('('/=) sig

getSigPtrTyp :: String -> String
getSigPtrTyp sig
   = "<" ++ (init $ tail $ dropWhile ('('/=) sig) ++ ">"

