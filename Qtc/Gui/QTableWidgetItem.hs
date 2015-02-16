{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTableWidgetItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTableWidgetItem (
  QqTableWidgetItem(..)
  ,QqTableWidgetItem_nf(..)
  ,tableWidget
  ,qTableWidgetItem_delete, qTableWidgetItem_delete1
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

instance QuserMethod (QTableWidgetItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableWidgetItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTableWidgetItem_userMethod" qtc_QTableWidgetItem_userMethod :: Ptr (TQTableWidgetItem a) -> CInt -> IO ()

instance QuserMethod (QTableWidgetItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTableWidgetItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTableWidgetItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTableWidgetItem_userMethodVariant" qtc_QTableWidgetItem_userMethodVariant :: Ptr (TQTableWidgetItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTableWidgetItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTableWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqTableWidgetItem x1 where
  qTableWidgetItem :: x1 -> IO (QTableWidgetItem ())

instance QqTableWidgetItem (()) where
 qTableWidgetItem ()
  = withQTableWidgetItemResult $
    qtc_QTableWidgetItem

foreign import ccall "qtc_QTableWidgetItem" qtc_QTableWidgetItem :: IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((Int)) where
 qTableWidgetItem (x1)
  = withQTableWidgetItemResult $
    qtc_QTableWidgetItem1 (toCInt x1)

foreign import ccall "qtc_QTableWidgetItem1" qtc_QTableWidgetItem1 :: CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((QTableWidgetItem t1)) where
 qTableWidgetItem (x1)
  = withQTableWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem2 cobj_x1

foreign import ccall "qtc_QTableWidgetItem2" qtc_QTableWidgetItem2 :: Ptr (TQTableWidgetItem t1) -> IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((String)) where
 qTableWidgetItem (x1)
  = withQTableWidgetItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem3 cstr_x1

foreign import ccall "qtc_QTableWidgetItem3" qtc_QTableWidgetItem3 :: CWString -> IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((String, Int)) where
 qTableWidgetItem (x1, x2)
  = withQTableWidgetItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem4 cstr_x1 (toCInt x2)

foreign import ccall "qtc_QTableWidgetItem4" qtc_QTableWidgetItem4 :: CWString -> CInt -> IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((QIcon t1, String)) where
 qTableWidgetItem (x1, x2)
  = withQTableWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTableWidgetItem5 cobj_x1 cstr_x2

foreign import ccall "qtc_QTableWidgetItem5" qtc_QTableWidgetItem5 :: Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQTableWidgetItem ()))

instance QqTableWidgetItem ((QIcon t1, String, Int)) where
 qTableWidgetItem (x1, x2, x3)
  = withQTableWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTableWidgetItem6 cobj_x1 cstr_x2 (toCInt x3)

foreign import ccall "qtc_QTableWidgetItem6" qtc_QTableWidgetItem6 :: Ptr (TQIcon t1) -> CWString -> CInt -> IO (Ptr (TQTableWidgetItem ()))

class QqTableWidgetItem_nf x1 where
  qTableWidgetItem_nf :: x1 -> IO (QTableWidgetItem ())

instance QqTableWidgetItem_nf (()) where
 qTableWidgetItem_nf ()
  = withObjectRefResult $
    qtc_QTableWidgetItem

instance QqTableWidgetItem_nf ((Int)) where
 qTableWidgetItem_nf (x1)
  = withObjectRefResult $
    qtc_QTableWidgetItem1 (toCInt x1)

instance QqTableWidgetItem_nf ((QTableWidgetItem t1)) where
 qTableWidgetItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem2 cobj_x1

instance QqTableWidgetItem_nf ((String)) where
 qTableWidgetItem_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem3 cstr_x1

instance QqTableWidgetItem_nf ((String, Int)) where
 qTableWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem4 cstr_x1 (toCInt x2)

instance QqTableWidgetItem_nf ((QIcon t1, String)) where
 qTableWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTableWidgetItem5 cobj_x1 cstr_x2

instance QqTableWidgetItem_nf ((QIcon t1, String, Int)) where
 qTableWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QTableWidgetItem6 cobj_x1 cstr_x2 (toCInt x3)

instance Qbackground (QTableWidgetItem a) (()) where
 background x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_background cobj_x0

foreign import ccall "qtc_QTableWidgetItem_background" qtc_QTableWidgetItem_background :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQBrush ()))

instance QbackgroundColor (QTableWidgetItem a) (()) where
 backgroundColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_backgroundColor cobj_x0

foreign import ccall "qtc_QTableWidgetItem_backgroundColor" qtc_QTableWidgetItem_backgroundColor :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQColor ()))

instance QcheckState (QTableWidgetItem a) (()) where
 checkState x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_checkState cobj_x0

foreign import ccall "qtc_QTableWidgetItem_checkState" qtc_QTableWidgetItem_checkState :: Ptr (TQTableWidgetItem a) -> IO CLong

