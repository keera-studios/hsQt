{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : QVariant.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:31
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qtc.Core.QVariant (
  QqqVariant(..),  QqVariant(..)
  , QqSetValue(..)
  , qVariantValue_QColor
  , qVariantValue_QDate, qVariant_toDate
  , qVariantValue_QTime, qVariant_toTime
  , qVariantValue_QDateTime, qVariant_toDateTime
  , qqVariantValue_QSize, qqVariant_toSize
  , qVariantValue_QSize, qVariant_toSize
  , qqVariantValue_QPoint, qqVariant_toPoint
  , qVariantValue_QPoint, qVariant_toPoint
  , qqVariantValue_QLine, qqVariant_toLine
  , qVariantValue_QLine, qVariant_toLine
  , qqVariantValue_QRect, qqVariant_toRect
  , qVariantValue_QRect, qVariant_toRect
  , qqVariantValue_QSizeF, qqVariant_toSizeF
  , qVariantValue_QSizeF, qVariant_toSizeF
  , qqVariantValue_QPointF, qqVariant_toPointF
  , qVariantValue_QPointF, qVariant_toPointF
  , qqVariantValue_QLineF, qqVariant_toLineF
  , qVariantValue_QLineF, qVariant_toLineF
  , qqVariantValue_QRectF, qqVariant_toRectF
  , qVariantValue_QRectF, qVariant_toRectF
  , qVariantValue_Int, qVariant_toInt
  , qVariantValue_Bool, qVariant_toBool
  , qVariantValue_Double, qVariant_toDouble
  , qVariantValue_List, qVariant_toList
  , qVariantValue_QString, qVariant_toString
  , qVariantValue_QByteArray, qVariant_toByteArray
  , qVariantValue_QStringList, qVariant_toStringList
  , typeName
  , canConvert
  , convert
  )
  where

import Foreign.C.Types

import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui
import Qth.ClassTypes.Core
import Qtc.Enums.Base
import Qtc.Enums.Core.QVariant
import Qtc.Enums.Core.Qt (GlobalColor)

class QqqVariant x0 where
  qqVariant :: x0 -> IO (QVariant ())

class QqVariant x0 where
  qVariant :: x0 -> IO (QVariant ())

instance QqVariant (Int) where
 qVariant x0
  = withQVariantResult $
    qtc_QVariant_Int (toCInt x0)

foreign import ccall "qtc_QVariant_Int" qtc_QVariant_Int :: CInt -> IO (Ptr (TQVariant ()))

instance QqVariant (Bool) where
 qVariant x0
  = withQVariantResult $
    qtc_QVariant_Bool (toCBool x0)

foreign import ccall "qtc_QVariant_Bool" qtc_QVariant_Bool :: CBool -> IO (Ptr (TQVariant ()))

instance QqVariant (Double) where
 qVariant x0
  = withQVariantResult $
    qtc_QVariant_Double (toCDouble x0)

foreign import ccall "qtc_QVariant_Double" qtc_QVariant_Double :: CDouble -> IO (Ptr (TQVariant ()))

instance QqVariant (GlobalColor) where
 qVariant x0
  = withQVariantResult $
    qtc_QVariant_GlobalColor (toCLong $ qEnum_toInt x0)

foreign import ccall "qtc_QVariant_GlobalColor" qtc_QVariant_GlobalColor :: CLong -> IO (Ptr (TQVariant ()))

instance QqVariant (QDate t0) where
 qVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QDate cobj_x0

foreign import ccall "qtc_QVariant_QDate" qtc_QVariant_QDate :: Ptr (TQDate t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (QTime t0) where
 qVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QTime cobj_x0

foreign import ccall "qtc_QVariant_QTime" qtc_QVariant_QTime :: Ptr (TQTime t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (QDateTime t0) where
 qVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QDateTime cobj_x0

foreign import ccall "qtc_QVariant_QDateTime" qtc_QVariant_QDateTime :: Ptr (TQDateTime t0) -> IO (Ptr (TQVariant ()))

instance QqqVariant (QSize t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QSize cobj_x0

foreign import ccall "qtc_QVariant_QSize" qtc_QVariant_QSize :: Ptr (TQSize t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (Size) where
 qVariant x0
  = withQVariantResult $
    withCSize x0 $ \csize_x0_w csize_x0_h -> 
    qtc_QVariant_QSize_qth csize_x0_w csize_x0_h

foreign import ccall "qtc_QVariant_QSize_qth" qtc_QVariant_QSize_qth :: CInt -> CInt -> IO (Ptr (TQVariant ()))

instance QqqVariant (QPoint t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QPoint cobj_x0

foreign import ccall "qtc_QVariant_QPoint" qtc_QVariant_QPoint :: Ptr (TQPoint t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (Point) where
 qVariant x0
  = withQVariantResult $
    withCPoint x0 $ \cpoint_x0_x cpoint_x0_y -> 
    qtc_QVariant_QPoint_qth cpoint_x0_x cpoint_x0_y

foreign import ccall "qtc_QVariant_QPoint_qth" qtc_QVariant_QPoint_qth :: CInt -> CInt -> IO (Ptr (TQVariant ()))

instance QqqVariant (QLine t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QLine cobj_x0

foreign import ccall "qtc_QVariant_QLine" qtc_QVariant_QLine :: Ptr (TQLine t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (Line) where
 qVariant x0
  = withQVariantResult $
    withCLine x0 $ \cline_x0_x1 cline_x0_y1 cline_x0_x2 cline_x0_y2 -> 
    qtc_QVariant_QLine_qth cline_x0_x1  cline_x0_y1 cline_x0_x2 cline_x0_y2

foreign import ccall "qtc_QVariant_QLine_qth" qtc_QVariant_QLine_qth :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQVariant ()))

instance QqqVariant (QRect t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QRect cobj_x0

foreign import ccall "qtc_QVariant_QRect" qtc_QVariant_QRect :: Ptr (TQRect t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (Rect) where
 qVariant x0
  = withQVariantResult $
    withCRect x0 $ \crect_x0_x crect_x0_y crect_x0_w crect_x0_h -> 
    qtc_QVariant_QRect_qth crect_x0_x crect_x0_y crect_x0_w crect_x0_h

foreign import ccall "qtc_QVariant_QRect_qth" qtc_QVariant_QRect_qth :: CInt -> CInt -> CInt -> CInt -> IO (Ptr (TQVariant ()))


instance QqqVariant (QSizeF t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QSizeF cobj_x0

foreign import ccall "qtc_QVariant_QSizeF" qtc_QVariant_QSizeF :: Ptr (TQSizeF t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (SizeF) where
 qVariant x0
  = withQVariantResult $
    withCSizeF x0 $ \csizef_x0_w csizef_x0_h -> 
    qtc_QVariant_QSizeF_qth csizef_x0_w csizef_x0_h

foreign import ccall "qtc_QVariant_QSizeF_qth" qtc_QVariant_QSizeF_qth :: CDouble -> CDouble -> IO (Ptr (TQVariant ()))

instance QqqVariant (QPointF t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QPointF cobj_x0

foreign import ccall "qtc_QVariant_QPointF" qtc_QVariant_QPointF :: Ptr (TQPointF t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (PointF) where
 qVariant x0
  = withQVariantResult $
    withCPointF x0 $ \cpointf_x0_x cpointf_x0_y -> 
    qtc_QVariant_QPointF_qth cpointf_x0_x cpointf_x0_y

foreign import ccall "qtc_QVariant_QPointF_qth" qtc_QVariant_QPointF_qth :: CDouble -> CDouble -> IO (Ptr (TQVariant ()))

instance QqqVariant (QLineF t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QLineF cobj_x0

foreign import ccall "qtc_QVariant_QLineF" qtc_QVariant_QLineF :: Ptr (TQLineF t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (LineF) where
 qVariant x0
  = withQVariantResult $
    withCLineF x0 $ \clinef_x0_x1 clinef_x0_y1 clinef_x0_x2 clinef_x0_y2 -> 
    qtc_QVariant_QLineF_qth clinef_x0_x1  clinef_x0_y1 clinef_x0_x2 clinef_x0_y2

foreign import ccall "qtc_QVariant_QLineF_qth" qtc_QVariant_QLineF_qth :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQVariant ()))

instance QqqVariant (QRectF t0) where
 qqVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QRectF cobj_x0

foreign import ccall "qtc_QVariant_QRectF" qtc_QVariant_QRectF :: Ptr (TQRectF t0) -> IO (Ptr (TQVariant ()))

instance QqVariant (RectF) where
 qVariant x0
  = withQVariantResult $
    withCRectF x0 $ \crectf_x0_x crectf_x0_y crectf_x0_w crectf_x0_h -> 
    qtc_QVariant_QRectF_qth crectf_x0_x crectf_x0_y crectf_x0_w crectf_x0_h

foreign import ccall "qtc_QVariant_QRectF_qth" qtc_QVariant_QRectF_qth :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr (TQVariant ()))

instance QqVariant ([QVariant t0]) where
 qVariant x0
  = withQVariantResult $
    withQListObject x0 $ \cqlistlen_x0 cqlistobj_x0 ->
    qtc_QVariant_List cqlistlen_x0 cqlistobj_x0

foreign import ccall "qtc_QVariant_List" qtc_QVariant_List ::  CInt -> Ptr (Ptr (TQVariant t0)) -> IO (Ptr (TQVariant ()))

instance QqVariant (String) where
 qVariant x0
  = withQVariantResult $
    withCWString x0 $ \cstr_x0 ->
    qtc_QVariant_QString cstr_x0

foreign import ccall "qtc_QVariant_QString" qtc_QVariant_QString ::  CWString -> IO (Ptr (TQVariant ()))

instance QqVariant (QByteArray ()) where
 qVariant x0
  = withQVariantResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_QByteArray cobj_x0

foreign import ccall "qtc_QVariant_QByteArray" qtc_QVariant_QByteArray :: Ptr (TQByteArray ()) -> IO (Ptr (TQVariant ()))

instance QqVariant ([String]) where
 qVariant x0
  = withQVariantResult $
    withQListString x0 $ \cqlistlen_x0 cqliststr_x0 ->
    qtc_QVariant_QStringList cqlistlen_x0 cqliststr_x0

foreign import ccall "qtc_QVariant_QStringList" qtc_QVariant_QStringList ::  CInt -> Ptr (Ptr CWchar) -> IO (Ptr (TQVariant ()))

class QqSetValue x1 where
  qSetValue :: QVariant a -> x1 -> IO ()

instance QsetValue (QVariant a) (Int) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_setValue_Int cobj_x0 (toCInt x1)

foreign import ccall "qtc_QVariant_setValue_Int" qtc_QVariant_setValue_Int :: Ptr (TQVariant t0) -> CInt -> IO ()

instance QsetValue (QVariant a) (Bool) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_setValue_Bool cobj_x0 (toCBool x1)

foreign import ccall "qtc_QVariant_setValue_Bool" qtc_QVariant_setValue_Bool :: Ptr (TQVariant t0) -> CBool -> IO ()

instance QsetValue (QVariant a) (Double) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_setValue_Double cobj_x0 (toCDouble x1)

foreign import ccall "qtc_QVariant_setValue_Double" qtc_QVariant_setValue_Double :: Ptr (TQVariant t0) -> CDouble -> IO ()

instance QsetValue (QVariant a) (GlobalColor) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_setValue_GlobalColor cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QVariant_setValue_GlobalColor" qtc_QVariant_setValue_GlobalColor :: Ptr (TQVariant t0) -> CLong -> IO ()

instance QsetValue (QVariant a) (QDate t1) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QDate cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QDate" qtc_QVariant_setValue_QDate :: Ptr (TQVariant t0) -> Ptr (TQDate t1) -> IO ()

instance QsetValue (QVariant a) (QTime t1) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QTime cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QTime" qtc_QVariant_setValue_QTime :: Ptr (TQVariant t0) -> Ptr (TQTime t1) -> IO ()

instance QsetValue (QVariant a) (QDateTime t1) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QDateTime cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QDateTime" qtc_QVariant_setValue_QDateTime :: Ptr (TQVariant t0) -> Ptr (TQDateTime t1) -> IO ()

instance QqSetValue (QSize t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QSize cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QSize" qtc_QVariant_setValue_QSize :: Ptr (TQVariant t0) -> Ptr (TQSize t1) -> IO ()

instance QsetValue (QVariant a) (Size) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSize x1 $ \csize_x1_w csize_x1_h -> 
    qtc_QVariant_setValue_QSize_qth cobj_x0 csize_x1_w csize_x1_h

foreign import ccall "qtc_QVariant_setValue_QSize_qth" qtc_QVariant_setValue_QSize_qth :: Ptr (TQVariant t0) -> CInt -> CInt -> IO ()

instance QqSetValue (QPoint t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QPoint cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QPoint" qtc_QVariant_setValue_QPoint :: Ptr (TQVariant t0) -> Ptr (TQPoint t1) -> IO ()

instance QsetValue (QVariant a) (Point) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPoint x1 $ \cpoint_x1_x cpoint_x1_y -> 
    qtc_QVariant_setValue_QPoint_qth cobj_x0 cpoint_x1_x cpoint_x1_y

foreign import ccall "qtc_QVariant_setValue_QPoint_qth" qtc_QVariant_setValue_QPoint_qth :: Ptr (TQVariant t0) -> CInt -> CInt -> IO ()

instance QqSetValue (QLine t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QLine cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QLine" qtc_QVariant_setValue_QLine :: Ptr (TQVariant t0) -> Ptr (TQLine t1) -> IO ()

instance QsetValue (QVariant a) (Line) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCLine x1 $ \cline_x1_x1 cline_x1_y1 cline_x1_x2 cline_x1_y2 -> 
    qtc_QVariant_setValue_QLine_qth cobj_x0 cline_x1_x1  cline_x1_y1 cline_x1_x2 cline_x1_y2

foreign import ccall "qtc_QVariant_setValue_QLine_qth" qtc_QVariant_setValue_QLine_qth :: Ptr (TQVariant t0) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqSetValue (QRect t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QRect cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QRect" qtc_QVariant_setValue_QRect :: Ptr (TQVariant t0) -> Ptr (TQRect t1) -> IO ()

instance QsetValue (QVariant a) (Rect) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRect x1 $ \crect_x1_x crect_x1_y crect_x1_w crect_x1_h -> 
    qtc_QVariant_setValue_QRect_qth cobj_x0 crect_x1_x crect_x1_y crect_x1_w crect_x1_h

foreign import ccall "qtc_QVariant_setValue_QRect_qth" qtc_QVariant_setValue_QRect_qth :: Ptr (TQVariant t0) -> CInt -> CInt -> CInt -> CInt -> IO ()

instance QqSetValue (QSizeF t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QSizeF cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QSizeF" qtc_QVariant_setValue_QSizeF :: Ptr (TQVariant t0) -> Ptr (TQSizeF t1) -> IO ()

instance QsetValue (QVariant a) (SizeF) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCSizeF x1 $ \csizef_x1_w csizef_x1_h -> 
    qtc_QVariant_setValue_QSizeF_qth cobj_x0 csizef_x1_w csizef_x1_h

foreign import ccall "qtc_QVariant_setValue_QSizeF_qth" qtc_QVariant_setValue_QSizeF_qth :: Ptr (TQVariant t0) -> CDouble -> CDouble -> IO ()

instance QqSetValue (QPointF t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QPointF cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QPointF" qtc_QVariant_setValue_QPointF :: Ptr (TQVariant t0) -> Ptr (TQPointF t1) -> IO ()

instance QsetValue (QVariant a) (PointF) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCPointF x1 $ \cpointf_x1_x cpointf_x1_y -> 
    qtc_QVariant_setValue_QPointF_qth cobj_x0 cpointf_x1_x cpointf_x1_y

foreign import ccall "qtc_QVariant_setValue_QPointF_qth" qtc_QVariant_setValue_QPointF_qth :: Ptr (TQVariant t0) -> CDouble -> CDouble -> IO ()

instance QqSetValue (QLineF t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QLineF cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QLineF" qtc_QVariant_setValue_QLineF :: Ptr (TQVariant t0) -> Ptr (TQLineF t1) -> IO ()

instance QsetValue (QVariant a) (LineF) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCLineF x1 $ \clinef_x1_x1 clinef_x1_y1 clinef_x1_x2 clinef_x1_y2 -> 
    qtc_QVariant_setValue_QLineF_qth cobj_x0 clinef_x1_x1  clinef_x1_y1 clinef_x1_x2 clinef_x1_y2

foreign import ccall "qtc_QVariant_setValue_QLineF_qth" qtc_QVariant_setValue_QLineF_qth :: Ptr (TQVariant t0) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QqSetValue (QRectF t1) where
 qSetValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QRectF cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QRectF" qtc_QVariant_setValue_QRectF :: Ptr (TQVariant t0) -> Ptr (TQRectF t1) -> IO ()

instance QsetValue (QVariant a) (RectF) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCRectF x1 $ \crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h -> 
    qtc_QVariant_setValue_QRectF_qth cobj_x0 crectf_x1_x crectf_x1_y crectf_x1_w crectf_x1_h

foreign import ccall "qtc_QVariant_setValue_QRectF_qth" qtc_QVariant_setValue_QRectF_qth :: Ptr (TQVariant t0) -> CDouble -> CDouble -> CDouble -> CDouble -> IO ()

instance QsetValue (QVariant a) ([QVariant t1]) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListObject x1 $ \cqlistlen_x1 cqlistobj_x1 ->
    qtc_QVariant_setValue_List cobj_x0 cqlistlen_x1 cqlistobj_x1

foreign import ccall "qtc_QVariant_setValue_List" qtc_QVariant_setValue_List :: Ptr (TQVariant t0) ->  CInt -> Ptr (Ptr (TQVariant t1)) -> IO ()

instance QsetValue (QVariant a) (String) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withCWString x1 $ \cstr_x1 ->
    qtc_QVariant_setValue_QString cobj_x0 cstr_x1

foreign import ccall "qtc_QVariant_setValue_QString" qtc_QVariant_setValue_QString :: Ptr (TQVariant t0) -> CWString -> IO ()

instance QsetValue (QVariant a) (QByteArray ()) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withObjectPtr x1 $ \cobj_x1 ->
    qtc_QVariant_setValue_QByteArray cobj_x0 cobj_x1

foreign import ccall "qtc_QVariant_setValue_QByteArray" qtc_QVariant_setValue_QByteArray :: Ptr (TQVariant t0) -> Ptr (TQByteArray ()) -> IO ()

instance QsetValue (QVariant a) ([String]) where
 setValue x0 x1
  = withObjectPtr x0 $ \cobj_x0 ->
    withQListString x1 $ \cqlistlen_x1 cqliststr_x1 ->
    qtc_QVariant_setValue_QStringList cobj_x0 cqlistlen_x1 cqliststr_x1

foreign import ccall "qtc_QVariant_setValue_QStringList" qtc_QVariant_setValue_QStringList :: Ptr (TQVariant t0) ->  CInt -> Ptr (Ptr CWchar) -> IO ()

qVariantValue_Int :: QVariant a -> IO Int
qVariantValue_Int x0
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_Int cobj_x0

foreign import ccall "qtc_QVariantValue_Int" qtc_QVariantValue_Int :: Ptr (TQVariant a) -> IO CInt

qVariantValue_Bool :: QVariant a -> IO Bool
qVariantValue_Bool x0
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_Bool cobj_x0

foreign import ccall "qtc_QVariantValue_Bool" qtc_QVariantValue_Bool :: Ptr (TQVariant a) -> IO CBool

qVariantValue_Double :: QVariant a -> IO Double
qVariantValue_Double x0
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_Double cobj_x0

foreign import ccall "qtc_QVariantValue_Double" qtc_QVariantValue_Double :: Ptr (TQVariant a) -> IO CDouble

qVariantValue_QColor :: QVariant a -> IO (QColor ())
qVariantValue_QColor x0
  = withQColorResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QColor cobj_x0

foreign import ccall "qtc_QVariantValue_QColor" qtc_QVariantValue_QColor :: Ptr (TQVariant a) -> IO (Ptr (TQColor ()))

qVariantValue_QDate :: QVariant a -> IO (QDate ())
qVariantValue_QDate x0
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QDate cobj_x0

foreign import ccall "qtc_QVariantValue_QDate" qtc_QVariantValue_QDate :: Ptr (TQVariant a) -> IO (Ptr (TQDate ()))

qVariantValue_QTime :: QVariant a -> IO (QTime ())
qVariantValue_QTime x0
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QTime cobj_x0

foreign import ccall "qtc_QVariantValue_QTime" qtc_QVariantValue_QTime :: Ptr (TQVariant a) -> IO (Ptr (TQTime ()))

qVariantValue_QDateTime :: QVariant a -> IO (QDateTime ())
qVariantValue_QDateTime x0
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QDateTime cobj_x0

foreign import ccall "qtc_QVariantValue_QDateTime" qtc_QVariantValue_QDateTime :: Ptr (TQVariant a) -> IO (Ptr (TQDateTime ()))

qqVariantValue_QSize :: QVariant a -> IO (QSize ())
qqVariantValue_QSize x0
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QSize cobj_x0

foreign import ccall "qtc_QVariantValue_QSize" qtc_QVariantValue_QSize :: Ptr (TQVariant a) -> IO (Ptr (TQSize ()))

qVariantValue_QSize :: QVariant a -> IO (Size)
qVariantValue_QSize x0
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVariantValue_QSize_qth" qtc_QVariantValue_QSize_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> IO ()

qqVariantValue_QPoint :: QVariant a -> IO (QPoint ())
qqVariantValue_QPoint x0
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QPoint cobj_x0

foreign import ccall "qtc_QVariantValue_QPoint" qtc_QVariantValue_QPoint :: Ptr (TQVariant a) -> IO (Ptr (TQPoint ()))

qVariantValue_QPoint :: QVariant a -> IO (Point)
qVariantValue_QPoint x0
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QPoint_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QVariantValue_QPoint_qth" qtc_QVariantValue_QPoint_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> IO ()

qqVariantValue_QLine :: QVariant a -> IO (QLine ())
qqVariantValue_QLine x0
  = withQLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QLine cobj_x0

foreign import ccall "qtc_QVariantValue_QLine" qtc_QVariantValue_QLine :: Ptr (TQVariant a) -> IO (Ptr (TQLine ()))

qVariantValue_QLine :: QVariant a -> IO (Line)
qVariantValue_QLine x0
  = withLineResult $ \cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QLine_qth cobj_x0 cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2

foreign import ccall "qtc_QVariantValue_QLine_qth" qtc_QVariantValue_QLine_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqVariantValue_QRect :: QVariant a -> IO (QRect ())
qqVariantValue_QRect x0
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QRect cobj_x0

foreign import ccall "qtc_QVariantValue_QRect" qtc_QVariantValue_QRect :: Ptr (TQVariant a) -> IO (Ptr (TQRect ()))

qVariantValue_QRect :: QVariant a -> IO (Rect)
qVariantValue_QRect x0
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QVariantValue_QRect_qth" qtc_QVariantValue_QRect_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqVariantValue_QSizeF :: QVariant a -> IO (QSizeF ())
qqVariantValue_QSizeF x0
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QSizeF cobj_x0

foreign import ccall "qtc_QVariantValue_QSizeF" qtc_QVariantValue_QSizeF :: Ptr (TQVariant a) -> IO (Ptr (TQSizeF ()))

qVariantValue_QSizeF :: QVariant a -> IO (SizeF)
qVariantValue_QSizeF x0
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QSizeF_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QVariantValue_QSizeF_qth" qtc_QVariantValue_QSizeF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariantValue_QPointF :: QVariant a -> IO (QPointF ())
qqVariantValue_QPointF x0
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QPointF cobj_x0

foreign import ccall "qtc_QVariantValue_QPointF" qtc_QVariantValue_QPointF :: Ptr (TQVariant a) -> IO (Ptr (TQPointF ()))

qVariantValue_QPointF :: QVariant a -> IO (PointF)
qVariantValue_QPointF x0
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QPointF_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QVariantValue_QPointF_qth" qtc_QVariantValue_QPointF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariantValue_QLineF :: QVariant a -> IO (QLineF ())
qqVariantValue_QLineF x0
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QLineF cobj_x0

foreign import ccall "qtc_QVariantValue_QLineF" qtc_QVariantValue_QLineF :: Ptr (TQVariant a) -> IO (Ptr (TQLineF ()))

qVariantValue_QLineF :: QVariant a -> IO (LineF)
qVariantValue_QLineF x0
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QLineF_qth cobj_x0 clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QVariantValue_QLineF_qth" qtc_QVariantValue_QLineF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariantValue_QRectF :: QVariant a -> IO (QRectF ())
qqVariantValue_QRectF x0
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QRectF cobj_x0

foreign import ccall "qtc_QVariantValue_QRectF" qtc_QVariantValue_QRectF :: Ptr (TQVariant a) -> IO (Ptr (TQRectF ()))

qVariantValue_QRectF :: QVariant a -> IO (RectF)
qVariantValue_QRectF x0
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QRectF_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QVariantValue_QRectF_qth" qtc_QVariantValue_QRectF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qVariantValue_List :: QVariant a -> IO [QVariant ()]
qVariantValue_List x0
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_List cobj_x0 arr

foreign import ccall "qtc_QVariantValue_List" qtc_QVariantValue_List :: Ptr (TQVariant a) -> Ptr (Ptr (TQVariant ())) -> IO CInt

qVariantValue_QString :: QVariant a -> IO String
qVariantValue_QString x0
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QString cobj_x0

foreign import ccall "qtc_QVariantValue_QString" qtc_QVariantValue_QString :: Ptr (TQVariant a) -> IO (Ptr (TQString ()))

qVariantValue_QByteArray :: QVariant a -> IO (QByteArray ())
qVariantValue_QByteArray x0
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QByteArray cobj_x0

foreign import ccall "qtc_QVariantValue_QByteArray" qtc_QVariantValue_QByteArray :: Ptr (TQVariant a) -> IO (Ptr (TQByteArray ()))

qVariantValue_QStringList :: QVariant a -> IO [String]
qVariantValue_QStringList x0
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariantValue_QStringList cobj_x0 arr

foreign import ccall "qtc_QVariantValue_QStringList" qtc_QVariantValue_QStringList :: Ptr (TQVariant a) -> Ptr (Ptr (TQString ())) -> IO CInt

qVariant_toInt :: QVariant a -> IO Int
qVariant_toInt x0
  = withIntResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toInt cobj_x0

foreign import ccall "qtc_QVariant_toInt" qtc_QVariant_toInt :: Ptr (TQVariant a) -> IO CInt

qVariant_toBool :: QVariant a -> IO Bool
qVariant_toBool x0
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toBool cobj_x0

foreign import ccall "qtc_QVariant_toBool" qtc_QVariant_toBool :: Ptr (TQVariant a) -> IO CBool

qVariant_toDouble :: QVariant a -> IO Double
qVariant_toDouble x0
  = withDoubleResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toDouble cobj_x0

foreign import ccall "qtc_QVariant_toDouble" qtc_QVariant_toDouble :: Ptr (TQVariant a) -> IO CDouble

qVariant_toDate :: QVariant a -> IO (QDate ())
qVariant_toDate x0
  = withQDateResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toDate cobj_x0

foreign import ccall "qtc_QVariant_toDate" qtc_QVariant_toDate :: Ptr (TQVariant a) -> IO (Ptr (TQDate ()))

qVariant_toTime :: QVariant a -> IO (QTime ())
qVariant_toTime x0
  = withQTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toTime cobj_x0

foreign import ccall "qtc_QVariant_toTime" qtc_QVariant_toTime :: Ptr (TQVariant a) -> IO (Ptr (TQTime ()))

qVariant_toDateTime :: QVariant a -> IO (QDateTime ())
qVariant_toDateTime x0
  = withQDateTimeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toDateTime cobj_x0

foreign import ccall "qtc_QVariant_toDateTime" qtc_QVariant_toDateTime :: Ptr (TQVariant a) -> IO (Ptr (TQDateTime ()))

qqVariant_toSize :: QVariant a -> IO (QSize ())
qqVariant_toSize x0
  = withQSizeResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toSize cobj_x0

foreign import ccall "qtc_QVariant_toSize" qtc_QVariant_toSize :: Ptr (TQVariant a) -> IO (Ptr (TQSize ()))

qVariant_toSize :: QVariant a -> IO (Size)
qVariant_toSize x0
  = withSizeResult $ \csize_ret_w csize_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toSize_qth cobj_x0 csize_ret_w csize_ret_h

foreign import ccall "qtc_QVariant_toSize_qth" qtc_QVariant_toSize_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> IO ()

qqVariant_toPoint :: QVariant a -> IO (QPoint ())
qqVariant_toPoint x0
  = withQPointResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toPoint cobj_x0

foreign import ccall "qtc_QVariant_toPoint" qtc_QVariant_toPoint :: Ptr (TQVariant a) -> IO (Ptr (TQPoint ()))

qVariant_toPoint :: QVariant a -> IO (Point)
qVariant_toPoint x0
  = withPointResult $ \cpoint_ret_x cpoint_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toPoint_qth cobj_x0 cpoint_ret_x cpoint_ret_y

foreign import ccall "qtc_QVariant_toPoint_qth" qtc_QVariant_toPoint_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> IO ()

qqVariant_toLine :: QVariant a -> IO (QLine ())
qqVariant_toLine x0
  = withQLineResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toLine cobj_x0

foreign import ccall "qtc_QVariant_toLine" qtc_QVariant_toLine :: Ptr (TQVariant a) -> IO (Ptr (TQLine ()))

qVariant_toLine :: QVariant a -> IO (Line)
qVariant_toLine x0
  = withLineResult $ \cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toLine_qth cobj_x0 cline_ret_x1 cline_ret_y1 cline_ret_x2 cline_ret_y2

foreign import ccall "qtc_QVariant_toLine_qth" qtc_QVariant_toLine_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqVariant_toRect :: QVariant a -> IO (QRect ())
qqVariant_toRect x0
  = withQRectResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toRect cobj_x0

foreign import ccall "qtc_QVariant_toRect" qtc_QVariant_toRect :: Ptr (TQVariant a) -> IO (Ptr (TQRect ()))

qVariant_toRect :: QVariant a -> IO (Rect)
qVariant_toRect x0
  = withRectResult $ \crect_ret_x crect_ret_y crect_ret_w crect_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toRect_qth cobj_x0 crect_ret_x crect_ret_y crect_ret_w crect_ret_h

foreign import ccall "qtc_QVariant_toRect_qth" qtc_QVariant_toRect_qth :: Ptr (TQVariant a) -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()

qqVariant_toSizeF :: QVariant a -> IO (QSizeF ())
qqVariant_toSizeF x0
  = withQSizeFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toSizeF cobj_x0

foreign import ccall "qtc_QVariant_toSizeF" qtc_QVariant_toSizeF :: Ptr (TQVariant a) -> IO (Ptr (TQSizeF ()))

qVariant_toSizeF :: QVariant a -> IO (SizeF)
qVariant_toSizeF x0
  = withSizeFResult $ \csizef_ret_w csizef_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toSizeF_qth cobj_x0 csizef_ret_w csizef_ret_h

foreign import ccall "qtc_QVariant_toSizeF_qth" qtc_QVariant_toSizeF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariant_toPointF :: QVariant a -> IO (QPointF ())
qqVariant_toPointF x0
  = withQPointFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toPointF cobj_x0

foreign import ccall "qtc_QVariant_toPointF" qtc_QVariant_toPointF :: Ptr (TQVariant a) -> IO (Ptr (TQPointF ()))

qVariant_toPointF :: QVariant a -> IO (PointF)
qVariant_toPointF x0
  = withPointFResult $ \cpointf_ret_x cpointf_ret_y ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toPointF_qth cobj_x0 cpointf_ret_x cpointf_ret_y

foreign import ccall "qtc_QVariant_toPointF_qth" qtc_QVariant_toPointF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariant_toLineF :: QVariant a -> IO (QLineF ())
qqVariant_toLineF x0
  = withQLineFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toLineF cobj_x0

foreign import ccall "qtc_QVariant_toLineF" qtc_QVariant_toLineF :: Ptr (TQVariant a) -> IO (Ptr (TQLineF ()))

qVariant_toLineF :: QVariant a -> IO (LineF)
qVariant_toLineF x0
  = withLineFResult $ \clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2 ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toLineF_qth cobj_x0 clinef_ret_x1 clinef_ret_y1 clinef_ret_x2 clinef_ret_y2

foreign import ccall "qtc_QVariant_toLineF_qth" qtc_QVariant_toLineF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qqVariant_toRectF :: QVariant a -> IO (QRectF ())
qqVariant_toRectF x0
  = withQRectFResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toRectF cobj_x0

foreign import ccall "qtc_QVariant_toRectF" qtc_QVariant_toRectF :: Ptr (TQVariant a) -> IO (Ptr (TQRectF ()))

qVariant_toRectF :: QVariant a -> IO (RectF)
qVariant_toRectF x0
  = withRectFResult $ \crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toRectF_qth cobj_x0 crectf_ret_x crectf_ret_y crectf_ret_w crectf_ret_h

foreign import ccall "qtc_QVariant_toRectF_qth" qtc_QVariant_toRectF_qth :: Ptr (TQVariant a) -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

qVariant_toList :: QVariant a -> IO [QVariant ()]
qVariant_toList x0
  = withQListObjectRefResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toList cobj_x0 arr

foreign import ccall "qtc_QVariant_toList" qtc_QVariant_toList :: Ptr (TQVariant a) -> Ptr (Ptr (TQVariant ())) -> IO CInt

qVariant_toString :: QVariant a -> IO String
qVariant_toString x0
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toString cobj_x0

foreign import ccall "qtc_QVariant_toString" qtc_QVariant_toString :: Ptr (TQVariant a) -> IO (Ptr (TQString ()))

qVariant_toByteArray :: QVariant a -> IO (QByteArray ())
qVariant_toByteArray x0
  = withQByteArrayResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toByteArray cobj_x0

foreign import ccall "qtc_QVariant_toByteArray" qtc_QVariant_toByteArray :: Ptr (TQVariant a) -> IO (Ptr (TQByteArray ()))

qVariant_toStringList :: QVariant a -> IO [String]
qVariant_toStringList x0
  = withQListStringResult $ \arr ->
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_toStringList cobj_x0 arr

foreign import ccall "qtc_QVariant_toStringList" qtc_QVariant_toStringList :: Ptr (TQVariant a) -> Ptr (Ptr (TQString ())) -> IO CInt

instance Qqtype (QVariant a) (()) (IO (QVariantType)) where
 qtype x0 ()
  = withQEnumResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_type cobj_x0

foreign import ccall "qtc_QVariant_type" qtc_QVariant_type :: Ptr (TQVariant a) -> IO CLong

typeName :: QVariant a -> IO String
typeName x0
  = withStringResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_typeName cobj_x0

foreign import ccall "qtc_QVariant_typeName" qtc_QVariant_typeName :: Ptr (TQVariant a) -> IO (Ptr (TQString ())) 

canConvert :: QVariant a -> QVariantType -> IO Bool
canConvert x0 x1
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_canConvert cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QVariant_canConvert" qtc_QVariant_canConvert :: Ptr (TQVariant a) -> CLong -> IO CBool

convert :: QVariant a -> QVariantType -> IO Bool
convert x0 x1
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_convert cobj_x0 (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QVariant_convert" qtc_QVariant_convert :: Ptr (TQVariant a) -> CLong -> IO CBool

instance Qclear (QVariant a) (()) where
 clear x0 ()
  = withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_clear cobj_x0

foreign import ccall "qtc_QVariant_clear" qtc_QVariant_clear :: Ptr (TQVariant a) -> IO ()

instance QqisNull (QVariant a) (()) where
 qisNull x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_isNull cobj_x0

foreign import ccall "qtc_QVariant_isNull" qtc_QVariant_isNull :: Ptr (TQVariant a) -> IO CBool

instance QqisValid (QVariant a) (()) where
 qisValid x0 ()
  = withBoolResult $
    withObjectPtr x0 $ \cobj_x0 ->
    qtc_QVariant_isValid cobj_x0

foreign import ccall "qtc_QVariant_isValid" qtc_QVariant_isValid :: Ptr (TQVariant a) -> IO CBool

qVariantNameToType :: String -> IO (QVariantType)
qVariantNameToType x1
  = withQEnumResult $
    withCWString x1 $ \cstr_x1 ->
    qtc_QVariant_nameToType cstr_x1

foreign import ccall "qtc_QVariant_nameToType" qtc_QVariant_nameToType :: CWString -> IO CLong

qVariantTypeToName :: QVariantType -> IO String
qVariantTypeToName x1
  = withStringResult $
    qtc_QVariant_typeToName (toCLong $ qEnum_toInt x1)

foreign import ccall "qtc_QVariant_typeToName" qtc_QVariant_typeToName :: CLong -> IO (Ptr (TQString ()))

