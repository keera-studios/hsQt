{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPaintEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPaintEvent (
  QqqPaintEvent(..), QqPaintEvent(..)
  ,QqqPaintEvent_nf(..), QqPaintEvent_nf(..)
  ,region
  ,qPaintEvent_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqqPaintEvent x1 where
  qqPaintEvent :: x1 -> IO (QPaintEvent ())

class QqPaintEvent x1 where
  qPaintEvent :: x1 -> IO (QPaintEvent ())

instance QqPaintEvent ((QPaintEvent t1)) where
 qPaintEvent (x1)
  = withQPaintEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent cobj_x1

foreign import ccall "qtc_QPaintEvent" qtc_QPaintEvent :: Ptr (TQPaintEvent t1) -> IO (Ptr (TQPaintEvent ()))

instance QqqPaintEvent ((QRect t1)) where
 qqPaintEvent (x1)
  = withQPaintEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent1 cobj_x1

foreign import ccall "qtc_QPaintEvent1" qtc_QPaintEvent1 :: Ptr (TQRect t1) -> IO (Ptr (TQPaintEvent ()))

instance QqPaintEvent ((Rect)) where
 qPaintEvent (x1)
  = withQPaintEventResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPaintEvent2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QPaintEvent2" qtc_QPaintEvent2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQPaintEvent ()))

instance QqPaintEvent ((QRegion t1)) where
 qPaintEvent (x1)
  = withQPaintEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent3 cobj_x1

foreign import ccall "qtc_QPaintEvent3" qtc_QPaintEvent3 :: Ptr (TQRegion t1) -> IO (Ptr (TQPaintEvent ()))

class QqqPaintEvent_nf x1 where
  qqPaintEvent_nf :: x1 -> IO (QPaintEvent ())

class QqPaintEvent_nf x1 where
  qPaintEvent_nf :: x1 -> IO (QPaintEvent ())

instance QqPaintEvent_nf ((QPaintEvent t1)) where
 qPaintEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent cobj_x1

instance QqqPaintEvent_nf ((QRect t1)) where
 qqPaintEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent1 cobj_x1

instance QqPaintEvent_nf ((Rect)) where
 qPaintEvent_nf (x1)
  = withObjectRefResult $
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QPaintEvent2 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

instance QqPaintEvent_nf ((QRegion t1)) where
 qPaintEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPaintEvent3 cobj_x1

instance Qqqrect (QPaintEvent a) (()) (IO (QRect ())) where
 qqrect x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPaintEvent_rect cobj_x0

foreign import ccall "qtc_QPaintEvent_rect" qtc_QPaintEvent_rect :: Ptr (TQPaintEvent a) -> IO (Ptr (TQRect ()))

instance Qqrect (QPaintEvent a) (()) (IO (Rect)) where
 qrect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPaintEvent_rect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPaintEvent_rect_qth" qtc_QPaintEvent_rect_qth :: Ptr (TQPaintEvent a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

region :: QPaintEvent a -> (()) -> IO (QRegion ())
region x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPaintEvent_region cobj_x0

foreign import ccall "qtc_QPaintEvent_region" qtc_QPaintEvent_region :: Ptr (TQPaintEvent a) -> IO (Ptr (TQRegion ()))

qPaintEvent_delete :: QPaintEvent a -> IO ()
qPaintEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPaintEvent_delete cobj_x0

foreign import ccall "qtc_QPaintEvent_delete" qtc_QPaintEvent_delete :: Ptr (TQPaintEvent a) -> IO ()

