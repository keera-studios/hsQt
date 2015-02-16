{-# OPTIONS -fglasgow-exts #-}
-----------------------------------------------------------------------------
{-| Module    : Frame.hs
    Copyright : (c) David Harley 2010
    Project   : qtHaskell
    Version   : 1.1.4
    Modified  : 2010-09-02 17:02:13
    
    Warning   : this file is machine generated - do not modify.
--}
-----------------------------------------------------------------------------

module Qt.Arthur.Frame (
 ArthurFrame, ArthurWidget, CArthurWidget, arthurFrame, arthurFrame_widget
 , arthurFrame_setPaint
 , AWInherits(..)
 , arthurFrame_use_opengl, arthurFrame_mod_use_opengl, arthurFrame_prefer_image
 , arthurFrame_enableOpenGL
 , arthurFrame_setDescriptionEnabled, arthurFrame_loadDescription
 , arthurFrame_loadSourceFile, arthurFrame_showSource
 ) where

import Foreign.C.Types
import Qtc.Enums.Classes.Core
import Qth.ClassTypes.Core
import Qth.Core
import Data.IORef
import Qtc.Classes.Base
import Qtc.Classes.Qccs
import Qtc.Classes.Qccs_h
import Qtc.Classes.Core
import Qtc.Classes.Gui
import Qtc.Classes.Gui_h
import Qtc.Classes.Opengl
import Qtc.Classes.Opengl_h
import Qtc.Enums.Base
import Qtc.Core.Base
import Qtc.Gui.Base
import Qtc.ClassTypes.Core
import Qtc.ClassTypes.Gui
import Qtc.ClassTypes.Opengl
import Qtc.Enums.Core.Qt
import Qtc.Core.QCoreApplication
import Qtc.Core.QPoint
import Qtc.Core.QRect
import Qtc.Core.QRectF
import Qtc.Core.QSizeF
import Qtc.Core.QSize
import Qtc.Gui.QColor
import Qtc.Gui.QBrush
import Qtc.Gui.QPen
import Qtc.Gui.QWidget
import Qtc.Gui.QWidget_h
import Qtc.Gui.QPainter
import Qtc.Enums.Gui.QPainter
import Qtc.Gui.QPainterPath
import Qtc.Gui.QPixmap
import Qtc.Gui.QImage
import Qtc.Enums.Gui.QImage
import Qtc.Gui.QResizeEvent
import Qtc.Gui.QPaintEvent
import Qtc.Gui.QPalette
import Qtc.Enums.Gui.QPalette
import Qtc.Enums.Opengl.QGL
import Qtc.Opengl.QGLWidget
import Qtc.Opengl.QGLWidget_h
import Qtc.Opengl.QGLFormat
import Qtc.Core.QFile
import Qtc.Core.QIODevice
import Qtc.Enums.Core.QIODevice
import Qtc.Gui.QTextDocument
import Qtc.Gui.QAbstractTextDocumentLayout
import Qtc.Gui.QLinearGradient
import Qtc.Gui.QGradient
import Qtc.Gui.QRegion
import Qtc.Gui.QTextEdit
import Qtc.Enums.Gui.QTextEdit
import Qtc.Gui.QTextBrowser
import Data.List

type ArthurGLWidget = QGLWidgetSc (CArthurGLWidget)
data CArthurGLWidget = CArthurGLWidget

arthurGLWidget :: QWidget a -> IO (ArthurGLWidget)
arthurGLWidget parent
  = do
    tf <- qGLFormat_nf fSampleBuffers 
    glw <- qGLWidget (tf, parent)
    setHandler glw "paintEvent(QPaintEvent*)" $ arthurGLWidget_paintEvent
    return $ objectCast glw

arthurGLWidget_disableAutoBufferSwap :: ArthurGLWidget -> IO ()
arthurGLWidget_disableAutoBufferSwap glw
  = setAutoBufferSwap glw False

arthurGLWidget_paintEvent :: ArthurGLWidget -> QPaintEvent () -> IO ()
arthurGLWidget_paintEvent glw pev
  = do
    pw <- parentWidget glw ()
    update pw ()

data AWInherits = AWInherits__PathDeformRenderer | AWInherits__PathStrokeRenderer | AWInherits__CompositionRenderer | Unspecified deriving Eq

type ArthurWidget = QWidgetSc (CArthurWidget)
data CArthurWidget = CArthurWidget

arthurWidget :: QWidget a -> IO (ArthurWidget)
arthurWidget parent = qSubClass (qWidget parent)

data ArthurFrame
  = ArthurFrame
    {arthurFrame_widget :: ArthurWidget,
     arthurFrame_inherits :: AWInherits,
     af_paint_io :: IORef (ArthurFrame -> QPainter () -> RectF -> IO ()),
     af_glw_io :: IORef ArthurGLWidget,
     af_m_use_opengl_io :: IORef Bool,
     af_m_tile_io :: IORef (QPixmap ()),
     af_m_show_doc_io :: IORef Bool,
     af_m_prefer_image_io :: IORef Bool,
     af_m_document_io :: IORef (QTextDocument ()),
     af_m_sourceFileName_io :: IORef String,
     af_m_static_image_io :: IORef (QImage ())}

arthurFrame_paint :: ArthurFrame -> QPainter () -> RectF -> IO ()
arthurFrame_paint this painter clip
  = do
    paint <- readIORef $ af_paint_io this
    paint this painter clip

arthurFrame_glw :: ArthurFrame -> IO ArthurGLWidget
arthurFrame_glw this = readIORef $ af_glw_io this
arthurFrame_use_opengl :: ArthurFrame -> IO Bool
arthurFrame_use_opengl this = readIORef $ af_m_use_opengl_io this
arthurFrame_tile :: ArthurFrame -> IO (QPixmap ())
arthurFrame_tile this = readIORef $ af_m_tile_io this
arthurFrame_show_doc :: ArthurFrame -> IO Bool
arthurFrame_show_doc this = readIORef $ af_m_show_doc_io this
arthurFrame_prefer_image :: ArthurFrame -> IO Bool
arthurFrame_prefer_image this = readIORef $ af_m_prefer_image_io this
arthurFrame_document :: ArthurFrame -> IO (QTextDocument ())
arthurFrame_document this = readIORef $ af_m_document_io this
arthurFrame_sourceFileName :: ArthurFrame -> IO String
arthurFrame_sourceFileName this = readIORef $ af_m_sourceFileName_io this
arthurFrame_static_image :: ArthurFrame -> IO (QImage ())
arthurFrame_static_image this = readIORef $ af_m_static_image_io this

arthurFrame_setPaint :: ArthurFrame -> (ArthurFrame -> QPainter () -> RectF -> IO ()) -> IO ()
arthurFrame_setPaint this paint
  = modifyIORef (af_paint_io this) (\_ -> paint)

arthurFrame_mod_glw :: ArthurFrame -> ArthurGLWidget -> IO ()
arthurFrame_mod_glw this n_glw
  = modifyIORef (af_glw_io this) (\_ -> n_glw)

arthurFrame_mod_use_opengl :: ArthurFrame -> Bool -> IO ()
arthurFrame_mod_use_opengl this n_use_opengl
  = modifyIORef (af_m_use_opengl_io this) (\_ -> n_use_opengl)

arthurFrame_mod_static_image :: ArthurFrame -> QImage () -> IO ()
arthurFrame_mod_static_image this n_static_image
  = modifyIORef (af_m_static_image_io this) (\_ -> n_static_image)

arthurFrame_mod_show_doc :: ArthurFrame -> Bool -> IO ()
arthurFrame_mod_show_doc this show_doc
  = modifyIORef (af_m_show_doc_io this) (\_ -> show_doc)

arthurFrame_mod_document :: ArthurFrame -> QTextDocument () -> IO ()
arthurFrame_mod_document this text
  = modifyIORef (af_m_document_io this) (\_ -> text)

arthurFrame_mod_sourceFileName :: ArthurFrame -> String -> IO ()
arthurFrame_mod_sourceFileName this name
  = modifyIORef (af_m_sourceFileName_io this) (\_ -> name)

arthurFrame :: QWidget a -> AWInherits -> IO (ArthurFrame)
arthurFrame parent inherits 
  = do
    widget <- arthurWidget parent
    f <- qGLFormatDefaultFormat ()
    setSampleBuffers f True
    setStencil f True
    setAlpha f True
    setAlphaBufferSize f (8::Int)
    qGLFormatSetDefaultFormat f
    let sz = size 128 128
    m_tile_i <- qPixmap sz
    cw <- qColor ewhite
    fill m_tile_i cw
    pt <- qPainter m_tile_i
    cc <- qColor (230::Int, 230::Int, 230::Int)
    cb <- qBrush cc
    fillRect pt (0::Int, 0::Int, 64::Int, 64::Int, cb)
    fillRect pt (64::Int, 64::Int, 64::Int, 64::Int, cb)
    end pt ()
    paint <- newIORef arthurFrame_def_paint
    let no = objectCast objectNull
    glw <- newIORef no
    m_use_opengl <- newIORef False
    m_tile <- newIORef m_tile_i
    m_show_doc <- newIORef False
    m_prefer_image <- newIORef False
    m_document <- newIORef no
    m_sourceFileName <- newIORef ""
    m_static_image <- newIORef no
    let afi = ArthurFrame widget inherits paint glw m_use_opengl m_tile m_show_doc m_prefer_image m_document m_sourceFileName m_static_image
    setHandler widget "paintEvent(QPaintEvent*)" $ arthurFrame_paintEvent afi
    setHandler widget "resizeEvent(QResizeEvent*)" $ arthurFrame_resizeEvent afi
    return afi

arthurFrame_enableOpenGL :: ArthurFrame -> ArthurWidget -> Bool -> IO ()
arthurFrame_enableOpenGL this widget use_opengl
  = do
    arthurFrame_mod_use_opengl this use_opengl
    let widget = arthurFrame_widget this
    cglw <-  arthurFrame_glw this
    glw <- if (objectIsNull cglw)
            then
             do
             nglw <- arthurGLWidget widget
             setAutoFillBackground nglw False
             arthurGLWidget_disableAutoBufferSwap nglw
             size <- qsize widget ()
             rsze <- qResizeEvent_nf (size, size)
             qCoreApplicationPostEvent (widget, rsze)
             return nglw
            else
             return cglw
    arthurFrame_mod_glw this glw
    if (use_opengl)
     then
      qshow glw ()
     else
      hide glw ()
    update widget ()

arthurFrame_paintEvent :: ArthurFrame -> ArthurWidget -> QPaintEvent () -> IO ()
arthurFrame_paintEvent this widget pev
  = do
    painter <- qPainter_nf ()
    mpi <- arthurFrame_prefer_image this
    muo <- arthurFrame_use_opengl this 
    if (mpi && (not (muo)))
     then
      do
      msi <- arthurFrame_static_image this
      ws <- qsize widget ()
      let sw = width ws
          sh = height ws
      si_size <- if (objectIsNull msi)
                  then
                   return $ sizeNull
                  else
                   do
                   cs <- qsize msi ()
                   let csw = width cs
                       csh = height cs
                   if ((sw /= csw) || (sh /= csh))
                    then
                     return $ sizeNull
                    else
                     return cs
      csi <- if (isNull si_size)
              then
               do
               if (not (objectIsNull msi))
                then
                 qImage_delete msi
                else
                 return ()
               ncsi <- qImage (ws, eQImageFormat_RGB32)
               arthurFrame_mod_static_image this ncsi
               return ncsi
              else
               return msi
      begin painter csi
      let o = 10::Int
          z = 0::Int
      tp <- palette widget ()
      bg <- brush tp eBackground
      fillRect painter ((sw - o), z, o, o, bg)
      fillRect painter (z, (sh - o), o, o, bg)
      fillRect painter ((sw - o), (sh - o), o, o, bg)
     else
      if (muo)
       then
        do
        glw <- arthurFrame_glw this
        begin painter glw
        gw <- qwidth glw ()
        gh <- qheight glw ()
        let trf = rectF 0.0 0.0 (fromIntegral gw) (fromIntegral gh)
        tp <- palette widget ()
        tb <- backgroundRole widget ()
        gw <- qwidth glw ()
        pc <- color tp tb
        pb <- qBrush pc
        fillRect painter (trf, pb)
       else
        do
        begin painter widget
        return ()
    cr <- qrect pev ()
    setClipRect painter cr
    setRenderHint painter (eAntialiasing::RenderHint)
    r <- qrect widget ()
    let rx = x r
        ry = y r
        rr = rightq r
        rb = bottomq r
        cleft = fromIntegral $ rx + 1 :: Double
        ctop = fromIntegral $ ry + 1 :: Double
        cright = fromIntegral $ rr + 1 :: Double
        cbottom = fromIntegral $ rb + 1 :: Double
        radius2 = fromIntegral $ 8 * 2 :: Double
    clipPath <- qPainterPath ()
    qmoveTo clipPath $! ((cright - radius2), ctop)
    arcTo clipPath $! ((cright - radius2), ctop, radius2, radius2, 90::Double, (-90)::Double)
    arcTo clipPath $! ((cright - radius2), (cbottom - radius2),  radius2, radius2, 0::Double, (-90)::Double)
    arcTo clipPath $! (cleft, (cbottom - radius2), radius2, radius2, 270::Double, (-90)::Double)
    arcTo clipPath $! (cleft, ctop, radius2, radius2, 180::Double, (-90)::Double)
    closeSubpath clipPath ()
    save painter ()
    setClipPath painter $! (clipPath, eIntersectClip)
    at <- arthurFrame_tile this
    drawTiledPixmap painter (r, at)
    clip <- qboundingRect clipPath ()
    arthurFrame_paint this painter clip
    restore painter ()
    save painter ()
    msd <- arthurFrame_show_doc this
    if (msd)
     then
      arthurFrame_paintDescription this widget painter
     else
      return ()
    restore painter ()
    let level = 180::Int
    tc <- qColor (level, level, level)
    tb <- qBrush tc
    tp <- qPen (tb, 2::Double)
    setPen painter tp 
    setBrush painter eNoBrush
    drawPath painter clipPath
    mpi <- arthurFrame_prefer_image this
    muo <- arthurFrame_use_opengl this 
    if (mpi && (not $ muo))
     then
      do
      end painter ()
      begin painter widget
      tr <- qrect pev ()
      msi <- arthurFrame_static_image this
      drawImage painter (tr, msi, tr)
     else
      return ()
    let inherits = arthurFrame_inherits this
    if (muo && ((inherits == AWInherits__PathDeformRenderer) ||
                (inherits == AWInherits__PathStrokeRenderer) ||
                (inherits == AWInherits__CompositionRenderer) || msd))
     then
      do
      glw <- arthurFrame_glw this
      swapBuffers glw ()
     else
      return ()
    qPainter_delete painter
    returnGC

{-    
#ifdef QT_OPENGL_SUPPORT
        && !m_use_opengl
#endif
        ) {
        painter.end();
        painter.begin(this);
#ifdef Q_WS_QWS
        painter.drawPixmap(e->rect(), *static_image, e->rect());
#else
        painter.drawImage(e->rect(), *static_image, e->rect());
#endif
    }

#ifdef QT_OPENGL_SUPPORT
    if (m_use_opengl && (inherits("PathDeformRenderer") || inherits("PathStrokeRenderer") || inherits("CompositionRenderer") || m_show_doc))
        glw->swapBuffers();
#endif
}

