--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014                 บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QDateTime is
function QDate_create(y: Integer; m: Integer; d: Integer) return   QDateH is
begin
  return QDate_create2(y,m,d);
end;

function  QDate_toString(handle: not null  QDateH; format: QStringH) return QStringH is
begin
  return QDate_toString2(handle,format);
end;

function  QDate_fromString(s: QStringH; format: QStringH) return QDateH is
begin
 return QDate_fromString2(s,format);
end;

function QDate_isValid(y: Integer; m: Integer; d: Integer) return   Boolean is
begin
  return QDate_isValid2(y,m,d);
end;

function QTime_create(h: Integer; m: Integer; s: Integer := 0; ms: Integer := 0) return  QTimeH is
begin
  return QTime_create2(h,m,s,ms);
end;

function  QTime_fromString(s: QStringH; format: QStringH) return QTimeH is
begin
 return QTime_fromString2(s,format);
end;

function QTime_isValid(h: Integer; m: Integer; s: Integer; ms: Integer := 0) return  Boolean is
begin
  return QTime_isValid2(h,m,s,ms);
end;

function QDateTime_create(p1: QDateH) return   QDateTimeH is
begin
  return QDateTime_create2(p1);
end;

function QDateTime_create(p1: QDateH; p2: QTimeH; spec: QtTimeSpec := QtLocalTime) return  QDateTimeH is
begin
  return QDateTime_create3(p1,p2,spec);
end;
function QDateTime_create(other: QDateTimeH) return   QDateTimeH is
begin
  return QDateTime_create4(other);
end;

function  QDateTime_toString(handle: not null  QDateTimeH; format: QStringH) return QStringH is
begin
  return QDateTime_toString2(handle,format);
end;

 function  QDateTimeEdit_create(dateTime:QDateTimeH; parent:QWidgetH := null) return QDateTimeEditH is
 begin
   return  QDateTimeEdit_create2(dateTime, parent);
 end;

 function  QDateTimeEdit_create(date:QDateH;parent:QWidgetH := null) return QDateTimeEditH is
 begin
   return  QDateTimeEdit_create3(date,parent);
 end;

 function  QDateTimeEdit_create(time:QTimeH; parent:QWidgetH := null) return QDateTimeEditH is
 begin
   return QDateTimeEdit_create4(time, parent);
 end;

 function  QDateTime_create(date:QDateH; time:QTimeH; spec:QtTimeSpec; offsetSeconds:integer) return QDateTimeH is
 begin
   return  QDateTime_create5(date,time,spec,offsetSeconds);
 end;

 function  QDateTime_create(date:QDateH;time:QTimeH; timeZone:QTimeZoneH) return QDateTimeH is
 begin
   return  QDateTime_create6(date,time,timeZone);
 end;

 function  QDateTime_fromTime_t(secsSince1Jan1970UTC:quint; timaZone:QTimeZoneH) return QDateTimeH is
 begin
   return  QDateTime_fromTime_t2(secsSince1Jan1970UTC,timaZone);
 end;

 function  QDateTime_fromMSecsSinceEpoch(msecs:qint64; spec:QtTimeSpec;offsetFromUtc:integer := 0) return QDateTimeH is
 begin
   return  QDateTime_fromMSecsSinceEpoch2(msecs,spec,offsetFromUtc);
 end;

 function  QDateEdit_create(date:QDateH;parent:QWidgetH := null) return QDateEditH is
 begin
   return  QDateEdit_create2(date,parent);
 end;

 function  QTimeEdit_create(time:QTimeH;parent:QWidgetH := null) return QTimeEditH is
 begin
   return  QTimeEdit_create2(time,parent);
 end;

end Qt.QDateTime;
