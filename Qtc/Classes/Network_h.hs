{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Network_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:33
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Network_h (
  QmajorVersion_h(..)
  , QminorVersion_h(..)
  , QtoString_h(..)
  ) where

import Foreign.C.Types
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Network

class QmajorVersion_h a b where
 majorVersion_h :: a -> b -> IO (Int)

class QminorVersion_h a b where
 minorVersion_h :: a -> b -> IO (Int)

class QtoString_h a b where
 toString_h :: a -> b -> IO (String)

