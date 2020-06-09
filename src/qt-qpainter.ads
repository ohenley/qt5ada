--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2019                 บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QNamespace;
package Qt.QPainter             is

type QPainterCompositionMode is (
    QPainterCompositionMode_SourceOver, QPainterCompositionMode_DestinationOver, QPainterCompositionMode_Clear, QPainterCompositionMode_Source, QPainterCompositionMode_Destination, QPainterCompositionMode_SourceIn, 
    QPainterCompositionMode_DestinationIn, QPainterCompositionMode_SourceOut, QPainterCompositionMode_DestinationOut, QPainterCompositionMode_SourceAtop, QPainterCompositionMode_DestinationAtop, 
    QPainterCompositionMode_Xor, QPainterCompositionMode_Plus, QPainterCompositionMode_Multiply, QPainterCompositionMode_Screen, QPainterCompositionMode_Overlay, QPainterCompositionMode_Darken, 
    QPainterCompositionMode_Lighten, QPainterCompositionMode_ColorDodge, QPainterCompositionMode_ColorBurn, QPainterCompositionMode_HardLight, QPainterCompositionMode_SoftLight, QPainterCompositionMode_Difference, 
    QPainterCompositionMode_Exclusion );

subtype QPainterRenderHint  is cardinal;
subtype QPainterRenderHints is cardinal;

QPainterAntialiasing            : constant QPainterRenderHint  := 16#01#;
QPainterTextAntialiasing        : constant QPainterRenderHint  := 16#02#;
QPainterSmoothPixmapTransform   : constant QPainterRenderHint  := 16#04#;
QPainterHighQualityAntialiasing : constant QPainterRenderHint  := 16#08#;

function QPainter_create return  QPainterH;    
pragma Import(C,QPainter_create,"QPainter_create");

procedure QPainter_destroy(handle: not null  QPainterH);   
pragma Import(C,QPainter_destroy,"QPainter_destroy");

function QPainter_create2(p1: QPaintDeviceH) return  QPainterH;
pragma Import(C,QPainter_create2,"QPainter_create2");

function QPainter_create3(parent: QWidgetH) return  QPainterH;
pragma Import(C,QPainter_create3,"QPainter_create3");

function QPainter_create4(parent: QPixmapH) return  QPainterH;
pragma Import(C,QPainter_create4,"QPainter_create4");

function QPainter_device(handle: not null  QPainterH) return  QPaintDeviceH;   
pragma Import(C,QPainter_device,"QPainter_device");

function QPainter_begin(handle: not null  QPainterH; p1: QPaintDeviceH) return  Boolean;   
pragma Import(C,QPainter_begin,"QPainter_begin");

function QPainter_end(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_end,"QPainter_end");

function QPainter_isActive(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_isActive,"QPainter_isActive");

procedure QPainter_initFrom(handle: not null  QPainterH; widget: QWidgetH);   
pragma Import(C,QPainter_initFrom,"QPainter_initFrom");

procedure QPainter_setCompositionMode(handle: not null  QPainterH; mode: QPainterCompositionMode);   
pragma Import(C,QPainter_setCompositionMode,"QPainter_setCompositionMode");

function QPainter_compositionMode(handle: not null  QPainterH) return  QPainterCompositionMode;   
pragma Import(C,QPainter_compositionMode,"QPainter_compositionMode");

function QPainter_font(handle: not null  QPainterH) return  QFontH;   
pragma Import(C,QPainter_font,"QPainter_font");

procedure QPainter_setFont(handle: not null  QPainterH; f: QFontH);   
pragma Import(C,QPainter_setFont,"QPainter_setFont");

function  QPainter_fontMetrics(handle: not null  QPainterH) return QFontMetricsH;
pragma Import(C,QPainter_fontMetrics,"QPainter_fontMetrics");

function  QPainter_fontInfo(handle: not null  QPainterH) return QFontInfoH;
pragma Import(C,QPainter_fontInfo,"QPainter_fontInfo");

procedure QPainter_setPen(handle: not null  QPainterH; color: QColorH);    
pragma Import(C,QPainter_setPen,"QPainter_setPen");

procedure QPainter_setPen2(handle: not null  QPainterH; pen: QPenH);
pragma Import(C,QPainter_setPen2,"QPainter_setPen2");

procedure QPainter_setPen3(handle: not null  QPainterH; style: QtPenStyle);
pragma Import(C,QPainter_setPen3,"QPainter_setPen3");

function QPainter_pen(handle: not null  QPainterH) return  QPenH;   
pragma Import(C,QPainter_pen,"QPainter_pen");

procedure QPainter_setBrush(handle: not null  QPainterH; brush: QBrushH);    
pragma Import(C,QPainter_setBrush,"QPainter_setBrush");

procedure QPainter_setBrush2(handle: not null  QPainterH; style: QtBrushStyle);
pragma Import(C,QPainter_setBrush2,"QPainter_setBrush2");

function QPainter_brush(handle: not null  QPainterH) return  QBrushH;   
pragma Import(C,QPainter_brush,"QPainter_brush");

procedure QPainter_setBackgroundMode(handle: not null  QPainterH; mode: QtBGMode);   
pragma Import(C,QPainter_setBackgroundMode,"QPainter_setBackgroundMode");

function QPainter_backgroundMode(handle: not null  QPainterH) return  QtBGMode;   
pragma Import(C,QPainter_backgroundMode,"QPainter_backgroundMode");

function  QPainter_brushOrigin(handle: not null  QPainterH) return QPointH;
pragma Import(C,QPainter_brushOrigin,"QPainter_brushOrigin");

procedure QPainter_setBrushOrigin(handle: not null  QPainterH; x: Integer; y: Integer);    
pragma Import(C,QPainter_setBrushOrigin,"QPainter_setBrushOrigin");

procedure QPainter_setBrushOrigin2(handle: not null  QPainterH; p1: QPointH);
pragma Import(C,QPainter_setBrushOrigin2,"QPainter_setBrushOrigin2");

procedure QPainter_setBrushOrigin3(handle: not null  QPainterH; p1: QPointFH);
pragma Import(C,QPainter_setBrushOrigin3,"QPainter_setBrushOrigin3");

procedure QPainter_setBackground(handle: not null  QPainterH; bg: QBrushH);   
pragma Import(C,QPainter_setBackground,"QPainter_setBackground");

function QPainter_background(handle: not null  QPainterH) return  QBrushH;   
pragma Import(C,QPainter_background,"QPainter_background");

function QPainter_opacity(handle: not null  QPainterH) return  Double;   
pragma Import(C,QPainter_opacity,"QPainter_opacity");

procedure QPainter_setOpacity(handle: not null  QPainterH; opacity: Double);   
pragma Import(C,QPainter_setOpacity,"QPainter_setOpacity");

function  QPainter_clipRegion(handle: not null  QPainterH) return QRegionH;
pragma Import(C,QPainter_clipRegion,"QPainter_clipRegion");

function  QPainter_clipPath(handle: not null  QPainterH) return QPainterPathH;
pragma Import(C,QPainter_clipPath,"QPainter_clipPath");

procedure QPainter_setClipRect(handle: not null  QPainterH; p1: QRectFH; op: QtClipOperation := QtReplaceClip);    
pragma Import(C,QPainter_setClipRect,"QPainter_setClipRect");

procedure QPainter_setClipRect2(handle: not null  QPainterH; p1: QRectH; op: QtClipOperation := QtReplaceClip);
pragma Import(C,QPainter_setClipRect2,"QPainter_setClipRect2");

procedure QPainter_setClipRect3(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; op: QtClipOperation := QtReplaceClip);
pragma Import(C,QPainter_setClipRect3,"QPainter_setClipRect3");

