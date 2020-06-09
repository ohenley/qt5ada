--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QVector  is

 function  QIntVector_create return QVectorH;
 pragma Import(C,QIntVector_create, "QIntVector_create");
 
 function  QIntVector_create2(size:integer) return QVectorH;
 pragma Import(C,QIntVector_create2, "QIntVector_create2");
 
 procedure QIntVector_destroy(handle:not null QVectorH);
 pragma Import(C,QIntVector_destroy, "QIntVector_destroy");
 
 procedure QIntVector_swap(handle:not null QVectorH;other:QVectorH);
 pragma Import(C,QIntVector_swap, "QIntVector_swap");
 
 function  QIntVector_size(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_size, "QIntVector_size");
 
 function  QIntVector_isEmpty(handle:not null QVectorH) return boolean;
 pragma Import(C,QIntVector_isEmpty, "QIntVector_isEmpty");
 
 procedure QIntVector_resize(handle:not null QVectorH;size:integer);
 pragma Import(C,QIntVector_resize, "QIntVector_resize");
 
 function  QIntVector_capacity(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_capacity, "QIntVector_capacity");
 
 procedure QIntVector_reserve(handle:not null QVectorH;size:integer);
 pragma Import(C,QIntVector_reserve, "QIntVector_reserve");
 
 procedure QIntVector_squeeze(handle:not null QVectorH);
 pragma Import(C,QIntVector_squeeze, "QIntVector_squeeze");
 
 procedure QIntVector_detach(handle:not null QVectorH);
 pragma Import(C,QIntVector_detach, "QIntVector_detach");
 
 function  QIntVector_isDetached(handle:not null QVectorH) return boolean;
 pragma Import(C,QIntVector_isDetached, "QIntVector_isDetached");
 
 function  QIntVector_isSharedWith(handle:not null QVectorH;other:QVectorH) return boolean;
 pragma Import(C,QIntVector_isSharedWith, "QIntVector_isSharedWith");
 
 function  QIntVector_data(handle:not null QVectorH) return integer_ptr;
 pragma Import(C,QIntVector_data, "QIntVector_data");
 
 procedure QIntVector_clear(handle:not null QVectorH);
 pragma Import(C,QIntVector_clear, "QIntVector_clear");
 
 function  QIntVector_at(handle:not null QVectorH;i:integer) return integer;
 pragma Import(C,QIntVector_at, "QIntVector_at");
 
 procedure QIntVector_append(handle:not null QVectorH;value:integer);
 pragma Import(C,QIntVector_append, "QIntVector_append");
 
 procedure QIntVector_append2(handle:not null QVectorH;value:QVectorH);
 pragma Import(C,QIntVector_append2, "QIntVector_append2");
 
 procedure QIntVector_prepend(handle:not null QVectorH;value:integer);
 pragma Import(C,QIntVector_prepend, "QIntVector_prepend");
 
 procedure QIntVector_insert(handle:not null QVectorH;i:integer;value:integer);
 pragma Import(C,QIntVector_insert, "QIntVector_insert");
 
 procedure QIntVector_insert2(handle:not null QVectorH;i:integer;count: integer;value:  integer);
 pragma Import(C,QIntVector_insert2, "QIntVector_insert2");
 
 procedure QIntVector_replace(handle:not null QVectorH;i:integer;value:  integer);
 pragma Import(C,QIntVector_replace, "QIntVector_replace");
 
 procedure QIntVector_remove(handle:not null QVectorH;i:integer);
 pragma Import(C,QIntVector_remove, "QIntVector_remove");
 
 procedure QIntVector_remove2(handle:not null QVectorH;i:integer;count: integer);
 pragma Import(C,QIntVector_remove2, "QIntVector_remove2");
 
 procedure QIntVector_removeFirst(handle:not null QVectorH);
 pragma Import(C,QIntVector_removeFirst, "QIntVector_removeFirst");
 
 procedure QIntVector_removeLast(handle:not null QVectorH);
 pragma Import(C,QIntVector_removeLast, "QIntVector_removeLast");
 
 function  QIntVector_takeFirst(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_takeFirst, "QIntVector_takeFirst");
 
 function  QIntVector_takeLast(handle:not null QVectorH)  return integer;
 pragma Import(C,QIntVector_takeLast, "QIntVector_takeLast");
 
 function  QIntVector_fill(handle:not null QVectorH;value:integer;size : integer :=  -1) return QVectorH;
 pragma Import(C,QIntVector_fill, "QIntVector_fill");
 
 function  QIntVector_indexOf(handle:not null QVectorH;value:integer;from : integer :=  0)  return integer;
 pragma Import(C,QIntVector_indexOf, "QIntVector_indexOf");
 
 function  QIntVector_lastIndexOf(handle:not null QVectorH;value:integer;from : integer :=  -1)  return integer;
 pragma Import(C,QIntVector_lastIndexOf, "QIntVector_lastIndexOf");
 
 function  QIntVector_contains(handle:not null QVectorH;value:integer)  return boolean;
 pragma Import(C,QIntVector_contains, "QIntVector_contains");
 
 procedure QIntVector_removeAt(handle:not null QVectorH;i:integer);
 pragma Import(C,QIntVector_removeAt, "QIntVector_removeAt");
 
 function  QIntVector_removeAll(handle:not null QVectorH;value:integer) return integer;
 pragma Import(C,QIntVector_removeAll, "QIntVector_removeAll");
 
 function  QIntVector_removeOne(handle:not null QVectorH;value:integer) return boolean;
 pragma Import(C,QIntVector_removeOne, "QIntVector_removeOne");
 
 function  QIntVector_length(handle:not null QVectorH)  return integer;
 pragma Import(C,QIntVector_length, "QIntVector_length");
 
 function  QIntVector_takeAt(handle:not null QVectorH;i:integer) return integer;
 pragma Import(C,QIntVector_takeAt, "QIntVector_takeAt");
 
 procedure QIntVector_move(handle:not null QVectorH;from:integer;to: integer);
 pragma Import(C,QIntVector_move, "QIntVector_move");
 
 function  QIntVector_count(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_count, "QIntVector_count");
 
 function  QIntVector_count2(handle:not null QVectorH;value:integer)  return integer;
 pragma Import(C,QIntVector_count2, "QIntVector_count2");
 
 function  QIntVector_first(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_first, "QIntVector_first");
 
 function  QIntVector_last(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_last, "QIntVector_last");
 
 function  QIntVector_startsWith(handle:not null QVectorH;value:integer) return boolean;
 pragma Import(C,QIntVector_startsWith, "QIntVector_startsWith");
 
 function  QIntVector_endsWith(handle:not null QVectorH;value:integer) return boolean;
 pragma Import(C,QIntVector_endsWith, "QIntVector_endsWith");
 
 function  QIntVector_mid(handle:not null QVectorH;pos:integer;len : integer :=  -1)  return QVectorH;
 pragma Import(C,QIntVector_mid, "QIntVector_mid");
 
 function  QIntVector_value(handle:not null QVectorH;i:integer)  return integer;
 pragma Import(C,QIntVector_value, "QIntVector_value");
 
 procedure QIntVector_push_front(handle:not null QVectorH;value:integer);
 pragma Import(C,QIntVector_push_front, "QIntVector_push_front");
 
 procedure QIntVector_pop_back(handle:not null QVectorH);
 pragma Import(C,QIntVector_pop_back, "QIntVector_pop_back");
 
 procedure QIntVector_pop_front(handle:not null QVectorH);
 pragma Import(C,QIntVector_pop_front, "QIntVector_pop_front");
 
 function  QIntVector_empty(handle:not null QVectorH) return boolean;
 pragma Import(C,QIntVector_empty, "QIntVector_empty");
 
 function  QIntVector_front(handle:not null QVectorH) return integer;
 pragma Import(C,QIntVector_front, "QIntVector_front");
 
 procedure QIntVector_shrink_to_fit(handle:not null QVectorH);
 pragma Import(C,QIntVector_shrink_to_fit, "QIntVector_shrink_to_fit");
 
 function  QIntVector_toList(handle:not null QVectorH)  return QListH;
 pragma Import(C,QIntVector_toList, "QIntVector_toList");
 
 function  QIntVector_fromList(list:not null QListH) return QVectorH;
 pragma Import(C,QIntVector_fromList, "QIntVector_fromList");
 --------------------------------------------------------------------

 function  QIntVector_create(size:integer) return QVectorH;
 procedure QIntVector_append(handle:not null QVectorH;value:QVectorH);
 procedure QIntVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  integer);
 procedure QIntVector_remove(handle:not null QVectorH;i:integer;count: integer);
 function  QIntVector_count(handle:not null QVectorH;value:integer)  return integer;
