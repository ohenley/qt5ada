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

package QT.QStackString  is

 function  QStackstring_create return QStackStringH;
 pragma Import(C,QStackstring_create, "QStackstring_create");
 
 procedure QStackstring_destroy(handle: not null QStackStringH);
 pragma Import(C,QStackstring_destroy, "QStackstring_destroy");
 
 function  QStackstring_size(handle: not null QStackStringH) return integer;
 pragma Import(C,QStackstring_size, "QStackstring_size");
 
 function  QStackstring_isEmpty(handle: not null QStackStringH) return boolean;
 pragma Import(C,QStackstring_isEmpty, "QStackstring_isEmpty");
 
 procedure QStackstring_resize(handle: not null QStackStringH;size:integer);
 pragma Import(C,QStackstring_resize, "QStackstring_resize");
 
 function  QStackstring_capacity(handle: not null QStackStringH) return integer;
 pragma Import(C,QStackstring_capacity, "QStackstring_capacity");
 
 procedure QStackstring_reserve(handle: not null QStackStringH;size:integer);
 pragma Import(C,QStackstring_reserve, "QStackstring_reserve");
 
 procedure QStackstring_squeeze(handle: not null QStackStringH);
 pragma Import(C,QStackstring_squeeze, "QStackstring_squeeze");
 
 procedure QStackstring_detach(handle: not null QStackStringH);
 pragma Import(C,QStackstring_detach, "QStackstring_detach");
 
 function  QStackstring_isDetached(handle: not null QStackStringH) return boolean;
 pragma Import(C,QStackstring_isDetached, "QStackstring_isDetached");
 
 procedure QStackstring_setSharable(handle: not null QStackStringH; sharable:boolean);
 pragma Import(C,QStackstring_setSharable, "QStackstring_setSharable");
 
 function  QStackstring_isSharedWith(handle: not null QStackStringH; other:QStackStringH) return boolean;
 pragma Import(C,QStackstring_isSharedWith, "QStackstring_isSharedWith");
 
 function  QStackstring_data(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_data, "QStackstring_data");
 
 function  QStackstring_constData(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_constData, "QStackstring_constData");
 
 procedure QStackstring_clear(handle: not null QStackStringH);
 pragma Import(C,QStackstring_clear, "QStackstring_clear");
 
 function  QStackstring_at(handle: not null QStackStringH;i:integer) return QStringH;
 pragma Import(C,QStackstring_at, "QStackstring_at");
 
 procedure QStackstring_append(handle: not null QStackStringH;str:QStringH);
 pragma Import(C,QStackstring_append, "QStackstring_append");
 
 procedure QStackstring_prepend(handle: not null QStackStringH;str:QStringH);
 pragma Import(C,QStackstring_prepend, "QStackstring_prepend");
 
 procedure QStackstring_insert(handle: not null QStackStringH;i:integer; str:QStringH);
 pragma Import(C,QStackstring_insert, "QStackstring_insert");
 
 procedure QStackstring_insert2(handle: not null QStackStringH;i,n:integer; str:QStringH);
 pragma Import(C,QStackstring_insert2, "QStackstring_insert2");
 
 procedure QStackstring_replace(handle: not null QStackStringH;i:integer; str:QStringH);
 pragma Import(C,QStackstring_replace, "QStackstring_replace");
 
 procedure QStackstring_remove(handle: not null QStackStringH;i:integer);
 pragma Import(C,QStackstring_remove, "QStackstring_remove");
 
 procedure QStackstring_remove2(handle: not null QStackStringH;i,n:integer);
 pragma Import(C,QStackstring_remove2, "QStackstring_remove2");
 
 function  QStackstring_indexOf(handle: not null QStackStringH; str:QStringH;  from:integer := 0) return integer;
 pragma Import(C,QStackstring_indexOf, "QStackstring_indexOf");
 
 function  QStackstring_lastIndexOf(handle: not null QStackStringH;str:QStringH; from:integer := -1) return integer;
 pragma Import(C,QStackstring_lastIndexOf, "QStackstring_lastIndexOf");
 
 function  QStackstring_contains(handle: not null QStackStringH;str:QStringH) return boolean;
 pragma Import(C,QStackstring_contains, "QStackstring_contains");
 
 function  QStackstring_count(handle: not null QStackStringH;str:QStringH) return integer;
 pragma Import(C,QStackstring_count, "QStackstring_count");
 
 function  QStackstring_count2(handle: not null QStackStringH) return integer;
 pragma Import(C,QStackstring_count2, "QStackstring_count2");
 
 function  QStackstring_first(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_first, "QStackstring_first");
 
 function  QStackstring_last(handle: not null QStackStringH) return QStringH ;
 pragma Import(C,QStackstring_last, "QStackstring_last");
 
 function  QStackstring_startsWith(handle: not null QStackStringH;str:QStringH) return boolean;
 pragma Import(C,QStackstring_startsWith, "QStackstring_startsWith");
 
 function  QStackstring_endsWith(handle: not null QStackStringH;str:QStringH) return boolean;
 pragma Import(C,QStackstring_endsWith, "QStackstring_endsWith");
 
 function  QStackstring_value(handle: not null QStackStringH;i:integer) return QStringH;
 pragma Import(C,QStackstring_value, "QStackstring_value");
 
 function  QStackstring_value2(handle: not null QStackStringH;i:integer; defaultValue:QStringH) return QStringH;
 pragma Import(C,QStackstring_value2, "QStackstring_value2");
 
 procedure QStackstring_push_back(handle: not null QStackStringH;str:QStringH);
 pragma Import(C,QStackstring_push_back, "QStackstring_push_back");
 
 procedure QStackstring_push_front(handle: not null QStackStringH;str:QStringH);
 pragma Import(C,QStackstring_push_front, "QStackstring_push_front");
 
 procedure QStackstring_pop_back(handle: not null QStackStringH);
 pragma Import(C,QStackstring_pop_back, "QStackstring_pop_back");
 
 procedure QStackstring_pop_front(handle: not null QStackStringH);
 pragma Import(C,QStackstring_pop_front, "QStackstring_pop_front");
 
 function  QStackstring_empty(handle: not null QStackStringH) return boolean;
 pragma Import(C,QStackstring_empty, "QStackstring_empty");
 
 function  QStackstring_front(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_front, "QStackstring_front");

 procedure QStackstring_push(handle: not null QStackStringH;str:QStringH);
 pragma Import(C,QStackstring_push, "QStackstring_push");
 
 function  QStackstring_pop(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_pop, "QStackstring_pop");
 
 function  QStackstring_top(handle: not null QStackStringH) return QStringH;
 pragma Import(C,QStackstring_top, "QStackstring_top");
 
--------------------------------------------------------------------------------------------
 procedure QStackstring_insert(handle: not null QStackStringH;i,n:integer; str:QStringH);
 procedure QStackstring_remove(handle: not null QStackStringH;i,n:integer);
 function  QStackstring_count(handle: not null QStackStringH) return integer;
 function  QStackstring_value(handle: not null QStackStringH;i:integer; defaultValue:QStringH) return QStringH;

end QT.QStackString;
