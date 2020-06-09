--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015,2019            บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2014,2015,2019                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QObjectList is

 function  QObjectList_create return QObjectListH;
 pragma Import(C,QObjectList_create, "QObjectList_create");
 
 function  QObjectList_create2(list:QObjectListH) return QObjectListH;
 pragma Import(C,QObjectList_create2, "QObjectList_create2");
 
 procedure QObjectList_destroy(handle: not null QObjectListH);
 pragma Import(C,QObjectList_destroy, "QObjectList_destroy");
 
 function  QObjectList_size(handle: not null QObjectListH) return integer;
 pragma Import(C,QObjectList_size, "QObjectList_size");
 
 procedure QObjectList_clear(handle: not null QObjectListH);
 pragma Import(C,QObjectList_clear, "QObjectList_clear");
 
 function  QObjectList_isEmpty(handle: not null QObjectListH) return boolean;
 pragma Import(C,QObjectList_isEmpty, "QObjectList_isEmpty");
 
 procedure QObjectList_append(handle: not null QObjectListH; object:QObjectH);
 pragma Import(C,QObjectList_append, "QObjectList_append");
 
 procedure QObjectList_append2(handle: not null QObjectListH;list: QObjectListH);
 pragma Import(C,QObjectList_append2, "QObjectList_append2");
 
-- procedure QObjectList_remove(handle: not null QObjectListH; object:QObjectH);
-- pragma Import(C,QObjectList_remove, "QObjectList_remove");
 
 procedure QObjectList_prepend(handle: not null QObjectListH; object:QObjectH);
 pragma Import(C,QObjectList_prepend, "QObjectList_prepend");
 
 procedure QObjectList_insert(handle: not null QObjectListH; index:integer; object:QObjectH);
 pragma Import(C,QObjectList_insert, "QObjectList_insert");
 
 procedure QObjectList_move(handle: not null QObjectListH; fromIndex,toIndex:integer);
 pragma Import(C,QObjectList_move, "QObjectList_move");
 
 procedure QObjectList_swap(handle: not null QObjectListH; fromIndex,toIndex:integer);
 pragma Import(C,QObjectList_swap, "QObjectList_swap");
 
 function  QObjectList_at(handle: not null QObjectListH; index:integer) return QObjectH;
 pragma Import(C,QObjectList_at, "QObjectList_at");
 
 function  QObjectList_first(handle: not null QObjectListH) return QObjectH;
 pragma Import(C,QObjectList_first, "QObjectList_first");
 
 function  QObjectList_last(handle: not null QObjectListH) return QObjectH;
 pragma Import(C,QObjectList_last, "QObjectList_last");
 
 procedure QObjectList_detach(handle: not null QObjectListH);
 pragma Import(C,QObjectList_detach, "QObjectList_detach");
 
 procedure QObjectList_reserve(handle: not null QObjectListH; size:integer);
 pragma Import(C,QObjectList_reserve, "QObjectList_reserve");
 
 procedure QObjectList_removeAt(handle: not null QObjectListH;index:integer);
 pragma Import(C,QObjectList_removeAt, "QObjectList_removeAt");
 
 procedure QObjectList_replace(handle: not null QObjectListH;index:integer; object:QObjectH);
 pragma Import(C,QObjectList_replace, "QObjectList_replace");
 
 function  QObjectList_removeAll(handle: not null QObjectListH;object:QObjectH) return integer;
 pragma Import(C,QObjectList_removeAll, "QObjectList_removeAll");
 
 function  QObjectList_removeOne(handle: not null QObjectListH;object:QObjectH) return boolean;
 pragma Import(C,QObjectList_removeOne, "QObjectList_removeOne");
 
 function  QObjectList_takeAt(handle: not null QObjectListH;index:integer) return QObjectH;
 pragma Import(C,QObjectList_takeAt, "QObjectList_takeAt");
 
 function  QObjectList_takeFirst(handle: not null QObjectListH) return QObjectH;
 pragma Import(C,QObjectList_takeFirst, "QObjectList_takeFirst");
 
 function  QObjectList_takeLast(handle: not null QObjectListH) return QObjectH;
 pragma Import(C,QObjectList_takeLast, "QObjectList_takeLast");
 
 function  QObjectList_indexOf(handle: not null QObjectListH;object:QObjectH; fromIndex: integer := 0) return integer;
 pragma Import(C,QObjectList_indexOf, "QObjectList_indexOf");
 
 function  QObjectList_lastIndexOf(handle: not null QObjectListH;object:QObjectH; fromIndex: integer := -1) return integer;
 pragma Import(C,QObjectList_lastIndexOf, "QObjectList_lastIndexOf");
 
 function  QObjectList_contains(handle: not null QObjectListH;object:QObjectH) return boolean;
 pragma Import(C,QObjectList_contains, "QObjectList_contains");
 
 function  QObjectList_count(handle: not null QObjectListH;object:QObjectH) return integer;
 pragma Import(C,QObjectList_count, "QObjectList_count");
 
 function  QObjectList_count2(handle: not null QObjectListH) return integer;
 pragma Import(C,QObjectList_count2, "QObjectList_count2");

