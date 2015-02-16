{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QUndoCommand.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:21
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QUndoCommand (
  QqUndoCommand(..)
  ,QqUndoCommand_nf(..)
  ,QmergeWith(..)
  ,qUndoCommand_delete, qUndoCommand_delete1
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

instance QuserMethod (QUndoCommand ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoCommand_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QUndoCommand_userMethod" qtc_QUndoCommand_userMethod :: Ptr (TQUndoCommand a) -> CInt -> IO ()

instance QuserMethod (QUndoCommandSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QUndoCommand_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QUndoCommand ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoCommand_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QUndoCommand_userMethodVariant" qtc_QUndoCommand_userMethodVariant :: Ptr (TQUndoCommand a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QUndoCommandSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QUndoCommand_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqUndoCommand x1 where
  qUndoCommand :: x1 -> IO (QUndoCommand ())

instance QqUndoCommand (()) where
 qUndoCommand ()
  = withQUndoCommandResult $
    qtc_QUndoCommand

foreign import ccall "qtc_QUndoCommand" qtc_QUndoCommand :: IO (Ptr (TQUndoCommand ()))

instance QqUndoCommand ((QUndoCommand t1)) where
 qUndoCommand (x1)
  = withQUndoCommandResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoCommand1 cobj_x1

foreign import ccall "qtc_QUndoCommand1" qtc_QUndoCommand1 :: Ptr (TQUndoCommand t1) -> IO (Ptr (TQUndoCommand ()))

instance QqUndoCommand ((String)) where
 qUndoCommand (x1)
  = withQUndoCommandResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoCommand2 cstr_x1

foreign import ccall "qtc_QUndoCommand2" qtc_QUndoCommand2 :: CWString -> IO (Ptr (TQUndoCommand ()))

instance QqUndoCommand ((String, QUndoCommand t2)) where
 qUndoCommand (x1, x2)
  = withQUndoCommandResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoCommand3 cstr_x1 cobj_x2

foreign import ccall "qtc_QUndoCommand3" qtc_QUndoCommand3 :: CWString -> Ptr (TQUndoCommand t2) -> IO (Ptr (TQUndoCommand ()))

class QqUndoCommand_nf x1 where
  qUndoCommand_nf :: x1 -> IO (QUndoCommand ())

instance QqUndoCommand_nf (()) where
 qUndoCommand_nf ()
  = withObjectRefResult $
    qtc_QUndoCommand

instance QqUndoCommand_nf ((QUndoCommand t1)) where
 qUndoCommand_nf (x1)
  = withObjectRefResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoCommand1 cobj_x1

instance QqUndoCommand_nf ((String)) where
 qUndoCommand_nf (x1)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoCommand2 cstr_x1

instance QqUndoCommand_nf ((String, QUndoCommand t2)) where
 qUndoCommand_nf (x1, x2)
  = withObjectRefResult $
    withCWString x1 $ \cstr_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QUndoCommand3 cstr_x1 cobj_x2

instance Qqid (QUndoCommand ()) (()) where
 qid x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_id_h cobj_x0

foreign import ccall "qtc_QUndoCommand_id_h" qtc_QUndoCommand_id_h :: Ptr (TQUndoCommand a) -> IO CInt

instance Qqid (QUndoCommandSc a) (()) where
 qid x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_id_h cobj_x0

class QmergeWith x0 x1 where
 mergeWith :: x0 -> x1 -> IO (Bool)

instance QmergeWith (QUndoCommand ()) ((QUndoCommand t1)) where
 mergeWith x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoCommand_mergeWith_h cobj_x0 cobj_x1

foreign import ccall "qtc_QUndoCommand_mergeWith_h" qtc_QUndoCommand_mergeWith_h :: Ptr (TQUndoCommand a) -> Ptr (TQUndoCommand t1) -> IO CBool

instance QmergeWith (QUndoCommandSc a) ((QUndoCommand t1)) where
 mergeWith x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QUndoCommand_mergeWith_h cobj_x0 cobj_x1

instance Qredo (QUndoCommand ()) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_redo_h cobj_x0

foreign import ccall "qtc_QUndoCommand_redo_h" qtc_QUndoCommand_redo_h :: Ptr (TQUndoCommand a) -> IO ()

instance Qredo (QUndoCommandSc a) (()) where
 redo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_redo_h cobj_x0

instance QsetText (QUndoCommand a) ((String)) where
 setText x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QUndoCommand_setText cobj_x0 cstr_x1

foreign import ccall "qtc_QUndoCommand_setText" qtc_QUndoCommand_setText :: Ptr (TQUndoCommand a) -> CWString -> IO ()

instance Qtext (QUndoCommand a) (()) (IO (String)) where
 text x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_text cobj_x0

foreign import ccall "qtc_QUndoCommand_text" qtc_QUndoCommand_text :: Ptr (TQUndoCommand a) -> IO (Ptr (TQString ()))

instance Qundo (QUndoCommand ()) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_undo_h cobj_x0

foreign import ccall "qtc_QUndoCommand_undo_h" qtc_QUndoCommand_undo_h :: Ptr (TQUndoCommand a) -> IO ()

instance Qundo (QUndoCommandSc a) (()) where
 undo x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_undo_h cobj_x0

qUndoCommand_delete :: QUndoCommand a -> IO ()
qUndoCommand_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_delete cobj_x0

foreign import ccall "qtc_QUndoCommand_delete" qtc_QUndoCommand_delete :: Ptr (TQUndoCommand a) -> IO ()

qUndoCommand_delete1 :: QUndoCommand a -> IO ()
qUndoCommand_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QUndoCommand_delete1 cobj_x0

foreign import ccall "qtc_QUndoCommand_delete1" qtc_QUndoCommand_delete1 :: Ptr (TQUndoCommand a) -> IO ()

