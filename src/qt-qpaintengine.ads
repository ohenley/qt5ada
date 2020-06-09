--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPaintEngine         is

type QPaintEnginePolygonDrawMode is (QPaintEngineOddEvenMode, QPaintEngineWindingMode, QPaintEngineConvexMode, QPaintEnginePolylineMode );

subtype  QPaintEnginePaintEngineFeature  is cardinal; -- QPaintEngine::PaintEngineFeature
subtype  QPaintEnginePaintEngineFeatures is cardinal; -- QPaintEngine::PaintEngineFeature

QPaintEnginePrimitiveTransform     : constant QPaintEnginePaintEngineFeature := 16#00000001#;
QPaintEnginePatternTransform       : constant QPaintEnginePaintEngineFeature := 16#00000002#;
QPaintEnginePixmapTransform        : constant QPaintEnginePaintEngineFeature := 16#00000004#;
QPaintEnginePatternBrush           : constant QPaintEnginePaintEngineFeature := 16#00000008#;
QPaintEngineLinearGradientFill     : constant QPaintEnginePaintEngineFeature := 16#00000010#;
QPaintEngineRadialGradientFill     : constant QPaintEnginePaintEngineFeature := 16#00000020#;
QPaintEngineConicalGradientFill    : constant QPaintEnginePaintEngineFeature := 16#00000040#;
QPaintEngineAlphaBlend             : constant QPaintEnginePaintEngineFeature := 16#00000080#;
QPaintEnginePorterDuff             : constant QPaintEnginePaintEngineFeature := 16#00000100#;
QPaintEnginePainterPaths           : constant QPaintEnginePaintEngineFeature := 16#00000200#;
QPaintEngineAntialiasing           : constant QPaintEnginePaintEngineFeature := 16#00000400#;
QPaintEngineBrushStroke            : constant QPaintEnginePaintEngineFeature := 16#00000800#;
QPaintEngineConstantOpacity        : constant QPaintEnginePaintEngineFeature := 16#00001000#;
QPaintEngineMaskedBrush            : constant QPaintEnginePaintEngineFeature := 16#00002000#;
QPaintEnginePerspectiveTransform   : constant QPaintEnginePaintEngineFeature := 16#00004000#;
QPaintEngineBlendModes             : constant QPaintEnginePaintEngineFeature := 16#00008000#;
QPaintEnginePaintOutsidePaintEvent : constant QPaintEnginePaintEngineFeature := 16#20000000#;
QPaintEngineAllFeatures            : constant QPaintEnginePaintEngineFeature := 16#ffffffff#;

subtype QPaintEngineDirtyFlag  is cardinal;
subtype QPaintEngineDirtyFlags is cardinal;

QPaintEngineDirtyPen             : constant QPaintEngineDirtyFlag := 16#0001#;
QPaintEngineDirtyBrush           : constant QPaintEngineDirtyFlag := 16#0002#;
QPaintEngineDirtyBrushOrigin     : constant QPaintEngineDirtyFlag := 16#0004#;
QPaintEngineDirtyFont            : constant QPaintEngineDirtyFlag := 16#0008#;
QPaintEngineDirtyBackground      : constant QPaintEngineDirtyFlag := 16#0010#;
QPaintEngineDirtyBackgroundMode  : constant QPaintEngineDirtyFlag := 16#0020#;
QPaintEngineDirtyTransform       : constant QPaintEngineDirtyFlag := 16#0040#;
QPaintEngineDirtyClipRegion      : constant QPaintEngineDirtyFlag := 16#0080#;
QPaintEngineDirtyClipPath        : constant QPaintEngineDirtyFlag := 16#0100#;
QPaintEngineDirtyHints           : constant QPaintEngineDirtyFlag := 16#0200#;
QPaintEngineDirtyCompositionMode : constant QPaintEngineDirtyFlag := 16#0400#;
QPaintEngineDirtyClipEnabled     : constant QPaintEngineDirtyFlag := 16#0800#;
QPaintEngineDirtyOpacity         : constant QPaintEngineDirtyFlag := 16#1000#;
QPaintEngineAllDirty             : constant QPaintEngineDirtyFlag := 16#ffff#;

