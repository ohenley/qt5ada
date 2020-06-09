--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package QT.QVectorString  is

 function  QVectorString_create return QVectorStringH;
 pragma Import(C,QVectorString_create, "QVectorString_create");
 
 function  QVectorString_create2(size:integer) return QVectorStringH;
 pragma Import(C,QVectorString_create2, "QVectorString_create2");
 
 procedure QVectorString_destroy(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_destroy, "QVectorString_destroy");
 
 function  QVectorString_size(handle: not null QVectorStringH) return integer;
 pragma Import(C,QVectorString_size, "QVectorString_size");
 
 function  QVectorString_isEmpty(handle: not null QVectorStringH) return boolean;
 pragma Import(C,QVectorString_isEmpty, "QVectorString_isEmpty");
 
 procedure QVectorString_resize(handle: not null QVectorStringH;size:integer);
 pragma Import(C,QVectorString_resize, "QVectorString_resize");
 
 function  QVectorString_capacity(handle: not null QVectorStringH) return integer;
 pragma Import(C,QVectorString_capacity, "QVectorString_capacity");
 
 procedure QVectorString_reserve(handle: not null QVectorStringH;size:integer);
 pragma Import(C,QVectorString_reserve, "QVectorString_reserve");
 
 procedure QVectorString_squeeze(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_squeeze, "QVectorString_squeeze");
 
 procedure QVectorString_detach(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_detach, "QVectorString_detach");
 
 function  QVectorString_isDetached(handle: not null QVectorStringH) return boolean;
 pragma Import(C,QVectorString_isDetached, "QVectorString_isDetached");
 
 procedure QVectorString_setSharable(handle: not null QVectorStringH; sharable:boolean);
 pragma Import(C,QVectorString_setSharable, "QVectorString_setSharable");
 
 function  QVectorString_isSharedWith(handle: not null QVectorStringH; other:QVectorStringH) return boolean;
 pragma Import(C,QVectorString_isSharedWith, "QVectorString_isSharedWith");
 
 function  QVectorString_data(handle: not null QVectorStringH) return QStringH;
 pragma Import(C,QVectorString_data, "QVectorString_data");
 
 function  QVectorString_constData(handle: not null QVectorStringH) return QStringH;
 pragma Import(C,QVectorString_constData, "QVectorString_constData");
 
 procedure QVectorString_clear(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_clear, "QVectorString_clear");
 
 function  QVectorString_at(handle: not null QVectorStringH;i:integer) return QStringH;
 pragma Import(C,QVectorString_at, "QVectorString_at");
 
 procedure QVectorString_append(handle: not null QVectorStringH;str:QStringH);
 pragma Import(C,QVectorString_append, "QVectorString_append");
 
 procedure QVectorString_prepend(handle: not null QVectorStringH;str:QStringH);
 pragma Import(C,QVectorString_prepend, "QVectorString_prepend");
 
 procedure QVectorString_insert(handle: not null QVectorStringH;i:integer; str:QStringH);
 pragma Import(C,QVectorString_insert, "QVectorString_insert");
 
 procedure QVectorString_insert2(handle: not null QVectorStringH;i,n:integer; str:QStringH);
 pragma Import(C,QVectorString_insert2, "QVectorString_insert2");
 
 procedure QVectorString_replace(handle: not null QVectorStringH;i:integer; str:QStringH);
 pragma Import(C,QVectorString_replace, "QVectorString_replace");
 
 procedure QVectorString_remove(handle: not null QVectorStringH;i:integer);
 pragma Import(C,QVectorString_remove, "QVectorString_remove");
 
 procedure QVectorString_remove2(handle: not null QVectorStringH;i,n:integer);
 pragma Import(C,QVectorString_remove2, "QVectorString_remove2");
 
 function  QVectorString_fill(handle: not null QVectorStringH;str:QStringH; size:integer := -1) return QVectorStringH;
 pragma Import(C,QVectorString_fill, "QVectorString_fill");
 
 function  QVectorString_indexOf(handle: not null QVectorStringH; str:QStringH;  from:integer := 0) return integer;
 pragma Import(C,QVectorString_indexOf, "QVectorString_indexOf");
 
 function  QVectorString_lastIndexOf(handle: not null QVectorStringH;str:QStringH; from:integer := -1) return integer;
 pragma Import(C,QVectorString_lastIndexOf, "QVectorString_lastIndexOf");
 
 function  QVectorString_contains(handle: not null QVectorStringH;str:QStringH) return boolean;
 pragma Import(C,QVectorString_contains, "QVectorString_contains");
 
 function  QVectorString_count(handle: not null QVectorStringH;str:QStringH) return integer;
 pragma Import(C,QVectorString_count, "QVectorString_count");
 
 function  QVectorString_count2(handle: not null QVectorStringH) return integer;
 pragma Import(C,QVectorString_count2, "QVectorString_count2");
 
 function  QVectorString_first(handle: not null QVectorStringH) return QStringH;
 pragma Import(C,QVectorString_first, "QVectorString_first");
 
 function  QVectorString_last(handle: not null QVectorStringH) return QStringH ;
 pragma Import(C,QVectorString_last, "QVectorString_last");
 
 function  QVectorString_startsWith(handle: not null QVectorStringH;str:QStringH) return boolean;
 pragma Import(C,QVectorString_startsWith, "QVectorString_startsWith");
 
 function  QVectorString_endsWith(handle: not null QVectorStringH;str:QStringH) return boolean;
 pragma Import(C,QVectorString_endsWith, "QVectorString_endsWith");
 
 function  QVectorString_mid(handle: not null QVectorStringH; pos, length:integer := -1) return QVectorStringH;
 pragma Import(C,QVectorString_mid, "QVectorString_mid");
 
 function  QVectorString_value(handle: not null QVectorStringH;i:integer) return QStringH;
 pragma Import(C,QVectorString_value, "QVectorString_value");
 
 function  QVectorString_value2(handle: not null QVectorStringH;i:integer; defaultValue:QStringH) return QStringH;
 pragma Import(C,QVectorString_value2, "QVectorString_value2");
 
 procedure QVectorString_push_back(handle: not null QVectorStringH;str:QStringH);
 pragma Import(C,QVectorString_push_back, "QVectorString_push_back");
 
 procedure QVectorString_push_front(handle: not null QVectorStringH;str:QStringH);
 pragma Import(C,QVectorString_push_front, "QVectorString_push_front");
 
 procedure QVectorString_pop_back(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_pop_back, "QVectorString_pop_back");
 
 procedure QVectorString_pop_front(handle: not null QVectorStringH);
 pragma Import(C,QVectorString_pop_front, "QVectorString_pop_front");
 
 function  QVectorString_empty(handle: not null QVectorStringH) return boolean;
 pragma Import(C,QVectorString_empty, "QVectorString_empty");
 
 function  QVectorString_front(handle: not null QVectorStringH) return QStringH;
 pragma Import(C,QVectorString_front, "QVectorString_front");
 
--------------------------------------------------------------------------------------------
 function  QVectorString_create(size:integer) return QVectorStringH;
 procedure QVectorString_insert(handle: not null QVectorStringH;i,n:integer; str:QStringH);
 procedure QVectorString_remove(handle: not null QVectorStringH;i,n:integer);
 function  QVectorString_count(handle: not null QVectorStringH) return integer;
 function  QVectorString_value(handle: not null QVectorStringH;i:integer; defaultValue:QStringH) return QStringH;

end QT.QVectorString;
