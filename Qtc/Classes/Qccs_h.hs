{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Qccs_h.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:34
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Qccs_h (
  QsetUserMethod(..)
  , QunSetUserMethod(..), QunSetUserMethodVariant(..), QunSetUserMethodVariantList(..)
  , QsetHandler(..), QunSetHandler(..)
  , QactionEvent_h(..)
  , QatEnd_h(..)
  , Qbuddy_h(..)
  , QbytesAvailable_h(..)
  , QbytesToWrite_h(..)
  , QcanFetchMore_h(..)
  , QcanReadLine_h(..)
  , QchangeEvent_h(..)
  , Qclose_h(..)
  , QcloseEvent_h(..)
  , QcolumnCount_h(..)
  , QcontextMenuEvent_h(..)
  , QcreateWidget_h(..)
  , Qqdata_h(..)
  , QdevType_h(..)
  , QdragEnterEvent_h(..)
  , QdragLeaveEvent_h(..)
  , QdragMoveEvent_h(..)
  , QdropEvent_h(..)
  , QdropMimeData_h(..)
  , QenterEvent_h(..)
  , Qevent_h(..)
  , QeventFilter_h(..)
  , QfetchMore_h(..)
  , Qflags_h(..)
  , QfocusInEvent_h(..)
  , QfocusOutEvent_h(..)
  , QhasChildren_h(..)
  , QheaderData_h(..)
  , QheightForWidth_h(..)
  , QhideEvent_h(..)
  , Qindex_h(..)
  , QinputMethodQuery_h(..)
  , QinsertColumns_h(..)
  , QinsertRows_h(..)
  , QqisEmpty_h(..)
  , QisSequential_h(..)
  , QkeyPressEvent_h(..)
  , QkeyReleaseEvent_h(..)
  , QleaveEvent_h(..)
  , QminimumSizeHint_h(..), QqminimumSizeHint_h(..)
  , QmouseDoubleClickEvent_h(..)
  , QmouseMoveEvent_h(..)
  , QmousePressEvent_h(..)
  , QmouseReleaseEvent_h(..)
  , QmoveEvent_h(..)
  , Qnotify_h(..)
  , Qopen_h(..)
  , QpaintEngine_h(..)
  , QpaintEvent_h(..)
  , Qparent_h(..)
  , Qpos_h(..)
  , QremoveColumns_h(..)
  , QremoveRows_h(..)
  , Qreset_h(..)
  , QresizeEvent_h(..)
  , Qrevert_h(..)
  , QrowCount_h(..)
  , Qseek_h(..)
  , QsetData_h(..)
  , QsetHeaderData_h(..)
  , QsetVisible_h(..)
  , QshowEvent_h(..)
  , Qqsize_h(..)
  , QsizeHint_h(..), QqsizeHint_h(..)
  , Qsort_h(..)
  , Qspan_h(..), Qqspan_h(..)
  , Qsubmit_h(..)
  , QsupportedDropActions_h(..)
  , QtabletEvent_h(..)
  , QwaitForBytesWritten_h(..)
  , QwaitForReadyRead_h(..)
  , QwheelEvent_h(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Core.Qt
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Gui

class QsetUserMethod a b where
  setUserMethod :: a -> Int -> b -> IO ()

class QunSetUserMethod a where
  unSetUserMethod :: a -> Int -> IO Bool

class QunSetUserMethodVariant a where
  unSetUserMethodVariant :: a -> Int -> IO Bool

class QunSetUserMethodVariantList a where
  unSetUserMethodVariantList :: a -> Int -> IO Bool

class QsetHandler a b where
  setHandler :: a -> String -> b -> IO ()

class QunSetHandler a where
  unSetHandler :: a -> String -> IO Bool

class QactionEvent_h a b where
 actionEvent_h :: a -> b -> IO ()

class QatEnd_h a b where
 atEnd_h :: a -> b -> IO (Bool)

class Qbuddy_h a b where
 buddy_h :: a -> b -> IO (QModelIndex ())

class QbytesAvailable_h a b where
 bytesAvailable_h :: a -> b -> IO (Int)

class QbytesToWrite_h a b where
 bytesToWrite_h :: a -> b -> IO (Int)

class QcanFetchMore_h a b where
 canFetchMore_h :: a -> b -> IO (Bool)

class QcanReadLine_h a b where
 canReadLine_h :: a -> b -> IO (Bool)

class QchangeEvent_h a b where
 changeEvent_h :: a -> b -> IO ()

class Qclose_h a b where
 close_h :: a -> b -> IO ()

class QcloseEvent_h a b where
 closeEvent_h :: a -> b -> IO ()

class QcolumnCount_h a b where
 columnCount_h :: a -> b -> IO (Int)

class QcontextMenuEvent_h a b where
 contextMenuEvent_h :: a -> b -> IO ()

class QcreateWidget_h a b where
 createWidget_h :: a -> b -> IO (QWidget ())

class Qqdata_h a b where
 qdata_h :: a -> b -> IO (QVariant ())

class QdevType_h a b where
 devType_h :: a -> b -> IO (Int)

class QdragEnterEvent_h a b where
 dragEnterEvent_h :: a -> b -> IO ()

class QdragLeaveEvent_h a b where
 dragLeaveEvent_h :: a -> b -> IO ()

class QdragMoveEvent_h a b where
 dragMoveEvent_h :: a -> b -> IO ()

class QdropEvent_h a b where
 dropEvent_h :: a -> b -> IO ()

class QdropMimeData_h a b where
 dropMimeData_h :: a -> b -> IO (Bool)

class QenterEvent_h a b where
 enterEvent_h :: a -> b -> IO ()

class Qevent_h a b where
 event_h :: a -> b -> IO (Bool)

class QeventFilter_h a b where
 eventFilter_h :: a -> b -> IO (Bool)

class QfetchMore_h a b where
 fetchMore_h :: a -> b -> IO ()

class Qflags_h a b where
 flags_h :: a -> b -> IO (ItemFlags)

class QfocusInEvent_h a b where
 focusInEvent_h :: a -> b -> IO ()

class QfocusOutEvent_h a b where
 focusOutEvent_h :: a -> b -> IO ()

class QhasChildren_h a b where
 hasChildren_h :: a -> b -> IO (Bool)

class QheaderData_h a b where
 headerData_h :: a -> b -> IO (QVariant ())

class QheightForWidth_h a b where
 heightForWidth_h :: a -> b -> IO (Int)

class QhideEvent_h a b where
 hideEvent_h :: a -> b -> IO ()

class Qindex_h a b where
 index_h :: a -> b -> IO (QModelIndex ())

class QinputMethodQuery_h a b where
 inputMethodQuery_h :: a -> b -> IO (QVariant ())

class QinsertColumns_h a b where
 insertColumns_h :: a -> b -> IO (Bool)

class QinsertRows_h a b where
 insertRows_h :: a -> b -> IO (Bool)

class QqisEmpty_h a b where
 qisEmpty_h :: a -> b -> IO (Bool)

class QisSequential_h a b where
 isSequential_h :: a -> b -> IO (Bool)

class QkeyPressEvent_h a b where
 keyPressEvent_h :: a -> b -> IO ()

class QkeyReleaseEvent_h a b where
 keyReleaseEvent_h :: a -> b -> IO ()

class QleaveEvent_h a b where
 leaveEvent_h :: a -> b -> IO ()

class QminimumSizeHint_h a b where
 minimumSizeHint_h :: a -> b -> IO (Size)

class QqminimumSizeHint_h a b where
 qminimumSizeHint_h :: a -> b -> IO (QSize ())

class QmouseDoubleClickEvent_h a b where
 mouseDoubleClickEvent_h :: a -> b -> IO ()

class QmouseMoveEvent_h a b where
 mouseMoveEvent_h :: a -> b -> IO ()

class QmousePressEvent_h a b where
 mousePressEvent_h :: a -> b -> IO ()

class QmouseReleaseEvent_h a b where
 mouseReleaseEvent_h :: a -> b -> IO ()

class QmoveEvent_h a b where
 moveEvent_h :: a -> b -> IO ()

class Qnotify_h a b where
 notify_h :: a -> b -> IO (Bool)

class Qopen_h a b where
 open_h :: a -> b -> IO (Bool)

class QpaintEngine_h a b where
 paintEngine_h :: a -> b -> IO (QPaintEngine ())

class QpaintEvent_h a b where
 paintEvent_h :: a -> b -> IO ()

class Qparent_h a b where
 parent_h :: a -> b -> IO (QModelIndex ())

class Qpos_h a b where
 pos_h :: a -> b -> IO (Int)

class QremoveColumns_h a b where
 removeColumns_h :: a -> b -> IO (Bool)

class QremoveRows_h a b where
 removeRows_h :: a -> b -> IO (Bool)

class Qreset_h a b c | a -> c where
 reset_h :: a -> b -> c

class QresizeEvent_h a b where
 resizeEvent_h :: a -> b -> IO ()

class Qrevert_h a b where
 revert_h :: a -> b -> IO ()

class QrowCount_h a b where
 rowCount_h :: a -> b -> IO (Int)

class Qseek_h a b where
 seek_h :: a -> b -> IO (Bool)

class QsetData_h a b c | a -> c where
 setData_h :: a -> b -> c

class QsetHeaderData_h a b where
 setHeaderData_h :: a -> b -> IO (Bool)

class QsetVisible_h a b where
 setVisible_h :: a -> b -> IO ()

class QshowEvent_h a b where
 showEvent_h :: a -> b -> IO ()

class Qqsize_h a b where
 qsize_h :: a -> b -> IO (Int)

class QsizeHint_h a b where
 sizeHint_h :: a -> b -> IO (Size)

class QqsizeHint_h a b where
 qsizeHint_h :: a -> b -> IO (QSize ())

class Qsort_h a b where
 sort_h :: a -> b -> IO ()

class Qspan_h a b where
 span_h :: a -> b -> IO (Size)

class Qqspan_h a b where
 qspan_h :: a -> b -> IO (QSize ())

class Qsubmit_h a b where
 submit_h :: a -> b -> IO (Bool)

class QsupportedDropActions_h a b where
 supportedDropActions_h :: a -> b -> IO (DropActions)

class QtabletEvent_h a b where
 tabletEvent_h :: a -> b -> IO ()

class QwaitForBytesWritten_h a b where
 waitForBytesWritten_h :: a -> b -> IO (Bool)

class QwaitForReadyRead_h a b where
 waitForReadyRead_h :: a -> b -> IO (Bool)

class QwheelEvent_h a b where
 wheelEvent_h :: a -> b -> IO ()

