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

package body Qt.QPainter             is

function QPainter_create(p1: QPaintDeviceH) return  QPainterH is
begin
 return QPainter_create2(p1);
end;

function QPainter_create(parent: QWidgetH) return  QPainterH is
begin
 return QPainter_create3(parent);
end;

function QPainter_create(parent: QPixmapH) return  QPainterH is
begin
 return QPainter_create4(parent);
end;

procedure QPainter_setPen(handle: not null  QPainterH; pen: QPenH) is
begin
  QPainter_setPen2(handle, pen);
end;

procedure QPainter_setPen(handle: not null  QPainterH; style: QtPenStyle) is
begin
  QPainter_setPen3(handle, style);
end;

procedure QPainter_setBrush(handle: not null  QPainterH; style: QtBrushStyle) is
begin
  QPainter_setBrush2(handle,style);
end;

procedure QPainter_setBrushOrigin(handle: not null  QPainterH; p1: QPointH) is
begin
  QPainter_setBrushOrigin2(handle, p1);
end;

procedure QPainter_setBrushOrigin(handle: not null  QPainterH; p1: QPointFH) is
begin
  QPainter_setBrushOrigin3(handle, p1);
end;

procedure QPainter_setClipRect(handle: not null  QPainterH; p1: QRectH; op: QtClipOperation := QtReplaceClip) is
begin
  QPainter_setClipRect2(handle, p1, op);
end;

procedure QPainter_setClipRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; op: QtClipOperation := QtReplaceClip) is
begin
  QPainter_setClipRect3(handle, x, y, w, h, op);
end;

procedure QPainter_translate(handle: not null  QPainterH; offset: QPointH) is
begin
  QPainter_translate2(handle, offset);
end;

procedure QPainter_translate(handle: not null  QPainterH; dx: Double; dy: Double) is
begin
  QPainter_translate3(handle, dx, dy);
end;

procedure QPainter_setWindow(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QPainter_setWindow2(handle, x, y, w, h);
end;

procedure QPainter_setViewport(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QPainter_setViewport2(handle, x, y, w, h);
end;

procedure QPainter_drawPoint(handle: not null  QPainterH; p: QPointH) is
begin
  QPainter_drawPoint2(handle, p);
end;

procedure QPainter_drawPoint(handle: not null  QPainterH; x: Integer; y: Integer) is
begin
  QPainter_drawPoint3(handle, x, y);
end;

procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPolygonFH) is
begin
  QPainter_drawPoints2(handle, points);
end;

procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPointH; pointCount: Integer) is
begin
  QPainter_drawPoints3(handle, points, pointCount);
end;

procedure QPainter_drawPoints(handle: not null  QPainterH; points: QPolygonH) is
begin
  QPainter_drawPoints4(handle, points);
end;

procedure QPainter_drawLine(handle: not null  QPainterH; line: QLineH) is
begin
  QPainter_drawLine2(handle, line);
end;

procedure QPainter_drawLine(handle: not null  QPainterH; x1: Integer; y1: Integer; x2: Integer; y2: Integer) is
begin
  QPainter_drawLine3(handle, x1, y1, x2, y2);
end;

procedure QPainter_drawLine(handle: not null  QPainterH; p1: QPointH; p2: QPointH) is
begin
  QPainter_drawLine4(handle, p1, p2);
end;

procedure QPainter_drawLine(handle: not null  QPainterH; p1: QPointFH; p2: QPointFH) is
begin
  QPainter_drawLine5(handle, p1, p2);
end;

procedure QPainter_drawLines(handle: not null  QPainterH; pointPairs: QPointFH; lineCount: Integer) is
begin
  QPainter_drawLines2(handle, pointPairs, lineCount);
end;

procedure QPainter_drawLines(handle: not null  QPainterH; lines: QLineH; lineCount: Integer) is
begin
  QPainter_drawLines3(handle, lines, lineCount);
end;

