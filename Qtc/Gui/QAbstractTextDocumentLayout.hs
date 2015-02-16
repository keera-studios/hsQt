{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QAbstractTextDocumentLayout.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:18
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Gui.QAbstractTextDocumentLayout (
  qAbstractTextDocumentLayout
  ,QblockBoundingRect(..), QqblockBoundingRect(..)
  ,QdocumentChanged(..)
  ,QdocumentSize(..), QqdocumentSize(..)
  ,QdrawInlineObject(..), QqdrawInlineObject(..)
  ,QformatIndex(..)
  ,QframeBoundingRect(..), QqframeBoundingRect(..)
  ,handlerForObject
  ,QhitTest(..), QqhitTest(..)
  ,paintDevice
  ,QpositionInlineObject(..)
  ,registerHandler
  ,QresizeInlineObject(..)
  ,QsetPaintDevice(..)
  ,qAbstractTextDocumentLayout_delete
  ,qAbstractTextDocumentLayout_deleteLater
  )
  where

import Foreign.C.Types
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.Qt

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Core
import Qtc.ClassTypes.Core
import Qth.ClassTypes.Core
import Qtc.Classes.Gui
import Qtc.ClassTypes.Gui

instance QuserMethod (QAbstractTextDocumentLayout ()) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_userMethod cobj_qobj (toCInt evid)

foreign import ccall "qtc_QAbstractTextDocumentLayout_userMethod" qtc_QAbstractTextDocumentLayout_userMethod :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> IO ()

instance QuserMethod (QAbstractTextDocumentLayoutSc a) (()) (IO ()) where
 userMethod qobj evid ()
  = withObjectPtr qobj $ \cobj_qobj ->
    qtc_QAbstractTextDocumentLayout_userMethod cobj_qobj (toCInt evid)

instance QuserMethod (QAbstractTextDocumentLayout ()) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractTextDocumentLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

foreign import ccall "qtc_QAbstractTextDocumentLayout_userMethodVariant" qtc_QAbstractTextDocumentLayout_userMethodVariant :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> Ptr (TQVariant ()) -> IO (Ptr (TQVariant ()))

instance QuserMethod (QAbstractTextDocumentLayoutSc a) (QVariant ()) (IO (QVariant ())) where
 userMethod qobj evid qvoj
  = withObjectRefResult $
    withObjectPtr qobj $ \cobj_qobj ->
    withObjectPtr qvoj $ \cobj_qvoj ->
    qtc_QAbstractTextDocumentLayout_userMethodVariant cobj_qobj (toCInt evid) cobj_qvoj

qAbstractTextDocumentLayout :: (QTextDocument t1) -> IO (QAbstractTextDocumentLayout ())
qAbstractTextDocumentLayout (x1)
  = withQAbstractTextDocumentLayoutResult $
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout" qtc_QAbstractTextDocumentLayout :: Ptr (TQTextDocument t1) -> IO (Ptr (TQAbstractTextDocumentLayout ()))

instance QanchorAt (QAbstractTextDocumentLayout a) ((PointF)) where
 anchorAt x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractTextDocumentLayout_anchorAt_qth cobj_x0 cpointf_x1_x cpointf_x1_y 

foreign import ccall "qtc_QAbstractTextDocumentLayout_anchorAt_qth" qtc_QAbstractTextDocumentLayout_anchorAt_qth :: Ptr (TQAbstractTextDocumentLayout a) -> CDouble -> CDouble -> IO (Ptr (TQString ()))

instance QqanchorAt (QAbstractTextDocumentLayout a) ((QPointF t1)) where
 qanchorAt x0 (x1)
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_anchorAt cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_anchorAt" qtc_QAbstractTextDocumentLayout_anchorAt :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPointF t1) -> IO (Ptr (TQString ()))

class QblockBoundingRect x0 x1 where
 blockBoundingRect :: x0 -> x1 -> IO (RectF)

class QqblockBoundingRect x0 x1 where
 qblockBoundingRect :: x0 -> x1 -> IO (QRectF ())

instance QqblockBoundingRect (QAbstractTextDocumentLayout ()) ((QTextBlock t1)) where
 qblockBoundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_blockBoundingRect_h" qtc_QAbstractTextDocumentLayout_blockBoundingRect_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextBlock t1) -> IO (Ptr (TQRectF ()))

instance QqblockBoundingRect (QAbstractTextDocumentLayoutSc a) ((QTextBlock t1)) where
 qblockBoundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_h cobj_x0 cobj_x1

instance QblockBoundingRect (QAbstractTextDocumentLayout ()) ((QTextBlock t1)) where
 blockBoundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth_h cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth_h" qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextBlock t1) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QblockBoundingRect (QAbstractTextDocumentLayoutSc a) ((QTextBlock t1)) where
 blockBoundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_blockBoundingRect_qth_h cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

instance Qdocument (QAbstractTextDocumentLayout a) (()) where
 document x0 ()
  = withQTextDocumentResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_document cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_document" qtc_QAbstractTextDocumentLayout_document :: Ptr (TQAbstractTextDocumentLayout a) -> IO (Ptr (TQTextDocument ()))

class QdocumentChanged x0 x1 where
 documentChanged :: x0 -> x1 -> IO ()

instance QdocumentChanged (QAbstractTextDocumentLayout ()) ((Int, Int, Int)) where
 documentChanged x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentChanged_h cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentChanged_h" qtc_QAbstractTextDocumentLayout_documentChanged_h :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> CInt -> CInt -> IO ()

instance QdocumentChanged (QAbstractTextDocumentLayoutSc a) ((Int, Int, Int)) where
 documentChanged x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentChanged_h cobj_x0 (toCInt x1) (toCInt x2) (toCInt x3)

class QdocumentSize x0 x1 where
 documentSize :: x0 -> x1 -> IO (SizeF)

class QqdocumentSize x0 x1 where
 qdocumentSize :: x0 -> x1 -> IO (QSizeF ())

instance QqdocumentSize (QAbstractTextDocumentLayout ()) (()) where
 qdocumentSize x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_h cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentSize_h" qtc_QAbstractTextDocumentLayout_documentSize_h :: Ptr (TQAbstractTextDocumentLayout a) -> IO (Ptr (TQSizeF ()))

instance QqdocumentSize (QAbstractTextDocumentLayoutSc a) (()) where
 qdocumentSize x0 ()
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_h cobj_x0

instance QdocumentSize (QAbstractTextDocumentLayout ()) (()) where
 documentSize x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_qth_h cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_documentSize_qth_h" qtc_QAbstractTextDocumentLayout_documentSize_qth_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QdocumentSize (QAbstractTextDocumentLayoutSc a) (()) where
 documentSize x0 ()
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_documentSize_qth_h cobj_x0 csizef_ret_w csizef_ret_h

instance Qdraw (QAbstractTextDocumentLayout ()) ((QPainter t1, PaintContext t2)) where
 draw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_draw_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTextDocumentLayout_draw_h" qtc_QAbstractTextDocumentLayout_draw_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> Ptr (TPaintContext t2) -> IO ()

instance Qdraw (QAbstractTextDocumentLayoutSc a) ((QPainter t1, PaintContext t2)) where
 draw x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_draw_h cobj_x0 cobj_x1 cobj_x2

class QdrawInlineObject x0 x1 where
 drawInlineObject :: x0 -> x1 -> IO ()

class QqdrawInlineObject x0 x1 where
 qdrawInlineObject :: x0 -> x1 -> IO ()

instance QqdrawInlineObject (QAbstractTextDocumentLayout ()) ((QPainter t1, QRectF t2, QTextInlineObject t3, Int, QTextFormat t5)) where
 qdrawInlineObject x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_h cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractTextDocumentLayout_drawInlineObject_h" qtc_QAbstractTextDocumentLayout_drawInlineObject_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> Ptr (TQRectF t2) -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()

instance QqdrawInlineObject (QAbstractTextDocumentLayoutSc a) ((QPainter t1, QRectF t2, QTextInlineObject t3, Int, QTextFormat t5)) where
 qdrawInlineObject x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_h cobj_x0 cobj_x1 cobj_x2 cobj_x3 (toCInt x4) cobj_x5

instance QdrawInlineObject (QAbstractTextDocumentLayout ()) ((QPainter t1, RectF, QTextInlineObject t3, Int, QTextFormat t5)) where
 drawInlineObject x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  cobj_x3 (toCInt x4) cobj_x5

foreign import ccall "qtc_QAbstractTextDocumentLayout_drawInlineObject_qth_h" qtc_QAbstractTextDocumentLayout_drawInlineObject_qth_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPainter t1) -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr (TQTextInlineObject t3) -> CInt -> Ptr (TQTextFormat t5) -> IO ()