------------------------------------------------------------------------
 function  QMutableObjectListIterator_create(parent:QObjectListH) return QIteratorH;
 pragma Import(C,QMutableObjectListIterator_create, "QMutableObjectListIterator_create");
 
 procedure QMutableObjectListIterator_toFront(handle: not null QIteratorH);
 pragma Import(C,QMutableObjectListIterator_toFront, "QMutableObjectListIterator_toFront");
 
 procedure QMutableObjectListIterator_toBack(handle: not null QIteratorH);
 pragma Import(C,QMutableObjectListIterator_toBack, "QMutableObjectListIterator_toBack");
 
 function  QMutableObjectListIterator_hasNext(handle: not null QIteratorH) return boolean;
 pragma Import(C,QMutableObjectListIterator_hasNext, "QMutableObjectListIterator_hasNext");
 
 function  QMutableObjectListIterator_next(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QMutableObjectListIterator_next, "QMutableObjectListIterator_next");
 
 function  QMutableObjectListIterator_peekNext(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QMutableObjectListIterator_peekNext, "QMutableObjectListIterator_peekNext");
 
 function  QMutableObjectListIterator_hasPrevious(handle: not null QIteratorH) return boolean;
 pragma Import(C,QMutableObjectListIterator_hasPrevious, "QMutableObjectListIterator_hasPrevious");
 
 function  QMutableObjectListIterator_previous(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QMutableObjectListIterator_previous, "QMutableObjectListIterator_previous");
 
 function  QMutableObjectListIterator_peekPrevious(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QMutableObjectListIterator_peekPrevious, "QMutableObjectListIterator_peekPrevious");
 
 procedure QMutableObjectListIterator_remove(handle: not null QIteratorH);
 pragma Import(C,QMutableObjectListIterator_remove, "QMutableObjectListIterator_remove");
 
 procedure QMutableObjectListIterator_setValue(handle: not null QIteratorH;value:QObjectH);
 pragma Import(C,QMutableObjectListIterator_setValue, "QMutableObjectListIterator_setValue");
 
 function  QMutableObjectListIterator_value(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QMutableObjectListIterator_value, "QMutableObjectListIterator_value");
 
 procedure QMutableObjectListIterator_insert(handle: not null QIteratorH;value:QObjectH);
 pragma Import(C,QMutableObjectListIterator_insert, "QMutableObjectListIterator_insert");
 
 function  QMutableObjectListIterator_findNext(handle: not null QIteratorH;value:QObjectH) return boolean;
 pragma Import(C,QMutableObjectListIterator_findNext, "QMutableObjectListIterator_findNext");
 
 function  QMutableObjectListIterator_findPrevious(handle: not null QIteratorH;value:QObjectH) return boolean;
 pragma Import(C,QMutableObjectListIterator_findPrevious, "QMutableObjectListIterator_findPrevious");

