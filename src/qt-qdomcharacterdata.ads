--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QDomCharacterData is

function  QDomCharacterData_create return QDomCharacterDataH;
pragma Import(C,QDomCharacterData_create, "QDomCharacterData_create");

function QDomCharacterData_create1(data:QDomCharacterDataH) return QDomCharacterDataH;
pragma Import(C,QDomCharacterData_create1, "QDomCharacterData_create1");

procedure del_QDomCharacterData(p:QDomCharacterDataH);
pragma Import(C,del_QDomCharacterData, "del_QDomCharacterData");

function  QDomCharacterData_substringData(data:QDomCharacterDataH;offset,count:unsigned_long) return QStringH;
pragma Import(C,QDomCharacterData_substringData, "QDomCharacterData_substringData");

procedure QDomCharacterData_appendData(data:QDomCharacterDataH;str:QStringH);
pragma Import(C,QDomCharacterData_appendData, "QDomCharacterData_appendData");

procedure QDomCharacterData_insertData(data:QDomCharacterDataH;offset:unsigned_long;str:QStringH);
pragma Import(C,QDomCharacterData_insertData, "QDomCharacterData_insertData");

procedure QDomCharacterData_deleteData(data:QDomCharacterDataH;offset,cpunt:unsigned_long);
pragma Import(C,QDomCharacterData_deleteData, "QDomCharacterData_deleteData");

procedure QDomCharacterData_replaceData(data:QDomCharacterDataH;offset,count:unsigned_long;str:QStringH);
pragma Import(C,QDomCharacterData_replaceData, "QDomCharacterData_replaceData");

function  QDomCharacterData_length(data:QDomCharacterDataH) return quint;
pragma Import(C,QDomCharacterData_length, "QDomCharacterData_length");

function  QDomCharacterData_data(data:QDomCharacterDataH) return QStringH;
pragma Import(C,QDomCharacterData_data, "QDomCharacterData_data");

procedure QDomCharacterData_setData(data:QDomCharacterDataH;str:QStringH);
pragma Import(C,QDomCharacterData_setData, "QDomCharacterData_setData");

function  QDomCharacterData_nodeType(data:QDomCharacterDataH) return integer;
pragma Import(C,QDomCharacterData_nodeType, "QDomCharacterData_nodeType");

function  QDomCharacterData_isCharacterData(data:QDomCharacterDataH) return integer;
pragma Import(C,QDomCharacterData_isCharacterData, "QDomCharacterData_isCharacterData");

function QDomCharacterData_create(data:QDomCharacterDataH) return QDomCharacterDataH;

end Qt.QDomCharacterData;
