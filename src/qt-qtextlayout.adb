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

package body Qt.QTextLayout  is

 function  QTextLayout_create(text:QStringH) return  QTextLayoutH is
 begin
   return  QTextLayout_create2(text);
 end;

 function  QTextLayout_create(text:QStringH; font: QFontH; paintdevice: QPaintDeviceH) return  QTextLayoutH is
 begin
   return  QTextLayout_create3(text, font, paintdevice);
 end;

 function  QTextLayout_create(b: QTextBlockH) return  QTextLayoutH is
 begin
   return  QTextLayout_create4(b);
 end;

 procedure QTextLayout_drawCursor(handle: not null  QTextLayoutH; painter: QPainterH; point: QPointFH; cursorPosition: integer; width:integer) is
 begin
     QTextLayout_drawCursor2(handle, painter, point, cursorPosition, width);
 end;

 procedure QTextLine_setNumColumns(handle: not null  QTextLineH; columns:integer;alignmentWidth: float) is
 begin
    QTextLine_setNumColumns2(handle, columns,alignmentWidth);
 end;

end   Qt.QTextLayout;
