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

package Qt.QByteArrayList is

 function  QByteArrayList_create return QByteArrayListH;
 pragma Import(C,QByteArrayList_create, "QByteArrayList_create");
 
 function  QByteArrayList_create2(list:QByteArrayListH) return QByteArrayListH;
 pragma Import(C,QByteArrayList_create2, "QByteArrayList_create2");
 
 procedure QByteArrayList_destroy(handle: not null QByteArrayListH);
 pragma Import(C,QByteArrayList_destroy, "QByteArrayList_destroy");
 
 function  QByteArrayList_size(handle: not null QByteArrayListH) return integer;
 pragma Import(C,QByteArrayList_size, "QByteArrayList_size");
 
 procedure QByteArrayList_clear(handle: not null QByteArrayListH);
 pragma Import(C,QByteArrayList_clear, "QByteArrayList_clear");
 
 function  QByteArrayList_isEmpty(handle: not null QByteArrayListH) return boolean;
 pragma Import(C,QByteArrayList_isEmpty, "QByteArrayList_isEmpty");
 
 procedure QByteArrayList_append(handle: not null QByteArrayListH; object:QByteArrayH);
 pragma Import(C,QByteArrayList_append, "QByteArrayList_append");
 
 procedure QByteArrayList_append2(handle: not null QByteArrayListH;list: QByteArrayListH);
 pragma Import(C,QByteArrayList_append2, "QByteArrayList_append2");
 
-- procedure QByteArrayList_remove(handle: not null QByteArrayListH; object:QByteArrayH);
-- pragma Import(C,QByteArrayList_remove, "QByteArrayList_remove");
 
 procedure QByteArrayList_prepend(handle: not null QByteArrayListH; object:QByteArrayH);
 pragma Import(C,QByteArrayList_prepend, "QByteArrayList_prepend");
 
 procedure QByteArrayList_insert(handle: not null QByteArrayListH; index:integer; object:QByteArrayH);
 pragma Import(C,QByteArrayList_insert, "QByteArrayList_insert");
 
 procedure QByteArrayList_move(handle: not null QByteArrayListH; fromIndex,toIndex:integer);
 pragma Import(C,QByteArrayList_move, "QByteArrayList_move");
 
 procedure QByteArrayList_swap(handle: not null QByteArrayListH; fromIndex,toIndex:integer);
 pragma Import(C,QByteArrayList_swap, "QByteArrayList_swap");
 
 function  QByteArrayList_at(handle: not null QByteArrayListH; index:integer) return QByteArrayH;
 pragma Import(C,QByteArrayList_at, "QByteArrayList_at");
 
 procedure QByteArrayList_detach(handle: not null QByteArrayListH);
 pragma Import(C,QByteArrayList_detach, "QByteArrayList_detach");
 
 procedure QByteArrayList_reserve(handle: not null QByteArrayListH; size:integer);
 pragma Import(C,QByteArrayList_reserve, "QByteArrayList_reserve");
 
 procedure QByteArrayList_removeAt(handle: not null QByteArrayListH;index:integer);
 pragma Import(C,QByteArrayList_removeAt, "QByteArrayList_removeAt");
 
 procedure QByteArrayList_replace(handle: not null QByteArrayListH;index:integer; object:QByteArrayH);
 pragma Import(C,QByteArrayList_replace, "QByteArrayList_replace");
 
 function  QByteArrayList_removeAll(handle: not null QByteArrayListH;object:QByteArrayH) return integer;
 pragma Import(C,QByteArrayList_removeAll, "QByteArrayList_removeAll");
 
 function  QByteArrayList_removeOne(handle: not null QByteArrayListH;object:QByteArrayH) return boolean;
 pragma Import(C,QByteArrayList_removeOne, "QByteArrayList_removeOne");
 
 function  QByteArrayList_takeAt(handle: not null QByteArrayListH;index:integer) return QByteArrayH;
 pragma Import(C,QByteArrayList_takeAt, "QByteArrayList_takeAt");
 
 function  QByteArrayList_takeFirst(handle: not null QByteArrayListH) return QByteArrayH;
 pragma Import(C,QByteArrayList_takeFirst, "QByteArrayList_takeFirst");
 
 function  QByteArrayList_takeLast(handle: not null QByteArrayListH) return QByteArrayH;
 pragma Import(C,QByteArrayList_takeLast, "QByteArrayList_takeLast");
 
 function  QByteArrayList_indexOf(handle: not null QByteArrayListH;object:QByteArrayH; fromIndex: integer := 0) return integer;
 pragma Import(C,QByteArrayList_indexOf, "QByteArrayList_indexOf");
 
 function  QByteArrayList_lastIndexOf(handle: not null QByteArrayListH;object:QByteArrayH; fromIndex: integer := -1) return integer;
 pragma Import(C,QByteArrayList_lastIndexOf, "QByteArrayList_lastIndexOf");
 
 function  QByteArrayList_contains(handle: not null QByteArrayListH;object:QByteArrayH) return boolean;
 pragma Import(C,QByteArrayList_contains, "QByteArrayList_contains");
 
 function  QByteArrayList_count(handle: not null QByteArrayListH;object:QByteArrayH) return integer;
 pragma Import(C,QByteArrayList_count, "QByteArrayList_count");
 
 function  QByteArrayList_count2(handle: not null QByteArrayListH) return integer;
 pragma Import(C,QByteArrayList_count2, "QByteArrayList_count2");

--------------------------------------------------------------------------------------------
 function  QByteArrayList_create(list:QByteArrayListH) return QByteArrayListH;
 procedure QByteArrayList_append(handle: not null QByteArrayListH;list: QByteArrayListH);
 function  QByteArrayList_count(handle: not null QByteArrayListH) return integer;
 function  QByteArrayList_toStringlist(handle: not null QByteArrayListH) return QStringListH;

end Qt.QByteArrayList;
