{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QContextMenuEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QContextMenuEvent (
  QqqContextMenuEvent(..), QqContextMenuEvent(..)
  ,QqqContextMenuEvent_nf(..), QqContextMenuEvent_nf(..)
  ,qContextMenuEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QContextMenuEvent

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqContextMenuEvent x1 where
  qqContextMenuEvent :: x1 -> IO (QContextMenuEvent ())

class QqContextMenuEvent x1 where
  qContextMenuEvent :: x1 -> IO (QContextMenuEvent ())

instance QqContextMenuEvent ((QContextMenuEvent t1)) where
 qContextMenuEvent (x1)
  = withQContextMenuEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QContextMenuEvent cobj_x1

foreign import ccall "qtc_QContextMenuEvent" qtc_QContextMenuEvent :: Ptr (TQContextMenuEvent t1) -> IO (Ptr (TQContextMenuEvent ()))

instance QqqContextMenuEvent ((QContextMenuEventReason, QPoint t2)) where
 qqContextMenuEvent (x1, x2)
  = withQContextMenuEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QContextMenuEvent1 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QContextMenuEvent1" qtc_QContextMenuEvent1 :: CLong -> Ptr (TQPoint t2) -> IO (Ptr (TQContextMenuEvent ()))

instance QqContextMenuEvent ((QContextMenuEventReason, Point)) where
 qContextMenuEvent (x1, x2)
  = withQContextMenuEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QContextMenuEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y 

foreign import ccall "qtc_QContextMenuEvent2" qtc_QContextMenuEvent2 :: CLong -> CInt -> CInt -> IO (Ptr (TQContextMenuEvent ()))

instance QqqContextMenuEvent ((QContextMenuEventReason, QPoint t2, QPoint t3)) where
 qqContextMenuEvent (x1, x2, x3)
  = withQContextMenuEventResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QContextMenuEvent3 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

foreign import ccall "qtc_QContextMenuEvent3" qtc_QContextMenuEvent3 :: CLong -> Ptr (TQPoint t2) -> Ptr (TQPoint t3) -> IO (Ptr (TQContextMenuEvent ()))

instance QqContextMenuEvent ((QContextMenuEventReason, Point, Point)) where
 qContextMenuEvent (x1, x2, x3)
  = withQContextMenuEventResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QContextMenuEvent4 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

foreign import ccall "qtc_QContextMenuEvent4" qtc_QContextMenuEvent4 :: CLong -> CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQContextMenuEvent ()))

class QqqContextMenuEvent_nf x1 where
  qqContextMenuEvent_nf :: x1 -> IO (QContextMenuEvent ())

class QqContextMenuEvent_nf x1 where
  qContextMenuEvent_nf :: x1 -> IO (QContextMenuEvent ())

instance QqContextMenuEvent_nf ((QContextMenuEvent t1)) where
 qContextMenuEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QContextMenuEvent cobj_x1

instance QqqContextMenuEvent_nf ((QContextMenuEventReason, QPoint t2)) where
 qqContextMenuEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QContextMenuEvent1 (toCLong $ qEnum_toInt x1) cobj_x2

instance QqContextMenuEvent_nf ((QContextMenuEventReason, Point)) where
 qContextMenuEvent_nf (x1, x2)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    qtc_QContextMenuEvent2 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y 

instance QqqContextMenuEvent_nf ((QContextMenuEventReason, QPoint t2, QPoint t3)) where
 qqContextMenuEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QContextMenuEvent3 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3

instance QqContextMenuEvent_nf ((QContextMenuEventReason, Point, Point)) where
 qContextMenuEvent_nf (x1, x2, x3)
  = withObjectRefResult $
    withCPoint x2 $ \cpoint_x2_x cpoint_x2_y -> 
    withCPoint x3 $ \cpoint_x3_x cpoint_x3_y -> 
    qtc_QContextMenuEvent4 (toCLong $ qEnum_toInt x1) cpoint_x2_x cpoint_x2_y  cpoint_x3_x cpoint_x3_y 

instance QglobalPos (QContextMenuEvent a) (()) where
 globalPos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_globalPos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QContextMenuEvent_globalPos_qth" qtc_QContextMenuEvent_globalPos_qth :: Ptr (TQContextMenuEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance QqglobalPos (QContextMenuEvent a) (()) where
 qglobalPos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_globalPos cobj_x0

foreign import ccall "qtc_QContextMenuEvent_globalPos" qtc_QContextMenuEvent_globalPos :: Ptr (TQContextMenuEvent a) -> IO (Ptr (TQPoint ()))

instance QglobalX (QContextMenuEvent a) (()) where
 globalX x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_globalX cobj_x0

foreign import ccall "qtc_QContextMenuEvent_globalX" qtc_QContextMenuEvent_globalX :: Ptr (TQContextMenuEvent a) -> IO CInt

instance QglobalY (QContextMenuEvent a) (()) where
 globalY x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_globalY cobj_x0

foreign import ccall "qtc_QContextMenuEvent_globalY" qtc_QContextMenuEvent_globalY :: Ptr (TQContextMenuEvent a) -> IO CInt

instance Qpos (QContextMenuEvent a) (()) (IO (Point)) where
 pos x0 ()
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_pos_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QContextMenuEvent_pos_qth" qtc_QContextMenuEvent_pos_qth :: Ptr (TQContextMenuEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqpos (QContextMenuEvent a) (()) (IO (QPoint ())) where
 qpos x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_pos cobj_x0

foreign import ccall "qtc_QContextMenuEvent_pos" qtc_QContextMenuEvent_pos :: Ptr (TQContextMenuEvent a) -> IO (Ptr (TQPoint ()))

instance Qreason (QContextMenuEvent a) (()) (IO (QContextMenuEventReason)) where
 reason x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_reason cobj_x0

foreign import ccall "qtc_QContextMenuEvent_reason" qtc_QContextMenuEvent_reason :: Ptr (TQContextMenuEvent a) -> IO CLong

instance Qqx (QContextMenuEvent a) (()) (IO (Int)) where
 qx x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_x cobj_x0

foreign import ccall "qtc_QContextMenuEvent_x" qtc_QContextMenuEvent_x :: Ptr (TQContextMenuEvent a) -> IO CInt

instance Qqy (QContextMenuEvent a) (()) (IO (Int)) where
 qy x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_y cobj_x0

foreign import ccall "qtc_QContextMenuEvent_y" qtc_QContextMenuEvent_y :: Ptr (TQContextMenuEvent a) -> IO CInt

qContextMenuEvent_delete :: QContextMenuEvent a -> IO ()
qContextMenuEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QContextMenuEvent_delete cobj_x0

foreign import ccall "qtc_QContextMenuEvent_delete" qtc_QContextMenuEvent_delete :: Ptr (TQContextMenuEvent a) -> IO ()

