--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QVariantHash is

 function  QVariantHash_create return QVariantHashH;
 pragma Import(C,QVariantHash_create, "QVariantHash_create");
 
 function  QVariantHash_create2(other:QVariantHashH) return QVariantHashH;
 pragma Import(C,QVariantHash_create2, "QVariantHash_create2");
 
 procedure QVariantHash_destroy(handle:not null QVariantHashH);
 pragma Import(C,QVariantHash_destroy, "QVariantHash_destroy");
 
 procedure QVariantHash_swap(handle:not null QVariantHashH;other:QVariantHashH);
 pragma Import(C,QVariantHash_swap, "QVariantHash_swap");
 
 function  QVariantHash_eq(handle:not null QVariantHashH;other:QVariantHashH) return boolean;
 pragma Import(C,QVariantHash_eq, "QVariantHash_eq");
 
 function  QVariantHash_ne(handle:not null QVariantHashH;other:QVariantHashH) return boolean;
 pragma Import(C,QVariantHash_ne, "QVariantHash_ne");
 
 procedure QVariantHash_assign(handle:not null QVariantHashH;key:QStringH;value:QVariantH);
 pragma Import(C,QVariantHash_assign, "QVariantHash_assign");
 
 function  QVariantHash_size(handle:not null QVariantHashH) return integer;
 pragma Import(C,QVariantHash_size, "QVariantHash_size");
 
 function  QVariantHash_isEmpty(handle:not null QVariantHashH) return boolean;
 pragma Import(C,QVariantHash_isEmpty, "QVariantHash_isEmpty");
 
 function  QVariantHash_capacity(handle:not null QVariantHashH) return integer;
 pragma Import(C,QVariantHash_capacity, "QVariantHash_capacity");
 
 procedure QVariantHash_reserve(handle:not null QVariantHashH;size:integer);
 pragma Import(C,QVariantHash_reserve, "QVariantHash_reserve");
 
 procedure QVariantHash_squeeze(handle:not null QVariantHashH);
 pragma Import(C,QVariantHash_squeeze, "QVariantHash_squeeze");
 
 procedure QVariantHash_detach(handle:not null QVariantHashH);
 pragma Import(C,QVariantHash_detach, "QVariantHash_detach");
 
 function  QVariantHash_isDetached(handle:not null QVariantHashH) return boolean;
 pragma Import(C,QVariantHash_isDetached, "QVariantHash_isDetached");
 
 procedure QVariantHash_setSharable(handle:not null QVariantHashH;sharable:boolean);
 pragma Import(C,QVariantHash_setSharable, "QVariantHash_setSharable");
 
 function  QVariantHash_isSharedWith(handle:not null QVariantHashH;other:QVariantHashH) return boolean;
 pragma Import(C,QVariantHash_isSharedWith, "QVariantHash_isSharedWith");
 
 procedure QVariantHash_clear(handle:not null QVariantHashH);
 pragma Import(C,QVariantHash_clear, "QVariantHash_clear");
 
 function  QVariantHash_remove(handle:not null QVariantHashH;key:QStringH) return integer;
 pragma Import(C,QVariantHash_remove, "QVariantHash_remove");
 
 function  QVariantHash_take(handle:not null QVariantHashH;key:QStringH) return QVariantH;
 pragma Import(C,QVariantHash_take, "QVariantHash_take");
 
 function  QVariantHash_contains(handle:not null QVariantHashH;key:QStringH) return boolean;
 pragma Import(C,QVariantHash_contains, "QVariantHash_contains");
 
 function  QVariantHash_key(handle:not null QVariantHashH;value: QVariantH) return QStringH;
 pragma Import(C,QVariantHash_key, "QVariantHash_key");
 
 function  QVariantHash_value(handle:not null QVariantHashH;key:QStringH) return QVariantH;
 pragma Import(C,QVariantHash_value, "QVariantHash_value");
 
 function  QVariantHash_uniqueKeys(handle:not null QVariantHashH) return QStringListH;
 pragma Import(C,QVariantHash_uniqueKeys, "QVariantHash_uniqueKeys");
 
 function  QVariantHash_keys(handle:not null QVariantHashH) return QStringListH;
 pragma Import(C,QVariantHash_keys, "QVariantHash_keys");
 
 function  QVariantHash_keys2(handle:not null QVariantHashH;value:QVariantH) return QStringListH;
 pragma Import(C,QVariantHash_keys2, "QVariantHash_keys2");
 
 function  QVariantHash_values(handle:not null QVariantHashH) return QVariantListH;
 pragma Import(C,QVariantHash_values, "QVariantHash_values");
 
 function  QVariantHash_values2(handle:not null QVariantHashH;key:QStringH) return QVariantListH;
 pragma Import(C,QVariantHash_values2, "QVariantHash_values2");
 
 function  QVariantHash_count(handle:not null QVariantHashH) return integer;
 pragma Import(C,QVariantHash_count, "QVariantHash_count");
 
 function  QVariantHash_count2(handle:not null QVariantHashH;key:QStringH) return integer;
 pragma Import(C,QVariantHash_count2, "QVariantHash_count2");
 
 procedure QVariantHash_assign2(handle:not null QVariantHashH;key:QStringH;value:QVariantHashH);
 pragma Import(C,QVariantHash_assign2, "QVariantHash_assign2");


-------------------------------------------------------------------------------
function  QVariantHash_create(other:QVariantHashH) return QVariantHashH;
function  QVariantHash_keys(handle:not null QVariantHashH;value:QVariantH) return QStringListH;
function  QVariantHash_values(handle:not null QVariantHashH;key:QStringH) return QVariantListH;
function  QVariantHash_count(handle:not null QVariantHashH;key:QStringH) return integer;
procedure QVariantHash_assign(handle:not null QVariantHashH;key:QStringH;value:QVariantHashH);


end;
