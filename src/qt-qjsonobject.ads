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

package Qt.QJsonObject is

 function  QJsonObject_create return QJsonObjectH;
 pragma Import(C,QJsonObject_create, "QJsonObject_create");
 
 function  QJsonObject_create2(other:QJsonObjectH) return QJsonObjectH;
 pragma Import(C,QJsonObject_create2, "QJsonObject_create2");
 
 procedure QJsonObject_destroy(handle:not null QJsonObjectH);
 pragma Import(C,QJsonObject_destroy, "QJsonObject_destroy");
 
 function  QJsonObject_toVariantMap(handle:not null QJsonObjectH) return QVariantMapH;
 pragma Import(C,QJsonObject_toVariantMap, "QJsonObject_toVariantMap");
 
 function  QJsonObject_toVariantHash(handle:not null QJsonObjectH) return QVariantHashH;
 pragma Import(C,QJsonObject_toVariantHash, "QJsonObject_toVariantHash");
 
 function  QJsonObject_keys(handle:not null QJsonObjectH) return QStringListH;
 pragma Import(C,QJsonObject_keys, "QJsonObject_keys");
 
 function  QJsonObject_size(handle:not null QJsonObjectH) return integer;
 pragma Import(C,QJsonObject_size, "QJsonObject_size");
 
 function  QJsonObject_count(handle:not null QJsonObjectH) return integer;
 pragma Import(C,QJsonObject_count, "QJsonObject_count");
 
 function  QJsonObject_length(handle:not null QJsonObjectH) return integer;
 pragma Import(C,QJsonObject_length, "QJsonObject_length");
 
 function  QJsonObject_isEmpty(handle:not null QJsonObjectH) return boolean;
 pragma Import(C,QJsonObject_isEmpty, "QJsonObject_isEmpty");
 
 function  QJsonObject_value(handle:not null QJsonObjectH;key:QStringH) return QJsonValueH;
 pragma Import(C,QJsonObject_value, "QJsonObject_value");
 
 function  QJsonObject_value2(handle:not null QJsonObjectH;key:QLatin1StringH) return QJsonValueH;
 pragma Import(C,QJsonObject_value2, "QJsonObject_value2");
 
 procedure QJsonObject_remove(handle:not null QJsonObjectH;key:QStringH);
 pragma Import(C,QJsonObject_remove, "QJsonObject_remove");
 
 function  QJsonObject_take(handle:not null QJsonObjectH;key:QStringH) return QJsonValueH;
 pragma Import(C,QJsonObject_take, "QJsonObject_take");
 
 function  QJsonObject_contains(handle:not null QJsonObjectH;key:QStringH) return boolean;
 pragma Import(C,QJsonObject_contains, "QJsonObject_contains");
 
 function  QJsonObject_contains2(handle:not null QJsonObjectH;key:QLatin1StringH) return boolean;
 pragma Import(C,QJsonObject_contains2, "QJsonObject_contains2");
 
 function  QJsonObject_equal(handle:not null QJsonObjectH;other:QJsonObjectH) return boolean;
 pragma Import(C,QJsonObject_equal, "QJsonObject_equal");
 
 function  QJsonObject_notequal(handle:not null QJsonObjectH;other:QJsonObjectH) return boolean;
 pragma Import(C,QJsonObject_notequal, "QJsonObject_notequal");
 
 function  QJsonObject_fromVariantMap(map:QVariantMapH) return QJsonObjectH;
 pragma Import(C,QJsonObject_fromVariantMap, "QJsonObject_fromVariantMap");
 
 function  QJsonObject_fromVariantHash(handle:not null QJsonObjectH;map:QVariantHashH) return QJsonObjectH;
 pragma Import(C,QJsonObject_fromVariantHash, "QJsonObject_fromVariantHash");
 
 function  QJsonObject_objectFromString(handle:not null QJsonObjectH;str:QStringH) return QJsonObjectH;
 pragma Import(C,QJsonObject_objectFromString, "QJsonObject_objectFromString");
 
 function  QJsonObject_objectFromFile(handle:not null QJsonObjectH;fileName:QStringH) return QJsonObjectH;
 pragma Import(C,QJsonObject_objectFromFile, "QJsonObject_objectFromFile");
 
 function  QJson_fromXML(fileName : QStringH) return QByteArrayH;
 pragma Import(C,QJson_fromXML, "QJson_fromXML");

 function  QJsonObject_create(other:QJsonObjectH) return QJsonObjectH; 
 function  QJsonObject_value(handle:not null QJsonObjectH;key:QLatin1StringH) return QJsonValueH; 
 function  QJsonObject_contains(handle:not null QJsonObjectH;key:QLatin1StringH) return boolean;

end;
