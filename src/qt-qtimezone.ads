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

with Qt.QLocale; use  Qt.QLocale;
with Qt.QString; use  Qt.QString;
package Qt.QTimeZone  is

type TimeType is (StandardTime,DaylightTime,GenericTime);
pragma Convention(C,TimeType);
type NameType is (DefaultName,LongName,ShortName,OffsetName); 
pragma Convention(C,NameType);
type OffsetData is new QObjectH;

 function  OffsetData_abbreviation( offset:OffsetData) return QStringH;
 pragma Import(C,OffsetData_abbreviation, "OffsetData_abbreviation");
 
 function  OffsetData_atUtc( offset:OffsetData) return QDateTimeH;
 pragma Import(C,OffsetData_atUtc, "OffsetData_atUtc");
 
 function  OffsetData_offsetFromUtc( offset:OffsetData) return integer;
 pragma Import(C,OffsetData_offsetFromUtc, "OffsetData_offsetFromUtc");
 
 function  OffsetData_standardTimeOffset( offset:OffsetData) return integer;
 pragma Import(C,OffsetData_standardTimeOffset, "OffsetData_standardTimeOffset");
 
 function  OffsetData_daylightTimeOffset( offset:OffsetData) return integer;
 pragma Import(C,OffsetData_daylightTimeOffset, "OffsetData_daylightTimeOffset");
 ------------------------------------------------------------------

 function  QTimeZone_create return QTimeZoneH;
 pragma Import(C,QTimeZone_create, "QTimeZone_create");
 
 function  QTimeZone_create2(offsetSeconds:integer) return QTimeZoneH;
 pragma Import(C,QTimeZone_create2, "QTimeZone_create2");
 
 function  QTimeZone_create3( zoneId:QByteArrayH;offsetSeconds:integer; name,abbreviation:QStringH; country:QLocaleCountry := AnyCountry; comment:QStringH := QString_create) return QTimeZoneH;
 pragma Import(C,QTimeZone_create3, "QTimeZone_create3");
 
 function  QTimeZone_create4(other:QTimeZoneH) return QTimeZoneH;
 pragma Import(C,QTimeZone_create4, "QTimeZone_create4");
 
 procedure QTimeZone_destroy(handle:not null QTimeZoneH);
 pragma Import(C,QTimeZone_destroy, "QTimeZone_destroy");
 
 function  QTimeZoneu_isValid(handle:not null QTimeZoneH) return boolean;
 pragma Import(C,QTimeZoneu_isValid, "QTimeZoneu_isValid");
 
 function  QTimeZone_id(handle:not null QTimeZoneH) return QByteArrayH;
 pragma Import(C,QTimeZone_id, "QTimeZone_id");
 
 function  QTimeZone_country(handle:not null QTimeZoneH) return QLocaleCountry;
 pragma Import(C,QTimeZone_country, "QTimeZone_country");
 
 function  QTimeZone_comment(handle:not null QTimeZoneH) return QStringH;
 pragma Import(C,QTimeZone_comment, "QTimeZone_comment");
 
 function  QTimeZone_displayName(handle:not null QTimeZoneH; atDateTime:QDateTimeH; nType:NameType := DefaultName; locale:QLocaleH := QLocale_create) return QStringH;
 pragma Import(C,QTimeZone_displayName, "QTimeZone_displayName");
 
 function  QTimeZone_displayName2(handle:not null QTimeZoneH; tType:TimeType; nType:NameType := DefaultName;locale:QLocaleH := QLocale_create) return QStringH;
 pragma Import(C,QTimeZone_displayName2, "QTimeZone_displayName2");
 
 function  QTimeZone_abbreviation(handle:not null QTimeZoneH;atDateTime:QDateTimeH) return QStringH;
 pragma Import(C,QTimeZone_abbreviation, "QTimeZone_abbreviation");
 
 function  QTimeZone_offsetFromUtc(handle:not null QTimeZoneH;atDateTime:QDateTimeH) return integer;
 pragma Import(C,QTimeZone_offsetFromUtc, "QTimeZone_offsetFromUtc");
 
 function  QTimeZone_standardTimeOffset(handle:not null QTimeZoneH;atDateTime:QDateTimeH) return integer;
 pragma Import(C,QTimeZone_standardTimeOffset, "QTimeZone_standardTimeOffset");
 
 function  QTimeZone_daylightTimeOffset(handle:not null QTimeZoneH;atDateTime:QDateTimeH) return integer;
 pragma Import(C,QTimeZone_daylightTimeOffset, "QTimeZone_daylightTimeOffset");
 
 function  QTimeZone_hasDaylightTime(handle:not null QTimeZoneH) return boolean;
 pragma Import(C,QTimeZone_hasDaylightTime, "QTimeZone_hasDaylightTime");
 
 function  QTimeZone_isDaylightTime(handle:not null QTimeZoneH;atDateTime:QDateTimeH) return boolean;
 pragma Import(C,QTimeZone_isDaylightTime, "QTimeZone_isDaylightTime");
 
 function  QTimeZone_offsetData(handle:not null QTimeZoneH;forDateTime:QDateTimeH) return OffsetData;
 pragma Import(C,QTimeZone_offsetData, "QTimeZone_offsetData");
 
 function  QTimeZone_hasTransitions(handle:not null QTimeZoneH) return boolean;
 pragma Import(C,QTimeZone_hasTransitions, "QTimeZone_hasTransitions");
 
 function  QTimeZone_nextTransition(handle:not null QTimeZoneH;afterDateTime:QDateTimeH) return OffsetData;
 pragma Import(C,QTimeZone_nextTransition, "QTimeZone_nextTransition");
 
 function  QTimeZone_previousTransition(handle:not null QTimeZoneH; beforeDateTime:QDateTimeH) return OffsetData;
 pragma Import(C,QTimeZone_previousTransition, "QTimeZone_previousTransition");
 
 function  QTimeZone_transitions(handle:not null QTimeZoneH;fromDateTime,toDateTime:QDateTimeH) return QObjectListH;
 pragma Import(C,QTimeZone_transitions, "QTimeZone_transitions");
 
 function  QTimeZone_systemTimeZoneId return QByteArrayH;
 pragma Import(C,QTimeZone_systemTimeZoneId, "QTimeZone_systemTimeZoneId");
 
 function  QTimeZone_isTimeZoneIdAvailable(olsenId:QByteArrayH) return boolean;
 pragma Import(C,QTimeZone_isTimeZoneIdAvailable, "QTimeZone_isTimeZoneIdAvailable");
 
 function  QTimeZone_availableTimeZoneIds return QObjectListH;
 pragma Import(C,QTimeZone_availableTimeZoneIds, "QTimeZone_availableTimeZoneIds");
 
 function  QTimeZone_availableTimeZoneIds2(country:QLocaleCountry) return QObjectListH;
 pragma Import(C,QTimeZone_availableTimeZoneIds2, "QTimeZone_availableTimeZoneIds2");
 
 function  QTimeZone_availableTimeZoneIds3(offsetSeconds:integer) return QObjectListH;
 pragma Import(C,QTimeZone_availableTimeZoneIds3, "QTimeZone_availableTimeZoneIds3");

 function  QTimeZone_ianaIdToWindowsId(ianaId:not null QByteArrayH) return QByteArrayH;
 pragma Import(C,QTimeZone_ianaIdToWindowsId, "QTimeZone_ianaIdToWindowsId");
 
 function  QTimeZone_windowsIdToDefaultIanaId(windowsId:not null QByteArrayH) return QByteArrayH;
 pragma Import(C,QTimeZone_windowsIdToDefaultIanaId, "QTimeZone_windowsIdToDefaultIanaId");
 
 function  QTimeZone_windowsIdToDefaultIanaId2(windowsId:QByteArrayH;country:QLocaleCountry) return QByteArrayH;
 pragma Import(C,QTimeZone_windowsIdToDefaultIanaId2, "QTimeZone_windowsIdToDefaultIanaId2");
 
 function  QTimeZone_windowsIdToIanaIds(windowsId:not null QByteArrayH) return QByteArrayListH;
 pragma Import(C,QTimeZone_windowsIdToIanaIds, "QTimeZone_windowsIdToIanaIds");
 
 function  QTimeZone_windowsIdToIanaIds2(windowsId:not null QByteArrayH;country:QLocaleCountry) return QByteArrayListH;
 pragma Import(C,QTimeZone_windowsIdToIanaIds2, "QTimeZone_windowsIdToIanaIds2");
 
--------------------------------------------------------------------- 
 function  QTimeZone_create(offsetSeconds:integer) return QTimeZoneH;
 function  QTimeZone_create( zoneId:QByteArrayH;offsetSeconds:integer; name,abbreviation:QStringH;country:QLocaleCountry := AnyCountry; comment:QStringH := QString_create) return QTimeZoneH;
 function  QTimeZone_create(other:QTimeZoneH) return QTimeZoneH;
 function  QTimeZone_displayName(handle:not null QTimeZoneH; tType:TimeType; nType:NameType := DefaultName;locale:QLocaleH := QLocale_create) return QStringH;
 function  QTimeZone_availableTimeZoneIds(country:QLocaleCountry) return QObjectListH;
 function  QTimeZone_availableTimeZoneIds(offsetSeconds:integer) return QObjectListH;
 function  QTimeZone_windowsIdToDefaultIanaId(windowsId:QByteArrayH;country:QLocaleCountry) return QByteArrayH;
 function  QTimeZone_windowsIdToIanaIds(windowsId:not null QByteArrayH;country:QLocaleCountry) return QByteArrayListH;

end;