-}

arthurFrame_def_paint :: ArthurFrame -> QPainter () -> RectF -> IO ()
arthurFrame_def_paint this painter clip
  = return ()

arthurFrame_resizeEvent :: ArthurFrame -> ArthurWidget -> QResizeEvent () -> IO ()
arthurFrame_resizeEvent this widget rev
  = do
    glw <- arthurFrame_glw this
    if (not $ objectIsNull glw)
     then
      do
      ws <- qsize rev ()
      let w = (width ws) - 1
          h = (height ws) - 1
      setGeometry glw ((0::Int), (0::Int), w, h)
     else
      return ()
    resizeEvent_h widget rev

arthurFrame_setDescriptionEnabled :: ArthurFrame -> ArthurWidget -> Bool -> IO ()
arthurFrame_setDescriptionEnabled this widget enabled
  = do
    m_show_doc <- arthurFrame_show_doc this
    if (m_show_doc /= enabled)
     then
      do
      arthurFrame_mod_show_doc this enabled
      emitSignal widget "setDescriptionEnabled(bool)" m_show_doc
      update widget ()
     else
      return ()
    
arthurFrame_loadDescription :: ArthurFrame -> String -> IO ()
arthurFrame_loadDescription this fileName
  = do
    textFile <- qFile fileName
    ok <- open textFile fReadOnly
    text <- if (ok)
             then
              readAll textFile ()
             else
              return $ "Unable to load resource file: " ++ fileName
    arthurFrame_setDescription this text

