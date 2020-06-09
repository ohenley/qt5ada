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
package body Qt.QUrlInfo is

function  QUrlInfo_create(ui:QUrlInfoH) return QUrlInfoH is
begin
 return QUrlInfo_create2(ui);
end;

function  QUrlInfo_create(name:QStringH;permissions:integer ;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH is
begin
 return QUrlInfo_create3(name,permissions,owner,group,size,lastModified,lastRead,isDir,isFile,isSymLink,isWritable,isReadable,isExecutable);
end;

function  QUrlInfo_create(url:QUrlH;permissions:integer;owner,group:QStringH;size:quint;lastModified,lastRead:QDateTimeH;isDir,isFile,isSymLink,isWritable,isReadable,isExecutable:integer) return QUrlInfoH is
begin
 return QUrlInfo_create4(url,permissions,owner,group,size,lastModified,lastRead,isDir,isFile,isSymLink,isWritable,isReadable,isExecutable);
end;

end Qt.QUrlInfo;
