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

package Qt.QStringMap is

 function  QStringMap_create return QStringMapH;
 pragma Import(C,QStringMap_create, "QStringMap_create");
 
 procedure QStringMap_destroy(handle: not null QStringMapH);
 pragma Import(C,QStringMap_destroy, "QStringMap_destroy");
 
 function  QStringMap_create2(map:QStringMapH) return QStringMapH;
 pragma Import(C,QStringMap_create2, "QStringMap_create2");
 
 function  QStringMap_size(handle: not null QStringMapH) return integer;
 pragma Import(C,QStringMap_size, "QStringMap_size");
 
 procedure QStringMap_clear(handle: not null QStringMapH);
 pragma Import(C,QStringMap_clear, "QStringMap_clear");
 
 function  QStringMap_isEmpty(handle: not null QStringMapH) return boolean;
 pragma Import(C,QStringMap_isEmpty, "QStringMap_isEmpty");
 
 function  QStringMap_isEqual(handle: not null QStringMapH) return boolean;
 pragma Import(C,QStringMap_isEqual, "QStringMap_isEqual");
 
 procedure QStringMap_detach(handle: not null QStringMapH);
 pragma Import(C,QStringMap_detach, "QStringMap_detach");
 
 function  QStringMap_isDetached(handle: not null QStringMapH) return boolean;
 pragma Import(C,QStringMap_isDetached, "QStringMap_isDetached");
 
 procedure QStringMap_setSharable(handle: not null QStringMapH; sharable: boolean);
 pragma Import(C,QStringMap_setSharable, "QStringMap_setSharable");
 
 function  QStringMap_isSharedWith(handle: not null QStringMapH;other: QStringMapH) return boolean;
 pragma Import(C,QStringMap_isSharedWith, "QStringMap_isSharedWith");
 
-- procedure QStringMap_setInsertInOrder(handle: not null QStringMapH; ordered:boolean);
-- pragma Import(C,QStringMap_setInsertInOrder, "QStringMap_setInsertInOrder");
 
 function  QStringMap_insert(handle: not null QStringMapH; key:QStringH; value:QObjectListH) return QStringMapH;
 pragma Import(C,QStringMap_insert, "QStringMap_insert");
 
 function  QStringMap_append(handle: not null QStringMapH; key:QStringH; value:QObjectH) return QStringMapH;
 pragma Import(C,QStringMap_append, "QStringMap_append");

 function  QStringMap_append2(handle: not null QStringMapH; key:QStringH; value:QObjectListH) return QStringMapH;
 pragma Import(C,QStringMap_append2, "QStringMap_append2");

 function  QStringMap_remove(handle: not null QStringMapH;key: QStringH)  return integer;
 pragma Import(C,QStringMap_remove, "QStringMap_remove");
 
 function  QStringMap_take(handle: not null QStringMapH;key:QStringH) return QObjectListH;
 pragma Import(C,QStringMap_take, "QStringMap_take");
 
 function  QStringMap_contains(handle: not null QStringMapH;key:QStringH) return boolean;
 pragma Import(C,QStringMap_contains, "QStringMap_contains");
 
 function  QStringMap_key(handle: not null QStringMapH;value:QObjectListH) return QStringH;
 pragma Import(C,QStringMap_key, "QStringMap_key");
 
 function  QStringMap_key2(handle: not null QStringMapH;value:QObjectListH; defaultKey:QStringH) return QStringH;
 pragma Import(C,QStringMap_key2, "QStringMap_key2");
 
 function  QStringMap_key3(handle: not null QStringMapH; index: integer) return QStringH;
 pragma Import(C,QStringMap_key3, "QStringMap_key3");

 function  QStringMap_value(handle: not null QStringMapH;key:QStringH) return QObjectListH;
 pragma Import(C,QStringMap_value, "QStringMap_value");
 
 function  QStringMap_value2(handle: not null QStringMapH;key:QStringH; defaultValue:QObjectListH) return QObjectListH;
 pragma Import(C,QStringMap_value2, "QStringMap_value2");
 
 function  QStringMap_uniqueKeys(handle: not null QStringMapH) return QStringListH;
 pragma Import(C,QStringMap_uniqueKeys, "QStringMap_uniqueKeys");
 
 function  QStringMap_keys(handle: not null QStringMapH) return QStringListH;
 pragma Import(C,QStringMap_keys, "QStringMap_keys");
 
 function  QStringMap_keys2(handle: not null QStringMapH;value:QObjectListH) return QStringListH;
 pragma Import(C,QStringMap_keys2, "QStringMap_keys2");
 
 function  QStringMap_values(handle: not null QStringMapH) return void_Star;
 pragma Import(C,QStringMap_values, "QStringMap_values");
 
 function  QStringMap_values2(handle: not null QStringMapH;key:QStringH) return void_Star;
 pragma Import(C,QStringMap_values2, "QStringMap_values2");
 
 function  QStringMap_count(handle: not null QStringMapH;key:QStringH) return integer;
 pragma Import(C,QStringMap_count, "QStringMap_count");
 
 function  QStringMap_count2(handle: not null QStringMapH) return integer;
 pragma Import(C,QStringMap_count2, "QStringMap_count2");

-------------------------------------------------------------------------
 function  QStringMap_create(map:QStringMapH) return QStringMapH;
 function  QStringMap_key(handle: not null QStringMapH;value:QObjectListH; defaultKey:QStringH) return QStringH;
 function  QStringMap_value(handle: not null QStringMapH;key:QStringH; defaultValue:QObjectListH) return QObjectListH;
 function  QStringMap_keys(handle: not null QStringMapH;value:QObjectListH) return QStringListH;
 function  QStringMap_values(handle: not null QStringMapH;key:QStringH) return void_Star;
 function  QStringMap_append(handle: not null QStringMapH; key:QStringH; value:QObjectListH) return QStringMapH;
 function  QStringMap_key(handle: not null QStringMapH; index: integer) return QStringH;
 function  QStringMap_count(handle: not null QStringMapH) return integer;

end Qt.QStringMap;
