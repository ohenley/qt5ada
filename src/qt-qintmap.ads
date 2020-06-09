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

package Qt.QIntMap is

 function  QIntMap_create return QIntMapH;
 pragma Import(C,QIntMap_create, "QIntMap_create");
 
 procedure QIntMap_destroy(handle: not null QIntMapH);
 pragma Import(C,QIntMap_destroy, "QIntMap_destroy");
 
 function  QIntMap_create2(map:QIntMapH) return QIntMapH;
 pragma Import(C,QIntMap_create2, "QIntMap_create2");
 
 function  QIntMap_size(handle: not null QIntMapH) return integer;
 pragma Import(C,QIntMap_size, "QIntMap_size");
 
 procedure QIntMap_clear(handle: not null QIntMapH);
 pragma Import(C,QIntMap_clear, "QIntMap_clear");
 
 function  QIntMap_isEmpty(handle: not null QIntMapH) return boolean;
 pragma Import(C,QIntMap_isEmpty, "QIntMap_isEmpty");
 
 function  QIntMap_isEqual(handle: not null QIntMapH) return boolean;
 pragma Import(C,QIntMap_isEqual, "QIntMap_isEqual");
 
 procedure QIntMap_detach(handle: not null QIntMapH);
 pragma Import(C,QIntMap_detach, "QIntMap_detach");
 
 function  QIntMap_isDetached(handle: not null QIntMapH) return boolean;
 pragma Import(C,QIntMap_isDetached, "QIntMap_isDetached");
 
 procedure QIntMap_setSharable(handle: not null QIntMapH; sharable: boolean);
 pragma Import(C,QIntMap_setSharable, "QIntMap_setSharable");
 
 function  QIntMap_isSharedWith(handle: not null QIntMapH;other: QIntMapH) return boolean;
 pragma Import(C,QIntMap_isSharedWith, "QIntMap_isSharedWith");
 
-- procedure QIntMap_setInsertInOrder(handle: not null QIntMapH; ordered:boolean);
-- pragma Import(C,QIntMap_setInsertInOrder, "QIntMap_setInsertInOrder");
 
 function  QIntMap_insert(handle: not null QIntMapH; key:QObjectH; value:QObjectListH) return QIntMapH;
 pragma Import(C,QIntMap_insert, "QIntMap_insert");
 
 function  QIntMap_append(handle: not null QIntMapH; key:QObjectH; value:QObjectH) return QIntMapH;
 pragma Import(C,QIntMap_append, "QIntMap_append");

 function  QIntMap_append2(handle: not null QIntMapH; key:QObjectH; value:QObjectListH) return QIntMapH;
 pragma Import(C,QIntMap_append2, "QIntMap_append2");

 function  QIntMap_remove(handle: not null QIntMapH;key: QObjectH)  return integer;
 pragma Import(C,QIntMap_remove, "QIntMap_remove");
 
 function  QIntMap_take(handle: not null QIntMapH;key:QObjectH) return QObjectListH;
 pragma Import(C,QIntMap_take, "QIntMap_take");
 
 function  QIntMap_contains(handle: not null QIntMapH;key:QObjectH) return boolean;
 pragma Import(C,QIntMap_contains, "QIntMap_contains");
 
 function  QIntMap_key(handle: not null QIntMapH;value:QObjectListH) return QObjectH;
 pragma Import(C,QIntMap_key, "QIntMap_key");
 
 function  QIntMap_key2(handle: not null QIntMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH;
 pragma Import(C,QIntMap_key2, "QIntMap_key2");
 
 function  QIntMap_key3(handle: not null QIntMapH; index: integer) return QObjectH;
 pragma Import(C,QIntMap_key3, "QIntMap_key3");

 function  QIntMap_value(handle: not null QIntMapH;key:QObjectH) return QObjectListH;
 pragma Import(C,QIntMap_value, "QIntMap_value");
 
 function  QIntMap_value2(handle: not null QIntMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH;
 pragma Import(C,QIntMap_value2, "QIntMap_value2");
 
 function  QIntMap_values(handle: not null QIntMapH) return void_Star;
 pragma Import(C,QIntMap_values, "QIntMap_values");
 
 function  QIntMap_count(handle: not null QIntMapH;key:QObjectH) return integer;
 pragma Import(C,QIntMap_count, "QIntMap_count");
 
 function  QIntMap_count2(handle: not null QIntMapH) return integer;
 pragma Import(C,QIntMap_count2, "QIntMap_count2");

-------------------------------------------------------------------------
 function  QIntMap_create(map:QIntMapH) return QIntMapH;
 function  QIntMap_key(handle: not null QIntMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH;
 function  QIntMap_value(handle: not null QIntMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH;
 function  QIntMap_append(handle: not null QIntMapH; key:QObjectH; value:QObjectListH) return QIntMapH;
 function  QIntMap_key(handle: not null QIntMapH; index: integer) return QObjectH;
 function  QIntMap_count(handle: not null QIntMapH) return integer;

end Qt.QIntMap;
