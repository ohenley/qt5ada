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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QRubberBand  is

 procedure QRubberBand_setGeometry(handle: not null  QRubberBandH; x:integer; y:integer; w:integer; h:integer) is
 begin
    QRubberBand_setGeometry2(handle, x, y, w, h);
 end;

 procedure QRubberBand_move(handle: not null  QRubberBandH; point: QPointH) is
 begin
   QRubberBand_move2(handle, point);
 end;

 procedure QRubberBand_resize(handle: not null  QRubberBandH; size: QSizeH) is
 begin
   QRubberBand_resize2(handle, size);
 end;

end Qt.QRubberBand;
