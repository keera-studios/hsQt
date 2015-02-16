{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTreeWidgetItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:30
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTreeWidgetItem (
  QqTreeWidgetItem(..)
  ,QqTreeWidgetItem_nf(..)
  ,addChild
  ,childCount
  ,childIndicatorPolicy
  ,indexOfChild
  ,insertChild
  ,isDisabled
  ,removeChild
  ,setChildIndicatorPolicy
  ,takeChildren
  ,treeWidget
  ,qTreeWidgetItem_delete, qTreeWidgetItem_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QTreeWidgetItem
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QTreeWidgetItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidgetItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTreeWidgetItem_userMethod" qtc_QTreeWidgetItem_userMethod :: Ptr (TQTreeWidgetItem a) -> CInt -> IO ()

instance QuserMethod (QTreeWidgetItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTreeWidgetItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTreeWidgetItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTreeWidgetItem_userMethodVariant" qtc_QTreeWidgetItem_userMethodVariant :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTreeWidgetItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTreeWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTreeWidgetItem x1 where
  qTreeWidgetItem :: x1 -> IO (QTreeWidgetItem ())

instance QqTreeWidgetItem (()) where
 qTreeWidgetItem ()
  = withQTreeWidgetItemResult $
    qtc_QTreeWidgetItem

foreign import ccall "qtc_QTreeWidgetItem" qtc_QTreeWidgetItem :: IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem (([String])) where
 qTreeWidgetItem (x1)
  = withQTreeWidgetItemResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTreeWidgetItem1 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QTreeWidgetItem1" qtc_QTreeWidgetItem1 :: CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1)) where
 qTreeWidgetItem (x1)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem2 cobj_x1

foreign import ccall "qtc_QTreeWidgetItem2" qtc_QTreeWidgetItem2 :: Ptr (TQTreeWidgetItem t1) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((Int)) where
 qTreeWidgetItem (x1)
  = withQTreeWidgetItemResult $
    qtc_QTreeWidgetItem4 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem4" qtc_QTreeWidgetItem4 :: CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1)) where
 qTreeWidgetItem (x1)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem5 cobj_x1

foreign import ccall "qtc_QTreeWidgetItem5" qtc_QTreeWidgetItem5 :: Ptr (TQTreeWidget t1) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1, [String])) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem6 cobj_x1 cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QTreeWidgetItem6" qtc_QTreeWidgetItem6 :: Ptr (TQTreeWidget t1) -> CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1, Int)) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem7 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidgetItem7" qtc_QTreeWidgetItem7 :: Ptr (TQTreeWidget t1) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1, QTreeWidgetItem t2)) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem8 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidgetItem8" qtc_QTreeWidgetItem8 :: Ptr (TQTreeWidgetItem t1) -> Ptr (TQTreeWidgetItem t2) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1, QTreeWidgetItem t2)) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem9 cobj_x1 cobj_x2

foreign import ccall "qtc_QTreeWidgetItem9" qtc_QTreeWidgetItem9 :: Ptr (TQTreeWidget t1) -> Ptr (TQTreeWidgetItem t2) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem (([String], Int)) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTreeWidgetItem10 cqlistlen_x1 cqliststr_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidgetItem10" qtc_QTreeWidgetItem10 :: CInt -> Ptr (Ptr CWchar) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1, [String])) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem11 cobj_x1 cqlistlen_x2 cqliststr_x2

foreign import ccall "qtc_QTreeWidgetItem11" qtc_QTreeWidgetItem11 :: Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1, Int)) where
 qTreeWidgetItem (x1, x2)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem12 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QTreeWidgetItem12" qtc_QTreeWidgetItem12 :: Ptr (TQTreeWidgetItem t1) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1, [String], Int)) where
 qTreeWidgetItem (x1, x2, x3)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem13 cobj_x1 cqlistlen_x2 cqliststr_x2 (toCInt x3)

