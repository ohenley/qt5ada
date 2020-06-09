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

package Qt.QIntList is

 function  QIntList_create return QIntListH;
 pragma Import(C,QIntList_create, "QIntList_create");
 
 function  QIntList_create2(list:QIntListH) return QIntListH;
 pragma Import(C,QIntList_create2, "QIntList_create2");
 
 procedure QIntList_destroy(handle: not null QIntListH);
 pragma Import(C,QIntList_destroy, "QIntList_destroy");
 
 function  QIntList_size(handle: not null QIntListH) return integer;
 pragma Import(C,QIntList_size, "QIntList_size");
 
 procedure QIntList_clear(handle: not null QIntListH);
 pragma Import(C,QIntList_clear, "QIntList_clear");
 
 function  QIntList_isEmpty(handle: not null QIntListH) return boolean;
 pragma Import(C,QIntList_isEmpty, "QIntList_isEmpty");
 
 procedure QIntList_append(handle: not null QIntListH; object:integer);
 pragma Import(C,QIntList_append, "QIntList_append");
 
 procedure QIntList_append2(handle: not null QIntListH;list: QIntListH);
 pragma Import(C,QIntList_append2, "QIntList_append2");
 
-- procedure QIntList_remove(handle: not null QIntListH; object:integer);
-- pragma Import(C,QIntList_remove, "QIntList_remove");
 
 procedure QIntList_prepend(handle: not null QIntListH; object:integer);
 pragma Import(C,QIntList_prepend, "QIntList_prepend");
 
 procedure QIntList_insert(handle: not null QIntListH; index:integer; object:integer);
 pragma Import(C,QIntList_insert, "QIntList_insert");
 
 procedure QIntList_move(handle: not null QIntListH; fromIndex,toIndex:integer);
 pragma Import(C,QIntList_move, "QIntList_move");
 
 procedure QIntList_swap(handle: not null QIntListH; fromIndex,toIndex:integer);
 pragma Import(C,QIntList_swap, "QIntList_swap");
 
 function  QIntList_at(handle: not null QIntListH; index:integer) return integer;
 pragma Import(C,QIntList_at, "QIntList_at");
 
 procedure QIntList_detach(handle: not null QIntListH);
 pragma Import(C,QIntList_detach, "QIntList_detach");
 
 procedure QIntList_reserve(handle: not null QIntListH; size:integer);
 pragma Import(C,QIntList_reserve, "QIntList_reserve");
 
 procedure QIntList_removeAt(handle: not null QIntListH;index:integer);
 pragma Import(C,QIntList_removeAt, "QIntList_removeAt");
 
 procedure QIntList_replace(handle: not null QIntListH;index:integer; object:integer);
 pragma Import(C,QIntList_replace, "QIntList_replace");
 
 function  QIntList_removeAll(handle: not null QIntListH;object:integer) return integer;
 pragma Import(C,QIntList_removeAll, "QIntList_removeAll");
 
 function  QIntList_removeOne(handle: not null QIntListH;object:integer) return boolean;
 pragma Import(C,QIntList_removeOne, "QIntList_removeOne");
 
 function  QIntList_takeAt(handle: not null QIntListH;index:integer) return integer;
 pragma Import(C,QIntList_takeAt, "QIntList_takeAt");
 
 function  QIntList_takeFirst(handle: not null QIntListH) return integer;
 pragma Import(C,QIntList_takeFirst, "QIntList_takeFirst");
 
 function  QIntList_takeLast(handle: not null QIntListH) return integer;
 pragma Import(C,QIntList_takeLast, "QIntList_takeLast");
 
 function  QIntList_indexOf(handle: not null QIntListH;object:integer; fromIndex: integer := 0) return integer;
 pragma Import(C,QIntList_indexOf, "QIntList_indexOf");
 
 function  QIntList_lastIndexOf(handle: not null QIntListH;object:integer; fromIndex: integer := -1) return integer;
 pragma Import(C,QIntList_lastIndexOf, "QIntList_lastIndexOf");
 
 function  QIntList_contains(handle: not null QIntListH;object:integer) return boolean;
 pragma Import(C,QIntList_contains, "QIntList_contains");
 
 function  QIntList_count(handle: not null QIntListH;object:integer) return integer;
 pragma Import(C,QIntList_count, "QIntList_count");
 
 function  QIntList_count2(handle: not null QIntListH) return integer;
 pragma Import(C,QIntList_count2, "QIntList_count2");

--------------------------------------------------------------------------------------------
 function  QIntList_create(list:QIntListH) return QIntListH;
 procedure QIntList_append(handle: not null QIntListH;list: QIntListH);
 function  QIntList_count(handle: not null QIntListH) return integer;

 function "+"(handle: not null QIntListH; object: integer) return QIntListH;

end Qt.QIntList;
