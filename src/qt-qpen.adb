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

package body Qt.QPen                 is

function QPen_create(p1: QtPenStyle) return  QPenH is
begin
 return QPen_create2(p1);
end;

function QPen_create(color: QColorH) return  QPenH is
begin
 return  QPen_create3(color);
end;

function QPen_create(brush: QBrushH; width: Double; s: QtPenStyle := QtSolidLine; c: QtPenCapStyle := QtSquareCap; j: QtPenJoinStyle := QtBevelJoin) return QPenH is
begin
 return QPen_create4(brush, width, s, c, j);
end;

function QPen_create(pen: QPenH) return  QPenH is
begin
 return QPen_create5(pen);
end;


end  Qt.QPen;
