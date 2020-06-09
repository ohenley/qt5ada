--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QStringRef  is

 function  QStringRef_create return QStringRefH;
 pragma Import(C,QStringRef_create, "QStringRef_create");
 
 function  QStringRef_create2(str:QStringH) return QStringRefH;
 pragma Import(C,QStringRef_create2, "QStringRef_create2");
 
 function  QStringRef_create3(str:QStringH; position, size:integer) return QStringRefH;
 pragma Import(C,QStringRef_create3, "QStringRef_create3");
 
 function  QStringRef_create4(other:QStringRefH) return QStringRefH;
 pragma Import(C,QStringRef_create4, "QStringRef_create4");
 
 procedure QStringRef_destroy(handle: not null QStringRefH);
 pragma Import(C,QStringRef_destroy, "QStringRef_destroy");
 
 function  QStringRef_string(handle: not null QStringRefH) return  QStringH;
 pragma Import(C,QStringRef_string, "QStringRef_string");
 
 function  QStringRef_position(handle: not null QStringRefH) return  integer;
 pragma Import(C,QStringRef_position, "QStringRef_position");
 
 function  QStringRef_size(handle: not null QStringRefH) return  integer;
 pragma Import(C,QStringRef_size, "QStringRef_size");
 
 function  QStringRef_count(handle: not null QStringRefH) return  integer;
 pragma Import(C,QStringRef_count, "QStringRef_count");
 
 function  QStringRef_length(handle: not null QStringRefH) return  integer;
 pragma Import(C,QStringRef_length, "QStringRef_length");
 
 function  QStringRef_equal2(handle: not null QStringRefH;other:QStringH) return boolean;
 pragma Import(C,QStringRef_equal2, "QStringRef_equal2");
 
 function  QStringRef_equal3(handle: not null QStringRefH;other:QLatin1StringH) return boolean;
 pragma Import(C,QStringRef_equal3, "QStringRef_equal3");
 
 function  QStringRef_unicode(handle: not null QStringRefH) return QCharH;
 pragma Import(C,QStringRef_unicode, "QStringRef_unicode");
 
 function  QStringRef_data(handle: not null QStringRefH) return QCharH;
 pragma Import(C,QStringRef_data, "QStringRef_data");
 
 function  QStringRef_constData(handle: not null QStringRefH) return QCharH;
 pragma Import(C,QStringRef_constData, "QStringRef_constData");
 
 procedure QStringRef_clear(handle: not null QStringRefH);
 pragma Import(C,QStringRef_clear, "QStringRef_clear");
 
 function  QStringRef_toString(handle: not null QStringRefH) return QStringH;
 pragma Import(C,QStringRef_toString, "QStringRef_toString");
 
 function  QStringRef_isEmpty(handle: not null QStringRefH) return boolean;
 pragma Import(C,QStringRef_isEmpty, "QStringRef_isEmpty");
 
 function  QStringRef_isNull(handle: not null QStringRefH) return boolean;
 pragma Import(C,QStringRef_isNull, "QStringRef_isNull");
 
 function  QStringRef_appendTo(handle: not null QStringRefH;str:QStringH) return QStringRefH;
 pragma Import(C,QStringRef_appendTo, "QStringRef_appendTo");
 
 function  QStringRef_at(handle: not null QStringRefH; index:integer) return QCharH;
 pragma Import(C,QStringRef_at, "QStringRef_at");
 
 function  QStringRef_compare(handle: not null QStringRefH;str:QStringH;cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 pragma Import(C,QStringRef_compare, "QStringRef_compare");
 
 function  QStringRef_compare2(handle: not null QStringRefH;stringRef:QStringRefH;cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 pragma Import(C,QStringRef_compare2, "QStringRef_compare2");
 
 function  QStringRef_compare3(handle: not null QStringRefH;str:QLatin1StringH; cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 pragma Import(C,QStringRef_compare3, "QStringRef_compare3");
 
 function  QStringRef_localeAwareCompare(handle: not null QStringRefH;str:QStringH) return integer;
 pragma Import(C,QStringRef_localeAwareCompare, "QStringRef_localeAwareCompare");
 
 function  QStringRef_localeAwareCompare2(handle: not null QStringRefH;stringRef:QStringRefH) return integer;
 pragma Import(C,QStringRef_localeAwareCompare2, "QStringRef_localeAwareCompare2");

 function  QStringRef_left(handle: not null QStringRefH;n:integer) return QStringRefH;
 pragma Import(C,QStringRef_left, "QStringRef_left");
 
 function  QStringRef_right(handle: not null QStringRefH;n:integer) return QStringRefH;
 pragma Import(C,QStringRef_right, "QStringRef_right");
 
 function  QStringRef_mid(handle: not null QStringRefH; pos: integer;n:integer := -1) return QStringRefH;
 pragma Import(C,QStringRef_mid, "QStringRef_mid");
 
 
--------------------------------------------------------------------------------------------------------------
 function  QStringRef_create(str:QStringH) return QStringRefH;
 function  QStringRef_create(str:QStringH; position, size:integer) return QStringRefH;
 function  QStringRef_create(other:QStringRefH) return QStringRefH;

 function  QStringRef_equal(handle: not null QStringRefH;other:QStringH) return boolean;
 function  QStringRef_equal(handle: not null QStringRefH;other:QLatin1StringH) return boolean;
 function  QStringRef_compare(handle: not null QStringRefH;stringRef:QStringRefH;cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 function  QStringRef_compare(handle: not null QStringRefH;str:QLatin1StringH; cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 function  QStringRef_localeAwareCompare(handle: not null QStringRefH;stringRef:QStringRefH) return integer;

end Qt.QStringRef;