procedure QPainter_setClipRegion(handle: not null  QPainterH; p1: QRegionH; op: QtClipOperation := QtReplaceClip);   
pragma Import(C,QPainter_setClipRegion,"QPainter_setClipRegion");

procedure QPainter_setClipPath(handle: not null  QPainterH; path: QPainterPathH; op: QtClipOperation := QtReplaceClip);   
pragma Import(C,QPainter_setClipPath,"QPainter_setClipPath");

procedure QPainter_setClipping(handle: not null  QPainterH; enable: Boolean);   
pragma Import(C,QPainter_setClipping,"QPainter_setClipping");

function QPainter_hasClipping(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_hasClipping,"QPainter_hasClipping");

procedure QPainter_save(handle: not null  QPainterH);   
pragma Import(C,QPainter_save,"QPainter_save");

procedure QPainter_restore(handle: not null  QPainterH);   
pragma Import(C,QPainter_restore,"QPainter_restore");

procedure QPainter_setMatrix(handle: not null  QPainterH; matrix: QMatrixH; combine: Boolean := False);   
pragma Import(C,QPainter_setMatrix,"QPainter_setMatrix");

function QPainter_matrix(handle: not null  QPainterH) return  QMatrixH;   
pragma Import(C,QPainter_matrix,"QPainter_matrix");

function QPainter_deviceMatrix(handle: not null  QPainterH) return  QMatrixH;   
pragma Import(C,QPainter_deviceMatrix,"QPainter_deviceMatrix");

procedure QPainter_resetMatrix(handle: not null  QPainterH);   
pragma Import(C,QPainter_resetMatrix,"QPainter_resetMatrix");

procedure QPainter_setTransform(handle: not null  QPainterH; transform: QTransformH; combine: Boolean := False);   
pragma Import(C,QPainter_setTransform,"QPainter_setTransform");

function QPainter_transform(handle: not null  QPainterH) return  QTransformH;   
pragma Import(C,QPainter_transform,"QPainter_transform");

function QPainter_deviceTransform(handle: not null  QPainterH) return  QTransformH;   
pragma Import(C,QPainter_deviceTransform,"QPainter_deviceTransform");

procedure QPainter_resetTransform(handle: not null  QPainterH);   
pragma Import(C,QPainter_resetTransform,"QPainter_resetTransform");

procedure QPainter_setWorldMatrix(handle: not null  QPainterH; matrix: QMatrixH; combine: Boolean := False);   
pragma Import(C,QPainter_setWorldMatrix,"QPainter_setWorldMatrix");

function QPainter_worldMatrix(handle: not null  QPainterH) return  QMatrixH;   
pragma Import(C,QPainter_worldMatrix,"QPainter_worldMatrix");

procedure QPainter_setWorldTransform(handle: not null  QPainterH; matrix: QTransformH; combine: Boolean := False);   
pragma Import(C,QPainter_setWorldTransform,"QPainter_setWorldTransform");

function QPainter_worldTransform(handle: not null  QPainterH) return  QTransformH;   
pragma Import(C,QPainter_worldTransform,"QPainter_worldTransform");

function  QPainter_combinedMatrix(handle: not null  QPainterH) return QMatrixH;
pragma Import(C,QPainter_combinedMatrix,"QPainter_combinedMatrix");

function  QPainter_combinedTransform(handle: not null  QPainterH) return QTransformH;
pragma Import(C,QPainter_combinedTransform,"QPainter_combinedTransform");

procedure QPainter_setMatrixEnabled(handle: not null  QPainterH; enabled: Boolean);   
pragma Import(C,QPainter_setMatrixEnabled,"QPainter_setMatrixEnabled");

function QPainter_matrixEnabled(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_matrixEnabled,"QPainter_matrixEnabled");

procedure QPainter_setWorldMatrixEnabled(handle: not null  QPainterH; enabled: Boolean);   
pragma Import(C,QPainter_setWorldMatrixEnabled,"QPainter_setWorldMatrixEnabled");

function QPainter_worldMatrixEnabled(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_worldMatrixEnabled,"QPainter_worldMatrixEnabled");

procedure QPainter_scale(handle: not null  QPainterH; sx: Double; sy: Double);   
pragma Import(C,QPainter_scale,"QPainter_scale");

procedure QPainter_shear(handle: not null  QPainterH; sh: Double; sv: Double);   
pragma Import(C,QPainter_shear,"QPainter_shear");

procedure QPainter_rotate(handle: not null  QPainterH; a: Double);   
pragma Import(C,QPainter_rotate,"QPainter_rotate");

procedure QPainter_translate(handle: not null  QPainterH; offset: QPointFH);    
pragma Import(C,QPainter_translate,"QPainter_translate");

procedure QPainter_translate2(handle: not null  QPainterH; offset: QPointH);
pragma Import(C,QPainter_translate2,"QPainter_translate2");

procedure QPainter_translate3(handle: not null  QPainterH; dx: Double; dy: Double);
pragma Import(C,QPainter_translate3,"QPainter_translate3");

function  QPainter_window(handle: not null  QPainterH) return QRectH;
pragma Import(C,QPainter_window,"QPainter_window");

procedure QPainter_setWindow(handle: not null  QPainterH; window: QRectH);    
pragma Import(C,QPainter_setWindow,"QPainter_setWindow");

procedure QPainter_setWindow2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QPainter_setWindow2,"QPainter_setWindow2");

function  QPainter_viewport(handle: not null  QPainterH) return QRectH;
pragma Import(C,QPainter_viewport,"QPainter_viewport");

procedure QPainter_setViewport(handle: not null  QPainterH; viewport: QRectH);    
pragma Import(C,QPainter_setViewport,"QPainter_setViewport");

procedure QPainter_setViewport2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QPainter_setViewport2,"QPainter_setViewport2");

procedure QPainter_setViewTransformEnabled(handle: not null  QPainterH; enable: Boolean);   
pragma Import(C,QPainter_setViewTransformEnabled,"QPainter_setViewTransformEnabled");

function QPainter_viewTransformEnabled(handle: not null  QPainterH) return  Boolean;   
pragma Import(C,QPainter_viewTransformEnabled,"QPainter_viewTransformEnabled");

procedure QPainter_strokePath(handle: not null  QPainterH; path: QPainterPathH; pen: QPenH);   
pragma Import(C,QPainter_strokePath,"QPainter_strokePath");

procedure QPainter_fillPath(handle: not null  QPainterH; path: QPainterPathH; brush: QBrushH);   
pragma Import(C,QPainter_fillPath,"QPainter_fillPath");

procedure QPainter_drawPath(handle: not null  QPainterH; path: QPainterPathH);   
pragma Import(C,QPainter_drawPath,"QPainter_drawPath");

procedure QPainter_drawPoint(handle: not null  QPainterH; pt: QPointFH);    
pragma Import(C,QPainter_drawPoint,"QPainter_drawPoint");

procedure QPainter_drawPoint2(handle: not null  QPainterH; p: QPointH);
pragma Import(C,QPainter_drawPoint2,"QPainter_drawPoint2");

procedure QPainter_drawPoint3(handle: not null  QPainterH; x: Integer; y: Integer);
pragma Import(C,QPainter_drawPoint3,"QPainter_drawPoint3");

procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPointFH; pointCount: Integer);    
pragma Import(C,QPainter_drawPoints,"QPainter_drawPoints");

procedure QPainter_drawPoints2(handle: not null  QPainterH; points: QPolygonFH);
pragma Import(C,QPainter_drawPoints2,"QPainter_drawPoints2");

