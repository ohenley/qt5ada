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

package body Qt.QTcpServer is

 function  QTcpServer_listen(handle: not null  QServerH) return boolean is
 begin
   return  QTcpServer_listen2(handle);
 end;

 function  QTcpServer_listen(handle: not null  QServerH; port: integer) return boolean is
 begin
   return  QTcpServer_listen3(handle, port);
 end;
 
 function QTcpServer_connect(handle: not null  QServerH; sender: QServerH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean is
 begin
  return QTcpServer_connect2(handle,sender,signal,member,Connection);
 end;

 function QTcpServer_disconnect(handle: not null  QServerH; receiver: QServerH; member: zstring := s2zs("")) return Boolean  is
 begin
  return  QTcpServer_disconnect3(handle,receiver, member);
 end;

end  Qt.QTcpServer;
