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

package Qt.QSqlIndex is

function  QSqlIndex_create(cursorName,name:QStringH) return QSqlIndexH;
pragma Import(C,QSqlIndex_create, "QSqlIndex_create");

function  QSqlIndex1_create(indx:QSqlIndexH) return QSqlIndexH;
pragma Import(C,QSqlIndex1_create, "QSqlIndex1_create");

procedure del_QSqlIndex(p:QSqlIndexH);
pragma Import(C,del_QSqlIndex, "del_QSqlIndex");

procedure QSqlIndex_setCursorName(indx:QSqlIndexH;cursorName:QStringH);
pragma Import(C,QSqlIndex_setCursorName, "QSqlIndex_setCursorName");

function  QSqlIndex_cursorName(indx:QSqlIndexH) return QStringH;
pragma Import(C,QSqlIndex_cursorName, "QSqlIndex_cursorName");

procedure QSqlIndex_setName(indx:QSqlIndexH;name:QStringH);
pragma Import(C,QSqlIndex_setName, "QSqlIndex_setName");

function  QSqlIndex_name(indx:QSqlIndexH) return QStringH;
pragma Import(C,QSqlIndex_name, "QSqlIndex_name");

procedure QSqlIndex_append(indx:QSqlIndexH;field:QSqlFieldH);
pragma Import(C,QSqlIndex_append, "QSqlIndex_append");

procedure QSqlIndex_append1(indx:QSqlIndexH;field:QSqlFieldH;desc:integer);
pragma Import(C,QSqlIndex_append1, "QSqlIndex_append1");

function  QSqlIndex_isDescending(indx:QSqlIndexH;i:integer) return integer;
pragma Import(C,QSqlIndex_isDescending, "QSqlIndex_isDescending");

procedure QSqlIndex_setDescending(indx:QSqlIndexH;i,dec:integer);
pragma Import(C,QSqlIndex_setDescending, "QSqlIndex_setDescending");

--function  QSqlIndex_toStringList(indx:QSqlIndexH;prefix:QStringH;verbose:integer) return QStringListH;
--pragma Import(C,QSqlIndex_toStringList, "QSqlIndex_toStringList");

-- function  QSqlIndex_fromStringList(list: QStringListH;cursor:QSqlCursorH) return QSqlIndexH;
-- pragma Import(C,QSqlIndex_fromStringList, "QSqlIndex_fromStringList");
--------------------------------------------------------------------------------------------------------------
function  QSqlIndex_create(indx:QSqlIndexH) return QSqlIndexH;
procedure QSqlIndex_append(indx:QSqlIndexH;field:QSqlFieldH;desc:integer);

end Qt.QSqlIndex;
