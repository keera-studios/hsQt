{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Base.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Base (
  module Qtc.Classes.Types
  , getProgName, getArgs
  , unsafePerformIO
  , module Foreign.StablePtr
  , module Foreign.Marshal.Alloc
  , Wrap(..), when
  )
  where

import Foreign.C.Types
import Qtc.Classes.Types
import System.Environment( getProgName, getArgs )
import System.IO.Unsafe( unsafePerformIO )
import Foreign.StablePtr
import Foreign.Marshal.Alloc
import Foreign.Marshal.Array
import qualified Control.Monad as M

data Wrap a = Wrap a

when :: Bool -> IO () -> IO ()
when = M.when

