{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleHintReturn.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleHintReturn (
  QqStyleHintReturn(..)
  ,QqStyleHintReturn_nf(..)
  ,qStyleHintReturn_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqStyleHintReturn x1 where
  qStyleHintReturn :: x1 -> IO (QStyleHintReturn ())

instance QqStyleHintReturn (()) where
 qStyleHintReturn ()
  = withQStyleHintReturnResult $
    qtc_QStyleHintReturn

foreign import ccall "qtc_QStyleHintReturn" qtc_QStyleHintReturn :: IO (Ptr (TQStyleHintReturn ()))

instance QqStyleHintReturn ((QStyleHintReturn t1)) where
 qStyleHintReturn (x1)
  = withQStyleHintReturnResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleHintReturn1 cobj_x1

foreign import ccall "qtc_QStyleHintReturn1" qtc_QStyleHintReturn1 :: Ptr (TQStyleHintReturn t1) -> IO (Ptr (TQStyleHintReturn ()))

instance QqStyleHintReturn ((Int)) where
 qStyleHintReturn (x1)
  = withQStyleHintReturnResult $
    qtc_QStyleHintReturn2 (toCInt x1)

foreign import ccall "qtc_QStyleHintReturn2" qtc_QStyleHintReturn2 :: CInt -> IO (Ptr (TQStyleHintReturn ()))

instance QqStyleHintReturn ((Int, Int)) where
 qStyleHintReturn (x1, x2)
  = withQStyleHintReturnResult $
    qtc_QStyleHintReturn3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStyleHintReturn3" qtc_QStyleHintReturn3 :: CInt -> CInt -> IO (Ptr (TQStyleHintReturn ()))

class QqStyleHintReturn_nf x1 where
  qStyleHintReturn_nf :: x1 -> IO (QStyleHintReturn ())

instance QqStyleHintReturn_nf (()) where
 qStyleHintReturn_nf ()
  = withObjectRefResult $
    qtc_QStyleHintReturn

instance QqStyleHintReturn_nf ((QStyleHintReturn t1)) where
 qStyleHintReturn_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleHintReturn1 cobj_x1

instance QqStyleHintReturn_nf ((Int)) where
 qStyleHintReturn_nf (x1)
  = withObjectRefResult $
    qtc_QStyleHintReturn2 (toCInt x1)

instance QqStyleHintReturn_nf ((Int, Int)) where
 qStyleHintReturn_nf (x1, x2)
  = withObjectRefResult $
    qtc_QStyleHintReturn3 (toCInt x1) (toCInt x2)

instance QsetType (QStyleHintReturn a) ((Int)) where
 setType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleHintReturn_setType cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleHintReturn_setType" qtc_QStyleHintReturn_setType :: Ptr (TQStyleHintReturn a) -> CInt -> IO ()

instance QsetVersion (QStyleHintReturn a) ((Int)) where
 setVersion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleHintReturn_setVersion cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleHintReturn_setVersion" qtc_QStyleHintReturn_setVersion :: Ptr (TQStyleHintReturn a) -> CInt -> IO ()

instance Qqtype (QStyleHintReturn a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleHintReturn_type cobj_x0

foreign import ccall "qtc_QStyleHintReturn_type" qtc_QStyleHintReturn_type :: Ptr (TQStyleHintReturn a) -> IO CInt

instance Qversion (QStyleHintReturn a) (()) (IO (Int)) where
 version x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleHintReturn_version cobj_x0

foreign import ccall "qtc_QStyleHintReturn_version" qtc_QStyleHintReturn_version :: Ptr (TQStyleHintReturn a) -> IO CInt

qStyleHintReturn_delete :: QStyleHintReturn a -> IO ()
qStyleHintReturn_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleHintReturn_delete cobj_x0

foreign import ccall "qtc_QStyleHintReturn_delete" qtc_QStyleHintReturn_delete :: Ptr (TQStyleHintReturn a) -> IO ()

