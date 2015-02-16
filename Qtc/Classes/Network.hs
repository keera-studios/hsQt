{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Network.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:32
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Network (
  QconnectToHost(..)
  , QconnectToHostImplementation(..)
  , QcurrentId(..)
  , QdisconnectFromHostImplementation(..)
  , Qqget(..)
  , QhostName(..)
  , QmajorVersion(..)
  , QminorVersion(..)
  , Qparse(..)
  , QparseLine(..)
  , Qproxy(..)
  , QsetHostName(..)
  , QsetLocalAddress(..)
  , QsetLocalPort(..)
  , QsetPeerAddress(..)
  , QsetPeerName(..)
  , QsetPeerPort(..)
  , QsetProxy(..)
  , QsetSocketDescriptor(..)
  , QsetSocketError(..)
  , QsetSocketState(..)
  , QsetUser(..)
  , QsocketDescriptor(..)
  ) where

import Foreign.C.Types
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Network

class QconnectToHost a b c | a -> c where
 connectToHost :: a -> b -> c

class QconnectToHostImplementation a b where
 connectToHostImplementation :: a -> b -> IO ()

class QcurrentId a b where
 currentId :: a -> b -> IO (Int)

class QdisconnectFromHostImplementation a b where
 disconnectFromHostImplementation :: a -> b -> IO ()

class Qqget a b where
 qget :: a -> b -> IO (Int)

class QhostName a b where
 hostName :: a -> b -> IO (String)

class QmajorVersion a b where
 majorVersion :: a -> b -> IO (Int)

class QminorVersion a b where
 minorVersion :: a -> b -> IO (Int)

class Qparse a b where
 parse :: a -> b -> IO (Bool)

class QparseLine a b where
 parseLine :: a -> b -> IO (Bool)

class Qproxy a b where
 proxy :: a -> b -> IO (QNetworkProxy ())

class QsetHostName a b where
 setHostName :: a -> b -> IO ()

class QsetLocalAddress a b where
 setLocalAddress :: a -> b -> IO ()

class QsetLocalPort a b where
 setLocalPort :: a -> b -> IO ()

class QsetPeerAddress a b where
 setPeerAddress :: a -> b -> IO ()

class QsetPeerName a b where
 setPeerName :: a -> b -> IO ()

class QsetPeerPort a b where
 setPeerPort :: a -> b -> IO ()

class QsetProxy a b c | a -> c where
 setProxy :: a -> b -> c

class QsetSocketDescriptor a b where
 setSocketDescriptor :: a -> b -> IO (Bool)

class QsetSocketError a b where
 setSocketError :: a -> b -> IO ()

class QsetSocketState a b where
 setSocketState :: a -> b -> IO ()

class QsetUser a b c | a -> c where
 setUser :: a -> b -> c

class QsocketDescriptor a b where
 socketDescriptor :: a -> b -> IO (Int)