instance QdrawInlineObject (QAbstractTextDocumentLayoutSc a) ((QPainter t1, RectF, QTextInlineObject t3, Int, QTextFormat t5)) where
 drawInlineObject x0 (x1, x2, x3, x4, x5)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withCRectF x2 $ \crectf_x2_x crectf_x2_y  crectf_x2_w crectf_x2_h -> 
    withObjectPtr x3 $ \cobj_x3 ->
    withObjectPtr x5 $ \cobj_x5 ->
    qtc_QAbstractTextDocumentLayout_drawInlineObject_qth_h cobj_x0 cobj_x1 crectf_x2_x crectf_x2_y crectf_x2_w crectf_x2_h  cobj_x3 (toCInt x4) cobj_x5

instance Qformat (QAbstractTextDocumentLayout ()) ((Int)) (IO (QTextCharFormat ())) where
 format x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_format cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTextDocumentLayout_format" qtc_QAbstractTextDocumentLayout_format :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> IO (Ptr (TQTextCharFormat ()))

instance Qformat (QAbstractTextDocumentLayoutSc a) ((Int)) (IO (QTextCharFormat ())) where
 format x0 (x1)
  = withQTextCharFormatResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_format cobj_x0 (toCInt x1)

class QformatIndex x0 x1 where
 formatIndex :: x0 -> x1 -> IO (Int)

