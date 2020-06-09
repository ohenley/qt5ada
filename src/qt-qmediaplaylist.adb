--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QMediaPlaylist  is

 function  QMediaPlaylist_addMedia(handle: not null QMediaPlaylistH;items:QOBjectListH) return boolean is
 begin
   return  QMediaPlaylist_addMedia2(handle,items);
 end;

 function  QMediaPlaylist_insertMedia(handle: not null QMediaPlaylistH;index:integer; items:QObjectListH) return boolean is
 begin
   return  QMediaPlaylist_insertMedia2(handle,index,items);
 end;

 function  QMediaPlaylist_removeMedia(handle: not null QMediaPlaylistH;startPos,endPos:integer) return boolean is
 begin
   return  QMediaPlaylist_removeMedia2(handle,startPos,endPos);
 end;

 procedure QMediaPlaylist_load(handle: not null QMediaPlaylistH;location:QUrlH; format:zstring := Null_ZStr) is
 begin
   QMediaPlaylist_load2(handle,location,format);
 end;

 procedure QMediaPlaylist_load(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr) is
 begin
   QMediaPlaylist_load3(handle,device,format);
 end;

 function  QMediaPlaylist_save(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr) return boolean is
 begin
   return  QMediaPlaylist_save2(handle,device,format);
 end;

 function  QMediaPlaylist_addMedia(handle:not null QMediaPlaylistH;url:QUrlH) return boolean is
 begin
   return  QMediaPlaylist_addMedia3(handle,url);
 end;

 function  QMediaPlaylist_insertMedia(handle:not null QMediaPlaylistH;index:integer;url: QUrlH) return boolean is
 begin
   return  QMediaPlaylist_insertMedia3(handle,index,url);
 end;
  

end;
