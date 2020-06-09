--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2018                      บ
-- บ Copyright (C) 2012,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QFont                is

function QFont_create(family: QStringH; pointSize: Integer := -1; weight: Integer := -1; italic: Boolean := False) return QFontH is
begin
  return QFont_create2(family, pointSize, weight, italic);
end;

function QFont_create(p1: QFontH; pd: QPaintDeviceH) return  QFontH is
begin
 return QFont_create3(p1, pd);
end;

function QFont_create(p1: QFontH) return  QFontH is
begin
 return QFont_create4(p1);
end;

function QFont_resolve(handle: not null  QFontH) return  LongWord is
begin
 return QFont_resolve2(handle);
end;

procedure QFont_resolve(handle: not null  QFontH; mask: LongWord) is
begin
   QFont_resolve3(handle,mask);
end;

function  QFontDatabase_writingSystems(handle: not null  QFontDatabaseH; family: QStringH) return QObjectListH is
begin
  return QFontDatabase_writingSystems2(handle, family);
end;

function  QFontDatabase_styleString(handle: not null  QFontDatabaseH; fontInfo: QFontInfoH) return QStringH is
begin
  return QFontDatabase_styleString2(handle,fontInfo);
end;

function QFontMetrics_create(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsH is
begin
 return QFontMetrics_create2(p1, pd);
end;

function QFontMetrics_create(p1: QFontMetricsH) return  QFontMetricsH is
begin
 return QFontMetrics_create3(p1);
end;

function QFontMetrics_width(handle: not null  QFontMetricsH; p1: QCharH) return  Integer is
begin
 return  QFontMetrics_width2(handle, p1);
end;

function QFontMetrics_boundingRect(handle: not null  QFontMetricsH; text: QStringH) return QRectH is
begin
  return QFontMetrics_boundingRect2(handle, text);
end;

function QFontMetrics_boundingRect(handle: not null  QFontMetricsH; r: QRectH; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return  QRectH is
begin
  return QFontMetrics_boundingRect3(handle, r, flags, text, tabstops, tabarray);
end;

function  QFontMetrics_boundingRect(handle: not null  QFontMetricsH; x: Integer; y: Integer; w: Integer; h: Integer; flags: Integer; text: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectH is
begin
  return QFontMetrics_boundingRect4(handle, x, y, w, h, flags, text, tabstops, tabarray);
end;

function QFontMetricsF_create(p1: QFontH; pd: QPaintDeviceH) return  QFontMetricsFH is
begin
  return QFontMetricsF_create2(p1, pd);
end;

function QFontMetricsF_create(p1: QFontMetricsFH) return  QFontMetricsFH is
begin
 return QFontMetricsF_create4(p1);
end;

function QFontMetricsF_width(handle: not null  QFontMetricsFH; p1: QCharH) return  Double is
begin
 return QFontMetricsF_width2(handle, p1);
end;

function  QFontMetricsF_boundingRect(handle: not null  QFontMetricsFH; p1: QCharH) return QRectFH is
begin
 return QFontMetricsF_boundingRect2(handle,p1);
end;

function QFontMetricsF_boundingRect(handle: not null  QFontMetricsFH; r: QRectFH; flags: Integer; str: QStringH; tabstops: Integer := 0; tabarray: PInteger := null) return QRectFH is
begin
 return  QFontMetricsF_boundingRect3(handle,r, flags, str, tabstops, tabarray);
end;

function QFontInfo_create(p1: QFontInfoH) return  QFontInfoH is
begin
 return QFontInfo_create2(p1);
end;

 function  QFontMetrics_horizontalAdvance(handle:not null QFontMetricsH;c:QCharH) return integer is
 begin
   return  QFontMetrics_horizontalAdvance2(handle,c);
 end;

 function  QFontMetricsF_horizontalAdvance(handle:not null QFontMetricsFH;c:QCharH) return qreal is
 begin
   return  QFontMetricsF_horizontalAdvance2(handle,c);
 end;

end Qt.QFont;
