{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QWhatsThis.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:15
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QWhatsThis (
  QqWhatsThisCreateAction(..)
  ,qWhatsThisEnterWhatsThisMode
  ,qWhatsThisHideText
  ,qWhatsThisInWhatsThisMode
  ,qWhatsThisLeaveWhatsThisMode
  ,QqWhatsThisShowText(..), QqqWhatsThisShowText(..)
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

class QqWhatsThisCreateAction x1 where
 qWhatsThisCreateAction :: x1 -> IO (QAction ())

instance QqWhatsThisCreateAction (()) where
 qWhatsThisCreateAction ()
  = withQActionResult $
    qtc_QWhatsThis_createAction

foreign import ccall "qtc_QWhatsThis_createAction" qtc_QWhatsThis_createAction :: IO (Ptr (TQAction ()))

instance QqWhatsThisCreateAction ((QObject t1)) where
 qWhatsThisCreateAction (x1)
  = withQActionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QWhatsThis_createAction1 cobj_x1

foreign import ccall "qtc_QWhatsThis_createAction1" qtc_QWhatsThis_createAction1 :: Ptr (TQObject t1) -> IO (Ptr (TQAction ()))

qWhatsThisEnterWhatsThisMode :: (()) -> IO ()
qWhatsThisEnterWhatsThisMode ()
  = qtc_QWhatsThis_enterWhatsThisMode

foreign import ccall "qtc_QWhatsThis_enterWhatsThisMode" qtc_QWhatsThis_enterWhatsThisMode :: IO ()

qWhatsThisHideText :: (()) -> IO ()
qWhatsThisHideText ()
  = qtc_QWhatsThis_hideText

foreign import ccall "qtc_QWhatsThis_hideText" qtc_QWhatsThis_hideText :: IO ()

qWhatsThisInWhatsThisMode :: (()) -> IO (Bool)
qWhatsThisInWhatsThisMode ()
  = withBoolResult $
    qtc_QWhatsThis_inWhatsThisMode

foreign import ccall "qtc_QWhatsThis_inWhatsThisMode" qtc_QWhatsThis_inWhatsThisMode :: IO CBool

qWhatsThisLeaveWhatsThisMode :: (()) -> IO ()
qWhatsThisLeaveWhatsThisMode ()
  = qtc_QWhatsThis_leaveWhatsThisMode

foreign import ccall "qtc_QWhatsThis_leaveWhatsThisMode" qtc_QWhatsThis_leaveWhatsThisMode :: IO ()

class QqWhatsThisShowText x1 where
 qWhatsThisShowText :: x1 -> IO ()

class QqqWhatsThisShowText x1 where
 qqWhatsThisShowText :: x1 -> IO ()

instance QqWhatsThisShowText ((Point, String)) where
 qWhatsThisShowText (x1, x2)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QWhatsThis_showText_qth cpoint_x1_x cpoint_x1_y  cstr_x2

foreign import ccall "qtc_QWhatsThis_showText_qth" qtc_QWhatsThis_showText_qth :: CInt -> CInt -> CWString -> IO ()

instance QqWhatsThisShowText ((Point, String, QWidget t3)) where
 qWhatsThisShowText (x1, x2, x3)
  = withCPoint x1 $ \cpoint_x1_x cpoint_x1_y ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWhatsThis_showText1_qth cpoint_x1_x cpoint_x1_y  cstr_x2 cobj_x3

foreign import ccall "qtc_QWhatsThis_showText1_qth" qtc_QWhatsThis_showText1_qth :: CInt -> CInt -> CWString -> Ptr (TQWidget t3) -> IO ()

instance QqqWhatsThisShowText ((QPoint t1, String)) where
 qqWhatsThisShowText (x1, x2)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    qtc_QWhatsThis_showText cobj_x1 cstr_x2

foreign import ccall "qtc_QWhatsThis_showText" qtc_QWhatsThis_showText :: Ptr (TQPoint t1) -> CWString -> IO ()

instance QqqWhatsThisShowText ((QPoint t1, String, QWidget t3)) where
 qqWhatsThisShowText (x1, x2, x3)
  = withObjectPtr x1 $ \cobj_x1 ->
    withCWString x2 $ \cstr_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QWhatsThis_showText1 cobj_x1 cstr_x2 cobj_x3

foreign import ccall "qtc_QWhatsThis_showText1" qtc_QWhatsThis_showText1 :: Ptr (TQPoint t1) -> CWString -> Ptr (TQWidget t3) -> IO ()

