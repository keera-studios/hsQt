{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QGraphicsTextItem.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QGraphicsTextItem (
  QqGraphicsTextItem(..)
  ,defaultTextColor
  ,setDefaultTextColor
  ,qGraphicsTextItem_delete
  ,qGraphicsTextItem_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Gui.QGraphicsItem

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QGraphicsTextItem ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsTextItem_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QGraphicsTextItem_userMethod" qtc_QGraphicsTextItem_userMethod :: Ptr (TQGraphicsTextItem a) -> CInt -> IO ()

instance QuserMethod (QGraphicsTextItemSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QGraphicsTextItem_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QGraphicsTextItem ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsTextItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QGraphicsTextItem_userMethodVariant" qtc_QGraphicsTextItem_userMethodVariant :: Ptr (TQGraphicsTextItem a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QGraphicsTextItemSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QGraphicsTextItem_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqGraphicsTextItem x1 where
  qGraphicsTextItem :: x1 -> IO (QGraphicsTextItem ())

instance QqGraphicsTextItem (()) where
 qGraphicsTextItem ()
  = withQGraphicsTextItemResult $
    qtc_QGraphicsTextItem

foreign import ccall "qtc_QGraphicsTextItem" qtc_QGraphicsTextItem :: IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((String)) where
 qGraphicsTextItem (x1)
  = withQGraphicsTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem1 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem1" qtc_QGraphicsTextItem1 :: CWString -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((QGraphicsItem t1)) where
 qGraphicsTextItem (x1)
  = withQGraphicsTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem2 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem2" qtc_QGraphicsTextItem2 :: Ptr (TQGraphicsItem t1) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((QGraphicsTextItem t1)) where
 qGraphicsTextItem (x1)
  = withQGraphicsTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem2_graphicstextitem cobj_x1

foreign import ccall "qtc_QGraphicsTextItem2_graphicstextitem" qtc_QGraphicsTextItem2_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((String, QGraphicsItem t2)) where
 qGraphicsTextItem (x1, x2)
  = withQGraphicsTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem3 cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem3" qtc_QGraphicsTextItem3 :: CWString -> Ptr (TQGraphicsItem t2) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((String, QGraphicsTextItem t2)) where
 qGraphicsTextItem (x1, x2)
  = withQGraphicsTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem3_graphicstextitem cstr_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem3_graphicstextitem" qtc_QGraphicsTextItem3_graphicstextitem :: CWString -> Ptr (TQGraphicsTextItem t2) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((QGraphicsItem t1, QGraphicsScene t2)) where
 qGraphicsTextItem (x1, x2)
  = withQGraphicsTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem4 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem4" qtc_QGraphicsTextItem4 :: Ptr (TQGraphicsItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((QGraphicsTextItem t1, QGraphicsScene t2)) where
 qGraphicsTextItem (x1, x2)
  = withQGraphicsTextItemResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem4_graphicstextitem cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem4_graphicstextitem" qtc_QGraphicsTextItem4_graphicstextitem :: Ptr (TQGraphicsTextItem t1) -> Ptr (TQGraphicsScene t2) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((String, QGraphicsItem t2, QGraphicsScene t3)) where
 qGraphicsTextItem (x1, x2, x3)
  = withQGraphicsTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsTextItem5 cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsTextItem5" qtc_QGraphicsTextItem5 :: CWString -> Ptr (TQGraphicsItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsTextItem ()))

instance QqGraphicsTextItem ((String, QGraphicsTextItem t2, QGraphicsScene t3)) where
 qGraphicsTextItem (x1, x2, x3)
  = withQGraphicsTextItemResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsTextItem5_graphicstextitem cstr_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsTextItem5_graphicstextitem" qtc_QGraphicsTextItem5_graphicstextitem :: CWString -> Ptr (TQGraphicsTextItem t2) -> Ptr (TQGraphicsScene t3) -> IO (Ptr (TQGraphicsTextItem ()))

instance QadjustSize (QGraphicsTextItem a) (()) where
 adjustSize x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_adjustSize cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_adjustSize" qtc_QGraphicsTextItem_adjustSize :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QqqboundingRect (QGraphicsTextItem ()) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_boundingRect_h cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_boundingRect_h" qtc_QGraphicsTextItem_boundingRect_h :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQRectF ()))

instance QqqboundingRect (QGraphicsTextItemSc a) (()) (IO (QRectF ())) where
 qqboundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_boundingRect_h cobj_x0

instance QqboundingRect (QGraphicsTextItem ()) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsTextItem_boundingRect_qth_h" qtc_QGraphicsTextItem_boundingRect_qth_h :: Ptr (TQGraphicsTextItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqboundingRect (QGraphicsTextItemSc a) (()) (IO (RectF)) where
 qboundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_boundingRect_qth_h cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qqcontains (QGraphicsTextItem ()) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsTextItem_contains_qth_h" qtc_QGraphicsTextItem_contains_qth_h :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO CBool

instance Qqcontains (QGraphicsTextItemSc a) ((PointF)) where
 qcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_contains_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y 

instance Qqqcontains (QGraphicsTextItem ()) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_contains_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_contains_h" qtc_QGraphicsTextItem_contains_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO CBool

instance Qqqcontains (QGraphicsTextItemSc a) ((QPointF t1)) where
 qqcontains x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_contains_h cobj_x0 cobj_x1

instance QcontextMenuEvent (QGraphicsTextItem ()) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_contextMenuEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_contextMenuEvent_h" qtc_QGraphicsTextItem_contextMenuEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneContextMenuEvent t1) -> IO ()

instance QcontextMenuEvent (QGraphicsTextItemSc a) ((QGraphicsSceneContextMenuEvent t1)) where
 contextMenuEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_contextMenuEvent_h cobj_x0 cobj_x1

defaultTextColor :: QGraphicsTextItem a -> (()) -> IO (QColor ())
defaultTextColor x0 ()
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_defaultTextColor cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_defaultTextColor" qtc_QGraphicsTextItem_defaultTextColor :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQColor ()))

instance Qdocument (QGraphicsTextItem a) (()) where
 document x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_document cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_document" qtc_QGraphicsTextItem_document :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQTextDocument ()))

instance QdragEnterEvent (QGraphicsTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_dragEnterEvent_h" qtc_QGraphicsTextItem_dragEnterEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragEnterEvent (QGraphicsTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragEnterEvent_h cobj_x0 cobj_x1

instance QdragLeaveEvent (QGraphicsTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_dragLeaveEvent_h" qtc_QGraphicsTextItem_dragLeaveEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragLeaveEvent (QGraphicsTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragLeaveEvent_h cobj_x0 cobj_x1

instance QdragMoveEvent (QGraphicsTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_dragMoveEvent_h" qtc_QGraphicsTextItem_dragMoveEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdragMoveEvent (QGraphicsTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dragMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dragMoveEvent_h cobj_x0 cobj_x1

instance QdropEvent (QGraphicsTextItem ()) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dropEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_dropEvent_h" qtc_QGraphicsTextItem_dropEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneDragDropEvent t1) -> IO ()

instance QdropEvent (QGraphicsTextItemSc a) ((QGraphicsSceneDragDropEvent t1)) where
 dropEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_dropEvent_h cobj_x0 cobj_x1

instance Qextension (QGraphicsTextItem ()) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_extension cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_extension" qtc_QGraphicsTextItem_extension :: Ptr (TQGraphicsTextItem a) -> Ptr (TQVariant t1) -> IO (Ptr (TQVariant ()))

instance Qextension (QGraphicsTextItemSc a) ((QVariant t1)) (IO (QVariant ())) where
 extension x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_extension cobj_x0 cobj_x1

instance QfocusInEvent (QGraphicsTextItem ()) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_focusInEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_focusInEvent_h" qtc_QGraphicsTextItem_focusInEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusInEvent (QGraphicsTextItemSc a) ((QFocusEvent t1)) where
 focusInEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_focusInEvent_h cobj_x0 cobj_x1

instance QfocusOutEvent (QGraphicsTextItem ()) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_focusOutEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_focusOutEvent_h" qtc_QGraphicsTextItem_focusOutEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQFocusEvent t1) -> IO ()

instance QfocusOutEvent (QGraphicsTextItemSc a) ((QFocusEvent t1)) where
 focusOutEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_focusOutEvent_h cobj_x0 cobj_x1

instance Qfont (QGraphicsTextItem a) (()) where
 font x0 ()
  = withQFontResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_font cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_font" qtc_QGraphicsTextItem_font :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQFont ()))

instance QhoverEnterEvent (QGraphicsTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverEnterEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_hoverEnterEvent_h" qtc_QGraphicsTextItem_hoverEnterEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverEnterEvent (QGraphicsTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverEnterEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverEnterEvent_h cobj_x0 cobj_x1

instance QhoverLeaveEvent (QGraphicsTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverLeaveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_hoverLeaveEvent_h" qtc_QGraphicsTextItem_hoverLeaveEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverLeaveEvent (QGraphicsTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverLeaveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverLeaveEvent_h cobj_x0 cobj_x1

instance QhoverMoveEvent (QGraphicsTextItem ()) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_hoverMoveEvent_h" qtc_QGraphicsTextItem_hoverMoveEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneHoverEvent t1) -> IO ()

instance QhoverMoveEvent (QGraphicsTextItemSc a) ((QGraphicsSceneHoverEvent t1)) where
 hoverMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_hoverMoveEvent_h cobj_x0 cobj_x1

instance QinputMethodEvent (QGraphicsTextItem ()) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_inputMethodEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_inputMethodEvent_h" qtc_QGraphicsTextItem_inputMethodEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQInputMethodEvent t1) -> IO ()

instance QinputMethodEvent (QGraphicsTextItemSc a) ((QInputMethodEvent t1)) where
 inputMethodEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_inputMethodEvent_h cobj_x0 cobj_x1

instance QinputMethodQuery (QGraphicsTextItem ()) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_inputMethodQuery_h" qtc_QGraphicsTextItem_inputMethodQuery_h :: Ptr (TQGraphicsTextItem a) -> CLong -> IO (Ptr (TQVariant ()))

instance QinputMethodQuery (QGraphicsTextItemSc a) ((InputMethodQuery)) where
 inputMethodQuery x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_inputMethodQuery_h cobj_x0 (toCLong $ qEnum_toInt x1)

instance QisObscuredBy (QGraphicsTextItem ()) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isObscuredBy_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_isObscuredBy_h" qtc_QGraphicsTextItem_isObscuredBy_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsTextItemSc a) ((QGraphicsItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isObscuredBy_h cobj_x0 cobj_x1

instance QisObscuredBy (QGraphicsTextItem ()) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_isObscuredBy_graphicstextitem_h" qtc_QGraphicsTextItem_isObscuredBy_graphicstextitem_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisObscuredBy (QGraphicsTextItemSc a) ((QGraphicsTextItem t1)) where
 isObscuredBy x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isObscuredBy_graphicstextitem_h cobj_x0 cobj_x1

instance QkeyPressEvent (QGraphicsTextItem ()) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_keyPressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_keyPressEvent_h" qtc_QGraphicsTextItem_keyPressEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyPressEvent (QGraphicsTextItemSc a) ((QKeyEvent t1)) where
 keyPressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_keyPressEvent_h cobj_x0 cobj_x1

instance QkeyReleaseEvent (QGraphicsTextItem ()) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_keyReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_keyReleaseEvent_h" qtc_QGraphicsTextItem_keyReleaseEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQKeyEvent t1) -> IO ()

instance QkeyReleaseEvent (QGraphicsTextItemSc a) ((QKeyEvent t1)) where
 keyReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_keyReleaseEvent_h cobj_x0 cobj_x1

instance QmouseDoubleClickEvent (QGraphicsTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mouseDoubleClickEvent_h" qtc_QGraphicsTextItem_mouseDoubleClickEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseDoubleClickEvent (QGraphicsTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseDoubleClickEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseDoubleClickEvent_h cobj_x0 cobj_x1

instance QmouseMoveEvent (QGraphicsTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseMoveEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mouseMoveEvent_h" qtc_QGraphicsTextItem_mouseMoveEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseMoveEvent (QGraphicsTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseMoveEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseMoveEvent_h cobj_x0 cobj_x1

instance QmousePressEvent (QGraphicsTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mousePressEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mousePressEvent_h" qtc_QGraphicsTextItem_mousePressEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmousePressEvent (QGraphicsTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mousePressEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mousePressEvent_h cobj_x0 cobj_x1

instance QmouseReleaseEvent (QGraphicsTextItem ()) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseReleaseEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mouseReleaseEvent_h" qtc_QGraphicsTextItem_mouseReleaseEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneMouseEvent t1) -> IO ()

instance QmouseReleaseEvent (QGraphicsTextItemSc a) ((QGraphicsSceneMouseEvent t1)) where
 mouseReleaseEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mouseReleaseEvent_h cobj_x0 cobj_x1

instance QopaqueArea (QGraphicsTextItem ()) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_opaqueArea_h cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_opaqueArea_h" qtc_QGraphicsTextItem_opaqueArea_h :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQPainterPath ()))

instance QopaqueArea (QGraphicsTextItemSc a) (()) where
 opaqueArea x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_opaqueArea_h cobj_x0

instance QopenExternalLinks (QGraphicsTextItem a) (()) where
 openExternalLinks x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_openExternalLinks cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_openExternalLinks" qtc_QGraphicsTextItem_openExternalLinks :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance Qpaint (QGraphicsTextItem ()) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsTextItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

foreign import ccall "qtc_QGraphicsTextItem_paint_h" qtc_QGraphicsTextItem_paint_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainter t1) -> Ptr (TQStyleOptionGraphicsItem t2) -> Ptr (TQWidget t3) -> IO ()

instance Qpaint (QGraphicsTextItemSc a) ((QPainter t1, QStyleOptionGraphicsItem t2, QWidget t3)) where
 paint x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QGraphicsTextItem_paint_h cobj_x0 cobj_x1 cobj_x2 cobj_x3

instance QsceneEvent (QGraphicsTextItem ()) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_sceneEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_sceneEvent_h" qtc_QGraphicsTextItem_sceneEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQEvent t1) -> IO CBool

instance QsceneEvent (QGraphicsTextItemSc a) ((QEvent t1)) where
 sceneEvent x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_sceneEvent_h cobj_x0 cobj_x1

setDefaultTextColor :: QGraphicsTextItem a -> ((QColor t1)) -> IO ()
setDefaultTextColor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setDefaultTextColor cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setDefaultTextColor" qtc_QGraphicsTextItem_setDefaultTextColor :: Ptr (TQGraphicsTextItem a) -> Ptr (TQColor t1) -> IO ()

instance QsetDocument (QGraphicsTextItem a) ((QTextDocument t1)) where
 setDocument x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setDocument cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setDocument" qtc_QGraphicsTextItem_setDocument :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTextDocument t1) -> IO ()

instance QsetExtension (QGraphicsTextItem ()) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_setExtension" qtc_QGraphicsTextItem_setExtension :: Ptr (TQGraphicsTextItem a) -> CLong -> Ptr (TQVariant t2) -> IO ()

instance QsetExtension (QGraphicsTextItemSc a) ((QGraphicsItemExtension, QVariant t2)) where
 setExtension x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_setExtension cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QsetFont (QGraphicsTextItem a) ((QFont t1)) where
 setFont x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setFont cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setFont" qtc_QGraphicsTextItem_setFont :: Ptr (TQGraphicsTextItem a) -> Ptr (TQFont t1) -> IO ()

instance QsetHtml (QGraphicsTextItem a) ((String)) where
 setHtml x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_setHtml cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_setHtml" qtc_QGraphicsTextItem_setHtml :: Ptr (TQGraphicsTextItem a) -> CWString -> IO ()

instance QsetOpenExternalLinks (QGraphicsTextItem a) ((Bool)) where
 setOpenExternalLinks x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setOpenExternalLinks cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setOpenExternalLinks" qtc_QGraphicsTextItem_setOpenExternalLinks :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetPlainText (QGraphicsTextItem a) ((String)) where
 setPlainText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_setPlainText cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_setPlainText" qtc_QGraphicsTextItem_setPlainText :: Ptr (TQGraphicsTextItem a) -> CWString -> IO ()

instance QsetTextCursor (QGraphicsTextItem a) ((QTextCursor t1)) where
 setTextCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setTextCursor cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setTextCursor" qtc_QGraphicsTextItem_setTextCursor :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTextCursor t1) -> IO ()

instance QsetTextInteractionFlags (QGraphicsTextItem a) ((TextInteractionFlags)) where
 setTextInteractionFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setTextInteractionFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_setTextInteractionFlags" qtc_QGraphicsTextItem_setTextInteractionFlags :: Ptr (TQGraphicsTextItem a) -> CLong -> IO ()

instance QsetTextWidth (QGraphicsTextItem a) ((Double)) where
 setTextWidth x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setTextWidth cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsTextItem_setTextWidth" qtc_QGraphicsTextItem_setTextWidth :: Ptr (TQGraphicsTextItem a) -> CDouble -> IO ()

instance Qshape (QGraphicsTextItem ()) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_shape_h cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_shape_h" qtc_QGraphicsTextItem_shape_h :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQPainterPath ()))

instance Qshape (QGraphicsTextItemSc a) (()) (IO (QPainterPath ())) where
 shape x0 ()
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_shape_h cobj_x0

instance QsupportsExtension (QGraphicsTextItem ()) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_supportsExtension" qtc_QGraphicsTextItem_supportsExtension :: Ptr (TQGraphicsTextItem a) -> CLong -> IO CBool

instance QsupportsExtension (QGraphicsTextItemSc a) ((QGraphicsItemExtension)) where
 supportsExtension x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_supportsExtension cobj_x0 (toCLong $ qEnum_toInt x1)

instance QtextCursor (QGraphicsTextItem a) (()) where
 textCursor x0 ()
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_textCursor cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_textCursor" qtc_QGraphicsTextItem_textCursor :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQTextCursor ()))

instance QtextInteractionFlags (QGraphicsTextItem a) (()) where
 textInteractionFlags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_textInteractionFlags cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_textInteractionFlags" qtc_QGraphicsTextItem_textInteractionFlags :: Ptr (TQGraphicsTextItem a) -> IO CLong

instance QtextWidth (QGraphicsTextItem a) (()) where
 textWidth x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_textWidth cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_textWidth" qtc_QGraphicsTextItem_textWidth :: Ptr (TQGraphicsTextItem a) -> IO CDouble

instance QtoHtml (QGraphicsTextItem a) (()) where
 toHtml x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_toHtml cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_toHtml" qtc_QGraphicsTextItem_toHtml :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQString ()))

instance QtoPlainText (QGraphicsTextItem a) (()) where
 toPlainText x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_toPlainText cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_toPlainText" qtc_QGraphicsTextItem_toPlainText :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQString ()))

instance Qqtype (QGraphicsTextItem ()) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_type_h cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_type_h" qtc_QGraphicsTextItem_type_h :: Ptr (TQGraphicsTextItem a) -> IO CInt

instance Qqtype (QGraphicsTextItemSc a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_type_h cobj_x0

qGraphicsTextItem_delete :: QGraphicsTextItem a -> IO ()
qGraphicsTextItem_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_delete cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_delete" qtc_QGraphicsTextItem_delete :: Ptr (TQGraphicsTextItem a) -> IO ()

qGraphicsTextItem_deleteLater :: QGraphicsTextItem a -> IO ()
qGraphicsTextItem_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_deleteLater cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_deleteLater" qtc_QGraphicsTextItem_deleteLater :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QacceptDrops (QGraphicsTextItem a) (()) where
 acceptDrops x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_acceptDrops cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_acceptDrops" qtc_QGraphicsTextItem_acceptDrops :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QacceptedMouseButtons (QGraphicsTextItem a) (()) where
 acceptedMouseButtons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_acceptedMouseButtons cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_acceptedMouseButtons" qtc_QGraphicsTextItem_acceptedMouseButtons :: Ptr (TQGraphicsTextItem a) -> IO CLong

instance QacceptsHoverEvents (QGraphicsTextItem a) (()) where
 acceptsHoverEvents x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_acceptsHoverEvents cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_acceptsHoverEvents" qtc_QGraphicsTextItem_acceptsHoverEvents :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QaddToIndex (QGraphicsTextItem ()) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_addToIndex cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_addToIndex" qtc_QGraphicsTextItem_addToIndex :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QaddToIndex (QGraphicsTextItemSc a) (()) where
 addToIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_addToIndex cobj_x0

instance Qadvance (QGraphicsTextItem ()) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_advance_h cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsTextItem_advance_h" qtc_QGraphicsTextItem_advance_h :: Ptr (TQGraphicsTextItem a) -> CInt -> IO ()

instance Qadvance (QGraphicsTextItemSc a) ((Int)) where
 advance x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_advance_h cobj_x0 (toCInt x1)

instance QqchildrenBoundingRect (QGraphicsTextItem a) (()) where
 qchildrenBoundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_childrenBoundingRect cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_childrenBoundingRect" qtc_QGraphicsTextItem_childrenBoundingRect :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQRectF ()))

instance QchildrenBoundingRect (QGraphicsTextItem a) (()) where
 childrenBoundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_childrenBoundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsTextItem_childrenBoundingRect_qth" qtc_QGraphicsTextItem_childrenBoundingRect_qth :: Ptr (TQGraphicsTextItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QclearFocus (QGraphicsTextItem a) (()) where
 clearFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_clearFocus cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_clearFocus" qtc_QGraphicsTextItem_clearFocus :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QcollidesWithItem (QGraphicsTextItem ()) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_collidesWithItem_h" qtc_QGraphicsTextItem_collidesWithItem_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsTextItemSc a) ((QGraphicsItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsTextItem ()) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsTextItem_collidesWithItem1_h" qtc_QGraphicsTextItem_collidesWithItem1_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsTextItemSc a) ((QGraphicsItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithItem (QGraphicsTextItem ()) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_collidesWithItem_graphicstextitem_h" qtc_QGraphicsTextItem_collidesWithItem_graphicstextitem_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QcollidesWithItem (QGraphicsTextItemSc a) ((QGraphicsTextItem t1)) where
 collidesWithItem x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem_graphicstextitem_h cobj_x0 cobj_x1

instance QcollidesWithItem (QGraphicsTextItem ()) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsTextItem_collidesWithItem1_graphicstextitem_h" qtc_QGraphicsTextItem_collidesWithItem1_graphicstextitem_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CLong -> IO CBool

instance QcollidesWithItem (QGraphicsTextItemSc a) ((QGraphicsTextItem t1, ItemSelectionMode)) where
 collidesWithItem x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithItem1_graphicstextitem_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidesWithPath (QGraphicsTextItem ()) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithPath_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_collidesWithPath_h" qtc_QGraphicsTextItem_collidesWithPath_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> IO CBool

instance QcollidesWithPath (QGraphicsTextItemSc a) ((QPainterPath t1)) where
 collidesWithPath x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithPath_h cobj_x0 cobj_x1

instance QcollidesWithPath (QGraphicsTextItem ()) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QGraphicsTextItem_collidesWithPath1_h" qtc_QGraphicsTextItem_collidesWithPath1_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> CLong -> IO CBool

instance QcollidesWithPath (QGraphicsTextItemSc a) ((QPainterPath t1, ItemSelectionMode)) where
 collidesWithPath x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_collidesWithPath1_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QcollidingItems (QGraphicsTextItem a) (()) where
 collidingItems x0 ()
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_collidingItems cobj_x0 arr

foreign import ccall "qtc_QGraphicsTextItem_collidingItems" qtc_QGraphicsTextItem_collidingItems :: Ptr (TQGraphicsTextItem a) -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance QcollidingItems (QGraphicsTextItem a) ((ItemSelectionMode)) where
 collidingItems x0 (x1)
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_collidingItems1 cobj_x0 (toCLong $ qEnum_toInt x1) arr

foreign import ccall "qtc_QGraphicsTextItem_collidingItems1" qtc_QGraphicsTextItem_collidingItems1 :: Ptr (TQGraphicsTextItem a) -> CLong -> Ptr (Ptr (TQGraphicsItem ())) -> IO CInt

instance Qcursor (QGraphicsTextItem a) (()) where
 cursor x0 ()
  = withQCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_cursor cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_cursor" qtc_QGraphicsTextItem_cursor :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQCursor ()))

instance Qqdata (QGraphicsTextItem ()) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_data cobj_x0 (toCInt x1)

foreign import ccall "qtc_QGraphicsTextItem_data" qtc_QGraphicsTextItem_data :: Ptr (TQGraphicsTextItem a) -> CInt -> IO (Ptr (TQVariant ()))

instance Qqdata (QGraphicsTextItemSc a) ((Int)) (IO (QVariant ())) where
 qdata x0 (x1)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_data cobj_x0 (toCInt x1)

instance Qqdata_nf (QGraphicsTextItem ()) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_data cobj_x0 (toCInt x1)

instance Qqdata_nf (QGraphicsTextItemSc a) ((Int)) (IO (QVariant ())) where
 qdata_nf x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_data cobj_x0 (toCInt x1)

instance QdeviceTransform (QGraphicsTextItem a) ((QTransform t1)) where
 deviceTransform x0 (x1)
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_deviceTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_deviceTransform" qtc_QGraphicsTextItem_deviceTransform :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTransform t1) -> IO (Ptr (TQTransform ()))

instance QensureVisible (QGraphicsTextItem a) (()) where
 ensureVisible x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_ensureVisible cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible" qtc_QGraphicsTextItem_ensureVisible :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((Double, Double, Double, Double)) where
 ensureVisible x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_ensureVisible4 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible4" qtc_QGraphicsTextItem_ensureVisible4 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((Double, Double, Double, Double, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_ensureVisible5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible5" qtc_QGraphicsTextItem_ensureVisible5 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((Double, Double, Double, Double, Int, Int)) where
 ensureVisible x0 (x1, x2, x3, x4, x5, x6)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_ensureVisible6 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCInt x5) (toCInt x6)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible6" qtc_QGraphicsTextItem_ensureVisible6 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance QqensureVisible (QGraphicsTextItem a) ((QRectF t1)) where
 qensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_ensureVisible1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible1" qtc_QGraphicsTextItem_ensureVisible1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO ()

instance QqensureVisible (QGraphicsTextItem a) ((QRectF t1, Int)) where
 qensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_ensureVisible2 cobj_x0 cobj_x1 (toCInt x2)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible2" qtc_QGraphicsTextItem_ensureVisible2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> CInt -> IO ()

instance QqensureVisible (QGraphicsTextItem a) ((QRectF t1, Int, Int)) where
 qensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_ensureVisible3 cobj_x0 cobj_x1 (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible3" qtc_QGraphicsTextItem_ensureVisible3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> CInt -> CInt -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((RectF)) where
 ensureVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_ensureVisible1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible1_qth" qtc_QGraphicsTextItem_ensureVisible1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((RectF, Int)) where
 ensureVisible x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_ensureVisible2_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible2_qth" qtc_QGraphicsTextItem_ensureVisible2_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> IO ()

instance QensureVisible (QGraphicsTextItem a) ((RectF, Int, Int)) where
 ensureVisible x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_ensureVisible3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h  (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QGraphicsTextItem_ensureVisible3_qth" qtc_QGraphicsTextItem_ensureVisible3_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> CInt -> CInt -> IO ()

instance Qflags (QGraphicsTextItem a) (()) (IO (GraphicsItemFlags)) where
 flags x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_flags cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_flags" qtc_QGraphicsTextItem_flags :: Ptr (TQGraphicsTextItem a) -> IO CLong

instance Qgroup (QGraphicsTextItem a) (()) (IO (QGraphicsItemGroup ())) where
 group x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_group cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_group" qtc_QGraphicsTextItem_group :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQGraphicsItemGroup ()))

instance QhandlesChildEvents (QGraphicsTextItem a) (()) where
 handlesChildEvents x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_handlesChildEvents cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_handlesChildEvents" qtc_QGraphicsTextItem_handlesChildEvents :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QhasCursor (QGraphicsTextItem a) (()) where
 hasCursor x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_hasCursor cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_hasCursor" qtc_QGraphicsTextItem_hasCursor :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QhasFocus (QGraphicsTextItem a) (()) where
 hasFocus x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_hasFocus cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_hasFocus" qtc_QGraphicsTextItem_hasFocus :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance Qhide (QGraphicsTextItem a) (()) where
 hide x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_hide cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_hide" qtc_QGraphicsTextItem_hide :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QinstallSceneEventFilter (QGraphicsTextItem a) ((QGraphicsItem t1)) where
 installSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_installSceneEventFilter cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_installSceneEventFilter" qtc_QGraphicsTextItem_installSceneEventFilter :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QinstallSceneEventFilter (QGraphicsTextItem a) ((QGraphicsTextItem t1)) where
 installSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_installSceneEventFilter_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_installSceneEventFilter_graphicstextitem" qtc_QGraphicsTextItem_installSceneEventFilter_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QisAncestorOf (QGraphicsTextItem a) ((QGraphicsItem t1)) where
 isAncestorOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isAncestorOf cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_isAncestorOf" qtc_QGraphicsTextItem_isAncestorOf :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO CBool

instance QisAncestorOf (QGraphicsTextItem a) ((QGraphicsTextItem t1)) where
 isAncestorOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isAncestorOf_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_isAncestorOf_graphicstextitem" qtc_QGraphicsTextItem_isAncestorOf_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO CBool

instance QisEnabled (QGraphicsTextItem a) (()) where
 isEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_isEnabled cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_isEnabled" qtc_QGraphicsTextItem_isEnabled :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QisObscured (QGraphicsTextItem a) (()) where
 isObscured x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_isObscured cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_isObscured" qtc_QGraphicsTextItem_isObscured :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QisObscured (QGraphicsTextItem a) ((Double, Double, Double, Double)) where
 isObscured x0 (x1, x2, x3, x4)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_isObscured2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_isObscured2" qtc_QGraphicsTextItem_isObscured2 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QqisObscured (QGraphicsTextItem a) ((QRectF t1)) where
 qisObscured x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_isObscured1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_isObscured1" qtc_QGraphicsTextItem_isObscured1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO CBool

instance QisObscured (QGraphicsTextItem a) ((RectF)) where
 isObscured x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_isObscured1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_isObscured1_qth" qtc_QGraphicsTextItem_isObscured1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO CBool

instance QisSelected (QGraphicsTextItem a) (()) where
 isSelected x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_isSelected cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_isSelected" qtc_QGraphicsTextItem_isSelected :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QisVisible (QGraphicsTextItem a) (()) where
 isVisible x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_isVisible cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_isVisible" qtc_QGraphicsTextItem_isVisible :: Ptr (TQGraphicsTextItem a) -> IO CBool

instance QitemChange (QGraphicsTextItem ()) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_itemChange_h" qtc_QGraphicsTextItem_itemChange_h :: Ptr (TQGraphicsTextItem a) -> CLong -> Ptr (TQVariant t2) -> IO (Ptr (TQVariant ()))

instance QitemChange (QGraphicsTextItemSc a) ((GraphicsItemChange, QVariant t2)) where
 itemChange x0 (x1, x2)
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_itemChange_h cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double)) (IO (PointF)) where
 mapFromItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem4_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem4_qth" qtc_QGraphicsTextItem_mapFromItem4_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, PointF)) (IO (PointF)) where
 mapFromItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsTextItem_mapFromItem2_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem2_qth" qtc_QGraphicsTextItem_mapFromItem2_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (PointF)) where
 mapFromItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem_qth" qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, PointF)) (IO (PointF)) where
 mapFromItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem_qth" qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapFromItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem3" qtc_QGraphicsTextItem_mapFromItem3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapFromItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem3_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem3_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem3_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem4 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem4" qtc_QGraphicsTextItem_mapFromItem4 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem2" qtc_QGraphicsTextItem_mapFromItem2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem4_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem2_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem5 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem5" qtc_QGraphicsTextItem_mapFromItem5 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem1" qtc_QGraphicsTextItem_mapFromItem1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem" qtc_QGraphicsTextItem_mapFromItem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsItem t1, RectF)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsTextItem_mapFromItem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem_qth" qtc_QGraphicsTextItem_mapFromItem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromItem5_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem5_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem5_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem1_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem1_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem1_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapFromItem_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem_graphicstextitem" qtc_QGraphicsTextItem_mapFromItem_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapFromItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, RectF)) (IO (QPolygonF ())) where
 mapFromItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsTextItem_mapFromItem_graphicstextitem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsTextItem_mapFromItem_graphicstextitem_qth" qtc_QGraphicsTextItem_mapFromItem_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsTextItem a) ((Double, Double)) (IO (PointF)) where
 mapFromParent x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromParent4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent4_qth" qtc_QGraphicsTextItem_mapFromParent4_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromParent (QGraphicsTextItem a) ((PointF)) (IO (PointF)) where
 mapFromParent x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_mapFromParent1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent1_qth" qtc_QGraphicsTextItem_mapFromParent1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromParent (QGraphicsTextItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapFromParent x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromParent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent" qtc_QGraphicsTextItem_mapFromParent :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromParent (QGraphicsTextItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapFromParent x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromParent4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent4" qtc_QGraphicsTextItem_mapFromParent4 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromParent (QGraphicsTextItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapFromParent x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromParent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent1" qtc_QGraphicsTextItem_mapFromParent1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapFromParent (QGraphicsTextItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromParent5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent5" qtc_QGraphicsTextItem_mapFromParent5 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsTextItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromParent2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent2" qtc_QGraphicsTextItem_mapFromParent2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromParent (QGraphicsTextItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromParent3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent3" qtc_QGraphicsTextItem_mapFromParent3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapFromParent (QGraphicsTextItem a) ((RectF)) (IO (QPolygonF ())) where
 mapFromParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_mapFromParent3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_mapFromParent3_qth" qtc_QGraphicsTextItem_mapFromParent3_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsTextItem a) ((Double, Double)) (IO (PointF)) where
 mapFromScene x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromScene4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene4_qth" qtc_QGraphicsTextItem_mapFromScene4_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromScene (QGraphicsTextItem a) ((PointF)) (IO (PointF)) where
 mapFromScene x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_mapFromScene1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene1_qth" qtc_QGraphicsTextItem_mapFromScene1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapFromScene (QGraphicsTextItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapFromScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene" qtc_QGraphicsTextItem_mapFromScene :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapFromScene (QGraphicsTextItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapFromScene x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromScene4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene4" qtc_QGraphicsTextItem_mapFromScene4 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapFromScene (QGraphicsTextItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapFromScene x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene1" qtc_QGraphicsTextItem_mapFromScene1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapFromScene (QGraphicsTextItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapFromScene5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene5" qtc_QGraphicsTextItem_mapFromScene5 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsTextItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene2" qtc_QGraphicsTextItem_mapFromScene2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapFromScene (QGraphicsTextItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapFromScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene3" qtc_QGraphicsTextItem_mapFromScene3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapFromScene (QGraphicsTextItem a) ((RectF)) (IO (QPolygonF ())) where
 mapFromScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_mapFromScene3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_mapFromScene3_qth" qtc_QGraphicsTextItem_mapFromScene3_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double)) (IO (PointF)) where
 mapToItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem4_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToItem4_qth" qtc_QGraphicsTextItem_mapToItem4_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, PointF)) (IO (PointF)) where
 mapToItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsTextItem_mapToItem1_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToItem1_qth" qtc_QGraphicsTextItem_mapToItem1_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (PointF)) where
 mapToItem x0 (x1, x2, x3)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem4_graphicstextitem_qth cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToItem4_graphicstextitem_qth" qtc_QGraphicsTextItem_mapToItem4_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, PointF)) (IO (PointF)) where
 mapToItem x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCPointF x2 $ \cpointf_x2_x cpointf_x2_y -> 
    qtc_QGraphicsTextItem_mapToItem1_graphicstextitem_qth cobj_x0 cobj_x1 cpointf_x2_x cpointf_x2_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToItem1_graphicstextitem_qth" qtc_QGraphicsTextItem_mapToItem1_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapToItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem" qtc_QGraphicsTextItem_mapToItem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPainterPath t2)) (IO (QPainterPath ())) where
 mapToItem x0 (x1, x2)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem_graphicstextitem" qtc_QGraphicsTextItem_mapToItem_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPainterPath t2) -> IO (Ptr (TQPainterPath ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem4 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsTextItem_mapToItem4" qtc_QGraphicsTextItem_mapToItem4 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem1 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem1" qtc_QGraphicsTextItem_mapToItem1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2, x3)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem4_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3)

foreign import ccall "qtc_QGraphicsTextItem_mapToItem4_graphicstextitem" qtc_QGraphicsTextItem_mapToItem4_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPointF t2)) (IO (QPointF ())) where
 qmapToItem x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem1_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem1_graphicstextitem" qtc_QGraphicsTextItem_mapToItem1_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPointF t2) -> IO (Ptr (TQPointF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem5 cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsTextItem_mapToItem5" qtc_QGraphicsTextItem_mapToItem5 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem2 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem2" qtc_QGraphicsTextItem_mapToItem2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem3 cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem3" qtc_QGraphicsTextItem_mapToItem3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsItem t1, RectF)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsTextItem_mapToItem3_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsTextItem_mapToItem3_qth" qtc_QGraphicsTextItem_mapToItem3_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2, x3, x4, x5)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToItem5_graphicstextitem cobj_x0 cobj_x1 (toCDouble x2) (toCDouble x3) (toCDouble x4) (toCDouble x5)

foreign import ccall "qtc_QGraphicsTextItem_mapToItem5_graphicstextitem" qtc_QGraphicsTextItem_mapToItem5_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QPolygonF t2)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem2_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem2_graphicstextitem" qtc_QGraphicsTextItem_mapToItem2_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQPolygonF t2) -> IO (Ptr (TQPolygonF ()))

instance QqmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, QRectF t2)) (IO (QPolygonF ())) where
 qmapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_mapToItem3_graphicstextitem cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_mapToItem3_graphicstextitem" qtc_QGraphicsTextItem_mapToItem3_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQRectF t2) -> IO (Ptr (TQPolygonF ()))

instance QmapToItem (QGraphicsTextItem a) ((QGraphicsTextItem t1, RectF)) (IO (QPolygonF ())) where
 mapToItem x0 (x1, x2)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    qtc_QGraphicsTextItem_mapToItem3_graphicstextitem_qth cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h 

foreign import ccall "qtc_QGraphicsTextItem_mapToItem3_graphicstextitem_qth" qtc_QGraphicsTextItem_mapToItem3_graphicstextitem_qth :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsTextItem a) ((Double, Double)) (IO (PointF)) where
 mapToParent x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToParent4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToParent4_qth" qtc_QGraphicsTextItem_mapToParent4_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToParent (QGraphicsTextItem a) ((PointF)) (IO (PointF)) where
 mapToParent x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_mapToParent1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToParent1_qth" qtc_QGraphicsTextItem_mapToParent1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToParent (QGraphicsTextItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapToParent x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToParent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToParent" qtc_QGraphicsTextItem_mapToParent :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapToParent (QGraphicsTextItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapToParent x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToParent4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_mapToParent4" qtc_QGraphicsTextItem_mapToParent4 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToParent (QGraphicsTextItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapToParent x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToParent1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToParent1" qtc_QGraphicsTextItem_mapToParent1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapToParent (QGraphicsTextItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToParent x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToParent5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_mapToParent5" qtc_QGraphicsTextItem_mapToParent5 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsTextItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToParent2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToParent2" qtc_QGraphicsTextItem_mapToParent2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapToParent (QGraphicsTextItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToParent3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToParent3" qtc_QGraphicsTextItem_mapToParent3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapToParent (QGraphicsTextItem a) ((RectF)) (IO (QPolygonF ())) where
 mapToParent x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_mapToParent3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_mapToParent3_qth" qtc_QGraphicsTextItem_mapToParent3_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsTextItem a) ((Double, Double)) (IO (PointF)) where
 mapToScene x0 (x1, x2)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToScene4_qth cobj_x0 (toCDouble x1) (toCDouble x2) cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToScene4_qth" qtc_QGraphicsTextItem_mapToScene4_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsTextItem a) ((PointF)) (IO (PointF)) where
 mapToScene x0 (x1)
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_mapToScene1_qth cobj_x0 cpointf_x1_x cpointf_x1_y  cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_mapToScene1_qth" qtc_QGraphicsTextItem_mapToScene1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QmapToScene (QGraphicsTextItem a) ((QPainterPath t1)) (IO (QPainterPath ())) where
 mapToScene x0 (x1)
  = withQPainterPathResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToScene cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToScene" qtc_QGraphicsTextItem_mapToScene :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPainterPath t1) -> IO (Ptr (TQPainterPath ()))

instance QqmapToScene (QGraphicsTextItem a) ((Double, Double)) (IO (QPointF ())) where
 qmapToScene x0 (x1, x2)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToScene4 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_mapToScene4" qtc_QGraphicsTextItem_mapToScene4 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO (Ptr (TQPointF ()))

instance QqmapToScene (QGraphicsTextItem a) ((QPointF t1)) (IO (QPointF ())) where
 qmapToScene x0 (x1)
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToScene1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToScene1" qtc_QGraphicsTextItem_mapToScene1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO (Ptr (TQPointF ()))

instance QmapToScene (QGraphicsTextItem a) ((Double, Double, Double, Double)) (IO (QPolygonF ())) where
 mapToScene x0 (x1, x2, x3, x4)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_mapToScene5 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_mapToScene5" qtc_QGraphicsTextItem_mapToScene5 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsTextItem a) ((QPolygonF t1)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToScene2 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToScene2" qtc_QGraphicsTextItem_mapToScene2 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPolygonF t1) -> IO (Ptr (TQPolygonF ()))

instance QqmapToScene (QGraphicsTextItem a) ((QRectF t1)) (IO (QPolygonF ())) where
 qmapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_mapToScene3 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_mapToScene3" qtc_QGraphicsTextItem_mapToScene3 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO (Ptr (TQPolygonF ()))

instance QmapToScene (QGraphicsTextItem a) ((RectF)) (IO (QPolygonF ())) where
 mapToScene x0 (x1)
  = withQPolygonFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_mapToScene3_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_mapToScene3_qth" qtc_QGraphicsTextItem_mapToScene3_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQPolygonF ()))

instance Qmatrix (QGraphicsTextItem a) (()) where
 matrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_matrix cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_matrix" qtc_QGraphicsTextItem_matrix :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQMatrix ()))

instance QmoveBy (QGraphicsTextItem a) ((Double, Double)) where
 moveBy x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_moveBy cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_moveBy" qtc_QGraphicsTextItem_moveBy :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance QparentItem (QGraphicsTextItem a) (()) where
 parentItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_parentItem cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_parentItem" qtc_QGraphicsTextItem_parentItem :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQGraphicsItem ()))

instance Qpos (QGraphicsTextItem a) (()) (IO (PointF)) where
 pos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_pos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_pos_qth" qtc_QGraphicsTextItem_pos_qth :: Ptr (TQGraphicsTextItem a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance Qqpos (QGraphicsTextItem a) (()) (IO (QPointF ())) where
 qpos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_pos cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_pos" qtc_QGraphicsTextItem_pos :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQPointF ()))

instance QprepareGeometryChange (QGraphicsTextItem ()) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_prepareGeometryChange cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_prepareGeometryChange" qtc_QGraphicsTextItem_prepareGeometryChange :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QprepareGeometryChange (QGraphicsTextItemSc a) (()) where
 prepareGeometryChange x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_prepareGeometryChange cobj_x0

instance QremoveFromIndex (QGraphicsTextItem ()) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_removeFromIndex cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_removeFromIndex" qtc_QGraphicsTextItem_removeFromIndex :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QremoveFromIndex (QGraphicsTextItemSc a) (()) where
 removeFromIndex x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_removeFromIndex cobj_x0

instance QremoveSceneEventFilter (QGraphicsTextItem a) ((QGraphicsItem t1)) where
 removeSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_removeSceneEventFilter cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_removeSceneEventFilter" qtc_QGraphicsTextItem_removeSceneEventFilter :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QremoveSceneEventFilter (QGraphicsTextItem a) ((QGraphicsTextItem t1)) where
 removeSceneEventFilter x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_removeSceneEventFilter_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_removeSceneEventFilter_graphicstextitem" qtc_QGraphicsTextItem_removeSceneEventFilter_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QresetMatrix (QGraphicsTextItem a) (()) where
 resetMatrix x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_resetMatrix cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_resetMatrix" qtc_QGraphicsTextItem_resetMatrix :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QresetTransform (QGraphicsTextItem a) (()) where
 resetTransform x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_resetTransform cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_resetTransform" qtc_QGraphicsTextItem_resetTransform :: Ptr (TQGraphicsTextItem a) -> IO ()

instance Qrotate (QGraphicsTextItem a) ((Double)) where
 rotate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_rotate cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsTextItem_rotate" qtc_QGraphicsTextItem_rotate :: Ptr (TQGraphicsTextItem a) -> CDouble -> IO ()

instance Qqscale (QGraphicsTextItem a) ((Double, Double)) where
 qscale x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_scale cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_scale" qtc_QGraphicsTextItem_scale :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance Qscene (QGraphicsTextItem a) (()) where
 scene x0 ()
  = withQGraphicsSceneResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_scene cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_scene" qtc_QGraphicsTextItem_scene :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQGraphicsScene ()))

instance QqsceneBoundingRect (QGraphicsTextItem a) (()) where
 qsceneBoundingRect x0 ()
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sceneBoundingRect cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_sceneBoundingRect" qtc_QGraphicsTextItem_sceneBoundingRect :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQRectF ()))

instance QsceneBoundingRect (QGraphicsTextItem a) (()) where
 sceneBoundingRect x0 ()
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sceneBoundingRect_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QGraphicsTextItem_sceneBoundingRect_qth" qtc_QGraphicsTextItem_sceneBoundingRect_qth :: Ptr (TQGraphicsTextItem a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QsceneEventFilter (QGraphicsTextItem ()) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_sceneEventFilter_h" qtc_QGraphicsTextItem_sceneEventFilter_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsTextItemSc a) ((QGraphicsItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_sceneEventFilter_h cobj_x0 cobj_x1 cobj_x2

instance QsceneEventFilter (QGraphicsTextItem ()) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_sceneEventFilter_graphicstextitem_h" qtc_QGraphicsTextItem_sceneEventFilter_graphicstextitem_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> Ptr (TQEvent t2) -> IO CBool

instance QsceneEventFilter (QGraphicsTextItemSc a) ((QGraphicsTextItem t1, QEvent t2)) where
 sceneEventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_sceneEventFilter_graphicstextitem_h cobj_x0 cobj_x1 cobj_x2

instance QsceneMatrix (QGraphicsTextItem a) (()) where
 sceneMatrix x0 ()
  = withQMatrixResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sceneMatrix cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_sceneMatrix" qtc_QGraphicsTextItem_sceneMatrix :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQMatrix ()))

instance QscenePos (QGraphicsTextItem a) (()) where
 scenePos x0 ()
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_scenePos_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QGraphicsTextItem_scenePos_qth" qtc_QGraphicsTextItem_scenePos_qth :: Ptr (TQGraphicsTextItem a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QqscenePos (QGraphicsTextItem a) (()) where
 qscenePos x0 ()
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_scenePos cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_scenePos" qtc_QGraphicsTextItem_scenePos :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQPointF ()))

instance QsceneTransform (QGraphicsTextItem a) (()) where
 sceneTransform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sceneTransform cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_sceneTransform" qtc_QGraphicsTextItem_sceneTransform :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQTransform ()))

instance QsetAcceptDrops (QGraphicsTextItem a) ((Bool)) where
 setAcceptDrops x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setAcceptDrops cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setAcceptDrops" qtc_QGraphicsTextItem_setAcceptDrops :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetAcceptedMouseButtons (QGraphicsTextItem a) ((MouseButtons)) where
 setAcceptedMouseButtons x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setAcceptedMouseButtons cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_setAcceptedMouseButtons" qtc_QGraphicsTextItem_setAcceptedMouseButtons :: Ptr (TQGraphicsTextItem a) -> CLong -> IO ()

instance QsetAcceptsHoverEvents (QGraphicsTextItem a) ((Bool)) where
 setAcceptsHoverEvents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setAcceptsHoverEvents cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setAcceptsHoverEvents" qtc_QGraphicsTextItem_setAcceptsHoverEvents :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetCursor (QGraphicsTextItem a) ((QCursor t1)) where
 setCursor x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setCursor cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setCursor" qtc_QGraphicsTextItem_setCursor :: Ptr (TQGraphicsTextItem a) -> Ptr (TQCursor t1) -> IO ()

instance QsetData (QGraphicsTextItem a) ((Int, QVariant t2)) (IO ()) where
 setData x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_setData cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_setData" qtc_QGraphicsTextItem_setData :: Ptr (TQGraphicsTextItem a) -> CInt -> Ptr (TQVariant t2) -> IO ()

instance QsetEnabled (QGraphicsTextItem a) ((Bool)) where
 setEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setEnabled" qtc_QGraphicsTextItem_setEnabled :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetFlag (QGraphicsTextItem a) ((GraphicsItemFlag)) where
 setFlag x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setFlag cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_setFlag" qtc_QGraphicsTextItem_setFlag :: Ptr (TQGraphicsTextItem a) -> CLong -> IO ()

instance QsetFlag (QGraphicsTextItem a) ((GraphicsItemFlag, Bool)) where
 setFlag x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setFlag1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCBool x2)

foreign import ccall "qtc_QGraphicsTextItem_setFlag1" qtc_QGraphicsTextItem_setFlag1 :: Ptr (TQGraphicsTextItem a) -> CLong -> CBool -> IO ()

instance QsetFlags (QGraphicsTextItem a) ((GraphicsItemFlags)) where
 setFlags x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setFlags cobj_x0 (toCLong $ qFlags_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_setFlags" qtc_QGraphicsTextItem_setFlags :: Ptr (TQGraphicsTextItem a) -> CLong -> IO ()

instance QsetFocus (QGraphicsTextItem a) (()) where
 setFocus x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setFocus cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_setFocus" qtc_QGraphicsTextItem_setFocus :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QsetFocus (QGraphicsTextItem a) ((FocusReason)) where
 setFocus x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setFocus1 cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QGraphicsTextItem_setFocus1" qtc_QGraphicsTextItem_setFocus1 :: Ptr (TQGraphicsTextItem a) -> CLong -> IO ()

instance QsetGroup (QGraphicsTextItem a) ((QGraphicsItemGroup t1)) where
 setGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setGroup cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setGroup" qtc_QGraphicsTextItem_setGroup :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItemGroup t1) -> IO ()

instance QsetHandlesChildEvents (QGraphicsTextItem a) ((Bool)) where
 setHandlesChildEvents x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setHandlesChildEvents cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setHandlesChildEvents" qtc_QGraphicsTextItem_setHandlesChildEvents :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetMatrix (QGraphicsTextItem a) ((QMatrix t1)) where
 setMatrix x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setMatrix cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setMatrix" qtc_QGraphicsTextItem_setMatrix :: Ptr (TQGraphicsTextItem a) -> Ptr (TQMatrix t1) -> IO ()

instance QsetMatrix (QGraphicsTextItem a) ((QMatrix t1, Bool)) where
 setMatrix x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setMatrix1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsTextItem_setMatrix1" qtc_QGraphicsTextItem_setMatrix1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQMatrix t1) -> CBool -> IO ()

instance QsetParentItem (QGraphicsTextItem a) ((QGraphicsItem t1)) where
 setParentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setParentItem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setParentItem" qtc_QGraphicsTextItem_setParentItem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsItem t1) -> IO ()

instance QsetParentItem (QGraphicsTextItem a) ((QGraphicsTextItem t1)) where
 setParentItem x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setParentItem_graphicstextitem cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setParentItem_graphicstextitem" qtc_QGraphicsTextItem_setParentItem_graphicstextitem :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsTextItem t1) -> IO ()

instance QsetPos (QGraphicsTextItem a) ((Double, Double)) where
 setPos x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setPos1 cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_setPos1" qtc_QGraphicsTextItem_setPos1 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance QsetPos (QGraphicsTextItem a) ((PointF)) where
 setPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QGraphicsTextItem_setPos_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QGraphicsTextItem_setPos_qth" qtc_QGraphicsTextItem_setPos_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance QqsetPos (QGraphicsTextItem a) ((QPointF t1)) where
 qsetPos x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setPos cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setPos" qtc_QGraphicsTextItem_setPos :: Ptr (TQGraphicsTextItem a) -> Ptr (TQPointF t1) -> IO ()

instance QsetSelected (QGraphicsTextItem a) ((Bool)) where
 setSelected x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setSelected cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setSelected" qtc_QGraphicsTextItem_setSelected :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetToolTip (QGraphicsTextItem a) ((String)) where
 setToolTip x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_setToolTip cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_setToolTip" qtc_QGraphicsTextItem_setToolTip :: Ptr (TQGraphicsTextItem a) -> CWString -> IO ()

instance QsetTransform (QGraphicsTextItem a) ((QTransform t1)) where
 setTransform x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setTransform cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_setTransform" qtc_QGraphicsTextItem_setTransform :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTransform t1) -> IO ()

instance QsetTransform (QGraphicsTextItem a) ((QTransform t1, Bool)) where
 setTransform x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_setTransform1 cobj_x0 cobj_x1 (toCBool x2)

foreign import ccall "qtc_QGraphicsTextItem_setTransform1" qtc_QGraphicsTextItem_setTransform1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTransform t1) -> CBool -> IO ()

instance QsetVisible (QGraphicsTextItem a) ((Bool)) where
 setVisible x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setVisible cobj_x0 (toCBool x1)

foreign import ccall "qtc_QGraphicsTextItem_setVisible" qtc_QGraphicsTextItem_setVisible :: Ptr (TQGraphicsTextItem a) -> CBool -> IO ()

instance QsetZValue (QGraphicsTextItem a) ((Double)) where
 setZValue x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_setZValue cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QGraphicsTextItem_setZValue" qtc_QGraphicsTextItem_setZValue :: Ptr (TQGraphicsTextItem a) -> CDouble -> IO ()

instance Qshear (QGraphicsTextItem a) ((Double, Double)) where
 shear x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_shear cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_shear" qtc_QGraphicsTextItem_shear :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance Qqshow (QGraphicsTextItem a) (()) where
 qshow x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_show cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_show" qtc_QGraphicsTextItem_show :: Ptr (TQGraphicsTextItem a) -> IO ()

instance QtoolTip (QGraphicsTextItem a) (()) where
 toolTip x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_toolTip cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_toolTip" qtc_QGraphicsTextItem_toolTip :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQString ()))

instance QtopLevelItem (QGraphicsTextItem a) (()) (IO (QGraphicsItem ())) where
 topLevelItem x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_topLevelItem cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_topLevelItem" qtc_QGraphicsTextItem_topLevelItem :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQGraphicsItem ()))

instance Qtransform (QGraphicsTextItem a) (()) where
 transform x0 ()
  = withQTransformResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_transform cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_transform" qtc_QGraphicsTextItem_transform :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQTransform ()))

instance Qqtranslate (QGraphicsTextItem a) ((Double, Double)) (IO ()) where
 qtranslate x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_translate cobj_x0 (toCDouble x1) (toCDouble x2)

foreign import ccall "qtc_QGraphicsTextItem_translate" qtc_QGraphicsTextItem_translate :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> IO ()

instance QunsetCursor (QGraphicsTextItem a) (()) where
 unsetCursor x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_unsetCursor cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_unsetCursor" qtc_QGraphicsTextItem_unsetCursor :: Ptr (TQGraphicsTextItem a) -> IO ()

instance Qupdate (QGraphicsTextItem a) (()) where
 update x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_update cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_update" qtc_QGraphicsTextItem_update :: Ptr (TQGraphicsTextItem a) -> IO ()

instance Qupdate (QGraphicsTextItem a) ((Double, Double, Double, Double)) where
 update x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_update2 cobj_x0 (toCDouble x1) (toCDouble x2) (toCDouble x3) (toCDouble x4)

foreign import ccall "qtc_QGraphicsTextItem_update2" qtc_QGraphicsTextItem_update2 :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance Qqupdate (QGraphicsTextItem a) ((QRectF t1)) where
 qupdate x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_update1 cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_update1" qtc_QGraphicsTextItem_update1 :: Ptr (TQGraphicsTextItem a) -> Ptr (TQRectF t1) -> IO ()

instance Qupdate (QGraphicsTextItem a) ((RectF)) where
 update x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y  crectf_x1_w crectf_x1_h -> 
    qtc_QGraphicsTextItem_update1_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h 

foreign import ccall "qtc_QGraphicsTextItem_update1_qth" qtc_QGraphicsTextItem_update1_qth :: Ptr (TQGraphicsTextItem a) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QwheelEvent (QGraphicsTextItem ()) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_wheelEvent_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_wheelEvent_h" qtc_QGraphicsTextItem_wheelEvent_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQGraphicsSceneWheelEvent t1) -> IO ()

instance QwheelEvent (QGraphicsTextItemSc a) ((QGraphicsSceneWheelEvent t1)) where
 wheelEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_wheelEvent_h cobj_x0 cobj_x1

instance Qqx (QGraphicsTextItem a) (()) (IO (Double)) where
 qx x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_x cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_x" qtc_QGraphicsTextItem_x :: Ptr (TQGraphicsTextItem a) -> IO CDouble

instance Qqy (QGraphicsTextItem a) (()) (IO (Double)) where
 qy x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_y cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_y" qtc_QGraphicsTextItem_y :: Ptr (TQGraphicsTextItem a) -> IO CDouble

instance QzValue (QGraphicsTextItem a) (()) where
 zValue x0 ()
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_zValue cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_zValue" qtc_QGraphicsTextItem_zValue :: Ptr (TQGraphicsTextItem a) -> IO CDouble

instance QchildEvent (QGraphicsTextItem ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_childEvent" qtc_QGraphicsTextItem_childEvent :: Ptr (TQGraphicsTextItem a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QGraphicsTextItemSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QGraphicsTextItem ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_connectNotify" qtc_QGraphicsTextItem_connectNotify :: Ptr (TQGraphicsTextItem a) -> CWString -> IO ()

instance QconnectNotify (QGraphicsTextItemSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QGraphicsTextItem ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_customEvent" qtc_QGraphicsTextItem_customEvent :: Ptr (TQGraphicsTextItem a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QGraphicsTextItemSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QGraphicsTextItem ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_disconnectNotify" qtc_QGraphicsTextItem_disconnectNotify :: Ptr (TQGraphicsTextItem a) -> CWString -> IO ()

instance QdisconnectNotify (QGraphicsTextItemSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QGraphicsTextItem ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_event_h" qtc_QGraphicsTextItem_event_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QGraphicsTextItemSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_event_h cobj_x0 cobj_x1

instance QeventFilter (QGraphicsTextItem ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QGraphicsTextItem_eventFilter_h" qtc_QGraphicsTextItem_eventFilter_h :: Ptr (TQGraphicsTextItem a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QGraphicsTextItemSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QGraphicsTextItem_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QGraphicsTextItem ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QGraphicsTextItem_receivers" qtc_QGraphicsTextItem_receivers :: Ptr (TQGraphicsTextItem a) -> CWString -> IO CInt

instance Qreceivers (QGraphicsTextItemSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QGraphicsTextItem_receivers cobj_x0 cstr_x1

instance Qsender (QGraphicsTextItem ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sender cobj_x0

foreign import ccall "qtc_QGraphicsTextItem_sender" qtc_QGraphicsTextItem_sender :: Ptr (TQGraphicsTextItem a) -> IO (Ptr (TQObject ()))

instance Qsender (QGraphicsTextItemSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QGraphicsTextItem_sender cobj_x0

instance QtimerEvent (QGraphicsTextItem ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QGraphicsTextItem_timerEvent" qtc_QGraphicsTextItem_timerEvent :: Ptr (TQGraphicsTextItem a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QGraphicsTextItemSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QGraphicsTextItem_timerEvent cobj_x0 cobj_x1