type QPaintEngineType is (
    QPaintEngineX11,
    QPaintEngineWindows,
    QPaintEngineQuickDraw,
    QPaintEngineCoreGraphics,
    QPaintEngineMacPrinter,
    QPaintEngineQWindowSystem,
    QPaintEnginePostScript,
    QPaintEngineOpenGL,
    QPaintEnginePicture,
    QPaintEngineSVG,
    QPaintEngineRaster,
    QPaintEngineDirect3D,
    QPaintEngineUser ,
    QPaintEngineMaxUser);


for QPaintEngineType'size use cardinal'size;
for QPaintEngineType use  (
    QPaintEngineX11 => 1,
    QPaintEngineWindows => 2,
    QPaintEngineQuickDraw => 3,
    QPaintEngineCoreGraphics => 4,
    QPaintEngineMacPrinter => 5,
    QPaintEngineQWindowSystem => 6,
    QPaintEnginePostScript => 7,
    QPaintEngineOpenGL => 8,
    QPaintEnginePicture => 9,
    QPaintEngineSVG => 10,
    QPaintEngineRaster => 11,
    QPaintEngineDirect3D => 12,
    QPaintEngineUser => 50,
    QPaintEngineMaxUser => 100 );

function QPaintEngine_isActive(handle: not null  QPaintEngineH) return  Boolean;   
pragma Import(C,QPaintEngine_isActive,"QPaintEngine_isActive");

procedure QPaintEngine_setActive(handle: not null  QPaintEngineH; newState: Boolean);   
pragma Import(C,QPaintEngine_setActive,"QPaintEngine_setActive");

function QPaintEngine_begin(handle: not null  QPaintEngineH; pdev: QPaintDeviceH) return  Boolean;   
pragma Import(C,QPaintEngine_begin,"QPaintEngine_begin");

function QPaintEngine_end(handle: not null  QPaintEngineH) return  Boolean;   
pragma Import(C,QPaintEngine_end,"QPaintEngine_end");

procedure QPaintEngine_drawRects(handle: not null  QPaintEngineH; rects: QRectH; rectCount: Integer);    
pragma Import(C,QPaintEngine_drawRects,"QPaintEngine_drawRects");

procedure QPaintEngine_drawRects2(handle: not null  QPaintEngineH; rects: QRectFH; rectCount: Integer);
pragma Import(C,QPaintEngine_drawRects2,"QPaintEngine_drawRects2");

procedure QPaintEngine_drawLines(handle: not null  QPaintEngineH; lines: QLineH; lineCount: Integer);    
pragma Import(C,QPaintEngine_drawLines,"QPaintEngine_drawLines");

procedure QPaintEngine_drawLines2(handle: not null  QPaintEngineH; lines: QLineFH; lineCount: Integer);
pragma Import(C,QPaintEngine_drawLines2,"QPaintEngine_drawLines2");

procedure QPaintEngine_drawEllipse(handle: not null  QPaintEngineH; r: QRectFH);    
pragma Import(C,QPaintEngine_drawEllipse,"QPaintEngine_drawEllipse");

procedure QPaintEngine_drawEllipse2(handle: not null  QPaintEngineH; r: QRectH);
pragma Import(C,QPaintEngine_drawEllipse2,"QPaintEngine_drawEllipse2");

procedure QPaintEngine_drawPath(handle: not null  QPaintEngineH; path: QPainterPathH);   
pragma Import(C,QPaintEngine_drawPath,"QPaintEngine_drawPath");

procedure QPaintEngine_drawPoints(handle: not null  QPaintEngineH; points: QPointFH; pointCount: Integer);    
pragma Import(C,QPaintEngine_drawPoints,"QPaintEngine_drawPoints");

procedure QPaintEngine_drawPoints2(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer);
pragma Import(C,QPaintEngine_drawPoints2,"QPaintEngine_drawPoints2");

procedure QPaintEngine_drawPolygon(handle: not null  QPaintEngineH; points: QPointFH; pointCount: Integer; mode: QPaintEnginePolygonDrawMode);    
pragma Import(C,QPaintEngine_drawPolygon,"QPaintEngine_drawPolygon");

procedure QPaintEngine_drawPolygon2(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer; mode: QPaintEnginePolygonDrawMode);
pragma Import(C,QPaintEngine_drawPolygon2,"QPaintEngine_drawPolygon2");

procedure QPaintEngine_drawPixmap(handle: not null  QPaintEngineH; r: QRectFH; pm: QPixmapH; sr: QRectFH);   
pragma Import(C,QPaintEngine_drawPixmap,"QPaintEngine_drawPixmap");

