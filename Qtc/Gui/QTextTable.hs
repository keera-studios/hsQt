{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QTextTable.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QTextTable (
  qTextTable
  ,QcellAt(..)
  ,QmergeCells(..)
  ,rowEnd
  ,rowStart
  ,rows
  ,splitCell
  ,qTextTable_delete
  ,qTextTable_deleteLater
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

instance QuserMethod (QTextTable ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextTable_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QTextTable_userMethod" qtc_QTextTable_userMethod :: Ptr (TQTextTable a) -> CInt -> IO ()

instance QuserMethod (QTextTableSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QTextTable_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QTextTable ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextTable_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QTextTable_userMethodVariant" qtc_QTextTable_userMethodVariant :: Ptr (TQTextTable a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QTextTableSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QTextTable_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qTextTable :: (QTextDocument t1) -> IO (QTextTable ())
qTextTable (x1)
  = withQTextTableResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable cobj_x1

foreign import ccall "qtc_QTextTable" qtc_QTextTable :: Ptr (TQTextDocument t1) -> IO (Ptr (TQTextTable ()))

class QcellAt x1 where
 cellAt :: QTextTable a -> x1 -> IO (QTextTableCell ())

instance QcellAt ((Int)) where
 cellAt x0 (x1)
  = withQTextTableCellResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_cellAt1 cobj_x0 (toCInt x1)

foreign import ccall "qtc_QTextTable_cellAt1" qtc_QTextTable_cellAt1 :: Ptr (TQTextTable a) -> CInt -> IO (Ptr (TQTextTableCell ()))

instance QcellAt ((Int, Int)) where
 cellAt x0 (x1, x2)
  = withQTextTableCellResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_cellAt2 cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_cellAt2" qtc_QTextTable_cellAt2 :: Ptr (TQTextTable a) -> CInt -> CInt -> IO (Ptr (TQTextTableCell ()))

instance QcellAt ((QTextCursor t1)) where
 cellAt x0 (x1)
  = withQTextTableCellResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_cellAt cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_cellAt" qtc_QTextTable_cellAt :: Ptr (TQTextTable a) -> Ptr (TQTextCursor t1) -> IO (Ptr (TQTextTableCell ()))

instance Qcolumns (QTextTable a) (()) where
 columns x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_columns cobj_x0

foreign import ccall "qtc_QTextTable_columns" qtc_QTextTable_columns :: Ptr (TQTextTable a) -> IO CInt

instance Qformat (QTextTable a) (()) (IO (QTextTableFormat ())) where
 format x0 ()
  = withQTextTableFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_format cobj_x0

foreign import ccall "qtc_QTextTable_format" qtc_QTextTable_format :: Ptr (TQTextTable a) -> IO (Ptr (TQTextTableFormat ()))

instance QinsertColumns (QTextTable a) ((Int, Int)) (IO ()) where
 insertColumns x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_insertColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_insertColumns" qtc_QTextTable_insertColumns :: Ptr (TQTextTable a) -> CInt -> CInt -> IO ()

instance QinsertRows (QTextTable a) ((Int, Int)) (IO ()) where
 insertRows x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_insertRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_insertRows" qtc_QTextTable_insertRows :: Ptr (TQTextTable a) -> CInt -> CInt -> IO ()

class QmergeCells x1 where
 mergeCells :: QTextTable a -> x1 -> IO ()

instance QmergeCells ((Int, Int, Int, Int)) where
 mergeCells x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_mergeCells1 cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextTable_mergeCells1" qtc_QTextTable_mergeCells1 :: Ptr (TQTextTable a) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QmergeCells ((QTextCursor t1)) where
 mergeCells x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_mergeCells cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_mergeCells" qtc_QTextTable_mergeCells :: Ptr (TQTextTable a) -> Ptr (TQTextCursor t1) -> IO ()

instance QremoveColumns (QTextTable a) ((Int, Int)) (IO ()) where
 removeColumns x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_removeColumns cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_removeColumns" qtc_QTextTable_removeColumns :: Ptr (TQTextTable a) -> CInt -> CInt -> IO ()

instance QremoveRows (QTextTable a) ((Int, Int)) (IO ()) where
 removeRows x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_removeRows cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_removeRows" qtc_QTextTable_removeRows :: Ptr (TQTextTable a) -> CInt -> CInt -> IO ()

instance Qresize (QTextTable ()) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_resize cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QTextTable_resize" qtc_QTextTable_resize :: Ptr (TQTextTable a) -> CInt -> CInt -> IO ()

instance Qresize (QTextTableSc a) ((Int, Int)) (IO ()) where
 resize x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_resize cobj_x0 (toCInt x1) (toCInt x2)

rowEnd :: QTextTable a -> ((QTextCursor t1)) -> IO (QTextCursor ())
rowEnd x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_rowEnd cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_rowEnd" qtc_QTextTable_rowEnd :: Ptr (TQTextTable a) -> Ptr (TQTextCursor t1) -> IO (Ptr (TQTextCursor ()))

rowStart :: QTextTable a -> ((QTextCursor t1)) -> IO (QTextCursor ())
rowStart x0 (x1)
  = withQTextCursorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_rowStart cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_rowStart" qtc_QTextTable_rowStart :: Ptr (TQTextTable a) -> Ptr (TQTextCursor t1) -> IO (Ptr (TQTextCursor ()))

rows :: QTextTable a -> (()) -> IO (Int)
rows x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_rows cobj_x0

foreign import ccall "qtc_QTextTable_rows" qtc_QTextTable_rows :: Ptr (TQTextTable a) -> IO CInt

instance QsetFormat (QTextTable a) ((QTextTableFormat t1)) where
 setFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_setFormat cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_setFormat" qtc_QTextTable_setFormat :: Ptr (TQTextTable a) -> Ptr (TQTextTableFormat t1) -> IO ()

splitCell :: QTextTable a -> ((Int, Int, Int, Int)) -> IO ()
splitCell x0 (x1, x2, x3, x4)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_splitCell cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3) (toCInt x4)

foreign import ccall "qtc_QTextTable_splitCell" qtc_QTextTable_splitCell :: Ptr (TQTextTable a) -> CInt -> CInt -> CInt -> CInt -> IO ()

qTextTable_delete :: QTextTable a -> IO ()
qTextTable_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_delete cobj_x0

foreign import ccall "qtc_QTextTable_delete" qtc_QTextTable_delete :: Ptr (TQTextTable a) -> IO ()

qTextTable_deleteLater :: QTextTable a -> IO ()
qTextTable_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_deleteLater cobj_x0

foreign import ccall "qtc_QTextTable_deleteLater" qtc_QTextTable_deleteLater :: Ptr (TQTextTable a) -> IO ()

instance QchildEvent (QTextTable ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_childEvent" qtc_QTextTable_childEvent :: Ptr (TQTextTable a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QTextTableSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QTextTable ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextTable_connectNotify" qtc_QTextTable_connectNotify :: Ptr (TQTextTable a) -> CWString -> IO ()

instance QconnectNotify (QTextTableSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QTextTable ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_customEvent" qtc_QTextTable_customEvent :: Ptr (TQTextTable a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QTextTableSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QTextTable ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QTextTable_disconnectNotify" qtc_QTextTable_disconnectNotify :: Ptr (TQTextTable a) -> CWString -> IO ()

instance QdisconnectNotify (QTextTableSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QTextTable ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_event_h" qtc_QTextTable_event_h :: Ptr (TQTextTable a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QTextTableSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_event_h cobj_x0 cobj_x1

instance QeventFilter (QTextTable ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextTable_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QTextTable_eventFilter_h" qtc_QTextTable_eventFilter_h :: Ptr (TQTextTable a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QTextTableSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QTextTable_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QTextTable ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QTextTable_receivers" qtc_QTextTable_receivers :: Ptr (TQTextTable a) -> CWString -> IO CInt

instance Qreceivers (QTextTableSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QTextTable_receivers cobj_x0 cstr_x1

instance Qsender (QTextTable ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_sender cobj_x0

foreign import ccall "qtc_QTextTable_sender" qtc_QTextTable_sender :: Ptr (TQTextTable a) -> IO (Ptr (TQObject ()))

instance Qsender (QTextTableSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QTextTable_sender cobj_x0

instance QtimerEvent (QTextTable ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QTextTable_timerEvent" qtc_QTextTable_timerEvent :: Ptr (TQTextTable a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QTextTableSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QTextTable_timerEvent cobj_x0 cobj_x1

