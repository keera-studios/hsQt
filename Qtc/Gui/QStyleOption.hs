{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QStyleOption.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QStyleOption (
  QqStyleOption(..)
  ,QqStyleOption_nf(..)
  ,qinit
  ,setFontMetrics
  ,qStyleOption_delete
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

class QqStyleOption x1 where
  qStyleOption :: x1 -> IO (QStyleOption ())

instance QqStyleOption (()) where
 qStyleOption ()
  = withQStyleOptionResult $
    qtc_QStyleOption

foreign import ccall "qtc_QStyleOption" qtc_QStyleOption :: IO (Ptr (TQStyleOption ()))

instance QqStyleOption ((QStyleOption t1)) where
 qStyleOption (x1)
  = withQStyleOptionResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption1 cobj_x1

foreign import ccall "qtc_QStyleOption1" qtc_QStyleOption1 :: Ptr (TQStyleOption t1) -> IO (Ptr (TQStyleOption ()))

instance QqStyleOption ((Int)) where
 qStyleOption (x1)
  = withQStyleOptionResult $
    qtc_QStyleOption2 (toCInt x1)

foreign import ccall "qtc_QStyleOption2" qtc_QStyleOption2 :: CInt -> IO (Ptr (TQStyleOption ()))

instance QqStyleOption ((Int, Int)) where
 qStyleOption (x1, x2)
  = withQStyleOptionResult $
    qtc_QStyleOption3 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QStyleOption3" qtc_QStyleOption3 :: CInt -> CInt -> IO (Ptr (TQStyleOption ()))

class QqStyleOption_nf x1 where
  qStyleOption_nf :: x1 -> IO (QStyleOption ())

instance QqStyleOption_nf (()) where
 qStyleOption_nf ()
  = withObjectRefResult $
    qtc_QStyleOption

instance QqStyleOption_nf ((QStyleOption t1)) where
 qStyleOption_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption1 cobj_x1

instance QqStyleOption_nf ((Int)) where
 qStyleOption_nf (x1)
  = withObjectRefResult $
    qtc_QStyleOption2 (toCInt x1)

instance QqStyleOption_nf ((Int, Int)) where
 qStyleOption_nf (x1, x2)
  = withObjectRefResult $
    qtc_QStyleOption3 (toCInt x1) (toCInt x2)

instance Qdirection (QStyleOption a) (()) (IO (LayoutDirection)) where
 direction x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_direction cobj_x0

foreign import ccall "qtc_QStyleOption_direction" qtc_QStyleOption_direction :: Ptr (TQStyleOption a) -> IO CLong

instance QfontMetrics (QStyleOption a) (()) where
 fontMetrics x0 ()
  = withQFontMetricsResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_fontMetrics cobj_x0

foreign import ccall "qtc_QStyleOption_fontMetrics" qtc_QStyleOption_fontMetrics :: Ptr (TQStyleOption a) -> IO (Ptr (TQFontMetrics ()))

qinit :: QStyleOption a -> ((QWidget t1)) -> IO ()
qinit x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption_init cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOption_init" qtc_QStyleOption_init :: Ptr (TQStyleOption a) -> Ptr (TQWidget t1) -> IO ()

instance QinitFrom (QStyleOption a) ((QWidget t1)) where
 initFrom x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption_initFrom cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOption_initFrom" qtc_QStyleOption_initFrom :: Ptr (TQStyleOption a) -> Ptr (TQWidget t1) -> IO ()

instance Qpalette (QStyleOption a) (()) where
 palette x0 ()
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_palette cobj_x0

foreign import ccall "qtc_QStyleOption_palette" qtc_QStyleOption_palette :: Ptr (TQStyleOption a) -> IO (Ptr (TQPalette ()))

instance Qqqrect (QStyleOption a) (()) (IO (QRect ())) where
 qqrect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_rect cobj_x0

foreign import ccall "qtc_QStyleOption_rect" qtc_QStyleOption_rect :: Ptr (TQStyleOption a) -> IO (Ptr (TQRect ()))

instance Qqrect (QStyleOption a) (()) (IO (Rect)) where
 qrect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_rect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QStyleOption_rect_qth" qtc_QStyleOption_rect_qth :: Ptr (TQStyleOption a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QsetDirection (QStyleOption a) ((LayoutDirection)) where
 setDirection x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_setDirection cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QStyleOption_setDirection" qtc_QStyleOption_setDirection :: Ptr (TQStyleOption a) -> CLong -> IO ()

setFontMetrics :: QStyleOption a -> ((QFontMetrics t1)) -> IO ()
setFontMetrics x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption_setFontMetrics cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOption_setFontMetrics" qtc_QStyleOption_setFontMetrics :: Ptr (TQStyleOption a) -> Ptr (TQFontMetrics t1) -> IO ()

instance QsetPalette (QStyleOption a) ((QPalette t1)) where
 setPalette x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption_setPalette cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOption_setPalette" qtc_QStyleOption_setPalette :: Ptr (TQStyleOption a) -> Ptr (TQPalette t1) -> IO ()

instance QqqsetRect (QStyleOption a) ((QRect t1)) where
 qqsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QStyleOption_setRect cobj_x0 cobj_x1

foreign import ccall "qtc_QStyleOption_setRect" qtc_QStyleOption_setRect :: Ptr (TQStyleOption a) -> Ptr (TQRect t1) -> IO ()

instance QqsetRect (QStyleOption a) ((Rect)) where
 qsetRect x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y  crect_x1_w crect_x1_h -> 
    qtc_QStyleOption_setRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h 

foreign import ccall "qtc_QStyleOption_setRect_qth" qtc_QStyleOption_setRect_qth :: Ptr (TQStyleOption a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QsetState (QStyleOption a) ((Int)) where
 setState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_setState cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOption_setState" qtc_QStyleOption_setState :: Ptr (TQStyleOption a) -> CInt -> IO ()

instance QsetType (QStyleOption a) ((Int)) where
 setType x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_setType cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOption_setType" qtc_QStyleOption_setType :: Ptr (TQStyleOption a) -> CInt -> IO ()

instance QsetVersion (QStyleOption a) ((Int)) where
 setVersion x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_setVersion cobj_x0 (toCInt x1)

foreign import ccall "qtc_QStyleOption_setVersion" qtc_QStyleOption_setVersion :: Ptr (TQStyleOption a) -> CInt -> IO ()

instance Qstate (QStyleOption a) (()) (IO (Int)) where
 state x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_state cobj_x0

foreign import ccall "qtc_QStyleOption_state" qtc_QStyleOption_state :: Ptr (TQStyleOption a) -> IO CInt

instance Qqtype (QStyleOption a) (()) (IO (Int)) where
 qtype x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_type cobj_x0

foreign import ccall "qtc_QStyleOption_type" qtc_QStyleOption_type :: Ptr (TQStyleOption a) -> IO CInt

instance Qversion (QStyleOption a) (()) (IO (Int)) where
 version x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_version cobj_x0

foreign import ccall "qtc_QStyleOption_version" qtc_QStyleOption_version :: Ptr (TQStyleOption a) -> IO CInt

qStyleOption_delete :: QStyleOption a -> IO ()
qStyleOption_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QStyleOption_delete cobj_x0

foreign import ccall "qtc_QStyleOption_delete" qtc_QStyleOption_delete :: Ptr (TQStyleOption a) -> IO ()