procedure QPaintEngine_drawTiledPixmap(handle: not null  QPaintEngineH; r: QRectFH; pixmap: QPixmapH; s: QPointFH);   
pragma Import(C,QPaintEngine_drawTiledPixmap,"QPaintEngine_drawTiledPixmap");

procedure QPaintEngine_drawImage(handle: not null  QPaintEngineH; r: QRectFH; pm: QImageH; sr: QRectFH; flags: QtImageConversionFlags := QtAutoColor);
pragma Import(C,QPaintEngine_drawImage,"QPaintEngine_drawImage");

procedure QPaintEngine_setPaintDevice(handle: not null  QPaintEngineH; device: QPaintDeviceH);   
pragma Import(C,QPaintEngine_setPaintDevice,"QPaintEngine_setPaintDevice");

function QPaintEngine_paintDevice(handle: not null  QPaintEngineH) return  QPaintDeviceH;   
pragma Import(C,QPaintEngine_paintDevice,"QPaintEngine_paintDevice");

procedure QPaintEngine_setSystemClip(handle: not null  QPaintEngineH; baseClip: QRegionH);   
pragma Import(C,QPaintEngine_setSystemClip,"QPaintEngine_setSystemClip");

function  QPaintEngine_systemClip(handle: not null  QPaintEngineH) return QRegionH;
pragma Import(C,QPaintEngine_systemClip,"QPaintEngine_systemClip");

procedure QPaintEngine_setSystemRect(handle: not null  QPaintEngineH; rect: QRectH);   
pragma Import(C,QPaintEngine_setSystemRect,"QPaintEngine_setSystemRect");

function  QPaintEngine_systemRect(handle: not null  QPaintEngineH) return QRectH;
pragma Import(C,QPaintEngine_systemRect,"QPaintEngine_systemRect");

function  QPaintEngine_coordinateOffset(handle: not null  QPaintEngineH) return QPointH;
pragma Import(C,QPaintEngine_coordinateOffset,"QPaintEngine_coordinateOffset");

function QPaintEngine_type(handle: not null  QPaintEngineH) return  QPaintEngineType;   
pragma Import(C,QPaintEngine_type,"QPaintEngine_type");

procedure QPaintEngine_fix_neg_rect(handle: not null  QPaintEngineH; x: PInteger; y: PInteger; w: PInteger; h: PInteger);   
pragma Import(C,QPaintEngine_fix_neg_rect,"QPaintEngine_fix_neg_rect");

function QPaintEngine_testDirty(handle: not null  QPaintEngineH; df: QPaintEngineDirtyFlags) return  Boolean;   
pragma Import(C,QPaintEngine_testDirty,"QPaintEngine_testDirty");

procedure QPaintEngine_setDirty(handle: not null  QPaintEngineH; df: QPaintEngineDirtyFlags);   
pragma Import(C,QPaintEngine_setDirty,"QPaintEngine_setDirty");

procedure QPaintEngine_clearDirty(handle: not null  QPaintEngineH; df: QPaintEngineDirtyFlags);   
pragma Import(C,QPaintEngine_clearDirty,"QPaintEngine_clearDirty");

function QPaintEngine_hasFeature(handle: not null  QPaintEngineH; feature: QPaintEnginePaintEngineFeatures) return  Boolean;   
pragma Import(C,QPaintEngine_hasFeature,"QPaintEngine_hasFeature");

function QPaintEngine_painter(handle: not null  QPaintEngineH) return  QPainterH;   
pragma Import(C,QPaintEngine_painter,"QPaintEngine_painter");

procedure QPaintEngine_syncState(handle: not null  QPaintEngineH);   
pragma Import(C,QPaintEngine_syncState,"QPaintEngine_syncState");

------------------------------------------------------------------------------------------------------------
procedure QPaintEngine_drawRects(handle: not null  QPaintEngineH; rects: QRectFH; rectCount: Integer);
procedure QPaintEngine_drawLines(handle: not null  QPaintEngineH; lines: QLineFH; lineCount: Integer);
procedure QPaintEngine_drawEllipse(handle: not null  QPaintEngineH; r: QRectH);
procedure QPaintEngine_drawPoints(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer);
procedure QPaintEngine_drawPolygon(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer; mode: QPaintEnginePolygonDrawMode);

end Qt.QPaintEngine;