arthurFrame_setDescription :: ArthurFrame -> String -> IO ()
arthurFrame_setDescription this text
  = do
    m_document <- qTextDocument $ arthurFrame_widget this
    setHtml m_document text
    arthurFrame_mod_document this m_document

arthurFrame_paintDescription :: ArthurFrame -> ArthurWidget -> QPainter () -> IO ()
arthurFrame_paintDescription this widget painter
  = do
    m_document <- arthurFrame_document this
    if (objectIsNull m_document)
     then
      return ()
     else
      do
      ww <- qwidth widget ()
      wh <- qheight widget ()
      let pageWidth = max (ww - 100) 100
          pageHeight = max (wh - 100) 100
      psz <- pageSize m_document ()
      let tpw = width psz
      if (tpw /= (fromIntegral pageWidth))
       then
	do
        let nps = sizeF (fromIntegral pageWidth) (fromIntegral pageHeight)
        setPageSize m_document nps
       else
        return ()
      let textRect = rect ((div ww 2) - (div pageWidth 2)) ((div wh 2) - (div pageHeight 2)) pageWidth pageHeight
          pad = 10::Int
          clearRect = adjust textRect (-pad) (-pad) pad pad
      setPen painter eNoPen
      c1 <- qColor (0::Int, 0::Int, 0::Int, 63::Int)
      b1 <- qBrush c1
      setBrush painter b1
      let shade = 10::Int
          cR_x = x clearRect
          cR_w = width clearRect
          cR_y = y clearRect
          cR_h = height clearRect
      drawRect painter ((cR_x + cR_w + 1), (cR_y + shade), shade, (cR_h + 1))
      drawRect painter ((cR_x + shade), (cR_y + cR_h + 1), (cR_w - shade + 1), shade)
      setRenderHint painter (eAntialiasing::RenderHint, False)
      c2 <- qColor (255::Int, 255::Int, 255::Int, 220::Int)
      b2 <- qBrush c2
      setBrush painter b2
      c3 <- qColor eblack
      setPen painter c3
      drawRect painter clearRect
      trg <- qRegion textRect
      setClipRegion painter (trg, eIntersectClip)
      let tl = topLeft textRect
      qtranslate painter tl
      ctx <- qAbstractTextDocumentLayout__PaintContext
      let tR_w = width textRect
          tR_h = height textRect
          tR_wf = fromIntegral tR_w :: Double
          tR_hf = fromIntegral tR_h :: Double
      g <- qLinearGradient (0.0::Double, 0.0::Double, 0.0::Double, tR_hf)
      cb <- qColor eblack
      ct <- qColor etransparent
      setColorAt g (0.0::Double, cb)
      setColorAt g (0.9::Double, cb)
      setColorAt g (1.0::Double, ct)
      pal <- palette widget ()
      bg <- qBrush g
      setBrush pal (eText::ColorRole, bg)
      qAbstractTextDocumentLayout__PaintContext_setPalette ctx pal 
      r <- qRectF (0.0::Double, (0.0::Double), tR_wf, tR_hf)
      qAbstractTextDocumentLayout__PaintContext_setClip ctx r
      tdl <- documentLayout m_document ()
      draw tdl (painter, ctx)

