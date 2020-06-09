--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QStorageInfo is

 function  QStorageInfo_create return QStorageInfoH;
 pragma Import(C,QStorageInfo_create, "QStorageInfo_create");
 
 function  QStorageInfo_create2(path:QStringH) return QStorageInfoH;
 pragma Import(C,QStorageInfo_create2, "QStorageInfo_create2");
 
 function  QStorageInfo_create3(dir:QDirH) return QStorageInfoH;
 pragma Import(C,QStorageInfo_create3, "QStorageInfo_create3");
 
 function  QStorageInfo_create4(other:QStorageInfoH) return QStorageInfoH;
 pragma Import(C,QStorageInfo_create4, "QStorageInfo_create4");
 
 procedure QStorageInfo_delete(handle:not null QStorageInfoH);
 pragma Import(C,QStorageInfo_delete, "QStorageInfo_delete");
 
 procedure QStorageInfo_setPath(handle:not null QStorageInfoH;path:QStringH);
 pragma Import(C,QStorageInfo_setPath, "QStorageInfo_setPath");
 
 procedure QStorageInfo_swap(handle:not null QStorageInfoH;other:QStorageInfoH);
 pragma Import(C,QStorageInfo_swap, "QStorageInfo_swap");
 
 function  QStorageInfo_rootPath(handle:not null QStorageInfoH) return QStringH;
 pragma Import(C,QStorageInfo_rootPath, "QStorageInfo_rootPath");
 
 function  QStorageInfo_device(handle:not null QStorageInfoH) return string;
 pragma Import(C,QStorageInfo_device, "QStorageInfo_device");
 
 function  QStorageInfo_fileSystemType(handle:not null QStorageInfoH) return string;
 pragma Import(C,QStorageInfo_fileSystemType, "QStorageInfo_fileSystemType");
 
 function  QStorageInfo_name(handle:not null QStorageInfoH) return QStringH;
 pragma Import(C,QStorageInfo_name, "QStorageInfo_name");
 
 function  QStorageInfo_displayName(handle:not null QStorageInfoH) return QStringH;
 pragma Import(C,QStorageInfo_displayName, "QStorageInfo_displayName");
 
 function  QStorageInfo_bytesTotal(handle:not null QStorageInfoH) return qint64;
 pragma Import(C,QStorageInfo_bytesTotal, "QStorageInfo_bytesTotal");
 
 function  QStorageInfo_bytesFree(handle:not null QStorageInfoH) return qint64;
 pragma Import(C,QStorageInfo_bytesFree, "QStorageInfo_bytesFree");
 
 function  QStorageInfo_bytesAvailable(handle:not null QStorageInfoH) return qint64;
 pragma Import(C,QStorageInfo_bytesAvailable, "QStorageInfo_bytesAvailable");
 
 function  QStorageInfo_blockSize(handle:not null QStorageInfoH) return integer;
 pragma Import(C,QStorageInfo_blockSize, "QStorageInfo_blockSize");
 
 function  QStorageInfo_isRoot(handle:not null QStorageInfoH) return boolean;
 pragma Import(C,QStorageInfo_isRoot, "QStorageInfo_isRoot");
 
 function  QStorageInfo_isReadOnly(handle:not null QStorageInfoH) return boolean;
 pragma Import(C,QStorageInfo_isReadOnly, "QStorageInfo_isReadOnly");
 
 function  QStorageInfo_isReady(handle:not null QStorageInfoH) return boolean;
 pragma Import(C,QStorageInfo_isReady, "QStorageInfo_isReady");
 
 function  QStorageInfo_isValid(handle:not null QStorageInfoH) return boolean;
 pragma Import(C,QStorageInfo_isValid, "QStorageInfo_isValid");
 
 procedure QStorageInfo_refresh(handle:not null QStorageInfoH);
 pragma Import(C,QStorageInfo_refresh, "QStorageInfo_refresh");
 
 function  QStorageInfo_mountedVolumes return QObjectListH;
 pragma Import(C,QStorageInfo_mountedVolumes, "QStorageInfo_mountedVolumes");
 
 function  QStorageInfo_root return QStorageInfoH;
 pragma Import(C,QStorageInfo_root, "QStorageInfo_root");
 
-------------------------------------------------------------------------
 function  QStorageInfo_create(path:QStringH) return QStorageInfoH;
 function  QStorageInfo_create(dir:QDirH) return QStorageInfoH;
 function  QStorageInfo_create(other:QStorageInfoH) return QStorageInfoH;

end;