procedure QPainter_drawLines(handle: not null  QPainterH; pointPairs: QPointH; lineCount: Integer) is
begin
  QPainter_drawLines4(handle, pointPairs, lineCount);
end;

procedure QPainter_drawRect(handle: not null  QPainterH; x1: Integer; y1: Integer; w: Integer; h: Integer) is
begin
  QPainter_drawRect2(handle, x1, y1, w, h);
end;

procedure QPainter_drawRect(handle: not null  QPainterH; rect: QRectH) is
begin
  QPainter_drawRect3(handle, rect);
end;

procedure QPainter_drawRects(handle: not null  QPainterH; rects: QRectH; rectCount: Integer) is
begin
  QPainter_drawRects2(handle, rects, rectCount);
end;

procedure QPainter_drawEllipse(handle: not null  QPainterH; r: QRectH) is
begin
  QPainter_drawEllipse2(handle, r);
end;

procedure QPainter_drawEllipse(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QPainter_drawEllipse3(handle, x, y, w, h);
end;

procedure QPainter_drawPolyline(handle: not null  QPainterH; polyline: QPolygonFH) is
begin
  QPainter_drawPolyline2(handle, polyline);
end;

procedure QPainter_drawPolyline(handle: not null  QPainterH; points: QPointH; pointCount: Integer) is
begin
  QPainter_drawPolyline3(handle, points, pointCount);
end;

procedure QPainter_drawPolyline(handle: not null  QPainterH; polygon: QPolygonH) is
begin
  QPainter_drawPolyline4(handle, polygon);
end;

procedure QPainter_drawPolygon(handle: not null  QPainterH; polygon: QPolygonFH; fillRule: QtFillRule := QtOddEvenFill) is
begin
  QPainter_drawPolygon2(handle, polygon, fillRule);
end;

procedure QPainter_drawPolygon(handle: not null  QPainterH; points: QPointH; pointCount: Integer; fillRule: QtFillRule := QtOddEvenFill) is
begin
  QPainter_drawPolygon3(handle, points, pointCount, fillRule);
end;

procedure QPainter_drawPolygon(handle: not null  QPainterH; polygon: QPolygonH; fillRule: QtFillRule := QtOddEvenFill) is
begin
  QPainter_drawPolygon4(handle, polygon, fillRule);
end;

procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; polygon: QPolygonFH) is
begin
  QPainter_drawConvexPolygon2(handle,polygon);
end;

procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; points: QPointH; pointCount: Integer) is
begin
  QPainter_drawConvexPolygon3(handle, points, pointCount);
end;

procedure QPainter_drawConvexPolygon(handle: not null  QPainterH; polygon: QPolygonH) is
begin
  QPainter_drawConvexPolygon4(handle, polygon);
end;

procedure QPainter_drawArc(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer) is
begin
  QPainter_drawArc2(handle, p1, a, alen);
end;

procedure QPainter_drawArc(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer) is
begin
  QPainter_drawArc3(handle, x, y, w, h, a, alen);
end;

procedure QPainter_drawPie(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer) is
begin
  QPainter_drawPie2(handle, x, y, w, h, a, alen);
end;

procedure QPainter_drawPie(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer) is
begin
  QPainter_drawPie3(handle, p1, a, alen);
end;

procedure QPainter_drawChord(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; a: Integer; alen: Integer) is
begin
  QPainter_drawChord2(handle, x, y, w, h, a, alen);
end;

procedure QPainter_drawChord(handle: not null  QPainterH; p1: QRectH; a: Integer; alen: Integer) is
begin
  QPainter_drawChord3(handle, p1, a, alen);
end;

procedure QPainter_drawRoundRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: Integer := 25; p6: Integer := 25) is
begin
  QPainter_drawRoundRect2(handle, x, y, w, h, p5, p6);
end;

procedure QPainter_drawRoundRect(handle: not null  QPainterH; r: QRectH; xround: Integer := 25; yround: Integer := 25) is
begin
  QPainter_drawRoundRect3(handle, r, xround, yround);
end;