arthurFrame_loadSourceFile :: ArthurFrame -> String -> IO ()
arthurFrame_loadSourceFile this name
  = do
    arthurFrame_mod_sourceFileName this name

arthurFrame_showSource :: ArthurFrame -> ArthurWidget -> IO ()
arthurFrame_showSource this widget
  = do
    tctb <- findChild widget "<QTextBrowser*>"
    tctbb <- qObjectIsNull tctb
    if (not tctbb)
     then
      return ()
     else
      do
      m_sourceFileName <- arthurFrame_sourceFileName this
      objectName <- objectName widget
      contents <- if (m_sourceFileName == "")
                   then
                    return $ "No source for widget: " ++ objectName
                   else
                    do
                    f <- qFile m_sourceFileName
                    ok <- open f fReadOnly
                    if (not ok)
                     then
                      return $ "Could not openfile: " ++ m_sourceFileName
                     else
                      readAll f ()
      let cr0 = "\n" ++ contents
          cr1 = replace_symbol [("&", "&amp;"), ("<","&lt;"), (">", "&gt;")] cr0
          cr2 = replace_color ["if", "then", "else", "case", "of", "do", "let", "=", "$", "&lt;-", "-&gt;", "++"] "brown" cr1
          cr3 = replace_num cr2
          cr4 = replace_symbol_color [":", "\\"] "brown" cr3
          cr5 = replace_color ["module", "where", "data", "type", "instance", "class"] "green" cr4
          cr6 = replace_color ["import", "qualified", "as"] "purple" cr5
          cr7 = replace_str cr6
          html = "<html><pre>" ++ (drop 1 cr7) ++ "</pre></html>"
      sourceViewer <- qTextBrowser ()
      setWindowTitle sourceViewer $ "Source: " ++ m_sourceFileName
      setParent sourceViewer (widget, fDialog)
      setAttribute sourceViewer eWA_DeleteOnClose
      setLineWrapMode sourceViewer eNoWrap
      setHtml sourceViewer html
      resize sourceViewer (600::Int, 600::Int)
      qshow sourceViewer ()

