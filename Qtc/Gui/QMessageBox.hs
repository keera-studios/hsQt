{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QMessageBox.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:22
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QMessageBox (
  QqMessageBox(..)
  ,qMessageBoxAbout
  ,QqMessageBoxAboutQt(..)
  ,clickedButton
  ,QqMessageBoxCritical(..)
  ,defaultButton
  ,detailedText
  ,escapeButton
  ,QiconPixmap(..), QiconPixmap_nf(..)
  ,QqMessageBoxInformation(..)
  ,informativeText
  ,QqMessageBoxQuestion(..)
  ,setButtonText
  ,QsetDefaultButton(..)
  ,setDetailedText
  ,QsetEscapeButton(..)
  ,setIconPixmap
  ,setInformativeText
  ,qMessageBoxStandardIcon, qMessageBoxStandardIcon_nf
  ,QqMessageBoxWarning(..)
  ,qMessageBox_delete
  ,qMessageBox_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QMessageBox

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QMessageBox ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMessageBox_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QMessageBox_userMethod" qtc_QMessageBox_userMethod :: Ptr (TQMessageBox a) -> CInt -> IO ()

instance QuserMethod (QMessageBoxSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QMessageBox_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QMessageBox ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMessageBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QMessageBox_userMethodVariant" qtc_QMessageBox_userMethodVariant :: Ptr (TQMessageBox a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QMessageBoxSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QMessageBox_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqMessageBox x1 where
  qMessageBox :: x1 -> IO (QMessageBox ())

instance QqMessageBox (()) where
 qMessageBox ()
  = withQMessageBoxResult $
    qtc_QMessageBox

foreign import ccall "qtc_QMessageBox" qtc_QMessageBox :: IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((QWidget t1)) where
 qMessageBox (x1)
  = withQMessageBoxResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox1 cobj_x1

foreign import ccall "qtc_QMessageBox1" qtc_QMessageBox1 :: Ptr (TQWidget t1) -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((Icon, String, String)) where
 qMessageBox (x1, x2, x3)
  = withQMessageBoxResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox2 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox2" qtc_QMessageBox2 :: CLong -> CWString -> CWString -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((Icon, String, String, QMessageBoxStandardButtons)) where
 qMessageBox (x1, x2, x3, x4)
  = withQMessageBoxResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox3 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QMessageBox3" qtc_QMessageBox3 :: CLong -> CWString -> CWString -> CLong -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((Icon, String, String, QMessageBoxStandardButtons, QWidget t5)) where
 qMessageBox (x1, x2, x3, x4, x5)
  = withQMessageBoxResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QMessageBox4 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) cobj_x5

foreign import ccall "qtc_QMessageBox4" qtc_QMessageBox4 :: CLong -> CWString -> CWString -> CLong -> Ptr (TQWidget t5) -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((String, String, Icon, Int, Int, Int)) where
 qMessageBox (x1, x2, x3, x4, x5, x6)
  = withQMessageBoxResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMessageBox5 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3) (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QMessageBox5" qtc_QMessageBox5 :: CWString -> CWString -> CLong -> CInt -> CInt -> CInt -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((Icon, String, String, QMessageBoxStandardButtons, QWidget t5, WindowFlags)) where
 qMessageBox (x1, x2, x3, x4, x5, x6)
  = withQMessageBoxResult $
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QMessageBox6 (toCLong $ qEnum_toInt x1) cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) cobj_x5 (toCLong $ qFlags_toInt x6)

foreign import ccall "qtc_QMessageBox6" qtc_QMessageBox6 :: CLong -> CWString -> CWString -> CLong -> Ptr (TQWidget t5) -> CLong -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((String, String, Icon, Int, Int, Int, QWidget t7)) where
 qMessageBox (x1, x2, x3, x4, x5, x6, x7)
  = withQMessageBoxResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QMessageBox7 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3) (toCInt x4) (toCInt x5) (toCInt x6) cobj_x7

foreign import ccall "qtc_QMessageBox7" qtc_QMessageBox7 :: CWString -> CWString -> CLong -> CInt -> CInt -> CInt -> Ptr (TQWidget t7) -> IO (Ptr (TQMessageBox ()))

instance QqMessageBox ((String, String, Icon, Int, Int, Int, QWidget t7, WindowFlags)) where
 qMessageBox (x1, x2, x3, x4, x5, x6, x7, x8)
  = withQMessageBoxResult $
    withCWString x1 $ \cstr_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QMessageBox8 cstr_x1 cstr_x2 (toCLong $ qEnum_toInt x3) (toCInt x4) (toCInt x5) (toCInt x6) cobj_x7 (toCLong $ qFlags_toInt x8)

foreign import ccall "qtc_QMessageBox8" qtc_QMessageBox8 :: CWString -> CWString -> CLong -> CInt -> CInt -> CInt -> Ptr (TQWidget t7) -> CLong -> IO (Ptr (TQMessageBox ()))

