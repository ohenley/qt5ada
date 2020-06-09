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

package Qt.QModelIndexList is

 function  QModelIndexList_create return QModelIndexListH;
 pragma Import(C,QModelIndexList_create, "QModelIndexList_create");
 
 function  QModelIndexList_create2(list:QModelIndexListH) return QModelIndexListH;
 pragma Import(C,QModelIndexList_create2, "QModelIndexList_create2");
 
 procedure QModelIndexList_destroy(handle: not null QModelIndexListH);
 pragma Import(C,QModelIndexList_destroy, "QModelIndexList_destroy");
 
 function  QModelIndexList_size(handle: not null QModelIndexListH) return integer;
 pragma Import(C,QModelIndexList_size, "QModelIndexList_size");
 
 procedure QModelIndexList_clear(handle: not null QModelIndexListH);
 pragma Import(C,QModelIndexList_clear, "QModelIndexList_clear");
 
 function  QModelIndexList_isEmpty(handle: not null QModelIndexListH) return boolean;
 pragma Import(C,QModelIndexList_isEmpty, "QModelIndexList_isEmpty");
 
 procedure QModelIndexList_append(handle: not null QModelIndexListH; object:QModelIndexH);
 pragma Import(C,QModelIndexList_append, "QModelIndexList_append");
 
 procedure QModelIndexList_append2(handle: not null QModelIndexListH;list: QModelIndexListH);
 pragma Import(C,QModelIndexList_append2, "QModelIndexList_append2");
 
-- procedure QModelIndexList_remove(handle: not null QModelIndexListH; object:QModelIndexH);
-- pragma Import(C,QModelIndexList_remove, "QModelIndexList_remove");
 
 procedure QModelIndexList_prepend(handle: not null QModelIndexListH; object:QModelIndexH);
 pragma Import(C,QModelIndexList_prepend, "QModelIndexList_prepend");
 
 procedure QModelIndexList_insert(handle: not null QModelIndexListH; index:integer; object:QModelIndexH);
 pragma Import(C,QModelIndexList_insert, "QModelIndexList_insert");
 
 procedure QModelIndexList_move(handle: not null QModelIndexListH; fromIndex,toIndex:integer);
 pragma Import(C,QModelIndexList_move, "QModelIndexList_move");
 
 procedure QModelIndexList_swap(handle: not null QModelIndexListH; fromIndex,toIndex:integer);
 pragma Import(C,QModelIndexList_swap, "QModelIndexList_swap");
 
 function  QModelIndexList_at(handle: not null QModelIndexListH; index:integer) return QModelIndexH;
 pragma Import(C,QModelIndexList_at, "QModelIndexList_at");
 
 procedure QModelIndexList_detach(handle: not null QModelIndexListH);
 pragma Import(C,QModelIndexList_detach, "QModelIndexList_detach");
 
 procedure QModelIndexList_reserve(handle: not null QModelIndexListH; size:integer);
 pragma Import(C,QModelIndexList_reserve, "QModelIndexList_reserve");
 
 procedure QModelIndexList_removeAt(handle: not null QModelIndexListH;index:integer);
 pragma Import(C,QModelIndexList_removeAt, "QModelIndexList_removeAt");
 
 procedure QModelIndexList_replace(handle: not null QModelIndexListH;index:integer; object:QModelIndexH);
 pragma Import(C,QModelIndexList_replace, "QModelIndexList_replace");
 
 function  QModelIndexList_removeAll(handle: not null QModelIndexListH;object:QModelIndexH) return integer;
 pragma Import(C,QModelIndexList_removeAll, "QModelIndexList_removeAll");
 
 function  QModelIndexList_removeOne(handle: not null QModelIndexListH;object:QModelIndexH) return boolean;
 pragma Import(C,QModelIndexList_removeOne, "QModelIndexList_removeOne");
 
 function  QModelIndexList_takeAt(handle: not null QModelIndexListH;index:integer) return QModelIndexH;
 pragma Import(C,QModelIndexList_takeAt, "QModelIndexList_takeAt");
 
 function  QModelIndexList_takeFirst(handle: not null QModelIndexListH) return QModelIndexH;
 pragma Import(C,QModelIndexList_takeFirst, "QModelIndexList_takeFirst");
 
 function  QModelIndexList_takeLast(handle: not null QModelIndexListH) return QModelIndexH;
 pragma Import(C,QModelIndexList_takeLast, "QModelIndexList_takeLast");
 
 function  QModelIndexList_indexOf(handle: not null QModelIndexListH;object:QModelIndexH; fromIndex: integer := 0) return integer;
 pragma Import(C,QModelIndexList_indexOf, "QModelIndexList_indexOf");
 
 function  QModelIndexList_lastIndexOf(handle: not null QModelIndexListH;object:QModelIndexH; fromIndex: integer := -1) return integer;
 pragma Import(C,QModelIndexList_lastIndexOf, "QModelIndexList_lastIndexOf");
 
 function  QModelIndexList_contains(handle: not null QModelIndexListH;object:QModelIndexH) return boolean;
 pragma Import(C,QModelIndexList_contains, "QModelIndexList_contains");
 
 function  QModelIndexList_count(handle: not null QModelIndexListH;object:QModelIndexH) return integer;
 pragma Import(C,QModelIndexList_count, "QModelIndexList_count");
 
 function  QModelIndexList_count2(handle: not null QModelIndexListH) return integer;
 pragma Import(C,QModelIndexList_count2, "QModelIndexList_count2");

--------------------------------------------------------------------------------------------
 function  QModelIndexList_create(list:QModelIndexListH) return QModelIndexListH;
 procedure QModelIndexList_append(handle: not null QModelIndexListH;list: QModelIndexListH);
 function  QModelIndexList_count(handle: not null QModelIndexListH) return integer;

end Qt.QModelIndexList;
