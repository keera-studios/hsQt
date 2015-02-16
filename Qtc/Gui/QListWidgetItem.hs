{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QListWidgetItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QListWidgetItem (
  QqListWidgetItem(..)
  ,QqListWidgetItem_nf(..)
  ,listWidget
  ,qListWidgetItem_delete, qListWidgetItem_delete1
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

instance QuserMethod (QListWidgetItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListWidgetItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QListWidgetItem_userMethod" qtc_QListWidgetItem_userMethod :: Ptr (TQListWidgetItem a) -> CInt -> IO ()

instance QuserMethod (QListWidgetItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QListWidgetItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QListWidgetItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QListWidgetItem_userMethodVariant" qtc_QListWidgetItem_userMethodVariant :: Ptr (TQListWidgetItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QListWidgetItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QListWidgetItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqListWidgetItem x1 where
  qListWidgetItem :: x1 -> IO (QListWidgetItem ())

instance QqListWidgetItem (()) where
 qListWidgetItem ()
  = withQListWidgetItemResult $
    qtc_QListWidgetItem

foreign import ccall "qtc_QListWidgetItem" qtc_QListWidgetItem :: IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QListWidget t1)) where
 qListWidgetItem (x1)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem1 cobj_x1

foreign import ccall "qtc_QListWidgetItem1" qtc_QListWidgetItem1 :: Ptr (TQListWidget t1) -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QListWidgetItem t1)) where
 qListWidgetItem (x1)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem2 cobj_x1

foreign import ccall "qtc_QListWidgetItem2" qtc_QListWidgetItem2 :: Ptr (TQListWidgetItem t1) -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((String)) where
 qListWidgetItem (x1)
  = withQListWidgetItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem3 cstr_x1

foreign import ccall "qtc_QListWidgetItem3" qtc_QListWidgetItem3 :: CWString -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QListWidget t1, Int)) where
 qListWidgetItem (x1, x2)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem4 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QListWidgetItem4" qtc_QListWidgetItem4 :: Ptr (TQListWidget t1) -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((String, QListWidget t2)) where
 qListWidgetItem (x1, x2)
  = withQListWidgetItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem5 cstr_x1 cobj_x2

foreign import ccall "qtc_QListWidgetItem5" qtc_QListWidgetItem5 :: CWString -> Ptr (TQListWidget t2) -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QIcon t1, String)) where
 qListWidgetItem (x1, x2)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QListWidgetItem6 cobj_x1 cstr_x2

foreign import ccall "qtc_QListWidgetItem6" qtc_QListWidgetItem6 :: Ptr (TQIcon t1) -> CWString -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((String, QListWidget t2, Int)) where
 qListWidgetItem (x1, x2, x3)
  = withQListWidgetItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem7 cstr_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QListWidgetItem7" qtc_QListWidgetItem7 :: CWString -> Ptr (TQListWidget t2) -> CInt -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QIcon t1, String, QListWidget t3)) where
 qListWidgetItem (x1, x2, x3)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidgetItem8 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QListWidgetItem8" qtc_QListWidgetItem8 :: Ptr (TQIcon t1) -> CWString -> Ptr (TQListWidget t3) -> IO (Ptr (TQListWidgetItem ()))

instance QqListWidgetItem ((QIcon t1, String, QListWidget t3, Int)) where
 qListWidgetItem (x1, x2, x3, x4)
  = withQListWidgetItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidgetItem9 cobj_x1 cstr_x2 cobj_x3 (toCInt x4)

foreign import ccall "qtc_QListWidgetItem9" qtc_QListWidgetItem9 :: Ptr (TQIcon t1) -> CWString -> Ptr (TQListWidget t3) -> CInt -> IO (Ptr (TQListWidgetItem ()))

class QqListWidgetItem_nf x1 where
  qListWidgetItem_nf :: x1 -> IO (QListWidgetItem ())

instance QqListWidgetItem_nf (()) where
 qListWidgetItem_nf ()
  = withObjectRefResult $
    qtc_QListWidgetItem