procedure QPainter_drawPoints3(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
pragma Import(C,QPainter_drawPoints3,"QPainter_drawPoints3");

procedure QPainter_drawPoints4(handle: not null  QPainterH; points: QPolygonH);
pragma Import(C,QPainter_drawPoints4,"QPainter_drawPoints4");

procedure QPainter_drawLine(handle: not null  QPainterH; line: QLineFH);    
pragma Import(C,QPainter_drawLine,"QPainter_drawLine");

procedure QPainter_drawLine2(handle: not null  QPainterH; line: QLineH);
pragma Import(C,QPainter_drawLine2,"QPainter_drawLine2");

procedure QPainter_drawLine3(handle: not null  QPainterH; x1: Integer; y1: Integer; x2: Integer; y2: Integer);
pragma Import(C,QPainter_drawLine3,"QPainter_drawLine3");

procedure QPainter_drawLine4(handle: not null  QPainterH; p1: QPointH; p2: QPointH);
pragma Import(C,QPainter_drawLine4,"QPainter_drawLine4");

procedure QPainter_drawLine5(handle: not null  QPainterH; p1: QPointFH; p2: QPointFH);
pragma Import(C,QPainter_drawLine5,"QPainter_drawLine5");

procedure QPainter_drawLines(handle: not null  QPainterH; lines: QLineFH; lineCount: Integer);    
pragma Import(C,QPainter_drawLines,"QPainter_drawLines");

procedure QPainter_drawLines2(handle: not null  QPainterH; pointPairs: QPointFH; lineCount: Integer);
pragma Import(C,QPainter_drawLines2,"QPainter_drawLines2");

procedure QPainter_drawLines3(handle: not null  QPainterH; lines: QLineH; lineCount: Integer);
pragma Import(C,QPainter_drawLines3,"QPainter_drawLines3");

procedure QPainter_drawLines4(handle: not null  QPainterH; pointPairs: QPointH; lineCount: Integer);
pragma Import(C,QPainter_drawLines4,"QPainter_drawLines4");

procedure QPainter_drawRect(handle: not null  QPainterH; rect: QRectFH);    
pragma Import(C,QPainter_drawRect,"QPainter_drawRect");

procedure QPainter_drawRect2(handle: not null  QPainterH; x1: Integer; y1: Integer; w: Integer; h: Integer);
pragma Import(C,QPainter_drawRect2,"QPainter_drawRect2");

procedure QPainter_drawRect3(handle: not null  QPainterH; rect: QRectH);
pragma Import(C,QPainter_drawRect3,"QPainter_drawRect3");

procedure QPainter_drawRects(handle: not null  QPainterH; rects: QRectFH; rectCount: Integer);    
pragma Import(C,QPainter_drawRects,"QPainter_drawRects");

procedure QPainter_drawRects2(handle: not null  QPainterH; rects: QRectH; rectCount: Integer);
pragma Import(C,QPainter_drawRects2,"QPainter_drawRects2");

procedure QPainter_drawEllipse(handle: not null  QPainterH; r: QRectFH);    
pragma Import(C,QPainter_drawEllipse,"QPainter_drawEllipse");

procedure QPainter_drawEllipse2(handle: not null  QPainterH; r: QRectH);
pragma Import(C,QPainter_drawEllipse2,"QPainter_drawEllipse2");

procedure QPainter_drawEllipse3(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QPainter_drawEllipse3,"QPainter_drawEllipse3");

procedure QPainter_drawPolyline(handle: not null  QPainterH; points: QPointFH; pointCount: Integer);    
pragma Import(C,QPainter_drawPolyline,"QPainter_drawPolyline");

procedure QPainter_drawPolyline2(handle: not null  QPainterH; polyline: QPolygonFH);
pragma Import(C,QPainter_drawPolyline2,"QPainter_drawPolyline2");

procedure QPainter_drawPolyline3(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
pragma Import(C,QPainter_drawPolyline3,"QPainter_drawPolyline3");

procedure QPainter_drawPolyline4(handle: not null  QPainterH; polygon: QPolygonH);
pragma Import(C,QPainter_drawPolyline4,"QPainter_drawPolyline4");

procedure QPainter_drawPolygon(handle: not null  QPainterH; points: QPointFH; pointCount: Integer; fillRule: QtFillRule := QtOddEvenFill);    
pragma Import(C,QPainter_drawPolygon,"QPainter_drawPolygon");

procedure QPainter_drawPolygon2(handle: not null  QPainterH; polygon: QPolygonFH; fillRule: QtFillRule := QtOddEvenFill);
pragma Import(C,QPainter_drawPolygon2,"QPainter_drawPolygon2");

procedure QPainter_drawPolygon3(handle: not null  QPainterH; points: QPointH; pointCount: Integer; fillRule: QtFillRule := QtOddEvenFill);
pragma Import(C,QPainter_drawPolygon3,"QPainter_drawPolygon3");

procedure QPainter_drawPolygon4(handle: not null  QPainterH; polygon: QPolygonH; fillRule: QtFillRule := QtOddEvenFill);
pragma Import(C,QPainter_drawPolygon4,"QPainter_drawPolygon4");

procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; points: QPointFH; pointCount: Integer);    
pragma Import(C,QPainter_drawConvexPolygon,"QPainter_drawConvexPolygon");

procedure QPainter_drawConvexPolygon2(handle: not null  QPainterH; polygon: QPolygonFH);
pragma Import(C,QPainter_drawConvexPolygon2,"QPainter_drawConvexPolygon2");

procedure QPainter_drawConvexPolygon3(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
pragma Import(C,QPainter_drawConvexPolygon3,"QPainter_drawConvexPolygon3");

procedure QPainter_drawConvexPolygon4(handle: not null  QPainterH; polygon: QPolygonH);
pragma Import(C,QPainter_drawConvexPolygon4,"QPainter_drawConvexPolygon4");

procedure QPainter_drawArc(handle: not null  QPainterH; rect: QRectFH; a: Integer; alen: Integer);    
pragma Import(C,QPainter_drawArc,"QPainter_drawArc");

procedure QPainter_drawArc2(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawArc2,"QPainter_drawArc2");

procedure QPainter_drawArc3(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawArc3,"QPainter_drawArc3");

procedure QPainter_drawPie(handle: not null  QPainterH; rect: QRectFH; a: Integer; alen: Integer);    
pragma Import(C,QPainter_drawPie,"QPainter_drawPie");

procedure QPainter_drawPie2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawPie2,"QPainter_drawPie2");

procedure QPainter_drawPie3(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawPie3,"QPainter_drawPie3");

procedure QPainter_drawChord(handle: not null  QPainterH; rect: QRectFH; a: Integer; alen: Integer);    
pragma Import(C,QPainter_drawChord,"QPainter_drawChord");

procedure QPainter_drawChord2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawChord2,"QPainter_drawChord2");

procedure QPainter_drawChord3(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
pragma Import(C,QPainter_drawChord3,"QPainter_drawChord3");

procedure QPainter_drawRoundRect(handle: not null  QPainterH; r: QRectFH; xround: Integer := 25; yround: Integer := 25);    
pragma Import(C,QPainter_drawRoundRect,"QPainter_drawRoundRect");

procedure QPainter_drawRoundRect2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: Integer := 25; p6: Integer := 25);
pragma Import(C,QPainter_drawRoundRect2,"QPainter_drawRoundRect2");

procedure QPainter_drawRoundRect3(handle: not null  QPainterH; r: QRectH; xround: Integer := 25; yround: Integer := 25);
pragma Import(C,QPainter_drawRoundRect3,"QPainter_drawRoundRect3");

procedure QPainter_drawTiledPixmap(handle: not null  QPainterH; rect: QRectFH; pm: QPixmapH; offset: QPointFH := null);    
pragma Import(C,QPainter_drawTiledPixmap,"QPainter_drawTiledPixmap");

