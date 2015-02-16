{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextOption.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextOption (
  QqTextOption(..)
  ,QqTextOption_nf(..)
  ,setTabArray
  ,setTabStop
  ,setWrapMode
  ,tabArray
  ,tabStop
  ,wrapMode
  ,qTextOption_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QTextOption

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqTextOption x1 where
  qTextOption :: x1 -> IO (QTextOption ())

instance QqTextOption (()) where
 qTextOption ()
  = withQTextOptionResult $
    qtc_QTextOption

foreign import ccall "qtc_QTextOption" qtc_QTextOption :: IO (Ptr (TQTextOption ()))

instance QqTextOption ((Alignment)) where
 qTextOption (x1)
  = withQTextOptionResult $
    qtc_QTextOption1 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextOption1" qtc_QTextOption1 :: CLong -> IO (Ptr (TQTextOption ()))

instance QqTextOption ((QTextOption t1)) where
 qTextOption (x1)
  = withQTextOptionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextOption2 cobj_x1

foreign import ccall "qtc_QTextOption2" qtc_QTextOption2 :: Ptr (TQTextOption t1) -> IO (Ptr (TQTextOption ()))

class QqTextOption_nf x1 where
  qTextOption_nf :: x1 -> IO (QTextOption ())

instance QqTextOption_nf (()) where
 qTextOption_nf ()
  = withObjectRefResult $
    qtc_QTextOption

instance QqTextOption_nf ((Alignment)) where
 qTextOption_nf (x1)
  = withObjectRefResult $
    qtc_QTextOption1 (toCLong $ qFlags_toInt x1)

instance QqTextOption_nf ((QTextOption t1)) where
 qTextOption_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextOption2 cobj_x1

instance Qalignment (QTextOption a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_alignment cobj_x0

foreign import ccall "qtc_QTextOption_alignment" qtc_QTextOption_alignment :: Ptr (TQTextOption a) -> IO CLong

instance Qflags (QTextOption a) (()) (IO (Flags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_flags cobj_x0

foreign import ccall "qtc_QTextOption_flags" qtc_QTextOption_flags :: Ptr (TQTextOption a) -> IO CLong

instance QsetAlignment (QTextOption a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextOption_setAlignment" qtc_QTextOption_setAlignment :: Ptr (TQTextOption a) -> CLong -> IO ()

instance QsetFlags (QTextOption a) ((Flags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTextOption_setFlags" qtc_QTextOption_setFlags :: Ptr (TQTextOption a) -> CLong -> IO ()

setTabArray :: QTextOption a -> (([Double])) -> IO ()
setTabArray x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListDouble x1 $ \cqlistlen_x1 cqlistdouble_x1 ->
    qtc_QTextOption_setTabArray cobj_x0 cqlistlen_x1 cqlistdouble_x1

foreign import ccall "qtc_QTextOption_setTabArray" qtc_QTextOption_setTabArray :: Ptr (TQTextOption a) -> CInt -> Ptr (CDouble) -> IO ()

setTabStop :: QTextOption a -> ((Double)) -> IO ()
setTabStop x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setTabStop cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QTextOption_setTabStop" qtc_QTextOption_setTabStop :: Ptr (TQTextOption a) -> CDouble -> IO ()

instance QsetTextDirection (QTextOption a) ((LayoutDirection)) where
 setTextDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setTextDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextOption_setTextDirection" qtc_QTextOption_setTextDirection :: Ptr (TQTextOption a) -> CLong -> IO ()

instance QsetUseDesignMetrics (QTextOption a) ((Bool)) where
 setUseDesignMetrics x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setUseDesignMetrics cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTextOption_setUseDesignMetrics" qtc_QTextOption_setUseDesignMetrics :: Ptr (TQTextOption a) -> CBool -> IO ()

setWrapMode :: QTextOption a -> ((WrapMode)) -> IO ()
setWrapMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_setWrapMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTextOption_setWrapMode" qtc_QTextOption_setWrapMode :: Ptr (TQTextOption a) -> CLong -> IO ()

tabArray :: QTextOption a -> (()) -> IO ([Double])
tabArray x0 ()
  = withQListDoubleResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_tabArray cobj_x0 arr

foreign import ccall "qtc_QTextOption_tabArray" qtc_QTextOption_tabArray :: Ptr (TQTextOption a) -> Ptr CDouble -> IO CInt

tabStop :: QTextOption a -> (()) -> IO (Double)
tabStop x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_tabStop cobj_x0

foreign import ccall "qtc_QTextOption_tabStop" qtc_QTextOption_tabStop :: Ptr (TQTextOption a) -> IO CDouble

instance QtextDirection (QTextOption a) (()) (IO (LayoutDirection)) where
 textDirection x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_textDirection cobj_x0

foreign import ccall "qtc_QTextOption_textDirection" qtc_QTextOption_textDirection :: Ptr (TQTextOption a) -> IO CLong

instance QuseDesignMetrics (QTextOption a) (()) where
 useDesignMetrics x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_useDesignMetrics cobj_x0

foreign import ccall "qtc_QTextOption_useDesignMetrics" qtc_QTextOption_useDesignMetrics :: Ptr (TQTextOption a) -> IO CBool

wrapMode :: QTextOption a -> (()) -> IO (WrapMode)
wrapMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_wrapMode cobj_x0

foreign import ccall "qtc_QTextOption_wrapMode" qtc_QTextOption_wrapMode :: Ptr (TQTextOption a) -> IO CLong

qTextOption_delete :: QTextOption a -> IO ()
qTextOption_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextOption_delete cobj_x0

foreign import ccall "qtc_QTextOption_delete" qtc_QTextOption_delete :: Ptr (TQTextOption a) -> IO ()

