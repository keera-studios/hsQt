{-# OPTIONS -fglasgow-exts -#include "../include/gui/qtc_hs_QItemDelegate.h" #-}
-----------------------------------------------------------------------------
{-| Module    : QItemDelegate.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QItemDelegate (
  QqItemDelegate(..)
  ,Qcheck(..), Qqcheck(..)
  ,Qdecoration(..)
  ,QdoLayout(..)
  ,QdrawCheck(..), QqdrawCheck(..)
  ,QdrawDecoration(..), QqdrawDecoration(..)
  ,QdrawDisplay(..), QqdrawDisplay(..)
  ,QdrawFocus(..), QqdrawFocus(..)
  ,itemEditorFactory
  ,Qselected(..)
  ,setItemEditorFactory
  ,QsetOptions(..)
  ,QtextRectangle(..), QqtextRectangle(..)
  ,qItemDelegate_delete
  ,qItemDelegate_deleteLater
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

instance QuserMethod (QItemDelegate ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QItemDelegate_userMethod" qtc_QItemDelegate_userMethod :: Ptr (TQItemDelegate a) -> CInt -> IO ()

instance QuserMethod (QItemDelegateSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QItemDelegate_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QItemDelegate ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemDelegate_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QItemDelegate_userMethodVariant" qtc_QItemDelegate_userMethodVariant :: Ptr (TQItemDelegate a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QItemDelegateSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QItemDelegate_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqItemDelegate x1 where
  qItemDelegate :: x1 -> IO (QItemDelegate ())

instance QqItemDelegate (()) where
 qItemDelegate ()
  = withQItemDelegateResult $
    qtc_QItemDelegate

foreign import ccall "qtc_QItemDelegate" qtc_QItemDelegate :: IO (Ptr (TQItemDelegate ()))

instance QqItemDelegate ((QObject t1)) where
 qItemDelegate (x1)
  = withQItemDelegateResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate1 cobj_x1

foreign import ccall "qtc_QItemDelegate1" qtc_QItemDelegate1 :: Ptr (TQObject t1) -> IO (Ptr (TQItemDelegate ()))

class Qcheck x0 x1 where
 check :: x0 -> x1 -> IO (Rect)

class Qqcheck x0 x1 where
 qcheck :: x0 -> x1 -> IO (QRect ())

instance Qqcheck (QItemDelegate ()) ((QStyleOptionViewItem t1, QRect t2, QVariant t3)) where
 qcheck x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_check cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_check" qtc_QItemDelegate_check :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQRect t2) -> Ptr (TQVariant t3) -> IO (Ptr (TQRect ()))

instance Qqcheck (QItemDelegateSc a) ((QStyleOptionViewItem t1, QRect t2, QVariant t3)) where
 qcheck x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_check cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qcheck (QItemDelegate ()) ((QStyleOptionViewItem t1, Rect, QVariant t3)) where
 check x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_check_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QItemDelegate_check_qth" qtc_QItemDelegate_check_qth :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQVariant t3) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qcheck (QItemDelegateSc a) ((QStyleOptionViewItem t1, Rect, QVariant t3)) where
 check x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_check_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QcreateEditor (QItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_createEditor_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_createEditor_h" qtc_QItemDelegate_createEditor_h :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO (Ptr (TQWidget ()))

instance QcreateEditor (QItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 createEditor x0 (x1, x2, x3)
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_createEditor_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

class Qdecoration x0 x1 where
 decoration :: x0 -> x1 -> IO (QPixmap ())

instance Qdecoration (QItemDelegate ()) ((QStyleOptionViewItem t1, QVariant t2)) where
 decoration x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_decoration cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_decoration" qtc_QItemDelegate_decoration :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQVariant t2) -> IO (Ptr (TQPixmap ()))

instance Qdecoration (QItemDelegateSc a) ((QStyleOptionViewItem t1, QVariant t2)) where
 decoration x0 (x1, x2)
  = withQPixmapResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_decoration cobj_x0 cobj_x1 cobj_x2

class QdoLayout x0 x1 where
 doLayout :: x0 -> x1 -> IO ()

instance QdoLayout (QItemDelegate ()) ((QStyleOptionViewItem t1, QRect t2, QRect t3, QRect t4, Bool)) where
 doLayout x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_doLayout cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4 (toCBool x5)

foreign import ccall "qtc_QItemDelegate_doLayout" qtc_QItemDelegate_doLayout :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQRect t2) -> Ptr (TQRect t3) -> Ptr (TQRect t4) -> CBool -> IO ()

instance QdoLayout (QItemDelegateSc a) ((QStyleOptionViewItem t1, QRect t2, QRect t3, QRect t4, Bool)) where
 doLayout x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_doLayout cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4 (toCBool x5)

instance QdrawBackground (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawBackground x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawBackground cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_drawBackground" qtc_QItemDelegate_drawBackground :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QdrawBackground (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 drawBackground x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawBackground cobj_x0 cobj_x1 cobj_x2 cobj_x3

class QdrawCheck x0 x1 where
 drawCheck :: x0 -> x1 -> IO ()

class QqdrawCheck x0 x1 where
 qdrawCheck :: x0 -> x1 -> IO ()

instance QqdrawCheck (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, CheckState)) where
 qdrawCheck x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawCheck cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QItemDelegate_drawCheck" qtc_QItemDelegate_drawCheck :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQRect t3) -> CLong -> IO ()

instance QqdrawCheck (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, CheckState)) where
 qdrawCheck x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawCheck cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCLong $ qEnum_toInt x4)

instance QdrawCheck (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, Rect, CheckState)) where
 drawCheck x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QItemDelegate_drawCheck_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  (toCLong $ qEnum_toInt x4)

foreign import ccall "qtc_QItemDelegate_drawCheck_qth" qtc_QItemDelegate_drawCheck_qth :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> CInt -> CInt -> CInt -> CInt -> CLong -> IO ()

instance QdrawCheck (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, Rect, CheckState)) where
 drawCheck x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QItemDelegate_drawCheck_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  (toCLong $ qEnum_toInt x4)

class QdrawDecoration x0 x1 where
 drawDecoration :: x0 -> x1 -> IO ()

class QqdrawDecoration x0 x1 where
 qdrawDecoration :: x0 -> x1 -> IO ()

instance QqdrawDecoration (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, QPixmap t4)) where
 qdrawDecoration x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_drawDecoration cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QItemDelegate_drawDecoration" qtc_QItemDelegate_drawDecoration :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQRect t3) -> Ptr (TQPixmap t4) -> IO ()

instance QqdrawDecoration (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, QPixmap t4)) where
 qdrawDecoration x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_drawDecoration cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

