{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPalette.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:25
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPalette (
  QqPalette(..)
  ,QqPalette_nf(..)
  ,alternateBase
  ,base
  ,brightText
  ,currentColorGroup
  ,highlight
  ,highlightedText
  ,isBrushSet
  ,isEqual
  ,linkVisited
  ,mid
  ,midlight
  ,setColorGroup
  ,setCurrentColorGroup
  ,shadow
  ,windowText
  ,qPalette_delete
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPalette
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

class QqPalette x1 where
  qPalette :: x1 -> IO (QPalette ())

instance QqPalette (()) where
 qPalette ()
  = withQPaletteResult $
    qtc_QPalette

foreign import ccall "qtc_QPalette" qtc_QPalette :: IO (Ptr (TQPalette ()))

instance QqPalette ((QPalette t1)) where
 qPalette (x1)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette1 cobj_x1

foreign import ccall "qtc_QPalette1" qtc_QPalette1 :: Ptr (TQPalette t1) -> IO (Ptr (TQPalette ()))

instance QqPalette ((QColor t1)) where
 qPalette (x1)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette2 cobj_x1

foreign import ccall "qtc_QPalette2" qtc_QPalette2 :: Ptr (TQColor t1) -> IO (Ptr (TQPalette ()))

instance QqPalette ((GlobalColor)) where
 qPalette (x1)
  = withQPaletteResult $
    qtc_QPalette3 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPalette3" qtc_QPalette3 :: CLong -> IO (Ptr (TQPalette ()))

instance QqPalette ((QColor t1, QColor t2)) where
 qPalette (x1, x2)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPalette4 cobj_x1 cobj_x2

foreign import ccall "qtc_QPalette4" qtc_QPalette4 :: Ptr (TQColor t1) -> Ptr (TQColor t2) -> IO (Ptr (TQPalette ()))

instance QqPalette ((QColor t1, QColor t2, QColor t3, QColor t4, QColor t5, QColor t6, QColor t7)) where
 qPalette (x1, x2, x3, x4, x5, x6, x7)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QPalette5 cobj_x1 cobj_x2 cobj_x3 cobj_x4 cobj_x5 cobj_x6 cobj_x7

foreign import ccall "qtc_QPalette5" qtc_QPalette5 :: Ptr (TQColor t1) -> Ptr (TQColor t2) -> Ptr (TQColor t3) -> Ptr (TQColor t4) -> Ptr (TQColor t5) -> Ptr (TQColor t6) -> Ptr (TQColor t7) -> IO (Ptr (TQPalette ()))

instance QqPalette ((QBrush t1, QBrush t2, QBrush t3, QBrush t4, QBrush t5, QBrush t6, QBrush t7, QBrush t8, QBrush t9)) where
 qPalette (x1, x2, x3, x4, x5, x6, x7, x8, x9)
  = withQPaletteResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    withObjectPtr x8 $ \cobj_x8 ->
    withObjectPtr x9 $ \cobj_x9 ->
    qtc_QPalette6 cobj_x1 cobj_x2 cobj_x3 cobj_x4 cobj_x5 cobj_x6 cobj_x7 cobj_x8 cobj_x9

foreign import ccall "qtc_QPalette6" qtc_QPalette6 :: Ptr (TQBrush t1) -> Ptr (TQBrush t2) -> Ptr (TQBrush t3) -> Ptr (TQBrush t4) -> Ptr (TQBrush t5) -> Ptr (TQBrush t6) -> Ptr (TQBrush t7) -> Ptr (TQBrush t8) -> Ptr (TQBrush t9) -> IO (Ptr (TQPalette ()))

class QqPalette_nf x1 where
  qPalette_nf :: x1 -> IO (QPalette ())

instance QqPalette_nf (()) where
 qPalette_nf ()
  = withObjectRefResult $
    qtc_QPalette

instance QqPalette_nf ((QPalette t1)) where
 qPalette_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette1 cobj_x1

instance QqPalette_nf ((QColor t1)) where
 qPalette_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette2 cobj_x1

instance QqPalette_nf ((GlobalColor)) where
 qPalette_nf (x1)
  = withObjectRefResult $
    qtc_QPalette3 (toCLong $ qEnum_toInt x1)

instance QqPalette_nf ((QColor t1, QColor t2)) where
 qPalette_nf (x1, x2)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPalette4 cobj_x1 cobj_x2

instance QqPalette_nf ((QColor t1, QColor t2, QColor t3, QColor t4, QColor t5, QColor t6, QColor t7)) where
 qPalette_nf (x1, x2, x3, x4, x5, x6, x7)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    qtc_QPalette5 cobj_x1 cobj_x2 cobj_x3 cobj_x4 cobj_x5 cobj_x6 cobj_x7

instance QqPalette_nf ((QBrush t1, QBrush t2, QBrush t3, QBrush t4, QBrush t5, QBrush t6, QBrush t7, QBrush t8, QBrush t9)) where
 qPalette_nf (x1, x2, x3, x4, x5, x6, x7, x8, x9)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    withObjectPtr x8 $ \cobj_x8 ->
    withObjectPtr x9 $ \cobj_x9 ->
    qtc_QPalette6 cobj_x1 cobj_x2 cobj_x3 cobj_x4 cobj_x5 cobj_x6 cobj_x7 cobj_x8 cobj_x9

alternateBase :: QPalette a -> (()) -> IO (QBrush ())
alternateBase x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_alternateBase cobj_x0

foreign import ccall "qtc_QPalette_alternateBase" qtc_QPalette_alternateBase :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qbackground (QPalette a) (()) where
 background x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_background cobj_x0

foreign import ccall "qtc_QPalette_background" qtc_QPalette_background :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

base :: QPalette a -> (()) -> IO (QBrush ())
base x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_base cobj_x0

foreign import ccall "qtc_QPalette_base" qtc_QPalette_base :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

brightText :: QPalette a -> (()) -> IO (QBrush ())
brightText x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_brightText cobj_x0

foreign import ccall "qtc_QPalette_brightText" qtc_QPalette_brightText :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qbrush (QPalette a) ((ColorGroup, ColorRole)) where
 brush x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_brush1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPalette_brush1" qtc_QPalette_brush1 :: Ptr (TQPalette a) -> CLong -> CLong -> IO (Ptr (TQBrush ()))

instance Qbrush (QPalette a) ((ColorRole)) where
 brush x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_brush cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPalette_brush" qtc_QPalette_brush :: Ptr (TQPalette a) -> CLong -> IO (Ptr (TQBrush ()))

instance Qbutton (QPalette a) (()) (IO (QBrush ())) where
 button x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_button cobj_x0

foreign import ccall "qtc_QPalette_button" qtc_QPalette_button :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance QbuttonText (QPalette a) (()) (IO (QBrush ())) where
 buttonText x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_buttonText cobj_x0

foreign import ccall "qtc_QPalette_buttonText" qtc_QPalette_buttonText :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance QcacheKey (QPalette a) (()) where
 cacheKey x0 ()
  = withLongLongResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_cacheKey cobj_x0

foreign import ccall "qtc_QPalette_cacheKey" qtc_QPalette_cacheKey :: Ptr (TQPalette a) -> IO CLLong

instance Qcolor (QPalette a) ((ColorGroup, ColorRole)) (IO (QColor ())) where
 color x0 (x1, x2)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_color1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPalette_color1" qtc_QPalette_color1 :: Ptr (TQPalette a) -> CLong -> CLong -> IO (Ptr (TQColor ()))

instance Qcolor (QPalette a) ((ColorRole)) (IO (QColor ())) where
 color x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_color cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPalette_color" qtc_QPalette_color :: Ptr (TQPalette a) -> CLong -> IO (Ptr (TQColor ()))

currentColorGroup :: QPalette a -> (()) -> IO (ColorGroup)
currentColorGroup x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_currentColorGroup cobj_x0

foreign import ccall "qtc_QPalette_currentColorGroup" qtc_QPalette_currentColorGroup :: Ptr (TQPalette a) -> IO CLong

instance Qdark (QPalette a) (()) (IO (QBrush ())) where
 dark x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_dark cobj_x0

foreign import ccall "qtc_QPalette_dark" qtc_QPalette_dark :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qforeground (QPalette a) (()) where
 foreground x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_foreground cobj_x0

foreign import ccall "qtc_QPalette_foreground" qtc_QPalette_foreground :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

highlight :: QPalette a -> (()) -> IO (QBrush ())
highlight x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_highlight cobj_x0

foreign import ccall "qtc_QPalette_highlight" qtc_QPalette_highlight :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

highlightedText :: QPalette a -> (()) -> IO (QBrush ())
highlightedText x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_highlightedText cobj_x0

foreign import ccall "qtc_QPalette_highlightedText" qtc_QPalette_highlightedText :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

isBrushSet :: QPalette a -> ((ColorGroup, ColorRole)) -> IO (Bool)
isBrushSet x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_isBrushSet cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPalette_isBrushSet" qtc_QPalette_isBrushSet :: Ptr (TQPalette a) -> CLong -> CLong -> IO CBool

instance QisCopyOf (QPalette a) ((QPalette t1)) where
 isCopyOf x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette_isCopyOf cobj_x0 cobj_x1

foreign import ccall "qtc_QPalette_isCopyOf" qtc_QPalette_isCopyOf :: Ptr (TQPalette a) -> Ptr (TQPalette t1) -> IO CBool

isEqual :: QPalette a -> ((ColorGroup, ColorGroup)) -> IO (Bool)
isEqual x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_isEqual cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QPalette_isEqual" qtc_QPalette_isEqual :: Ptr (TQPalette a) -> CLong -> CLong -> IO CBool

instance Qlight (QPalette a) (()) (IO (QBrush ())) where
 light x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_light cobj_x0

foreign import ccall "qtc_QPalette_light" qtc_QPalette_light :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qlink (QPalette a) (()) (IO (QBrush ())) where
 link x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_link cobj_x0

foreign import ccall "qtc_QPalette_link" qtc_QPalette_link :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

linkVisited :: QPalette a -> (()) -> IO (QBrush ())
linkVisited x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_linkVisited cobj_x0

foreign import ccall "qtc_QPalette_linkVisited" qtc_QPalette_linkVisited :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

mid :: QPalette a -> (()) -> IO (QBrush ())
mid x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_mid cobj_x0

foreign import ccall "qtc_QPalette_mid" qtc_QPalette_mid :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

midlight :: QPalette a -> (()) -> IO (QBrush ())
midlight x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_midlight cobj_x0

foreign import ccall "qtc_QPalette_midlight" qtc_QPalette_midlight :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qresolve (QPalette a) ((Int)) (IO ()) where
 resolve x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_resolve1 cobj_x0 (toCUInt x1)

foreign import ccall "qtc_QPalette_resolve1" qtc_QPalette_resolve1 :: Ptr (TQPalette a) -> CUInt -> IO ()

instance Qresolve (QPalette a) (()) (IO (Int)) where
 resolve x0 ()
  = withUnsignedIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_resolve cobj_x0

foreign import ccall "qtc_QPalette_resolve" qtc_QPalette_resolve :: Ptr (TQPalette a) -> IO CUInt

instance Qresolve (QPalette a) ((QPalette t1)) (IO (QPalette ())) where
 resolve x0 (x1)
  = withQPaletteResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QPalette_resolve2 cobj_x0 cobj_x1

foreign import ccall "qtc_QPalette_resolve2" qtc_QPalette_resolve2 :: Ptr (TQPalette a) -> Ptr (TQPalette t1) -> IO (Ptr (TQPalette ()))

instance QserialNumber (QPalette a) (()) where
 serialNumber x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_serialNumber cobj_x0

foreign import ccall "qtc_QPalette_serialNumber" qtc_QPalette_serialNumber :: Ptr (TQPalette a) -> IO CInt

instance QsetBrush (QPalette a) ((ColorGroup, ColorRole, QBrush t3)) where
 setBrush x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPalette_setBrush1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QPalette_setBrush1" qtc_QPalette_setBrush1 :: Ptr (TQPalette a) -> CLong -> CLong -> Ptr (TQBrush t3) -> IO ()

instance QsetBrush (QPalette a) ((ColorRole, QBrush t2)) where
 setBrush x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPalette_setBrush cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QPalette_setBrush" qtc_QPalette_setBrush :: Ptr (TQPalette a) -> CLong -> Ptr (TQBrush t2) -> IO ()

instance QsetColor (QPalette a) ((ColorGroup, ColorRole, QColor t3)) where
 setColor x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QPalette_setColor1 cobj_x0 (toCLong $ qEnum_toInt x1) (toCLong $ qEnum_toInt x2) cobj_x3

foreign import ccall "qtc_QPalette_setColor1" qtc_QPalette_setColor1 :: Ptr (TQPalette a) -> CLong -> CLong -> Ptr (TQColor t3) -> IO ()

instance QsetColor (QPalette a) ((ColorRole, QColor t2)) where
 setColor x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPalette_setColor cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2

foreign import ccall "qtc_QPalette_setColor" qtc_QPalette_setColor :: Ptr (TQPalette a) -> CLong -> Ptr (TQColor t2) -> IO ()

setColorGroup :: QPalette a -> ((ColorGroup, QBrush t2, QBrush t3, QBrush t4, QBrush t5, QBrush t6, QBrush t7, QBrush t8, QBrush t9, QBrush t10)) -> IO ()
setColorGroup x0 (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x4 $ \cobj_x4 ->
    withObjectPtr x5 $ \cobj_x5 ->
    withObjectPtr x6 $ \cobj_x6 ->
    withObjectPtr x7 $ \cobj_x7 ->
    withObjectPtr x8 $ \cobj_x8 ->
    withObjectPtr x9 $ \cobj_x9 ->
    withObjectPtr x10 $ \cobj_x10 ->
    qtc_QPalette_setColorGroup cobj_x0 (toCLong $ qEnum_toInt x1) cobj_x2 cobj_x3 cobj_x4 cobj_x5 cobj_x6 cobj_x7 cobj_x8 cobj_x9 cobj_x10

foreign import ccall "qtc_QPalette_setColorGroup" qtc_QPalette_setColorGroup :: Ptr (TQPalette a) -> CLong -> Ptr (TQBrush t2) -> Ptr (TQBrush t3) -> Ptr (TQBrush t4) -> Ptr (TQBrush t5) -> Ptr (TQBrush t6) -> Ptr (TQBrush t7) -> Ptr (TQBrush t8) -> Ptr (TQBrush t9) -> Ptr (TQBrush t10) -> IO ()

setCurrentColorGroup :: QPalette a -> ((ColorGroup)) -> IO ()
setCurrentColorGroup x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_setCurrentColorGroup cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPalette_setCurrentColorGroup" qtc_QPalette_setCurrentColorGroup :: Ptr (TQPalette a) -> CLong -> IO ()

shadow :: QPalette a -> (()) -> IO (QBrush ())
shadow x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_shadow cobj_x0

foreign import ccall "qtc_QPalette_shadow" qtc_QPalette_shadow :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qtext (QPalette a) (()) (IO (QBrush ())) where
 text x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_text cobj_x0

foreign import ccall "qtc_QPalette_text" qtc_QPalette_text :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

instance Qwindow (QPalette a) (()) (IO (QBrush ())) where
 window x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_window cobj_x0

foreign import ccall "qtc_QPalette_window" qtc_QPalette_window :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

windowText :: QPalette a -> (()) -> IO (QBrush ())
windowText x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_windowText cobj_x0

foreign import ccall "qtc_QPalette_windowText" qtc_QPalette_windowText :: Ptr (TQPalette a) -> IO (Ptr (TQBrush ()))

qPalette_delete :: QPalette a -> IO ()
qPalette_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPalette_delete cobj_x0

foreign import ccall "qtc_QPalette_delete" qtc_QPalette_delete :: Ptr (TQPalette a) -> IO ()