foreign import ccall "qtc_QTreeWidgetItem13" qtc_QTreeWidgetItem13 :: Ptr (TQTreeWidgetItem t1) -> CInt -> Ptr (Ptr CWchar) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidgetItem t1, QTreeWidgetItem t2, Int)) where
 qTreeWidgetItem (x1, x2, x3)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem14 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QTreeWidgetItem14" qtc_QTreeWidgetItem14 :: Ptr (TQTreeWidgetItem t1) -> Ptr (TQTreeWidgetItem t2) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1, QTreeWidgetItem t2, Int)) where
 qTreeWidgetItem (x1, x2, x3)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem15 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QTreeWidgetItem15" qtc_QTreeWidgetItem15 :: Ptr (TQTreeWidget t1) -> Ptr (TQTreeWidgetItem t2) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

instance QqTreeWidgetItem ((QTreeWidget t1, [String], Int)) where
 qTreeWidgetItem (x1, x2, x3)
  = withQTreeWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem16 cobj_x1 cqlistlen_x2 cqliststr_x2 (toCInt x3)

foreign import ccall "qtc_QTreeWidgetItem16" qtc_QTreeWidgetItem16 :: Ptr (TQTreeWidget t1) -> CInt -> Ptr (Ptr CWchar) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

class QqTreeWidgetItem_nf x1 where
  qTreeWidgetItem_nf :: x1 -> IO (QTreeWidgetItem ())

instance QqTreeWidgetItem_nf (()) where
 qTreeWidgetItem_nf ()
  = withObjectRefResult $
    qtc_QTreeWidgetItem

instance QqTreeWidgetItem_nf (([String])) where
 qTreeWidgetItem_nf (x1)
  = withObjectRefResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTreeWidgetItem1 cqlistlen_x1 cqliststr_x1

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1)) where
 qTreeWidgetItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem2 cobj_x1

instance QqTreeWidgetItem_nf ((Int)) where
 qTreeWidgetItem_nf (x1)
  = withObjectRefResult $
    qtc_QTreeWidgetItem4 (toCInt x1)

instance QqTreeWidgetItem_nf ((QTreeWidget t1)) where
 qTreeWidgetItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem5 cobj_x1

instance QqTreeWidgetItem_nf ((QTreeWidget t1, [String])) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem6 cobj_x1 cqlistlen_x2 cqliststr_x2

instance QqTreeWidgetItem_nf ((QTreeWidget t1, Int)) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem7 cobj_x1 (toCInt x2)

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1, QTreeWidgetItem t2)) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem8 cobj_x1 cobj_x2

instance QqTreeWidgetItem_nf ((QTreeWidget t1, QTreeWidgetItem t2)) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem9 cobj_x1 cobj_x2

instance QqTreeWidgetItem_nf (([String], Int)) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QTreeWidgetItem10 cqlistlen_x1 cqliststr_x1 (toCInt x2)

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1, [String])) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem11 cobj_x1 cqlistlen_x2 cqliststr_x2

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1, Int)) where
 qTreeWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem12 cobj_x1 (toCInt x2)

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1, [String], Int)) where
 qTreeWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem13 cobj_x1 cqlistlen_x2 cqliststr_x2 (toCInt x3)

instance QqTreeWidgetItem_nf ((QTreeWidgetItem t1, QTreeWidgetItem t2, Int)) where
 qTreeWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem14 cobj_x1 cobj_x2 (toCInt x3)

instance QqTreeWidgetItem_nf ((QTreeWidget t1, QTreeWidgetItem t2, Int)) where
 qTreeWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem15 cobj_x1 cobj_x2 (toCInt x3)

instance QqTreeWidgetItem_nf ((QTreeWidget t1, [String], Int)) where
 qTreeWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withQListString x2 $ \cqlistlen_x2 cqliststr_x2 ->
    qtc_QTreeWidgetItem16 cobj_x1 cqlistlen_x2 cqliststr_x2 (toCInt x3)

addChild :: QTreeWidgetItem a -> ((QTreeWidgetItem t1)) -> IO ()
addChild x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem_addChild cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidgetItem_addChild" qtc_QTreeWidgetItem_addChild :: Ptr (TQTreeWidgetItem a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance Qbackground (QTreeWidgetItem a) ((Int)) where
 background x0 (x1)
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_background cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_background" qtc_QTreeWidgetItem_background :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQBrush ()))

