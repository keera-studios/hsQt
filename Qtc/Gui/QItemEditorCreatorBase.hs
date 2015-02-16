{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemEditorCreatorBase.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemEditorCreatorBase.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemEditorCreatorBase (
  QqItemEditorCreatorBase(..)
  ,QqItemEditorCreatorBase_nf(..)
  ,qItemEditorCreatorBase_delete, qItemEditorCreatorBase_delete1
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

instance QuserMethod (QItemEditorCreatorBase ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QItemEditorCreatorBase_userMethod" qtc_QItemEditorCreatorBase_userMethod :: Ptr (TQItemEditorCreatorBase a) -> CInt -> IO ()

instance QuserMethod (QItemEditorCreatorBaseSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorCreatorBase_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QItemEditorCreatorBase ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemEditorCreatorBase_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QItemEditorCreatorBase_userMethodVariant" qtc_QItemEditorCreatorBase_userMethodVariant :: Ptr (TQItemEditorCreatorBase a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QItemEditorCreatorBaseSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemEditorCreatorBase_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqItemEditorCreatorBase x1 where
  qItemEditorCreatorBase :: x1 -> IO (QItemEditorCreatorBase ())

instance QqItemEditorCreatorBase (()) where
 qItemEditorCreatorBase ()
  = withQItemEditorCreatorBaseResult $
    qtc_QItemEditorCreatorBase

foreign import ccall "qtc_QItemEditorCreatorBase" qtc_QItemEditorCreatorBase :: IO (Ptr (TQItemEditorCreatorBase ()))

instance QqItemEditorCreatorBase ((QItemEditorCreatorBase t1)) where
 qItemEditorCreatorBase (x1)
  = withQItemEditorCreatorBaseResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase1 cobj_x1

foreign import ccall "qtc_QItemEditorCreatorBase1" qtc_QItemEditorCreatorBase1 :: Ptr (TQItemEditorCreatorBase t1) -> IO (Ptr (TQItemEditorCreatorBase ()))

class QqItemEditorCreatorBase_nf x1 where
  qItemEditorCreatorBase_nf :: x1 -> IO (QItemEditorCreatorBase ())

instance QqItemEditorCreatorBase_nf (()) where
 qItemEditorCreatorBase_nf ()
  = withObjectRefResult $
    qtc_QItemEditorCreatorBase

instance QqItemEditorCreatorBase_nf ((QItemEditorCreatorBase t1)) where
 qItemEditorCreatorBase_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase1 cobj_x1

instance QcreateWidget (QItemEditorCreatorBase ()) ((QWidget t1)) where
 createWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase_createWidget_h cobj_x0 cobj_x1

foreign import ccall "qtc_QItemEditorCreatorBase_createWidget_h" qtc_QItemEditorCreatorBase_createWidget_h :: Ptr (TQItemEditorCreatorBase a) -> Ptr (TQWidget t1) -> IO (Ptr (TQWidget ()))

instance QcreateWidget (QItemEditorCreatorBaseSc a) ((QWidget t1)) where
 createWidget x0 (x1)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorCreatorBase_createWidget_h cobj_x0 cobj_x1

instance QvaluePropertyName (QItemEditorCreatorBase ()) (()) where
 valuePropertyName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_valuePropertyName_h cobj_x0

foreign import ccall "qtc_QItemEditorCreatorBase_valuePropertyName_h" qtc_QItemEditorCreatorBase_valuePropertyName_h :: Ptr (TQItemEditorCreatorBase a) -> IO (Ptr (TQString ()))

instance QvaluePropertyName (QItemEditorCreatorBaseSc a) (()) where
 valuePropertyName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_valuePropertyName_h cobj_x0

qItemEditorCreatorBase_delete :: QItemEditorCreatorBase a -> IO ()
qItemEditorCreatorBase_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_delete cobj_x0

foreign import ccall "qtc_QItemEditorCreatorBase_delete" qtc_QItemEditorCreatorBase_delete :: Ptr (TQItemEditorCreatorBase a) -> IO ()

qItemEditorCreatorBase_delete1 :: QItemEditorCreatorBase a -> IO ()
qItemEditorCreatorBase_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorCreatorBase_delete1 cobj_x0

foreign import ccall "qtc_QItemEditorCreatorBase_delete1" qtc_QItemEditorCreatorBase_delete1 :: Ptr (TQItemEditorCreatorBase a) -> IO ()