instance Qclone (QTableWidgetItem ()) (()) (IO (QTableWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_clone_h cobj_x0

foreign import ccall "qtc_QTableWidgetItem_clone_h" qtc_QTableWidgetItem_clone_h :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQTableWidgetItem ()))

instance Qclone (QTableWidgetItemSc a) (()) (IO (QTableWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_clone_h cobj_x0

instance Qcolumn (QTableWidgetItem a) (()) where
 column x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_column cobj_x0

foreign import ccall "qtc_QTableWidgetItem_column" qtc_QTableWidgetItem_column :: Ptr (TQTableWidgetItem a) -> IO CInt

instance Qqdata (QTableWidgetItem ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_data_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidgetItem_data_h" qtc_QTableWidgetItem_data_h :: Ptr (TQTableWidgetItem a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QTableWidgetItemSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QTableWidgetItem ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QTableWidgetItemSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qflags (QTableWidgetItem a) (()) (IO (ItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_flags cobj_x0

foreign import ccall "qtc_QTableWidgetItem_flags" qtc_QTableWidgetItem_flags :: Ptr (TQTableWidgetItem a) -> IO CLong

instance Qfont (QTableWidgetItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_font cobj_x0

foreign import ccall "qtc_QTableWidgetItem_font" qtc_QTableWidgetItem_font :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQFont ()))

instance Qforeground (QTableWidgetItem a) (()) where
 foreground x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_foreground cobj_x0

foreign import ccall "qtc_QTableWidgetItem_foreground" qtc_QTableWidgetItem_foreground :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQBrush ()))

instance Qicon (QTableWidgetItem a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_icon cobj_x0

foreign import ccall "qtc_QTableWidgetItem_icon" qtc_QTableWidgetItem_icon :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQIcon ()))

instance QisSelected (QTableWidgetItem a) (()) where
 isSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_isSelected cobj_x0

foreign import ccall "qtc_QTableWidgetItem_isSelected" qtc_QTableWidgetItem_isSelected :: Ptr (TQTableWidgetItem a) -> IO CBool

instance Qrow (QTableWidgetItem a) (()) where
 row x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_row cobj_x0

foreign import ccall "qtc_QTableWidgetItem_row" qtc_QTableWidgetItem_row :: Ptr (TQTableWidgetItem a) -> IO CInt

instance QsetBackground (QTableWidgetItem a) ((QBrush t1)) where
 setBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setBackground cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setBackground" qtc_QTableWidgetItem_setBackground :: Ptr (TQTableWidgetItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetBackgroundColor (QTableWidgetItem a) ((QColor t1)) where
 setBackgroundColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setBackgroundColor cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setBackgroundColor" qtc_QTableWidgetItem_setBackgroundColor :: Ptr (TQTableWidgetItem a) -> Ptr (TQColor t1) -> IO ()

instance QsetCheckState (QTableWidgetItem a) ((CheckState)) where
 setCheckState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_setCheckState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QTableWidgetItem_setCheckState" qtc_QTableWidgetItem_setCheckState :: Ptr (TQTableWidgetItem a) -> CLong -> IO ()

instance QsetData (QTableWidgetItem ()) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidgetItem_setData_h cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QTableWidgetItem_setData_h" qtc_QTableWidgetItem_setData_h :: Ptr (TQTableWidgetItem a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetData (QTableWidgetItemSc a) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTableWidgetItem_setData_h cobj_x0 (toCInt x1) cobj_x2

