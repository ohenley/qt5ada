--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2014,2020                บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString;       use Qt.QString;
with Qt.QStringList;   use Qt.QStringList;
with Qt.QTextStream;   use Qt.QTextStream;

package  body Qt.QFile is


 function  QFile_create(name:QStringH) return QFileH is
 begin
   return  QFile_create2(name);
 end;

 function  QFile_create(parent:QObjectH) return QFileH is
 begin
   return  QFile_create3(parent);
 end;

 function  QFile_create(name:QStringH; parent:QObjectH) return QFileH is
 begin
   return  QFile_create4(name, parent);
 end;


 function  QFile_decodeName(localFileName: charp ) return QStringH is
 begin
   return  QFile_decodeName2(localFileName);
 end;

 function  QFile_exists(fileName: QStringH) return boolean is
 begin
   return  QFile_exists2(fileName);
 end;

 function  QFile_readLink( fileName: QStringH) return QStringH is
 begin
   return  QFile_readLink2( fileName);
 end;

 function  QFile_symLinkTarget( fileName: QStringH) return QStringH is
 begin
   return  QFile_symLinkTarget2( fileName);
 end;

 function  QFile_remove(fileName: QStringH) return boolean is
 begin
   return  QFile_remove2(fileName);
 end;

 function  QFile_rename(oldName: QStringH; newName: QStringH) return boolean is
 begin
   return  QFile_rename2(oldName,newName);
 end;

 function  QFile_link(oldName: QStringH; newName: QStringH) return boolean is
 begin
   return  QFile_link2(oldName, newName);
 end;

 function  QFile_copy(fileName: QStringH; newName: QStringH) return boolean is
 begin
   return  QFile_copy2(fileName, newName);
 end;

 function  QFile_open(handle: not null  QFileH;fd: integer; flags: quint) return boolean is
 begin
   return  QFile_open2(handle,fd, flags);
 end;

 function  QFile_resize(fileName: QStringH;size: qint64) return boolean is
 begin
   return  QFile_resize2(fileName,size);
 end;

 function  QFile_permissions(fileName: QStringH) return quint is
 begin
   return  QFile_permissions2(fileName);
 end;

 function  QFile_setPermissions(filename: QStringH;permissionSpec: quint ) return boolean is
 begin
   return  QFile_setPermissions2(filename,permissionSpec);
 end;

 function  QFile_readAll(handle: not null  QFileH) return QByteArrayH is
 begin
    return QFile_readAll2(handle);
 end;
 
 function  QFile_readText(handle: not null  QFileH) return QStringListH is
 t : QTextStreamH;
 list : QStringListH;
 line : QStringH; 
 begin
   t    := QTextStream_create(handle);
   list := QStringList_create;
   while not QTextStream_atEnd(t) loop
     line := QTextStream_readLine(t);
     QStringList_append(list,line);
   end loop;
   return list;
 end;  

 procedure QFile_writeText(handle: not null  QFileH;list:QStringListH) is
 t : QTextStreamH;
 line : QStringH;
 begin
 t    := QTextStream_create(handle);
 for i in 0 .. QStringList_count(list) - 1  loop
   line := QStringList_at(list,i) + QString_create(QTLF);
   QTextStream_write(t,line);
 end loop;
end;  

function  QFile_moveToTrash(fileName:QStringH;pathInTrash : QStringH :=  null) return  boolean is
begin
  return  QFile_moveToTrash2(fileName,pathInTrash);
end;

end Qt.QFile;
