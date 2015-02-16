{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Style.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:13
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qt.Arthur.Style (
 cached, ArthurStyle, CArthurStyle, arthurStyle, drawHoverRect
 ) where

import Foreign.C.Types
import Qtc.Enums.Classes.Core
import Qth.ClassTypes.Core
import Qth.Core
import Data.Bits
import Foreign.ForeignPtr
import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core
import Qtc.Classes.Gui
import Qtc.Classes.Gui_h
import Qtc.Enums.Base
import Qtc.Core.Base
import Qtc.Gui.Base
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui
import Qtc.Enums.Core.Qt
import Qtc.Core.QPoint
import Qtc.Core.QRect
import Qtc.Core.QSize
import Qtc.Gui.QColor
import Qtc.Gui.QBrush
import Qtc.Gui.QWidget
import Qtc.Gui.QAbstractSlider
import Qtc.Gui.QPainter
import Qtc.Enums.Gui.QPainter
import Qtc.Gui.QPainterPath
import Qtc.Gui.QPixmap
import Qtc.Gui.QPixmapCache
import Qtc.Gui.QImage
import Qtc.Enums.Gui.QStyle
import Qtc.Gui.QStyleOption
import Qtc.Gui.QStyleOptionComplex
import Qtc.Gui.QStyleOptionGroupBox
import Qtc.Gui.QFontMetrics
import Qtc.Gui.QGradient
import Qtc.Gui.QLinearGradient
import Qtc.Gui.QWindowsStyle
import Qtc.Gui.QWindowsStyle_h
import Qtc.Gui.QPalette
import Qtc.Enums.Gui.QPalette
import Qtc.Gui.QLayout
import Qtc.Gui.QPushButton
import Qtc.Gui.QGroupBox

cached :: String -> IO (QPixmap ())
cached img
  = do
    p <- qPixmapCacheFind img
    if (not (objectIsNull p))
     then
      return p
     else
      do
      ti <- qImage img
      pm <- qPixmapFromImage_nf (ti, (fOrderedDither + fOrderedAlphaDither))
      tb <- qisNull pm ()
      if (tb)
       then
        qPixmap ()
       else
        do
        qPixmapCacheInsert (img, pm)
        return pm

type ArthurStyle = QWindowsStyleSc (CArthurStyle)
data CArthurStyle = CArthurStyle

arthurStyle :: IO (ArthurStyle)
arthurStyle
  = do
    rok <- registerResource "arthur.rcc"
    ws <- qWindowsStyle ()
    let aws = (objectCast ws) :: ArthurStyle
    setHandler aws "(int)pixelMetric(QStyle::PixelMetric,const QStyleOption*,const QWidget*)" $ aSpixelMetric
    setHandler aws "(QSize)sizeFromContents(QStyle::ContentsType,const QStyleOption*,const QSize&,const QWidget*)" $ aSsizeFromContents
    setHandler aws "(QRect)subControlRect(QStyle::ComplexControl,const QStyleOptionComplex*,QStyle::SubControl,const QWidget*)" $ aSsubControlRect
    setHandler aws "polish(QWidget*)" $ aSpolish
    setHandler aws "unpolish(QWidget*)" $ aSunpolish
    setHandler aws "drawPrimitive(QStyle::PrimitiveElement,const QStyleOption*,QPainter*,const QWidget*)" $ aSdrawPrimitive
    setHandler aws "drawComplexControl(QStyle::ComplexControl,const QStyleOptionComplex*,QPainter*,const QWidget*)" $ aSdrawComplexControl
    return $ aws

drawHoverRect :: QPainter a -> Rect -> IO ()
drawHoverRect painter r
  = do
    let rh = fromIntegral $ height r
        rh2 = rh / (2.0::Double)
        rx = fromIntegral $ x r
        ry = (fromIntegral $ y r) :: Double
        rw = fromIntegral $ width r
    path <- qPainterPath ()
    addRect path ((rx + rh2), ry, (rw - (rh2 * (2.0::Double))), rh)
    addEllipse path (rx, ry, rh, rh)
    addEllipse path ((rx + rw - rh), ry, rh, rh)
    setFillRule path eWindingFill
    setPen painter eNoPen
    c <- qColor (191::Int, 215::Int, 191::Int)
    b <- qBrush c
    setBrush painter b
    setRenderHint painter (eAntialiasing::RenderHint)
    drawPath painter path

drawHoverRect_vert :: QPainter a -> Rect -> IO ()
drawHoverRect_vert painter r
  = do
    let rh = fromIntegral $ height r
        rx = (fromIntegral $ x r) :: Double
        ry = fromIntegral $ y r
        rw = fromIntegral $ width r
        rw2 = rw / (2.0::Double)
    path <- qPainterPath ()
    addRect path (rx, (ry + rw2), rw, (rh - rw))
    addEllipse path (rx, ry, rw, rw)
    addEllipse path (rx, (ry + rh - rw), rw, rw)
    setFillRule path eWindingFill
    setPen painter eNoPen
    c <- qColor (191::Int, 215::Int, 191::Int)
    b <- qBrush c
    setBrush painter b
    setRenderHint painter (eAntialiasing::RenderHint)
    drawPath painter path

aSdrawPrimitive :: ArthurStyle -> PrimitiveElement -> QStyleOption a -> QPainter a -> QWidget a -> IO ()
aSdrawPrimitive this element option painter widget
  = do
    case element of
     _ | element == ePE_FrameFocusRect
      -> do
         return ()
     _ | element == ePE_IndicatorRadioButton
      -> do
         button <- gcb option
         if (not (objectIsNull button))
          then
           do
           tqsos <- state button ()
           save painter ()
           if (hover tqsos)
            then do w <- qrect widget (); drawHoverRect painter w
            else return ()
           radio <- 
            if ((tqsos .&. (qFlags_toInt fState_Sunken)) > 0)
             then
              cached ":res/images/radiobutton-on.png"
             else
              if ((tqsos .&. (qFlags_toInt fState_On)) > 0)
               then
                cached ":res/images/radiobutton_on.png"
               else
                cached ":res/images/radiobutton_off.png"
           b <- qrect button ()
           drawPixmap painter (topLeft b, radio)
           restore painter ()
          else
           return ()
     _ | element == ePE_PanelButtonCommand
      -> do
         button <- gcb option
         if (not (objectIsNull button))
          then
           do
           tqsos <- state button ()
           save painter ()
           pushButton <- qCast_QPushButton widget
           parent <- parentWidget pushButton ()
           groupBox <- qCast_QGroupBox =<< qobject_cast "<QGroupBox*>" parent
           tbp <- qObjectIsNull parent
           if ((not tbp) && (not (objectIsNull groupBox)))
            then
             do
             qwh <- qheight parent ()
             lg <- qLinearGradient (0.0::Double, 0.0::Double, 0.0::Double, ((fromIntegral qwh)::Double))
             c1 <- qColor (224::Int, 224::Int, 224::Int)
             setColorAt lg (0::Double, c1)
             c2 <- qColor (255::Int, 255::Int, 255::Int)
             setColorAt lg (1::Double, c2)
             setPen painter eNoPen
             b <- qBrush lg
             setBrush painter b
             let p = point 0 0
             zp <- mapToParent widget p
             let zp_x = x zp
                 zp_y = y zp
             setBrushOrigin painter (zp_x, zp_y)
             sob <- qrect button ()
             drawRect painter sob
             setBrushOrigin painter (0::Int, 0::Int)
            else
             return ()
           let down = ((tqsos .&. (qFlags_toInt fState_Sunken)) > 0) ||
                      ((tqsos .&. (qFlags_toInt fState_On)) > 0)
           ds <- if (down) then return "pressed" else return "normal"
           iLeft <- cached $ ":res/images/button_" ++ ds ++ "_cap_left.png"
           iRight <- cached $ ":res/images/button_" ++ ds ++ "_cap_right.png"
           iMid <- cached $ ":res/images/button_" ++ ds ++ "_stretch.png"
           tr <- qrect button ()
           ad <- autoDefault pushButton ()
           let ar = if (ad)
                       then
                        adjust tr 0 1 0 0
                       else
                        tr
               rect_topLeft = topLeft ar
               rect_x = x ar
               rect_y = y ar
               rect_width = width ar
           left_width <- qwidth iLeft ()
           left_height <- qheight iLeft ()
           right_width <- qwidth iRight ()
           drawPixmap painter (rect_topLeft, iLeft)
           let tqr = rect (rect_x + left_width) rect_y (rect_width - left_width - right_width) left_height
           drawTiledPixmap painter (tqr, iMid)
           drawPixmap painter ((rect_x + rect_width - right_width), rect_y, iRight)
           if (hover tqsos)
            then
             do
             let ar2 = adjust ar 3 5 (-3) (-5)
             c <- qColor (31::Int, 127::Int, 31::Int, 63::Int)
             b <- qBrush c
             fillRect painter (ar2, b)
            else
             return ()
           restore painter ()
           returnGC
          else
           return ()
     _ | element == ePE_FrameGroupBox
      -> do
         group <- gcg option
         if (not (objectIsNull group))
          then
           do
           r <- qrect group ()
           save painter ()
           let radius = 14.0::Double
               r2 = radius * (2.0::Double)
               z = 0.0 :: Double
               nty = 90.0 :: Double
               tsty = 270.0 :: Double
               oety = 180.0 :: Double
               ri = rightq r
               li = left r
               bi = bottomq r
               ti = top r
               hi = height r
               wi = width r
               rr = (fromIntegral ri) :: Double
               rl = (fromIntegral li) :: Double
               rb = (fromIntegral bi) :: Double
               rt = (fromIntegral ti) :: Double
               rh = (fromIntegral hi) :: Double
           clipPath <- qPainterPath ()
           qmoveTo clipPath (radius, z)
           arcTo clipPath ((rr - r2), z, r2, r2, nty, (-nty))
           arcTo clipPath ((rr - r2), (rb - r2), r2, r2, z, (-nty))
           arcTo clipPath (rl, (rb - r2), r2, r2, tsty, (-nty))
           arcTo clipPath (rl, rt, r2, r2, oety, (-nty))
           setClipPath painter clipPath
           titleStretch <- cached ":res/images/title_stretch.png"
           iTopLeft <- cached ":res/images/groupframe_topleft.png"
           iTopRight <- cached ":res/images/groupframe_topright.png"
           iBottomLeft <- cached ":res/images/groupframe_bottom_left.png"
           iBottomRight <- cached ":res/images/groupframe_bottom_right.png"
           iLeftStretch <- cached ":res/images/groupframe_left_stretch.png"
           iTopStretch <- cached ":res/images/groupframe_top_stretch.png"
           iRightStretch <- cached ":res/images/groupframe_right_stretch.png"
           iBottomStretch <- cached ":res/images/groupframe_bottom_stretch.png"
           lg <- qLinearGradient (z, z, z, rh)
           tc0 <- qColor (224::Int, 224::Int, 224::Int)
           setColorAt lg (z, tc0)
           tc1 <- qColor (255::Int, 255::Int, 255::Int)
           setColorAt lg (1.0::Double, tc1)
           setPen painter eNoPen
           lgb <- qBrush lg
           setBrush painter lgb
           tshi <- qheight titleStretch ()
           groupBox <- qCast_QGroupBox widget
           gt <- title groupBox ()
           let zi = 0::Int
               gtl = Prelude.length gt
               tihd2 = if (gtl > 0)
                        then div tshi 2
                        else 0
               tfo = if (gtl > 0)
                      then tihd2 - 2
                      else 0
               ra = adjust r zi tihd2 zi zi
           drawRect painter ra
           setClipping painter False
           let tlo = point li (ti + tfo)
               tr = point ri ti
           drawPixmap painter (tlo, iTopLeft)
           trw <- qwidth iTopRight ()
           let tro = point (ri - trw + 1) (ti + tfo)
           drawPixmap painter (tro, iTopRight)
           blh <- qheight iBottomLeft ()
           let blo = point li (bi - blh + 1)
           drawPixmap painter (blo, iBottomLeft)
           brw <- qwidth iBottomRight ()
           brh <- qheight iBottomRight ()
           let bro = point (ri - brw + 1) (bi - brh + 1)
           drawPixmap painter (bro, iBottomRight)
           tlh <- qheight iTopLeft ()
           lsw <- qwidth iLeftStretch ()
           let lr = rect li (ti + tlh + tfo) lsw (hi - tlh - blh - tfo)
           drawTiledPixmap painter (lr, iLeftStretch)
           tlw <- qwidth iTopLeft ()
           let tr = rect (li + tlw) (ti + tfo) (wi - tlw - trw) tlh
           drawTiledPixmap painter (tr, iTopStretch)
           rsw <- qwidth iRightStretch ()
           trh <- qheight iTopRight ()
           let rr = rect (ri - rsw + 1) (ti + trh + tfo) rsw (hi - trh - brh - tfo)
           drawTiledPixmap painter (rr, iRightStretch)
           bsh <- qheight iBottomStretch ()
           blw <- qwidth iBottomLeft ()
           let br = rect (li + blh) (bi - bsh + 1) (wi - blw - brw) blh
           drawTiledPixmap painter (br, iBottomStretch)
           restore painter ()
           returnGC
          else
           return ()
     _  
      -> do
         drawPrimitive_h this (element, option, painter, widget)
  where
    gcb option = qCast_QStyleOptionButton =<< qstyleoption_cast "<QStyleOptionButton*>" option
    gcg option = qCast_QStyleOptionFrameV2 =<< qstyleoption_cast "<QStyleOptionFrameV2*>" option

hover :: Int -> Bool
hover tqsos
  = ((tqsos .&. (qFlags_toInt fState_Enabled)) > 0) && 
    ((tqsos .&. (qFlags_toInt fState_MouseOver)) > 0)

aSdrawComplexControl :: ArthurStyle -> ComplexControl -> QStyleOptionComplex a -> QPainter b -> QWidget c -> IO ()
aSdrawComplexControl this control option painter widget
  = do
    case control of
     _ | control == eCC_Slider
      -> do
         slider <- gcs option
         if (not (objectIsNull slider))
          then
           do
           w <- qCast_QSlider widget
           ortn <- orientation w ()
           groove <- aSsubControlRect this eCC_Slider option eSC_SliderGroove widget
           handle <- aSsubControlRect this eCC_Slider option eSC_SliderHandle widget
           save painter ()
           if (ortn == eHorizontal)
            then
             do
             tqsos <- state slider ()
             if (hover tqsos)
              then
               do
               wr <- qrect widget ()
               let ar = adjust wr 0 4 0 (-4)
               drawHoverRect painter ar
              else
               return ()
             optsub <- subControls option ()
             let fos = qFlags_toInt optsub
             ivg <- qisValid groove ()
             if (((fos .&. (qFlags_toInt fSC_SliderGroove)) > 0) && ivg)
              then
               do
               grv <- cached ":res/images/slider_bar.png"
               grx <- qx groove ()
               gry <- qy groove ()
               grw <- qwidth groove ()
               grvh <- qheight grv ()
               let gr = rect (grx + 5) gry (grw - 10) grvh
               drawPixmap painter (gr, grv)
              else
               return ()
             ivh <- qisValid handle ()
             if (((fos .&. (qFlags_toInt fSC_SliderHandle)) > 0) && ivh)
              then
               do
               hndl <- cached ":res/images/slider_thumb_on.png"
               hntl <- qtopLeft handle ()
               drawPixmap painter (hntl, hndl)
              else
               return ()
            else
             do
             tqsos <- state slider ()
             if (hover tqsos)
              then
               do
               wr <- qrect widget ()
               let ar = adjust wr 4 0 (-4) 0
               drawHoverRect_vert painter ar
              else
               return ()
             optsub <- subControls option ()
             let fos = qFlags_toInt optsub
             ivg <- qisValid groove ()
             if (((fos .&. (qFlags_toInt fSC_SliderGroove)) > 0) && ivg)
              then
               do
               grv <- cached ":res/images/slider_bar_v.png"
               grx <- qx groove ()
               gry <- qy groove ()
               grvw <- qwidth grv ()
               grh <- qheight groove ()
               let gr = rect grx (gry + 5) grvw (grh - 10)
               drawPixmap painter (gr, grv)
              else
               return ()
             ivh <- qisValid handle ()
             if (((fos .&. (qFlags_toInt fSC_SliderHandle)) > 0) && ivh)
              then
               do
               hndl <- cached ":res/images/slider_thumb_on_v.png"
               hntl <- qtopLeft handle ()
               drawPixmap painter (hntl, hndl)
              else
               return ()
           restore painter ()
           returnGC
          else
           return ()
     _ | control == eCC_GroupBox
      -> do
         group <- gcg option
         if (not (objectIsNull group))
          then
           do
           osc <- subControls group ()
           let fosc = qFlags_toInt osc
               tosc = fosc .&. (complement (qFlags_toInt fSC_GroupBoxLabel))
           setSubControls group $ qFlags_fromInt tosc
           drawComplexControl_h this (control, group, painter, widget)
           setSubControls group osc
           if ((fosc .&. (qFlags_toInt fSC_GroupBoxLabel)) > 0)
            then
             do
             gr <- qrect group ()
             titleLeft <- cached ":res/images/title_cap_left.png"
             titleRight <- cached ":res/images/title_cap_right.png"
             titleStretch <- cached ":res/images/title_stretch.png"
             fm <- fontMetrics group ()
             gt <- text group ()
             fmw <- qwidth fm gt
             let tw = fmw + 20
                 tw2 = div tw 2
                 grc = center gr
                 grc_x = x grc
                 zi = 0 :: Int
             tlw <- qwidth titleLeft ()
             trw <- qwidth titleRight ()
             tsh <- qheight titleStretch ()
             drawPixmap painter ((grc_x - tw2), zi, titleLeft)
             tqr <- aSsubControlRect this control group eSC_GroupBoxLabel widget
             tileRect <- rectQ tqr
             let tr_x = x tileRect
                 tr_w = width tileRect
             drawTiledPixmap painter (tileRect, titleStretch)
             drawPixmap painter ((tr_x + tr_w), zi, titleRight)
             let opacity = 31::Int
             zc1 <- qColor (0::Int, 0::Int, 0::Int, opacity)
             setPen painter zc1
             let trt_01 = translate tileRect 0 1
                 af = qFlags_toInt (fAlignVCenter + fAlignHCenter)
             gt <- text group ()
             drawText painter (trt_01, af, gt)
             let trt_02 = translate tileRect 2 1
             drawText painter (trt_02, af, gt)
             zc2 <- qColor (0::Int, 0::Int, 0::Int, (opacity * 2))
             setPen painter zc2
             let trt_03 = translate tileRect 1 1
             drawText painter (trt_03, af, gt)
             cw <- qColor ewhite
             setPen painter cw
             drawText painter (tileRect, af, gt)
             returnGC
            else
             return ()
          else
           return ()
     _
      -> do
         drawComplexControl_h this (control, option, painter, widget)
  where
    gcs option = qCast_QStyleOptionSlider =<< qstyleoption_cast "<QStyleOptionSlider*>" option
    gcg option = qCast_QStyleOptionGroupBox =<< qstyleoption_cast "<QStyleOptionGroupBox*>" option

aSsubControlRect :: ArthurStyle -> ComplexControl -> QStyleOptionComplex a -> SubControl -> QWidget b -> IO (QRect ())
aSsubControlRect this control option subControl widget
  = do
    tr <- subControlRect_h this (control, option, subControl, widget)
    adtr <- case control of
             _ | control == eCC_GroupBox
              -> do
                 group <- gcg option
                 if (not (objectIsNull group))
                  then
                   case subControl of
                    _ | subControl == eSC_GroupBoxContents
                     -> do
                        ts <- text group ()
                        if (Prelude.length ts > 0)
                         then
                          return $ adjust tr 0 (-8) 0 0
                         else
                          return $ adjust tr 0 0 0 0
                    _ | subControl == eSC_GroupBoxFrame
                     -> qrect group ()
                    _ | subControl == eSC_GroupBoxLabel
                     -> do
                        titleLeft <- cached ":res/images/title_cap_left.png"
                        titleRight <- cached ":res/images/title_cap_right.png"
                        titleStretch <- cached ":res/images/title_stretch.png"
                        fm <- fontMetrics  group ()
                        gt <- text group ()
                        fmw <- qwidth fm gt
                        let tw = fmw + 20
                            tw2 = div tw 2
                        gr <- qrect group ()
                        let grc = center gr
                            grc_x = x grc
                        tlw <- qwidth titleLeft ()
                        trw <- qwidth titleRight ()
                        tsh <- qheight titleStretch ()
                        return $ rect (grc_x - tw2 + tlw) 0 (tw - tlw - trw) tsh
                    _
                     -> return tr
                  else
                   return tr 
             _
              -> return tr

    case control of
     _ | (control == eCC_Slider) && (subControl == eSC_SliderHandle)
      -> do
         w <- qCast_QSlider widget
         ortn <- orientation w ()
         if (ortn == eHorizontal)
          then
           let atrsw = setWidth adtr 13
               atrsh = setHeight atrsw 27
           in rectq atrsh
          else
           let atrsw = setWidth adtr 27
               atrsh = setHeight atrsw 13
           in rectq atrsh
     _ | (control == eCC_Slider) && (subControl == eSC_SliderGroove)
      -> do
         w <- qCast_QSlider widget
         ortn <- orientation w ()
         if (ortn == eHorizontal)
          then
           let atrsh = setHeight adtr 9
               atrmt = moveTop atrsh ((div 27 2) - (div 9 2))
           in rectq atrmt
          else
           let atrsw = setWidth adtr 9
               atrml = moveLeft atrsw ((div 27 2) - (div 9 2))
           in rectq atrml
     _
      -> do
         rectq adtr
  where
    gcg option = qCast_QStyleOptionGroupBox =<< qstyleoption_cast "<QStyleOptionGroupBox*>" option

aSsizeFromContents :: ArthurStyle -> ContentsType -> QStyleOption a -> QSize () -> QWidget a -> IO (QSize ())
aSsizeFromContents this typ option sz widget
  = do
    tszw <- qwidth sz ()
    tszh <- qheight sz ()
    let tsz = size tszw tszh
    newSize <- sizeFromContents_h this (typ, option, tsz, widget)
    let ns_x = width newSize
        ns_y = height newSize
    case typ of
     _ | typ == eCT_RadioButton
      -> qSize ((ns_x + 20), ns_y)
     _ | typ == eCT_PushButton
      -> do
         pushButton <- qCast_QPushButton widget
         ad <- autoDefault pushButton ()
         if (ad)
          then
           qSize (ns_x, 29::Int)
          else
           qSize (ns_x, 26::Int)
     _ | typ == eCT_Slider
      -> do
         w <- qCast_QSlider widget
         ortn <- orientation w ()
         if (ortn == eHorizontal)
          then
           qSize (ns_x, 27::Int)
          else
           qSize (27::Int, ns_y)
     _
      -> qSize (ns_x, ns_y)

aSpixelMetric :: ArthurStyle -> PixelMetric -> QStyleOption a -> QWidget a -> IO Int
aSpixelMetric this pm opt widget
  = do
    if (pm == ePM_SliderLength)
     then
      return 13
     else
      pixelMetric_h this (pm, opt, widget)


aSpolish :: ArthurStyle -> QWidget a -> IO ()
aSpolish this widget
  = do
    layout <- layout widget ()
    nlo <- qObjectIsNull layout
    group <- qobject_cast "<QGroupBox*>" widget
    if ((not nlo) && (not (objectIsNull group)))
     then
      do
      gbcl <- findChildren widget "<QGroupBox*>"
      let size = Prelude.length gbcl
      if (size == 0)
       then
        do
        scl <- findChildren widget "<QSlider*>"
        let s2 = Prelude.length scl
        if (s2 == 1)
         then
          setSpacing layout (0::Int)
         else
          return ()
        setContentsMargins layout (12::Int, 12::Int, 12::Int, 12::Int)
       else
        do
        setContentsMargins layout (13::Int, 13::Int, 13::Int, 13::Int)
     else
      return ()
    pushButton <- qobject_cast "<QPushButton*>" widget
    radioButton <- qobject_cast "<QRadioButton*>" widget
    slider <- qobject_cast "<QSlider*>" widget
    if ((not (objectIsNull pushButton)) || (not (objectIsNull radioButton)) || (not (objectIsNull slider)))
     then
      setAttribute widget eWA_Hover
     else
      return ()
    window <- isWindow widget ()
    if (window)
     then
      do
      pal <- palette widget ()
      c <- qColor (241::Int, 241::Int, 241::Int)
      setColor pal (eBackground, c)
      setPalette widget pal
     else
      return ()

aSunpolish :: ArthurStyle -> QWidget a -> IO ()
aSunpolish this widget
 = do
    pushButton <- qobject_cast "<QPushButton*>" widget
    radioButton <- qobject_cast "<QRadioButton*>" widget
    slider <- qobject_cast "<Slider*>" widget
    if ((not (objectIsNull pushButton)) || (not (objectIsNull radioButton)) || (not (objectIsNull slider)))
     then
      do
      setAttribute widget (eWA_Hover, False)
     else
      return ()

polish2 :: ArthurStyle -> QPalette a -> IO ()
polish2 this palette
  = do
    c <- qColor (241::Int, 241::Int, 241::Int)
    setColor palette (eBackground, c)
