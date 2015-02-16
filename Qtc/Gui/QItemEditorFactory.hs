{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemEditorFactory.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemEditorFactory.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemEditorFactory (
  QqItemEditorFactory(..)
  ,QqItemEditorFactory_nf(..)
  ,qItemEditorFactoryDefaultFactory
  ,registerEditor
  ,qItemEditorFactorySetDefaultFactory
  ,qItemEditorFactory_delete, qItemEditorFactory_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QVariant

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QItemEditorFactory ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorFactory_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QItemEditorFactory_userMethod" qtc_QItemEditorFactory_userMethod :: Ptr (TQItemEditorFactory a) -> CInt -> IO ()

instance QuserMethod (QItemEditorFactorySc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemEditorFactory_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QItemEditorFactory ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemEditorFactory_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QItemEditorFactory_userMethodVariant" qtc_QItemEditorFactory_userMethodVariant :: Ptr (TQItemEditorFactory a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QItemEditorFactorySc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemEditorFactory_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqItemEditorFactory x1 where
  qItemEditorFactory :: x1 -> IO (QItemEditorFactory ())

instance QqItemEditorFactory (()) where
 qItemEditorFactory ()
  = withQItemEditorFactoryResult $
    qtc_QItemEditorFactory

foreign import ccall "qtc_QItemEditorFactory" qtc_QItemEditorFactory :: IO (Ptr (TQItemEditorFactory ()))

instance QqItemEditorFactory ((QItemEditorFactory t1)) where
 qItemEditorFactory (x1)
  = withQItemEditorFactoryResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorFactory1 cobj_x1

foreign import ccall "qtc_QItemEditorFactory1" qtc_QItemEditorFactory1 :: Ptr (TQItemEditorFactory t1) -> IO (Ptr (TQItemEditorFactory ()))

class QqItemEditorFactory_nf x1 where
  qItemEditorFactory_nf :: x1 -> IO (QItemEditorFactory ())

instance QqItemEditorFactory_nf (()) where
 qItemEditorFactory_nf ()
  = withObjectRefResult $
    qtc_QItemEditorFactory

instance QqItemEditorFactory_nf ((QItemEditorFactory t1)) where
 qItemEditorFactory_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorFactory1 cobj_x1

instance QcreateEditor (QItemEditorFactory ()) ((QVariantType, QWidget t2)) where
 createEditor x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemEditorFactory_createEditor_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QItemEditorFactory_createEditor_h" qtc_QItemEditorFactory_createEditor_h :: Ptr (TQItemEditorFactory a) -> CLong -> Ptr (TQWidget t2) -> IO (Ptr (TQWidget ()))

instance QcreateEditor (QItemEditorFactorySc a) ((QVariantType, QWidget t2)) where
 createEditor x0 (x1, x2)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemEditorFactory_createEditor_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

qItemEditorFactoryDefaultFactory :: (()) -> IO (QItemEditorFactory ())
qItemEditorFactoryDefaultFactory ()
  = withObjectRefResult $
    qtc_QItemEditorFactory_defaultFactory

foreign import ccall "qtc_QItemEditorFactory_defaultFactory" qtc_QItemEditorFactory_defaultFactory :: IO (Ptr (TQItemEditorFactory ()))

registerEditor :: QItemEditorFactory a -> ((QVariantType, QItemEditorCreatorBase t2)) -> IO ()
registerEditor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemEditorFactory_registerEditor cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QItemEditorFactory_registerEditor" qtc_QItemEditorFactory_registerEditor :: Ptr (TQItemEditorFactory a) -> CLong -> Ptr (TQItemEditorCreatorBase t2) -> IO ()

qItemEditorFactorySetDefaultFactory :: ((QItemEditorFactory t1)) -> IO ()
qItemEditorFactorySetDefaultFactory (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemEditorFactory_setDefaultFactory cobj_x1

foreign import ccall "qtc_QItemEditorFactory_setDefaultFactory" qtc_QItemEditorFactory_setDefaultFactory :: Ptr (TQItemEditorFactory t1) -> IO ()

instance QvaluePropertyName (QItemEditorFactory ()) ((QVariantType)) where
 valuePropertyName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorFactory_valuePropertyName_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QItemEditorFactory_valuePropertyName_h" qtc_QItemEditorFactory_valuePropertyName_h :: Ptr (TQItemEditorFactory a) -> CLong -> IO (Ptr (TQString ()))

instance QvaluePropertyName (QItemEditorFactorySc a) ((QVariantType)) where
 valuePropertyName x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorFactory_valuePropertyName_h cobj_x0 (toCLong $ qEnum_toInt x1)

qItemEditorFactory_delete :: QItemEditorFactory a -> IO ()
qItemEditorFactory_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorFactory_delete cobj_x0

foreign import ccall "qtc_QItemEditorFactory_delete" qtc_QItemEditorFactory_delete :: Ptr (TQItemEditorFactory a) -> IO ()

qItemEditorFactory_delete1 :: QItemEditorFactory a -> IO ()
qItemEditorFactory_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemEditorFactory_delete1 cobj_x0

foreign import ccall "qtc_QItemEditorFactory_delete1" qtc_QItemEditorFactory_delete1 :: Ptr (TQItemEditorFactory a) -> IO ()