instance QsetFlags (QTableWidgetItem a) ((ItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QTableWidgetItem_setFlags" qtc_QTableWidgetItem_setFlags :: Ptr (TQTableWidgetItem a) -> CLong -> IO ()

instance QsetFont (QTableWidgetItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setFont" qtc_QTableWidgetItem_setFont :: Ptr (TQTableWidgetItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetForeground (QTableWidgetItem a) ((QBrush t1)) where
 setForeground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setForeground cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setForeground" qtc_QTableWidgetItem_setForeground :: Ptr (TQTableWidgetItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetIcon (QTableWidgetItem a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setIcon" qtc_QTableWidgetItem_setIcon :: Ptr (TQTableWidgetItem a) -> Ptr (TQIcon t1) -> IO ()

instance QsetSelected (QTableWidgetItem a) ((Bool)) where
 setSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_setSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QTableWidgetItem_setSelected" qtc_QTableWidgetItem_setSelected :: Ptr (TQTableWidgetItem a) -> CBool -> IO ()

instance QqsetSizeHint (QTableWidgetItem a) ((QSize t1)) where
 qsetSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setSizeHint cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setSizeHint" qtc_QTableWidgetItem_setSizeHint :: Ptr (TQTableWidgetItem a) -> Ptr (TQSize t1) -> IO ()

instance QsetSizeHint (QTableWidgetItem a) ((Size)) where
 setSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QTableWidgetItem_setSizeHint_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QTableWidgetItem_setSizeHint_qth" qtc_QTableWidgetItem_setSizeHint_qth :: Ptr (TQTableWidgetItem a) -> CInt -> CInt -> IO ()

instance QsetStatusTip (QTableWidgetItem a) ((String)) where
 setStatusTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem_setStatusTip cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidgetItem_setStatusTip" qtc_QTableWidgetItem_setStatusTip :: Ptr (TQTableWidgetItem a) -> CWString -> IO ()

instance QsetText (QTableWidgetItem a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidgetItem_setText" qtc_QTableWidgetItem_setText :: Ptr (TQTableWidgetItem a) -> CWString -> IO ()

instance QsetTextAlignment (QTableWidgetItem a) ((Int)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_setTextAlignment cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTableWidgetItem_setTextAlignment" qtc_QTableWidgetItem_setTextAlignment :: Ptr (TQTableWidgetItem a) -> CInt -> IO ()

instance QsetTextColor (QTableWidgetItem a) ((QColor t1)) where
 setTextColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTableWidgetItem_setTextColor cobj_x0 cobj_x1

foreign import ccall "qtc_QTableWidgetItem_setTextColor" qtc_QTableWidgetItem_setTextColor :: Ptr (TQTableWidgetItem a) -> Ptr (TQColor t1) -> IO ()

instance QsetToolTip (QTableWidgetItem a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidgetItem_setToolTip" qtc_QTableWidgetItem_setToolTip :: Ptr (TQTableWidgetItem a) -> CWString -> IO ()

instance QsetWhatsThis (QTableWidgetItem a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTableWidgetItem_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QTableWidgetItem_setWhatsThis" qtc_QTableWidgetItem_setWhatsThis :: Ptr (TQTableWidgetItem a) -> CWString -> IO ()

instance QqsizeHint (QTableWidgetItem a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_sizeHint cobj_x0

foreign import ccall "qtc_QTableWidgetItem_sizeHint" qtc_QTableWidgetItem_sizeHint :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQSize ()))

instance QsizeHint (QTableWidgetItem a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QTableWidgetItem_sizeHint_qth" qtc_QTableWidgetItem_sizeHint_qth :: Ptr (TQTableWidgetItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QstatusTip (QTableWidgetItem a) (()) where
 statusTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_statusTip cobj_x0

foreign import ccall "qtc_QTableWidgetItem_statusTip" qtc_QTableWidgetItem_statusTip :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQString ()))

tableWidget :: QTableWidgetItem a -> (()) -> IO (QTableWidget ())
tableWidget x0 ()
  = withQTableWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_tableWidget cobj_x0

foreign import ccall "qtc_QTableWidgetItem_tableWidget" qtc_QTableWidgetItem_tableWidget :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQTableWidget ()))

instance Qtext (QTableWidgetItem a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_text cobj_x0

foreign import ccall "qtc_QTableWidgetItem_text" qtc_QTableWidgetItem_text :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QTableWidgetItem a) (()) (IO (Int)) where
 textAlignment x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_textAlignment cobj_x0

foreign import ccall "qtc_QTableWidgetItem_textAlignment" qtc_QTableWidgetItem_textAlignment :: Ptr (TQTableWidgetItem a) -> IO CInt

instance QtextColor (QTableWidgetItem a) (()) where
 textColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_textColor cobj_x0

foreign import ccall "qtc_QTableWidgetItem_textColor" qtc_QTableWidgetItem_textColor :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQColor ()))

instance QtoolTip (QTableWidgetItem a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_toolTip cobj_x0

foreign import ccall "qtc_QTableWidgetItem_toolTip" qtc_QTableWidgetItem_toolTip :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQString ()))

instance Qqtype (QTableWidgetItem a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_type cobj_x0

foreign import ccall "qtc_QTableWidgetItem_type" qtc_QTableWidgetItem_type :: Ptr (TQTableWidgetItem a) -> IO CInt

instance QwhatsThis (QTableWidgetItem a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_whatsThis cobj_x0

foreign import ccall "qtc_QTableWidgetItem_whatsThis" qtc_QTableWidgetItem_whatsThis :: Ptr (TQTableWidgetItem a) -> IO (Ptr (TQString ()))

qTableWidgetItem_delete :: QTableWidgetItem a -> IO ()
qTableWidgetItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_delete cobj_x0

foreign import ccall "qtc_QTableWidgetItem_delete" qtc_QTableWidgetItem_delete :: Ptr (TQTableWidgetItem a) -> IO ()

qTableWidgetItem_delete1 :: QTableWidgetItem a -> IO ()
qTableWidgetItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTableWidgetItem_delete1 cobj_x0

foreign import ccall "qtc_QTableWidgetItem_delete1" qtc_QTableWidgetItem_delete1 :: Ptr (TQTableWidgetItem a) -> IO ()