instance QqListWidgetItem_nf ((QListWidget t1)) where
 qListWidgetItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem1 cobj_x1

instance QqListWidgetItem_nf ((QListWidgetItem t1)) where
 qListWidgetItem_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem2 cobj_x1

instance QqListWidgetItem_nf ((String)) where
 qListWidgetItem_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem3 cstr_x1

instance QqListWidgetItem_nf ((QListWidget t1, Int)) where
 qListWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem4 cobj_x1 (toCInt x2)

instance QqListWidgetItem_nf ((String, QListWidget t2)) where
 qListWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem5 cstr_x1 cobj_x2

instance QqListWidgetItem_nf ((QIcon t1, String)) where
 qListWidgetItem_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QListWidgetItem6 cobj_x1 cstr_x2

instance QqListWidgetItem_nf ((String, QListWidget t2, Int)) where
 qListWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem7 cstr_x1 cobj_x2 (toCInt x3)

instance QqListWidgetItem_nf ((QIcon t1, String, QListWidget t3)) where
 qListWidgetItem_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidgetItem8 cobj_x1 cstr_x2 cobj_x3

instance QqListWidgetItem_nf ((QIcon t1, String, QListWidget t3, Int)) where
 qListWidgetItem_nf (x1, x2, x3, x4)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QListWidgetItem9 cobj_x1 cstr_x2 cobj_x3 (toCInt x4)

instance Qbackground (QListWidgetItem a) (()) where
 background x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_background cobj_x0

foreign import ccall "qtc_QListWidgetItem_background" qtc_QListWidgetItem_background :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQBrush ()))

instance QbackgroundColor (QListWidgetItem a) (()) where
 backgroundColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_backgroundColor cobj_x0

foreign import ccall "qtc_QListWidgetItem_backgroundColor" qtc_QListWidgetItem_backgroundColor :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQColor ()))

instance QcheckState (QListWidgetItem a) (()) where
 checkState x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_checkState cobj_x0

foreign import ccall "qtc_QListWidgetItem_checkState" qtc_QListWidgetItem_checkState :: Ptr (TQListWidgetItem a) -> IO CLong

instance Qclone (QListWidgetItem ()) (()) (IO (QListWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_clone_h cobj_x0

foreign import ccall "qtc_QListWidgetItem_clone_h" qtc_QListWidgetItem_clone_h :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQListWidgetItem ()))

instance Qclone (QListWidgetItemSc a) (()) (IO (QListWidgetItem ())) where
 clone x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_clone_h cobj_x0

instance Qqdata (QListWidgetItem ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_data_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidgetItem_data_h" qtc_QListWidgetItem_data_h :: Ptr (TQListWidgetItem a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QListWidgetItemSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QListWidgetItem ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qqdata_nf (QListWidgetItemSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_data_h cobj_x0 (toCInt x1)

instance Qflags (QListWidgetItem a) (()) (IO (ItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_flags cobj_x0

foreign import ccall "qtc_QListWidgetItem_flags" qtc_QListWidgetItem_flags :: Ptr (TQListWidgetItem a) -> IO CLong

instance Qfont (QListWidgetItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_font cobj_x0

foreign import ccall "qtc_QListWidgetItem_font" qtc_QListWidgetItem_font :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQFont ()))

instance Qforeground (QListWidgetItem a) (()) where
 foreground x0 ()
  = withQBrushResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_foreground cobj_x0

foreign import ccall "qtc_QListWidgetItem_foreground" qtc_QListWidgetItem_foreground :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQBrush ()))

instance Qicon (QListWidgetItem a) (()) (IO (QIcon ())) where
 icon x0 ()
  = withQIconResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_icon cobj_x0

foreign import ccall "qtc_QListWidgetItem_icon" qtc_QListWidgetItem_icon :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQIcon ()))

instance QisHidden (QListWidgetItem a) (()) where
 isHidden x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_isHidden cobj_x0

foreign import ccall "qtc_QListWidgetItem_isHidden" qtc_QListWidgetItem_isHidden :: Ptr (TQListWidgetItem a) -> IO CBool

instance QisSelected (QListWidgetItem a) (()) where
 isSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_isSelected cobj_x0