instance QformatIndex (QAbstractTextDocumentLayout ()) ((Int)) where
 formatIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_formatIndex cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTextDocumentLayout_formatIndex" qtc_QAbstractTextDocumentLayout_formatIndex :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> IO CInt

instance QformatIndex (QAbstractTextDocumentLayoutSc a) ((Int)) where
 formatIndex x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_formatIndex cobj_x0 (toCInt x1)

class QframeBoundingRect x0 x1 where
 frameBoundingRect :: x0 -> x1 -> IO (RectF)

class QqframeBoundingRect x0 x1 where
 qframeBoundingRect :: x0 -> x1 -> IO (QRectF ())

instance QqframeBoundingRect (QAbstractTextDocumentLayout ()) ((QTextFrame t1)) where
 qframeBoundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_frameBoundingRect_h" qtc_QAbstractTextDocumentLayout_frameBoundingRect_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextFrame t1) -> IO (Ptr (TQRectF ()))

instance QqframeBoundingRect (QAbstractTextDocumentLayoutSc a) ((QTextFrame t1)) where
 qframeBoundingRect x0 (x1)
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_h cobj_x0 cobj_x1

instance QframeBoundingRect (QAbstractTextDocumentLayout ()) ((QTextFrame t1)) where
 frameBoundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth_h cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth_h" qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextFrame t1) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

instance QframeBoundingRect (QAbstractTextDocumentLayoutSc a) ((QTextFrame t1)) where
 frameBoundingRect x0 (x1)
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_frameBoundingRect_qth_h cobj_x0 cobj_x1 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

handlerForObject :: QAbstractTextDocumentLayout a -> ((Int)) -> IO (QTextObjectInterface ())
handlerForObject x0 (x1)
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_handlerForObject cobj_x0 (toCInt x1)

foreign import ccall "qtc_QAbstractTextDocumentLayout_handlerForObject" qtc_QAbstractTextDocumentLayout_handlerForObject :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> IO (Ptr (TQTextObjectInterface ()))

class QhitTest x0 x1 where
 hitTest :: x0 -> x1 -> IO (Int)

class QqhitTest x0 x1 where
 qhitTest :: x0 -> x1 -> IO (Int)

instance QhitTest (QAbstractTextDocumentLayout ()) ((PointF, HitTestAccuracy)) where
 hitTest x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractTextDocumentLayout_hitTest_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y  (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTextDocumentLayout_hitTest_qth_h" qtc_QAbstractTextDocumentLayout_hitTest_qth_h :: Ptr (TQAbstractTextDocumentLayout a) -> CDouble -> CDouble -> CLong -> IO CInt

instance QhitTest (QAbstractTextDocumentLayoutSc a) ((PointF, HitTestAccuracy)) where
 hitTest x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QAbstractTextDocumentLayout_hitTest_qth_h cobj_x0 cpointf_x1_x cpointf_x1_y  (toCLong $ qEnum_toInt x2)

instance QqhitTest (QAbstractTextDocumentLayout ()) ((QPointF t1, HitTestAccuracy)) where
 qhitTest x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_hitTest_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

foreign import ccall "qtc_QAbstractTextDocumentLayout_hitTest_h" qtc_QAbstractTextDocumentLayout_hitTest_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPointF t1) -> CLong -> IO CInt