------------------------------------------------------------------------
 function  QObjectListIterator_create(parent:QObjectListH) return QIteratorH;
 pragma Import(C,QObjectListIterator_create, "QObjectListIterator_create");
 
 procedure QObjectListIterator_toFront(handle: not null QIteratorH);
 pragma Import(C,QObjectListIterator_toFront, "QObjectListIterator_toFront");
 
 procedure QObjectListIterator_toBack(handle: not null QIteratorH);
 pragma Import(C,QObjectListIterator_toBack, "QObjectListIterator_toBack");
 
 function  QObjectListIterator_hasNext(handle: not null QIteratorH) return boolean;
 pragma Import(C,QObjectListIterator_hasNext, "QObjectListIterator_hasNext");
 
 function  QObjectListIterator_next(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QObjectListIterator_next, "QObjectListIterator_next");
 
 function  QObjectListIterator_peekNext(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QObjectListIterator_peekNext, "QObjectListIterator_peekNext");
 
 function  QObjectListIterator_hasPrevious(handle: not null QIteratorH) return boolean;
 pragma Import(C,QObjectListIterator_hasPrevious, "QObjectListIterator_hasPrevious");
 
 function  QObjectListIterator_previous(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QObjectListIterator_previous, "QObjectListIterator_previous");
 
 function  QObjectListIterator_peekPrevious(handle: not null QIteratorH) return QObjectH;
 pragma Import(C,QObjectListIterator_peekPrevious, "QObjectListIterator_peekPrevious");
 
 function  QObjectListIterator_findNext(handle: not null QIteratorH;value:QObjectH) return boolean;
 pragma Import(C,QObjectListIterator_findNext, "QObjectListIterator_findNext");
 
 function  QObjectListIterator_findPrevious(handle: not null QIteratorH;value:QObjectH) return boolean;
 pragma Import(C,QObjectListIterator_findPrevious, "QObjectListIterator_findPrevious");

 procedure QObjectList_detachShared(handle:not null QObjectListH);
 pragma Import(C,QObjectList_detachShared, "QObjectList_detachShared");
 
 function  QObjectList_isDetached(handle:not null QObjectListH) return boolean;
 pragma Import(C,QObjectList_isDetached, "QObjectList_isDetached");
 
 function  QObjectList_isSharedWith(handle:not null QObjectListH;other: QObjectListH) return boolean;
 pragma Import(C,QObjectList_isSharedWith, "QObjectList_isSharedWith");
 
 function  QObjectList_length(handle:not null QObjectListH) return integer;
 pragma Import(C,QObjectList_length, "QObjectList_length");
 
 procedure QObjectList_removeFirst(handle:not null QObjectListH);
 pragma Import(C,QObjectList_removeFirst, "QObjectList_removeFirst");
 
 procedure QObjectList_removeLast(handle:not null QObjectListH);
 pragma Import(C,QObjectList_removeLast, "QObjectList_removeLast");
 
 function  QObjectList_startsWith(handle:not null QObjectListH;value: QObjectH)  return boolean;
 pragma Import(C,QObjectList_startsWith, "QObjectList_startsWith");
 
 function  QObjectList_endsWith(handle:not null QObjectListH;value: QObjectH)  return boolean;
 pragma Import(C,QObjectList_endsWith, "QObjectList_endsWith");
 
 function  QObjectList_mid(handle:not null QObjectListH;pos:integer;length : integer :=  -1) return QObjectListH;
 pragma Import(C,QObjectList_mid, "QObjectList_mid");
 
 function  QObjectList_value2(handle:not null QObjectListH;i:integer;defaultValue:  QObjectH) return QObjectH;
 pragma Import(C,QObjectList_value2, "QObjectList_value2");
 
 procedure QObjectList_push_back(handle:not null QObjectListH;value: QObjectH);
 pragma Import(C,QObjectList_push_back, "QObjectList_push_back");
 
 procedure QObjectList_push_front(handle:not null QObjectListH;value: QObjectH);
 pragma Import(C,QObjectList_push_front, "QObjectList_push_front");
 
 function  QObjectList_front(handle:not null QObjectListH)  return QObjectH;
 pragma Import(C,QObjectList_front, "QObjectList_front");
 
 function  QObjectList_back(handle:not null QObjectListH) return QObjectH;
 pragma Import(C,QObjectList_back, "QObjectList_back");
 
 procedure QObjectList_pop_front(handle:not null QObjectListH);
 pragma Import(C,QObjectList_pop_front, "QObjectList_pop_front");
 
 procedure QObjectList_pop_back(handle:not null QObjectListH);
 pragma Import(C,QObjectList_pop_back, "QObjectList_pop_back");
 
 function  QObjectList_empty(handle:not null QObjectListH)  return boolean;
 pragma Import(C,QObjectList_empty, "QObjectList_empty");
 
 function  QObjectList_toVector(handle:not null QObjectListH) return QVectorH;
 pragma Import(C,QObjectList_toVector, "QObjectList_toVector");
 
 function  QObjectList_toSet(handle:not null QObjectListH) return QSetH;
 pragma Import(C,QObjectList_toSet, "QObjectList_toSet");
 
 function  QObjectList_fromVector(vector:QVectorH) return QObjectListH;
 pragma Import(C,QObjectList_fromVector, "QObjectList_fromVector");
 
 function  QObjectList_fromSet(set: QSetH) return QObjectListH;
 pragma Import(C,QObjectList_fromSet, "QObjectList_fromSet");
 
-----------------------------------------------------------------------------
 function  QObjectList_create(list:QObjectListH) return QObjectListH;
 procedure QObjectList_append(handle: not null QObjectListH;list: QObjectListH);
 function  QObjectList_count(handle: not null QObjectListH) return integer;
 function  QObjectList_value(handle:not null QObjectListH;i:integer;defaultValue:  QObjectH) return QObjectH;

end Qt.QObjectList;