instance QdrawDecoration (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, Rect, QPixmap t4)) where
 drawDecoration x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_drawDecoration_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  cobj_x4

foreign import ccall "qtc_QItemDelegate_drawDecoration_qth" qtc_QItemDelegate_drawDecoration_qth :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQPixmap t4) -> IO ()

instance QdrawDecoration (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, Rect, QPixmap t4)) where
 drawDecoration x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_drawDecoration_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  cobj_x4

class QdrawDisplay x0 x1 where
 drawDisplay :: x0 -> x1 -> IO ()

class QqdrawDisplay x0 x1 where
 qdrawDisplay :: x0 -> x1 -> IO ()

instance QqdrawDisplay (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, String)) where
 qdrawDisplay x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_drawDisplay cobj_x0 cobj_x1 cobj_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QItemDelegate_drawDisplay" qtc_QItemDelegate_drawDisplay :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQRect t3) -> CWString -> IO ()

instance QqdrawDisplay (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QRect t3, String)) where
 qdrawDisplay x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_drawDisplay cobj_x0 cobj_x1 cobj_x2 cobj_x3 cstr_x4

instance QdrawDisplay (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, Rect, String)) where
 drawDisplay x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_drawDisplay_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  cstr_x4

foreign import ccall "qtc_QItemDelegate_drawDisplay_qth" qtc_QItemDelegate_drawDisplay_qth :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> CInt -> CInt -> CInt -> CInt -> CWString -> IO ()

instance QdrawDisplay (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, Rect, String)) where
 drawDisplay x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_drawDisplay_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h  cstr_x4

class QdrawFocus x0 x1 where
 drawFocus :: x0 -> x1 -> IO ()

class QqdrawFocus x0 x1 where
 qdrawFocus :: x0 -> x1 -> IO ()

