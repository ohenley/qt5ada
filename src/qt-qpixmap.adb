--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QPixmap              is

function QPixmap_create(w: Integer; h: Integer) return  QPixmapH is
begin
 return QPixmap_create2(w, h);
end;

function QPixmap_create(p1: QSizeH) return  QPixmapH is
begin
 return QPixmap_create3(p1);
end;

function QPixmap_create(fileName: QStringH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return QPixmapH is
begin
 return QPixmap_create4(fileName,format, flags);
end;

function QPixmap_create(xpm: zstring) return  QPixmapH is
begin
 return QPixmap_create5(xpm);
end;

function QPixmap_create(p1: QPixmapH) return  QPixmapH is
begin
 return  QPixmap_create6(p1);
end;

procedure QPixmap_fill(handle: not null  QPixmapH; widget: QWidgetH; ofs: QPointH) is
begin
  QPixmap_fill2(handle, widget, ofs);
end;

procedure QPixmap_fill(handle: not null  QPixmapH; widget: QWidgetH; xofs: Integer; yofs: Integer) is
begin
  QPixmap_fill3(handle, widget, xofs, yofs);
end;

function  QPixmap_createMaskFromColor(handle: not null  QPixmapH; maskColor: QColorH; mode: QtMaskMode) return QBitmapH is
begin
  return QPixmap_createMaskFromColor2(handle, maskColor, mode);
end;

function  QPixmap_grabWidget(widget: QWidgetH; x: Integer := 0; y: Integer := 0; w: Integer := -1; h: Integer := -1) return QPixmapH is
begin
  return QPixmap_grabWidget2(widget, x, y, w, h);
end;

function  QPixmap_scaled(handle: not null  QPixmapH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QPixmapH is
begin
  return QPixmap_scaled2(handle, s, aspectMode, mode);
end;

function  QPixmap_transformed(handle: not null  QPixmapH; p1: QTransformH; mode: QtTransformationMode := QtFastTransformation) return  QPixmapH is
begin
  return QPixmap_transformed2(handle, p1, mode);
end;

function  QPixmap_trueMatrix(m: QTransformH; w: Integer; h: Integer) return QTransformH is
begin
  return QPixmap_trueMatrix2(m, w, h);
end;

function QPixmap_loadFromData(handle: not null  QPixmapH; data: QByteArrayH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return Boolean is
begin
  return QPixmap_loadFromData2(handle, data, format, flags);
end;

function QPixmap_save(handle: not null  QPixmapH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean is
begin
  return QPixmap_save2(handle, device, format, quality);
end;

function  QPixmap_copy(handle: not null  QPixmapH; rect: QRectH := null) return QPixmapH is
begin
  return QPixmap_copy2(handle, rect);
end;

procedure QPixmap_scroll(handle:not null QPixmapH;dx,dy : integer;rect: QRectH;exposed : QRegionH :=  null) is
begin
 QPixmap_scroll2(handle,dx,dy,rect,exposed);
end; 

end Qt.QPixmap;
