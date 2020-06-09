--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2020                 บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QFile is

 type FileTime is (FileAccessTime, FileBirthTime, FileMetadataChangeTime, FileModificationTime);
 pragma convention(C,FileTime);

 type MemoryMapFlags is (NoOptions,MapPrivateOption);
 pragma convention(C,MemoryMapFlags);

 type Permissions is new quint;
 ReadOwner   : constant Permissions := 16#4000#;
 WriteOwner  : constant Permissions := 16#2000#;
 ExeOwner    : constant Permissions := 16#1000#;
 ReadUser    : constant Permissions := 16#0400#;
 WriteUser   : constant Permissions := 16#0200#;
 ExeUser     : constant Permissions := 16#0100#;
 ReadGroup   : constant Permissions := 16#0040#;
 WriteGroup  : constant Permissions := 16#0020#;
 ExeGroup    : constant Permissions := 16#0010#;
 ReadOther   : constant Permissions := 16#0004#;
 WriteOther  : constant Permissions := 16#0002#;
 ExeOther    : constant Permissions := 16#0001#;

 type FileHandleFlags is new quint;
 AutoCloseHandle : constant FileHandleFlags := 1;
 DontCloseHandle : constant FileHandleFlags := 0;

 type FileError  is (
       NoError,ReadError,WriteError,FatalError,ResourceError,OpenError,AbortError,TimeOutError,UnspecifiedError,RemoveError,RenameError,
       PositionError,ResizeError,PermissionsError,CopyError,ConnectError);
 pragma Convention(C,FileError);
 
 for   FileError use  (
        NoError          => 0,
        ReadError        => 1,
        WriteError       => 2,
        FatalError       => 3,
        ResourceError    => 4,
        OpenError        => 5,
        AbortError       => 6,
        TimeOutError     => 7,
        UnspecifiedError => 8,
        RemoveError      => 9,
        RenameError      => 10,
        PositionError    => 11,
        ResizeError      => 12,
        PermissionsError => 13,
        CopyError        => 14,
        ConnectError     => 30
      );
 
 type FileMemoryMapFlags is (NoOptions);
 pragma Convention(C,FileMemoryMapFlags);

 NotOpen    : constant := 0;
 ReadOnly   : constant := 1;
 WriteOnly  : constant := 2;
 ReadWrite  : constant := 3;    -- ReadOnly | WriteOnly
 Append     : constant := 4;
 Truncate   : constant := 8;
 Text       : constant := 16#10#;
 Unbuffered : constant := 16#20#;
 type ucharH is access all quint8;

 procedure QFileDevice_destroy(handle:not null QFileDeviceH);
 pragma Import(C,QFileDevice_destroy, "QFileDevice_destroy");
 
 function  QFileDevice_error(handle:not null QFileDeviceH)  return FileError;
 pragma Import(C,QFileDevice_error, "QFileDevice_error");
 
 procedure QFileDevice_unsetError(handle:not null QFileDeviceH);
 pragma Import(C,QFileDevice_unsetError, "QFileDevice_unsetError");
 
 procedure QFileDevice_close(handle:not null QFileDeviceH);
 pragma Import(C,QFileDevice_close, "QFileDevice_close");
 
 function  QFileDevice_isSequential(handle:not null QFileDeviceH) return boolean;
 pragma Import(C,QFileDevice_isSequential, "QFileDevice_isSequential");
 
 function  QFileDevice_handle(handle:QFileDeviceH) return integer;
 pragma Import(C,QFileDevice_handle, "QFileDevice_handle");
 
 function  QFileDevice_fileName(handle:not null QFileDeviceH) return QStringH;
 pragma Import(C,QFileDevice_fileName, "QFileDevice_fileName");
 
 function  QFileDevice_pos(handle:not null QFileDeviceH) return qint64;
 pragma Import(C,QFileDevice_pos, "QFileDevice_pos");
 
 function  QFileDevice_seek(handle:not null QFileDeviceH;offset:qint64)  return boolean;
 pragma Import(C,QFileDevice_seek, "QFileDevice_seek");
 
 function  QFileDevice_atEnd(handle:not null QFileDeviceH) return boolean;
 pragma Import(C,QFileDevice_atEnd, "QFileDevice_atEnd");
 
 function  QFileDevice_flush(handle:not null QFileDeviceH) return boolean;
 pragma Import(C,QFileDevice_flush, "QFileDevice_flush");
 
 function  QFileDevice_size(handle:not null QFileDeviceH) return qint64;
 pragma Import(C,QFileDevice_size, "QFileDevice_size");
 
 function  QFileDevice_resize(handle:not null QFileDeviceH;sz:qint64) return boolean;
 pragma Import(C,QFileDevice_resize, "QFileDevice_resize");
 
 function  QFileDevice_permissions(handle:not null QFileDeviceH) return Permissions;
 pragma Import(C,QFileDevice_permissions, "QFileDevice_permissions");
 
 function  QFileDevice_setPermissions(handle:not null QFileDeviceH;permissionSpec:Permissions) return boolean;
 pragma Import(C,QFileDevice_setPermissions, "QFileDevice_setPermissions");
 
 function  QFileDevice_map(handle:not null QFileDeviceH;offset:qint64;size: qint64;flags : MemoryMapFlags :=  NoOptions) return ucharH;
 pragma Import(C,QFileDevice_map, "QFileDevice_map");
 
 function  QFileDevice_unmap(handle:not null QFileDeviceH;address:ucharH) return boolean;
 pragma Import(C,QFileDevice_unmap, "QFileDevice_unmap");
 
 function  QFileDevice_fileTime(handle:not null QFileDeviceH;time:FileTime)  return QDateTimeH;
 pragma Import(C,QFileDevice_fileTime, "QFileDevice_fileTime");

 function  QFileDevice_setFileTime(handle:not null QFileDeviceH;newDate:QDateTimeH;flTime: FileTime) return boolean;
 pragma Import(C,QFileDevice_setFileTime, "QFileDevice_setFileTime");

 function  QFile_create return QFileH;
 pragma Import(C,QFile_create , "QFile_create");

 procedure QFile_destroy(handle: not null  QFileH);
 pragma Import(C,QFile_destroy , "QFile_destroy");

 function  QFile_create2(name:QStringH) return QFileH;
 pragma Import(C,QFile_create2 , "QFile_create2");

 function  QFile_create3(parent:QObjectH) return QFileH;
 pragma Import(C,QFile_create3 , "QFile_create3");

 function  QFile_create4(name:QStringH; parent:QObjectH) return QFileH;
 pragma Import(C, QFile_create4 , "QFile_create4");

 function  QFile_error(handle: not null  QFileH) return FileError;
 pragma Import(C,QFile_error  , "QFile_error");

 procedure QFile_unsetError(handle: not null  QFileH);
 pragma Import(C,QFile_unsetError , "QFile_unsetError");

 function  QFile_fileName(handle: not null  QFileH) return QStringH;
 pragma Import(C,QFile_fileName , "QFile_fileName");

 procedure QFile_setFileName(handle: not null  QFileH; name:QStringH);
 pragma Import(C,QFile_setFileName , "QFile_setFileName");

 function  QFile_encodeName( fileName: QStringH) return QByteArrayH;
 pragma Import(C,QFile_encodeName , "QFile_encodeName");

 function  QFile_decodeName( localFileName: QByteArrayH) return QStringH;
 pragma Import(C,QFile_decodeName , "QFile_decodeName");

 function  QFile_decodeName2(localFileName: charp ) return QStringH;
 pragma Import(C,QFile_decodeName2 , "QFile_decodeName2");

 function  QFile_exists(handle: not null  QFileH) return boolean;
 pragma Import(C,QFile_exists , "QFile_exists");

 function  QFile_exists2(fileName: QStringH) return boolean;
 pragma Import(C,QFile_exists2 , "QFile_exists2");

 function  QFile_readLink(handle: not null  QFileH) return QStringH;
 pragma Import(C,QFile_readLink , "QFile_readLink");

 function  QFile_readLink2( fileName: QStringH) return QStringH;
 pragma Import(C,QFile_readLink2 , "QFile_readLink2");

 function  QFile_symLinkTarget(handle: not null  QFileH) return QStringH;
 pragma Import(C,QFile_symLinkTarget , "QFile_symLinkTarget");

 function  QFile_symLinkTarget2( fileName: QStringH) return QStringH;
 pragma Import(C,QFile_symLinkTarget2 , "QFile_symLinkTarget2");

 function  QFile_remove(handle: not null  QFileH) return boolean;
 pragma Import(C,QFile_remove , "QFile_remove");

 function  QFile_remove2(fileName: QStringH) return boolean;
 pragma Import(C,QFile_remove2 , "QFile_remove2");

 function  QFile_rename(handle: not null  QFileH; newName: QStringH) return boolean;
 pragma Import(C,QFile_rename , "QFile_rename");

 function  QFile_rename2(oldName: QStringH; newName: QStringH) return boolean;
 pragma Import(C,QFile_rename2 , "QFile_rename2");

 function  QFile_link(handle: not null  QFileH; newName: QStringH) return boolean;
 pragma Import(C,QFile_link , "QFile_link");

 function  QFile_link2(oldName: QStringH; newName: QStringH) return boolean;
 pragma Import(C,QFile_link2 , "QFile_link2");

 function  QFile_copy(handle: not null  QFileH; newName: QStringH) return boolean;
 pragma Import(C,QFile_copy , "QFile_copy");

 function  QFile_copy2(fileName: QStringH; newName: QStringH) return boolean;
 pragma Import(C,QFile_copy2 , "QFile_copy2");

 function  QFile_isSequential(handle: not null  QFileH) return boolean;
 pragma Import(C,QFile_isSequential , "QFile_isSequential");

 function  QFile_open(handle: not null  QFileH; flags: quint) return boolean;
 pragma Import(C,QFile_open , "QFile_open");

 function  QFile_open2(handle: not null  QFileH;fd: integer; flags: quint) return boolean;
 pragma Import(C,QFile_open2, "QFile_open2");

 procedure QFile_close(handle: not null  QFileH);
 pragma Import(C,QFile_close , "QFile_close");

 function  QFile_size(handle: not null  QFileH) return qint64;
 pragma Import(C,QFile_size , "QFile_size");

 function  QFile_pos(handle: not null  QFileH) return qint64;
 pragma Import(C,QFile_pos , "QFile_pos");

 function  QFile_seek(handle: not null  QFileH;offset: qint64) return boolean;
 pragma Import(C,QFile_seek , "QFile_seek");

 function  QFile_atEnd(handle: not null  QFileH) return boolean;
 pragma Import(C,QFile_atEnd , "QFile_atEnd");

 function  QFile_flush(handle: not null  QFileH) return boolean;
 pragma Import(C,QFile_flush , "QFile_flush");

 function  QFile_resize(handle: not null  QFileH; size: qint64) return boolean;
 pragma Import(C,QFile_resize , "QFile_resize");

 function  QFile_resize2(fileName: QStringH;size: qint64) return boolean;
 pragma Import(C,QFile_resize2 , "QFile_resize2");

 function  QFile_permissions(handle: not null  QFileH) return quint;
 pragma Import(C,QFile_permissions , "QFile_permissions");

 function  QFile_permissions2(fileName: QStringH) return quint;
 pragma Import(C,QFile_permissions2 , "QFile_permissions2");

 function  QFile_setPermissions(handle: not null  QFileH; permissionSpec: quint) return boolean;
 pragma Import(C,QFile_setPermissions , "QFile_setPermissions");

 function  QFile_setPermissions2(filename: QStringH;permissionSpec: quint ) return boolean;
 pragma Import(C,QFile_setPermissions2 , "QFile_setPermissions2");

 function  QFile_handle(handle: not null  QFileH) return integer;
 pragma Import(C,QFile_handle , "QFile_handle");

 function  QFile_map(handle: not null  QFileH;offset: qint64 ; size: qint64;flags: FileMemoryMapFlags) return ucharH;
 pragma Import(C,QFile_map , "QFile_map");

 function  QFile_unmap(handle: not null  QFileH; address: ucharH) return boolean;
 pragma Import(C,QFile_unmap , "QFile_unmap");

 function  QFile_readAll(handle: not null  QFileH) return QStringH;
 pragma Import(C,QFile_readAll , "QFile_readAll");

 function  QFile_readAll2(handle: not null  QFileH) return QByteArrayH;
 pragma Import(C,QFile_readAll2 , "QFile_readAll2");
 
  function  QFile_moveToTrash(handle:not null QFileH) return boolean;
 pragma Import(C,QFile_moveToTrash, "QFile_moveToTrash");
 
 function  QFile_moveToTrash2(fileName:QStringH;pathInTrash : QStringH :=  null) return  boolean;
 pragma Import(C,QFile_moveToTrash2, "QFile_moveToTrash2");
 