instance QqdrawFocus (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QRect t3)) where
 qdrawFocus x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawFocus cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_drawFocus" qtc_QItemDelegate_drawFocus :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQRect t3) -> IO ()

instance QqdrawFocus (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QRect t3)) where
 qdrawFocus x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_drawFocus cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QdrawFocus (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, Rect)) where
 drawFocus x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QItemDelegate_drawFocus_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

foreign import ccall "qtc_QItemDelegate_drawFocus_qth" qtc_QItemDelegate_drawFocus_qth :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QdrawFocus (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, Rect)) where
 drawFocus x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withCRect x3 $ \crect_x3_x crect_x3_y  crect_x3_w crect_x3_h -> 
    qtc_QItemDelegate_drawFocus_qth cobj_x0 cobj_x1 cobj_x2 crect_x3_x crect_x3_y crect_x3_w crect_x3_h 

instance QeditorEvent (QItemDelegate ()) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_editorEvent cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

foreign import ccall "qtc_QItemDelegate_editorEvent" qtc_QItemDelegate_editorEvent :: Ptr (TQItemDelegate a) -> Ptr (TQEvent t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQStyleOptionViewItem t3) -> Ptr (TQModelIndex t4) -> IO CBool

instance QeditorEvent (QItemDelegateSc a) ((QEvent t1, QAbstractItemModel t2, QStyleOptionViewItem t3, QModelIndex t4)) where
 editorEvent x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    qtc_QItemDelegate_editorEvent cobj_x0 cobj_x1 cobj_x2 cobj_x3 cobj_x4

instance QeventFilter (QItemDelegate ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_eventFilter cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_eventFilter" qtc_QItemDelegate_eventFilter :: Ptr (TQItemDelegate a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QItemDelegateSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_eventFilter cobj_x0 cobj_x1 cobj_x2

instance QhasClipping (QItemDelegate a) (()) where
 hasClipping x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_hasClipping cobj_x0

foreign import ccall "qtc_QItemDelegate_hasClipping" qtc_QItemDelegate_hasClipping :: Ptr (TQItemDelegate a) -> IO CBool

itemEditorFactory :: QItemDelegate a -> (()) -> IO (QItemEditorFactory ())
itemEditorFactory x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_itemEditorFactory cobj_x0

foreign import ccall "qtc_QItemDelegate_itemEditorFactory" qtc_QItemDelegate_itemEditorFactory :: Ptr (TQItemDelegate a) -> IO (Ptr (TQItemEditorFactory ()))

instance Qpaint (QItemDelegate ()) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_paint_h" qtc_QItemDelegate_paint_h :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance Qpaint (QItemDelegateSc a) ((QPainter t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance Qqqrect (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2, Int)) (IO (QRect ())) where
 qqrect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_rect cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

foreign import ccall "qtc_QItemDelegate_rect" qtc_QItemDelegate_rect :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> CInt -> IO (Ptr (TQRect ()))

instance Qqqrect (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2, Int)) (IO (QRect ())) where
 qqrect x0 (x1, x2, x3)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_rect cobj_x0 cobj_x1 cobj_x2 (toCInt x3)

