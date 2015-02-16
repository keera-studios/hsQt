{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QLabel.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:26
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QLabel (
  QqLabel(..)
  ,hasScaledContents
  ,movie
  ,picture
  ,setBuddy
  ,setMovie
  ,QsetNum(..)
  ,setPicture
  ,setScaledContents
  ,qLabel_delete
  ,qLabel_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QLabel ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLabel_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QLabel_userMethod" qtc_QLabel_userMethod :: Ptr (TQLabel a) -> CInt -> IO ()

instance QuserMethod (QLabelSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QLabel_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QLabel ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLabel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QLabel_userMethodVariant" qtc_QLabel_userMethodVariant :: Ptr (TQLabel a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QLabelSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QLabel_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqLabel x1 where
  qLabel :: x1 -> IO (QLabel ())

instance QqLabel (()) where
 qLabel ()
  = withQLabelResult $
    qtc_QLabel

foreign import ccall "qtc_QLabel" qtc_QLabel :: IO (Ptr (TQLabel ()))

instance QqLabel ((QWidget t1)) where
 qLabel (x1)
  = withQLabelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel1 cobj_x1

foreign import ccall "qtc_QLabel1" qtc_QLabel1 :: Ptr (TQWidget t1) -> IO (Ptr (TQLabel ()))

instance QqLabel ((String)) where
 qLabel (x1)
  = withQLabelResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel2 cstr_x1

foreign import ccall "qtc_QLabel2" qtc_QLabel2 :: CWString -> IO (Ptr (TQLabel ()))

instance QqLabel ((QWidget t1, WindowFlags)) where
 qLabel (x1, x2)
  = withQLabelResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel3 cobj_x1 (toCLong $ qFlags_toInt x2)

foreign import ccall "qtc_QLabel3" qtc_QLabel3 :: Ptr (TQWidget t1) -> CLong -> IO (Ptr (TQLabel ()))

instance QqLabel ((String, QWidget t2)) where
 qLabel (x1, x2)
  = withQLabelResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLabel4 cstr_x1 cobj_x2

foreign import ccall "qtc_QLabel4" qtc_QLabel4 :: CWString -> Ptr (TQWidget t2) -> IO (Ptr (TQLabel ()))

instance QqLabel ((String, QWidget t2, WindowFlags)) where
 qLabel (x1, x2, x3)
  = withQLabelResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLabel5 cstr_x1 cobj_x2 (toCLong $ qFlags_toInt x3)

foreign import ccall "qtc_QLabel5" qtc_QLabel5 :: CWString -> Ptr (TQWidget t2) -> CLong -> IO (Ptr (TQLabel ()))

instance Qalignment (QLabel a) (()) where
 alignment x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_alignment cobj_x0

foreign import ccall "qtc_QLabel_alignment" qtc_QLabel_alignment :: Ptr (TQLabel a) -> IO CLong

instance Qbuddy (QLabel a) (()) (IO (QWidget ())) where
 buddy x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_buddy cobj_x0

foreign import ccall "qtc_QLabel_buddy" qtc_QLabel_buddy :: Ptr (TQLabel a) -> IO (Ptr (TQWidget ()))

instance QchangeEvent (QLabel ()) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_changeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_changeEvent_h" qtc_QLabel_changeEvent_h :: Ptr (TQLabel a) -> Ptr (TQEvent t1) -> IO ()

instance QchangeEvent (QLabelSc a) ((QEvent t1)) where
 changeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_changeEvent_h cobj_x0 cobj_x1

instance Qclear (QLabel a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_clear cobj_x0

foreign import ccall "qtc_QLabel_clear" qtc_QLabel_clear :: Ptr (TQLabel a) -> IO ()

instance QcontextMenuEvent (QLabel ()) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_contextMenuEvent_h" qtc_QLabel_contextMenuEvent_h :: Ptr (TQLabel a) -> Ptr (TQContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QLabelSc a) ((QContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_contextMenuEvent_h cobj_x0 cobj_x1

instance Qevent (QLabel ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_event_h" qtc_QLabel_event_h :: Ptr (TQLabel a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QLabelSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_event_h cobj_x0 cobj_x1

instance QfocusInEvent (QLabel ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_focusInEvent_h" qtc_QLabel_focusInEvent_h :: Ptr (TQLabel a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QLabelSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_focusInEvent_h cobj_x0 cobj_x1

instance QfocusNextPrevChild (QLabel ()) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusNextPrevChild cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_focusNextPrevChild" qtc_QLabel_focusNextPrevChild :: Ptr (TQLabel a) -> CBool -> IO CBool

instance QfocusNextPrevChild (QLabelSc a) ((Bool)) where
 focusNextPrevChild x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusNextPrevChild cobj_x0 (toCBool x1)

instance QfocusOutEvent (QLabel ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_focusOutEvent_h" qtc_QLabel_focusOutEvent_h :: Ptr (TQLabel a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QLabelSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_focusOutEvent_h cobj_x0 cobj_x1

hasScaledContents :: QLabel a -> (()) -> IO (Bool)
hasScaledContents x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_hasScaledContents cobj_x0

foreign import ccall "qtc_QLabel_hasScaledContents" qtc_QLabel_hasScaledContents :: Ptr (TQLabel a) -> IO CBool

instance QheightForWidth (QLabel ()) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_heightForWidth_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLabel_heightForWidth_h" qtc_QLabel_heightForWidth_h :: Ptr (TQLabel a) -> CInt -> IO CInt

instance QheightForWidth (QLabelSc a) ((Int)) where
 heightForWidth x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_heightForWidth_h cobj_x0 (toCInt x1)

instance Qindent (QLabel a) (()) where
 indent x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_indent cobj_x0

foreign import ccall "qtc_QLabel_indent" qtc_QLabel_indent :: Ptr (TQLabel a) -> IO CInt

instance QkeyPressEvent (QLabel ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_keyPressEvent_h" qtc_QLabel_keyPressEvent_h :: Ptr (TQLabel a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QLabelSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_keyPressEvent_h cobj_x0 cobj_x1

instance Qmargin (QLabel a) (()) (IO (Int)) where
 margin x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_margin cobj_x0

foreign import ccall "qtc_QLabel_margin" qtc_QLabel_margin :: Ptr (TQLabel a) -> IO CInt

instance QqminimumSizeHint (QLabel ()) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_minimumSizeHint_h cobj_x0

foreign import ccall "qtc_QLabel_minimumSizeHint_h" qtc_QLabel_minimumSizeHint_h :: Ptr (TQLabel a) -> IO (Ptr (TQSize ()))

instance QqminimumSizeHint (QLabelSc a) (()) where
 qminimumSizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_minimumSizeHint_h cobj_x0

instance QminimumSizeHint (QLabel ()) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLabel_minimumSizeHint_qth_h" qtc_QLabel_minimumSizeHint_qth_h :: Ptr (TQLabel a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QminimumSizeHint (QLabelSc a) (()) where
 minimumSizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_minimumSizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance QmouseMoveEvent (QLabel ()) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_mouseMoveEvent_h" qtc_QLabel_mouseMoveEvent_h :: Ptr (TQLabel a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QLabelSc a) ((QMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QLabel ()) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_mousePressEvent_h" qtc_QLabel_mousePressEvent_h :: Ptr (TQLabel a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmousePressEvent (QLabelSc a) ((QMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QLabel ()) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_mouseReleaseEvent_h" qtc_QLabel_mouseReleaseEvent_h :: Ptr (TQLabel a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QLabelSc a) ((QMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseReleaseEvent_h cobj_x0 cobj_x1

movie :: QLabel a -> (()) -> IO (QMovie ())
movie x0 ()
  = withQMovieResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_movie cobj_x0

foreign import ccall "qtc_QLabel_movie" qtc_QLabel_movie :: Ptr (TQLabel a) -> IO (Ptr (TQMovie ()))

instance QopenExternalLinks (QLabel a) (()) where
 openExternalLinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_openExternalLinks cobj_x0

foreign import ccall "qtc_QLabel_openExternalLinks" qtc_QLabel_openExternalLinks :: Ptr (TQLabel a) -> IO CBool

instance QpaintEvent (QLabel ()) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_paintEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_paintEvent_h" qtc_QLabel_paintEvent_h :: Ptr (TQLabel a) -> Ptr (TQPaintEvent t1) -> IO ()

instance QpaintEvent (QLabelSc a) ((QPaintEvent t1)) where
 paintEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_paintEvent_h cobj_x0 cobj_x1

picture :: QLabel a -> (()) -> IO (QPicture ())
picture x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_picture cobj_x0

foreign import ccall "qtc_QLabel_picture" qtc_QLabel_picture :: Ptr (TQLabel a) -> IO (Ptr (TQPicture ()))

instance Qpixmap (QLabel a) (()) where
 pixmap x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_pixmap cobj_x0

foreign import ccall "qtc_QLabel_pixmap" qtc_QLabel_pixmap :: Ptr (TQLabel a) -> IO (Ptr (TQPixmap ()))

instance Qpixmap_nf (QLabel a) (()) where
 pixmap_nf x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_pixmap cobj_x0

instance QsetAlignment (QLabel a) ((Alignment)) (IO ()) where
 setAlignment x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setAlignment cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QLabel_setAlignment" qtc_QLabel_setAlignment :: Ptr (TQLabel a) -> CLong -> IO ()

setBuddy :: QLabel a -> ((QWidget t1)) -> IO ()
setBuddy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setBuddy cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_setBuddy" qtc_QLabel_setBuddy :: Ptr (TQLabel a) -> Ptr (TQWidget t1) -> IO ()

instance QsetIndent (QLabel a) ((Int)) where
 setIndent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setIndent cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLabel_setIndent" qtc_QLabel_setIndent :: Ptr (TQLabel a) -> CInt -> IO ()

instance QsetMargin (QLabel a) ((Int)) where
 setMargin x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setMargin cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLabel_setMargin" qtc_QLabel_setMargin :: Ptr (TQLabel a) -> CInt -> IO ()

setMovie :: QLabel a -> ((QMovie t1)) -> IO ()
setMovie x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setMovie cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_setMovie" qtc_QLabel_setMovie :: Ptr (TQLabel a) -> Ptr (TQMovie t1) -> IO ()

class QsetNum x1 where
 setNum :: QLabel a -> x1 -> IO ()

instance QsetNum ((Double)) where
 setNum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setNum cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QLabel_setNum" qtc_QLabel_setNum :: Ptr (TQLabel a) -> CDouble -> IO ()

instance QsetNum ((Int)) where
 setNum x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setNum1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QLabel_setNum1" qtc_QLabel_setNum1 :: Ptr (TQLabel a) -> CInt -> IO ()

instance QsetOpenExternalLinks (QLabel a) ((Bool)) where
 setOpenExternalLinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setOpenExternalLinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_setOpenExternalLinks" qtc_QLabel_setOpenExternalLinks :: Ptr (TQLabel a) -> CBool -> IO ()

setPicture :: QLabel a -> ((QPicture t1)) -> IO ()
setPicture x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setPicture cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_setPicture" qtc_QLabel_setPicture :: Ptr (TQLabel a) -> Ptr (TQPicture t1) -> IO ()

instance QsetPixmap (QLabel a) ((QPixmap t1)) where
 setPixmap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setPixmap cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_setPixmap" qtc_QLabel_setPixmap :: Ptr (TQLabel a) -> Ptr (TQPixmap t1) -> IO ()

setScaledContents :: QLabel a -> ((Bool)) -> IO ()
setScaledContents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setScaledContents cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_setScaledContents" qtc_QLabel_setScaledContents :: Ptr (TQLabel a) -> CBool -> IO ()

instance QsetText (QLabel a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QLabel_setText" qtc_QLabel_setText :: Ptr (TQLabel a) -> CWString -> IO ()

instance QsetTextFormat (QLabel a) ((TextFormat)) where
 setTextFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setTextFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLabel_setTextFormat" qtc_QLabel_setTextFormat :: Ptr (TQLabel a) -> CLong -> IO ()

instance QsetTextInteractionFlags (QLabel a) ((TextInteractionFlags)) where
 setTextInteractionFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setTextInteractionFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QLabel_setTextInteractionFlags" qtc_QLabel_setTextInteractionFlags :: Ptr (TQLabel a) -> CLong -> IO ()

instance QsetWordWrap (QLabel a) ((Bool)) where
 setWordWrap x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setWordWrap cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_setWordWrap" qtc_QLabel_setWordWrap :: Ptr (TQLabel a) -> CBool -> IO ()

instance QqsizeHint (QLabel ()) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sizeHint_h cobj_x0

foreign import ccall "qtc_QLabel_sizeHint_h" qtc_QLabel_sizeHint_h :: Ptr (TQLabel a) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QLabelSc a) (()) where
 qsizeHint x0 ()
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sizeHint_h cobj_x0

instance QsizeHint (QLabel ()) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QLabel_sizeHint_qth_h" qtc_QLabel_sizeHint_qth_h :: Ptr (TQLabel a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QLabelSc a) (()) where
 sizeHint x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sizeHint_qth_h cobj_x0 csize_ret_w csize_ret_h

instance Qtext (QLabel a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_text cobj_x0

foreign import ccall "qtc_QLabel_text" qtc_QLabel_text :: Ptr (TQLabel a) -> IO (Ptr (TQString ()))

instance QtextFormat (QLabel a) (()) where
 textFormat x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_textFormat cobj_x0

foreign import ccall "qtc_QLabel_textFormat" qtc_QLabel_textFormat :: Ptr (TQLabel a) -> IO CLong

instance QtextInteractionFlags (QLabel a) (()) where
 textInteractionFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_textInteractionFlags cobj_x0

foreign import ccall "qtc_QLabel_textInteractionFlags" qtc_QLabel_textInteractionFlags :: Ptr (TQLabel a) -> IO CLong

instance QwordWrap (QLabel a) (()) where
 wordWrap x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_wordWrap cobj_x0

foreign import ccall "qtc_QLabel_wordWrap" qtc_QLabel_wordWrap :: Ptr (TQLabel a) -> IO CBool

qLabel_delete :: QLabel a -> IO ()
qLabel_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_delete cobj_x0

foreign import ccall "qtc_QLabel_delete" qtc_QLabel_delete :: Ptr (TQLabel a) -> IO ()

qLabel_deleteLater :: QLabel a -> IO ()
qLabel_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_deleteLater cobj_x0

foreign import ccall "qtc_QLabel_deleteLater" qtc_QLabel_deleteLater :: Ptr (TQLabel a) -> IO ()

instance QdrawFrame (QLabel ()) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_drawFrame cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_drawFrame" qtc_QLabel_drawFrame :: Ptr (TQLabel a) -> Ptr (TQPainter t1) -> IO ()

instance QdrawFrame (QLabelSc a) ((QPainter t1)) where
 drawFrame x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_drawFrame cobj_x0 cobj_x1

instance QactionEvent (QLabel ()) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_actionEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_actionEvent_h" qtc_QLabel_actionEvent_h :: Ptr (TQLabel a) -> Ptr (TQActionEvent t1) -> IO ()

instance QactionEvent (QLabelSc a) ((QActionEvent t1)) where
 actionEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_actionEvent_h cobj_x0 cobj_x1

instance QaddAction (QLabel ()) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_addAction cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_addAction" qtc_QLabel_addAction :: Ptr (TQLabel a) -> Ptr (TQAction t1) -> IO ()

instance QaddAction (QLabelSc a) ((QAction t1)) (IO ()) where
 addAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_addAction cobj_x0 cobj_x1

instance QcloseEvent (QLabel ()) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_closeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_closeEvent_h" qtc_QLabel_closeEvent_h :: Ptr (TQLabel a) -> Ptr (TQCloseEvent t1) -> IO ()

instance QcloseEvent (QLabelSc a) ((QCloseEvent t1)) where
 closeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_closeEvent_h cobj_x0 cobj_x1

instance Qcreate (QLabel ()) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_create cobj_x0

foreign import ccall "qtc_QLabel_create" qtc_QLabel_create :: Ptr (TQLabel a) -> IO ()

instance Qcreate (QLabelSc a) (()) (IO ()) where
 create x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_create cobj_x0

instance Qcreate (QLabel ()) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_create1" qtc_QLabel_create1 :: Ptr (TQLabel a) -> Ptr (TQVoid t1) -> IO ()

instance Qcreate (QLabelSc a) ((QVoid t1)) (IO ()) where
 create x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create1 cobj_x0 cobj_x1

instance Qcreate (QLabel ()) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create2 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QLabel_create2" qtc_QLabel_create2 :: Ptr (TQLabel a) -> Ptr (TQVoid t1) -> CBool -> IO ()

instance Qcreate (QLabelSc a) ((QVoid t1, Bool)) (IO ()) where
 create x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create2 cobj_x0 cobj_x1 (toCBool x2)

instance Qcreate (QLabel ()) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

foreign import ccall "qtc_QLabel_create3" qtc_QLabel_create3 :: Ptr (TQLabel a) -> Ptr (TQVoid t1) -> CBool -> CBool -> IO ()

instance Qcreate (QLabelSc a) ((QVoid t1, Bool, Bool)) (IO ()) where
 create x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_create3 cobj_x0 cobj_x1 (toCBool x2) (toCBool x3)

instance Qdestroy (QLabel ()) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy cobj_x0

foreign import ccall "qtc_QLabel_destroy" qtc_QLabel_destroy :: Ptr (TQLabel a) -> IO ()

instance Qdestroy (QLabelSc a) (()) where
 destroy x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy cobj_x0

instance Qdestroy (QLabel ()) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy1 cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_destroy1" qtc_QLabel_destroy1 :: Ptr (TQLabel a) -> CBool -> IO ()

instance Qdestroy (QLabelSc a) ((Bool)) where
 destroy x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy1 cobj_x0 (toCBool x1)

instance Qdestroy (QLabel ()) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

foreign import ccall "qtc_QLabel_destroy2" qtc_QLabel_destroy2 :: Ptr (TQLabel a) -> CBool -> CBool -> IO ()

instance Qdestroy (QLabelSc a) ((Bool, Bool)) where
 destroy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_destroy2 cobj_x0 (toCBool x1) (toCBool x2)

instance QdevType (QLabel ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_devType_h cobj_x0

foreign import ccall "qtc_QLabel_devType_h" qtc_QLabel_devType_h :: Ptr (TQLabel a) -> IO CInt

instance QdevType (QLabelSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_devType_h cobj_x0

instance QdragEnterEvent (QLabel ()) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_dragEnterEvent_h" qtc_QLabel_dragEnterEvent_h :: Ptr (TQLabel a) -> Ptr (TQDragEnterEvent t1) -> IO ()

instance QdragEnterEvent (QLabelSc a) ((QDragEnterEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QLabel ()) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_dragLeaveEvent_h" qtc_QLabel_dragLeaveEvent_h :: Ptr (TQLabel a) -> Ptr (TQDragLeaveEvent t1) -> IO ()

instance QdragLeaveEvent (QLabelSc a) ((QDragLeaveEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QLabel ()) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_dragMoveEvent_h" qtc_QLabel_dragMoveEvent_h :: Ptr (TQLabel a) -> Ptr (TQDragMoveEvent t1) -> IO ()

instance QdragMoveEvent (QLabelSc a) ((QDragMoveEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QLabel ()) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_dropEvent_h" qtc_QLabel_dropEvent_h :: Ptr (TQLabel a) -> Ptr (TQDropEvent t1) -> IO ()

instance QdropEvent (QLabelSc a) ((QDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_dropEvent_h cobj_x0 cobj_x1

instance QenabledChange (QLabel ()) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_enabledChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_enabledChange" qtc_QLabel_enabledChange :: Ptr (TQLabel a) -> CBool -> IO ()

instance QenabledChange (QLabelSc a) ((Bool)) where
 enabledChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_enabledChange cobj_x0 (toCBool x1)

instance QenterEvent (QLabel ()) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_enterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_enterEvent_h" qtc_QLabel_enterEvent_h :: Ptr (TQLabel a) -> Ptr (TQEvent t1) -> IO ()

instance QenterEvent (QLabelSc a) ((QEvent t1)) where
 enterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_enterEvent_h cobj_x0 cobj_x1

instance QfocusNextChild (QLabel ()) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusNextChild cobj_x0

foreign import ccall "qtc_QLabel_focusNextChild" qtc_QLabel_focusNextChild :: Ptr (TQLabel a) -> IO CBool

instance QfocusNextChild (QLabelSc a) (()) where
 focusNextChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusNextChild cobj_x0

instance QfocusPreviousChild (QLabel ()) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusPreviousChild cobj_x0

foreign import ccall "qtc_QLabel_focusPreviousChild" qtc_QLabel_focusPreviousChild :: Ptr (TQLabel a) -> IO CBool

instance QfocusPreviousChild (QLabelSc a) (()) where
 focusPreviousChild x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_focusPreviousChild cobj_x0

instance QfontChange (QLabel ()) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_fontChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_fontChange" qtc_QLabel_fontChange :: Ptr (TQLabel a) -> Ptr (TQFont t1) -> IO ()

instance QfontChange (QLabelSc a) ((QFont t1)) where
 fontChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_fontChange cobj_x0 cobj_x1

instance QhideEvent (QLabel ()) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_hideEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_hideEvent_h" qtc_QLabel_hideEvent_h :: Ptr (TQLabel a) -> Ptr (TQHideEvent t1) -> IO ()

instance QhideEvent (QLabelSc a) ((QHideEvent t1)) where
 hideEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_hideEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QLabel ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_inputMethodEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_inputMethodEvent" qtc_QLabel_inputMethodEvent :: Ptr (TQLabel a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QLabelSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_inputMethodEvent cobj_x0 cobj_x1

instance QinputMethodQuery (QLabel ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLabel_inputMethodQuery_h" qtc_QLabel_inputMethodQuery_h :: Ptr (TQLabel a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QLabelSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QkeyReleaseEvent (QLabel ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_keyReleaseEvent_h" qtc_QLabel_keyReleaseEvent_h :: Ptr (TQLabel a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QLabelSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_keyReleaseEvent_h cobj_x0 cobj_x1

instance QlanguageChange (QLabel ()) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_languageChange cobj_x0

foreign import ccall "qtc_QLabel_languageChange" qtc_QLabel_languageChange :: Ptr (TQLabel a) -> IO ()

instance QlanguageChange (QLabelSc a) (()) where
 languageChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_languageChange cobj_x0

instance QleaveEvent (QLabel ()) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_leaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_leaveEvent_h" qtc_QLabel_leaveEvent_h :: Ptr (TQLabel a) -> Ptr (TQEvent t1) -> IO ()

instance QleaveEvent (QLabelSc a) ((QEvent t1)) where
 leaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_leaveEvent_h cobj_x0 cobj_x1

instance Qmetric (QLabel ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QLabel_metric" qtc_QLabel_metric :: Ptr (TQLabel a) -> CLong -> IO CInt

instance Qmetric (QLabelSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_metric cobj_x0 (toCLong $ qEnum_toInt x1)

instance QmouseDoubleClickEvent (QLabel ()) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_mouseDoubleClickEvent_h" qtc_QLabel_mouseDoubleClickEvent_h :: Ptr (TQLabel a) -> Ptr (TQMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QLabelSc a) ((QMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance Qmove (QLabel ()) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_move1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLabel_move1" qtc_QLabel_move1 :: Ptr (TQLabel a) -> CInt -> CInt -> IO ()

instance Qmove (QLabelSc a) ((Int, Int)) where
 move x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_move1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qmove (QLabel ()) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLabel_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

foreign import ccall "qtc_QLabel_move_qth" qtc_QLabel_move_qth :: Ptr (TQLabel a) -> CInt -> CInt -> IO ()

instance Qmove (QLabelSc a) ((Point)) where
 move x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QLabel_move_qth cobj_x0 cpoint_x1_x cpoint_x1_y 

instance Qqmove (QLabel ()) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_move cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_move" qtc_QLabel_move :: Ptr (TQLabel a) -> Ptr (TQPoint t1) -> IO ()

instance Qqmove (QLabelSc a) ((QPoint t1)) where
 qmove x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_move cobj_x0 cobj_x1

instance QmoveEvent (QLabel ()) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_moveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_moveEvent_h" qtc_QLabel_moveEvent_h :: Ptr (TQLabel a) -> Ptr (TQMoveEvent t1) -> IO ()

instance QmoveEvent (QLabelSc a) ((QMoveEvent t1)) where
 moveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_moveEvent_h cobj_x0 cobj_x1

instance QpaintEngine (QLabel ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_paintEngine_h cobj_x0

foreign import ccall "qtc_QLabel_paintEngine_h" qtc_QLabel_paintEngine_h :: Ptr (TQLabel a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QLabelSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_paintEngine_h cobj_x0

instance QpaletteChange (QLabel ()) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_paletteChange cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_paletteChange" qtc_QLabel_paletteChange :: Ptr (TQLabel a) -> Ptr (TQPalette t1) -> IO ()

instance QpaletteChange (QLabelSc a) ((QPalette t1)) where
 paletteChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_paletteChange cobj_x0 cobj_x1

instance Qrepaint (QLabel ()) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_repaint cobj_x0

foreign import ccall "qtc_QLabel_repaint" qtc_QLabel_repaint :: Ptr (TQLabel a) -> IO ()

instance Qrepaint (QLabelSc a) (()) where
 repaint x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_repaint cobj_x0

instance Qrepaint (QLabel ()) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLabel_repaint2" qtc_QLabel_repaint2 :: Ptr (TQLabel a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance Qrepaint (QLabelSc a) ((Int, Int, Int, Int)) where
 repaint x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_repaint2 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance Qrepaint (QLabel ()) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_repaint1 cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_repaint1" qtc_QLabel_repaint1 :: Ptr (TQLabel a) -> Ptr (TQRegion t1) -> IO ()

instance Qrepaint (QLabelSc a) ((QRegion t1)) where
 repaint x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_repaint1 cobj_x0 cobj_x1

instance QresetInputContext (QLabel ()) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_resetInputContext cobj_x0

foreign import ccall "qtc_QLabel_resetInputContext" qtc_QLabel_resetInputContext :: Ptr (TQLabel a) -> IO ()

instance QresetInputContext (QLabelSc a) (()) where
 resetInputContext x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_resetInputContext cobj_x0

instance Qresize (QLabel ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_resize1 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QLabel_resize1" qtc_QLabel_resize1 :: Ptr (TQLabel a) -> CInt -> CInt -> IO ()

instance Qresize (QLabelSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_resize1 cobj_x0 (toCInt x1) (toCInt x2)

instance Qqresize (QLabel ()) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_resize cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_resize" qtc_QLabel_resize :: Ptr (TQLabel a) -> Ptr (TQSize t1) -> IO ()

instance Qqresize (QLabelSc a) ((QSize t1)) where
 qresize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_resize cobj_x0 cobj_x1

instance Qresize (QLabel ()) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLabel_resize_qth cobj_x0 csize_x1_w csize_x1_h 

foreign import ccall "qtc_QLabel_resize_qth" qtc_QLabel_resize_qth :: Ptr (TQLabel a) -> CInt -> CInt -> IO ()

instance Qresize (QLabelSc a) ((Size)) (IO ()) where
 resize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QLabel_resize_qth cobj_x0 csize_x1_w csize_x1_h 

instance QresizeEvent (QLabel ()) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_resizeEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_resizeEvent_h" qtc_QLabel_resizeEvent_h :: Ptr (TQLabel a) -> Ptr (TQResizeEvent t1) -> IO ()

instance QresizeEvent (QLabelSc a) ((QResizeEvent t1)) where
 resizeEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_resizeEvent_h cobj_x0 cobj_x1

instance QsetGeometry (QLabel ()) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QLabel_setGeometry1" qtc_QLabel_setGeometry1 :: Ptr (TQLabel a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLabelSc a) ((Int, Int, Int, Int)) where
 setGeometry x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setGeometry1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

instance QqsetGeometry (QLabel ()) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setGeometry cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_setGeometry" qtc_QLabel_setGeometry :: Ptr (TQLabel a) -> Ptr (TQRect t1) -> IO ()

instance QqsetGeometry (QLabelSc a) ((QRect t1)) where
 qsetGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_setGeometry cobj_x0 cobj_x1

instance QsetGeometry (QLabel ()) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLabel_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QLabel_setGeometry_qth" qtc_QLabel_setGeometry_qth :: Ptr (TQLabel a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetGeometry (QLabelSc a) ((Rect)) where
 setGeometry x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QLabel_setGeometry_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QsetMouseTracking (QLabel ()) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setMouseTracking cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_setMouseTracking" qtc_QLabel_setMouseTracking :: Ptr (TQLabel a) -> CBool -> IO ()

instance QsetMouseTracking (QLabelSc a) ((Bool)) where
 setMouseTracking x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setMouseTracking cobj_x0 (toCBool x1)

instance QsetVisible (QLabel ()) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setVisible_h cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_setVisible_h" qtc_QLabel_setVisible_h :: Ptr (TQLabel a) -> CBool -> IO ()

instance QsetVisible (QLabelSc a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_setVisible_h cobj_x0 (toCBool x1)

instance QshowEvent (QLabel ()) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_showEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_showEvent_h" qtc_QLabel_showEvent_h :: Ptr (TQLabel a) -> Ptr (TQShowEvent t1) -> IO ()

instance QshowEvent (QLabelSc a) ((QShowEvent t1)) where
 showEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_showEvent_h cobj_x0 cobj_x1

instance QtabletEvent (QLabel ()) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_tabletEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_tabletEvent_h" qtc_QLabel_tabletEvent_h :: Ptr (TQLabel a) -> Ptr (TQTabletEvent t1) -> IO ()

instance QtabletEvent (QLabelSc a) ((QTabletEvent t1)) where
 tabletEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_tabletEvent_h cobj_x0 cobj_x1

instance QupdateMicroFocus (QLabel ()) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_updateMicroFocus cobj_x0

foreign import ccall "qtc_QLabel_updateMicroFocus" qtc_QLabel_updateMicroFocus :: Ptr (TQLabel a) -> IO ()

instance QupdateMicroFocus (QLabelSc a) (()) where
 updateMicroFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_updateMicroFocus cobj_x0

instance QwheelEvent (QLabel ()) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_wheelEvent_h" qtc_QLabel_wheelEvent_h :: Ptr (TQLabel a) -> Ptr (TQWheelEvent t1) -> IO ()

instance QwheelEvent (QLabelSc a) ((QWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_wheelEvent_h cobj_x0 cobj_x1

instance QwindowActivationChange (QLabel ()) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_windowActivationChange cobj_x0 (toCBool x1)

foreign import ccall "qtc_QLabel_windowActivationChange" qtc_QLabel_windowActivationChange :: Ptr (TQLabel a) -> CBool -> IO ()

instance QwindowActivationChange (QLabelSc a) ((Bool)) where
 windowActivationChange x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_windowActivationChange cobj_x0 (toCBool x1)

instance QchildEvent (QLabel ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_childEvent" qtc_QLabel_childEvent :: Ptr (TQLabel a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QLabelSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QLabel ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLabel_connectNotify" qtc_QLabel_connectNotify :: Ptr (TQLabel a) -> CWString -> IO ()

instance QconnectNotify (QLabelSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QLabel ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_customEvent" qtc_QLabel_customEvent :: Ptr (TQLabel a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QLabelSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QLabel ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QLabel_disconnectNotify" qtc_QLabel_disconnectNotify :: Ptr (TQLabel a) -> CWString -> IO ()

instance QdisconnectNotify (QLabelSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_disconnectNotify cobj_x0 cstr_x1

instance QeventFilter (QLabel ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLabel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QLabel_eventFilter_h" qtc_QLabel_eventFilter_h :: Ptr (TQLabel a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QLabelSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QLabel_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QLabel ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QLabel_receivers" qtc_QLabel_receivers :: Ptr (TQLabel a) -> CWString -> IO CInt

instance Qreceivers (QLabelSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QLabel_receivers cobj_x0 cstr_x1

instance Qsender (QLabel ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sender cobj_x0

foreign import ccall "qtc_QLabel_sender" qtc_QLabel_sender :: Ptr (TQLabel a) -> IO (Ptr (TQObject ()))

instance Qsender (QLabelSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QLabel_sender cobj_x0

instance QtimerEvent (QLabel ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QLabel_timerEvent" qtc_QLabel_timerEvent :: Ptr (TQLabel a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QLabelSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QLabel_timerEvent cobj_x0 cobj_x1