procedure QPainter_drawTiledPixmap2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QPixmapH; sx: Integer := 0; sy: Integer := 0);
pragma Import(C,QPainter_drawTiledPixmap2,"QPainter_drawTiledPixmap2");

procedure QPainter_drawTiledPixmap3(handle: not null  QPainterH; p1: QRectH; p2: QPixmapH; p3: QPointH := null);
pragma Import(C,QPainter_drawTiledPixmap3,"QPainter_drawTiledPixmap3");

procedure QPainter_drawPicture(handle: not null  QPainterH; p: QPointFH; picture: QPictureH);    
pragma Import(C,QPainter_drawPicture,"QPainter_drawPicture");

procedure QPainter_drawPicture2(handle: not null  QPainterH; x: Integer; y: Integer; picture: QPictureH);
pragma Import(C,QPainter_drawPicture2,"QPainter_drawPicture2");

procedure QPainter_drawPicture3(handle: not null  QPainterH; p: QPointH; picture: QPictureH);
pragma Import(C,QPainter_drawPicture3,"QPainter_drawPicture3");

procedure QPainter_drawPixmap(handle: not null  QPainterH; targetRect: QRectFH; pixmap: QPixmapH; sourceRect: QRectFH);    
pragma Import(C,QPainter_drawPixmap,"QPainter_drawPixmap");

procedure QPainter_drawPixmap2(handle: not null  QPainterH; targetRect: QRectH; pixmap: QPixmapH; sourceRect: QRectH);
pragma Import(C,QPainter_drawPixmap2,"QPainter_drawPixmap2");

procedure QPainter_drawPixmap3(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer);
pragma Import(C,QPainter_drawPixmap3,"QPainter_drawPixmap3");

procedure QPainter_drawPixmap4(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer);
pragma Import(C,QPainter_drawPixmap4,"QPainter_drawPixmap4");

procedure QPainter_drawPixmap5(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH; sr: QRectFH);
pragma Import(C,QPainter_drawPixmap5,"QPainter_drawPixmap5");

procedure QPainter_drawPixmap6(handle: not null  QPainterH; p: QPointH; pm: QPixmapH; sr: QRectH);
pragma Import(C,QPainter_drawPixmap6,"QPainter_drawPixmap6");

procedure QPainter_drawPixmap7(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH);
pragma Import(C,QPainter_drawPixmap7,"QPainter_drawPixmap7");

procedure QPainter_drawPixmap8(handle: not null  QPainterH; p: QPointH; pm: QPixmapH);
pragma Import(C,QPainter_drawPixmap8,"QPainter_drawPixmap8");

procedure QPainter_drawPixmap9(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH);
pragma Import(C,QPainter_drawPixmap9,"QPainter_drawPixmap9");

procedure QPainter_drawPixmap10(handle: not null  QPainterH; r: QRectH; pm: QPixmapH);
pragma Import(C,QPainter_drawPixmap10,"QPainter_drawPixmap10");

procedure QPainter_drawPixmap11(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH);
pragma Import(C,QPainter_drawPixmap11,"QPainter_drawPixmap11");

procedure QPainter_drawImage(handle: not null  QPainterH; targetRect: QRectFH; image: QImageH; sourceRect: QRectFH; flags: QtImageConversionFlags := QtAutoColor);    
pragma Import(C,QPainter_drawImage,"QPainter_drawImage");

procedure QPainter_drawImage2(handle: not null  QPainterH; targetRect: QRectH; image: QImageH; sourceRect: QRectH; flags: QtImageConversionFlags := QtAutoColor);
pragma Import(C,QPainter_drawImage2,"QPainter_drawImage2");

procedure QPainter_drawImage3(handle: not null  QPainterH; p: QPointFH; image: QImageH; sr: QRectFH; flags: QtImageConversionFlags := QtAutoColor);
pragma Import(C,QPainter_drawImage3,"QPainter_drawImage3");

procedure QPainter_drawImage4(handle: not null  QPainterH; p: QPointH; image: QImageH; sr: QRectH; flags: QtImageConversionFlags := QtAutoColor);
pragma Import(C,QPainter_drawImage4,"QPainter_drawImage4");

procedure QPainter_drawImage5(handle: not null  QPainterH; r: QRectFH; image: QImageH);
pragma Import(C,QPainter_drawImage5,"QPainter_drawImage5");

procedure QPainter_drawImage6(handle: not null  QPainterH; r: QRectH; image: QImageH);
pragma Import(C,QPainter_drawImage6,"QPainter_drawImage6");

procedure QPainter_drawImage7(handle: not null  QPainterH; p: QPointFH; image: QImageH);
pragma Import(C,QPainter_drawImage7,"QPainter_drawImage7");

procedure QPainter_drawImage8(handle: not null  QPainterH; p: QPointH; image: QImageH);
pragma Import(C,QPainter_drawImage8,"QPainter_drawImage8");

procedure QPainter_drawImage9(handle: not null  QPainterH; x: Integer; y: Integer; image: QImageH; sx: Integer := 0; sy: Integer := 0; sw: Integer := -1; sh: Integer := -1; flags: QtImageConversionFlags := QtAutoColor);
pragma Import(C,QPainter_drawImage9,"QPainter_drawImage9");

procedure QPainter_setLayoutDirection(handle: not null  QPainterH; direction: QtLayoutDirection);   
pragma Import(C,QPainter_setLayoutDirection,"QPainter_setLayoutDirection");

function QPainter_layoutDirection(handle: not null  QPainterH) return  QtLayoutDirection;   
pragma Import(C,QPainter_layoutDirection,"QPainter_layoutDirection");

procedure QPainter_drawText(handle: not null  QPainterH; p: QPointFH; s: QStringH);    
pragma Import(C,QPainter_drawText,"QPainter_drawText");

procedure QPainter_drawText2(handle: not null  QPainterH; p: QPointH; s: QStringH);
pragma Import(C,QPainter_drawText2,"QPainter_drawText2");

procedure QPainter_drawText3(handle: not null  QPainterH; x: Integer; y: Integer; s: QStringH);
pragma Import(C,QPainter_drawText3,"QPainter_drawText3");

procedure QPainter_drawText4(handle: not null  QPainterH; r: QRectFH; flags: Integer; text: QStringH; br: QRectFH := null);
pragma Import(C,QPainter_drawText4,"QPainter_drawText4");

procedure QPainter_drawText5(handle: not null  QPainterH; r: QRectH; flags: Integer; text: QStringH; br: QRectH := null);
pragma Import(C,QPainter_drawText5,"QPainter_drawText5");

procedure QPainter_drawText6(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; br: QRectH := null);
pragma Import(C,QPainter_drawText6,"QPainter_drawText6");

procedure QPainter_drawText7(handle: not null  QPainterH; r: QRectFH; text: QStringH; o: QTextOptionH := null);
pragma Import(C,QPainter_drawText7,"QPainter_drawText7");

function  QPainter_boundingRect(handle: not null  QPainterH; rect: QRectFH; flags: Integer; text: QStringH) return QRectFH;
pragma Import(C,QPainter_boundingRect,"QPainter_boundingRect");

function  QPainter_boundingRect2(handle: not null  QPainterH; rect: QRectH; flags: Integer; text: QStringH) return QRectH;
pragma Import(C,QPainter_boundingRect2,"QPainter_boundingRect2");

function  QPainter_boundingRect3(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH) return QRectH;
pragma Import(C,QPainter_boundingRect3,"QPainter_boundingRect3");

function  QPainter_boundingRect4(handle: not null  QPainterH; rect: QRectFH; text: QStringH; o: QTextOptionH := null) return QRectFH;
pragma Import(C,QPainter_boundingRect4,"QPainter_boundingRect4");

