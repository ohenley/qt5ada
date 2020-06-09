-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C)                                                     บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QStringView is

 function  QStringView_create(str:QStringH) return QStringViewH;
 pragma Import(C,QStringView_create, "QStringView_create");
 
 function  QStringView_create2(str:zstring) return QStringViewH;
 pragma Import(C,QStringView_create2, "QStringView_create2");
 
 function  QStringView_create3(str:QStringRefH) return QStringViewH;
 pragma Import(C,QStringView_create3, "QStringView_create3");
 
 procedure QStringView_destroy(handle:not null QStringViewH);
 pragma Import(C,QStringView_destroy, "QStringView_destroy");
 
 function  QStringView_toString(handle:not null QStringViewH) return QStringH;
 pragma Import(C,QStringView_toString, "QStringView_toString");
 
 function  QStringView_size(handle:not null QStringViewH) return integer;
 pragma Import(C,QStringView_size, "QStringView_size");
 
 function  QStringView_data(handle:not null QStringViewH) return void_Star;
 pragma Import(C,QStringView_data, "QStringView_data");
 
 function  QStringView_utf16(handle:not null QStringViewH) return void_Star;
 pragma Import(C,QStringView_utf16, "QStringView_utf16");
 
 function  QStringView_toLatin1(handle:not null QStringViewH) return QByteArrayH;
 pragma Import(C,QStringView_toLatin1, "QStringView_toLatin1");
 
 function  QStringView_toUtf8(handle:not null QStringViewH) return QByteArrayH;
 pragma Import(C,QStringView_toUtf8, "QStringView_toUtf8");
 
 function  QStringView_toLocal8Bit(handle:not null QStringViewH) return QByteArrayH;
 pragma Import(C,QStringView_toLocal8Bit, "QStringView_toLocal8Bit");
 
 function  QStringView_at(handle:not null QStringViewH;n:integer) return QCharH;
 pragma Import(C,QStringView_at, "QStringView_at");
 
 function  QStringView_mid(handle:not null QStringViewH;pos:integer) return QStringViewH;
 pragma Import(C,QStringView_mid, "QStringView_mid");
 
 function  QStringView_mid2(handle:not null QStringViewH;pos,n:integer) return QStringViewH;
 pragma Import(C,QStringView_mid2, "QStringView_mid2");
 
 function  QStringView_left(handle:not null QStringViewH;n:integer) return QStringViewH;
 pragma Import(C,QStringView_left, "QStringView_left");
 
 function  QStringView_right(handle:not null QStringViewH;n:integer) return QStringViewH;
 pragma Import(C,QStringView_right, "QStringView_right");
 
 function  QStringView_chopped(handle:not null QStringViewH;n:integer) return QStringViewH;
 pragma Import(C,QStringView_chopped, "QStringView_chopped");
 
 procedure QStringView_truncate(handle:not null QStringViewH;n:integer);
 pragma Import(C,QStringView_truncate, "QStringView_truncate");
 
 procedure QStringView_chop(handle:not null QStringViewH;n:integer);
 pragma Import(C,QStringView_chop, "QStringView_chop");
 
 function  QStringView_trimmed(handle:not null QStringViewH) return QStringViewH;
 pragma Import(C,QStringView_trimmed, "QStringView_trimmed");
 
 function  QStringView_startsWith(handle:not null QStringViewH;s:QStringViewH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 pragma Import(C,QStringView_startsWith, "QStringView_startsWith");
 
 function  QStringView_startsWith2(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 pragma Import(C,QStringView_startsWith2, "QStringView_startsWith2");
 
 function  QStringView_startsWith3(handle:not null QStringViewH;c:QCharH) return boolean;
 pragma Import(C,QStringView_startsWith3, "QStringView_startsWith3");
 
 function  QStringView_startsWith4(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean;
 pragma Import(C,QStringView_startsWith4, "QStringView_startsWith4");
 
 function  QStringView_endsWith(handle:not null QStringViewH;s:QStringViewH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 pragma Import(C,QStringView_endsWith, "QStringView_endsWith");
 
 function  QStringView_endsWith2(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 pragma Import(C,QStringView_endsWith2, "QStringView_endsWith2");
 
 function  QStringView_endsWith3(handle:not null QStringViewH;c:QCharH) return boolean;
 pragma Import(C,QStringView_endsWith3, "QStringView_endsWith3");
 
 function  QStringView_endsWith4(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean;
 pragma Import(C,QStringView_endsWith4, "QStringView_endsWith4");
 
 function  QStringView_empty(handle:not null QStringViewH) return boolean;
 pragma Import(C,QStringView_empty, "QStringView_empty");
 
 function  QStringView_front(handle:not null QStringViewH) return QCharH;
 pragma Import(C,QStringView_front, "QStringView_front");
 
 function  QStringView_back(handle:not null QStringViewH) return QCharH;
 pragma Import(C,QStringView_back, "QStringView_back");
 
 function  QStringView_isNull(handle:not null QStringViewH) return boolean;
 pragma Import(C,QStringView_isNull, "QStringView_isNull");
 
 function  QStringView_isEmpty(handle:not null QStringViewH) return boolean;
 pragma Import(C,QStringView_isEmpty, "QStringView_isEmpty");
 
 function  QStringView_length(handle:not null QStringViewH) return integer;
 pragma Import(C,QStringView_length, "QStringView_length");
 
 function  QStringView_first(handle:not null QStringViewH) return QCharH;
 pragma Import(C,QStringView_first, "QStringView_first");
 
 function  QStringView_last(handle:not null QStringViewH) return QCharH;
 pragma Import(C,QStringView_last, "QStringView_last");

 function  QStringView_isRightToLeft(handle:not null QStringViewH) return boolean;
 pragma Import(C,QStringView_isRightToLeft, "QStringView_isRightToLeft");
 
----------------------------------------------------------------------
 function  QStringView_create(str:zstring) return QStringViewH;
 function  QStringView_create(str:QStringRefH) return QStringViewH;
 function  QStringView_mid(handle:not null QStringViewH;pos,n:integer) return QStringViewH;
 function  QStringView_startsWith(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 function  QStringView_startsWith(handle:not null QStringViewH;c:QCharH) return boolean;
 function  QStringView_startsWith(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean;
 function  QStringView_endsWith(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean;
 function  QStringView_endsWith(handle:not null QStringViewH;c:QCharH) return boolean;
 function  QStringView_endsWith(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean;

end;
