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

package body Qt.QGradient            is

function QLinearGradient_create(start: QPointFH; finalStop: QPointFH) return  QLinearGradientH is
begin
  return  QLinearGradient_create2(start,finalStop);
end;

function QLinearGradient_create(xStart: Double; yStart: Double; xFinalStop: Double; yFinalStop: Double) return  QLinearGradientH is
begin
  return QLinearGradient_create3(xStart, yStart, xFinalStop, yFinalStop);
end;

procedure QLinearGradient_setStart(handle: not null  QLinearGradientH; x: Double; y: Double) is
begin
  QLinearGradient_setStart2(handle, x, y);
end;

procedure QLinearGradient_setFinalStop(handle: not null  QLinearGradientH; x: Double; y: Double) is
begin
  QLinearGradient_setFinalStop2(handle, x, y);
end;

function QRadialGradient_create(center: QPointFH; radius: Double; focalPoint: QPointFH) return  QRadialGradientH is
begin
  return QRadialGradient_create2(center, radius, focalPoint);
end;

function QRadialGradient_create(cx: Double; cy: Double; radius: Double; fx: Double; fy: Double) return  QRadialGradientH is
begin
  return QRadialGradient_create3(cx, cy, radius, fx, fy);
end;

function QRadialGradient_create(center: QPointFH; radius: Double) return  QRadialGradientH is
begin
  return QRadialGradient_create4(center, radius);
end;

function QRadialGradient_create(cx: Double; cy: Double; radius: Double) return  QRadialGradientH is
begin
  return QRadialGradient_create5(cx, cy, radius);
end;

procedure QRadialGradient_setCenter(handle: not null  QRadialGradientH; x: Double; y: Double) is
begin
  QRadialGradient_setCenter2(handle, x, y);
end;

procedure QRadialGradient_setFocalPoint(handle: not null  QRadialGradientH; x: Double; y: Double) is
begin
  QRadialGradient_setFocalPoint2(handle, x, y);
end;

function QConicalGradient_create(center: QPointFH; startAngle: Double) return  QConicalGradientH is
begin
  return QConicalGradient_create2(center, startAngle);
end;

function QConicalGradient_create(cx: Double; cy: Double; startAngle: Double) return  QConicalGradientH is
begin
  return QConicalGradient_create3(cx, cy, startAngle);
end;

procedure QConicalGradient_setCenter(handle: not null  QConicalGradientH; x: Double; y: Double) is
begin
  QConicalGradient_setCenter2(handle, x, y);
end;


end Qt.QGradient;