------------------------------------------------------------------------
 function  QObjectVector_create return QVectorH;
 pragma Import(C,QObjectVector_create, "QObjectVector_create");
 
 function  QObjectVector_create2(size:integer) return QVectorH;
 pragma Import(C,QObjectVector_create2, "QObjectVector_create2");
 
 procedure QObjectVector_destroy(handle:not null QVectorH);
 pragma Import(C,QObjectVector_destroy, "QObjectVector_destroy");
 
 procedure QObjectVector_swap(handle:not null QVectorH;other:QVectorH);
 pragma Import(C,QObjectVector_swap, "QObjectVector_swap");
 
 function  QObjectVector_size(handle:not null QVectorH) return integer;
 pragma Import(C,QObjectVector_size, "QObjectVector_size");
 
 function  QObjectVector_isEmpty(handle:not null QVectorH) return boolean;
 pragma Import(C,QObjectVector_isEmpty, "QObjectVector_isEmpty");
 
 procedure QObjectVector_resize(handle:not null QVectorH;size:integer);
 pragma Import(C,QObjectVector_resize, "QObjectVector_resize");
 
 function  QObjectVector_capacity(handle:not null QVectorH) return integer;
 pragma Import(C,QObjectVector_capacity, "QObjectVector_capacity");
 
 procedure QObjectVector_reserve(handle:not null QVectorH;size:integer);
 pragma Import(C,QObjectVector_reserve, "QObjectVector_reserve");
 
 procedure QObjectVector_squeeze(handle:not null QVectorH);
 pragma Import(C,QObjectVector_squeeze, "QObjectVector_squeeze");
 
 procedure QObjectVector_detach(handle:not null QVectorH);
 pragma Import(C,QObjectVector_detach, "QObjectVector_detach");
 
 function  QObjectVector_isDetached(handle:not null QVectorH) return boolean;
 pragma Import(C,QObjectVector_isDetached, "QObjectVector_isDetached");
 
 function  QObjectVector_isSharedWith(handle:not null QVectorH;other:QVectorH) return boolean;
 pragma Import(C,QObjectVector_isSharedWith, "QObjectVector_isSharedWith");
 
 function  QObjectVector_data(handle:not null QVectorH) return void_Star;
 pragma Import(C,QObjectVector_data, "QObjectVector_data");
 
 procedure QObjectVector_clear(handle:not null QVectorH);
 pragma Import(C,QObjectVector_clear, "QObjectVector_clear");
 
 function  QObjectVector_at(handle:not null QVectorH;i:integer) return QObjectH;
 pragma Import(C,QObjectVector_at, "QObjectVector_at");
 
 procedure QObjectVector_append(handle:not null QVectorH;value: QObjectH);
 pragma Import(C,QObjectVector_append, "QObjectVector_append");
 
 procedure QObjectVector_append2(handle:not null QVectorH;value: QVectorH);
 pragma Import(C,QObjectVector_append2, "QObjectVector_append2");
 
 procedure QObjectVector_prepend(handle:not null QVectorH;value: QObjectH);
 pragma Import(C,QObjectVector_prepend, "QObjectVector_prepend");
 
 procedure QObjectVector_insert(handle:not null QVectorH;i:integer;value: QObjectH);
 pragma Import(C,QObjectVector_insert, "QObjectVector_insert");
 
 procedure QObjectVector_insert2(handle:not null QVectorH;i:integer;count: integer;value:  QObjectH);
 pragma Import(C,QObjectVector_insert2, "QObjectVector_insert2");
 
 procedure QObjectVector_replace(handle:not null QVectorH;i:integer;value:  QObjectH);
 pragma Import(C,QObjectVector_replace, "QObjectVector_replace");
 
 procedure QObjectVector_remove(handle:not null QVectorH;i:integer);
 pragma Import(C,QObjectVector_remove, "QObjectVector_remove");
 
 procedure QObjectVector_remove2(handle:not null QVectorH;i:integer;count: integer);
 pragma Import(C,QObjectVector_remove2, "QObjectVector_remove2");
 
 procedure QObjectVector_removeFirst(handle:not null QVectorH);
 pragma Import(C,QObjectVector_removeFirst, "QObjectVector_removeFirst");
 
 procedure QObjectVector_removeLast(handle:not null QVectorH);
 pragma Import(C,QObjectVector_removeLast, "QObjectVector_removeLast");
 
 function  QObjectVector_takeFirst(handle:not null QVectorH) return QObjectH;
 pragma Import(C,QObjectVector_takeFirst, "QObjectVector_takeFirst");
 
 function  QObjectVector_takeLast(handle:not null QVectorH)  return QObjectH;
 pragma Import(C,QObjectVector_takeLast, "QObjectVector_takeLast");
 
 function  QObjectVector_fill(handle:not null QVectorH;value: QObjectH;size : integer :=  -1) return QVectorH;
 pragma Import(C,QObjectVector_fill, "QObjectVector_fill");
 
 function  QObjectVector_indexOf(handle:not null QVectorH;value: QObjectH;from : integer :=  0)  return integer;
 pragma Import(C,QObjectVector_indexOf, "QObjectVector_indexOf");
 
 function  QObjectVector_lastIndexOf(handle:not null QVectorH;value: QObjectH;from : integer :=  -1)  return integer;
 pragma Import(C,QObjectVector_lastIndexOf, "QObjectVector_lastIndexOf");
 
 function  QObjectVector_contains(handle:not null QVectorH;value: QObjectH)  return boolean;
 pragma Import(C,QObjectVector_contains, "QObjectVector_contains");
 
 procedure QObjectVector_removeAt(handle:not null QVectorH;i:integer);
 pragma Import(C,QObjectVector_removeAt, "QObjectVector_removeAt");
 
 function  QObjectVector_removeAll(handle:not null QVectorH;value: QObjectH) return integer;
 pragma Import(C,QObjectVector_removeAll, "QObjectVector_removeAll");
 
 function  QObjectVector_removeOne(handle:not null QVectorH;value: QObjectH) return boolean;
 pragma Import(C,QObjectVector_removeOne, "QObjectVector_removeOne");
 
 function  QObjectVector_length(handle:not null QVectorH)  return integer;
 pragma Import(C,QObjectVector_length, "QObjectVector_length");
 
 function  QObjectVector_takeAt(handle:not null QVectorH;i:integer) return QObjectH;
 pragma Import(C,QObjectVector_takeAt, "QObjectVector_takeAt");
 
 procedure QObjectVector_move(handle:not null QVectorH;from:integer;to: integer);
 pragma Import(C,QObjectVector_move, "QObjectVector_move");
 
 function  QObjectVector_count(handle:not null QVectorH) return integer;
 pragma Import(C,QObjectVector_count, "QObjectVector_count");
 
 function  QObjectVector_count2(handle:not null QVectorH;value: QObjectH)  return integer;
 pragma Import(C,QObjectVector_count2, "QObjectVector_count2");
 
 function  QObjectVector_first(handle:not null QVectorH) return QObjectH;
 pragma Import(C,QObjectVector_first, "QObjectVector_first");
 
 function  QObjectVector_last(handle:not null QVectorH) return QObjectH;
 pragma Import(C,QObjectVector_last, "QObjectVector_last");
 
 function  QObjectVector_startsWith(handle:not null QVectorH;value: QObjectH) return boolean;
 pragma Import(C,QObjectVector_startsWith, "QObjectVector_startsWith");
 
 function  QObjectVector_endsWith(handle:not null QVectorH;value: QObjectH) return boolean;
 pragma Import(C,QObjectVector_endsWith, "QObjectVector_endsWith");
 
 function  QObjectVector_mid(handle:not null QVectorH;pos:integer;len : integer :=  -1)  return QVectorH;
 pragma Import(C,QObjectVector_mid, "QObjectVector_mid");
 
 function  QObjectVector_value(handle:not null QVectorH;i:integer)  return QObjectH;
 pragma Import(C,QObjectVector_value, "QObjectVector_value");
 
 procedure QObjectVector_push_front(handle:not null QVectorH;value: QObjectH);
 pragma Import(C,QObjectVector_push_front, "QObjectVector_push_front");
 
 procedure QObjectVector_pop_back(handle:not null QVectorH);
 pragma Import(C,QObjectVector_pop_back, "QObjectVector_pop_back");
 
 procedure QObjectVector_pop_front(handle:not null QVectorH);
 pragma Import(C,QObjectVector_pop_front, "QObjectVector_pop_front");
 
 function  QObjectVector_empty(handle:not null QVectorH) return boolean;
 pragma Import(C,QObjectVector_empty, "QObjectVector_empty");
 
 function  QObjectVector_front2(handle:not null QVectorH) return QObjectH;
 pragma Import(C,QObjectVector_front2, "QObjectVector_front2");
 
 function  QObjectVector_front(handle:not null QVectorH)  return QObjectH;
 pragma Import(C,QObjectVector_front, "QObjectVector_front");
 
 function  QObjectVector_back(handle:not null QVectorH) return QObjectH;
 pragma Import(C,QObjectVector_back, "QObjectVector_back");
 
 procedure QObjectVector_shrink_to_fit(handle:not null QVectorH);
 pragma Import(C,QObjectVector_shrink_to_fit, "QObjectVector_shrink_to_fit");
 
 function  QObjectVector_toList(handle:not null QVectorH)  return QListH;
 pragma Import(C,QObjectVector_toList, "QObjectVector_toList");
 
 function  QObjectVector_fromList(list: QListH) return QVectorH;
 pragma Import(C,QObjectVector_fromList, "QObjectVector_fromList");
