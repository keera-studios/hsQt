{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStandardItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:14
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStandardItem (
  QqStandardItem(..)
  ,QqStandardItem_nf(..)
  ,accessibleDescription
  ,accessibleText
  ,isDragEnabled
  ,isDropEnabled
  ,isSelectable
  ,setAccessibleDescription
  ,setAccessibleText
  ,QsetChild(..)
  ,setDropEnabled
  ,setSelectable
  ,qStandardItem_delete, qStandardItem_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QStandardItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QStandardItem_userMethod" qtc_QStandardItem_userMethod :: Ptr (TQStandardItem a) -> CInt -> IO ()

instance QuserMethod (QStandardItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QStandardItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QStandardItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStandardItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QStandardItem_userMethodVariant" qtc_QStandardItem_userMethodVariant :: Ptr (TQStandardItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QStandardItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QStandardItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqStandardItem x1 where
  qStandardItem :: x1 -> IO (QStandardItem ())

instance QqStandardItem (()) where
 qStandardItem ()
  = withQStandardItemResult $
    qtc_QStandardItem

foreign import ccall "qtc_QStandardItem" qtc_QStandardItem :: IO (Ptr (TQStandardItem ()))

instance QqStandardItem ((Int)) where
 qStandardItem (x1)
  = withQStandardItemResult $
    qtc_QStandardItem1 (toCInt x1)

foreign import ccall "qtc_QStandardItem1" qtc_QStandardItem1 :: CInt -> IO (Ptr (TQStandardItem ()))

instance QqStandardItem ((String)) where
 qStandardItem (x1)
  = withQStandardItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem2 cstr_x1

foreign import ccall "qtc_QStandardItem2" qtc_QStandardItem2 :: CWString -> IO (Ptr (TQStandardItem ()))

instance QqStandardItem ((Int, Int)) where
 qStandardItem (x1, x2)
  = withQStandardItemResult $
    qtc_QStandardItem3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem3" qtc_QStandardItem3 :: CInt -> CInt -> IO (Ptr (TQStandardItem ()))

instance QqStandardItem ((QIcon t1, String)) where
 qStandardItem (x1, x2)
  = withQStandardItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QStandardItem4 cobj_x1 cstr_x2

foreign import ccall "qtc_QStandardItem4" qtc_QStandardItem4 :: Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQStandardItem ()))

class QqStandardItem_nf x1 where
  qStandardItem_nf :: x1 -> IO (QStandardItem ())

instance QqStandardItem_nf (()) where
 qStandardItem_nf ()
  = withObjectRefResult $
    qtc_QStandardItem

instance QqStandardItem_nf ((Int)) where
 qStandardItem_nf (x1)
  = withObjectRefResult $
    qtc_QStandardItem1 (toCInt x1)

instance QqStandardItem_nf ((String)) where
 qStandardItem_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem2 cstr_x1

instance QqStandardItem_nf ((Int, Int)) where
 qStandardItem_nf (x1, x2)
  = withObjectRefResult $
    qtc_QStandardItem3 (toCInt x1) (toCInt x2)

instance QqStandardItem_nf ((QIcon t1, String)) where
 qStandardItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QStandardItem4 cobj_x1 cstr_x2

accessibleDescription :: QStandardItem a -> (()) -> IO (String)
accessibleDescription x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_accessibleDescription cobj_x0

foreign import ccall "qtc_QStandardItem_accessibleDescription" qtc_QStandardItem_accessibleDescription :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

accessibleText :: QStandardItem a -> (()) -> IO (String)
accessibleText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_accessibleText cobj_x0

foreign import ccall "qtc_QStandardItem_accessibleText" qtc_QStandardItem_accessibleText :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

instance QappendRow (QStandardItem a) ((QStandardItem t1)) where
 appendRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_appendRow cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_appendRow" qtc_QStandardItem_appendRow :: Ptr (TQStandardItem a) -> Ptr (TQStandardItem t1) -> IO ()

instance Qbackground (QStandardItem a) (()) where
 background x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_background cobj_x0

foreign import ccall "qtc_QStandardItem_background" qtc_QStandardItem_background :: Ptr (TQStandardItem a) -> IO (Ptr (TQBrush ()))

instance QcheckState (QStandardItem a) (()) where
 checkState x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_checkState cobj_x0

foreign import ccall "qtc_QStandardItem_checkState" qtc_QStandardItem_checkState :: Ptr (TQStandardItem a) -> IO CLong

instance Qchild (QStandardItem a) ((Int)) (IO (QStandardItem ())) where
 child x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_child cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_child" qtc_QStandardItem_child :: Ptr (TQStandardItem a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance Qchild (QStandardItem a) ((Int, Int)) (IO (QStandardItem ())) where
 child x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_child1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_child1" qtc_QStandardItem_child1 :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO (Ptr (TQStandardItem ()))

instance Qclone (QStandardItem ()) (()) (IO (QStandardItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_clone_h cobj_x0

foreign import ccall "qtc_QStandardItem_clone_h" qtc_QStandardItem_clone_h :: Ptr (TQStandardItem a) -> IO (Ptr (TQStandardItem ()))

instance Qclone (QStandardItemSc a) (()) (IO (QStandardItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_clone_h cobj_x0

instance Qcolumn (QStandardItem a) (()) where
 column x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_column cobj_x0

foreign import ccall "qtc_QStandardItem_column" qtc_QStandardItem_column :: Ptr (TQStandardItem a) -> IO CInt

instance QcolumnCount (QStandardItem a) (()) where
 columnCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_columnCount cobj_x0

foreign import ccall "qtc_QStandardItem_columnCount" qtc_QStandardItem_columnCount :: Ptr (TQStandardItem a) -> IO CInt

instance Qqdata (QStandardItem ()) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data cobj_x0

foreign import ccall "qtc_QStandardItem_data" qtc_QStandardItem_data :: Ptr (TQStandardItem a) -> IO (Ptr (TQVariant ()))

instance Qqdata (QStandardItemSc a) (()) (IO (QVariant ())) where
 qdata x0 ()
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data cobj_x0

instance Qqdata_nf (QStandardItem ()) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data cobj_x0

instance Qqdata_nf (QStandardItemSc a) (()) (IO (QVariant ())) where
 qdata_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data cobj_x0

instance Qqdata (QStandardItem ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data1_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_data1_h" qtc_QStandardItem_data1_h :: Ptr (TQStandardItem a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QStandardItemSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data1_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QStandardItem ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data1_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QStandardItemSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_data1_h cobj_x0 (toCInt x1)

instance Qflags (QStandardItem a) (()) (IO (ItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_flags cobj_x0

foreign import ccall "qtc_QStandardItem_flags" qtc_QStandardItem_flags :: Ptr (TQStandardItem a) -> IO CLong

instance Qfont (QStandardItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_font cobj_x0

foreign import ccall "qtc_QStandardItem_font" qtc_QStandardItem_font :: Ptr (TQStandardItem a) -> IO (Ptr (TQFont ()))

instance Qforeground (QStandardItem a) (()) where
 foreground x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_foreground cobj_x0

foreign import ccall "qtc_QStandardItem_foreground" qtc_QStandardItem_foreground :: Ptr (TQStandardItem a) -> IO (Ptr (TQBrush ()))

instance QhasChildren (QStandardItem a) (()) where
 hasChildren x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_hasChildren cobj_x0

foreign import ccall "qtc_QStandardItem_hasChildren" qtc_QStandardItem_hasChildren :: Ptr (TQStandardItem a) -> IO CBool

instance Qicon (QStandardItem a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_icon cobj_x0

foreign import ccall "qtc_QStandardItem_icon" qtc_QStandardItem_icon :: Ptr (TQStandardItem a) -> IO (Ptr (TQIcon ()))

instance Qindex (QStandardItem a) (()) (IO (QModelIndex ())) where
 index x0 ()
  = withQModelIndexResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_index cobj_x0

foreign import ccall "qtc_QStandardItem_index" qtc_QStandardItem_index :: Ptr (TQStandardItem a) -> IO (Ptr (TQModelIndex ()))

instance QinsertColumns (QStandardItem a) ((Int, Int)) (IO ()) where
 insertColumns x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_insertColumns" qtc_QStandardItem_insertColumns :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO ()

instance QinsertRow (QStandardItem ()) ((Int, QStandardItem t2)) (IO ()) where
 insertRow x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItem_insertRow cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItem_insertRow" qtc_QStandardItem_insertRow :: Ptr (TQStandardItem a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QinsertRow (QStandardItemSc a) ((Int, QStandardItem t2)) (IO ()) where
 insertRow x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItem_insertRow cobj_x0 (toCInt x1) cobj_x2

instance QinsertRows (QStandardItem a) ((Int, Int)) (IO ()) where
 insertRows x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_insertRows" qtc_QStandardItem_insertRows :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO ()

instance QisCheckable (QStandardItem a) (()) where
 isCheckable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isCheckable cobj_x0

foreign import ccall "qtc_QStandardItem_isCheckable" qtc_QStandardItem_isCheckable :: Ptr (TQStandardItem a) -> IO CBool

isDragEnabled :: QStandardItem a -> (()) -> IO (Bool)
isDragEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isDragEnabled cobj_x0

foreign import ccall "qtc_QStandardItem_isDragEnabled" qtc_QStandardItem_isDragEnabled :: Ptr (TQStandardItem a) -> IO CBool

isDropEnabled :: QStandardItem a -> (()) -> IO (Bool)
isDropEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isDropEnabled cobj_x0

foreign import ccall "qtc_QStandardItem_isDropEnabled" qtc_QStandardItem_isDropEnabled :: Ptr (TQStandardItem a) -> IO CBool

instance QisEditable (QStandardItem a) (()) where
 isEditable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isEditable cobj_x0

foreign import ccall "qtc_QStandardItem_isEditable" qtc_QStandardItem_isEditable :: Ptr (TQStandardItem a) -> IO CBool

instance QisEnabled (QStandardItem a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isEnabled cobj_x0

foreign import ccall "qtc_QStandardItem_isEnabled" qtc_QStandardItem_isEnabled :: Ptr (TQStandardItem a) -> IO CBool

isSelectable :: QStandardItem a -> (()) -> IO (Bool)
isSelectable x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isSelectable cobj_x0

foreign import ccall "qtc_QStandardItem_isSelectable" qtc_QStandardItem_isSelectable :: Ptr (TQStandardItem a) -> IO CBool

instance QisTristate (QStandardItem a) (()) where
 isTristate x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_isTristate cobj_x0

foreign import ccall "qtc_QStandardItem_isTristate" qtc_QStandardItem_isTristate :: Ptr (TQStandardItem a) -> IO CBool

instance Qmodel (QStandardItem a) (()) (IO (QStandardItemModel ())) where
 model x0 ()
  = withQStandardItemModelResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_model cobj_x0

foreign import ccall "qtc_QStandardItem_model" qtc_QStandardItem_model :: Ptr (TQStandardItem a) -> IO (Ptr (TQStandardItemModel ()))

instance Qparent (QStandardItem a) (()) (IO (QStandardItem ())) where
 parent x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_parent cobj_x0

foreign import ccall "qtc_QStandardItem_parent" qtc_QStandardItem_parent :: Ptr (TQStandardItem a) -> IO (Ptr (TQStandardItem ()))

instance QremoveColumn (QStandardItem a) ((Int)) (IO ()) where
 removeColumn x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_removeColumn cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_removeColumn" qtc_QStandardItem_removeColumn :: Ptr (TQStandardItem a) -> CInt -> IO ()

instance QremoveColumns (QStandardItem a) ((Int, Int)) (IO ()) where
 removeColumns x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_removeColumns" qtc_QStandardItem_removeColumns :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO ()

instance QremoveRow (QStandardItem a) ((Int)) (IO ()) where
 removeRow x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_removeRow cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_removeRow" qtc_QStandardItem_removeRow :: Ptr (TQStandardItem a) -> CInt -> IO ()

instance QremoveRows (QStandardItem a) ((Int, Int)) (IO ()) where
 removeRows x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_removeRows" qtc_QStandardItem_removeRows :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO ()

instance Qrow (QStandardItem a) (()) where
 row x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_row cobj_x0

foreign import ccall "qtc_QStandardItem_row" qtc_QStandardItem_row :: Ptr (TQStandardItem a) -> IO CInt

instance QrowCount (QStandardItem a) (()) where
 rowCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_rowCount cobj_x0

foreign import ccall "qtc_QStandardItem_rowCount" qtc_QStandardItem_rowCount :: Ptr (TQStandardItem a) -> IO CInt

setAccessibleDescription :: QStandardItem a -> ((String)) -> IO ()
setAccessibleDescription x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setAccessibleDescription cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setAccessibleDescription" qtc_QStandardItem_setAccessibleDescription :: Ptr (TQStandardItem a) -> CWString -> IO ()

setAccessibleText :: QStandardItem a -> ((String)) -> IO ()
setAccessibleText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setAccessibleText cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setAccessibleText" qtc_QStandardItem_setAccessibleText :: Ptr (TQStandardItem a) -> CWString -> IO ()

instance QsetBackground (QStandardItem a) ((QBrush t1)) where
 setBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setBackground cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setBackground" qtc_QStandardItem_setBackground :: Ptr (TQStandardItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetCheckState (QStandardItem a) ((CheckState)) where
 setCheckState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setCheckState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStandardItem_setCheckState" qtc_QStandardItem_setCheckState :: Ptr (TQStandardItem a) -> CLong -> IO ()

instance QsetCheckable (QStandardItem a) ((Bool)) where
 setCheckable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setCheckable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setCheckable" qtc_QStandardItem_setCheckable :: Ptr (TQStandardItem a) -> CBool -> IO ()

class QsetChild x1 where
 setChild :: QStandardItem a -> x1 -> IO ()

instance QsetChild ((Int, Int, QStandardItem t3)) where
 setChild x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QStandardItem_setChild1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QStandardItem_setChild1" qtc_QStandardItem_setChild1 :: Ptr (TQStandardItem a) -> CInt -> CInt -> Ptr (TQStandardItem t3) -> IO ()

instance QsetChild ((Int, QStandardItem t2)) where
 setChild x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QStandardItem_setChild cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QStandardItem_setChild" qtc_QStandardItem_setChild :: Ptr (TQStandardItem a) -> CInt -> Ptr (TQStandardItem t2) -> IO ()

instance QsetColumnCount (QStandardItem a) ((Int)) where
 setColumnCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setColumnCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_setColumnCount" qtc_QStandardItem_setColumnCount :: Ptr (TQStandardItem a) -> CInt -> IO ()

instance QsetData (QStandardItem a) ((QVariant t1)) (IO ()) where
 setData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setData cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setData" qtc_QStandardItem_setData :: Ptr (TQStandardItem a) -> Ptr (TQVariant t1) -> IO ()

instance QsetData (QStandardItem ()) ((QVariant t1, Int)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setData1_h cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QStandardItem_setData1_h" qtc_QStandardItem_setData1_h :: Ptr (TQStandardItem a) -> Ptr (TQVariant t1) -> CInt -> IO ()

instance QsetData (QStandardItemSc a) ((QVariant t1, Int)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setData1_h cobj_x0 cobj_x1 (toCInt x2)

instance QsetDragEnabled (QStandardItem a) ((Bool)) where
 setDragEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setDragEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setDragEnabled" qtc_QStandardItem_setDragEnabled :: Ptr (TQStandardItem a) -> CBool -> IO ()

setDropEnabled :: QStandardItem a -> ((Bool)) -> IO ()
setDropEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setDropEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setDropEnabled" qtc_QStandardItem_setDropEnabled :: Ptr (TQStandardItem a) -> CBool -> IO ()

instance QsetEditable (QStandardItem a) ((Bool)) where
 setEditable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setEditable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setEditable" qtc_QStandardItem_setEditable :: Ptr (TQStandardItem a) -> CBool -> IO ()

instance QsetEnabled (QStandardItem a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setEnabled" qtc_QStandardItem_setEnabled :: Ptr (TQStandardItem a) -> CBool -> IO ()

instance QsetFlags (QStandardItem a) ((ItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStandardItem_setFlags" qtc_QStandardItem_setFlags :: Ptr (TQStandardItem a) -> CLong -> IO ()

instance QsetFont (QStandardItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setFont" qtc_QStandardItem_setFont :: Ptr (TQStandardItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetForeground (QStandardItem a) ((QBrush t1)) where
 setForeground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setForeground cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setForeground" qtc_QStandardItem_setForeground :: Ptr (TQStandardItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetIcon (QStandardItem a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setIcon" qtc_QStandardItem_setIcon :: Ptr (TQStandardItem a) -> Ptr (TQIcon t1) -> IO ()

instance QsetRowCount (QStandardItem a) ((Int)) where
 setRowCount x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setRowCount cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_setRowCount" qtc_QStandardItem_setRowCount :: Ptr (TQStandardItem a) -> CInt -> IO ()

setSelectable :: QStandardItem a -> ((Bool)) -> IO ()
setSelectable x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setSelectable cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setSelectable" qtc_QStandardItem_setSelectable :: Ptr (TQStandardItem a) -> CBool -> IO ()

instance QqsetSizeHint (QStandardItem a) ((QSize t1)) where
 qsetSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStandardItem_setSizeHint cobj_x0 cobj_x1

foreign import ccall "qtc_QStandardItem_setSizeHint" qtc_QStandardItem_setSizeHint :: Ptr (TQStandardItem a) -> Ptr (TQSize t1) -> IO ()

instance QsetSizeHint (QStandardItem a) ((Size)) where
 setSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QStandardItem_setSizeHint_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QStandardItem_setSizeHint_qth" qtc_QStandardItem_setSizeHint_qth :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO ()

instance QsetStatusTip (QStandardItem a) ((String)) where
 setStatusTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setStatusTip cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setStatusTip" qtc_QStandardItem_setStatusTip :: Ptr (TQStandardItem a) -> CWString -> IO ()

instance QsetText (QStandardItem a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setText" qtc_QStandardItem_setText :: Ptr (TQStandardItem a) -> CWString -> IO ()

instance QsetTextAlignment (QStandardItem a) ((Alignment)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setTextAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QStandardItem_setTextAlignment" qtc_QStandardItem_setTextAlignment :: Ptr (TQStandardItem a) -> CLong -> IO ()

instance QsetToolTip (QStandardItem a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setToolTip" qtc_QStandardItem_setToolTip :: Ptr (TQStandardItem a) -> CWString -> IO ()

instance QsetTristate (QStandardItem a) ((Bool)) where
 setTristate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_setTristate cobj_x0 (toCBool x1)

foreign import ccall "qtc_QStandardItem_setTristate" qtc_QStandardItem_setTristate :: Ptr (TQStandardItem a) -> CBool -> IO ()

instance QsetWhatsThis (QStandardItem a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QStandardItem_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QStandardItem_setWhatsThis" qtc_QStandardItem_setWhatsThis :: Ptr (TQStandardItem a) -> CWString -> IO ()

instance QqsizeHint (QStandardItem a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_sizeHint cobj_x0

foreign import ccall "qtc_QStandardItem_sizeHint" qtc_QStandardItem_sizeHint :: Ptr (TQStandardItem a) -> IO (Ptr (TQSize ()))

instance QsizeHint (QStandardItem a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QStandardItem_sizeHint_qth" qtc_QStandardItem_sizeHint_qth :: Ptr (TQStandardItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsortChildren (QStandardItem a) ((Int)) where
 sortChildren x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_sortChildren cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_sortChildren" qtc_QStandardItem_sortChildren :: Ptr (TQStandardItem a) -> CInt -> IO ()

instance QsortChildren (QStandardItem a) ((Int, SortOrder)) where
 sortChildren x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_sortChildren1 cobj_x0 (toCInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QStandardItem_sortChildren1" qtc_QStandardItem_sortChildren1 :: Ptr (TQStandardItem a) -> CInt -> CLong -> IO ()

instance QstatusTip (QStandardItem a) (()) where
 statusTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_statusTip cobj_x0

foreign import ccall "qtc_QStandardItem_statusTip" qtc_QStandardItem_statusTip :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

instance QtakeChild (QStandardItem a) ((Int)) (IO (QStandardItem ())) where
 takeChild x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_takeChild cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStandardItem_takeChild" qtc_QStandardItem_takeChild :: Ptr (TQStandardItem a) -> CInt -> IO (Ptr (TQStandardItem ()))

instance QtakeChild (QStandardItem a) ((Int, Int)) (IO (QStandardItem ())) where
 takeChild x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_takeChild1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStandardItem_takeChild1" qtc_QStandardItem_takeChild1 :: Ptr (TQStandardItem a) -> CInt -> CInt -> IO (Ptr (TQStandardItem ()))

instance QtakeColumn (QStandardItem a) ((Int)) where
 takeColumn x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_takeColumn cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QStandardItem_takeColumn" qtc_QStandardItem_takeColumn :: Ptr (TQStandardItem a) -> CInt -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance QtakeRow (QStandardItem a) ((Int)) where
 takeRow x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_takeRow cobj_x0 (toCInt x1) arr

foreign import ccall "qtc_QStandardItem_takeRow" qtc_QStandardItem_takeRow :: Ptr (TQStandardItem a) -> CInt -> Ptr (Ptr (TQStandardItem ())) -> IO CInt

instance Qtext (QStandardItem a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_text cobj_x0

foreign import ccall "qtc_QStandardItem_text" qtc_QStandardItem_text :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QStandardItem a) (()) (IO (Alignment)) where
 textAlignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_textAlignment cobj_x0

foreign import ccall "qtc_QStandardItem_textAlignment" qtc_QStandardItem_textAlignment :: Ptr (TQStandardItem a) -> IO CLong

instance QtoolTip (QStandardItem a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_toolTip cobj_x0

foreign import ccall "qtc_QStandardItem_toolTip" qtc_QStandardItem_toolTip :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

instance Qqtype (QStandardItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_type_h cobj_x0

foreign import ccall "qtc_QStandardItem_type_h" qtc_QStandardItem_type_h :: Ptr (TQStandardItem a) -> IO CInt

instance Qqtype (QStandardItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_type_h cobj_x0

instance QwhatsThis (QStandardItem a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_whatsThis cobj_x0

foreign import ccall "qtc_QStandardItem_whatsThis" qtc_QStandardItem_whatsThis :: Ptr (TQStandardItem a) -> IO (Ptr (TQString ()))

qStandardItem_delete :: QStandardItem a -> IO ()
qStandardItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_delete cobj_x0

foreign import ccall "qtc_QStandardItem_delete" qtc_QStandardItem_delete :: Ptr (TQStandardItem a) -> IO ()

qStandardItem_delete1 :: QStandardItem a -> IO ()
qStandardItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStandardItem_delete1 cobj_x0

foreign import ccall "qtc_QStandardItem_delete1" qtc_QStandardItem_delete1 :: Ptr (TQStandardItem a) -> IO ()

