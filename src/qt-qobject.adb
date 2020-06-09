--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString;     use Qt.QString;
with Qt.QObjectList; use Qt.QObjectList;
package body Qt.QObject is

function QObject_connect(handle: not null  QObjectH; sender: QObjectH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean is
begin
  return QObject_connect2(handle,sender,signal,member,Connection);
end;

function QObject_disconnect(handle: not null  QObjectH) return Boolean  is
begin
 return  QObject_disconnect1(handle);
end;

function QObject_disconnect(handle: not null  QObjectH; receiver: QObjectH; member: zstring := s2zs("")) return Boolean  is
begin
 return  QObject_disconnect3(handle,receiver, member);
end;

procedure QObject_emit(emit: zstring) is
begin
 QObject_emit2(emit);
end;

procedure QObject_quitApplication(sender: QObjectH; signaltoQuit: string; p5: QtConnectionType := QtAutoConnection) is
begin
  if QObject_connect(sender => sender,signal => SIGNAL(signaltoQuit),
            receiver => QObjectH(qt.app),slot => SLOT("quit()")) 
  then null;
  end if;
end;

function  QObject_findChildren(handle:not null QObjectH;re:QRegExpH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH is    
begin
  return QObject_findChildren2(handle,re,options);
end;

function  QObject_findChildren(handle:not null QObjectH;re:QRegularExpressionH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH is 
begin
  return  QObject_findChildren3(handle,re,options);
end;

 function  QObject_findChild(handle:not null QObjectH;name :QStringH := QString_create;options :FindChildOption :=  FindChildrenRecursively) return QObjectH is
 children     : QObjectListH;
 child        : QObjectH;
 isFind       : boolean;
 begin
   isFind := false;
   children := QObject_findChildren(handle,QString_create,options);
   for i in 0 .. QObjectList_count(children) - 1 loop
      child := QObjectList_at(children,i);
      if QString_equal(QObject_objectName(child),name) 
      then 
        isFind := true;
        exit;
      end if; 
   end loop;
   QObjectList_destroy(children);
   if isFind
   then
     return child; 
   else
     return null;
   end if;
 end;

end Qt.QObject;
