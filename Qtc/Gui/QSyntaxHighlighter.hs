{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QSyntaxHighlighter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:17
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QSyntaxHighlighter (
  QqSyntaxHighlighter(..)
  ,QcurrentBlockState(..)
  ,QcurrentBlockUserData(..)
  ,QhighlightBlock(..)
  ,QpreviousBlockState(..)
  ,rehighlight
  ,QsetCurrentBlockState(..)
  ,QsetCurrentBlockUserData(..)
  ,qSyntaxHighlighter_delete
  ,qSyntaxHighlighter_deleteLater
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

instance QuserMethod (QSyntaxHighlighter ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSyntaxHighlighter_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QSyntaxHighlighter_userMethod" qtc_QSyntaxHighlighter_userMethod :: Ptr (TQSyntaxHighlighter a) -> CInt -> IO ()

instance QuserMethod (QSyntaxHighlighterSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QSyntaxHighlighter_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QSyntaxHighlighter ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSyntaxHighlighter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QSyntaxHighlighter_userMethodVariant" qtc_QSyntaxHighlighter_userMethodVariant :: Ptr (TQSyntaxHighlighter a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QSyntaxHighlighterSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QSyntaxHighlighter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqSyntaxHighlighter x1 where
  qSyntaxHighlighter :: x1 -> IO (QSyntaxHighlighter ())

instance QqSyntaxHighlighter ((QTextDocument t1)) where
 qSyntaxHighlighter (x1)
  = withQSyntaxHighlighterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter" qtc_QSyntaxHighlighter :: Ptr (TQTextDocument t1) -> IO (Ptr (TQSyntaxHighlighter ()))

instance QqSyntaxHighlighter ((QTextEdit t1)) where
 qSyntaxHighlighter (x1)
  = withQSyntaxHighlighterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter1 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter1" qtc_QSyntaxHighlighter1 :: Ptr (TQTextEdit t1) -> IO (Ptr (TQSyntaxHighlighter ()))

instance QqSyntaxHighlighter ((QObject t1)) where
 qSyntaxHighlighter (x1)
  = withQSyntaxHighlighterResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter2 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter2" qtc_QSyntaxHighlighter2 :: Ptr (TQObject t1) -> IO (Ptr (TQSyntaxHighlighter ()))

class QcurrentBlockState x0 x1 where
 currentBlockState :: x0 -> x1 -> IO (Int)

instance QcurrentBlockState (QSyntaxHighlighter ()) (()) where
 currentBlockState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_currentBlockState cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_currentBlockState" qtc_QSyntaxHighlighter_currentBlockState :: Ptr (TQSyntaxHighlighter a) -> IO CInt

instance QcurrentBlockState (QSyntaxHighlighterSc a) (()) where
 currentBlockState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_currentBlockState cobj_x0

class QcurrentBlockUserData x0 x1 where
 currentBlockUserData :: x0 -> x1 -> IO (QTextBlockUserData ())

instance QcurrentBlockUserData (QSyntaxHighlighter ()) (()) where
 currentBlockUserData x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_currentBlockUserData cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_currentBlockUserData" qtc_QSyntaxHighlighter_currentBlockUserData :: Ptr (TQSyntaxHighlighter a) -> IO (Ptr (TQTextBlockUserData ()))

instance QcurrentBlockUserData (QSyntaxHighlighterSc a) (()) where
 currentBlockUserData x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_currentBlockUserData cobj_x0

instance Qdocument (QSyntaxHighlighter a) (()) where
 document x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_document cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_document" qtc_QSyntaxHighlighter_document :: Ptr (TQSyntaxHighlighter a) -> IO (Ptr (TQTextDocument ()))

instance Qformat (QSyntaxHighlighter ()) ((Int)) (IO (QTextCharFormat ())) where
 format x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_format cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSyntaxHighlighter_format" qtc_QSyntaxHighlighter_format :: Ptr (TQSyntaxHighlighter a) -> CInt -> IO (Ptr (TQTextCharFormat ()))

instance Qformat (QSyntaxHighlighterSc a) ((Int)) (IO (QTextCharFormat ())) where
 format x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_format cobj_x0 (toCInt x1)

class QhighlightBlock x0 x1 where
 highlightBlock :: x0 -> x1 -> IO ()

instance QhighlightBlock (QSyntaxHighlighter ()) ((String)) where
 highlightBlock x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_highlightBlock_h cobj_x0 cstr_x1

foreign import ccall "qtc_QSyntaxHighlighter_highlightBlock_h" qtc_QSyntaxHighlighter_highlightBlock_h :: Ptr (TQSyntaxHighlighter a) -> CWString -> IO ()

instance QhighlightBlock (QSyntaxHighlighterSc a) ((String)) where
 highlightBlock x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_highlightBlock_h cobj_x0 cstr_x1

class QpreviousBlockState x0 x1 where
 previousBlockState :: x0 -> x1 -> IO (Int)

instance QpreviousBlockState (QSyntaxHighlighter ()) (()) where
 previousBlockState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_previousBlockState cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_previousBlockState" qtc_QSyntaxHighlighter_previousBlockState :: Ptr (TQSyntaxHighlighter a) -> IO CInt

instance QpreviousBlockState (QSyntaxHighlighterSc a) (()) where
 previousBlockState x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_previousBlockState cobj_x0

rehighlight :: QSyntaxHighlighter a -> (()) -> IO ()
rehighlight x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_rehighlight cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_rehighlight" qtc_QSyntaxHighlighter_rehighlight :: Ptr (TQSyntaxHighlighter a) -> IO ()

class QsetCurrentBlockState x0 x1 where
 setCurrentBlockState :: x0 -> x1 -> IO ()

instance QsetCurrentBlockState (QSyntaxHighlighter ()) ((Int)) where
 setCurrentBlockState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_setCurrentBlockState cobj_x0 (toCInt x1)

foreign import ccall "qtc_QSyntaxHighlighter_setCurrentBlockState" qtc_QSyntaxHighlighter_setCurrentBlockState :: Ptr (TQSyntaxHighlighter a) -> CInt -> IO ()

instance QsetCurrentBlockState (QSyntaxHighlighterSc a) ((Int)) where
 setCurrentBlockState x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_setCurrentBlockState cobj_x0 (toCInt x1)

class QsetCurrentBlockUserData x0 x1 where
 setCurrentBlockUserData :: x0 -> x1 -> IO ()

instance QsetCurrentBlockUserData (QSyntaxHighlighter ()) ((QTextBlockUserData t1)) where
 setCurrentBlockUserData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_setCurrentBlockUserData cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_setCurrentBlockUserData" qtc_QSyntaxHighlighter_setCurrentBlockUserData :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQTextBlockUserData t1) -> IO ()

instance QsetCurrentBlockUserData (QSyntaxHighlighterSc a) ((QTextBlockUserData t1)) where
 setCurrentBlockUserData x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_setCurrentBlockUserData cobj_x0 cobj_x1

instance QsetDocument (QSyntaxHighlighter a) ((QTextDocument t1)) where
 setDocument x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_setDocument cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_setDocument" qtc_QSyntaxHighlighter_setDocument :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQTextDocument t1) -> IO ()

instance QsetFormat (QSyntaxHighlighter ()) ((Int, Int, QColor t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat2 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSyntaxHighlighter_setFormat2" qtc_QSyntaxHighlighter_setFormat2 :: Ptr (TQSyntaxHighlighter a) -> CInt -> CInt -> Ptr (TQColor t3) -> IO ()

instance QsetFormat (QSyntaxHighlighterSc a) ((Int, Int, QColor t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat2 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetFormat (QSyntaxHighlighter ()) ((Int, Int, QFont t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSyntaxHighlighter_setFormat1" qtc_QSyntaxHighlighter_setFormat1 :: Ptr (TQSyntaxHighlighter a) -> CInt -> CInt -> Ptr (TQFont t3) -> IO ()

instance QsetFormat (QSyntaxHighlighterSc a) ((Int, Int, QFont t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat1 cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

instance QsetFormat (QSyntaxHighlighter ()) ((Int, Int, QTextCharFormat t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

foreign import ccall "qtc_QSyntaxHighlighter_setFormat" qtc_QSyntaxHighlighter_setFormat :: Ptr (TQSyntaxHighlighter a) -> CInt -> CInt -> Ptr (TQTextCharFormat t3) -> IO ()

instance QsetFormat (QSyntaxHighlighterSc a) ((Int, Int, QTextCharFormat t3)) where
 setFormat x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QSyntaxHighlighter_setFormat cobj_x0 (toCInt x1) (toCInt x2) cobj_x3

qSyntaxHighlighter_delete :: QSyntaxHighlighter a -> IO ()
qSyntaxHighlighter_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_delete cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_delete" qtc_QSyntaxHighlighter_delete :: Ptr (TQSyntaxHighlighter a) -> IO ()

qSyntaxHighlighter_deleteLater :: QSyntaxHighlighter a -> IO ()
qSyntaxHighlighter_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_deleteLater cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_deleteLater" qtc_QSyntaxHighlighter_deleteLater :: Ptr (TQSyntaxHighlighter a) -> IO ()

instance QchildEvent (QSyntaxHighlighter ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_childEvent" qtc_QSyntaxHighlighter_childEvent :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QSyntaxHighlighterSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QSyntaxHighlighter ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSyntaxHighlighter_connectNotify" qtc_QSyntaxHighlighter_connectNotify :: Ptr (TQSyntaxHighlighter a) -> CWString -> IO ()

instance QconnectNotify (QSyntaxHighlighterSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QSyntaxHighlighter ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_customEvent" qtc_QSyntaxHighlighter_customEvent :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QSyntaxHighlighterSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QSyntaxHighlighter ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QSyntaxHighlighter_disconnectNotify" qtc_QSyntaxHighlighter_disconnectNotify :: Ptr (TQSyntaxHighlighter a) -> CWString -> IO ()

instance QdisconnectNotify (QSyntaxHighlighterSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QSyntaxHighlighter ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_event_h" qtc_QSyntaxHighlighter_event_h :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QSyntaxHighlighterSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_event_h cobj_x0 cobj_x1

instance QeventFilter (QSyntaxHighlighter ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSyntaxHighlighter_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QSyntaxHighlighter_eventFilter_h" qtc_QSyntaxHighlighter_eventFilter_h :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QSyntaxHighlighterSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QSyntaxHighlighter_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QSyntaxHighlighter ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QSyntaxHighlighter_receivers" qtc_QSyntaxHighlighter_receivers :: Ptr (TQSyntaxHighlighter a) -> CWString -> IO CInt

instance Qreceivers (QSyntaxHighlighterSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QSyntaxHighlighter_receivers cobj_x0 cstr_x1

instance Qsender (QSyntaxHighlighter ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_sender cobj_x0

foreign import ccall "qtc_QSyntaxHighlighter_sender" qtc_QSyntaxHighlighter_sender :: Ptr (TQSyntaxHighlighter a) -> IO (Ptr (TQObject ()))

instance Qsender (QSyntaxHighlighterSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QSyntaxHighlighter_sender cobj_x0

instance QtimerEvent (QSyntaxHighlighter ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QSyntaxHighlighter_timerEvent" qtc_QSyntaxHighlighter_timerEvent :: Ptr (TQSyntaxHighlighter a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QSyntaxHighlighterSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QSyntaxHighlighter_timerEvent cobj_x0 cobj_x1