procedure QPainter_fillRect(handle: not null  QPainterH; p1: QRectFH; p2: QBrushH);    
pragma Import(C,QPainter_fillRect,"QPainter_fillRect");

procedure QPainter_fillRect2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QBrushH);
pragma Import(C,QPainter_fillRect2,"QPainter_fillRect2");

procedure QPainter_fillRect3(handle: not null  QPainterH; p1: QRectH; p2: QBrushH);
pragma Import(C,QPainter_fillRect3,"QPainter_fillRect3");

procedure QPainter_eraseRect(handle: not null  QPainterH; p1: QRectFH);    
pragma Import(C,QPainter_eraseRect,"QPainter_eraseRect");

procedure QPainter_eraseRect2(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
pragma Import(C,QPainter_eraseRect2,"QPainter_eraseRect2");

procedure QPainter_eraseRect3(handle: not null  QPainterH; p1: QRectH);
pragma Import(C,QPainter_eraseRect3,"QPainter_eraseRect3");

procedure QPainter_setRenderHint(handle: not null  QPainterH; hint: QPainterRenderHint; on: Boolean := True);   
pragma Import(C,QPainter_setRenderHint,"QPainter_setRenderHint");

procedure QPainter_setRenderHints(handle: not null  QPainterH; hints: QPainterRenderHints; on: Boolean := True);   
pragma Import(C,QPainter_setRenderHints,"QPainter_setRenderHints");

function QPainter_renderHints(handle: not null  QPainterH) return  QPainterRenderHints;   
pragma Import(C,QPainter_renderHints,"QPainter_renderHints");

function QPainter_testRenderHint(handle: not null  QPainterH; hint: QPainterRenderHint) return  Boolean;   
pragma Import(C,QPainter_testRenderHint,"QPainter_testRenderHint");

function QPainter_paintEngine(handle: not null  QPainterH) return  QPaintEngineH;   
pragma Import(C,QPainter_paintEngine,"QPainter_paintEngine");

procedure QPainter_setRedirected(device: QPaintDeviceH; replacement: QPaintDeviceH; offset: QPointH := null);   
pragma Import(C,QPainter_setRedirected,"QPainter_setRedirected");

function QPainter_redirected(device: QPaintDeviceH; offset: QPointH := null) return QPaintDeviceH;   
pragma Import(C,QPainter_redirected,"QPainter_redirected");

procedure QPainter_restoreRedirected(device: QPaintDeviceH);   
pragma Import(C,QPainter_restoreRedirected,"QPainter_restoreRedirected");

-------------------------------------------------------------------
type QPainterPathElementType is  (QPainterPathMoveToElement, QPainterPathLineToElement, QPainterPathCurveToElement, QPainterPathCurveToDataElement );

function QPainterPath_create return  QPainterPathH;    
pragma Import(C,QPainterPath_create,"QPainterPath_create");

procedure QPainterPath_destroy(handle: not null  QPainterPathH);   
pragma Import(C,QPainterPath_destroy,"QPainterPath_destroy");

function QPainterPath_create2(startPoint: QPointFH) return  QPainterPathH;
pragma Import(C,QPainterPath_create2,"QPainterPath_create2");

function QPainterPath_create3(other: QPainterPathH) return  QPainterPathH;
pragma Import(C,QPainterPath_create3,"QPainterPath_create3");

procedure QPainterPath_closeSubpath(handle: not null  QPainterPathH);   
pragma Import(C,QPainterPath_closeSubpath,"QPainterPath_closeSubpath");

procedure QPainterPath_moveTo(handle: not null  QPainterPathH; p: QPointFH);    
pragma Import(C,QPainterPath_moveTo,"QPainterPath_moveTo");

procedure QPainterPath_moveTo2(handle: not null  QPainterPathH; x: Double; y: Double);
pragma Import(C,QPainterPath_moveTo2,"QPainterPath_moveTo2");

procedure QPainterPath_lineTo(handle: not null  QPainterPathH; p: QPointFH);    
pragma Import(C,QPainterPath_lineTo,"QPainterPath_lineTo");

procedure QPainterPath_lineTo2(handle: not null  QPainterPathH; x: Double; y: Double);
pragma Import(C,QPainterPath_lineTo2,"QPainterPath_lineTo2");

procedure QPainterPath_arcMoveTo(handle: not null  QPainterPathH; rect: QRectFH; angle: Double);    
pragma Import(C,QPainterPath_arcMoveTo,"QPainterPath_arcMoveTo");

procedure QPainterPath_arcMoveTo2(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; angle: Double);
pragma Import(C,QPainterPath_arcMoveTo2,"QPainterPath_arcMoveTo2");

procedure QPainterPath_arcTo(handle: not null  QPainterPathH; rect: QRectFH; startAngle: Double; arcLength: Double);    
pragma Import(C,QPainterPath_arcTo,"QPainterPath_arcTo");

procedure QPainterPath_arcTo2(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; startAngle: Double; arcLength: Double);
pragma Import(C,QPainterPath_arcTo2,"QPainterPath_arcTo2");

procedure QPainterPath_cubicTo(handle: not null  QPainterPathH; ctrlPt1: QPointFH; ctrlPt2: QPointFH; endPt: QPointFH);    
pragma Import(C,QPainterPath_cubicTo,"QPainterPath_cubicTo");

procedure QPainterPath_cubicTo2(handle: not null  QPainterPathH; ctrlPt1x: Double; ctrlPt1y: Double; ctrlPt2x: Double; ctrlPt2y: Double; endPtx: Double; endPty: Double);
pragma Import(C,QPainterPath_cubicTo2,"QPainterPath_cubicTo2");

procedure QPainterPath_quadTo(handle: not null  QPainterPathH; ctrlPt: QPointFH; endPt: QPointFH);    
pragma Import(C,QPainterPath_quadTo,"QPainterPath_quadTo");

procedure QPainterPath_quadTo2(handle: not null  QPainterPathH; ctrlPtx: Double; ctrlPty: Double; endPtx: Double; endPty: Double);
pragma Import(C,QPainterPath_quadTo2,"QPainterPath_quadTo2");

function  QPainterPath_currentPosition(handle: not null  QPainterPathH) return QPointFH;
pragma Import(C,QPainterPath_currentPosition,"QPainterPath_currentPosition");

procedure QPainterPath_addRect(handle: not null  QPainterPathH; rect: QRectFH);    
pragma Import(C,QPainterPath_addRect,"QPainterPath_addRect");

procedure QPainterPath_addRect2(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double);
pragma Import(C,QPainterPath_addRect2,"QPainterPath_addRect2");

procedure QPainterPath_addEllipse(handle: not null  QPainterPathH; rect: QRectFH);    
pragma Import(C,QPainterPath_addEllipse,"QPainterPath_addEllipse");

procedure QPainterPath_addEllipse2(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double);
pragma Import(C,QPainterPath_addEllipse2,"QPainterPath_addEllipse2");

procedure QPainterPath_addPolygon(handle: not null  QPainterPathH; polygon: QPolygonFH);   
pragma Import(C,QPainterPath_addPolygon,"QPainterPath_addPolygon");

procedure QPainterPath_addText(handle: not null  QPainterPathH; point: QPointFH; f: QFontH; text: QStringH);    
pragma Import(C,QPainterPath_addText,"QPainterPath_addText");

procedure QPainterPath_addText2(handle: not null  QPainterPathH; x: Double; y: Double; f: QFontH; text: QStringH);
pragma Import(C,QPainterPath_addText2,"QPainterPath_addText2");

procedure QPainterPath_addPath(handle: not null  QPainterPathH; path: QPainterPathH);   
pragma Import(C,QPainterPath_addPath,"QPainterPath_addPath");

procedure QPainterPath_addRegion(handle: not null  QPainterPathH; region: QRegionH);   
pragma Import(C,QPainterPath_addRegion,"QPainterPath_addRegion");

procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; rect: QRectFH; xRnd: Integer; yRnd: Integer);    
pragma Import(C,QPainterPath_addRoundRect,"QPainterPath_addRoundRect");

