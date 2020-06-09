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

package body Qt.QPaintEngine         is

procedure QPaintEngine_drawRects(handle: not null  QPaintEngineH; rects: QRectFH; rectCount: Integer) is
begin
  QPaintEngine_drawRects2(handle, rects, rectCount);
end;

procedure QPaintEngine_drawLines(handle: not null  QPaintEngineH; lines: QLineFH; lineCount: Integer) is
begin
  QPaintEngine_drawLines2(handle, lines, lineCount);
end;

procedure QPaintEngine_drawEllipse(handle: not null  QPaintEngineH; r: QRectH) is
begin
  QPaintEngine_drawEllipse2(handle, r);
end;

procedure QPaintEngine_drawPoints(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer) is
begin
  QPaintEngine_drawPoints2(handle, points, pointCount);
end;

procedure QPaintEngine_drawPolygon(handle: not null  QPaintEngineH; points: QPointH; pointCount: Integer; mode: QPaintEnginePolygonDrawMode) is
begin
  QPaintEngine_drawPolygon2(handle, points, pointCount, mode);
end;

end Qt.QPaintEngine;