procedure QPainter_drawTiledPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QPixmapH; sx: Integer := 0; sy: Integer := 0) is
begin
  QPainter_drawTiledPixmap2(handle, x, y, w, h, p5, sx, sy);
end;

procedure QPainter_drawTiledPixmap(handle: not null  QPainterH; p1: QRectH; p2: QPixmapH; p3: QPointH := null) is
begin
  QPainter_drawTiledPixmap3(handle, p1, p2, p3);
end;

procedure QPainter_drawPicture(handle: not null  QPainterH; x: Integer; y: Integer; picture: QPictureH) is
begin
  QPainter_drawPicture2(handle, x, y, picture);
end;

procedure QPainter_drawPicture(handle: not null  QPainterH; p: QPointH; picture: QPictureH) is
begin
  QPainter_drawPicture3(handle, p, picture);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; targetRect: QRectH; pixmap: QPixmapH; sourceRect: QRectH) is
begin
  QPainter_drawPixmap2(handle, targetRect, pixmap, sourceRect);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer) is
begin
  QPainter_drawPixmap3(handle, x, y, w, h, pm, sx, sy, sw, sh);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH; sx: Integer; sy: Integer; sw: Integer; sh: Integer) is
begin
  QPainter_drawPixmap4(handle, x, y, pm, sx, sy, sw, sh);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH; sr: QRectFH) is
begin
  QPainter_drawPixmap5(handle, p, pm, sr);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointH; pm: QPixmapH; sr: QRectH) is
begin
  QPainter_drawPixmap6(handle, p, pm, sr);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointFH; pm: QPixmapH) is
begin
  QPainter_drawPixmap7(handle, p, pm);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; p: QPointH; pm: QPixmapH) is
begin
  QPainter_drawPixmap8(handle, p, pm);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; pm: QPixmapH) is
begin
  QPainter_drawPixmap9(handle, x, y, pm);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; r: QRectH; pm: QPixmapH) is
begin
  QPainter_drawPixmap10(handle, r, pm);
end;

procedure QPainter_drawPixmap(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; pm: QPixmapH) is
begin
  QPainter_drawPixmap11(handle, x, y, w, h, pm);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; targetRect: QRectH; image: QImageH; sourceRect: QRectH; flags: QtImageConversionFlags := QtAutoColor) is
begin
  QPainter_drawImage2(handle, targetRect, image, sourceRect, flags);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointFH; image: QImageH; sr: QRectFH; flags: QtImageConversionFlags := QtAutoColor) is
begin
  QPainter_drawImage3(handle, p, image, sr, flags);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointH; image: QImageH; sr: QRectH; flags: QtImageConversionFlags := QtAutoColor) is
begin
  QPainter_drawImage4(handle, p, image, sr, flags);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; r: QRectFH; image: QImageH) is
begin
  QPainter_drawImage5(handle, r, image);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; r: QRectH; image: QImageH) is
begin
  QPainter_drawImage6(handle, r, image);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointFH; image: QImageH) is
begin
  QPainter_drawImage7(handle, p, image);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; p: QPointH; image: QImageH) is
begin
  QPainter_drawImage8(handle, p, image);
end;

procedure QPainter_drawImage(handle: not null  QPainterH; x: Integer; y: Integer; image: QImageH; sx: Integer := 0; sy: Integer := 0; sw: Integer := -1; sh: Integer := -1; flags: QtImageConversionFlags := QtAutoColor) is
begin
  QPainter_drawImage9(handle, x, y, image, sx, sy, sw, sh, flags);
end;

procedure QPainter_drawText(handle: not null  QPainterH; p: QPointH; s: QStringH) is
begin
  QPainter_drawText2(handle, p, s);
end;

procedure QPainter_drawText(handle: not null  QPainterH; x: Integer; y: Integer; s: QStringH) is
begin
  QPainter_drawText3(handle, x, y, s);
end;

procedure QPainter_drawText(handle: not null  QPainterH; r: QRectFH; flags: Integer; text: QStringH; br: QRectFH := null) is
begin
  QPainter_drawText4(handle, r, flags, text, br);
