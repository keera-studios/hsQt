{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Core_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Core_h (
  QwriteData_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QFile
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Core

class QwriteData_h a b where
 writeData_h :: a -> b -> IO (Int)

