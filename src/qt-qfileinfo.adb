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

with Qt.QFileInfo; use Qt.QFileInfo;
with Qt.QString; use Qt.QString;
with Qt.QDir; use Qt.QDir;

package body Qt.QFileInfo is

 function  QFileInfo_create(file: QStringH) return QFileInfoH is
 begin
   return  QFileInfo_create2(file);
 end;

 function  QFileInfo_create(file: QFileH) return QFileInfoH is
 begin
   return  QFileInfo_create3(file);
 end;

 function  QFileInfo_create(dir: QDirH; file: QStringH) return QFileInfoH is
 begin
   return  QFileInfo_create4(dir, file);
 end;

 function  QFileInfo_create(fileInfo: QFileInfoH) return QFileInfoH is
 begin
   return  QFileInfo_create5(fileInfo);
 end;

 procedure QFileInfo_setFile(handle: not null  QFileInfoH; file: QFileH) is
 begin
    QFileInfo_setFile2(handle, file);
 end;

 procedure QFileInfo_setFile(handle: not null  QFileInfoH; dir: QDirH; file: QStringH) is
 begin
   QFileInfo_setFile3(handle, dir, file);
 end;
  
function QFileInfo_fromRelativeFileName(fileName : QStringH) return QStringH is
fileInfo : QFileInfoH;
filePath : QStringH;     
begin
 fileInfo := QFileInfo_create(fileName);
 filePath := QFileInfo_absoluteFilePath(fileInfo); 
 return filePath;
end; 

end Qt.QFileInfo;
