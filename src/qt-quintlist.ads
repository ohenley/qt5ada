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

package Qt.QUintList is

 function  QUintList_create return QUintListH;
 pragma Import(C,QUintList_create, "QUintList_create");
 
 function  QUintList_create2(list:QUintListH) return QUintListH;
 pragma Import(C,QUintList_create2, "QUintList_create2");
 
 procedure QUintList_destroy(handle: not null QUintListH);
 pragma Import(C,QUintList_destroy, "QUintList_destroy");
 
 function  QUintList_size(handle: not null QUintListH) return integer;
 pragma Import(C,QUintList_size, "QUintList_size");
 
 procedure QUintList_clear(handle: not null QUintListH);
 pragma Import(C,QUintList_clear, "QUintList_clear");
 
 function  QUintList_isEmpty(handle: not null QUintListH) return boolean;
 pragma Import(C,QUintList_isEmpty, "QUintList_isEmpty");
 
 procedure QUintList_append(handle: not null QUintListH; object:quint);
 pragma Import(C,QUintList_append, "QUintList_append");
 
 procedure QUintList_append2(handle: not null QUintListH;list: QUintListH);
 pragma Import(C,QUintList_append2, "QUintList_append2");
 
-- procedure QUintList_remove(handle: not null QUintListH; object:quint);
-- pragma Import(C,QUintList_remove, "QUintList_remove");
 
 procedure QUintList_prepend(handle: not null QUintListH; object:quint);
 pragma Import(C,QUintList_prepend, "QUintList_prepend");
 
 procedure QUintList_insert(handle: not null QUintListH; index:integer; object:quint);
 pragma Import(C,QUintList_insert, "QUintList_insert");
 
 procedure QUintList_move(handle: not null QUintListH; fromIndex,toIndex:integer);
 pragma Import(C,QUintList_move, "QUintList_move");
 
 procedure QUintList_swap(handle: not null QUintListH; fromIndex,toIndex:integer);
 pragma Import(C,QUintList_swap, "QUintList_swap");
 
 function  QUintList_at(handle: not null QUintListH; index:integer) return quint;
 pragma Import(C,QUintList_at, "QUintList_at");
 
 procedure QUintList_detach(handle: not null QUintListH);
 pragma Import(C,QUintList_detach, "QUintList_detach");
 
 procedure QUintList_reserve(handle: not null QUintListH; size:integer);
 pragma Import(C,QUintList_reserve, "QUintList_reserve");
 
 procedure QUintList_removeAt(handle: not null QUintListH;index:integer);
 pragma Import(C,QUintList_removeAt, "QUintList_removeAt");
 
 procedure QUintList_replace(handle: not null QUintListH;index:integer; object:quint);
 pragma Import(C,QUintList_replace, "QUintList_replace");
 
 function  QUintList_removeAll(handle: not null QUintListH;object:quint) return integer;
 pragma Import(C,QUintList_removeAll, "QUintList_removeAll");
 
 function  QUintList_removeOne(handle: not null QUintListH;object:quint) return boolean;
 pragma Import(C,QUintList_removeOne, "QUintList_removeOne");
 
 function  QUintList_takeAt(handle: not null QUintListH;index:integer) return quint;
 pragma Import(C,QUintList_takeAt, "QUintList_takeAt");
 
 function  QUintList_takeFirst(handle: not null QUintListH) return quint;
 pragma Import(C,QUintList_takeFirst, "QUintList_takeFirst");
 
 function  QUintList_takeLast(handle: not null QUintListH) return quint;
 pragma Import(C,QUintList_takeLast, "QUintList_takeLast");
 
 function  QUintList_indexOf(handle: not null QUintListH;object:quint; fromIndex: integer := 0) return integer;
 pragma Import(C,QUintList_indexOf, "QUintList_indexOf");
 
 function  QUintList_lastIndexOf(handle: not null QUintListH;object:quint; fromIndex: integer := -1) return integer;
 pragma Import(C,QUintList_lastIndexOf, "QUintList_lastIndexOf");
 
 function  QUintList_contains(handle: not null QUintListH;object:quint) return boolean;
 pragma Import(C,QUintList_contains, "QUintList_contains");
 
 function  QUintList_count(handle: not null QUintListH;object:quint) return integer;
 pragma Import(C,QUintList_count, "QUintList_count");
 
 function  QUintList_count2(handle: not null QUintListH) return integer;
 pragma Import(C,QUintList_count2, "QUintList_count2");

--------------------------------------------------------------------------------------------
 function  QUintList_create(list:QUintListH) return QUintListH;
 procedure QUintList_append(handle: not null QUintListH;list: QUintListH);
 function  QUintList_count(handle: not null QUintListH) return integer;

 function "+"(handle: not null QUintListH; object: quint) return QUintListH;

end Qt.QUintList;
