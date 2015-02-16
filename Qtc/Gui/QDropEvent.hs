{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QDropEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QDropEvent (
  QqqDropEvent(..), QqDropEvent(..)
  ,QqqDropEvent_nf(..), QqDropEvent_nf(..)
  ,encodedData
  ,keyboardModifiers
  ,mouseButtons
  ,provides
  ,qDropEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqDropEvent x1 where
  qqDropEvent :: x1 -> IO (QDropEvent ())

class QqDropEvent x1 where
  qDropEvent :: x1 -> IO (QDropEvent ())

instance QqDropEvent ((QDropEvent t1)) where
 qDropEvent (x1)
  = withQDropEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDropEvent cobj_x1

foreign import ccall "qtc_QDropEvent" qtc_QDropEvent :: Ptr (TQDropEvent t1) -> IO (Ptr (TQDropEvent ()))

instance QqqDropEvent ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDropEvent (x1, x2, x3, x4, x5)
  = withQDropEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDropEvent1" qtc_QDropEvent1 :: Ptr (TQPoint t1) -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDropEvent ()))

instance QqDropEvent ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDropEvent (x1, x2, x3, x4, x5)
  = withQDropEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

foreign import ccall "qtc_QDropEvent2" qtc_QDropEvent2 :: CInt -> CInt -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> IO (Ptr (TQDropEvent ()))

instance QqqDropEvent ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qqDropEvent (x1, x2, x3, x4, x5, x6)
  = withQDropEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent3 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QDropEvent3" qtc_QDropEvent3 :: Ptr (TQPoint t1) -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> CLong -> IO (Ptr (TQDropEvent ()))

instance QqDropEvent ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qDropEvent (x1, x2, x3, x4, x5, x6)
  = withQDropEventResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent4 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

foreign import ccall "qtc_QDropEvent4" qtc_QDropEvent4 :: CInt -> CInt -> CLong -> Ptr (TQMimeData t3) -> CLong -> CLong -> CLong -> IO (Ptr (TQDropEvent ()))

class QqqDropEvent_nf x1 where
  qqDropEvent_nf :: x1 -> IO (QDropEvent ())

class QqDropEvent_nf x1 where
  qDropEvent_nf :: x1 -> IO (QDropEvent ())

instance QqDropEvent_nf ((QDropEvent t1)) where
 qDropEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QDropEvent cobj_x1

instance QqqDropEvent_nf ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qqDropEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent1 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqDropEvent_nf ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers)) where
 qDropEvent_nf (x1, x2, x3, x4, x5)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent2 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5)

instance QqqDropEvent_nf ((QPoint t1, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qqDropEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent3 cobj_x1 (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance QqDropEvent_nf ((Point, DropActions, QMimeData t3, MouseButtons, KeyboardModifiers, QEventType)) where
 qDropEvent_nf (x1, x2, x3, x4, x5, x6)
  = withObjectRefResult $
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QDropEvent4 cpoint_x1_x cpoint_x1_y  (toCLong $ qFlags_toInt x2) cobj_x3 (toCLong $ qFlags_toInt x4) (toCLong $ qFlags_toInt x5) (toCLong $ qEnum_toInt x6)

instance QacceptProposedAction (QDropEvent a) (()) where
 acceptProposedAction x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_acceptProposedAction cobj_x0

foreign import ccall "qtc_QDropEvent_acceptProposedAction" qtc_QDropEvent_acceptProposedAction :: Ptr (TQDropEvent a) -> IO ()

instance QdropAction (QDropEvent a) (()) where
 dropAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_dropAction cobj_x0

foreign import ccall "qtc_QDropEvent_dropAction" qtc_QDropEvent_dropAction :: Ptr (TQDropEvent a) -> IO CLong

encodedData :: QDropEvent a -> ((String)) -> IO (String)
encodedData x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDropEvent_encodedData cobj_x0 cstr_x1

foreign import ccall "qtc_QDropEvent_encodedData" qtc_QDropEvent_encodedData :: Ptr (TQDropEvent a) -> CWString -> IO (Ptr (TQString ()))

instance Qformat (QDropEvent a) ((Int)) (IO (String)) where
 format x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_format cobj_x0 (toCInt x1)

foreign import ccall "qtc_QDropEvent_format" qtc_QDropEvent_format :: Ptr (TQDropEvent a) -> CInt -> IO (Ptr (TQString ()))

keyboardModifiers :: QDropEvent a -> (()) -> IO (KeyboardModifiers)
keyboardModifiers x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_keyboardModifiers cobj_x0

foreign import ccall "qtc_QDropEvent_keyboardModifiers" qtc_QDropEvent_keyboardModifiers :: Ptr (TQDropEvent a) -> IO CLong

instance QmimeData (QDropEvent a) (()) where
 mimeData x0 ()
  = withQMimeDataResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_mimeData cobj_x0

foreign import ccall "qtc_QDropEvent_mimeData" qtc_QDropEvent_mimeData :: Ptr (TQDropEvent a) -> IO (Ptr (TQMimeData ()))

mouseButtons :: QDropEvent a -> (()) -> IO (MouseButtons)
mouseButtons x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_mouseButtons cobj_x0

foreign import ccall "qtc_QDropEvent_mouseButtons" qtc_QDropEvent_mouseButtons :: Ptr (TQDropEvent a) -> IO CLong

instance Qpos (QDropEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QDropEvent_pos_qth" qtc_QDropEvent_pos_qth :: Ptr (TQDropEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QDropEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_pos cobj_x0

foreign import ccall "qtc_QDropEvent_pos" qtc_QDropEvent_pos :: Ptr (TQDropEvent a) -> IO (Ptr (TQPoint ()))

instance QpossibleActions (QDropEvent a) (()) where
 possibleActions x0 ()
  = withQFlagsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_possibleActions cobj_x0

foreign import ccall "qtc_QDropEvent_possibleActions" qtc_QDropEvent_possibleActions :: Ptr (TQDropEvent a) -> IO CLong

instance QproposedAction (QDropEvent a) (()) where
 proposedAction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_proposedAction cobj_x0

foreign import ccall "qtc_QDropEvent_proposedAction" qtc_QDropEvent_proposedAction :: Ptr (TQDropEvent a) -> IO CLong

provides :: QDropEvent a -> ((String)) -> IO (Bool)
provides x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QDropEvent_provides cobj_x0 cstr_x1

foreign import ccall "qtc_QDropEvent_provides" qtc_QDropEvent_provides :: Ptr (TQDropEvent a) -> CWString -> IO CBool

instance QsetDropAction (QDropEvent a) ((DropAction)) where
 setDropAction x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_setDropAction cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QDropEvent_setDropAction" qtc_QDropEvent_setDropAction :: Ptr (TQDropEvent a) -> CLong -> IO ()

instance Qsource (QDropEvent a) (()) (IO (QWidget ())) where
 source x0 ()
  = withQWidgetResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_source cobj_x0

foreign import ccall "qtc_QDropEvent_source" qtc_QDropEvent_source :: Ptr (TQDropEvent a) -> IO (Ptr (TQWidget ()))

qDropEvent_delete :: QDropEvent a -> IO ()
qDropEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QDropEvent_delete cobj_x0

foreign import ccall "qtc_QDropEvent_delete" qtc_QDropEvent_delete :: Ptr (TQDropEvent a) -> IO ()