foreign import ccall "qtc_QListWidgetItem_isSelected" qtc_QListWidgetItem_isSelected :: Ptr (TQListWidgetItem a) -> IO CBool

listWidget :: QListWidgetItem a -> (()) -> IO (QListWidget ())
listWidget x0 ()
  = withQListWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_listWidget cobj_x0

foreign import ccall "qtc_QListWidgetItem_listWidget" qtc_QListWidgetItem_listWidget :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQListWidget ()))

instance QsetBackground (QListWidgetItem a) ((QBrush t1)) where
 setBackground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setBackground cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setBackground" qtc_QListWidgetItem_setBackground :: Ptr (TQListWidgetItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetBackgroundColor (QListWidgetItem ()) ((QColor t1)) where
 setBackgroundColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setBackgroundColor_h cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setBackgroundColor_h" qtc_QListWidgetItem_setBackgroundColor_h :: Ptr (TQListWidgetItem a) -> Ptr (TQColor t1) -> IO ()

instance QsetBackgroundColor (QListWidgetItemSc a) ((QColor t1)) where
 setBackgroundColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setBackgroundColor_h cobj_x0 cobj_x1

instance QsetCheckState (QListWidgetItem a) ((CheckState)) where
 setCheckState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_setCheckState cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QListWidgetItem_setCheckState" qtc_QListWidgetItem_setCheckState :: Ptr (TQListWidgetItem a) -> CLong -> IO ()

instance QsetData (QListWidgetItem ()) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem_setData_h cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QListWidgetItem_setData_h" qtc_QListWidgetItem_setData_h :: Ptr (TQListWidgetItem a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetData (QListWidgetItemSc a) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QListWidgetItem_setData_h cobj_x0 (toCInt x1) cobj_x2

