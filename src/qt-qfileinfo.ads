--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QFileInfo is

 function  QFileInfo_create return QFileInfoH;
 pragma Import(C,QFileInfo_create, "QFileInfo_create");

 procedure QFileInfo_destroy(handle: not null  QFileInfoH);
 pragma Import(C,QFileInfo_destroy, "QFileInfo_destroy");

 function  QFileInfo_create2(file: QStringH) return QFileInfoH;
 pragma Import(C,QFileInfo_create2, "QFileInfo_create2");

 function  QFileInfo_create3(file: QFileH) return QFileInfoH;
 pragma Import(C,QFileInfo_create3, "QFileInfo_create3");

 function  QFileInfo_create4(dir: QDirH; file: QStringH) return QFileInfoH;
 pragma Import(C,QFileInfo_create4, "QFileInfo_create4");

 function  QFileInfo_create5(fileInfo: QFileInfoH) return QFileInfoH;
 pragma Import(C,QFileInfo_create5, "QFileInfo_create5");

 procedure QFileInfo_setFile(handle: not null  QFileInfoH; file: QStringH);
 pragma Import(C,QFileInfo_setFile, "QFileInfo_setFile");

 procedure QFileInfo_setFile2(handle: not null  QFileInfoH; file: QFileH);
 pragma Import(C,QFileInfo_setFile2, "QFileInfo_setFile2");

 procedure QFileInfo_setFile3(handle: not null  QFileInfoH; dir: QDirH; file: QStringH);
 pragma Import(C,QFileInfo_setFile3, "QFileInfo_setFile3");

 function  QFileInfo_exists(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_exists, "QFileInfo_exists");

 procedure QFileInfo_refresh(handle: not null  QFileInfoH);
 pragma Import(C,QFileInfo_refresh, "QFileInfo_refresh");

 function  QFileInfo_filePath(handle: not null  QFileInfoH) return  QStringH;
 pragma Import(C,QFileInfo_filePath, "QFileInfo_filePath");

 function  QFileInfo_absoluteFilePath(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_absoluteFilePath, "QFileInfo_absoluteFilePath");

 function  QFileInfo_canonicalFilePath(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_canonicalFilePath, "QFileInfo_canonicalFilePath");

 function  QFileInfo_fileName(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_fileName, "QFileInfo_fileName");

 function  QFileInfo_baseName(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_baseName, "QFileInfo_baseName");

 function  QFileInfo_completeBaseName(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_completeBaseName, "QFileInfo_completeBaseName");

 function  QFileInfo_suffix(handle: not null  QFileInfoH) return  QStringH;
 pragma Import(C,QFileInfo_suffix, "QFileInfo_suffix");

 function  QFileInfo_bundleName(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_bundleName, "QFileInfo_bundleName");

 function  QFileInfo_completeSuffix(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_completeSuffix, "QFileInfo_completeSuffix");

 function  QFileInfo_path(handle: not null  QFileInfoH) return  QStringH;
 pragma Import(C,QFileInfo_path, "QFileInfo_path");

 function  QFileInfo_absolutePath(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_absolutePath, "QFileInfo_absolutePath");

 function  QFileInfo_canonicalPath(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_canonicalPath, "QFileInfo_canonicalPath");

 function  QFileInfo_dir(handle: not null  QFileInfoH) return QDirH;
 pragma Import(C,QFileInfo_dir, "QFileInfo_dir");

 function  QFileInfo_absoluteDir(handle: not null  QFileInfoH) return QDirH;
 pragma Import(C,QFileInfo_absoluteDir, "QFileInfo_absoluteDir");

 function  QFileInfo_isReadable(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isReadable, "QFileInfo_isReadable");

 function  QFileInfo_isWritable(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_isWritable, "QFileInfo_isWritable");

 function  QFileInfo_isExecutable(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_isExecutable, "QFileInfo_isExecutable");

 function  QFileInfo_isHidden(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isHidden, "QFileInfo_isHidden");

 function  QFileInfo_isRelative(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isRelative, "QFileInfo_isRelative");

 function  QFileInfo_isAbsolute(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isAbsolute, "QFileInfo_isAbsolute");

 function  QFileInfo_makeAbsolute(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_makeAbsolute, "QFileInfo_makeAbsolute");

 function  QFileInfo_isFile(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_isFile, "QFileInfo_isFile");

 function  QFileInfo_isDir(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isDir, "QFileInfo_isDir");

 function  QFileInfo_isSymLink(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_isSymLink, "QFileInfo_isSymLink");

 function  QFileInfo_isRoot(handle: not null  QFileInfoH) return  boolean;
 pragma Import(C,QFileInfo_isRoot, "QFileInfo_isRoot");

 function  QFileInfo_isBundle(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_isBundle, "QFileInfo_isBundle");

 function  QFileInfo_readLink(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_readLink, "QFileInfo_readLink");

 function  QFileInfo_symLinkTarget(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_symLinkTarget, "QFileInfo_symLinkTarget");

 function  QFileInfo_owner(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_owner, "QFileInfo_owner");

 function  QFileInfo_ownerId(handle: not null  QFileInfoH) return  quint;
 pragma Import(C,QFileInfo_ownerId, "QFileInfo_ownerId");

 function  QFileInfo_group(handle: not null  QFileInfoH) return QStringH;
 pragma Import(C,QFileInfo_group, "QFileInfo_group");

 function  QFileInfo_groupId(handle: not null  QFileInfoH) return quint;
 pragma Import(C,QFileInfo_groupId, "QFileInfo_groupId");

 function  QFileInfo_permission(handle: not null  QFileInfoH; permissions: quint) return boolean;
 pragma Import(C,QFileInfo_permission, "QFileInfo_permission");

 function  QFileInfo_permissions(handle: not null  QFileInfoH) return quint;
 pragma Import(C,QFileInfo_permissions, "QFileInfo_permissions");

 function  QFileInfo_size(handle: not null  QFileInfoH) return qint64;
 pragma Import(C,QFileInfo_size, "QFileInfo_size");

 function  QFileInfo_created(handle: not null  QFileInfoH) return QDateTimeH;
 pragma Import(C,QFileInfo_created, "QFileInfo_created");

 function  QFileInfo_lastModified(handle: not null  QFileInfoH) return QDateTimeH;
 pragma Import(C,QFileInfo_lastModified, "QFileInfo_lastModified");

 function  QFileInfo_lastRead(handle: not null  QFileInfoH) return QDateTimeH;
 pragma Import(C,QFileInfo_lastRead, "QFileInfo_lastRead");

--  procedure QFileInfo_detach(handle: not null  QFileInfoH);
--  pragma Import(C,QFileInfo_detach, "QFileInfo_detach");

 function  QFileInfo_caching(handle: not null  QFileInfoH) return boolean;
 pragma Import(C,QFileInfo_caching, "QFileInfo_caching");

 procedure QFileInfo_setCaching(handle: not null  QFileInfoH; on: boolean);
 pragma Import(C,QFileInfo_setCaching, "QFileInfo_setCaching");

 --------------------------------------------------------------------------------
 function  QFileInfo_create(file: QStringH) return QFileInfoH;
 function  QFileInfo_create(file: QFileH) return QFileInfoH;
 function  QFileInfo_create(dir: QDirH; file: QStringH) return QFileInfoH;
 function  QFileInfo_create(fileInfo: QFileInfoH) return QFileInfoH;
 procedure QFileInfo_setFile(handle: not null  QFileInfoH; file: QFileH);
 procedure QFileInfo_setFile(handle: not null  QFileInfoH; dir: QDirH; file: QStringH);
 function QFileInfo_fromRelativeFileName(fileName : QStringH) return QStringH;
 
end Qt.QFileInfo;