stripStr :: Int -> Char -> String -> String -> Maybe (String, String)
stripStr 0  _ _ (y:ys)
 | ((y == '(') || (y == ' ') || (y == '\n'))
  = stripStr 1 y "" ys
stripStr 0 _ _ _ = Nothing
stripStr 1 c1 p (y:ys)
 | (y == '"')
  = stripStr 2 c1 (p ++ [y]) ys
stripStr 2 c1 p (y:ys)
 | (y /= '"')
  = stripStr 2 c1 (p ++ [y]) ys
stripStr 2 c1 p (y:ys)
 | (y == '"')
  = stripStr 3 c1 (p ++ [y]) ys
stripStr 3 c1 p (y:ys)
 | (y == ')')
  = Just (([c1] ++ "<font color=red>" ++ (ns p) ++ "</font>" ++ [y]), ys)
stripStr 3 c1 p xs@(y:_)
 | (y == ' ' || y == '\n')
  = Just (([c1] ++ "<font color=red>" ++ (ns p) ++ "</font>"), xs)
stripStr _ _ _ _ = Nothing

ns :: String -> String
ns str = replace_symbol [("<font color=brown>", ""), ("<font color=green>", ""), ("<font color=purple>", ""), ("</font>", "")] str

stripNum :: Bool -> Bool -> Char -> String -> String -> Maybe (String, String)
stripNum True _ _ _ (y:ys)
 | ((y == '(') || (y == ' ') || (y == '\n'))
  = stripNum False True y "" ys