------------------------------------------------------------------------
 function  QObjectVector_create(size:integer) return QVectorH;
 procedure QObjectVector_append(handle:not null QVectorH;value: QVectorH);
 procedure QObjectVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  QObjectH);
 procedure QObjectVector_remove(handle:not null QVectorH;i:integer;count: integer);
 function  QObjectVector_count(handle:not null QVectorH;value: QObjectH)  return integer;

--------------------------------------------------------------------
 function  QStringVector_create return QVectorH;
 pragma Import(C,QStringVector_create, "QStringVector_create");
 
 function  QStringVector_create2(size:integer) return QVectorH;
 pragma Import(C,QStringVector_create2, "QStringVector_create2");
 
 procedure QStringVector_destroy(handle:not null QVectorH);
 pragma Import(C,QStringVector_destroy, "QStringVector_destroy");
 
 procedure QStringVector_swap(handle:not null QVectorH;other:QVectorH);
 pragma Import(C,QStringVector_swap, "QStringVector_swap");
 
 function  QStringVector_size(handle:not null QVectorH) return integer;
 pragma Import(C,QStringVector_size, "QStringVector_size");
 
 function  QStringVector_isEmpty(handle:not null QVectorH) return boolean;
 pragma Import(C,QStringVector_isEmpty, "QStringVector_isEmpty");
 
 procedure QStringVector_resize(handle:not null QVectorH;size:integer);
 pragma Import(C,QStringVector_resize, "QStringVector_resize");
 
 function  QStringVector_capacity(handle:not null QVectorH) return integer;
 pragma Import(C,QStringVector_capacity, "QStringVector_capacity");
 
 procedure QStringVector_reserve(handle:not null QVectorH;size:integer);
 pragma Import(C,QStringVector_reserve, "QStringVector_reserve");
 
 procedure QStringVector_squeeze(handle:not null QVectorH);
 pragma Import(C,QStringVector_squeeze, "QStringVector_squeeze");
 
 procedure QStringVector_detach(handle:not null QVectorH);
 pragma Import(C,QStringVector_detach, "QStringVector_detach");
 
 function  QStringVector_isDetached(handle:not null QVectorH) return boolean;
 pragma Import(C,QStringVector_isDetached, "QStringVector_isDetached");
 
 function  QStringVector_isSharedWith(handle:not null QVectorH;other:QVectorH) return boolean;
 pragma Import(C,QStringVector_isSharedWith, "QStringVector_isSharedWith");
 
 function  QStringVector_data(handle:not null QVectorH) return void_Star;
 pragma Import(C,QStringVector_data, "QStringVector_data");
 
 procedure QStringVector_clear(handle:not null QVectorH);
 pragma Import(C,QStringVector_clear, "QStringVector_clear");
 
 function  QStringVector_at(handle:not null QVectorH;i:integer) return QStringH;
 pragma Import(C,QStringVector_at, "QStringVector_at");
 
 procedure QStringVector_append(handle:not null QVectorH;value: QStringH);
 pragma Import(C,QStringVector_append, "QStringVector_append");
 
 procedure QStringVector_append2(handle:not null QVectorH;value: QVectorH);
 pragma Import(C,QStringVector_append2, "QStringVector_append2");
 
 procedure QStringVector_prepend(handle:not null QVectorH;value: QStringH);
 pragma Import(C,QStringVector_prepend, "QStringVector_prepend");
 
 procedure QStringVector_insert(handle:not null QVectorH;i:integer;value: QStringH);
 pragma Import(C,QStringVector_insert, "QStringVector_insert");
 
 procedure QStringVector_insert2(handle:not null QVectorH;i:integer;count: integer;value:  QStringH);
 pragma Import(C,QStringVector_insert2, "QStringVector_insert2");
 
 procedure QStringVector_replace(handle:not null QVectorH;i:integer;value:  QStringH);
 pragma Import(C,QStringVector_replace, "QStringVector_replace");
 
 procedure QStringVector_remove(handle:not null QVectorH;i:integer);
 pragma Import(C,QStringVector_remove, "QStringVector_remove");
 
 procedure QStringVector_remove2(handle:not null QVectorH;i:integer;count: integer);
 pragma Import(C,QStringVector_remove2, "QStringVector_remove2");
 
 procedure QStringVector_removeFirst(handle:not null QVectorH);
 pragma Import(C,QStringVector_removeFirst, "QStringVector_removeFirst");
 
 procedure QStringVector_removeLast(handle:not null QVectorH);
 pragma Import(C,QStringVector_removeLast, "QStringVector_removeLast");
 
 function  QStringVector_takeFirst(handle:not null QVectorH) return QStringH;
 pragma Import(C,QStringVector_takeFirst, "QStringVector_takeFirst");
 
 function  QStringVector_takeLast(handle:not null QVectorH)  return QStringH;
 pragma Import(C,QStringVector_takeLast, "QStringVector_takeLast");
 
 function  QStringVector_fill(handle:not null QVectorH;value: QStringH;size : integer :=  -1) return QVectorH;
 pragma Import(C,QStringVector_fill, "QStringVector_fill");
 
 function  QStringVector_indexOf(handle:not null QVectorH;value: QStringH;from : integer :=  0)  return integer;
 pragma Import(C,QStringVector_indexOf, "QStringVector_indexOf");
 
 function  QStringVector_lastIndexOf(handle:not null QVectorH;value: QStringH;from : integer :=  -1)  return integer;
 pragma Import(C,QStringVector_lastIndexOf, "QStringVector_lastIndexOf");
 
 function  QStringVector_contains(handle:not null QVectorH;value: QStringH)  return boolean;
 pragma Import(C,QStringVector_contains, "QStringVector_contains");
 
 procedure QStringVector_removeAt(handle:not null QVectorH;i:integer);
 pragma Import(C,QStringVector_removeAt, "QStringVector_removeAt");
 
 function  QStringVector_removeAll(handle:not null QVectorH;value: QStringH) return integer;
 pragma Import(C,QStringVector_removeAll, "QStringVector_removeAll");
 
 function  QStringVector_removeOne(handle:not null QVectorH;value: QStringH) return boolean;
 pragma Import(C,QStringVector_removeOne, "QStringVector_removeOne");
 
 function  QStringVector_length(handle:not null QVectorH)  return integer;
 pragma Import(C,QStringVector_length, "QStringVector_length");
 
 function  QStringVector_takeAt(handle:not null QVectorH;i:integer) return QStringH;
 pragma Import(C,QStringVector_takeAt, "QStringVector_takeAt");
 
 procedure QStringVector_move(handle:not null QVectorH;from:integer;to: integer);
 pragma Import(C,QStringVector_move, "QStringVector_move");
 
 function  QStringVector_count(handle:not null QVectorH) return integer;
 pragma Import(C,QStringVector_count, "QStringVector_count");
 
 function  QStringVector_count2(handle:not null QVectorH;value: QStringH)  return integer;
 pragma Import(C,QStringVector_count2, "QStringVector_count2");
 
 function  QStringVector_first(handle:not null QVectorH) return QStringH;
 pragma Import(C,QStringVector_first, "QStringVector_first");
 
 function  QStringVector_last(handle:not null QVectorH) return QStringH;
 pragma Import(C,QStringVector_last, "QStringVector_last");
 
 function  QStringVector_startsWith(handle:not null QVectorH;value: QStringH) return boolean;
 pragma Import(C,QStringVector_startsWith, "QStringVector_startsWith");
 
 function  QStringVector_endsWith(handle:not null QVectorH;value: QStringH) return boolean;
 pragma Import(C,QStringVector_endsWith, "QStringVector_endsWith");
 
 function  QStringVector_mid(handle:not null QVectorH;pos:integer;len : integer :=  -1)  return QVectorH;
 pragma Import(C,QStringVector_mid, "QStringVector_mid");
 
 function  QStringVector_value(handle:not null QVectorH;i:integer)  return QStringH;
 pragma Import(C,QStringVector_value, "QStringVector_value");
 
 procedure QStringVector_push_front(handle:not null QVectorH;value: QStringH);
 pragma Import(C,QStringVector_push_front, "QStringVector_push_front");
 
 procedure QStringVector_pop_back(handle:not null QVectorH);
 pragma Import(C,QStringVector_pop_back, "QStringVector_pop_back");
 
 procedure QStringVector_pop_front(handle:not null QVectorH);
 pragma Import(C,QStringVector_pop_front, "QStringVector_pop_front");
 
 function  QStringVector_empty(handle:not null QVectorH) return boolean;
 pragma Import(C,QStringVector_empty, "QStringVector_empty");
 
 function  QStringVector_front(handle:not null QVectorH) return  QStringH;
 pragma Import(C,QStringVector_front, "QStringVector_front");
 
 function  QStringVector_back(handle:not null QVectorH) return QStringH;
 pragma Import(C,QStringVector_back, "QStringVector_back");
 
 procedure QStringVector_shrink_to_fit(handle:not null QVectorH);
 pragma Import(C,QStringVector_shrink_to_fit, "QStringVector_shrink_to_fit");
 
 function  QStringVector_toList(handle:not null QVectorH)  return QListH;
 pragma Import(C,QStringVector_toList, "QStringVector_toList");
 
 function  QStringVector_fromList(list: QListH) return QVectorH;
 pragma Import(C,QStringVector_fromList, "QStringVector_fromList");