qMessageBoxAbout :: ((QWidget t1, String, String)) -> IO ()
qMessageBoxAbout (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_about cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox_about" qtc_QMessageBox_about :: Ptr (TQWidget t1) -> CWString -> CWString -> IO ()

class QqMessageBoxAboutQt x1 where
 qMessageBoxAboutQt :: x1 -> IO ()

instance QqMessageBoxAboutQt ((QWidget t1)) where
 qMessageBoxAboutQt (x1)
  = withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_aboutQt cobj_x1

foreign import ccall "qtc_QMessageBox_aboutQt" qtc_QMessageBox_aboutQt :: Ptr (TQWidget t1) -> IO ()

instance QqMessageBoxAboutQt ((QWidget t1, String)) where
 qMessageBoxAboutQt (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMessageBox_aboutQt1 cobj_x1 cstr_x2

foreign import ccall "qtc_QMessageBox_aboutQt1" qtc_QMessageBox_aboutQt1 :: Ptr (TQWidget t1) -> CWString -> IO ()

instance QaddButton (QMessageBox a) ((QAbstractButton t1, QMessageBoxButtonRole)) (IO ()) where
 addButton x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_addButton2 cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMessageBox_addButton2" qtc_QMessageBox_addButton2 :: Ptr (TQMessageBox a) -> Ptr (TQAbstractButton t1) -> CLong -> IO ()

instance QaddButton (QMessageBox a) ((QMessageBoxStandardButton)) (IO (QPushButton ())) where
 addButton x0 (x1)
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_addButton cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_addButton" qtc_QMessageBox_addButton :: Ptr (TQMessageBox a) -> CLong -> IO (Ptr (TQPushButton ()))

instance QaddButton (QMessageBox a) ((String, QMessageBoxButtonRole)) (IO (QPushButton ())) where
 addButton x0 (x1, x2)
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_addButton1 cobj_x0 cstr_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QMessageBox_addButton1" qtc_QMessageBox_addButton1 :: Ptr (TQMessageBox a) -> CWString -> CLong -> IO (Ptr (TQPushButton ()))

instance Qbutton (QMessageBox a) ((QMessageBoxStandardButton)) (IO (QAbstractButton ())) where
 button x0 (x1)
  = withQAbstractButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_button cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_button" qtc_QMessageBox_button :: Ptr (TQMessageBox a) -> CLong -> IO (Ptr (TQAbstractButton ()))

instance QbuttonText (QMessageBox a) ((Int)) (IO (String)) where
 buttonText x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_buttonText cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMessageBox_buttonText" qtc_QMessageBox_buttonText :: Ptr (TQMessageBox a) -> CInt -> IO (Ptr (TQString ()))

instance QchangeEvent (QMessageBox ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_changeEvent_h" qtc_QMessageBox_changeEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QMessageBoxSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_changeEvent_h cobj_x0 cobj_x1

clickedButton :: QMessageBox a -> (()) -> IO (QAbstractButton ())
clickedButton x0 ()
  = withQAbstractButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_clickedButton cobj_x0

foreign import ccall "qtc_QMessageBox_clickedButton" qtc_QMessageBox_clickedButton :: Ptr (TQMessageBox a) -> IO (Ptr (TQAbstractButton ()))

instance QcloseEvent (QMessageBox ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_closeEvent_h" qtc_QMessageBox_closeEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QMessageBoxSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_closeEvent_h cobj_x0 cobj_x1

class QqMessageBoxCritical x1 xr where
 qMessageBoxCritical :: x1 -> xr

instance QqMessageBoxCritical ((QWidget t1, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical4 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QMessageBox_critical4" qtc_QMessageBox_critical4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, Int, Int, Int)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical8 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QMessageBox_critical8" qtc_QMessageBox_critical8 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> CInt -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, QMessageBoxStandardButton, QMessageBoxStandardButton)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical3 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_critical3" qtc_QMessageBox_critical3 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, String)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMessageBox_critical2 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QMessageBox_critical2" qtc_QMessageBox_critical2 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, String, String)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QMessageBox_critical5 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5

foreign import ccall "qtc_QMessageBox_critical5" qtc_QMessageBox_critical5 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, String, String, String)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_critical7 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6

foreign import ccall "qtc_QMessageBox_critical7" qtc_QMessageBox_critical7 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, String, String, String, Int)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5, x6, x7)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_critical9 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7)

foreign import ccall "qtc_QMessageBox_critical9" qtc_QMessageBox_critical9 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String, String, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5, x6, x7, x8)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_critical10 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7) (toCInt x8)

