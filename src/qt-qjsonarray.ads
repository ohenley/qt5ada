-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QJsonArray is

 function  QJsonArray_create return QJsonArrayH;
 pragma Import(C,QJsonArray_create, "QJsonArray_create");
 
 function  QJsonArray_create2(other:QJsonArrayH) return QJsonArrayH;
 pragma Import(C,QJsonArray_create2, "QJsonArray_create2");
 
 procedure QJsonArray_destroy(handle:not null QJsonArrayH);
 pragma Import(C,QJsonArray_destroy, "QJsonArray_destroy");
 
 function  QJsonArray_toVariantList(handle:not null QJsonArrayH) return QVariantListH;
 pragma Import(C,QJsonArray_toVariantList, "QJsonArray_toVariantList");
 
 function  QJsonArray_size(handle:not null QJsonArrayH) return integer;
 pragma Import(C,QJsonArray_size, "QJsonArray_size");
 
 function  QJsonArray_count(handle:not null QJsonArrayH)  return integer;
 pragma Import(C,QJsonArray_count, "QJsonArray_count");
 
 function  QJsonArray_isEmpty(handle:not null QJsonArrayH) return boolean;
 pragma Import(C,QJsonArray_isEmpty, "QJsonArray_isEmpty");
 
 function  QJsonArray_at(handle:not null QJsonArrayH;i:integer) return QJsonValueH;
 pragma Import(C,QJsonArray_at, "QJsonArray_at");
 
 function  QJsonArray_first(handle:not null QJsonArrayH) return QJsonValueH;
 pragma Import(C,QJsonArray_first, "QJsonArray_first");
 
 function  QJsonArray_last(handle:not null QJsonArrayH) return QJsonValueH;
 pragma Import(C,QJsonArray_last, "QJsonArray_last");
 
 procedure QJsonArray_prepend(handle:not null QJsonArrayH;value: QJsonValueH);
 pragma Import(C,QJsonArray_prepend, "QJsonArray_prepend");
 
 procedure QJsonArray_append(handle:not null QJsonArrayH;value: QJsonValueH);
 pragma Import(C,QJsonArray_append, "QJsonArray_append");
 
 procedure QJsonArray_removeAt(handle:not null QJsonArrayH;i:integer);
 pragma Import(C,QJsonArray_removeAt, "QJsonArray_removeAt");
 
 function  QJsonArray_takeAt(handle:not null QJsonArrayH;i:integer) return QJsonValueH;
 pragma Import(C,QJsonArray_takeAt, "QJsonArray_takeAt");
 
 procedure QJsonArray_removeFirst(handle:not null QJsonArrayH);
 pragma Import(C,QJsonArray_removeFirst, "QJsonArray_removeFirst");
 
 procedure QJsonArray_removeLast(handle:not null QJsonArrayH);
 pragma Import(C,QJsonArray_removeLast, "QJsonArray_removeLast");
 
 procedure QJsonArray_insert(handle:not null QJsonArrayH;i:integer;value:QJsonValueH);
 pragma Import(C,QJsonArray_insert, "QJsonArray_insert");
 
 procedure QJsonArray_replace(handle:not null QJsonArrayH;i:integer;value:QJsonValueH);
 pragma Import(C,QJsonArray_replace, "QJsonArray_replace");
 
 function  QJsonArray_contains(handle:not null QJsonArrayH;element: QJsonValueH) return boolean;
 pragma Import(C,QJsonArray_contains, "QJsonArray_contains");
 
 function  QJsonArray_equal(handle:not null QJsonArrayH;other: QJsonArrayH) return boolean;
 pragma Import(C,QJsonArray_equal, "QJsonArray_equal");
 
 function  QJsonArray_notequal(handle:not null QJsonArrayH;other: QJsonArrayH) return boolean;
 pragma Import(C,QJsonArray_notequal, "QJsonArray_notequal");
 
 function  QJsonArray_fromStringList(list:QStringListH) return QJsonArrayH;
 pragma Import(C,QJsonArray_fromStringList, "QJsonArray_fromStringList");
 
 function  QJsonArray_fromVariantList(list:QVariantListH) return QJsonArrayH;
 pragma Import(C,QJsonArray_fromVariantList, "QJsonArray_fromVariantList");

 function  QJsonArray_create(other:QJsonArrayH) return QJsonArrayH;

end;