procedure QPainterPath_addRoundRect2(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; xRnd: Integer; yRnd: Integer);
pragma Import(C,QPainterPath_addRoundRect2,"QPainterPath_addRoundRect2");

procedure QPainterPath_addRoundRect3(handle: not null  QPainterPathH; rect: QRectFH; roundness: Integer);
pragma Import(C,QPainterPath_addRoundRect3,"QPainterPath_addRoundRect3");

procedure QPainterPath_addRoundRect4(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; roundness: Integer);
pragma Import(C,QPainterPath_addRoundRect4,"QPainterPath_addRoundRect4");

procedure QPainterPath_connectPath(handle: not null  QPainterPathH; path: QPainterPathH);   
pragma Import(C,QPainterPath_connectPath,"QPainterPath_connectPath");

function QPainterPath_contains(handle: not null  QPainterPathH; pt: QPointFH) return  Boolean;    
pragma Import(C,QPainterPath_contains,"QPainterPath_contains");

function QPainterPath_contains2(handle: not null  QPainterPathH; rect: QRectFH) return  Boolean;
pragma Import(C,QPainterPath_contains2,"QPainterPath_contains2");

function QPainterPath_intersects(handle: not null  QPainterPathH; rect: QRectFH) return  Boolean;    
pragma Import(C,QPainterPath_intersects,"QPainterPath_intersects");

function  QPainterPath_boundingRect(handle: not null  QPainterPathH) return QRectFH;
pragma Import(C,QPainterPath_boundingRect,"QPainterPath_boundingRect");

function  QPainterPath_controlPointRect(handle: not null  QPainterPathH) return QRectFH;
pragma Import(C,QPainterPath_controlPointRect,"QPainterPath_controlPointRect");

function QPainterPath_fillRule(handle: not null  QPainterPathH) return  QtFillRule;   
pragma Import(C,QPainterPath_fillRule,"QPainterPath_fillRule");

procedure QPainterPath_setFillRule(handle: not null  QPainterPathH; fillRule: QtFillRule);   
pragma Import(C,QPainterPath_setFillRule,"QPainterPath_setFillRule");

function QPainterPath_isEmpty(handle: not null  QPainterPathH) return  Boolean;   
pragma Import(C,QPainterPath_isEmpty,"QPainterPath_isEmpty");

function  QPainterPath_toReversed(handle: not null  QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPath_toReversed,"QPainterPath_toReversed");

function  QPainterPath_toFillPolygon(handle: not null  QPainterPathH; matrix: QMatrixH := null) return QPolygonFH;
pragma Import(C,QPainterPath_toFillPolygon,"QPainterPath_toFillPolygon");

function  QPainterPath_toFillPolygon2(handle: not null  QPainterPathH; matrix: QTransformH) return QPolygonFH;
pragma Import(C,QPainterPath_toFillPolygon2,"QPainterPath_toFillPolygon2");

function QPainterPath_elementCount(handle: not null  QPainterPathH) return  Integer;   
pragma Import(C,QPainterPath_elementCount,"QPainterPath_elementCount");

function QPainterPath_elementAt(handle: not null  QPainterPathH; i: Integer) return  QPainterPathElementH;   
pragma Import(C,QPainterPath_elementAt,"QPainterPath_elementAt");

procedure QPainterPath_setElementPositionAt(handle: not null  QPainterPathH; i: Integer; x: Double; y: Double);   
pragma Import(C,QPainterPath_setElementPositionAt,"QPainterPath_setElementPositionAt");

function QPainterPath_length(handle: not null  QPainterPathH) return  Double;   
pragma Import(C,QPainterPath_length,"QPainterPath_length");

function QPainterPath_percentAtLength(handle: not null  QPainterPathH; t: Double) return  Double;   
pragma Import(C,QPainterPath_percentAtLength,"QPainterPath_percentAtLength");

function  QPainterPath_pointAtPercent(handle: not null  QPainterPathH; t: Double) return QPointFH;
pragma Import(C,QPainterPath_pointAtPercent,"QPainterPath_pointAtPercent");

function QPainterPath_angleAtPercent(handle: not null  QPainterPathH; t: Double) return  Double;   
pragma Import(C,QPainterPath_angleAtPercent,"QPainterPath_angleAtPercent");

function QPainterPath_slopeAtPercent(handle: not null  QPainterPathH; t: Double) return  Double;   
pragma Import(C,QPainterPath_slopeAtPercent,"QPainterPath_slopeAtPercent");

