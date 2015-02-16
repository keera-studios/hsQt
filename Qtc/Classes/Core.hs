{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Core.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Core (
  QabsoluteFilePath(..)
  , QabsolutePath(..)
  , QaddDays(..)
  , QaddMSecs(..)
  , QaddMonths(..)
  , QaddSecs(..)
  , QaddYears(..)
  , Qqadjust(..)
  , Qqadjusted(..), Qqqadjusted(..)
  , QqbottomLeft(..), QqqbottomLeft(..)
  , QqbottomRight(..), QqqbottomRight(..)
  , QqboundedTo(..), QqqboundedTo(..)
  , QcanonicalPath(..)
  , QqcontainsPoint(..), QqqcontainsPoint(..)
  , QdaysTo(..)
  , Qqdx(..)
  , Qqdy(..)
  , Qexists(..)
  , QqexpandedTo(..), QqqexpandedTo(..)
  , Qqqintersect(..)
  , Qqqintersected(..)
  , QisAbsolute(..)
  , QisRelative(..)
  , QisRoot(..)
  , Qqleft(..)
  , QmakeAbsolute(..)
  , QqmoveBottom(..)
  , QqmoveBottomLeft(..), QqqmoveBottomLeft(..)
  , QqmoveBottomRight(..), QqqmoveBottomRight(..)
  , QqmoveCenter(..), QqqmoveCenter(..)
  , QqmoveLeft(..)
  , QqmoveRight(..)
  , QqmoveTop(..)
  , QqmoveTopLeft(..), QqqmoveTopLeft(..)
  , QqmoveTopRight(..), QqqmoveTopRight(..)
  , Qqnormalized(..), Qqqnormalized(..)
  , Qqp1(..), Qqqp1(..)
  , Qqp2(..), Qqqp2(..)
  , Qqread(..)
  , QreadLine(..)
  , QreadLink(..)
  , QresetStatus(..)
  , Qqright(..)
  , Qqqscale(..)
  , QsecsTo(..)
  , QqsetBottomLeft(..), QqqsetBottomLeft(..)
  , QqsetBottomRight(..), QqqsetBottomRight(..)
  , QqsetCoords(..)
  , QqsetLeft(..)
  , QqsetRight(..)
  , QqqsetSize(..)
  , QsetStatus(..)
  , QqsetTopLeft(..), QqqsetTopLeft(..)
  , QqsetTopRight(..), QqqsetTopRight(..)
  , QqsetX(..)
  , QqsetY(..)
  , Qsibling(..)
  , Qstatus(..)
  , QsymLinkTarget(..)
  , QtimerId(..)
  , QqtopLeft(..), QqqtopLeft(..)
  , QqtopRight(..), QqqtopRight(..)
  , Qqqunite(..)
  , Qqqunited(..)
  , Qqx1(..)
  , Qqx2(..)
  , Qqy1(..)
  , Qqy2(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QFile
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Core

class QabsoluteFilePath a b where
 absoluteFilePath :: a -> b -> IO (String)

class QabsolutePath a b where
 absolutePath :: a -> b -> IO (String)

class QaddDays a b c | a -> c where
 addDays :: a -> b -> c

class QaddMSecs a b c | a -> c where
 addMSecs :: a -> b -> c

class QaddMonths a b c | a -> c where
 addMonths :: a -> b -> c

class QaddSecs a b c | a -> c where
 addSecs :: a -> b -> c

class QaddYears a b c | a -> c where
 addYears :: a -> b -> c

class Qqadjust a b where
 qadjust :: a -> b -> IO ()

class Qqadjusted a b c | a -> c where
 qadjusted :: a -> b -> c

class Qqqadjusted a b c | a -> c where
 qqadjusted :: a -> b -> c

class QqbottomLeft a b c | a -> c where
 qbottomLeft :: a -> b -> c

class QqqbottomLeft a b c | a -> c where
 qqbottomLeft :: a -> b -> c

class QqbottomRight a b c | a -> c where
 qbottomRight :: a -> b -> c

class QqqbottomRight a b c | a -> c where
 qqbottomRight :: a -> b -> c

class QqboundedTo a b c | a -> c where
 qboundedTo :: a -> b -> c

class QqqboundedTo a b c | a -> c where
 qqboundedTo :: a -> b -> c

class QcanonicalPath a b where
 canonicalPath :: a -> b -> IO (String)

class QqcontainsPoint a b where
 qcontainsPoint :: a -> b -> IO (Bool)

class QqqcontainsPoint a b where
 qqcontainsPoint :: a -> b -> IO (Bool)

class QdaysTo a b where
 daysTo :: a -> b -> IO (Int)

class Qqdx a b c | a -> c where
 qdx :: a -> b -> c

class Qqdy a b c | a -> c where
 qdy :: a -> b -> c

class Qexists a b where
 exists :: a -> b -> IO (Bool)

class QqexpandedTo a b c | a -> c where
 qexpandedTo :: a -> b -> c

class QqqexpandedTo a b c | a -> c where
 qqexpandedTo :: a -> b -> c

class Qqqintersect a b c | a -> c where
 qqintersect :: a -> b -> c

class Qqqintersected a b c | a -> c where
 qqintersected :: a -> b -> c

class QisAbsolute a b where
 isAbsolute :: a -> b -> IO (Bool)

class QisRelative a b where
 isRelative :: a -> b -> IO (Bool)

class QisRoot a b where
 isRoot :: a -> b -> IO (Bool)

class Qqleft a b c | a -> c where
 qleft :: a -> b -> c

class QmakeAbsolute a b where
 makeAbsolute :: a -> b -> IO (Bool)

class QqmoveBottom a b where
 qmoveBottom :: a -> b -> IO ()

class QqmoveBottomLeft a b where
 qmoveBottomLeft :: a -> b -> IO ()

class QqqmoveBottomLeft a b where
 qqmoveBottomLeft :: a -> b -> IO ()

class QqmoveBottomRight a b where
 qmoveBottomRight :: a -> b -> IO ()

class QqqmoveBottomRight a b where
 qqmoveBottomRight :: a -> b -> IO ()

class QqmoveCenter a b where
 qmoveCenter :: a -> b -> IO ()

class QqqmoveCenter a b where
 qqmoveCenter :: a -> b -> IO ()

class QqmoveLeft a b where
 qmoveLeft :: a -> b -> IO ()

class QqmoveRight a b where
 qmoveRight :: a -> b -> IO ()

class QqmoveTop a b where
 qmoveTop :: a -> b -> IO ()

class QqmoveTopLeft a b where
 qmoveTopLeft :: a -> b -> IO ()

class QqqmoveTopLeft a b where
 qqmoveTopLeft :: a -> b -> IO ()

class QqmoveTopRight a b where
 qmoveTopRight :: a -> b -> IO ()

class QqqmoveTopRight a b where
 qqmoveTopRight :: a -> b -> IO ()

class Qqnormalized a b c | a -> c where
 qnormalized :: a -> b -> c

class Qqqnormalized a b c | a -> c where
 qqnormalized :: a -> b -> c

class Qqp1 a b c | a -> c where
 qp1 :: a -> b -> c

class Qqqp1 a b c | a -> c where
 qqp1 :: a -> b -> c

class Qqp2 a b c | a -> c where
 qp2 :: a -> b -> c

class Qqqp2 a b c | a -> c where
 qqp2 :: a -> b -> c

class Qqread a b where
 qread :: a -> b -> IO (String)

class QreadLine a b where
 readLine :: a -> b -> IO (String)

class QreadLink a b where
 readLink :: a -> b -> IO (String)

class QresetStatus a b where
 resetStatus :: a -> b -> IO ()

class Qqright a b c | a -> c where
 qright :: a -> b -> c

class Qqqscale a b where
 qqscale :: a -> b -> IO ()

class QsecsTo a b where
 secsTo :: a -> b -> IO (Int)

class QqsetBottomLeft a b where
 qsetBottomLeft :: a -> b -> IO ()

class QqqsetBottomLeft a b where
 qqsetBottomLeft :: a -> b -> IO ()

class QqsetBottomRight a b where
 qsetBottomRight :: a -> b -> IO ()

class QqqsetBottomRight a b where
 qqsetBottomRight :: a -> b -> IO ()

class QqsetCoords a b where
 qsetCoords :: a -> b -> IO ()

class QqsetLeft a b where
 qsetLeft :: a -> b -> IO ()

class QqsetRight a b where
 qsetRight :: a -> b -> IO ()

class QqqsetSize a b where
 qqsetSize :: a -> b -> IO ()

class QsetStatus a b where
 setStatus :: a -> b -> IO ()

class QqsetTopLeft a b where
 qsetTopLeft :: a -> b -> IO ()

class QqqsetTopLeft a b where
 qqsetTopLeft :: a -> b -> IO ()

class QqsetTopRight a b where
 qsetTopRight :: a -> b -> IO ()

class QqqsetTopRight a b where
 qqsetTopRight :: a -> b -> IO ()

class QqsetX a b where
 qsetX :: a -> b -> IO ()

class QqsetY a b where
 qsetY :: a -> b -> IO ()

class Qsibling a b where
 sibling :: a -> b -> IO (QModelIndex ())

class Qstatus a b c | a -> c where
 status :: a -> b -> c

class QsymLinkTarget a b where
 symLinkTarget :: a -> b -> IO (String)

class QtimerId a b where
 timerId :: a -> b -> IO (Int)

class QqtopLeft a b c | a -> c where
 qtopLeft :: a -> b -> c

class QqqtopLeft a b c | a -> c where
 qqtopLeft :: a -> b -> c

class QqtopRight a b c | a -> c where
 qtopRight :: a -> b -> c

class QqqtopRight a b c | a -> c where
 qqtopRight :: a -> b -> c

class Qqqunite a b c | a -> c where
 qqunite :: a -> b -> c

class Qqqunited a b c | a -> c where
 qqunited :: a -> b -> c

class Qqx1 a b c | a -> c where
 qx1 :: a -> b -> c

class Qqx2 a b c | a -> c where
 qx2 :: a -> b -> c

class Qqy1 a b c | a -> c where
 qy1 :: a -> b -> c

class Qqy2 a b c | a -> c where
 qy2 :: a -> b -> c

