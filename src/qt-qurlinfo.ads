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

package Qt.QUrlInfo is

 PermissionSpec_ReadOwner  : constant  := 8#00400#;
 PermissionSpec_WriteOwner : constant  := 8#00200#;
 PermissionSpec_ExeOwner   : constant  := 8#00100#;
 PermissionSpec_ReadGroup  : constant  := 8#00040#;
 PermissionSpec_WriteGroup : constant  := 8#00020#;
 PermissionSpec_ExeGroup   : constant  := 8#00010#;
 PermissionSpec_ReadOther  : constant  := 8#00004#;
 PermissionSpec_WriteOther : constant  := 8#00002#;
 PermissionSpec_ExeOther   : constant  := 8#00001#;

function  QUrlInfo_create return QUrlInfoH;
pragma Import(C,QUrlInfo_create, "QUrlInfo_crate");

function  QUrlInfo_create2(ui:QUrlInfoH) return QUrlInfoH;
pragma Import(C,QUrlInfo_create2, "QUrlInfo_create2");

function  QUrlInfo_create3(name:QStringH;permissions:integer ;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH ;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH;
pragma Import(C,QUrlInfo_create3, "QUrlInfo_create3");

function  QUrlInfo_create4(url:QUrlH;permissions:integer;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH;
pragma Import(C,QUrlInfo_create4, "QUrlInfo_create4");

procedure del_QUrlInfo(p:QUrlInfoH);
pragma Import(C,del_QUrlInfo, "del_QUrlInfo");

procedure QUrlInfo_setName(info:QUrlInfoH;name:QStringH);
pragma Import(C,QUrlInfo_setName, "QUrlInfo_setName");

procedure QUrlInfo_setDir(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setDir, "QUrlInfo_setDir");

procedure QUrlInfo_setFile(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setFile, "QUrlInfo_setFile");

procedure QUrlInfo_setSymLink(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setSymLink, "QUrlInfo_setSymLink");

procedure QUrlInfo_setOwner(info:QUrlInfoH;owner:QStringH);
pragma Import(C,QUrlInfo_setOwner, "QUrlInfo_setOwner");

procedure QUrlInfo_setGroup(info:QUrlInfoH;group:QStringH);
pragma Import(C,QUrlInfo_setGroup, "QUrlInfo_setGroup");

procedure QUrlInfo_setSize(info:QUrlInfoH;size:quint);
pragma Import(C,QUrlInfo_setSize, "QUrlInfo_setSize");

procedure QUrlInfo_setWritable(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setWritable, "QUrlInfo_setWritable");

procedure QUrlInfo_setReadable(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setReadable, "QUrlInfo_setReadable");

procedure QUrlInfo_setPermissions(info:QUrlInfoH;b:integer);
pragma Import(C,QUrlInfo_setPermissions, "QUrlInfo_setPermissions");

procedure QUrlInfo_setLastModified(info:QUrlInfoH;dt:QDateTimeH);
pragma Import(C,QUrlInfo_setLastModified, "QUrlInfo_setLastModified");

function  QUrlInfo_isValid(info:QUrlInfoH) return integer;
pragma Import(C,QUrlInfo_isValid, "QUrlInfo_isValid");

function  QUrlInfo_name(info:QUrlInfoH) return QStringH;
pragma Import(C,QUrlInfo_name, "QUrlInfo_name");

function  QUrlInfo_permissions(info:QUrlInfoH) return integer;
pragma Import(C,QUrlInfo_permissions, "QUrlInfo_permissions");

function  QUrlInfo_owner(info:QUrlInfoH) return QStringH;
pragma Import(C,QUrlInfo_owner, "QUrlInfo_owner");

function  QUrlInfo_group(info:QUrlInfoH) return QStringH;
pragma Import(C,QUrlInfo_group, "QUrlInfo_group");

function  QUrlInfo_size(info:QUrlInfoH) return quint;
pragma Import(C,QUrlInfo_size, "QUrlInfo_size");

function  QUrlInfo_lastModified(info:QUrlInfoH) return QDateTimeH;
pragma Import(C,QUrlInfo_lastModified, "QUrlInfo_lastModified");

function  QUrlInfo_lastRead(info:QUrlInfoH) return QDateTimeH;
pragma Import(C,QUrlInfo_lastRead, "QUrlInfo_lastRead");

function  QUrlInfo_isDir(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isDir, "QUrlInfo_isDir");

function  QUrlInfo_isFile(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isFile, "QUrlInfo_isFile");

function  QUrlInfo_isSymLink(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isSymLink, "QUrlInfo_isSymLink");

function  QUrlInfo_isWritable(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isWritable, "QUrlInfo_isWritable");

function  QUrlInfo_isReadable(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isReadable, "QUrlInfo_isReadable");

function  QUrlInfo_isExecutable(info:QUrlInfoH) return boolean;
pragma Import(C,QUrlInfo_isExecutable, "QUrlInfo_isExecutable");

function  QUrlInfo_greaterThan(ui1,ui2:QUrlInfoH;sortBy:integer) return integer;
pragma Import(C,QUrlInfo_greaterThan, "QUrlInfo_greaterThan");

function  QUrlInfo_lessThan(ui1,ui2:QUrlInfoH;sortBy:integer) return integer;
pragma Import(C,QUrlInfo_lessThan, "QUrlInfo_lessThan");

function  QUrlInfo_equal(ui1,ui2:QUrlInfoH;sortBy:integer) return integer;
pragma Import(C,QUrlInfo_equal, "QUrlInfo_equal");
---------------------------------------------------------------------------------------------
function  QUrlInfo_create(ui:QUrlInfoH) return QUrlInfoH;
function  QUrlInfo_create(name:QStringH;permissions:integer ;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH ;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH;
function  QUrlInfo_create(url:QUrlH;permissions:integer;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH;

end Qt.QUrlInfo;