stripNum True _ _ _ _ = Nothing
stripNum False first c1 p (y:ys)
 | ((y <= '9' && y >= '0') || (y == '.') || (first && (y == '-')))
  = stripNum False False c1 (p ++ [y]) ys
stripNum False False c1 p (y:ys)
 | ((y == ')') || (y == ':'))
  = Just (([c1] ++ "<font color=red>" ++ p ++ "</font>" ++ [y]), ys)
stripNum False False c1 p xs@(y:_)
 | (y == ' ' || y == '\n')
  = Just (([c1] ++ "<font color=red>" ++ p ++ "</font>"), xs)
stripNum False False c1 p []
  = Just (([c1] ++ "<font color=red>" ++ p ++ "</font>"), [])
stripNum _ _ _ _ _ = Nothing

replace_str :: String -> String 
replace_str [] = [] 
replace_str xs@(y:ys) =
  case stripStr 0 ' ' "" xs of 
    Nothing -> y : replace_str ys 
    Just (ps, ys') -> ps ++ replace_str ys'

replace_num :: String -> String 
replace_num [] = [] 
replace_num xs@(y:ys) =
  case stripNum True False ' ' "" xs of 
    Nothing -> y : replace_num ys 
    Just (ps, ys') -> ps ++ replace_num ys'

replace :: (Eq a) => [a] -> [a] -> [a] -> [a] 
replace _ _ [] = [] 
replace old new xs@(y:ys) = 
  case stripPrefix old xs of 
    Nothing -> y : replace old new ys 
    Just ys' -> new ++ replace old new ys'

replace_symbol :: [(String, String)] -> String -> String
replace_symbol  _ [] = []
replace_symbol [] contents = contents
replace_symbol (x:xs) contents
  = replace_symbol xs $ replace (fst x) (snd x) contents

replace_symbol_color :: [String] -> String -> String -> String
replace_symbol_color  _ _ [] = []
replace_symbol_color [] _ contents = contents
replace_symbol_color (x:xs) color contents
  = replace_symbol_color xs color $ replace x ("<font color=" ++ color ++ ">" ++ x ++ "</font>") contents

replace_color :: [String] -> String ->  String -> String
replace_color kwl color contents
  = replace_color_s kwl color " " "\n" $
      replace_color_s kwl color "\n" " " $
      replace_color_s kwl color " " " " contents
  
replace_color_s :: [String] -> String -> String -> String -> String -> String
replace_color_s _ _ _ _ [] = []
replace_color_s _ "" _ _ _ = []
replace_color_s [] _ _ _  contents = contents
replace_color_s (x:xs) color pre suf contents
  = replace_color_s xs color pre suf $ replace (pre ++ x ++ suf) (pre ++ "<font color=" ++ color ++ ">" ++ x ++ "</font>" ++ suf) contents

