--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt4 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QCursor              is


function QCursor_create(shape: QtCursorShape) return  QCursorH is
begin
 return QCursor_create2(shape);
end;

function QCursor_create(bitmap: QBitmapH; mask: QBitmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH is
begin
 return  QCursor_create3(bitmap,mask,hotX, hotY);
end;

function QCursor_create(pixmap: QPixmapH; hotX: Integer := -1; hotY: Integer := -1) return QCursorH is
begin
 return  QCursor_create4(pixmap, hotX, hotY);
end;

function QCursor_create(cursor: QCursorH) return  QCursorH is
begin
 return QCursor_create5(cursor);
end;

procedure QCursor_setPos(p: QPointH) is
begin
  QCursor_setPos2(p);
end;


end Qt.QCursor;