end;

procedure QPainter_drawText(handle: not null  QPainterH; r: QRectH; flags: Integer; text: QStringH; br: QRectH := null) is
begin
  QPainter_drawText5(handle, r, flags, text, br);
end;

procedure QPainter_drawText(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; br: QRectH := null) is
begin
  QPainter_drawText6(handle, x, y, w, h, flags, text, br);
end;

procedure QPainter_drawText(handle: not null  QPainterH; r: QRectFH; text: QStringH; o: QTextOptionH := null) is
begin
  QPainter_drawText7(handle, r, text, o);
end;

function  QPainter_boundingRect(handle: not null  QPainterH; rect: QRectH; flags: Integer; text: QStringH) return QRectH is
begin
  return QPainter_boundingRect2(handle, rect, flags, text);
end;

function  QPainter_boundingRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH) return QRectH is
begin
  return QPainter_boundingRect3(handle, x, y, w, h, flags, text);
end;

function  QPainter_boundingRect(handle: not null  QPainterH; rect: QRectFH; text: QStringH; o: QTextOptionH := null) return QRectFH is
begin
  return QPainter_boundingRect4(handle, rect, text, o);
end;

procedure QPainter_fillRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; p5: QBrushH) is
begin
  QPainter_fillRect2(handle, x, y, w, h, p5);
end;

procedure QPainter_fillRect(handle: not null  QPainterH; p1: QRectH; p2: QBrushH) is
begin
 QPainter_fillRect3(handle, p1, p2);
end;

procedure QPainter_eraseRect(handle: not null  QPainterH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QPainter_eraseRect2(handle, x, y, w, h);
end;

procedure QPainter_eraseRect(handle: not null  QPainterH; p1: QRectH) is
begin
  QPainter_eraseRect3(handle, p1);
end;


function QPainterPath_create(startPoint: QPointFH) return  QPainterPathH is
begin
 return QPainterPath_create2(startPoint);
end;

function QPainterPath_create(other: QPainterPathH) return  QPainterPathH is
begin
 return QPainterPath_create3(other);
end;

procedure QPainterPath_moveTo(handle: not null  QPainterPathH; x: Double; y: Double) is
begin
  QPainterPath_moveTo2(handle, x, y);
end;

procedure QPainterPath_lineTo(handle: not null  QPainterPathH; x: Double; y: Double) is
begin
  QPainterPath_lineTo2(handle, x, y);
end;

procedure QPainterPath_arcMoveTo(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; angle: Double) is
begin
  QPainterPath_arcMoveTo2(handle, x, y, w, h, angle);
end;

procedure QPainterPath_arcTo(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; startAngle: Double; arcLength: Double) is
begin
  QPainterPath_arcTo2(handle, x, y, w, h, startAngle, arcLength);
end;

procedure QPainterPath_cubicTo(handle: not null  QPainterPathH; ctrlPt1x: Double; ctrlPt1y: Double; ctrlPt2x: Double; ctrlPt2y: Double; endPtx: Double; endPty: Double) is
begin
 QPainterPath_cubicTo2(handle, ctrlPt1x, ctrlPt1y, ctrlPt2x, ctrlPt2y, endPtx, endPty);
end;

procedure QPainterPath_quadTo(handle: not null  QPainterPathH; ctrlPtx: Double; ctrlPty: Double; endPtx: Double; endPty: Double) is
begin
  QPainterPath_quadTo2(handle, ctrlPtx, ctrlPty, endPtx, endPty);
end;

procedure QPainterPath_addRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double) is
begin
  QPainterPath_addRect2(handle, x, y, w, h);
end;

procedure QPainterPath_addEllipse(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double) is
begin
  QPainterPath_addEllipse2(handle, x, y, w, h);
end;

procedure QPainterPath_addText(handle: not null  QPainterPathH; x: Double; y: Double; f: QFontH; text: QStringH) is
begin
  QPainterPath_addText2(handle, x, y, f, text);
