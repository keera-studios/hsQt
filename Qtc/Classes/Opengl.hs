{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Opengl.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Opengl (
  QbindTexture(..)
  , QdeleteTexture(..)
  , QdoneCurrent(..)
  , QdoubleBuffer(..)
  , QisSharing(..)
  , QmakeCurrent(..)
  , QswapBuffers(..)
  ) where

import Foreign.C.Types
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Gui
import Qtc.ClassTypes.Opengl

class QbindTexture a b where
 bindTexture :: a -> b -> IO (Int)

class QdeleteTexture a b where
 deleteTexture :: a -> b -> IO ()

class QdoneCurrent a b c | a -> c where
 doneCurrent :: a -> b -> c

class QdoubleBuffer a b where
 doubleBuffer :: a -> b -> IO (Bool)

class QisSharing a b where
 isSharing :: a -> b -> IO (Bool)

class QmakeCurrent a b c | a -> c where
 makeCurrent :: a -> b -> c

class QswapBuffers a b where
 swapBuffers :: a -> b -> IO ()

