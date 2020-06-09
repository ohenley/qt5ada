--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- ***************************************************************************
-- *                                                                         *
-- *   This library is free software; you can redistribute it and/or modify  *
-- *   it under the terms of the GNU Library General Public License as       *
-- *   published by the Free Software Foundation; either version 3 of the    *
-- *   License, or (at your option) any later version.                       *
-- *                                                                         *
-- ***************************************************************************

package body Qt.QTimeZone  is

 function  QTimeZone_create(offsetSeconds:integer) return QTimeZoneH is
 begin
   return  QTimeZone_create2(offsetSeconds);
 end;

 function  QTimeZone_create( zoneId:QByteArrayH;offsetSeconds:integer; name,abbreviation:QStringH; country:QLocaleCountry := AnyCountry; comment:QStringH := QString_create) return QTimeZoneH is
 begin
  return  QTimeZone_create3(zoneId,offsetSeconds,name,abbreviation,country,comment);
 end;

 function  QTimeZone_create(other:QTimeZoneH) return QTimeZoneH is
 begin
  return  QTimeZone_create4(other);
 end;

 function  QTimeZone_displayName(handle:not null QTimeZoneH; tType:TimeType; nType:NameType := DefaultName;locale:QLocaleH := QLocale_create) return QStringH is
 begin
  return  QTimeZone_displayName2(handle,tType, nType,locale);
 end;

 function  QTimeZone_availableTimeZoneIds(country:QLocaleCountry) return QObjectListH is
 begin
  return  QTimeZone_availableTimeZoneIds2(country);
 end;

 function  QTimeZone_availableTimeZoneIds(offsetSeconds:integer) return QObjectListH is
 begin
  return  QTimeZone_availableTimeZoneIds3(offsetSeconds);
 end;

 function  QTimeZone_windowsIdToDefaultIanaId(windowsId:QByteArrayH;country:QLocaleCountry) return QByteArrayH is
 begin
   return  QTimeZone_windowsIdToDefaultIanaId2(windowsId,country);
 end;

 function  QTimeZone_windowsIdToIanaIds(windowsId:not null QByteArrayH;country:QLocaleCountry) return QByteArrayListH is
 begin
   return  QTimeZone_windowsIdToIanaIds2(windowsId,country);
 end;

end;