instance Qqrect (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2, Int)) (IO (Rect)) where
 qrect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_rect_qth cobj_x0 cobj_x1 cobj_x2 (toCInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QItemDelegate_rect_qth" qtc_QItemDelegate_rect_qth :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqrect (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2, Int)) (IO (Rect)) where
 qrect x0 (x1, x2, x3)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_rect_qth cobj_x0 cobj_x1 cobj_x2 (toCInt x3) crect_ret_x crect_ret_y crect_ret_w crect_ret_h

class Qselected x0 x1 where
 selected :: x0 -> x1 -> IO (QPixmap ())

instance Qselected (QItemDelegate ()) ((QPixmap t1, QPalette t2, Bool)) where
 selected x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_selected cobj_x0 cobj_x1 cobj_x2 (toCBool x3)

foreign import ccall "qtc_QItemDelegate_selected" qtc_QItemDelegate_selected :: Ptr (TQItemDelegate a) -> Ptr (TQPixmap t1) -> Ptr (TQPalette t2) -> CBool -> IO (Ptr (TQPixmap ()))

instance Qselected (QItemDelegateSc a) ((QPixmap t1, QPalette t2, Bool)) where
 selected x0 (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_selected cobj_x0 cobj_x1 cobj_x2 (toCBool x3)

instance QsetClipping (QItemDelegate a) ((Bool)) where
 setClipping x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_setClipping cobj_x0 (toCBool x1)

foreign import ccall "qtc_QItemDelegate_setClipping" qtc_QItemDelegate_setClipping :: Ptr (TQItemDelegate a) -> CBool -> IO ()

instance QsetEditorData (QItemDelegate ()) ((QWidget t1, QModelIndex t2)) where
 setEditorData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setEditorData_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_setEditorData_h" qtc_QItemDelegate_setEditorData_h :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQModelIndex t2) -> IO ()

instance QsetEditorData (QItemDelegateSc a) ((QWidget t1, QModelIndex t2)) where
 setEditorData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setEditorData_h cobj_x0 cobj_x1 cobj_x2

setItemEditorFactory :: QItemDelegate a -> ((QItemEditorFactory t1)) -> IO ()
setItemEditorFactory x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_setItemEditorFactory cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_setItemEditorFactory" qtc_QItemDelegate_setItemEditorFactory :: Ptr (TQItemDelegate a) -> Ptr (TQItemEditorFactory t1) -> IO ()

instance QsetModelData (QItemDelegate ()) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_setModelData_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_setModelData_h" qtc_QItemDelegate_setModelData_h :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQAbstractItemModel t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QsetModelData (QItemDelegateSc a) ((QWidget t1, QAbstractItemModel t2, QModelIndex t3)) where
 setModelData x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_setModelData_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

class QsetOptions x0 x1 where
 setOptions :: x0 -> x1 -> IO (QStyleOptionViewItem ())

instance QsetOptions (QItemDelegate ()) ((QModelIndex t1, QStyleOptionViewItem t2)) where
 setOptions x0 (x1, x2)
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setOptions cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_setOptions" qtc_QItemDelegate_setOptions :: Ptr (TQItemDelegate a) -> Ptr (TQModelIndex t1) -> Ptr (TQStyleOptionViewItem t2) -> IO (Ptr (TQStyleOptionViewItem ()))

instance QsetOptions (QItemDelegateSc a) ((QModelIndex t1, QStyleOptionViewItem t2)) where
 setOptions x0 (x1, x2)
  = withQStyleOptionViewItemResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_setOptions cobj_x0 cobj_x1 cobj_x2

instance QqsizeHint (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QItemDelegate_sizeHint_h" qtc_QItemDelegate_sizeHint_h :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> IO (Ptr (TQSize ()))

instance QqsizeHint (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 qsizeHint x0 (x1, x2)
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_h cobj_x0 cobj_x1 cobj_x2

instance QsizeHint (QItemDelegate ()) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_qth_h cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

foreign import ccall "qtc_QItemDelegate_sizeHint_qth_h" qtc_QItemDelegate_sizeHint_qth_h :: Ptr (TQItemDelegate a) -> Ptr (TQStyleOptionViewItem t1) -> Ptr (TQModelIndex t2) -> Ptr CInt -> Ptr CInt -> IO ()

instance QsizeHint (QItemDelegateSc a) ((QStyleOptionViewItem t1, QModelIndex t2)) where
 sizeHint x0 (x1, x2)
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QItemDelegate_sizeHint_qth_h cobj_x0 cobj_x1 cobj_x2 csize_ret_w csize_ret_h

class QtextRectangle x0 x1 where
 textRectangle :: x0 -> x1 -> IO (Rect)

class QqtextRectangle x0 x1 where
 qtextRectangle :: x0 -> x1 -> IO (QRect ())

instance QqtextRectangle (QItemDelegate ()) ((QPainter t1, QRect t2, QFont t3, String)) where
 qtextRectangle x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_textRectangle cobj_x0 cobj_x1 cobj_x2 cobj_x3 cstr_x4

foreign import ccall "qtc_QItemDelegate_textRectangle" qtc_QItemDelegate_textRectangle :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> Ptr (TQRect t2) -> Ptr (TQFont t3) -> CWString -> IO (Ptr (TQRect ()))

instance QqtextRectangle (QItemDelegateSc a) ((QPainter t1, QRect t2, QFont t3, String)) where
 qtextRectangle x0 (x1, x2, x3, x4)
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_textRectangle cobj_x0 cobj_x1 cobj_x2 cobj_x3 cstr_x4

instance QtextRectangle (QItemDelegate ()) ((QPainter t1, Rect, QFont t3, String)) where
 textRectangle x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_textRectangle_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3 cstr_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QItemDelegate_textRectangle_qth" qtc_QItemDelegate_textRectangle_qth :: Ptr (TQItemDelegate a) -> Ptr (TQPainter t1) -> CInt -> CInt -> CInt -> CInt -> Ptr (TQFont t3) -> CWString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QtextRectangle (QItemDelegateSc a) ((QPainter t1, Rect, QFont t3, String)) where
 textRectangle x0 (x1, x2, x3, x4)
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRect x2 $ \crect_x2_x crect_x2_y  crect_x2_w crect_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withCWString x4 $ \cstr_x4 ->
    qtc_QItemDelegate_textRectangle_qth cobj_x0 cobj_x1 crect_x2_x crect_x2_y crect_x2_w crect_x2_h  cobj_x3 cstr_x4 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

instance QupdateEditorGeometry (QItemDelegate ()) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_updateEditorGeometry_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QItemDelegate_updateEditorGeometry_h" qtc_QItemDelegate_updateEditorGeometry_h :: Ptr (TQItemDelegate a) -> Ptr (TQWidget t1) -> Ptr (TQStyleOptionViewItem t2) -> Ptr (TQModelIndex t3) -> IO ()

instance QupdateEditorGeometry (QItemDelegateSc a) ((QWidget t1, QStyleOptionViewItem t2, QModelIndex t3)) where
 updateEditorGeometry x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QItemDelegate_updateEditorGeometry_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

qItemDelegate_delete :: QItemDelegate a -> IO ()
qItemDelegate_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_delete cobj_x0

foreign import ccall "qtc_QItemDelegate_delete" qtc_QItemDelegate_delete :: Ptr (TQItemDelegate a) -> IO ()

qItemDelegate_deleteLater :: QItemDelegate a -> IO ()
qItemDelegate_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_deleteLater cobj_x0

foreign import ccall "qtc_QItemDelegate_deleteLater" qtc_QItemDelegate_deleteLater :: Ptr (TQItemDelegate a) -> IO ()

instance QchildEvent (QItemDelegate ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_childEvent" qtc_QItemDelegate_childEvent :: Ptr (TQItemDelegate a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QItemDelegateSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QItemDelegate ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QItemDelegate_connectNotify" qtc_QItemDelegate_connectNotify :: Ptr (TQItemDelegate a) -> CWString -> IO ()

instance QconnectNotify (QItemDelegateSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QItemDelegate ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_customEvent" qtc_QItemDelegate_customEvent :: Ptr (TQItemDelegate a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QItemDelegateSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QItemDelegate ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QItemDelegate_disconnectNotify" qtc_QItemDelegate_disconnectNotify :: Ptr (TQItemDelegate a) -> CWString -> IO ()

instance QdisconnectNotify (QItemDelegateSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QItemDelegate ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_event_h" qtc_QItemDelegate_event_h :: Ptr (TQItemDelegate a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QItemDelegateSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_event_h cobj_x0 cobj_x1

instance Qreceivers (QItemDelegate ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QItemDelegate_receivers" qtc_QItemDelegate_receivers :: Ptr (TQItemDelegate a) -> CWString -> IO CInt

instance Qreceivers (QItemDelegateSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QItemDelegate_receivers cobj_x0 cstr_x1

instance Qsender (QItemDelegate ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_sender cobj_x0

foreign import ccall "qtc_QItemDelegate_sender" qtc_QItemDelegate_sender :: Ptr (TQItemDelegate a) -> IO (Ptr (TQObject ()))

instance Qsender (QItemDelegateSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QItemDelegate_sender cobj_x0

instance QtimerEvent (QItemDelegate ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QItemDelegate_timerEvent" qtc_QItemDelegate_timerEvent :: Ptr (TQItemDelegate a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QItemDelegateSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QItemDelegate_timerEvent cobj_x0 cobj_x1

