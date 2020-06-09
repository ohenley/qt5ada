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

package Qt.QVariantList is

 function  QVariantList_create return QVariantListH;
 pragma Import(C,QVariantList_create, "QVariantList_create");
 
 function  QVariantList_create2(list:QVariantListH) return QVariantListH;
 pragma Import(C,QVariantList_create2, "QVariantList_create2");
 
 procedure QVariantList_destroy(handle: not null QVariantListH);
 pragma Import(C,QVariantList_destroy, "QVariantList_destroy");
 
 function  QVariantList_size(handle: not null QVariantListH) return integer;
 pragma Import(C,QVariantList_size, "QVariantList_size");
 
 procedure QVariantList_clear(handle: not null QVariantListH);
 pragma Import(C,QVariantList_clear, "QVariantList_clear");
 
 function  QVariantList_isEmpty(handle: not null QVariantListH) return boolean;
 pragma Import(C,QVariantList_isEmpty, "QVariantList_isEmpty");
 
 procedure QVariantList_append(handle: not null QVariantListH; object:QVariantH);
 pragma Import(C,QVariantList_append, "QVariantList_append");
 
 procedure QVariantList_append2(handle: not null QVariantListH;list: QVariantListH);
 pragma Import(C,QVariantList_append2, "QVariantList_append2");
 
-- procedure QVariantList_remove(handle: not null QVariantListH; object:QVariantH);
-- pragma Import(C,QVariantList_remove, "QVariantList_remove");
 
 procedure QVariantList_prepend(handle: not null QVariantListH; object:QVariantH);
 pragma Import(C,QVariantList_prepend, "QVariantList_prepend");
 
 procedure QVariantList_insert(handle: not null QVariantListH; index:integer; object:QVariantH);
 pragma Import(C,QVariantList_insert, "QVariantList_insert");
 
 procedure QVariantList_move(handle: not null QVariantListH; fromIndex,toIndex:integer);
 pragma Import(C,QVariantList_move, "QVariantList_move");
 
 procedure QVariantList_swap(handle: not null QVariantListH; fromIndex,toIndex:integer);
 pragma Import(C,QVariantList_swap, "QVariantList_swap");
 
 function  QVariantList_at(handle: not null QVariantListH; index:integer) return QVariantH;
 pragma Import(C,QVariantList_at, "QVariantList_at");
 
 procedure QVariantList_detach(handle: not null QVariantListH);
 pragma Import(C,QVariantList_detach, "QVariantList_detach");
 
 procedure QVariantList_reserve(handle: not null QVariantListH; size:integer);
 pragma Import(C,QVariantList_reserve, "QVariantList_reserve");
 
 procedure QVariantList_removeAt(handle: not null QVariantListH;index:integer);
 pragma Import(C,QVariantList_removeAt, "QVariantList_removeAt");
 
 procedure QVariantList_replace(handle: not null QVariantListH;index:integer; object:QVariantH);
 pragma Import(C,QVariantList_replace, "QVariantList_replace");
 
 function  QVariantList_removeAll(handle: not null QVariantListH;object:QVariantH) return integer;
 pragma Import(C,QVariantList_removeAll, "QVariantList_removeAll");
 
 function  QVariantList_removeOne(handle: not null QVariantListH;object:QVariantH) return boolean;
 pragma Import(C,QVariantList_removeOne, "QVariantList_removeOne");
 
 function  QVariantList_takeAt(handle: not null QVariantListH;index:integer) return QVariantH;
 pragma Import(C,QVariantList_takeAt, "QVariantList_takeAt");
 
 function  QVariantList_takeFirst(handle: not null QVariantListH) return QVariantH;
 pragma Import(C,QVariantList_takeFirst, "QVariantList_takeFirst");
 
 function  QVariantList_takeLast(handle: not null QVariantListH) return QVariantH;
 pragma Import(C,QVariantList_takeLast, "QVariantList_takeLast");
 
 function  QVariantList_indexOf(handle: not null QVariantListH;object:QVariantH; fromIndex: integer := 0) return integer;
 pragma Import(C,QVariantList_indexOf, "QVariantList_indexOf");
 
 function  QVariantList_lastIndexOf(handle: not null QVariantListH;object:QVariantH; fromIndex: integer := -1) return integer;
 pragma Import(C,QVariantList_lastIndexOf, "QVariantList_lastIndexOf");
 
 function  QVariantList_contains(handle: not null QVariantListH;object:QVariantH) return boolean;
 pragma Import(C,QVariantList_contains, "QVariantList_contains");
 
 function  QVariantList_count(handle: not null QVariantListH;object:QVariantH) return integer;
 pragma Import(C,QVariantList_count, "QVariantList_count");
 
 function  QVariantList_count2(handle: not null QVariantListH) return integer;
 pragma Import(C,QVariantList_count2, "QVariantList_count2");

--------------------------------------------------------------------------------------------
 function  QVariantList_create(list:QVariantListH) return QVariantListH;
 procedure QVariantList_append(handle: not null QVariantListH;list: QVariantListH);
 function  QVariantList_count(handle: not null QVariantListH) return integer;

end Qt.QVariantList;