instance QbackgroundColor (QTreeWidgetItem a) ((Int)) where
 backgroundColor x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_backgroundColor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_backgroundColor" qtc_QTreeWidgetItem_backgroundColor :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQColor ()))

instance QcheckState (QTreeWidgetItem a) ((Int)) where
 checkState x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_checkState cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_checkState" qtc_QTreeWidgetItem_checkState :: Ptr (TQTreeWidgetItem a) -> CInt -> IO CLong

instance Qchild (QTreeWidgetItem a) ((Int)) (IO (QTreeWidgetItem ())) where
 child x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_child cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_child" qtc_QTreeWidgetItem_child :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

childCount :: QTreeWidgetItem a -> (()) -> IO (Int)
childCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_childCount cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_childCount" qtc_QTreeWidgetItem_childCount :: Ptr (TQTreeWidgetItem a) -> IO CInt

childIndicatorPolicy :: QTreeWidgetItem a -> (()) -> IO (ChildIndicatorPolicy)
childIndicatorPolicy x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_childIndicatorPolicy cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_childIndicatorPolicy" qtc_QTreeWidgetItem_childIndicatorPolicy :: Ptr (TQTreeWidgetItem a) -> IO CLong

instance Qclone (QTreeWidgetItem ()) (()) (IO (QTreeWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_clone_h cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_clone_h" qtc_QTreeWidgetItem_clone_h :: Ptr (TQTreeWidgetItem a) -> IO (Ptr (TQTreeWidgetItem ()))

instance Qclone (QTreeWidgetItemSc a) (()) (IO (QTreeWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_clone_h cobj_x0

instance QcolumnCount (QTreeWidgetItem a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_columnCount cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_columnCount" qtc_QTreeWidgetItem_columnCount :: Ptr (TQTreeWidgetItem a) -> IO CInt

instance Qqdata (QTreeWidgetItem ()) ((Int, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_data_h cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidgetItem_data_h" qtc_QTreeWidgetItem_data_h :: Ptr (TQTreeWidgetItem a) -> CInt -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QTreeWidgetItemSc a) ((Int, Int)) (IO (QVariant ())) where
 qdata x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_data_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qqdata_nf (QTreeWidgetItem ()) ((Int, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_data_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qqdata_nf (QTreeWidgetItemSc a) ((Int, Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_data_h cobj_x0 (toCInt x1) (toCInt x2)

instance Qflags (QTreeWidgetItem a) (()) (IO (ItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_flags cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_flags" qtc_QTreeWidgetItem_flags :: Ptr (TQTreeWidgetItem a) -> IO CLong

instance Qfont (QTreeWidgetItem a) ((Int)) where
 font x0 (x1)
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_font cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_font" qtc_QTreeWidgetItem_font :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQFont ()))

instance Qforeground (QTreeWidgetItem a) ((Int)) where
 foreground x0 (x1)
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_foreground cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_foreground" qtc_QTreeWidgetItem_foreground :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQBrush ()))

instance Qicon (QTreeWidgetItem a) ((Int)) (IO (QIcon ())) where
 icon x0 (x1)
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_icon cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_icon" qtc_QTreeWidgetItem_icon :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQIcon ()))

indexOfChild :: QTreeWidgetItem a -> ((QTreeWidgetItem t1)) -> IO (Int)
indexOfChild x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem_indexOfChild cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidgetItem_indexOfChild" qtc_QTreeWidgetItem_indexOfChild :: Ptr (TQTreeWidgetItem a) -> Ptr (TQTreeWidgetItem t1) -> IO CInt

insertChild :: QTreeWidgetItem a -> ((Int, QTreeWidgetItem t2)) -> IO ()
insertChild x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_insertChild cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_insertChild" qtc_QTreeWidgetItem_insertChild :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQTreeWidgetItem t2) -> IO ()

isDisabled :: QTreeWidgetItem a -> (()) -> IO (Bool)
isDisabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_isDisabled cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_isDisabled" qtc_QTreeWidgetItem_isDisabled :: Ptr (TQTreeWidgetItem a) -> IO CBool

instance QisExpanded (QTreeWidgetItem a) (()) where
 isExpanded x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_isExpanded cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_isExpanded" qtc_QTreeWidgetItem_isExpanded :: Ptr (TQTreeWidgetItem a) -> IO CBool

instance QisFirstColumnSpanned (QTreeWidgetItem a) (()) where
 isFirstColumnSpanned x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_isFirstColumnSpanned cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_isFirstColumnSpanned" qtc_QTreeWidgetItem_isFirstColumnSpanned :: Ptr (TQTreeWidgetItem a) -> IO CBool

instance QisHidden (QTreeWidgetItem a) (()) where
 isHidden x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_isHidden cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_isHidden" qtc_QTreeWidgetItem_isHidden :: Ptr (TQTreeWidgetItem a) -> IO CBool

instance QisSelected (QTreeWidgetItem a) (()) where
 isSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_isSelected cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_isSelected" qtc_QTreeWidgetItem_isSelected :: Ptr (TQTreeWidgetItem a) -> IO CBool

instance Qparent (QTreeWidgetItem a) (()) (IO (QTreeWidgetItem ())) where
 parent x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_parent cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_parent" qtc_QTreeWidgetItem_parent :: Ptr (TQTreeWidgetItem a) -> IO (Ptr (TQTreeWidgetItem ()))

removeChild :: QTreeWidgetItem a -> ((QTreeWidgetItem t1)) -> IO ()
removeChild x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTreeWidgetItem_removeChild cobj_x0 cobj_x1

foreign import ccall "qtc_QTreeWidgetItem_removeChild" qtc_QTreeWidgetItem_removeChild :: Ptr (TQTreeWidgetItem a) -> Ptr (TQTreeWidgetItem t1) -> IO ()

instance QsetBackground (QTreeWidgetItem a) ((Int, QBrush t2)) where
 setBackground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setBackground cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setBackground" qtc_QTreeWidgetItem_setBackground :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQBrush t2) -> IO ()

instance QsetBackgroundColor (QTreeWidgetItem a) ((Int, QColor t2)) where
 setBackgroundColor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setBackgroundColor cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setBackgroundColor" qtc_QTreeWidgetItem_setBackgroundColor :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQColor t2) -> IO ()

instance QsetCheckState (QTreeWidgetItem a) ((Int, CheckState)) where
 setCheckState x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setCheckState cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidgetItem_setCheckState" qtc_QTreeWidgetItem_setCheckState :: Ptr (TQTreeWidgetItem a) -> CInt -> CLong -> IO ()

setChildIndicatorPolicy :: QTreeWidgetItem a -> ((ChildIndicatorPolicy)) -> IO ()
setChildIndicatorPolicy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setChildIndicatorPolicy cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTreeWidgetItem_setChildIndicatorPolicy" qtc_QTreeWidgetItem_setChildIndicatorPolicy :: Ptr (TQTreeWidgetItem a) -> CLong -> IO ()

instance QsetData (QTreeWidgetItem ()) ((Int, Int, QVariant t3)) (IO ()) where
 setData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidgetItem_setData_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QTreeWidgetItem_setData_h" qtc_QTreeWidgetItem_setData_h :: Ptr (TQTreeWidgetItem a) -> CInt -> CInt -> Ptr (TQVariant t3) -> IO ()

instance QsetData (QTreeWidgetItemSc a) ((Int, Int, QVariant t3)) (IO ()) where
 setData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QTreeWidgetItem_setData_h cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetDisabled (QTreeWidgetItem a) ((Bool)) where
 setDisabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setDisabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidgetItem_setDisabled" qtc_QTreeWidgetItem_setDisabled :: Ptr (TQTreeWidgetItem a) -> CBool -> IO ()

instance QsetExpanded (QTreeWidgetItem a) ((Bool)) where
 setExpanded x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setExpanded cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidgetItem_setExpanded" qtc_QTreeWidgetItem_setExpanded :: Ptr (TQTreeWidgetItem a) -> CBool -> IO ()

instance QsetFirstColumnSpanned (QTreeWidgetItem a) ((Bool)) where
 setFirstColumnSpanned x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setFirstColumnSpanned cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidgetItem_setFirstColumnSpanned" qtc_QTreeWidgetItem_setFirstColumnSpanned :: Ptr (TQTreeWidgetItem a) -> CBool -> IO ()

instance QsetFlags (QTreeWidgetItem a) ((ItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTreeWidgetItem_setFlags" qtc_QTreeWidgetItem_setFlags :: Ptr (TQTreeWidgetItem a) -> CLong -> IO ()

instance QsetFont (QTreeWidgetItem a) ((Int, QFont t2)) where
 setFont x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setFont cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setFont" qtc_QTreeWidgetItem_setFont :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQFont t2) -> IO ()

instance QsetForeground (QTreeWidgetItem a) ((Int, QBrush t2)) where
 setForeground x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setForeground cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setForeground" qtc_QTreeWidgetItem_setForeground :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQBrush t2) -> IO ()

instance QsetHidden (QTreeWidgetItem a) ((Bool)) where
 setHidden x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setHidden cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidgetItem_setHidden" qtc_QTreeWidgetItem_setHidden :: Ptr (TQTreeWidgetItem a) -> CBool -> IO ()

instance QsetIcon (QTreeWidgetItem a) ((Int, QIcon t2)) where
 setIcon x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setIcon cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setIcon" qtc_QTreeWidgetItem_setIcon :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQIcon t2) -> IO ()

instance QsetSelected (QTreeWidgetItem a) ((Bool)) where
 setSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTreeWidgetItem_setSelected" qtc_QTreeWidgetItem_setSelected :: Ptr (TQTreeWidgetItem a) -> CBool -> IO ()

instance QqsetSizeHint (QTreeWidgetItem a) ((Int, QSize t2)) where
 qsetSizeHint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setSizeHint cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setSizeHint" qtc_QTreeWidgetItem_setSizeHint :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQSize t2) -> IO ()

instance QsetSizeHint (QTreeWidgetItem a) ((Int, Size)) where
 setSizeHint x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QTreeWidgetItem_setSizeHint_qth cobj_x0 (toCInt x1) csize_x2_w csize_x2_h 

foreign import ccall "qtc_QTreeWidgetItem_setSizeHint_qth" qtc_QTreeWidgetItem_setSizeHint_qth :: Ptr (TQTreeWidgetItem a) -> CInt -> CInt -> CInt -> IO ()

instance QsetStatusTip (QTreeWidgetItem a) ((Int, String)) where
 setStatusTip x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTreeWidgetItem_setStatusTip cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTreeWidgetItem_setStatusTip" qtc_QTreeWidgetItem_setStatusTip :: Ptr (TQTreeWidgetItem a) -> CInt -> CWString -> IO ()

instance QsetText (QTreeWidgetItem a) ((Int, String)) where
 setText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTreeWidgetItem_setText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTreeWidgetItem_setText" qtc_QTreeWidgetItem_setText :: Ptr (TQTreeWidgetItem a) -> CInt -> CWString -> IO ()

instance QsetTextAlignment (QTreeWidgetItem a) ((Int, Int)) where
 setTextAlignment x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_setTextAlignment cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTreeWidgetItem_setTextAlignment" qtc_QTreeWidgetItem_setTextAlignment :: Ptr (TQTreeWidgetItem a) -> CInt -> CInt -> IO ()

instance QsetTextColor (QTreeWidgetItem a) ((Int, QColor t2)) where
 setTextColor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTreeWidgetItem_setTextColor cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTreeWidgetItem_setTextColor" qtc_QTreeWidgetItem_setTextColor :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr (TQColor t2) -> IO ()

instance QsetToolTip (QTreeWidgetItem a) ((Int, String)) where
 setToolTip x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTreeWidgetItem_setToolTip cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTreeWidgetItem_setToolTip" qtc_QTreeWidgetItem_setToolTip :: Ptr (TQTreeWidgetItem a) -> CInt -> CWString -> IO ()

instance QsetWhatsThis (QTreeWidgetItem a) ((Int, String)) where
 setWhatsThis x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTreeWidgetItem_setWhatsThis cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QTreeWidgetItem_setWhatsThis" qtc_QTreeWidgetItem_setWhatsThis :: Ptr (TQTreeWidgetItem a) -> CInt -> CWString -> IO ()

instance QqsizeHint (QTreeWidgetItem a) ((Int)) where
 qsizeHint x0 (x1)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_sizeHint cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_sizeHint" qtc_QTreeWidgetItem_sizeHint :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQSize ()))

instance QsizeHint (QTreeWidgetItem a) ((Int)) where
 sizeHint x0 (x1)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_sizeHint_qth cobj_x0 (toCInt x1) csize_ret_w csize_ret_h

foreign import ccall "qtc_QTreeWidgetItem_sizeHint_qth" qtc_QTreeWidgetItem_sizeHint_qth :: Ptr (TQTreeWidgetItem a) -> CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsortChildren (QTreeWidgetItem a) ((Int, SortOrder)) where
 sortChildren x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_sortChildren cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QTreeWidgetItem_sortChildren" qtc_QTreeWidgetItem_sortChildren :: Ptr (TQTreeWidgetItem a) -> CInt -> CLong -> IO ()

instance QstatusTip (QTreeWidgetItem a) ((Int)) where
 statusTip x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_statusTip cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_statusTip" qtc_QTreeWidgetItem_statusTip :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQString ()))

instance QtakeChild (QTreeWidgetItem a) ((Int)) (IO (QTreeWidgetItem ())) where
 takeChild x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_takeChild cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_takeChild" qtc_QTreeWidgetItem_takeChild :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQTreeWidgetItem ()))

takeChildren :: QTreeWidgetItem a -> (()) -> IO ([QTreeWidgetItem ()])
takeChildren x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_takeChildren cobj_x0 arr

foreign import ccall "qtc_QTreeWidgetItem_takeChildren" qtc_QTreeWidgetItem_takeChildren :: Ptr (TQTreeWidgetItem a) -> Ptr (Ptr (TQTreeWidgetItem ())) -> IO CInt

instance Qtext (QTreeWidgetItem a) ((Int)) (IO (String)) where
 text x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_text cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_text" qtc_QTreeWidgetItem_text :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQString ()))

instance QtextAlignment (QTreeWidgetItem a) ((Int)) (IO (Int)) where
 textAlignment x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_textAlignment cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_textAlignment" qtc_QTreeWidgetItem_textAlignment :: Ptr (TQTreeWidgetItem a) -> CInt -> IO CInt

instance QtextColor (QTreeWidgetItem a) ((Int)) where
 textColor x0 (x1)
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_textColor cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_textColor" qtc_QTreeWidgetItem_textColor :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQColor ()))

instance QtoolTip (QTreeWidgetItem a) ((Int)) where
 toolTip x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_toolTip cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_toolTip" qtc_QTreeWidgetItem_toolTip :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQString ()))

treeWidget :: QTreeWidgetItem a -> (()) -> IO (QTreeWidget ())
treeWidget x0 ()
  = withQTreeWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_treeWidget cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_treeWidget" qtc_QTreeWidgetItem_treeWidget :: Ptr (TQTreeWidgetItem a) -> IO (Ptr (TQTreeWidget ()))

instance Qqtype (QTreeWidgetItem a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_type cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_type" qtc_QTreeWidgetItem_type :: Ptr (TQTreeWidgetItem a) -> IO CInt

instance QwhatsThis (QTreeWidgetItem a) ((Int)) where
 whatsThis x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_whatsThis cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTreeWidgetItem_whatsThis" qtc_QTreeWidgetItem_whatsThis :: Ptr (TQTreeWidgetItem a) -> CInt -> IO (Ptr (TQString ()))

qTreeWidgetItem_delete :: QTreeWidgetItem a -> IO ()
qTreeWidgetItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_delete cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_delete" qtc_QTreeWidgetItem_delete :: Ptr (TQTreeWidgetItem a) -> IO ()

qTreeWidgetItem_delete1 :: QTreeWidgetItem a -> IO ()
qTreeWidgetItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTreeWidgetItem_delete1 cobj_x0

foreign import ccall "qtc_QTreeWidgetItem_delete1" qtc_QTreeWidgetItem_delete1 :: Ptr (TQTreeWidgetItem a) -> IO ()