instance QqhitTest (QAbstractTextDocumentLayoutSc a) ((QPointF t1, HitTestAccuracy)) where
 qhitTest x0 (x1, x2)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_hitTest_h cobj_x0 cobj_x1 (toCLong $ qEnum_toInt x2)

instance QpageCount (QAbstractTextDocumentLayout ()) (()) where
 pageCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_pageCount_h cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_pageCount_h" qtc_QAbstractTextDocumentLayout_pageCount_h :: Ptr (TQAbstractTextDocumentLayout a) -> IO CInt

instance QpageCount (QAbstractTextDocumentLayoutSc a) (()) where
 pageCount x0 ()
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_pageCount_h cobj_x0

paintDevice :: QAbstractTextDocumentLayout a -> (()) -> IO (QPaintDevice ())
paintDevice x0 ()
  = withObjectRefResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_paintDevice cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_paintDevice" qtc_QAbstractTextDocumentLayout_paintDevice :: Ptr (TQAbstractTextDocumentLayout a) -> IO (Ptr (TQPaintDevice ()))

class QpositionInlineObject x0 x1 where
 positionInlineObject :: x0 -> x1 -> IO ()

instance QpositionInlineObject (QAbstractTextDocumentLayout ()) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 positionInlineObject x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_positionInlineObject_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTextDocumentLayout_positionInlineObject_h" qtc_QAbstractTextDocumentLayout_positionInlineObject_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()

instance QpositionInlineObject (QAbstractTextDocumentLayoutSc a) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 positionInlineObject x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_positionInlineObject_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

registerHandler :: QAbstractTextDocumentLayout a -> ((Int, QObject t2)) -> IO ()
registerHandler x0 (x1, x2)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_registerHandler cobj_x0 (toCInt x1) cobj_x2

foreign import ccall "qtc_QAbstractTextDocumentLayout_registerHandler" qtc_QAbstractTextDocumentLayout_registerHandler :: Ptr (TQAbstractTextDocumentLayout a) -> CInt -> Ptr (TQObject t2) -> IO ()

class QresizeInlineObject x0 x1 where
 resizeInlineObject :: x0 -> x1 -> IO ()

instance QresizeInlineObject (QAbstractTextDocumentLayout ()) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 resizeInlineObject x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_resizeInlineObject_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

foreign import ccall "qtc_QAbstractTextDocumentLayout_resizeInlineObject_h" qtc_QAbstractTextDocumentLayout_resizeInlineObject_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTextInlineObject t1) -> CInt -> Ptr (TQTextFormat t3) -> IO ()

instance QresizeInlineObject (QAbstractTextDocumentLayoutSc a) ((QTextInlineObject t1, Int, QTextFormat t3)) where
 resizeInlineObject x0 (x1, x2, x3)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x3 $ \cobj_x3 ->
    qtc_QAbstractTextDocumentLayout_resizeInlineObject_h cobj_x0 cobj_x1 (toCInt x2) cobj_x3

class QsetPaintDevice x1 where
 setPaintDevice :: QAbstractTextDocumentLayout a -> x1 -> IO ()

instance QsetPaintDevice ((QPaintDevice t1)) where
 setPaintDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_setPaintDevice cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_setPaintDevice" qtc_QAbstractTextDocumentLayout_setPaintDevice :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQPaintDevice t1) -> IO ()

instance QsetPaintDevice ((QWidget t1)) where
 setPaintDevice x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_setPaintDevice_widget cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_setPaintDevice_widget" qtc_QAbstractTextDocumentLayout_setPaintDevice_widget :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQWidget t1) -> IO ()

qAbstractTextDocumentLayout_delete :: QAbstractTextDocumentLayout a -> IO ()
qAbstractTextDocumentLayout_delete x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_delete cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_delete" qtc_QAbstractTextDocumentLayout_delete :: Ptr (TQAbstractTextDocumentLayout a) -> IO ()