function QPainterPath_intersects2(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean;
pragma Import(C,QPainterPath_intersects2,"QPainterPath_intersects2");

function QPainterPath_contains3(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean;
pragma Import(C,QPainterPath_contains3,"QPainterPath_contains3");

function  QPainterPath_united(handle: not null  QPainterPathH; r: QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPath_united,"QPainterPath_united");

function  QPainterPath_intersected(handle: not null  QPainterPathH; r: QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPath_intersected,"QPainterPath_intersected");

function  QPainterPath_subtracted(handle: not null  QPainterPathH; r: QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPath_subtracted,"QPainterPath_subtracted");

function  QPainterPath_subtractedInverted(handle: not null  QPainterPathH; r: QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPath_subtractedInverted,"QPainterPath_subtractedInverted");

function QPainterPathStroker_create return  QPainterPathStrokerH;   
pragma Import(C,QPainterPathStroker_create,"QPainterPathStroker_create");

procedure QPainterPathStroker_destroy(handle: not null  QPainterPathStrokerH);   
pragma Import(C,QPainterPathStroker_destroy,"QPainterPathStroker_destroy");

procedure QPainterPathStroker_setWidth(handle: not null  QPainterPathStrokerH; width: Double);   
pragma Import(C,QPainterPathStroker_setWidth,"QPainterPathStroker_setWidth");

function QPainterPathStroker_width(handle: not null  QPainterPathStrokerH) return  Double;   
pragma Import(C,QPainterPathStroker_width,"QPainterPathStroker_width");

procedure QPainterPathStroker_setCapStyle(handle: not null  QPainterPathStrokerH; style: QtPenCapStyle);   
pragma Import(C,QPainterPathStroker_setCapStyle,"QPainterPathStroker_setCapStyle");

function QPainterPathStroker_capStyle(handle: not null  QPainterPathStrokerH) return  QtPenCapStyle;   
pragma Import(C,QPainterPathStroker_capStyle,"QPainterPathStroker_capStyle");

procedure QPainterPathStroker_setJoinStyle(handle: not null  QPainterPathStrokerH; style: QtPenJoinStyle);   
pragma Import(C,QPainterPathStroker_setJoinStyle,"QPainterPathStroker_setJoinStyle");

function QPainterPathStroker_joinStyle(handle: not null  QPainterPathStrokerH) return  QtPenJoinStyle;   
pragma Import(C,QPainterPathStroker_joinStyle,"QPainterPathStroker_joinStyle");

procedure QPainterPathStroker_setMiterLimit(handle: not null  QPainterPathStrokerH; length: Double);   
pragma Import(C,QPainterPathStroker_setMiterLimit,"QPainterPathStroker_setMiterLimit");

function QPainterPathStroker_miterLimit(handle: not null  QPainterPathStrokerH) return  Double;   
pragma Import(C,QPainterPathStroker_miterLimit,"QPainterPathStroker_miterLimit");

procedure QPainterPathStroker_setCurveThreshold(handle: not null  QPainterPathStrokerH; threshold: Double);   
pragma Import(C,QPainterPathStroker_setCurveThreshold,"QPainterPathStroker_setCurveThreshold");

function QPainterPathStroker_curveThreshold(handle: not null  QPainterPathStrokerH) return  Double;   
pragma Import(C,QPainterPathStroker_curveThreshold,"QPainterPathStroker_curveThreshold");

procedure QPainterPathStroker_setDashPattern(handle: not null  QPainterPathStrokerH; p1: QtPenStyle);   
pragma Import(C,QPainterPathStroker_setDashPattern,"QPainterPathStroker_setDashPattern");

procedure QPainterPathStroker_setDashOffset(handle: not null  QPainterPathStrokerH; offset: Double);   
pragma Import(C,QPainterPathStroker_setDashOffset,"QPainterPathStroker_setDashOffset");

function QPainterPathStroker_dashOffset(handle: not null  QPainterPathStrokerH) return  Double;   
pragma Import(C,QPainterPathStroker_dashOffset,"QPainterPathStroker_dashOffset");

function  QPainterPathStroker_createStroke(handle: not null  QPainterPathStrokerH; path: QPainterPathH) return QPainterPathH;
pragma Import(C,QPainterPathStroker_createStroke,"QPainterPathStroker_createStroke");

 procedure QPainter_qDrawShadeLine(handle: not null QPainterH; x1,y1,x2,y2:integer;palette:QPaletteH; sunken: boolean := true;lineWidth: integer := 1; midLineWidth: integer := 0);
 pragma Import(C,QPainter_qDrawShadeLine, "QPainter_qDrawShadeLine");
 
 procedure QPainter_qDrawShadeLine2(handle: not null QPainterH; p1,p2: not null QPointH;palette:QPaletteH; sunken: boolean := true;lineWidth: integer := 1; midLineWidth: integer := 0);
 pragma Import(C,QPainter_qDrawShadeLine2, "QPainter_qDrawShadeLine2");
 
 procedure QPainter_qDrawShadeRect(handle: not null QPainterH; x,y,w,h: integer;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawShadeRect, "QPainter_qDrawShadeRect");
 
 procedure QPainter_qDrawShadeRect2(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawShadeRect2, "QPainter_qDrawShadeRect2");
 
 procedure QPainter_qDrawShadePanel(handle: not null QPainterH; x,y,w,h: integer;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawShadePanel, "QPainter_qDrawShadePanel");
 
 procedure QPainter_qDrawShadePanel2(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawShadePanel2, "QPainter_qDrawShadePanel2");
 
 procedure QPainter_qDrawWinButton(handle: not null QPainterH; x,y,w,h: integer;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawWinButton, "QPainter_qDrawWinButton");
 
 procedure QPainter_qDrawWinButton2(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawWinButton2, "QPainter_qDrawWinButton2");
 
 procedure QPainter_qDrawWinPanel(handle: not null QPainterH; x,y,w,h: integer;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawWinPanel, "QPainter_qDrawWinPanel");
 
 procedure QPainter_qDrawWinPanel2(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawWinPanel2, "QPainter_qDrawWinPanel2");
 
 procedure QPainter_qDrawPlainRect(handle: not null QPainterH; x,y,w,h: integer; color:QColorH;lineWidth: integer := 1;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawPlainRect, "QPainter_qDrawPlainRect");
 
 procedure QPainter_qDrawPlainRect2(handle: not null QPainterH;rect: not null QRectH; color:QColorH;lineWidth: integer := 1;fill: QBrushH := null);
 pragma Import(C,QPainter_qDrawPlainRect2, "QPainter_qDrawPlainRect2");
 
 procedure QPainter_qDrawBorderPixmap(handle: not null QPainterH;target: QRectH;margins: QMarginsH; pixmap: QPixmapH);
 pragma Import(C,QPainter_qDrawBorderPixmap, "QPainter_qDrawBorderPixmap");

 procedure QPainter_beginNativePainting(handle:not null QPainterH);
 pragma Import(C,QPainter_beginNativePainting, "QPainter_beginNativePainting");
 
 procedure QPainter_endNativePainting(handle:not null QPainterH);
 pragma Import(C,QPainter_endNativePainting, "QPainter_endNativePainting");
 
 procedure QPainter_drawStaticText(handle:not null QPainterH;topLeftPosition:QPointFH; text:QStaticTextH);
 pragma Import(C,QPainter_drawStaticText, "QPainter_drawStaticText");
 
 procedure QPainter_drawStaticText2(handle:not null QPainterH;topLeftPosition:QPointH; text:QStaticTextH);
 pragma Import(C,QPainter_drawStaticText2, "QPainter_drawStaticText2");
 
 procedure QPainter_drawStaticText3(handle:not null QPainterH;left,top:integer; text:QStaticTextH);
 pragma Import(C,QPainter_drawStaticText3, "QPainter_drawStaticText3");
 
 procedure QPainter_drawStaticText4(handle:not null QPainterH;left,top:qreal; text:QStaticTextH);
 pragma Import(C,QPainter_drawStaticText4, "QPainter_drawStaticText4");
 
  procedure QPainter_drawRoundedRect(handle:not null QPainterH;rect:QRectFH;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize);
 pragma Import(C,QPainter_drawRoundedRect, "QPainter_drawRoundedRect");
 
 procedure QPainter_drawRoundedRect2(handle:not null QPainterH;x,y,w,h: integer;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize);
 pragma Import(C,QPainter_drawRoundedRect2, "QPainter_drawRoundedRect2");
 
 procedure QPainter_drawRoundedRect3(handle:not null QPainterH;rect:QRectH;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize);
 pragma Import(C,QPainter_drawRoundedRect3, "QPainter_drawRoundedRect3");
 

 
------------------------------------------------------------------------
function  QPainter_create(p1: QPaintDeviceH) return  QPainterH;
function  QPainter_create(parent: QWidgetH) return  QPainterH;
function QPainter_create(parent: QPixmapH) return  QPainterH;
procedure QPainter_setPen(handle: not null  QPainterH; pen: QPenH);
procedure QPainter_setPen(handle: not null  QPainterH; style: QtPenStyle);
procedure QPainter_setBrush(handle: not null  QPainterH; style: QtBrushStyle);
procedure QPainter_setBrushOrigin(handle: not null  QPainterH; p1: QPointH);
procedure QPainter_setBrushOrigin(handle: not null  QPainterH; p1: QPointFH);
procedure QPainter_setClipRect(handle: not null  QPainterH; p1: QRectH; op: QtClipOperation := QtReplaceClip);
procedure QPainter_setClipRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; op: QtClipOperation := QtReplaceClip);
procedure QPainter_translate(handle: not null  QPainterH; offset: QPointH);
procedure QPainter_translate(handle: not null  QPainterH; dx: Double; dy: Double);
procedure QPainter_setWindow(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
procedure QPainter_setViewport(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
procedure QPainter_drawPoint(handle: not null  QPainterH; p: QPointH);
procedure QPainter_drawPoint(handle: not null  QPainterH; x: Integer; y: Integer);
procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPolygonFH);
procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPolygonH);
procedure QPainter_drawLine(handle: not null  QPainterH; line: QLineH);
procedure QPainter_drawLine(handle: not null  QPainterH; x1: Integer; y1: Integer; x2: Integer; y2: Integer);
procedure QPainter_drawLine(handle: not null  QPainterH; p1: QPointH; p2: QPointH);
procedure QPainter_drawLine(handle: not null  QPainterH; p1: QPointFH; p2: QPointFH);
procedure QPainter_drawLines(handle: not null  QPainterH; pointPairs: QPointFH; lineCount: Integer);
procedure QPainter_drawLines(handle: not null  QPainterH; lines: QLineH; lineCount: Integer);
procedure QPainter_drawLines(handle: not null  QPainterH; pointPairs: QPointH; lineCount: Integer);
procedure QPainter_drawRect(handle: not null  QPainterH; x1: Integer; y1: Integer; w: Integer; h: Integer);
procedure QPainter_drawRect(handle: not null  QPainterH; rect: QRectH);
procedure QPainter_drawRects(handle: not null  QPainterH; rects: QRectH; rectCount: Integer);
procedure QPainter_drawEllipse(handle: not null  QPainterH; r: QRectH);
procedure QPainter_drawEllipse(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
procedure QPainter_drawPolyline(handle: not null  QPainterH; polyline: QPolygonFH);
procedure QPainter_drawPolyline(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
procedure QPainter_drawPolyline(handle: not null  QPainterH; polygon: QPolygonH);
procedure QPainter_drawPolygon(handle: not null  QPainterH; polygon: QPolygonFH; fillRule: QtFillRule := QtOddEvenFill);
procedure QPainter_drawPolygon(handle: not null  QPainterH; points: QPointH; pointCount: Integer; fillRule: QtFillRule := QtOddEvenFill);
procedure QPainter_drawPolygon(handle: not null  QPainterH; polygon: QPolygonH; fillRule: QtFillRule := QtOddEvenFill);
procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; polygon: QPolygonFH);
procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; points: QPointH; pointCount: Integer);
procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; polygon: QPolygonH);
procedure QPainter_drawArc(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
procedure QPainter_drawArc(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
procedure QPainter_drawPie(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
procedure QPainter_drawPie(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
procedure QPainter_drawChord(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer);
procedure QPainter_drawChord(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer);
procedure QPainter_drawRoundRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: Integer := 25; p6: Integer := 25);
procedure QPainter_drawRoundRect(handle: not null  QPainterH; r: QRectH; xround: Integer := 25; yround: Integer := 25);
procedure QPainter_drawTiledPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QPixmapH; sx: Integer := 0; sy: Integer := 0);
procedure QPainter_drawTiledPixmap(handle: not null  QPainterH; p1: QRectH; p2: QPixmapH; p3: QPointH := null);
procedure QPainter_drawPicture(handle: not null  QPainterH; x: Integer; y: Integer; picture: QPictureH);
procedure QPainter_drawPicture(handle: not null  QPainterH; p: QPointH; picture: QPictureH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; targetRect: QRectH; pixmap: QPixmapH; sourceRect: QRectH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer);
procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer);
procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH; sr: QRectFH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointH; pm: QPixmapH; sr: QRectH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointH; pm: QPixmapH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; r: QRectH; pm: QPixmapH);
procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH);
procedure QPainter_drawImage(handle: not null  QPainterH; targetRect: QRectH; image: QImageH; sourceRect: QRectH; flags: QtImageConversionFlags := QtAutoColor);
procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointFH; image: QImageH; sr: QRectFH; flags: QtImageConversionFlags := QtAutoColor);
procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointH; image: QImageH; sr: QRectH; flags: QtImageConversionFlags := QtAutoColor);
procedure QPainter_drawImage(handle: not null  QPainterH; r: QRectFH; image: QImageH);
procedure QPainter_drawImage(handle: not null  QPainterH; r: QRectH; image: QImageH);
procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointFH; image: QImageH);
procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointH; image: QImageH);
procedure QPainter_drawImage(handle: not null  QPainterH; x: Integer; y: Integer; image: QImageH; sx: Integer := 0; sy: Integer := 0; sw: Integer := -1; sh: Integer := -1; flags: QtImageConversionFlags := QtAutoColor);
procedure QPainter_drawText(handle: not null  QPainterH; p: QPointH; s: QStringH);
procedure QPainter_drawText(handle: not null  QPainterH; x: Integer; y: Integer; s: QStringH);
procedure QPainter_drawText(handle: not null  QPainterH; r: QRectFH; flags: Integer; text: QStringH; br: QRectFH := null);
procedure QPainter_drawText(handle: not null  QPainterH; r: QRectH; flags: Integer; text: QStringH; br: QRectH := null);
procedure QPainter_drawText(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; br: QRectH := null);
procedure QPainter_drawText(handle: not null  QPainterH; r: QRectFH; text: QStringH; o: QTextOptionH := null);
function  QPainter_boundingRect(handle: not null  QPainterH; rect: QRectH; flags: Integer; text: QStringH) return QRectH;
function  QPainter_boundingRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH) return QRectH;
function  QPainter_boundingRect(handle: not null  QPainterH; rect: QRectFH; text: QStringH; o: QTextOptionH := null) return QRectFH;
procedure QPainter_fillRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QBrushH);
procedure QPainter_fillRect(handle: not null  QPainterH; p1: QRectH; p2: QBrushH);
procedure QPainter_eraseRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer);
procedure QPainter_eraseRect(handle: not null  QPainterH; p1: QRectH);
procedure QPainter_drawStaticText(handle:not null QPainterH;topLeftPosition:QPointH; text:QStaticTextH);
procedure QPainter_drawStaticText(handle:not null QPainterH;left,top:integer; text:QStaticTextH);
procedure QPainter_drawStaticText(handle:not null QPainterH;left,top:qreal; text:QStaticTextH);

