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

package Qt.QObjectMap is

 function  QObjectMap_create return QObjectMapH;
 pragma Import(C,QObjectMap_create, "QObjectMap_create");
 
 procedure QObjectMap_destroy(handle: not null QObjectMapH);
 pragma Import(C,QObjectMap_destroy, "QObjectMap_destroy");
 
 function  QObjectMap_create2(map:QObjectMapH) return QObjectMapH;
 pragma Import(C,QObjectMap_create2, "QObjectMap_create2");
 
 function  QObjectMap_size(handle: not null QObjectMapH) return integer;
 pragma Import(C,QObjectMap_size, "QObjectMap_size");
 
 procedure QObjectMap_clear(handle: not null QObjectMapH);
 pragma Import(C,QObjectMap_clear, "QObjectMap_clear");
 
 function  QObjectMap_isEmpty(handle: not null QObjectMapH) return boolean;
 pragma Import(C,QObjectMap_isEmpty, "QObjectMap_isEmpty");
 
 function  QObjectMap_isEqual(handle: not null QObjectMapH;other: QObjectMapH) return boolean;
 pragma Import(C,QObjectMap_isEqual, "QObjectMap_isEqual");
 
 procedure QObjectMap_detach(handle: not null QObjectMapH);
 pragma Import(C,QObjectMap_detach, "QObjectMap_detach");
 
 function  QObjectMap_isDetached(handle: not null QObjectMapH) return boolean;
 pragma Import(C,QObjectMap_isDetached, "QObjectMap_isDetached");
 
 procedure QObjectMap_setSharable(handle: not null QObjectMapH; sharable: boolean);
 pragma Import(C,QObjectMap_setSharable, "QObjectMap_setSharable");
 
 function  QObjectMap_isSharedWith(handle: not null QObjectMapH;other: QObjectMapH) return boolean;
 pragma Import(C,QObjectMap_isSharedWith, "QObjectMap_isSharedWith");
 
-- procedure QObjectMap_setInsertInOrder(handle: not null QObjectMapH; ordered:boolean);
-- pragma Import(C,QObjectMap_setInsertInOrder, "QObjectMap_setInsertInOrder");
 
 function  QObjectMap_insert(handle: not null QObjectMapH; key:QObjectH; value:QObjectListH) return QObjectMapH;
 pragma Import(C,QObjectMap_insert, "QObjectMap_insert");
 
 function  QObjectMap_append(handle: not null QObjectMapH; key:QObjectH; value:QObjectH) return QObjectMapH;
 pragma Import(C,QObjectMap_append, "QObjectMap_append");

 function  QObjectMap_append2(handle: not null QObjectMapH; key:QObjectH; value:QObjectListH) return QObjectMapH;
 pragma Import(C,QObjectMap_append2, "QObjectMap_append2");

 function  QObjectMap_remove(handle: not null QObjectMapH;key: QObjectH)  return integer;
 pragma Import(C,QObjectMap_remove, "QObjectMap_remove");
 
 function  QObjectMap_take(handle: not null QObjectMapH;key:QObjectH) return QObjectListH;
 pragma Import(C,QObjectMap_take, "QObjectMap_take");
 
 function  QObjectMap_contains(handle: not null QObjectMapH;key:QObjectH) return boolean;
 pragma Import(C,QObjectMap_contains, "QObjectMap_contains");
 
 function  QObjectMap_key(handle: not null QObjectMapH;value:QObjectListH) return QObjectH;
 pragma Import(C,QObjectMap_key, "QObjectMap_key");
 
 function  QObjectMap_key2(handle: not null QObjectMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH;
 pragma Import(C,QObjectMap_key2, "QObjectMap_key2");
 
 function  QObjectMap_key3(handle: not null QObjectMapH; index: integer) return QObjectH;
 pragma Import(C,QObjectMap_key3, "QObjectMap_key3");

 function  QObjectMap_value(handle: not null QObjectMapH;key:QObjectH) return QObjectListH;
 pragma Import(C,QObjectMap_value, "QObjectMap_value");
 
 function  QObjectMap_value2(handle: not null QObjectMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH;
 pragma Import(C,QObjectMap_value2, "QObjectMap_value2");
 
 function  QObjectMap_uniqueKeys(handle: not null QObjectMapH) return QObjectListH;
 pragma Import(C,QObjectMap_uniqueKeys, "QObjectMap_uniqueKeys");
 
 function  QObjectMap_keys(handle: not null QObjectMapH) return QObjectListH;
 pragma Import(C,QObjectMap_keys, "QObjectMap_keys");
 
 function  QObjectMap_keys2(handle: not null QObjectMapH;value:QObjectListH) return QObjectListH;
 pragma Import(C,QObjectMap_keys2, "QObjectMap_keys2");
 
 function  QObjectMap_values(handle: not null QObjectMapH) return void_Star;
 pragma Import(C,QObjectMap_values, "QObjectMap_values");
 
 function  QObjectMap_values2(handle: not null QObjectMapH;key:QObjectH) return void_Star;
 pragma Import(C,QObjectMap_values2, "QObjectMap_values2");
 
 function  QObjectMap_count(handle: not null QObjectMapH;key:QObjectH) return integer;
 pragma Import(C,QObjectMap_count, "QObjectMap_count");
 
 function  QObjectMap_count2(handle: not null QObjectMapH) return integer;
 pragma Import(C,QObjectMap_count2, "QObjectMap_count2");

-------------------------------------------------------------------------
 function  QObjectMap_create(map:QObjectMapH) return QObjectMapH;
 function  QObjectMap_key(handle: not null QObjectMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH;
 function  QObjectMap_value(handle: not null QObjectMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH;
 function  QObjectMap_keys(handle: not null QObjectMapH;value:QObjectListH) return QObjectListH;
 function  QObjectMap_values(handle: not null QObjectMapH;key:QObjectH) return void_Star;
 function  QObjectMap_append(handle: not null QObjectMapH; key:QObjectH; value:QObjectListH) return QObjectMapH;
 function  QObjectMap_key(handle: not null QObjectMapH; index: integer) return QObjectH;
 function  QObjectMap_count(handle: not null QObjectMapH) return integer;

end Qt.QObjectMap;
