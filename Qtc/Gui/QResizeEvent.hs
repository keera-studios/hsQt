{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QResizeEvent.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:20
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QResizeEvent (
  QqqResizeEvent(..), QqResizeEvent(..)
  ,QqqResizeEvent_nf(..), QqResizeEvent_nf(..)
  ,qoldSize, oldSize
  ,qResizeEvent_delete
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

class QqqResizeEvent x1 where
  qqResizeEvent :: x1 -> IO (QResizeEvent ())

class QqResizeEvent x1 where
  qResizeEvent :: x1 -> IO (QResizeEvent ())

instance QqResizeEvent ((QResizeEvent t1)) where
 qResizeEvent (x1)
  = withQResizeEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QResizeEvent cobj_x1

foreign import ccall "qtc_QResizeEvent" qtc_QResizeEvent :: Ptr (TQResizeEvent t1) -> IO (Ptr (TQResizeEvent ()))

instance QqqResizeEvent ((QSize t1, QSize t2)) where
 qqResizeEvent (x1, x2)
  = withQResizeEventResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QResizeEvent1 cobj_x1 cobj_x2

foreign import ccall "qtc_QResizeEvent1" qtc_QResizeEvent1 :: Ptr (TQSize t1) -> Ptr (TQSize t2) -> IO (Ptr (TQResizeEvent ()))

instance QqResizeEvent ((Size, Size)) where
 qResizeEvent (x1, x2)
  = withQResizeEventResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QResizeEvent2 csize_x1_w csize_x1_h  csize_x2_w csize_x2_h 

foreign import ccall "qtc_QResizeEvent2" qtc_QResizeEvent2 :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQResizeEvent ()))

class QqqResizeEvent_nf x1 where
  qqResizeEvent_nf :: x1 -> IO (QResizeEvent ())

class QqResizeEvent_nf x1 where
  qResizeEvent_nf :: x1 -> IO (QResizeEvent ())

instance QqResizeEvent_nf ((QResizeEvent t1)) where
 qResizeEvent_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QResizeEvent cobj_x1

instance QqqResizeEvent_nf ((QSize t1, QSize t2)) where
 qqResizeEvent_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QResizeEvent1 cobj_x1 cobj_x2

instance QqResizeEvent_nf ((Size, Size)) where
 qResizeEvent_nf (x1, x2)
  = withObjectRefResult $
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    withCSize x2 $ \csize_x2_w csize_x2_h -> 
    qtc_QResizeEvent2 csize_x1_w csize_x1_h  csize_x2_w csize_x2_h 

qoldSize :: QResizeEvent a -> (()) -> IO (QSize ())
qoldSize x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QResizeEvent_oldSize cobj_x0

foreign import ccall "qtc_QResizeEvent_oldSize" qtc_QResizeEvent_oldSize :: Ptr (TQResizeEvent a) -> IO (Ptr (TQSize ()))

oldSize :: QResizeEvent a -> (()) -> IO (Size)
oldSize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QResizeEvent_oldSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QResizeEvent_oldSize_qth" qtc_QResizeEvent_oldSize_qth :: Ptr (TQResizeEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

instance Qqqsize (QResizeEvent a) (()) (IO (QSize ())) where
 qqsize x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QResizeEvent_size cobj_x0

foreign import ccall "qtc_QResizeEvent_size" qtc_QResizeEvent_size :: Ptr (TQResizeEvent a) -> IO (Ptr (TQSize ()))

instance Qqsize (QResizeEvent a) (()) (IO (Size)) where
 qsize x0 ()
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QResizeEvent_size_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QResizeEvent_size_qth" qtc_QResizeEvent_size_qth :: Ptr (TQResizeEvent a) -> Ptr CInt -> Ptr CInt -> IO ()

qResizeEvent_delete :: QResizeEvent a -> IO ()
qResizeEvent_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QResizeEvent_delete cobj_x0

foreign import ccall "qtc_QResizeEvent_delete" qtc_QResizeEvent_delete :: Ptr (TQResizeEvent a) -> IO ()