------------------------------------------------------------------ 
 function  QStringVector_create(size:integer) return QVectorH;
 procedure QStringVector_append(handle:not null QVectorH;value: QVectorH);
 procedure QStringVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  QStringH);
 procedure QStringVector_remove(handle:not null QVectorH;i:integer;count: integer);
 function  QStringVector_count(handle:not null QVectorH;value: QStringH)  return integer;
-------------------------------------------------------------------------------------------------
 function  QRealVector_create return QVectorH;
 pragma Import(C,QRealVector_create, "QRealVector_create");
 
 function  QRealVector_create2(size:integer) return QVectorH;
 pragma Import(C,QRealVector_create2, "QRealVector_create2");
 
 procedure QRealVector_destroy(handle:not null QVectorH);
 pragma Import(C,QRealVector_destroy, "QRealVector_destroy");
 
 procedure QRealVector_swap(handle:not null QVectorH;other:QVectorH);
 pragma Import(C,QRealVector_swap, "QRealVector_swap");
 
 function  QRealVector_size(handle:not null QVectorH) return integer;
 pragma Import(C,QRealVector_size, "QRealVector_size");
 
 function  QRealVector_isEmpty(handle:not null QVectorH) return boolean;
 pragma Import(C,QRealVector_isEmpty, "QRealVector_isEmpty");
 
 procedure QRealVector_resize(handle:not null QVectorH;size:integer);
 pragma Import(C,QRealVector_resize, "QRealVector_resize");
 
 function  QRealVector_capacity(handle:not null QVectorH) return integer;
 pragma Import(C,QRealVector_capacity, "QRealVector_capacity");
 
 procedure QRealVector_reserve(handle:not null QVectorH;size:integer);
 pragma Import(C,QRealVector_reserve, "QRealVector_reserve");
 
 procedure QRealVector_squeeze(handle:not null QVectorH);
 pragma Import(C,QRealVector_squeeze, "QRealVector_squeeze");
 
 procedure QRealVector_detach(handle:not null QVectorH);
 pragma Import(C,QRealVector_detach, "QRealVector_detach");
 
 function  QRealVector_isDetached(handle:not null QVectorH) return boolean;
 pragma Import(C,QRealVector_isDetached, "QRealVector_isDetached");
 
 function  QRealVector_isSharedWith(handle:not null QVectorH;other:QVectorH) return boolean;
 pragma Import(C,QRealVector_isSharedWith, "QRealVector_isSharedWith");
 
 function  QRealVector_data(handle:not null QVectorH) return void_Star;
 pragma Import(C,QRealVector_data, "QRealVector_data");
 
 procedure QRealVector_clear(handle:not null QVectorH);
 pragma Import(C,QRealVector_clear, "QRealVector_clear");
 
 function  QRealVector_at(handle:not null QVectorH;i:integer) return qreal;
 pragma Import(C,QRealVector_at, "QRealVector_at");
 
 procedure QRealVector_append(handle:not null QVectorH;value:qreal);
 pragma Import(C,QRealVector_append, "QRealVector_append");
 
 procedure QRealVector_append2(handle:not null QVectorH;value:QVectorH);
 pragma Import(C,QRealVector_append2, "QRealVector_append2");
 
 procedure QRealVector_prepend(handle:not null QVectorH;t:qreal);
 pragma Import(C,QRealVector_prepend, "QRealVector_prepend");
 
 procedure QRealVector_insert(handle:not null QVectorH;i:integer;value:qreal);
 pragma Import(C,QRealVector_insert, "QRealVector_insert");
 
 procedure QRealVector_insert2(handle:not null QVectorH;i:integer;count: integer;value:  qreal);
 pragma Import(C,QRealVector_insert2, "QRealVector_insert2");
 
 procedure QRealVector_replace(handle:not null QVectorH;i:integer;value:  qreal);
 pragma Import(C,QRealVector_replace, "QRealVector_replace");
 
 procedure QRealVector_remove(handle:not null QVectorH;i:integer);
 pragma Import(C,QRealVector_remove, "QRealVector_remove");
 
 procedure QRealVector_remove2(handle:not null QVectorH;i:integer;count: integer);
 pragma Import(C,QRealVector_remove2, "QRealVector_remove2");
 
 procedure QRealVector_removeFirst(handle:not null QVectorH);
 pragma Import(C,QRealVector_removeFirst, "QRealVector_removeFirst");
 
 procedure QRealVector_removeLast(handle:not null QVectorH);
 pragma Import(C,QRealVector_removeLast, "QRealVector_removeLast");
 
 function  QRealVector_takeFirst(handle:not null QVectorH) return qreal;
 pragma Import(C,QRealVector_takeFirst, "QRealVector_takeFirst");
 
 function  QRealVector_takeLast(handle:not null QVectorH)  return qreal;
 pragma Import(C,QRealVector_takeLast, "QRealVector_takeLast");
 
 function  QRealVector_fill(handle:not null QVectorH;value:qreal;size : int :=  -1) return QVectorH;
 pragma Import(C,QRealVector_fill, "QRealVector_fill");
 
 function  QRealVector_indexOf(handle:not null QVectorH;value:qreal;from : int :=  0)  return integer;
 pragma Import(C,QRealVector_indexOf, "QRealVector_indexOf");
 
 function  QRealVector_lastIndexOf(handle:not null QVectorH;value:qreal;from : int :=  -1)  return integer;
 pragma Import(C,QRealVector_lastIndexOf, "QRealVector_lastIndexOf");
 
 function  QRealVector_contains(handle:not null QVectorH;value:qreal)  return boolean;
 pragma Import(C,QRealVector_contains, "QRealVector_contains");
 
 procedure QRealVector_removeAt(handle:not null QVectorH;i:integer);
 pragma Import(C,QRealVector_removeAt, "QRealVector_removeAt");
 
 function  QRealVector_removeAll(handle:not null QVectorH;value:qreal) return integer;
 pragma Import(C,QRealVector_removeAll, "QRealVector_removeAll");
 
 function  QRealVector_removeOne(handle:not null QVectorH;value:qreal) return boolean;
 pragma Import(C,QRealVector_removeOne, "QRealVector_removeOne");
 
 function  QRealVector_length(handle:not null QVectorH)  return integer;
 pragma Import(C,QRealVector_length, "QRealVector_length");
 
 function  QRealVector_takeAt(handle:not null QVectorH;i:integer) return qreal;
 pragma Import(C,QRealVector_takeAt, "QRealVector_takeAt");
 
 procedure QRealVector_move(handle:not null QVectorH;from:integer;to: integer);
 pragma Import(C,QRealVector_move, "QRealVector_move");
 
 function  QRealVector_count(handle:not null QVectorH) return integer;
 pragma Import(C,QRealVector_count, "QRealVector_count");
 
 function  QRealVector_count2(handle:not null QVectorH;value:qreal)  return integer;
 pragma Import(C,QRealVector_count2, "QRealVector_count2");
 
 function  QRealVector_first(handle:not null QVectorH) return qreal;
 pragma Import(C,QRealVector_first, "QRealVector_first");
 
 function  QRealVector_last(handle:not null QVectorH) return qreal;
 pragma Import(C,QRealVector_last, "QRealVector_last");
 
 function  QRealVector_startsWith(handle:not null QVectorH;value:qreal) return boolean;
 pragma Import(C,QRealVector_startsWith, "QRealVector_startsWith");
 
 function  QRealVector_endsWith(handle:not null QVectorH;value:qreal) return boolean;
 pragma Import(C,QRealVector_endsWith, "QRealVector_endsWith");
 
 function  QRealVector_mid(handle:not null QVectorH;pos:integer;len : int :=  -1)  return QVectorH;
 pragma Import(C,QRealVector_mid, "QRealVector_mid");
 
 function  QRealVector_value(handle:not null QVectorH;i:integer)  return qreal;
 pragma Import(C,QRealVector_value, "QRealVector_value");
 
 procedure QRealVector_push_front(handle:not null QVectorH;value:qreal);
 pragma Import(C,QRealVector_push_front, "QRealVector_push_front");
 
 procedure QRealVector_pop_back(handle:not null QVectorH);
 pragma Import(C,QRealVector_pop_back, "QRealVector_pop_back");
 
 procedure QRealVector_pop_front(handle:not null QVectorH);
 pragma Import(C,QRealVector_pop_front, "QRealVector_pop_front");
 
 function  QRealVector_empty(handle:not null QVectorH) return boolean;
 pragma Import(C,QRealVector_empty, "QRealVector_empty");
 
 function  QRealVector_front(handle:not null QVectorH) return qreal;
 pragma Import(C,QRealVector_front, "QRealVector_front");
 
 procedure QRealVector_shrink_to_fit(handle:not null QVectorH);
 pragma Import(C,QRealVector_shrink_to_fit, "QRealVector_shrink_to_fit");
 
 function  QRealVector_toList(handle:not null QVectorH)  return QListH;
 pragma Import(C,QRealVector_toList, "QRealVector_toList");
 
 function  QRealVector_fromList(list:QListH) return QVectorH;
 pragma Import(C,QRealVector_fromList, "QRealVector_fromList");
 ----------------------------------------------------------------------
 function  QRealVector_create(size:integer) return QVectorH;
 procedure QRealVector_append(handle:not null QVectorH;value:QVectorH);
 procedure QRealVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  qreal);
 procedure QRealVector_remove(handle:not null QVectorH;i:integer;count: integer);


end; 