foreign import ccall "qtc_QMessageBox_critical10" qtc_QMessageBox_critical10 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxCritical ((QWidget t1, String, String)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxCritical (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox_critical" qtc_QMessageBox_critical :: Ptr (TQWidget t1) -> CWString -> CWString -> IO CLong

instance QqMessageBoxCritical ((QWidget t1, String, String, QMessageBoxStandardButtons)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxCritical (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical1 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QMessageBox_critical1" qtc_QMessageBox_critical1 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO CLong

instance QqMessageBoxCritical ((QWidget t1, String, String, QMessageBoxStandardButtons, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxCritical (x1, x2, x3, x4, x5)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_critical6 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_critical6" qtc_QMessageBox_critical6 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CLong

defaultButton :: QMessageBox a -> (()) -> IO (QPushButton ())
defaultButton x0 ()
  = withQPushButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_defaultButton cobj_x0

foreign import ccall "qtc_QMessageBox_defaultButton" qtc_QMessageBox_defaultButton :: Ptr (TQMessageBox a) -> IO (Ptr (TQPushButton ()))

detailedText :: QMessageBox a -> (()) -> IO (String)
detailedText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_detailedText cobj_x0

foreign import ccall "qtc_QMessageBox_detailedText" qtc_QMessageBox_detailedText :: Ptr (TQMessageBox a) -> IO (Ptr (TQString ()))

escapeButton :: QMessageBox a -> (()) -> IO (QAbstractButton ())
escapeButton x0 ()
  = withQAbstractButtonResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_escapeButton cobj_x0

foreign import ccall "qtc_QMessageBox_escapeButton" qtc_QMessageBox_escapeButton :: Ptr (TQMessageBox a) -> IO (Ptr (TQAbstractButton ()))

instance Qevent (QMessageBox ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_event_h" qtc_QMessageBox_event_h :: Ptr (TQMessageBox a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QMessageBoxSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_event_h cobj_x0 cobj_x1

instance Qicon (QMessageBox a) (()) (IO (Icon)) where
 icon x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_icon cobj_x0

foreign import ccall "qtc_QMessageBox_icon" qtc_QMessageBox_icon :: Ptr (TQMessageBox a) -> IO CLong

class QiconPixmap x0 x1 where
 iconPixmap :: x0 -> x1 -> IO (QPixmap ())

class QiconPixmap_nf x0 x1 where
 iconPixmap_nf :: x0 -> x1 -> IO (QPixmap ())

instance QiconPixmap (QMessageBox ()) (()) where
 iconPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_iconPixmap cobj_x0

foreign import ccall "qtc_QMessageBox_iconPixmap" qtc_QMessageBox_iconPixmap :: Ptr (TQMessageBox a) -> IO (Ptr (TQPixmap ()))

instance QiconPixmap (QMessageBoxSc a) (()) where
 iconPixmap x0 ()
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_iconPixmap cobj_x0

instance QiconPixmap_nf (QMessageBox ()) (()) where
 iconPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_iconPixmap cobj_x0

instance QiconPixmap_nf (QMessageBoxSc a) (()) where
 iconPixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_iconPixmap cobj_x0

class QqMessageBoxInformation x1 xr where
 qMessageBoxInformation :: x1 -> xr

instance QqMessageBoxInformation ((QWidget t1, String, String, Int)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information2 cobj_x1 cstr_x2 cstr_x3 (toCInt x4)

foreign import ccall "qtc_QMessageBox_information2" qtc_QMessageBox_information2 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information8 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QMessageBox_information8" qtc_QMessageBox_information8 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, Int, Int, Int)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information10 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QMessageBox_information10" qtc_QMessageBox_information10 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> CInt -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, String)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMessageBox_information4 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QMessageBox_information4" qtc_QMessageBox_information4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, String, String)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QMessageBox_information5 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5

foreign import ccall "qtc_QMessageBox_information5" qtc_QMessageBox_information5 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, String, String, String)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_information9 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6

foreign import ccall "qtc_QMessageBox_information9" qtc_QMessageBox_information9 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, String, String, String, Int)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5, x6, x7)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_information11 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7)

foreign import ccall "qtc_QMessageBox_information11" qtc_QMessageBox_information11 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String, String, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5, x6, x7, x8)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_information12 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7) (toCInt x8)

foreign import ccall "qtc_QMessageBox_information12" qtc_QMessageBox_information12 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxInformation ((QWidget t1, String, String)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxInformation (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox_information" qtc_QMessageBox_information :: Ptr (TQWidget t1) -> CWString -> CWString -> IO CLong

instance QqMessageBoxInformation ((QWidget t1, String, String, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxInformation (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information3 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QMessageBox_information3" qtc_QMessageBox_information3 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO CLong

instance QqMessageBoxInformation ((QWidget t1, String, String, QMessageBoxStandardButton, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information6 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_information6" qtc_QMessageBox_information6 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CLong

instance QqMessageBoxInformation ((QWidget t1, String, String, QMessageBoxStandardButtons)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxInformation (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information1 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QMessageBox_information1" qtc_QMessageBox_information1 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO CLong

instance QqMessageBoxInformation ((QWidget t1, String, String, QMessageBoxStandardButtons, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxInformation (x1, x2, x3, x4, x5)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_information7 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_information7" qtc_QMessageBox_information7 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CLong

informativeText :: QMessageBox a -> (()) -> IO (String)
informativeText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_informativeText cobj_x0

foreign import ccall "qtc_QMessageBox_informativeText" qtc_QMessageBox_informativeText :: Ptr (TQMessageBox a) -> IO (Ptr (TQString ()))

instance QkeyPressEvent (QMessageBox ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_keyPressEvent_h" qtc_QMessageBox_keyPressEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QMessageBoxSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_keyPressEvent_h cobj_x0 cobj_x1

class QqMessageBoxQuestion x1 xr where
 qMessageBoxQuestion :: x1 -> xr

instance QqMessageBoxQuestion ((QWidget t1, String, String, Int)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question2 cobj_x1 cstr_x2 cstr_x3 (toCInt x4)

foreign import ccall "qtc_QMessageBox_question2" qtc_QMessageBox_question2 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question6 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QMessageBox_question6" qtc_QMessageBox_question6 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, Int, Int, Int)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question8 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QMessageBox_question8" qtc_QMessageBox_question8 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> CInt -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, QMessageBoxStandardButton, QMessageBoxStandardButton)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question5 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_question5" qtc_QMessageBox_question5 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, String)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMessageBox_question1 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QMessageBox_question1" qtc_QMessageBox_question1 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, String, String)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QMessageBox_question4 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5

foreign import ccall "qtc_QMessageBox_question4" qtc_QMessageBox_question4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, String, String, String)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_question9 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6

foreign import ccall "qtc_QMessageBox_question9" qtc_QMessageBox_question9 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, String, String, String, Int)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5, x6, x7)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_question10 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7)

foreign import ccall "qtc_QMessageBox_question10" qtc_QMessageBox_question10 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String, String, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5, x6, x7, x8)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_question11 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7) (toCInt x8)

foreign import ccall "qtc_QMessageBox_question11" qtc_QMessageBox_question11 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxQuestion ((QWidget t1, String, String)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxQuestion (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox_question" qtc_QMessageBox_question :: Ptr (TQWidget t1) -> CWString -> CWString -> IO CLong

instance QqMessageBoxQuestion ((QWidget t1, String, String, QMessageBoxStandardButtons)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxQuestion (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question3 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QMessageBox_question3" qtc_QMessageBox_question3 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO CLong

instance QqMessageBoxQuestion ((QWidget t1, String, String, QMessageBoxStandardButtons, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxQuestion (x1, x2, x3, x4, x5)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_question7 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_question7" qtc_QMessageBox_question7 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CLong

instance QremoveButton (QMessageBox a) ((QAbstractButton t1)) where
 removeButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_removeButton cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_removeButton" qtc_QMessageBox_removeButton :: Ptr (TQMessageBox a) -> Ptr (TQAbstractButton t1) -> IO ()

instance QresizeEvent (QMessageBox ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_resizeEvent_h" qtc_QMessageBox_resizeEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QMessageBoxSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_resizeEvent_h cobj_x0 cobj_x1

setButtonText :: QMessageBox a -> ((Int, String)) -> IO ()
setButtonText x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QMessageBox_setButtonText cobj_x0 (toCInt x1) cstr_x2

foreign import ccall "qtc_QMessageBox_setButtonText" qtc_QMessageBox_setButtonText :: Ptr (TQMessageBox a) -> CInt -> CWString -> IO ()

class QsetDefaultButton x1 where
 setDefaultButton :: QMessageBox a -> x1 -> IO ()

instance QsetDefaultButton ((QMessageBoxStandardButton)) where
 setDefaultButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setDefaultButton cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_setDefaultButton" qtc_QMessageBox_setDefaultButton :: Ptr (TQMessageBox a) -> CLong -> IO ()

instance QsetDefaultButton ((QPushButton t1)) where
 setDefaultButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_setDefaultButton1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_setDefaultButton1" qtc_QMessageBox_setDefaultButton1 :: Ptr (TQMessageBox a) -> Ptr (TQPushButton t1) -> IO ()

setDetailedText :: QMessageBox a -> ((String)) -> IO ()
setDetailedText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_setDetailedText cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_setDetailedText" qtc_QMessageBox_setDetailedText :: Ptr (TQMessageBox a) -> CWString -> IO ()

class QsetEscapeButton x1 where
 setEscapeButton :: QMessageBox a -> x1 -> IO ()

instance QsetEscapeButton ((QAbstractButton t1)) where
 setEscapeButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_setEscapeButton1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_setEscapeButton1" qtc_QMessageBox_setEscapeButton1 :: Ptr (TQMessageBox a) -> Ptr (TQAbstractButton t1) -> IO ()

instance QsetEscapeButton ((QMessageBoxStandardButton)) where
 setEscapeButton x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setEscapeButton cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_setEscapeButton" qtc_QMessageBox_setEscapeButton :: Ptr (TQMessageBox a) -> CLong -> IO ()

instance QsetIcon (QMessageBox a) ((Icon)) where
 setIcon x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setIcon cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_setIcon" qtc_QMessageBox_setIcon :: Ptr (TQMessageBox a) -> CLong -> IO ()

setIconPixmap :: QMessageBox a -> ((QPixmap t1)) -> IO ()
setIconPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_setIconPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_setIconPixmap" qtc_QMessageBox_setIconPixmap :: Ptr (TQMessageBox a) -> Ptr (TQPixmap t1) -> IO ()

setInformativeText :: QMessageBox a -> ((String)) -> IO ()
setInformativeText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_setInformativeText cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_setInformativeText" qtc_QMessageBox_setInformativeText :: Ptr (TQMessageBox a) -> CWString -> IO ()

instance QsetStandardButtons (QMessageBox a) ((QMessageBoxStandardButtons)) where
 setStandardButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setStandardButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QMessageBox_setStandardButtons" qtc_QMessageBox_setStandardButtons :: Ptr (TQMessageBox a) -> CLong -> IO ()

instance QsetText (QMessageBox a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_setText" qtc_QMessageBox_setText :: Ptr (TQMessageBox a) -> CWString -> IO ()

instance QsetTextFormat (QMessageBox a) ((TextFormat)) where
 setTextFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setTextFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_setTextFormat" qtc_QMessageBox_setTextFormat :: Ptr (TQMessageBox a) -> CLong -> IO ()

instance QsetWindowModality (QMessageBox a) ((WindowModality)) where
 setWindowModality x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setWindowModality cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_setWindowModality" qtc_QMessageBox_setWindowModality :: Ptr (TQMessageBox a) -> CLong -> IO ()

instance QsetWindowTitle (QMessageBox a) ((String)) where
 setWindowTitle x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_setWindowTitle cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_setWindowTitle" qtc_QMessageBox_setWindowTitle :: Ptr (TQMessageBox a) -> CWString -> IO ()

instance QshowEvent (QMessageBox ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_showEvent_h" qtc_QMessageBox_showEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QMessageBoxSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_showEvent_h cobj_x0 cobj_x1

instance QqsizeHint (QMessageBox ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sizeHint_h cobj_x0

foreign import ccall "qtc_QMessageBox_sizeHint_h" qtc_QMessageBox_sizeHint_h :: Ptr (TQMessageBox a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QMessageBoxSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sizeHint_h cobj_x0

instance QsizeHint (QMessageBox ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMessageBox_sizeHint_qth_h" qtc_QMessageBox_sizeHint_qth_h :: Ptr (TQMessageBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QMessageBoxSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QstandardButton (QMessageBox a) ((QAbstractButton t1)) (IO (QMessageBoxStandardButton)) where
 standardButton x0 (x1)
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_standardButton cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_standardButton" qtc_QMessageBox_standardButton :: Ptr (TQMessageBox a) -> Ptr (TQAbstractButton t1) -> IO CLong

instance QstandardButtons (QMessageBox a) (()) (IO (QMessageBoxStandardButtons)) where
 standardButtons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_standardButtons cobj_x0

foreign import ccall "qtc_QMessageBox_standardButtons" qtc_QMessageBox_standardButtons :: Ptr (TQMessageBox a) -> IO CLong

qMessageBoxStandardIcon :: ((Icon)) -> IO (QPixmap ())
qMessageBoxStandardIcon (x1)
  = withQPixmapResult $
    qtc_QMessageBox_standardIcon (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_standardIcon" qtc_QMessageBox_standardIcon :: CLong -> IO (Ptr (TQPixmap ()))

qMessageBoxStandardIcon_nf :: ((Icon)) -> IO (QPixmap ())
qMessageBoxStandardIcon_nf (x1)
  = withObjectRefResult $
    qtc_QMessageBox_standardIcon (toCLong $ qEnum_toInt x1)

instance Qtext (QMessageBox a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_text cobj_x0

foreign import ccall "qtc_QMessageBox_text" qtc_QMessageBox_text :: Ptr (TQMessageBox a) -> IO (Ptr (TQString ()))

instance QtextFormat (QMessageBox a) (()) where
 textFormat x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_textFormat cobj_x0

foreign import ccall "qtc_QMessageBox_textFormat" qtc_QMessageBox_textFormat :: Ptr (TQMessageBox a) -> IO CLong

class QqMessageBoxWarning x1 xr where
 qMessageBoxWarning :: x1 -> xr

instance QqMessageBoxWarning ((QWidget t1, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning4 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5)

foreign import ccall "qtc_QMessageBox_warning4" qtc_QMessageBox_warning4 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, Int, Int, Int)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning8 cobj_x1 cstr_x2 cstr_x3 (toCInt x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QMessageBox_warning8" qtc_QMessageBox_warning8 :: Ptr (TQWidget t1) -> CWString -> CWString -> CInt -> CInt -> CInt -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, QMessageBoxStandardButton, QMessageBoxStandardButton)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning3 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qEnum_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_warning3" qtc_QMessageBox_warning3 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, String)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QMessageBox_warning2 cobj_x1 cstr_x2 cstr_x3 cstr_x4

foreign import ccall "qtc_QMessageBox_warning2" qtc_QMessageBox_warning2 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, String, String)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    qtc_QMessageBox_warning5 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5

foreign import ccall "qtc_QMessageBox_warning5" qtc_QMessageBox_warning5 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, String, String, String)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5, x6)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_warning7 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6

foreign import ccall "qtc_QMessageBox_warning7" qtc_QMessageBox_warning7 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, String, String, String, Int)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5, x6, x7)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_warning9 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7)

foreign import ccall "qtc_QMessageBox_warning9" qtc_QMessageBox_warning9 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String, String, String, String, Int, Int)) (IO (Int)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5, x6, x7, x8)
  = withIntResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    withCWString x4 $ \cstr_x4 ->
    withCWString x5 $ \cstr_x5 ->
    withCWString x6 $ \cstr_x6 ->
    qtc_QMessageBox_warning10 cobj_x1 cstr_x2 cstr_x3 cstr_x4 cstr_x5 cstr_x6 (toCInt x7) (toCInt x8)

foreign import ccall "qtc_QMessageBox_warning10" qtc_QMessageBox_warning10 :: Ptr (TQWidget t1) -> CWString -> CWString -> CWString -> CWString -> CWString -> CInt -> CInt -> IO CInt

instance QqMessageBoxWarning ((QWidget t1, String, String)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxWarning (x1, x2, x3)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning cobj_x1 cstr_x2 cstr_x3

foreign import ccall "qtc_QMessageBox_warning" qtc_QMessageBox_warning :: Ptr (TQWidget t1) -> CWString -> CWString -> IO CLong

instance QqMessageBoxWarning ((QWidget t1, String, String, QMessageBoxStandardButtons)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxWarning (x1, x2, x3, x4)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning1 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4)

foreign import ccall "qtc_QMessageBox_warning1" qtc_QMessageBox_warning1 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> IO CLong

instance QqMessageBoxWarning ((QWidget t1, String, String, QMessageBoxStandardButtons, QMessageBoxStandardButton)) (IO (QMessageBoxStandardButton)) where
 qMessageBoxWarning (x1, x2, x3, x4, x5)
  = withQEnumResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withCWString x3 $ \cstr_x3 ->
    qtc_QMessageBox_warning6 cobj_x1 cstr_x2 cstr_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qEnum_toInt x5)

foreign import ccall "qtc_QMessageBox_warning6" qtc_QMessageBox_warning6 :: Ptr (TQWidget t1) -> CWString -> CWString -> CLong -> CLong -> IO CLong

qMessageBox_delete :: QMessageBox a -> IO ()
qMessageBox_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_delete cobj_x0

foreign import ccall "qtc_QMessageBox_delete" qtc_QMessageBox_delete :: Ptr (TQMessageBox a) -> IO ()

qMessageBox_deleteLater :: QMessageBox a -> IO ()
qMessageBox_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_deleteLater cobj_x0

foreign import ccall "qtc_QMessageBox_deleteLater" qtc_QMessageBox_deleteLater :: Ptr (TQMessageBox a) -> IO ()

instance Qaccept (QMessageBox ()) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_accept_h cobj_x0

foreign import ccall "qtc_QMessageBox_accept_h" qtc_QMessageBox_accept_h :: Ptr (TQMessageBox a) -> IO ()

instance Qaccept (QMessageBoxSc a) (()) where
 accept x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_accept_h cobj_x0

instance QadjustPosition (QMessageBox ()) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_adjustPosition cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_adjustPosition" qtc_QMessageBox_adjustPosition :: Ptr (TQMessageBox a) -> Ptr (TQWidget t1) -> IO ()

instance QadjustPosition (QMessageBoxSc a) ((QWidget t1)) where
 adjustPosition x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_adjustPosition cobj_x0 cobj_x1

instance QcontextMenuEvent (QMessageBox ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_contextMenuEvent_h" qtc_QMessageBox_contextMenuEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QMessageBoxSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_contextMenuEvent_h cobj_x0 cobj_x1

instance Qdone (QMessageBox ()) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_done_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMessageBox_done_h" qtc_QMessageBox_done_h :: Ptr (TQMessageBox a) -> CInt -> IO ()

instance Qdone (QMessageBoxSc a) ((Int)) where
 done x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_done_h cobj_x0 (toCInt x1)

instance QeventFilter (QMessageBox ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMessageBox_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QMessageBox_eventFilter" qtc_QMessageBox_eventFilter :: Ptr (TQMessageBox a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QMessageBoxSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QMessageBox_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QqminimumSizeHint (QMessageBox ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QMessageBox_minimumSizeHint_h" qtc_QMessageBox_minimumSizeHint_h :: Ptr (TQMessageBox a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QMessageBoxSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QMessageBox ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QMessageBox_minimumSizeHint_qth_h" qtc_QMessageBox_minimumSizeHint_qth_h :: Ptr (TQMessageBox a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QMessageBoxSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qreject (QMessageBox ()) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_reject_h cobj_x0

foreign import ccall "qtc_QMessageBox_reject_h" qtc_QMessageBox_reject_h :: Ptr (TQMessageBox a) -> IO ()

instance Qreject (QMessageBoxSc a) (()) where
 reject x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_reject_h cobj_x0

instance QsetVisible (QMessageBox ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_setVisible_h" qtc_QMessageBox_setVisible_h :: Ptr (TQMessageBox a) -> CBool -> IO ()

instance QsetVisible (QMessageBoxSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setVisible_h cobj_x0 (toCBool x1)

instance QactionEvent (QMessageBox ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_actionEvent_h" qtc_QMessageBox_actionEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QMessageBoxSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QMessageBox ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_addAction" qtc_QMessageBox_addAction :: Ptr (TQMessageBox a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QMessageBoxSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_addAction cobj_x0 cobj_x1

instance Qcreate (QMessageBox ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_create cobj_x0

foreign import ccall "qtc_QMessageBox_create" qtc_QMessageBox_create :: Ptr (TQMessageBox a) -> IO ()

instance Qcreate (QMessageBoxSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_create cobj_x0

instance Qcreate (QMessageBox ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_create1" qtc_QMessageBox_create1 :: Ptr (TQMessageBox a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QMessageBoxSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create1 cobj_x0 cobj_x1

instance Qcreate (QMessageBox ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QMessageBox_create2" qtc_QMessageBox_create2 :: Ptr (TQMessageBox a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QMessageBoxSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QMessageBox ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QMessageBox_create3" qtc_QMessageBox_create3 :: Ptr (TQMessageBox a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QMessageBoxSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QMessageBox ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy cobj_x0

foreign import ccall "qtc_QMessageBox_destroy" qtc_QMessageBox_destroy :: Ptr (TQMessageBox a) -> IO ()

instance Qdestroy (QMessageBoxSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy cobj_x0

instance Qdestroy (QMessageBox ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_destroy1" qtc_QMessageBox_destroy1 :: Ptr (TQMessageBox a) -> CBool -> IO ()

instance Qdestroy (QMessageBoxSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QMessageBox ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QMessageBox_destroy2" qtc_QMessageBox_destroy2 :: Ptr (TQMessageBox a) -> CBool -> CBool -> IO ()

instance Qdestroy (QMessageBoxSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QMessageBox ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_devType_h cobj_x0

foreign import ccall "qtc_QMessageBox_devType_h" qtc_QMessageBox_devType_h :: Ptr (TQMessageBox a) -> IO CInt

instance QdevType (QMessageBoxSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_devType_h cobj_x0

instance QdragEnterEvent (QMessageBox ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_dragEnterEvent_h" qtc_QMessageBox_dragEnterEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QMessageBoxSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QMessageBox ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_dragLeaveEvent_h" qtc_QMessageBox_dragLeaveEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QMessageBoxSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QMessageBox ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_dragMoveEvent_h" qtc_QMessageBox_dragMoveEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QMessageBoxSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QMessageBox ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_dropEvent_h" qtc_QMessageBox_dropEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QMessageBoxSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QMessageBox ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_enabledChange" qtc_QMessageBox_enabledChange :: Ptr (TQMessageBox a) -> CBool -> IO ()

instance QenabledChange (QMessageBoxSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QMessageBox ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_enterEvent_h" qtc_QMessageBox_enterEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QMessageBoxSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_enterEvent_h cobj_x0 cobj_x1

instance QfocusInEvent (QMessageBox ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_focusInEvent_h" qtc_QMessageBox_focusInEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QMessageBoxSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QMessageBox ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusNextChild cobj_x0

foreign import ccall "qtc_QMessageBox_focusNextChild" qtc_QMessageBox_focusNextChild :: Ptr (TQMessageBox a) -> IO CBool

instance QfocusNextChild (QMessageBoxSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusNextChild cobj_x0

instance QfocusNextPrevChild (QMessageBox ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_focusNextPrevChild" qtc_QMessageBox_focusNextPrevChild :: Ptr (TQMessageBox a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QMessageBoxSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QMessageBox ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_focusOutEvent_h" qtc_QMessageBox_focusOutEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QMessageBoxSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_focusOutEvent_h cobj_x0 cobj_x1

instance QfocusPreviousChild (QMessageBox ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusPreviousChild cobj_x0

foreign import ccall "qtc_QMessageBox_focusPreviousChild" qtc_QMessageBox_focusPreviousChild :: Ptr (TQMessageBox a) -> IO CBool

instance QfocusPreviousChild (QMessageBoxSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_focusPreviousChild cobj_x0

instance QfontChange (QMessageBox ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_fontChange" qtc_QMessageBox_fontChange :: Ptr (TQMessageBox a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QMessageBoxSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_fontChange cobj_x0 cobj_x1

instance QheightForWidth (QMessageBox ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QMessageBox_heightForWidth_h" qtc_QMessageBox_heightForWidth_h :: Ptr (TQMessageBox a) -> CInt -> IO CInt

instance QheightForWidth (QMessageBoxSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_heightForWidth_h cobj_x0 (toCInt x1)

instance QhideEvent (QMessageBox ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_hideEvent_h" qtc_QMessageBox_hideEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QMessageBoxSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QMessageBox ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_inputMethodEvent" qtc_QMessageBox_inputMethodEvent :: Ptr (TQMessageBox a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QMessageBoxSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QMessageBox ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_inputMethodQuery_h" qtc_QMessageBox_inputMethodQuery_h :: Ptr (TQMessageBox a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QMessageBoxSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QMessageBox ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_keyReleaseEvent_h" qtc_QMessageBox_keyReleaseEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QMessageBoxSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QMessageBox ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_languageChange cobj_x0

foreign import ccall "qtc_QMessageBox_languageChange" qtc_QMessageBox_languageChange :: Ptr (TQMessageBox a) -> IO ()

instance QlanguageChange (QMessageBoxSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_languageChange cobj_x0

instance QleaveEvent (QMessageBox ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_leaveEvent_h" qtc_QMessageBox_leaveEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QMessageBoxSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QMessageBox ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QMessageBox_metric" qtc_QMessageBox_metric :: Ptr (TQMessageBox a) -> CLong -> IO CInt

instance Qmetric (QMessageBoxSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QMessageBox ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_mouseDoubleClickEvent_h" qtc_QMessageBox_mouseDoubleClickEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QMessageBoxSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QMessageBox ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_mouseMoveEvent_h" qtc_QMessageBox_mouseMoveEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QMessageBoxSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QMessageBox ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_mousePressEvent_h" qtc_QMessageBox_mousePressEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QMessageBoxSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QMessageBox ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_mouseReleaseEvent_h" qtc_QMessageBox_mouseReleaseEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QMessageBoxSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_mouseReleaseEvent_h cobj_x0 cobj_x1

instance Qmove (QMessageBox ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMessageBox_move1" qtc_QMessageBox_move1 :: Ptr (TQMessageBox a) -> CInt -> CInt -> IO ()

instance Qmove (QMessageBoxSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QMessageBox ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMessageBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QMessageBox_move_qth" qtc_QMessageBox_move_qth :: Ptr (TQMessageBox a) -> CInt -> CInt -> IO ()

instance Qmove (QMessageBoxSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QMessageBox_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QMessageBox ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_move cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_move" qtc_QMessageBox_move :: Ptr (TQMessageBox a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QMessageBoxSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_move cobj_x0 cobj_x1

instance QmoveEvent (QMessageBox ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_moveEvent_h" qtc_QMessageBox_moveEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QMessageBoxSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QMessageBox ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_paintEngine_h cobj_x0

foreign import ccall "qtc_QMessageBox_paintEngine_h" qtc_QMessageBox_paintEngine_h :: Ptr (TQMessageBox a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QMessageBoxSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_paintEngine_h cobj_x0

instance QpaintEvent (QMessageBox ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_paintEvent_h" qtc_QMessageBox_paintEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QMessageBoxSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_paintEvent_h cobj_x0 cobj_x1

instance QpaletteChange (QMessageBox ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_paletteChange" qtc_QMessageBox_paletteChange :: Ptr (TQMessageBox a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QMessageBoxSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QMessageBox ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_repaint cobj_x0

foreign import ccall "qtc_QMessageBox_repaint" qtc_QMessageBox_repaint :: Ptr (TQMessageBox a) -> IO ()

instance Qrepaint (QMessageBoxSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_repaint cobj_x0

instance Qrepaint (QMessageBox ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMessageBox_repaint2" qtc_QMessageBox_repaint2 :: Ptr (TQMessageBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QMessageBoxSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QMessageBox ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_repaint1" qtc_QMessageBox_repaint1 :: Ptr (TQMessageBox a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QMessageBoxSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QMessageBox ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_resetInputContext cobj_x0

foreign import ccall "qtc_QMessageBox_resetInputContext" qtc_QMessageBox_resetInputContext :: Ptr (TQMessageBox a) -> IO ()

instance QresetInputContext (QMessageBoxSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_resetInputContext cobj_x0

instance Qresize (QMessageBox ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QMessageBox_resize1" qtc_QMessageBox_resize1 :: Ptr (TQMessageBox a) -> CInt -> CInt -> IO ()

instance Qresize (QMessageBoxSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QMessageBox ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_resize" qtc_QMessageBox_resize :: Ptr (TQMessageBox a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QMessageBoxSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_resize cobj_x0 cobj_x1

instance Qresize (QMessageBox ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMessageBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QMessageBox_resize_qth" qtc_QMessageBox_resize_qth :: Ptr (TQMessageBox a) -> CInt -> CInt -> IO ()

instance Qresize (QMessageBoxSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QMessageBox_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QsetGeometry (QMessageBox ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QMessageBox_setGeometry1" qtc_QMessageBox_setGeometry1 :: Ptr (TQMessageBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMessageBoxSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QMessageBox ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_setGeometry" qtc_QMessageBox_setGeometry :: Ptr (TQMessageBox a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QMessageBoxSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QMessageBox ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMessageBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QMessageBox_setGeometry_qth" qtc_QMessageBox_setGeometry_qth :: Ptr (TQMessageBox a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QMessageBoxSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QMessageBox_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QMessageBox ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_setMouseTracking" qtc_QMessageBox_setMouseTracking :: Ptr (TQMessageBox a) -> CBool -> IO ()

instance QsetMouseTracking (QMessageBoxSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_setMouseTracking cobj_x0 (toCBool x1)

instance QtabletEvent (QMessageBox ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_tabletEvent_h" qtc_QMessageBox_tabletEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QMessageBoxSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QMessageBox ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_updateMicroFocus cobj_x0

foreign import ccall "qtc_QMessageBox_updateMicroFocus" qtc_QMessageBox_updateMicroFocus :: Ptr (TQMessageBox a) -> IO ()

instance QupdateMicroFocus (QMessageBoxSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_updateMicroFocus cobj_x0

instance QwheelEvent (QMessageBox ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_wheelEvent_h" qtc_QMessageBox_wheelEvent_h :: Ptr (TQMessageBox a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QMessageBoxSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QMessageBox ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QMessageBox_windowActivationChange" qtc_QMessageBox_windowActivationChange :: Ptr (TQMessageBox a) -> CBool -> IO ()

instance QwindowActivationChange (QMessageBoxSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QMessageBox ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_childEvent" qtc_QMessageBox_childEvent :: Ptr (TQMessageBox a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QMessageBoxSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QMessageBox ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_connectNotify" qtc_QMessageBox_connectNotify :: Ptr (TQMessageBox a) -> CWString -> IO ()

instance QconnectNotify (QMessageBoxSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QMessageBox ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_customEvent" qtc_QMessageBox_customEvent :: Ptr (TQMessageBox a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QMessageBoxSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QMessageBox ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_disconnectNotify" qtc_QMessageBox_disconnectNotify :: Ptr (TQMessageBox a) -> CWString -> IO ()

instance QdisconnectNotify (QMessageBoxSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_disconnectNotify cobj_x0 cstr_x1

instance Qreceivers (QMessageBox ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QMessageBox_receivers" qtc_QMessageBox_receivers :: Ptr (TQMessageBox a) -> CWString -> IO CInt

instance Qreceivers (QMessageBoxSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QMessageBox_receivers cobj_x0 cstr_x1

instance Qsender (QMessageBox ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sender cobj_x0

foreign import ccall "qtc_QMessageBox_sender" qtc_QMessageBox_sender :: Ptr (TQMessageBox a) -> IO (Ptr (TQObject ()))

instance Qsender (QMessageBoxSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QMessageBox_sender cobj_x0

instance QtimerEvent (QMessageBox ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QMessageBox_timerEvent" qtc_QMessageBox_timerEvent :: Ptr (TQMessageBox a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QMessageBoxSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QMessageBox_timerEvent cobj_x0 cobj_x1

