{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSizePolicy.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSizePolicy (
  QqSizePolicy(..)
  ,QqSizePolicy_nf(..)
  ,controlType
  ,horizontalPolicy
  ,horizontalStretch
  ,setControlType
  ,setHeightForWidth
  ,setHorizontalPolicy
  ,setVerticalPolicy
  ,verticalPolicy
  ,verticalStretch
  ,qSizePolicy_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QSizePolicy

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqSizePolicy x1 where
  qSizePolicy :: x1 -> IO (QSizePolicy ())

instance QqSizePolicy (()) where
 qSizePolicy ()
  = withQSizePolicyResult $
    qtc_QSizePolicy

foreign import ccall "qtc_QSizePolicy" qtc_QSizePolicy :: IO (Ptr (TQSizePolicy ()))

instance QqSizePolicy ((QSizePolicy t1)) where
 qSizePolicy (x1)
  = withQSizePolicyResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizePolicy1 cobj_x1

foreign import ccall "qtc_QSizePolicy1" qtc_QSizePolicy1 :: Ptr (TQSizePolicy t1) -> IO (Ptr (TQSizePolicy ()))

instance QqSizePolicy ((Policy, Policy)) where
 qSizePolicy (x1, x2)
  = withQSizePolicyResult $
    qtc_QSizePolicy2 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QSizePolicy2" qtc_QSizePolicy2 :: CLong -> CLong -> IO (Ptr (TQSizePolicy ()))

instance QqSizePolicy ((Policy, Policy, ControlType)) where
 qSizePolicy (x1, x2, x3)
  = withQSizePolicyResult $
    qtc_QSizePolicy3 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

foreign import ccall "qtc_QSizePolicy3" qtc_QSizePolicy3 :: CLong -> CLong -> CLong -> IO (Ptr (TQSizePolicy ()))

class QqSizePolicy_nf x1 where
  qSizePolicy_nf :: x1 -> IO (QSizePolicy ())

instance QqSizePolicy_nf (()) where
 qSizePolicy_nf ()
  = withObjectRefResult $
    qtc_QSizePolicy

instance QqSizePolicy_nf ((QSizePolicy t1)) where
 qSizePolicy_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSizePolicy1 cobj_x1

instance QqSizePolicy_nf ((Policy, Policy)) where
 qSizePolicy_nf (x1, x2)
  = withObjectRefResult $
    qtc_QSizePolicy2 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

instance QqSizePolicy_nf ((Policy, Policy, ControlType)) where
 qSizePolicy_nf (x1, x2, x3)
  = withObjectRefResult $
    qtc_QSizePolicy3 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) (toCLong $ qEnum_toInt x3)

controlType :: QSizePolicy a -> (()) -> IO (ControlType)
controlType x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_controlType cobj_x0

foreign import ccall "qtc_QSizePolicy_controlType" qtc_QSizePolicy_controlType :: Ptr (TQSizePolicy a) -> IO CLong

instance QexpandingDirections (QSizePolicy a) (()) where
 expandingDirections x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_expandingDirections cobj_x0

foreign import ccall "qtc_QSizePolicy_expandingDirections" qtc_QSizePolicy_expandingDirections :: Ptr (TQSizePolicy a) -> IO CLong

instance QhasHeightForWidth (QSizePolicy a) (()) where
 hasHeightForWidth x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_hasHeightForWidth cobj_x0

foreign import ccall "qtc_QSizePolicy_hasHeightForWidth" qtc_QSizePolicy_hasHeightForWidth :: Ptr (TQSizePolicy a) -> IO CBool

horizontalPolicy :: QSizePolicy a -> (()) -> IO (Policy)
horizontalPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_horizontalPolicy cobj_x0

foreign import ccall "qtc_QSizePolicy_horizontalPolicy" qtc_QSizePolicy_horizontalPolicy :: Ptr (TQSizePolicy a) -> IO CLong

horizontalStretch :: QSizePolicy a -> (()) -> IO (Int)
horizontalStretch x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_horizontalStretch cobj_x0

foreign import ccall "qtc_QSizePolicy_horizontalStretch" qtc_QSizePolicy_horizontalStretch :: Ptr (TQSizePolicy a) -> IO CInt

setControlType :: QSizePolicy a -> ((ControlType)) -> IO ()
setControlType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_setControlType cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSizePolicy_setControlType" qtc_QSizePolicy_setControlType :: Ptr (TQSizePolicy a) -> CLong -> IO ()

setHeightForWidth :: QSizePolicy a -> ((Bool)) -> IO ()
setHeightForWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_setHeightForWidth cobj_x0 (toCBool x1)

foreign import ccall "qtc_QSizePolicy_setHeightForWidth" qtc_QSizePolicy_setHeightForWidth :: Ptr (TQSizePolicy a) -> CBool -> IO ()

setHorizontalPolicy :: QSizePolicy a -> ((Policy)) -> IO ()
setHorizontalPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_setHorizontalPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSizePolicy_setHorizontalPolicy" qtc_QSizePolicy_setHorizontalPolicy :: Ptr (TQSizePolicy a) -> CLong -> IO ()

setVerticalPolicy :: QSizePolicy a -> ((Policy)) -> IO ()
setVerticalPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_setVerticalPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QSizePolicy_setVerticalPolicy" qtc_QSizePolicy_setVerticalPolicy :: Ptr (TQSizePolicy a) -> CLong -> IO ()

instance Qqtranspose (QSizePolicy a) (()) where
 qtranspose x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_transpose cobj_x0

foreign import ccall "qtc_QSizePolicy_transpose" qtc_QSizePolicy_transpose :: Ptr (TQSizePolicy a) -> IO ()

verticalPolicy :: QSizePolicy a -> (()) -> IO (Policy)
verticalPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_verticalPolicy cobj_x0

foreign import ccall "qtc_QSizePolicy_verticalPolicy" qtc_QSizePolicy_verticalPolicy :: Ptr (TQSizePolicy a) -> IO CLong

verticalStretch :: QSizePolicy a -> (()) -> IO (Int)
verticalStretch x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_verticalStretch cobj_x0

foreign import ccall "qtc_QSizePolicy_verticalStretch" qtc_QSizePolicy_verticalStretch :: Ptr (TQSizePolicy a) -> IO CInt

qSizePolicy_delete :: QSizePolicy a -> IO ()
qSizePolicy_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSizePolicy_delete cobj_x0

foreign import ccall "qtc_QSizePolicy_delete" qtc_QSizePolicy_delete :: Ptr (TQSizePolicy a) -> IO ()