function  QPainterPath_create(startPoint: QPointFH) return  QPainterPathH;
function  QPainterPath_create(other: QPainterPathH) return  QPainterPathH;
procedure QPainterPath_moveTo(handle: not null  QPainterPathH; x: Double; y: Double);
procedure QPainterPath_lineTo(handle: not null  QPainterPathH; x: Double; y: Double);
procedure QPainterPath_arcMoveTo(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; angle: Double);
procedure QPainterPath_arcTo(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; startAngle: Double; arcLength: Double);
procedure QPainterPath_cubicTo(handle: not null  QPainterPathH; ctrlPt1x: Double; ctrlPt1y: Double; ctrlPt2x: Double; ctrlPt2y: Double; endPtx: Double; endPty: Double);
procedure QPainterPath_quadTo(handle: not null  QPainterPathH; ctrlPtx: Double; ctrlPty: Double; endPtx: Double; endPty: Double);
procedure QPainterPath_addRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double);
procedure QPainterPath_addEllipse(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double);
procedure QPainterPath_addText(handle: not null  QPainterPathH; x: Double; y: Double; f: QFontH; text: QStringH);
procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; xRnd: Integer; yRnd: Integer);
procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; rect: QRectFH; roundness: Integer);
procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; roundness: Integer);
function QPainterPath_contains(handle: not null  QPainterPathH; rect: QRectFH) return  Boolean;
function QPainterPath_contains(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean;
function  QPainterPath_toFillPolygon(handle: not null  QPainterPathH; matrix: QTransformH) return QPolygonFH;
function QPainterPath_intersects(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean;

procedure QPainter_qDrawShadeLine(handle: not null QPainterH; p1,p2: not null QPointH;palette:QPaletteH; sunken: boolean := true;lineWidth: integer := 1; midLineWidth: integer := 0);
procedure QPainter_qDrawShadeRect(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null);
procedure QPainter_qDrawShadePanel(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null);
procedure QPainter_qDrawWinButton(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
procedure QPainter_qDrawWinPanel(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null);
procedure QPainter_qDrawPlainRect(handle: not null QPainterH;rect: not null QRectH; color:QColorH;lineWidth: integer := 1;fill: QBrushH := null);

 procedure QPainter_drawRoundedRect(handle:not null QPainterH;x,y,w,h: integer;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize);
 procedure QPainter_drawRoundedRect(handle:not null QPainterH;rect:QRectH;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize);


end Qt.QPainter;