end;

procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; xRnd: Integer; yRnd: Integer) is
begin
  QPainterPath_addRoundRect2(handle, x, y, w, h, xRnd, yRnd);
end;

procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; rect: QRectFH; roundness: Integer) is
begin
  QPainterPath_addRoundRect3(handle, rect, roundness);
end;

procedure QPainterPath_addRoundRect(handle: not null  QPainterPathH; x: Double; y: Double; w: Double; h: Double; roundness: Integer) is
begin
 QPainterPath_addRoundRect4(handle, x, y, w, h, roundness);
end;

function QPainterPath_contains(handle: not null  QPainterPathH; rect: QRectFH) return  Boolean is
begin
  return QPainterPath_contains2(handle, rect);
end;

function  QPainterPath_toFillPolygon(handle: not null  QPainterPathH; matrix: QTransformH) return QPolygonFH is
begin
  return QPainterPath_toFillPolygon2(handle, matrix);
end;

function QPainterPath_intersects(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean is
begin
  return QPainterPath_intersects2(handle, p);
end;
function QPainterPath_contains(handle: not null  QPainterPathH; p: QPainterPathH) return  Boolean is
begin
  return QPainterPath_contains3(handle,p);
end;

procedure QPainter_qDrawShadeLine(handle: not null QPainterH; p1,p2: not null QPointH;palette:QPaletteH; sunken: boolean := true;lineWidth: integer := 1; midLineWidth: integer := 0) is
begin
   QPainter_qDrawShadeLine2(handle,p1,p2,palette,sunken,lineWidth,midLineWidth);
end;

procedure QPainter_qDrawShadeRect(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null) is
begin
  QPainter_qDrawShadeRect2(handle,rect,palette,sunken,lineWidth,midLineWidth,fill);
end;

procedure QPainter_qDrawShadePanel(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;lineWidth: integer := 1; midLineWidth: integer := 0; fill: QBrushH := null) is
begin
  QPainter_qDrawShadePanel2(handle,rect,palette,sunken,lineWidth,midLineWidth,fill);
end;

procedure QPainter_qDrawWinButton(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null) is
begin
  QPainter_qDrawWinButton2(handle,rect,palette,sunken,fill);
end;

procedure QPainter_qDrawWinPanel(handle: not null QPainterH;rect: not null QRectH;palette:QPaletteH; sunken: boolean := false;fill: QBrushH := null) is
begin
  QPainter_qDrawWinPanel2(handle,rect,palette,sunken,fill);
end;

procedure QPainter_qDrawPlainRect(handle: not null QPainterH;rect: not null QRectH; color:QColorH;lineWidth: integer := 1;fill: QBrushH := null) is
begin
  QPainter_qDrawPlainRect2(handle,rect,color,lineWidth,fill);
end;

 procedure QPainter_drawStaticText(handle:not null QPainterH;topLeftPosition:QPointH; text:QStaticTextH) is
 begin
   QPainter_drawStaticText2(handle,topLeftPosition,text);
 end;

 procedure QPainter_drawStaticText(handle:not null QPainterH;left,top:integer; text:QStaticTextH) is
 begin
   QPainter_drawStaticText3(handle,left,top,text);
 end;

 procedure QPainter_drawStaticText(handle:not null QPainterH;left,top:qreal; text:QStaticTextH) is
 begin
   QPainter_drawStaticText4(handle,left,top,text);
 end;
 
 procedure QPainter_drawRoundedRect(handle:not null QPainterH;x,y,w,h: integer;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize) is
 begin
   QPainter_drawRoundedRect2(handle,x,y,w,h,xRadius,yRadius,mode);
 end;

 procedure QPainter_drawRoundedRect(handle:not null QPainterH;rect:QRectH;xRadius,yRadius: qreal;mode : integer :=  Qt.QNamespace.AbsoluteSize) is
 begin
   QPainter_drawRoundedRect3(handle,rect,xRadius,yRadius,mode);
 end;


end Qt.QPainter;
