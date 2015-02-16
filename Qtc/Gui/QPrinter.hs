{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QPrinter.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:16
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QPrinter (
  QqPrinter(..)
  ,QqPrinter_nf(..)
  ,collateCopies
  ,colorMode
  ,creator
  ,docName
  ,doubleSidedPrinting
  ,fontEmbeddingEnabled
  ,fullPage
  ,newPage
  ,numCopies
  ,outputFileName
  ,outputFormat
  ,pageOrder
  ,qpageRect, pageRect
  ,qpaperRect, paperRect
  ,paperSource
  ,printEngine
  ,printProgram
  ,printerName
  ,printerState
  ,resolution
  ,setCollateCopies
  ,setColorMode
  ,setCreator
  ,setDocName
  ,setDoubleSidedPrinting
  ,QsetEngines(..)
  ,setFontEmbeddingEnabled
  ,setFullPage
  ,setNumCopies
  ,setOutputFileName
  ,setOutputFormat
  ,setPageOrder
  ,setPaperSource
  ,setPrintProgram
  ,setPrinterName
  ,setResolution
  ,supportedResolutions
  ,qPrinter_delete, qPrinter_delete1
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Gui.QPaintDevice
import Qtc.Enums.Gui.QPrinter

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QPrinter ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPrinter_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QPrinter_userMethod" qtc_QPrinter_userMethod :: Ptr (TQPrinter a) -> CInt -> IO ()

instance QuserMethod (QPrinterSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QPrinter_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QPrinter ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPrinter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QPrinter_userMethodVariant" qtc_QPrinter_userMethodVariant :: Ptr (TQPrinter a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QPrinterSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QPrinter_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

class QqPrinter x1 where
  qPrinter :: x1 -> IO (QPrinter ())

instance QqPrinter (()) where
 qPrinter ()
  = withQPrinterResult $
    qtc_QPrinter

foreign import ccall "qtc_QPrinter" qtc_QPrinter :: IO (Ptr (TQPrinter ()))

instance QqPrinter ((PrinterMode)) where
 qPrinter (x1)
  = withQPrinterResult $
    qtc_QPrinter1 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter1" qtc_QPrinter1 :: CLong -> IO (Ptr (TQPrinter ()))

class QqPrinter_nf x1 where
  qPrinter_nf :: x1 -> IO (QPrinter ())

instance QqPrinter_nf (()) where
 qPrinter_nf ()
  = withObjectRefResult $
    qtc_QPrinter

instance QqPrinter_nf ((PrinterMode)) where
 qPrinter_nf (x1)
  = withObjectRefResult $
    qtc_QPrinter1 (toCLong $ qEnum_toInt x1)

instance Qabort (QPrinter a) (()) (IO (Bool)) where
 abort x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_abort cobj_x0

foreign import ccall "qtc_QPrinter_abort" qtc_QPrinter_abort :: Ptr (TQPrinter a) -> IO CBool

collateCopies :: QPrinter a -> (()) -> IO (Bool)
collateCopies x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_collateCopies cobj_x0

foreign import ccall "qtc_QPrinter_collateCopies" qtc_QPrinter_collateCopies :: Ptr (TQPrinter a) -> IO CBool

colorMode :: QPrinter a -> (()) -> IO (ColorMode)
colorMode x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_colorMode cobj_x0

foreign import ccall "qtc_QPrinter_colorMode" qtc_QPrinter_colorMode :: Ptr (TQPrinter a) -> IO CLong

creator :: QPrinter a -> (()) -> IO (String)
creator x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_creator cobj_x0

foreign import ccall "qtc_QPrinter_creator" qtc_QPrinter_creator :: Ptr (TQPrinter a) -> IO (Ptr (TQString ()))

instance QdevType (QPrinter ()) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_devType_h cobj_x0

foreign import ccall "qtc_QPrinter_devType_h" qtc_QPrinter_devType_h :: Ptr (TQPrinter a) -> IO CInt

instance QdevType (QPrinterSc a) (()) where
 devType x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_devType_h cobj_x0

docName :: QPrinter a -> (()) -> IO (String)
docName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_docName cobj_x0

foreign import ccall "qtc_QPrinter_docName" qtc_QPrinter_docName :: Ptr (TQPrinter a) -> IO (Ptr (TQString ()))

doubleSidedPrinting :: QPrinter a -> (()) -> IO (Bool)
doubleSidedPrinting x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_doubleSidedPrinting cobj_x0

foreign import ccall "qtc_QPrinter_doubleSidedPrinting" qtc_QPrinter_doubleSidedPrinting :: Ptr (TQPrinter a) -> IO CBool

fontEmbeddingEnabled :: QPrinter a -> (()) -> IO (Bool)
fontEmbeddingEnabled x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_fontEmbeddingEnabled cobj_x0

foreign import ccall "qtc_QPrinter_fontEmbeddingEnabled" qtc_QPrinter_fontEmbeddingEnabled :: Ptr (TQPrinter a) -> IO CBool

instance QfromPage (QPrinter a) (()) where
 fromPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_fromPage cobj_x0

foreign import ccall "qtc_QPrinter_fromPage" qtc_QPrinter_fromPage :: Ptr (TQPrinter a) -> IO CInt

fullPage :: QPrinter a -> (()) -> IO (Bool)
fullPage x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_fullPage cobj_x0

foreign import ccall "qtc_QPrinter_fullPage" qtc_QPrinter_fullPage :: Ptr (TQPrinter a) -> IO CBool

instance Qmetric (QPrinter ()) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_metric cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_metric" qtc_QPrinter_metric :: Ptr (TQPrinter a) -> CLong -> IO CInt

instance Qmetric (QPrinterSc a) ((PaintDeviceMetric)) where
 metric x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_metric cobj_x0 (toCLong $ qEnum_toInt x1)

newPage :: QPrinter a -> (()) -> IO (Bool)
newPage x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_newPage cobj_x0

foreign import ccall "qtc_QPrinter_newPage" qtc_QPrinter_newPage :: Ptr (TQPrinter a) -> IO CBool

numCopies :: QPrinter a -> (()) -> IO (Int)
numCopies x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_numCopies cobj_x0

foreign import ccall "qtc_QPrinter_numCopies" qtc_QPrinter_numCopies :: Ptr (TQPrinter a) -> IO CInt

instance Qorientation (QPrinter a) (()) (IO (QPrinterOrientation)) where
 orientation x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_orientation cobj_x0

foreign import ccall "qtc_QPrinter_orientation" qtc_QPrinter_orientation :: Ptr (TQPrinter a) -> IO CLong

outputFileName :: QPrinter a -> (()) -> IO (String)
outputFileName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_outputFileName cobj_x0

foreign import ccall "qtc_QPrinter_outputFileName" qtc_QPrinter_outputFileName :: Ptr (TQPrinter a) -> IO (Ptr (TQString ()))

outputFormat :: QPrinter a -> (()) -> IO (OutputFormat)
outputFormat x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_outputFormat cobj_x0

foreign import ccall "qtc_QPrinter_outputFormat" qtc_QPrinter_outputFormat :: Ptr (TQPrinter a) -> IO CLong

pageOrder :: QPrinter a -> (()) -> IO (PageOrder)
pageOrder x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_pageOrder cobj_x0

foreign import ccall "qtc_QPrinter_pageOrder" qtc_QPrinter_pageOrder :: Ptr (TQPrinter a) -> IO CLong

qpageRect :: QPrinter a -> (()) -> IO (QRect ())
qpageRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_pageRect cobj_x0

foreign import ccall "qtc_QPrinter_pageRect" qtc_QPrinter_pageRect :: Ptr (TQPrinter a) -> IO (Ptr (TQRect ()))

pageRect :: QPrinter a -> (()) -> IO (Rect)
pageRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_pageRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPrinter_pageRect_qth" qtc_QPrinter_pageRect_qth :: Ptr (TQPrinter a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

instance QpageSize (QPrinter a) (()) (IO (PageSize)) where
 pageSize x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_pageSize cobj_x0

foreign import ccall "qtc_QPrinter_pageSize" qtc_QPrinter_pageSize :: Ptr (TQPrinter a) -> IO CLong

instance QpaintEngine (QPrinter ()) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_paintEngine_h cobj_x0

foreign import ccall "qtc_QPrinter_paintEngine_h" qtc_QPrinter_paintEngine_h :: Ptr (TQPrinter a) -> IO (Ptr (TQPaintEngine ()))

instance QpaintEngine (QPrinterSc a) (()) where
 paintEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_paintEngine_h cobj_x0

qpaperRect :: QPrinter a -> (()) -> IO (QRect ())
qpaperRect x0 ()
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_paperRect cobj_x0

foreign import ccall "qtc_QPrinter_paperRect" qtc_QPrinter_paperRect :: Ptr (TQPrinter a) -> IO (Ptr (TQRect ()))

paperRect :: QPrinter a -> (()) -> IO (Rect)
paperRect x0 ()
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_paperRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QPrinter_paperRect_qth" qtc_QPrinter_paperRect_qth :: Ptr (TQPrinter a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

paperSource :: QPrinter a -> (()) -> IO (PaperSource)
paperSource x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_paperSource cobj_x0

foreign import ccall "qtc_QPrinter_paperSource" qtc_QPrinter_paperSource :: Ptr (TQPrinter a) -> IO CLong

printEngine :: QPrinter a -> (()) -> IO (QPrintEngine ())
printEngine x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_printEngine cobj_x0

foreign import ccall "qtc_QPrinter_printEngine" qtc_QPrinter_printEngine :: Ptr (TQPrinter a) -> IO (Ptr (TQPrintEngine ()))

printProgram :: QPrinter a -> (()) -> IO (String)
printProgram x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_printProgram cobj_x0

foreign import ccall "qtc_QPrinter_printProgram" qtc_QPrinter_printProgram :: Ptr (TQPrinter a) -> IO (Ptr (TQString ()))

printerName :: QPrinter a -> (()) -> IO (String)
printerName x0 ()
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_printerName cobj_x0

foreign import ccall "qtc_QPrinter_printerName" qtc_QPrinter_printerName :: Ptr (TQPrinter a) -> IO (Ptr (TQString ()))

printerState :: QPrinter a -> (()) -> IO (PrinterState)
printerState x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_printerState cobj_x0

foreign import ccall "qtc_QPrinter_printerState" qtc_QPrinter_printerState :: Ptr (TQPrinter a) -> IO CLong

resolution :: QPrinter a -> (()) -> IO (Int)
resolution x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_resolution cobj_x0

foreign import ccall "qtc_QPrinter_resolution" qtc_QPrinter_resolution :: Ptr (TQPrinter a) -> IO CInt

setCollateCopies :: QPrinter a -> ((Bool)) -> IO ()
setCollateCopies x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setCollateCopies cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrinter_setCollateCopies" qtc_QPrinter_setCollateCopies :: Ptr (TQPrinter a) -> CBool -> IO ()

setColorMode :: QPrinter a -> ((ColorMode)) -> IO ()
setColorMode x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setColorMode cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setColorMode" qtc_QPrinter_setColorMode :: Ptr (TQPrinter a) -> CLong -> IO ()

setCreator :: QPrinter a -> ((String)) -> IO ()
setCreator x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrinter_setCreator cobj_x0 cstr_x1

foreign import ccall "qtc_QPrinter_setCreator" qtc_QPrinter_setCreator :: Ptr (TQPrinter a) -> CWString -> IO ()

setDocName :: QPrinter a -> ((String)) -> IO ()
setDocName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrinter_setDocName cobj_x0 cstr_x1

foreign import ccall "qtc_QPrinter_setDocName" qtc_QPrinter_setDocName :: Ptr (TQPrinter a) -> CWString -> IO ()

setDoubleSidedPrinting :: QPrinter a -> ((Bool)) -> IO ()
setDoubleSidedPrinting x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setDoubleSidedPrinting cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrinter_setDoubleSidedPrinting" qtc_QPrinter_setDoubleSidedPrinting :: Ptr (TQPrinter a) -> CBool -> IO ()

class QsetEngines x0 x1 where
 setEngines :: x0 -> x1 -> IO ()

instance QsetEngines (QPrinter ()) ((QPrintEngine t1, QPaintEngine t2)) where
 setEngines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPrinter_setEngines cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QPrinter_setEngines" qtc_QPrinter_setEngines :: Ptr (TQPrinter a) -> Ptr (TQPrintEngine t1) -> Ptr (TQPaintEngine t2) -> IO ()

instance QsetEngines (QPrinterSc a) ((QPrintEngine t1, QPaintEngine t2)) where
 setEngines x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QPrinter_setEngines cobj_x0 cobj_x1 cobj_x2

setFontEmbeddingEnabled :: QPrinter a -> ((Bool)) -> IO ()
setFontEmbeddingEnabled x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setFontEmbeddingEnabled cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrinter_setFontEmbeddingEnabled" qtc_QPrinter_setFontEmbeddingEnabled :: Ptr (TQPrinter a) -> CBool -> IO ()

instance QsetFromTo (QPrinter a) ((Int, Int)) where
 setFromTo x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setFromTo cobj_x0 (toCInt x1) (toCInt x2)

foreign import ccall "qtc_QPrinter_setFromTo" qtc_QPrinter_setFromTo :: Ptr (TQPrinter a) -> CInt -> CInt -> IO ()

setFullPage :: QPrinter a -> ((Bool)) -> IO ()
setFullPage x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setFullPage cobj_x0 (toCBool x1)

foreign import ccall "qtc_QPrinter_setFullPage" qtc_QPrinter_setFullPage :: Ptr (TQPrinter a) -> CBool -> IO ()

setNumCopies :: QPrinter a -> ((Int)) -> IO ()
setNumCopies x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setNumCopies cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPrinter_setNumCopies" qtc_QPrinter_setNumCopies :: Ptr (TQPrinter a) -> CInt -> IO ()

instance QsetOrientation (QPrinter a) ((QPrinterOrientation)) where
 setOrientation x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setOrientation cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setOrientation" qtc_QPrinter_setOrientation :: Ptr (TQPrinter a) -> CLong -> IO ()

setOutputFileName :: QPrinter a -> ((String)) -> IO ()
setOutputFileName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrinter_setOutputFileName cobj_x0 cstr_x1

foreign import ccall "qtc_QPrinter_setOutputFileName" qtc_QPrinter_setOutputFileName :: Ptr (TQPrinter a) -> CWString -> IO ()

setOutputFormat :: QPrinter a -> ((OutputFormat)) -> IO ()
setOutputFormat x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setOutputFormat cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setOutputFormat" qtc_QPrinter_setOutputFormat :: Ptr (TQPrinter a) -> CLong -> IO ()

setPageOrder :: QPrinter a -> ((PageOrder)) -> IO ()
setPageOrder x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setPageOrder cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setPageOrder" qtc_QPrinter_setPageOrder :: Ptr (TQPrinter a) -> CLong -> IO ()

instance QsetPageSize (QPrinter a) ((PageSize)) where
 setPageSize x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setPageSize cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setPageSize" qtc_QPrinter_setPageSize :: Ptr (TQPrinter a) -> CLong -> IO ()

setPaperSource :: QPrinter a -> ((PaperSource)) -> IO ()
setPaperSource x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setPaperSource cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QPrinter_setPaperSource" qtc_QPrinter_setPaperSource :: Ptr (TQPrinter a) -> CLong -> IO ()

setPrintProgram :: QPrinter a -> ((String)) -> IO ()
setPrintProgram x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrinter_setPrintProgram cobj_x0 cstr_x1

foreign import ccall "qtc_QPrinter_setPrintProgram" qtc_QPrinter_setPrintProgram :: Ptr (TQPrinter a) -> CWString -> IO ()

setPrinterName :: QPrinter a -> ((String)) -> IO ()
setPrinterName x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QPrinter_setPrinterName cobj_x0 cstr_x1

foreign import ccall "qtc_QPrinter_setPrinterName" qtc_QPrinter_setPrinterName :: Ptr (TQPrinter a) -> CWString -> IO ()

setResolution :: QPrinter a -> ((Int)) -> IO ()
setResolution x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_setResolution cobj_x0 (toCInt x1)

foreign import ccall "qtc_QPrinter_setResolution" qtc_QPrinter_setResolution :: Ptr (TQPrinter a) -> CInt -> IO ()

supportedResolutions :: QPrinter a -> (()) -> IO ([Int])
supportedResolutions x0 ()
  = withQListIntResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_supportedResolutions cobj_x0 arr

foreign import ccall "qtc_QPrinter_supportedResolutions" qtc_QPrinter_supportedResolutions :: Ptr (TQPrinter a) -> Ptr CInt -> IO CInt

instance QtoPage (QPrinter a) (()) where
 toPage x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_toPage cobj_x0

foreign import ccall "qtc_QPrinter_toPage" qtc_QPrinter_toPage :: Ptr (TQPrinter a) -> IO CInt

qPrinter_delete :: QPrinter a -> IO ()
qPrinter_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_delete cobj_x0

foreign import ccall "qtc_QPrinter_delete" qtc_QPrinter_delete :: Ptr (TQPrinter a) -> IO ()

qPrinter_delete1 :: QPrinter a -> IO ()
qPrinter_delete1 x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QPrinter_delete1 cobj_x0

foreign import ccall "qtc_QPrinter_delete1" qtc_QPrinter_delete1 :: Ptr (TQPrinter a) -> IO ()

