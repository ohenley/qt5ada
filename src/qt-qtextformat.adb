--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QTextFormat is

 function  QTextFormat_create(formatType:integer) return QTextFormatH is
 begin
  return QTextFormat_create2(formatType);
 end;

 function  QTextFormat_create(other:QTextFormatH) return QTextFormatH is
 begin
  return QTextFormat_create3(other);
 end;

 procedure QTextFormat_setProperty(handle: not null QTextFormatH;propertyId:integer; lengths:QObjectListH) is
 begin
   QTextFormat_setProperty2(handle,propertyId,lengths);
 end;

 procedure QTextFrameFormat_setWidth(handle: not null QTextFrameFormatH; length:QTextLengthH) is
 begin
   QTextFrameFormat_setWidth2(handle, length);
 end;

 procedure QTextFrameFormat_setHeight(handle: not null QTextFrameFormatH; height:QTextLengthH) is
 begin
   QTextFrameFormat_setHeight2(handle, height);
 end;

end Qt.QTextFormat;