qAbstractTextDocumentLayout_deleteLater :: QAbstractTextDocumentLayout a -> IO ()
qAbstractTextDocumentLayout_deleteLater x0
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_deleteLater cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_deleteLater" qtc_QAbstractTextDocumentLayout_deleteLater :: Ptr (TQAbstractTextDocumentLayout a) -> IO ()

instance QchildEvent (QAbstractTextDocumentLayout ()) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_childEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_childEvent" qtc_QAbstractTextDocumentLayout_childEvent :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQChildEvent t1) -> IO ()

instance QchildEvent (QAbstractTextDocumentLayoutSc a) ((QChildEvent t1)) where
 childEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_childEvent cobj_x0 cobj_x1

instance QconnectNotify (QAbstractTextDocumentLayout ()) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_connectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_connectNotify" qtc_QAbstractTextDocumentLayout_connectNotify :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> IO ()

instance QconnectNotify (QAbstractTextDocumentLayoutSc a) ((String)) where
 connectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_connectNotify cobj_x0 cstr_x1

instance QcustomEvent (QAbstractTextDocumentLayout ()) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_customEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_customEvent" qtc_QAbstractTextDocumentLayout_customEvent :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQEvent t1) -> IO ()

instance QcustomEvent (QAbstractTextDocumentLayoutSc a) ((QEvent t1)) where
 customEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_customEvent cobj_x0 cobj_x1

instance QdisconnectNotify (QAbstractTextDocumentLayout ()) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_disconnectNotify cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_disconnectNotify" qtc_QAbstractTextDocumentLayout_disconnectNotify :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> IO ()

instance QdisconnectNotify (QAbstractTextDocumentLayoutSc a) ((String)) where
 disconnectNotify x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_disconnectNotify cobj_x0 cstr_x1

instance Qevent (QAbstractTextDocumentLayout ()) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_event_h cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_event_h" qtc_QAbstractTextDocumentLayout_event_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQEvent t1) -> IO CBool

instance Qevent (QAbstractTextDocumentLayoutSc a) ((QEvent t1)) where
 event x0 (x1)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_event_h cobj_x0 cobj_x1

instance QeventFilter (QAbstractTextDocumentLayout ()) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

foreign import ccall "qtc_QAbstractTextDocumentLayout_eventFilter_h" qtc_QAbstractTextDocumentLayout_eventFilter_h :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQObject t1) -> Ptr (TQEvent t2) -> IO CBool

instance QeventFilter (QAbstractTextDocumentLayoutSc a) ((QObject t1, QEvent t2)) where
 eventFilter x0 (x1, x2)
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    withObjectPtr x2 $ \cobj_x2 ->
    qtc_QAbstractTextDocumentLayout_eventFilter_h cobj_x0 cobj_x1 cobj_x2

instance Qreceivers (QAbstractTextDocumentLayout ()) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_receivers cobj_x0 cstr_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_receivers" qtc_QAbstractTextDocumentLayout_receivers :: Ptr (TQAbstractTextDocumentLayout a) -> CWString -> IO CInt

instance Qreceivers (QAbstractTextDocumentLayoutSc a) ((String)) where
 receivers x0 (x1)
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QAbstractTextDocumentLayout_receivers cobj_x0 cstr_x1

instance Qsender (QAbstractTextDocumentLayout ()) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_sender cobj_x0

foreign import ccall "qtc_QAbstractTextDocumentLayout_sender" qtc_QAbstractTextDocumentLayout_sender :: Ptr (TQAbstractTextDocumentLayout a) -> IO (Ptr (TQObject ()))

instance Qsender (QAbstractTextDocumentLayoutSc a) (()) where
 sender x0 ()
  = withQObjectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QAbstractTextDocumentLayout_sender cobj_x0

instance QtimerEvent (QAbstractTextDocumentLayout ()) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_timerEvent cobj_x0 cobj_x1

foreign import ccall "qtc_QAbstractTextDocumentLayout_timerEvent" qtc_QAbstractTextDocumentLayout_timerEvent :: Ptr (TQAbstractTextDocumentLayout a) -> Ptr (TQTimerEvent t1) -> IO ()

instance QtimerEvent (QAbstractTextDocumentLayoutSc a) ((QTimerEvent t1)) where
 timerEvent x0 (x1)
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QAbstractTextDocumentLayout_timerEvent cobj_x0 cobj_x1

