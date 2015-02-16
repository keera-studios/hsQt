{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Qccs.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:33
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Classes.Qccs (
  QuserMethod(..)
  , Qabort(..)
  , Qaccept(..)
  , QactionEvent(..)
  , Qalpha(..)
  , Qqangle(..)
  , QatEnd(..)
  , QbeginInsertColumns(..)
  , QbeginInsertRows(..)
  , QbeginRemoveColumns(..)
  , QbeginRemoveRows(..)
  , Qbind(..)
  , Qqbottom(..)
  , QqboundingRect(..), QqqboundingRect(..)
  , Qbuddy(..)
  , QbytesAvailable(..)
  , QbytesToWrite(..)
  , QcanFetchMore(..)
  , QcanReadLine(..)
  , QcaseSensitivity(..)
  , Qcd(..)
  , Qqcenter(..), Qqqcenter(..)
  , QchangeEvent(..)
  , QchangePersistentIndex(..)
  , Qchild(..)
  , QchildEvent(..)
  , Qclear(..)
  , Qclose(..)
  , QcloseEvent(..)
  , Qcolumn(..)
  , QcolumnCount(..)
  , QconnectNotify(..)
  , Qqcontains(..), Qqqcontains(..)
  , Qcontext(..)
  , QcontextMenuEvent(..)
  , Qcopy(..), Qcopy_nf(..)
  , Qcount(..)
  , Qcreate(..)
  , QcreateIndex(..)
  , QcreateWidget(..)
  , QcurrentFrame(..)
  , QcustomEvent(..)
  , Qqdata(..), Qqdata_nf(..)
  , Qdate(..)
  , Qdepth(..)
  , Qdestroy(..)
  , Qdetach(..)
  , QdevType(..)
  , Qdevice(..)
  , Qdirection(..)
  , QdisconnectNotify(..)
  , QdragEnterEvent(..)
  , QdragLeaveEvent(..)
  , QdragMoveEvent(..)
  , QdropEvent(..)
  , QdropMimeData(..)
  , QenabledChange(..)
  , QendInsertColumns(..)
  , QendInsertRows(..)
  , QendRemoveColumns(..)
  , QendRemoveRows(..)
  , QenterEvent(..)
  , Qqerror(..)
  , QerrorString(..)
  , Qevent(..)
  , QeventFilter(..)
  , QexactMatch(..)
  , QfetchMore(..)
  , QfileName(..)
  , QfilePath(..)
  , Qqfilter(..)
  , Qfind(..)
  , Qflags(..)
  , Qflush(..)
  , QfocusInEvent(..)
  , QfocusNextChild(..)
  , QfocusNextPrevChild(..)
  , QfocusOutEvent(..)
  , QfocusPreviousChild(..)
  , QfontChange(..)
  , Qformat(..)
  , Qgroup(..)
  , QhasChildren(..)
  , QheaderData(..), QheaderData_nf(..)
  , Qqheight(..)
  , QheightForWidth(..)
  , QhideEvent(..)
  , Qignore(..)
  , Qindex(..)
  , QinputMethodEvent(..)
  , QinputMethodQuery(..)
  , QinsertColumn(..)
  , QinsertColumns(..)
  , QinsertRow(..)
  , QinsertRows(..)
  , Qqintersect(..)
  , Qqintersected(..)
  , Qqintersects(..), Qqqintersects(..)
  , QisActive(..)
  , QisDetached(..)
  , QisDir(..)
  , QqisEmpty(..)
  , QisExecutable(..)
  , QisFile(..)
  , QisHidden(..)
  , QqisNull(..)
  , QisReadable(..)
  , QisSequential(..)
  , QisSymLink(..)
  , QqisValid(..)
  , QisWritable(..)
  , QkeyPressEvent(..)
  , QkeyReleaseEvent(..)
  , QlanguageChange(..)
  , QlastModified(..)
  , QlastRead(..)
  , QleaveEvent(..)
  , Qqlength(..)
  , Qlink(..)
  , Qload(..)
  , QloopCount(..)
  , Qmetric(..)
  , QminimumSizeHint(..), QqminimumSizeHint(..)
  , Qmkdir(..)
  , Qmodel(..)
  , QmouseDoubleClickEvent(..)
  , QmouseMoveEvent(..)
  , QmousePressEvent(..)
  , QmouseReleaseEvent(..)
  , QmoveEvent(..)
  , QqmoveTo(..), QqqmoveTo(..)
  , Qname(..)
  , QnameFilters(..)
  , Qnotify(..)
  , Qopen(..)
  , Qowner(..)
  , QpaintEngine(..)
  , QpaintEvent(..)
  , QpaletteChange(..)
  , Qparent(..)
  , Qpassword(..)
  , Qpath(..)
  , Qpermissions(..)
  , Qport(..)
  , Qpos(..)
  , QreadAll(..)
  , Qreceivers(..)
  , Qrefresh(..)
  , Qremove(..)
  , QremoveColumn(..)
  , QremoveColumns(..)
  , QremoveRow(..)
  , QremoveRows(..)
  , Qrename(..)
  , Qreset(..)
  , QresetInputContext(..)
  , Qresize(..)
  , QresizeEvent(..)
  , Qrevert(..)
  , Qrgba(..)
  , Qrmdir(..)
  , Qrow(..)
  , QrowCount(..)
  , Qqscale(..)
  , Qseek(..)
  , Qsender(..)
  , QsetAlpha(..)
  , QqsetBottom(..)
  , QsetCaseSensitivity(..)
  , QsetContext(..)
  , QsetData(..)
  , QsetDate(..)
  , QsetDevice(..)
  , QsetDirection(..)
  , QsetErrorString(..)
  , QsetFile(..)
  , QsetFileName(..)
  , QsetFilter(..)
  , QsetFormat(..)
  , QsetGroup(..)
  , QsetHeaderData(..)
  , QqsetHeight(..)
  , QsetHost(..)
  , QsetHtml(..)
  , QsetMatrix(..)
  , QsetMouseTracking(..)
  , QsetName(..)
  , QsetNameFilters(..)
  , QsetOpenMode(..)
  , QsetPassword(..)
  , QsetPath(..)
  , QsetPaused(..)
  , QsetPermissions(..)
  , QsetPort(..)
  , QqsetRect(..)
  , QsetRgba(..)
  , QqsetSize(..)
  , QsetSorting(..)
  , QsetText(..)
  , QsetTime(..)
  , QqsetTop(..)
  , QsetType(..)
  , QsetValid(..)
  , QsetValue(..)
  , QsetVersion(..)
  , QsetVisible(..)
  , QqsetWidth(..)
  , QshowEvent(..)
  , Qqsize(..), Qqqsize(..)
  , QsizeHint(..), QqsizeHint(..)
  , Qsort(..)
  , Qsorting(..)
  , Qspan(..), Qqspan(..)
  , Qstart(..)
  , Qstate(..)
  , Qstop(..)
  , Qsubmit(..)
  , Qqsubtracted(..)
  , Qsuffix(..)
  , QsupportedDropActions(..)
  , QtabletEvent(..)
  , Qtext(..)
  , Qtexture(..), Qtexture_nf(..)
  , Qtime(..)
  , QtimerEvent(..)
  , QtoImage(..), QtoImage_nf(..)
  , QtoString(..)
  , Qqtop(..)
  , Qqtranslate(..), Qqqtranslate(..)
  , Qqtranslated(..), Qqqtranslated(..)
  , Qqtranspose(..)
  , Qqtype(..)
  , Qqunite(..)
  , Qqunited(..)
  , QupdateMicroFocus(..)
  , Qvalue(..), Qvalue_nf(..)
  , Qversion(..)
  , QwaitForBytesWritten(..)
  , QwaitForReadyRead(..)
  , QwheelEvent(..)
  , Qqwidth(..)
  , QwindowActivationChange(..)
  , QwriteData(..)
  , Qqx(..)
  , Qqy(..)
  ) where

import Foreign.C.Types
import Qtc.Enums.Core.Qt
import Qtc.Enums.Core.QDir
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.ClassTypes.Gui

class QuserMethod a b c | a b -> c where
  userMethod :: a -> Int -> b -> c

class Qabort a b c | a -> c where
 abort :: a -> b -> c

class Qaccept a b where
 accept :: a -> b -> IO ()

class QactionEvent a b where
 actionEvent :: a -> b -> IO ()

class Qalpha a b c | a -> c where
 alpha :: a -> b -> c

class Qqangle a b where
 qangle :: a -> b -> IO (Double)

class QatEnd a b where
 atEnd :: a -> b -> IO (Bool)

class QbeginInsertColumns a b where
 beginInsertColumns :: a -> b -> IO ()

class QbeginInsertRows a b where
 beginInsertRows :: a -> b -> IO ()

class QbeginRemoveColumns a b where
 beginRemoveColumns :: a -> b -> IO ()

class QbeginRemoveRows a b where
 beginRemoveRows :: a -> b -> IO ()

class Qbind a b where
 bind :: a -> b -> IO (Bool)

class Qqbottom a b c | a -> c where
 qbottom :: a -> b -> c

class QqboundingRect a b c | a b -> c where
 qboundingRect :: a -> b -> c

class QqqboundingRect a b c | a b -> c where
 qqboundingRect :: a -> b -> c

class Qbuddy a b c | a -> c where
 buddy :: a -> b -> c

class QbytesAvailable a b where
 bytesAvailable :: a -> b -> IO (Int)

class QbytesToWrite a b where
 bytesToWrite :: a -> b -> IO (Int)

class QcanFetchMore a b where
 canFetchMore :: a -> b -> IO (Bool)

class QcanReadLine a b where
 canReadLine :: a -> b -> IO (Bool)

class QcaseSensitivity a b where
 caseSensitivity :: a -> b -> IO (CaseSensitivity)

class Qcd a b c | a -> c where
 cd :: a -> b -> c

class Qqcenter a b c | a -> c where
 qcenter :: a -> b -> c

class Qqqcenter a b c | a -> c where
 qqcenter :: a -> b -> c

class QchangeEvent a b where
 changeEvent :: a -> b -> IO ()

class QchangePersistentIndex a b where
 changePersistentIndex :: a -> b -> IO ()

class Qchild a b c | a -> c where
 child :: a -> b -> c

class QchildEvent a b where
 childEvent :: a -> b -> IO ()

class Qclear a b where
 clear :: a -> b -> IO ()

class Qclose a b c | a -> c where
 close :: a -> b -> c

class QcloseEvent a b where
 closeEvent :: a -> b -> IO ()

class Qcolumn a b where
 column :: a -> b -> IO (Int)

class QcolumnCount a b where
 columnCount :: a -> b -> IO (Int)

class QconnectNotify a b where
 connectNotify :: a -> b -> IO ()

class Qqcontains a b where
 qcontains :: a -> b -> IO (Bool)

class Qqqcontains a b where
 qqcontains :: a -> b -> IO (Bool)

class Qcontext a b c | a -> c where
 context :: a -> b -> c

class QcontextMenuEvent a b where
 contextMenuEvent :: a -> b -> IO ()

class Qcopy a b c | a -> c where
 copy :: a -> b -> c

class Qcopy_nf a b c | a -> c where
 copy_nf :: a -> b -> c

class Qcount a b where
 count :: a -> b -> IO (Int)

class Qcreate a b c | a -> c where
 create :: a -> b -> c

class QcreateIndex a b where
 createIndex :: a -> b -> IO (QModelIndex ())

class QcreateWidget a b where
 createWidget :: a -> b -> IO (QWidget ())

class QcurrentFrame a b c | a -> c where
 currentFrame :: a -> b -> c

class QcustomEvent a b where
 customEvent :: a -> b -> IO ()

class Qqdata a b c | a -> c where
 qdata :: a -> b -> c

class Qqdata_nf a b c | a -> c where
 qdata_nf :: a -> b -> c

class Qdate a b where
 date :: a -> b -> IO (QDate ())

class Qdepth a b c | a -> c where
 depth :: a -> b -> c

class Qdestroy a b where
 destroy :: a -> b -> IO ()

class Qdetach a b where
 detach :: a -> b -> IO ()

class QdevType a b where
 devType :: a -> b -> IO (Int)

class Qdevice a b c | a -> c where
 device :: a -> b -> c

class Qdirection a b c | a -> c where
 direction :: a -> b -> c

class QdisconnectNotify a b where
 disconnectNotify :: a -> b -> IO ()

class QdragEnterEvent a b where
 dragEnterEvent :: a -> b -> IO ()

class QdragLeaveEvent a b where
 dragLeaveEvent :: a -> b -> IO ()

class QdragMoveEvent a b where
 dragMoveEvent :: a -> b -> IO ()

class QdropEvent a b where
 dropEvent :: a -> b -> IO ()

class QdropMimeData a b where
 dropMimeData :: a -> b -> IO (Bool)

class QenabledChange a b where
 enabledChange :: a -> b -> IO ()

class QendInsertColumns a b where
 endInsertColumns :: a -> b -> IO ()

class QendInsertRows a b where
 endInsertRows :: a -> b -> IO ()

class QendRemoveColumns a b where
 endRemoveColumns :: a -> b -> IO ()

class QendRemoveRows a b where
 endRemoveRows :: a -> b -> IO ()

class QenterEvent a b where
 enterEvent :: a -> b -> IO ()

class Qqerror a b c | a -> c where
 qerror :: a -> b -> c

class QerrorString a b where
 errorString :: a -> b -> IO (String)

class Qevent a b where
 event :: a -> b -> IO (Bool)

class QeventFilter a b where
 eventFilter :: a -> b -> IO (Bool)

class QexactMatch a b where
 exactMatch :: a -> b -> IO (Bool)

class QfetchMore a b where
 fetchMore :: a -> b -> IO ()

class QfileName a b where
 fileName :: a -> b -> IO (String)

class QfilePath a b where
 filePath :: a -> b -> IO (String)

class Qqfilter a b where
 qfilter :: a -> b -> IO (Filters)

class Qfind a b c | a -> c where
 find :: a -> b -> c

class Qflags a b c | a -> c where
 flags :: a -> b -> c

class Qflush a b c | a -> c where
 flush :: a -> b -> c

class QfocusInEvent a b where
 focusInEvent :: a -> b -> IO ()

class QfocusNextChild a b where
 focusNextChild :: a -> b -> IO (Bool)

class QfocusNextPrevChild a b where
 focusNextPrevChild :: a -> b -> IO (Bool)

class QfocusOutEvent a b where
 focusOutEvent :: a -> b -> IO ()

class QfocusPreviousChild a b where
 focusPreviousChild :: a -> b -> IO (Bool)

class QfontChange a b where
 fontChange :: a -> b -> IO ()

class Qformat a b c | a -> c where
 format :: a -> b -> c

class Qgroup a b c | a -> c where
 group :: a -> b -> c

class QhasChildren a b where
 hasChildren :: a -> b -> IO (Bool)

class QheaderData a b where
 headerData :: a -> b -> IO (QVariant ())

class QheaderData_nf a b where
 headerData_nf :: a -> b -> IO (QVariant ())

class Qqheight a b c | a -> c where
 qheight :: a -> b -> c

class QheightForWidth a b where
 heightForWidth :: a -> b -> IO (Int)

class QhideEvent a b where
 hideEvent :: a -> b -> IO ()

class Qignore a b where
 ignore :: a -> b -> IO ()

class Qindex a b c | a -> c where
 index :: a -> b -> c

class QinputMethodEvent a b where
 inputMethodEvent :: a -> b -> IO ()

class QinputMethodQuery a b where
 inputMethodQuery :: a -> b -> IO (QVariant ())

class QinsertColumn a b c | a -> c where
 insertColumn :: a -> b -> c

class QinsertColumns a b c | a -> c where
 insertColumns :: a -> b -> c

class QinsertRow a b c | a b -> c where
 insertRow :: a -> b -> c

class QinsertRows a b c | a -> c where
 insertRows :: a -> b -> c

class Qqintersect a b c | a -> c where
 qintersect :: a -> b -> c

class Qqintersected a b c | a -> c where
 qintersected :: a -> b -> c

class Qqintersects a b where
 qintersects :: a -> b -> IO (Bool)

class Qqqintersects a b where
 qqintersects :: a -> b -> IO (Bool)

class QisActive a b where
 isActive :: a -> b -> IO (Bool)

class QisDetached a b where
 isDetached :: a -> b -> IO (Bool)

class QisDir a b where
 isDir :: a -> b -> IO (Bool)

class QqisEmpty a b where
 qisEmpty :: a -> b -> IO (Bool)

class QisExecutable a b where
 isExecutable :: a -> b -> IO (Bool)

class QisFile a b where
 isFile :: a -> b -> IO (Bool)

class QisHidden a b where
 isHidden :: a -> b -> IO (Bool)

class QqisNull a b where
 qisNull :: a -> b -> IO (Bool)

class QisReadable a b where
 isReadable :: a -> b -> IO (Bool)

class QisSequential a b where
 isSequential :: a -> b -> IO (Bool)

class QisSymLink a b where
 isSymLink :: a -> b -> IO (Bool)

class QqisValid a b where
 qisValid :: a -> b -> IO (Bool)

class QisWritable a b where
 isWritable :: a -> b -> IO (Bool)

class QkeyPressEvent a b where
 keyPressEvent :: a -> b -> IO ()

class QkeyReleaseEvent a b where
 keyReleaseEvent :: a -> b -> IO ()

class QlanguageChange a b where
 languageChange :: a -> b -> IO ()

class QlastModified a b where
 lastModified :: a -> b -> IO (QDateTime ())

class QlastRead a b where
 lastRead :: a -> b -> IO (QDateTime ())

class QleaveEvent a b where
 leaveEvent :: a -> b -> IO ()

class Qqlength a b c | a -> c where
 qlength :: a -> b -> c

class Qlink a b c | a -> c where
 link :: a -> b -> c

class Qload a b c | a -> c where
 load :: a -> b -> c

class QloopCount a b where
 loopCount :: a -> b -> IO (Int)

class Qmetric a b where
 metric :: a -> b -> IO (Int)

class QminimumSizeHint a b where
 minimumSizeHint :: a -> b -> IO (Size)

class QqminimumSizeHint a b where
 qminimumSizeHint :: a -> b -> IO (QSize ())

class Qmkdir a b c | a -> c where
 mkdir :: a -> b -> c

class Qmodel a b c | a -> c where
 model :: a -> b -> c

class QmouseDoubleClickEvent a b where
 mouseDoubleClickEvent :: a -> b -> IO ()

class QmouseMoveEvent a b where
 mouseMoveEvent :: a -> b -> IO ()

class QmousePressEvent a b where
 mousePressEvent :: a -> b -> IO ()

class QmouseReleaseEvent a b where
 mouseReleaseEvent :: a -> b -> IO ()

class QmoveEvent a b where
 moveEvent :: a -> b -> IO ()

class QqmoveTo a b where
 qmoveTo :: a -> b -> IO ()

class QqqmoveTo a b where
 qqmoveTo :: a -> b -> IO ()

class Qname a b where
 name :: a -> b -> IO (String)

class QnameFilters a b where
 nameFilters :: a -> b -> IO ([String])

class Qnotify a b where
 notify :: a -> b -> IO (Bool)

class Qopen a b where
 open :: a -> b -> IO (Bool)

class Qowner a b where
 owner :: a -> b -> IO (String)

class QpaintEngine a b where
 paintEngine :: a -> b -> IO (QPaintEngine ())

class QpaintEvent a b where
 paintEvent :: a -> b -> IO ()

class QpaletteChange a b where
 paletteChange :: a -> b -> IO ()

class Qparent a b c | a b -> c where
 parent :: a -> b -> c

class Qpassword a b where
 password :: a -> b -> IO (String)

class Qpath a b c | a -> c where
 path :: a -> b -> c

class Qpermissions a b c | a -> c where
 permissions :: a -> b -> c

class Qport a b where
 port :: a -> b -> IO (Int)

class Qpos a b c | a -> c where
 pos :: a -> b -> c

class QreadAll a b where
 readAll :: a -> b -> IO (String)

class Qreceivers a b where
 receivers :: a -> b -> IO (Int)

class Qrefresh a b where
 refresh :: a -> b -> IO ()

class Qremove a b c | a -> c where
 remove :: a -> b -> c

class QremoveColumn a b c | a -> c where
 removeColumn :: a -> b -> c

class QremoveColumns a b c | a -> c where
 removeColumns :: a -> b -> c

class QremoveRow a b c | a -> c where
 removeRow :: a -> b -> c

class QremoveRows a b c | a -> c where
 removeRows :: a -> b -> c

class Qrename a b c | a -> c where
 rename :: a -> b -> c

class Qreset a b c | a -> c where
 reset :: a -> b -> c

class QresetInputContext a b where
 resetInputContext :: a -> b -> IO ()

class Qresize a b c | a -> c where
 resize :: a -> b -> c

class QresizeEvent a b where
 resizeEvent :: a -> b -> IO ()

class Qrevert a b where
 revert :: a -> b -> IO ()

class Qrgba a b c | a -> c where
 rgba :: a -> b -> c

class Qrmdir a b c | a -> c where
 rmdir :: a -> b -> c

class Qrow a b where
 row :: a -> b -> IO (Int)

class QrowCount a b where
 rowCount :: a -> b -> IO (Int)

class Qqscale a b where
 qscale :: a -> b -> IO ()

class Qseek a b where
 seek :: a -> b -> IO (Bool)

class Qsender a b where
 sender :: a -> b -> IO (QObject ())

class QsetAlpha a b where
 setAlpha :: a -> b -> IO ()

class QqsetBottom a b where
 qsetBottom :: a -> b -> IO ()

class QsetCaseSensitivity a b where
 setCaseSensitivity :: a -> b -> IO ()

class QsetContext a b where
 setContext :: a -> b -> IO ()

class QsetData a b c | a -> c where
 setData :: a -> b -> c

class QsetDate a b c | a -> c where
 setDate :: a -> b -> c

class QsetDevice a b where
 setDevice :: a -> b -> IO ()

class QsetDirection a b where
 setDirection :: a -> b -> IO ()

class QsetErrorString a b where
 setErrorString :: a -> b -> IO ()

class QsetFile a b where
 setFile :: a -> b -> IO ()

class QsetFileName a b where
 setFileName :: a -> b -> IO ()

class QsetFilter a b where
 setFilter :: a -> b -> IO ()

class QsetFormat a b where
 setFormat :: a -> b -> IO ()

class QsetGroup a b where
 setGroup :: a -> b -> IO ()

class QsetHeaderData a b where
 setHeaderData :: a -> b -> IO (Bool)

class QqsetHeight a b where
 qsetHeight :: a -> b -> IO ()

class QsetHost a b c | a -> c where
 setHost :: a -> b -> c

class QsetHtml a b where
 setHtml :: a -> b -> IO ()

class QsetMatrix a b where
 setMatrix :: a -> b -> IO ()

class QsetMouseTracking a b where
 setMouseTracking :: a -> b -> IO ()

class QsetName a b where
 setName :: a -> b -> IO ()

class QsetNameFilters a b where
 setNameFilters :: a -> b -> IO ()

class QsetOpenMode a b where
 setOpenMode :: a -> b -> IO ()

class QsetPassword a b where
 setPassword :: a -> b -> IO ()

class QsetPath a b where
 setPath :: a -> b -> IO ()

class QsetPaused a b where
 setPaused :: a -> b -> IO ()

class QsetPermissions a b c | a -> c where
 setPermissions :: a -> b -> c

class QsetPort a b where
 setPort :: a -> b -> IO ()

class QqsetRect a b where
 qsetRect :: a -> b -> IO ()

class QsetRgba a b where
 setRgba :: a -> b -> IO ()

class QqsetSize a b where
 qsetSize :: a -> b -> IO ()

class QsetSorting a b where
 setSorting :: a -> b -> IO ()

class QsetText a b where
 setText :: a -> b -> IO ()

class QsetTime a b where
 setTime :: a -> b -> IO ()

class QqsetTop a b where
 qsetTop :: a -> b -> IO ()

class QsetType a b where
 setType :: a -> b -> IO ()

class QsetValid a b where
 setValid :: a -> b -> IO ()

class QsetValue a b where
 setValue :: a -> b -> IO ()

class QsetVersion a b where
 setVersion :: a -> b -> IO ()

class QsetVisible a b where
 setVisible :: a -> b -> IO ()

class QqsetWidth a b where
 qsetWidth :: a -> b -> IO ()

class QshowEvent a b where
 showEvent :: a -> b -> IO ()

class Qqsize a b c | a -> c where
 qsize :: a -> b -> c

class Qqqsize a b c | a -> c where
 qqsize :: a -> b -> c

class QsizeHint a b where
 sizeHint :: a -> b -> IO (Size)

class QqsizeHint a b where
 qsizeHint :: a -> b -> IO (QSize ())

class Qsort a b where
 sort :: a -> b -> IO ()

class Qsorting a b where
 sorting :: a -> b -> IO (SortFlags)

class Qspan a b where
 span :: a -> b -> IO (Size)

class Qqspan a b where
 qspan :: a -> b -> IO (QSize ())

class Qstart a b c | a -> c where
 start :: a -> b -> c

class Qstate a b c | a -> c where
 state :: a -> b -> c

class Qstop a b where
 stop :: a -> b -> IO ()

class Qsubmit a b where
 submit :: a -> b -> IO (Bool)

class Qqsubtracted a b c | a -> c where
 qsubtracted :: a -> b -> c

class Qsuffix a b where
 suffix :: a -> b -> IO (String)

class QsupportedDropActions a b where
 supportedDropActions :: a -> b -> IO (DropActions)

class QtabletEvent a b where
 tabletEvent :: a -> b -> IO ()

class Qtext a b c | a -> c where
 text :: a -> b -> c

class Qtexture a b c | a -> c where
 texture :: a -> b -> c

class Qtexture_nf a b c | a -> c where
 texture_nf :: a -> b -> c

class Qtime a b where
 time :: a -> b -> IO (QTime ())

class QtimerEvent a b where
 timerEvent :: a -> b -> IO ()

class QtoImage a b where
 toImage :: a -> b -> IO (QImage ())

class QtoImage_nf a b where
 toImage_nf :: a -> b -> IO (QImage ())

class QtoString a b where
 toString :: a -> b -> IO (String)

class Qqtop a b c | a -> c where
 qtop :: a -> b -> c

class Qqtranslate a b c | a -> c where
 qtranslate :: a -> b -> c

class Qqqtranslate a b where
 qqtranslate :: a -> b -> IO ()

class Qqtranslated a b c | a -> c where
 qtranslated :: a -> b -> c

class Qqqtranslated a b c | a -> c where
 qqtranslated :: a -> b -> c

class Qqtranspose a b where
 qtranspose :: a -> b -> IO ()

class Qqtype a b c | a -> c where
 qtype :: a -> b -> c

class Qqunite a b c | a -> c where
 qunite :: a -> b -> c

class Qqunited a b c | a -> c where
 qunited :: a -> b -> c

class QupdateMicroFocus a b where
 updateMicroFocus :: a -> b -> IO ()

class Qvalue a b c | a -> c where
 value :: a -> b -> c

class Qvalue_nf a b c | a -> c where
 value_nf :: a -> b -> c

class Qversion a b c | a -> c where
 version :: a -> b -> c

class QwaitForBytesWritten a b where
 waitForBytesWritten :: a -> b -> IO (Bool)

class QwaitForReadyRead a b where
 waitForReadyRead :: a -> b -> IO (Bool)

class QwheelEvent a b where
 wheelEvent :: a -> b -> IO ()

class Qqwidth a b c | a -> c where
 qwidth :: a -> b -> c

class QwindowActivationChange a b where
 windowActivationChange :: a -> b -> IO ()

class QwriteData a b where
 writeData :: a -> b -> IO (Int)

class Qqx a b c | a -> c where
 qx :: a -> b -> c

class Qqy a b c | a -> c where
 qy :: a -> b -> c