instance QsetFlags (QListWidgetItem a) ((ItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QListWidgetItem_setFlags" qtc_QListWidgetItem_setFlags :: Ptr (TQListWidgetItem a) -> CLong -> IO ()

instance QsetFont (QListWidgetItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setFont" qtc_QListWidgetItem_setFont :: Ptr (TQListWidgetItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetForeground (QListWidgetItem a) ((QBrush t1)) where
 setForeground x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setForeground cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setForeground" qtc_QListWidgetItem_setForeground :: Ptr (TQListWidgetItem a) -> Ptr (TQBrush t1) -> IO ()

instance QsetHidden (QListWidgetItem a) ((Bool)) where
 setHidden x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_setHidden cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidgetItem_setHidden" qtc_QListWidgetItem_setHidden :: Ptr (TQListWidgetItem a) -> CBool -> IO ()

instance QsetIcon (QListWidgetItem a) ((QIcon t1)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setIcon cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setIcon" qtc_QListWidgetItem_setIcon :: Ptr (TQListWidgetItem a) -> Ptr (TQIcon t1) -> IO ()

instance QsetSelected (QListWidgetItem a) ((Bool)) where
 setSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_setSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QListWidgetItem_setSelected" qtc_QListWidgetItem_setSelected :: Ptr (TQListWidgetItem a) -> CBool -> IO ()

instance QqsetSizeHint (QListWidgetItem a) ((QSize t1)) where
 qsetSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setSizeHint cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setSizeHint" qtc_QListWidgetItem_setSizeHint :: Ptr (TQListWidgetItem a) -> Ptr (TQSize t1) -> IO ()

instance QsetSizeHint (QListWidgetItem a) ((Size)) where
 setSizeHint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QListWidgetItem_setSizeHint_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QListWidgetItem_setSizeHint_qth" qtc_QListWidgetItem_setSizeHint_qth :: Ptr (TQListWidgetItem a) -> CInt -> CInt -> IO ()

instance QsetStatusTip (QListWidgetItem a) ((String)) where
 setStatusTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem_setStatusTip cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidgetItem_setStatusTip" qtc_QListWidgetItem_setStatusTip :: Ptr (TQListWidgetItem a) -> CWString -> IO ()

instance QsetText (QListWidgetItem a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidgetItem_setText" qtc_QListWidgetItem_setText :: Ptr (TQListWidgetItem a) -> CWString -> IO ()

instance QsetTextAlignment (QListWidgetItem a) ((Int)) where
 setTextAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_setTextAlignment cobj_x0 (toCInt x1)

foreign import ccall "qtc_QListWidgetItem_setTextAlignment" qtc_QListWidgetItem_setTextAlignment :: Ptr (TQListWidgetItem a) -> CInt -> IO ()

instance QsetTextColor (QListWidgetItem a) ((QColor t1)) where
 setTextColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QListWidgetItem_setTextColor cobj_x0 cobj_x1

foreign import ccall "qtc_QListWidgetItem_setTextColor" qtc_QListWidgetItem_setTextColor :: Ptr (TQListWidgetItem a) -> Ptr (TQColor t1) -> IO ()

instance QsetToolTip (QListWidgetItem a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidgetItem_setToolTip" qtc_QListWidgetItem_setToolTip :: Ptr (TQListWidgetItem a) -> CWString -> IO ()

instance QsetWhatsThis (QListWidgetItem a) ((String)) where
 setWhatsThis x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QListWidgetItem_setWhatsThis cobj_x0 cstr_x1

foreign import ccall "qtc_QListWidgetItem_setWhatsThis" qtc_QListWidgetItem_setWhatsThis :: Ptr (TQListWidgetItem a) -> CWString -> IO ()

instance QqsizeHint (QListWidgetItem a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_sizeHint cobj_x0

foreign import ccall "qtc_QListWidgetItem_sizeHint" qtc_QListWidgetItem_sizeHint :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQSize ()))

instance QsizeHint (QListWidgetItem a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_sizeHint_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QListWidgetItem_sizeHint_qth" qtc_QListWidgetItem_sizeHint_qth :: Ptr (TQListWidgetItem a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QstatusTip (QListWidgetItem a) (()) where
 statusTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_statusTip cobj_x0

foreign import ccall "qtc_QListWidgetItem_statusTip" qtc_QListWidgetItem_statusTip :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQString ()))

instance Qtext (QListWidgetItem a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_text cobj_x0

foreign import ccall "qtc_QListWidgetItem_text" qtc_QListWidgetItem_text :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQString ()))

instance QtextAlignment (QListWidgetItem a) (()) (IO (Int)) where
 textAlignment x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_textAlignment cobj_x0

foreign import ccall "qtc_QListWidgetItem_textAlignment" qtc_QListWidgetItem_textAlignment :: Ptr (TQListWidgetItem a) -> IO CInt

instance QtextColor (QListWidgetItem a) (()) where
 textColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_textColor cobj_x0

foreign import ccall "qtc_QListWidgetItem_textColor" qtc_QListWidgetItem_textColor :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQColor ()))

instance QtoolTip (QListWidgetItem a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_toolTip cobj_x0

foreign import ccall "qtc_QListWidgetItem_toolTip" qtc_QListWidgetItem_toolTip :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQString ()))

instance Qqtype (QListWidgetItem a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_type cobj_x0

foreign import ccall "qtc_QListWidgetItem_type" qtc_QListWidgetItem_type :: Ptr (TQListWidgetItem a) -> IO CInt

instance QwhatsThis (QListWidgetItem a) (()) where
 whatsThis x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_whatsThis cobj_x0

foreign import ccall "qtc_QListWidgetItem_whatsThis" qtc_QListWidgetItem_whatsThis :: Ptr (TQListWidgetItem a) -> IO (Ptr (TQString ()))

qListWidgetItem_delete :: QListWidgetItem a -> IO ()
qListWidgetItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_delete cobj_x0

foreign import ccall "qtc_QListWidgetItem_delete" qtc_QListWidgetItem_delete :: Ptr (TQListWidgetItem a) -> IO ()

qListWidgetItem_delete1 :: QListWidgetItem a -> IO ()
qListWidgetItem_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QListWidgetItem_delete1 cobj_x0

foreign import ccall "qtc_QListWidgetItem_delete1" qtc_QListWidgetItem_delete1 :: Ptr (TQListWidgetItem a) -> IO ()