-------------------------------------------------------------------------------------------------------
 function  QFile_create(name:QStringH) return QFileH;
 function  QFile_create(parent:QObjectH) return QFileH;
 function  QFile_create(name:QStringH; parent:QObjectH) return QFileH;

 function  QFile_decodeName(localFileName: charp ) return QStringH;
 function  QFile_exists(fileName: QStringH) return boolean;
 function  QFile_readLink( fileName: QStringH) return QStringH;
 function  QFile_symLinkTarget( fileName: QStringH) return QStringH;
 function  QFile_remove(fileName: QStringH) return boolean;
 function  QFile_rename(oldName: QStringH; newName: QStringH) return boolean;
 function  QFile_link(oldName: QStringH; newName: QStringH) return boolean;
 function  QFile_copy(fileName: QStringH; newName: QStringH) return boolean;
 function  QFile_open(handle: not null  QFileH;fd: integer; flags: quint) return boolean;
 function  QFile_resize(fileName: QStringH;size: qint64) return boolean;
 function  QFile_permissions(fileName: QStringH) return quint;
 function  QFile_setPermissions(filename: QStringH;permissionSpec: quint ) return boolean;
 function  QFile_readAll(handle: not null  QFileH) return QByteArrayH;

 function  QFile_readText(handle: not null  QFileH) return QStringListH;
 procedure QFile_writeText(handle: not null  QFileH;list:QStringListH);
 function  QFile_moveToTrash(fileName:QStringH;pathInTrash : QStringH :=  null) return  boolean;

end Qt.QFile;
