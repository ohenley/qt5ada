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
with Interfaces.C; use Interfaces.C;
package Qt.QDateTime is

function QDate_create return   QDateH;   
pragma Import(C,QDate_create,"QDate_create");

procedure QDate_destroy(handle: not null  QDateH);  
pragma Import(C,QDate_destroy,"QDate_destroy");

function QDate_create2(y: Integer; m: Integer; d: Integer) return   QDateH;
pragma Import(C,QDate_create2,"QDate_create2");

function QDate_isNull(handle: not null  QDateH) return   Boolean;  
pragma Import(C,QDate_isNull,"QDate_isNull");

function QDate_isValid(handle: not null  QDateH) return   Boolean;   
pragma Import(C,QDate_isValid,"QDate_isValid");

function QDate_year(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_year,"QDate_year");

function QDate_month(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_month,"QDate_month");

function QDate_day(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_day,"QDate_day");

function QDate_dayOfWeek(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_dayOfWeek,"QDate_dayOfWeek");

function QDate_dayOfYear(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_dayOfYear,"QDate_dayOfYear");

function QDate_daysInMonth(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_daysInMonth,"QDate_daysInMonth");

function QDate_daysInYear(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_daysInYear,"QDate_daysInYear");

function QDate_weekNumber(handle: not null  QDateH; yearNum: PInteger := null) return  Integer;
pragma Import(C,QDate_weekNumber,"QDate_weekNumber");

function  QDate_shortMonthName(month: Integer) return QStringH;
pragma Import(C,QDate_shortMonthName,"QDate_shortMonthName");

function  QDate_shortDayName(weekday: Integer) return QStringH;
pragma Import(C,QDate_shortDayName,"QDate_shortDayName");

function  QDate_longMonthName(month: Integer) return QStringH;
pragma Import(C,QDate_longMonthName,"QDate_longMonthName");

function  QDate_longDayName(weekday: Integer) return QStringH;
pragma Import(C,QDate_longDayName,"QDate_longDayName");

function  QDate_toString(handle: not null  QDateH; f: QtDateFormat := QtTextDate) return  QStringH;
pragma Import(C,QDate_toString,"QDate_toString");

function  QDate_toString2(handle: not null  QDateH; format: QStringH) return QStringH;
pragma Import(C,QDate_toString2,"QDate_toString2");

function QDate_setDate(handle: not null  QDateH; year: Integer; month: Integer; date: Integer) return   Boolean;  
pragma Import(C,QDate_setDate,"QDate_setDate");

function  QDate_addDays(handle: not null  QDateH;  days: Integer) return QDateH;
pragma Import(C,QDate_addDays,"QDate_addDays");

function  QDate_addMonths(handle: not null  QDateH; months: Integer) return QDateH;
pragma Import(C,QDate_addMonths,"QDate_addMonths");

function  QDate_addYears(handle: not null  QDateH; years: Integer) return QDateH;
pragma Import(C,QDate_addYears,"QDate_addYears");

function QDate_daysTo(handle: not null  QDateH; p1: QDateH) return   Integer;  
pragma Import(C,QDate_daysTo,"QDate_daysTo");

function  QDate_currentDate return QDateH;
pragma Import(C,QDate_currentDate,"QDate_currentDate");

function  QDate_fromString( s: QStringH; f: QtDateFormat := QtTextDate) return  QDateH;
pragma Import(C,QDate_fromString,"QDate_fromString");

function  QDate_fromString2(s: QStringH; format: QStringH) return  QDateH;
pragma Import(C,QDate_fromString2,"QDate_fromString2");

function QDate_isValid2(y: Integer; m: Integer; d: Integer) return   Boolean;
pragma Import(C,QDate_isValid2,"QDate_isValid2");

function QDate_isLeapYear(year: Integer) return   Boolean;  
pragma Import(C,QDate_isLeapYear,"QDate_isLeapYear");

function  QDate_fromJulianDay(jd: Integer) return  QDateH;
pragma Import(C,QDate_fromJulianDay,"QDate_fromJulianDay");

function QDate_toJulianDay(handle: not null  QDateH) return   Integer;  
pragma Import(C,QDate_toJulianDay,"QDate_toJulianDay");

function QTime_create return   QTimeH;   
pragma Import(C,QTime_create,"QTime_create");

procedure QTime_destroy(handle: not null  QTimeH);  
pragma Import(C,QTime_destroy,"QTime_destroy");

function QTime_create2(h: Integer; m: Integer; s: Integer := 0; ms: Integer := 0) return  QTimeH;
pragma Import(C,QTime_create2,"QTime_create2");

function QTime_isNull(handle: not null  QTimeH) return   Boolean;  
pragma Import(C,QTime_isNull,"QTime_isNull");

function QTime_isValid(handle: not null  QTimeH) return   Boolean;   
pragma Import(C,QTime_isValid,"QTime_isValid");

function QTime_hour(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_hour,"QTime_hour");

function QTime_minute(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_minute,"QTime_minute");

function QTime_second(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_second,"QTime_second");

function QTime_msec(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_msec,"QTime_msec");

function  QTime_toString(handle: not null  QTimeH; f: QtDateFormat := QtTextDate) return QStringH;
pragma Import(C,QTime_toString,"QTime_toString");

function  QTime_toString2(handle: not null  QTimeH; format: QStringH) return  QStringH;
pragma Import(C,QTime_toString2,"QTime_toString2");

function QTime_setHMS(handle: not null  QTimeH; h: Integer; m: Integer; s: Integer; ms: Integer := 0) return  Boolean;
pragma Import(C,QTime_setHMS,"QTime_setHMS");

function  QTime_addSecs(handle: not null  QTimeH;secs: Integer)  return  QTimeH;
pragma Import(C,QTime_addSecs,"QTime_addSecs");

function QTime_secsTo(handle: not null  QTimeH; p1: QTimeH) return   Integer;  
pragma Import(C,QTime_secsTo,"QTime_secsTo");

function  QTime_addMSecs(handle: not null  QTimeH;ms: Integer)  return QTimeH;
pragma Import(C,QTime_addMSecs,"QTime_addMSecs");

function QTime_msecsTo(handle: not null  QTimeH; p1: QTimeH) return   Integer;  
pragma Import(C,QTime_msecsTo,"QTime_msecsTo");

function  QTime_currentTime return QTimeH;
pragma Import(C,QTime_currentTime,"QTime_currentTime");

function  QTime_fromString(s: QStringH; f: QtDateFormat := QtTextDate) return  QTimeH;
pragma Import(C,QTime_fromString,"QTime_fromString");

function  QTime_fromString2(s: QStringH; format: QStringH) return QTimeH;
pragma Import(C,QTime_fromString2,"QTime_fromString2");

function QTime_isValid2(h: Integer; m: Integer; s: Integer; ms: Integer := 0) return  Boolean;
pragma Import(C,QTime_isValid2,"QTime_isValid2");

procedure QTime_start(handle: not null  QTimeH);  
pragma Import(C,QTime_start,"QTime_start");

function QTime_restart(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_restart,"QTime_restart");

function QTime_elapsed(handle: not null  QTimeH) return   Integer;  
pragma Import(C,QTime_elapsed,"QTime_elapsed");

function QDateTime_create return   QDateTimeH;   
pragma Import(C,QDateTime_create,"QDateTime_create");

procedure QDateTime_destroy(handle: not null  QDateTimeH);  
pragma Import(C,QDateTime_destroy,"QDateTime_destroy");

function QDateTime_create2(p1: QDateH) return   QDateTimeH;
pragma Import(C,QDateTime_create2,"QDateTime_create2");

function QDateTime_create3(p1: QDateH; p2: QTimeH; spec: QtTimeSpec := QtLocalTime) return  QDateTimeH;
pragma Import(C,QDateTime_create3,"QDateTime_create3");

function QDateTime_create4(other: QDateTimeH) return   QDateTimeH;
pragma Import(C,QDateTime_create4,"QDateTime_create4");

function QDateTime_isNull(handle: not null  QDateTimeH) return   Boolean;  
pragma Import(C,QDateTime_isNull,"QDateTime_isNull");

function QDateTime_isValid(handle: not null  QDateTimeH) return   Boolean;  
pragma Import(C,QDateTime_isValid,"QDateTime_isValid");

function  QDateTime_date(handle: not null  QDateTimeH) return QDateH;
pragma Import(C,QDateTime_date,"QDateTime_date");

function  QDateTime_time(handle: not null  QDateTimeH) return QTimeH;
pragma Import(C,QDateTime_time,"QDateTime_time");

function QDateTime_timeSpec(handle: not null  QDateTimeH) return   QtTimeSpec;  
pragma Import(C,QDateTime_timeSpec,"QDateTime_timeSpec");

function QDateTime_toTime_t(handle: not null  QDateTimeH) return   LongWord;  
pragma Import(C,QDateTime_toTime_t,"QDateTime_toTime_t");

procedure QDateTime_setDate(handle: not null  QDateTimeH; date: QDateH);  
pragma Import(C,QDateTime_setDate,"QDateTime_setDate");

procedure QDateTime_setTime(handle: not null  QDateTimeH; time: QTimeH);  
pragma Import(C,QDateTime_setTime,"QDateTime_setTime");

procedure QDateTime_setTimeSpec(handle: not null  QDateTimeH; spec: QtTimeSpec);  
pragma Import(C,QDateTime_setTimeSpec,"QDateTime_setTimeSpec");

procedure QDateTime_setTime_t(handle: not null  QDateTimeH; secsSince1Jan1970UTC: LongWord);  
pragma Import(C,QDateTime_setTime_t,"QDateTime_setTime_t");

function  QDateTime_toString(handle: not null  QDateTimeH; f: QtDateFormat := QtTextDate) return QStringH;
pragma Import(C,QDateTime_toString,"QDateTime_toString");

function  QDateTime_toString2(handle: not null  QDateTimeH; format: QStringH) return QStringH;
pragma Import(C,QDateTime_toString2,"QDateTime_toString2");

function  QDateTime_addDays(handle: not null  QDateTimeH;days: Integer) return QDateTimeH;
pragma Import(C,QDateTime_addDays,"QDateTime_addDays");

function  QDateTime_addMonths(handle: not null  QDateTimeH;months: Integer) return QDateTimeH;
pragma Import(C,QDateTime_addMonths,"QDateTime_addMonths");

function  QDateTime_addYears(handle: not null  QDateTimeH;years: Integer)  return QDateTimeH;
pragma Import(C,QDateTime_addYears,"QDateTime_addYears");

function  QDateTime_addSecs(handle: not null  QDateTimeH; secs: Integer) return  QDateTimeH;
pragma Import(C,QDateTime_addSecs,"QDateTime_addSecs");

function  QDateTime_addMSecs(handle: not null  QDateTimeH; msecs: long_long_integer)  return QDateTimeH;
pragma Import(C,QDateTime_addMSecs,"QDateTime_addMSecs");

function  QDateTime_toTimeSpec(handle: not null  QDateTimeH; spec: QtTimeSpec)  return QDateTimeH;
pragma Import(C,QDateTime_toTimeSpec,"QDateTime_toTimeSpec");

function  QDateTime_toLocalTime(handle: not null  QDateTimeH) return QDateTimeH;
pragma Import(C,QDateTime_toLocalTime,"QDateTime_toLocalTime");

function  QDateTime_toUTC(handle: not null  QDateTimeH) return QDateTimeH;
pragma Import(C,QDateTime_toUTC,"QDateTime_toUTC");

function QDateTime_daysTo(handle: not null  QDateTimeH; p1: QDateTimeH) return   Integer;  
pragma Import(C,QDateTime_daysTo,"QDateTime_daysTo");

function QDateTime_secsTo(handle: not null  QDateTimeH; p1: QDateTimeH) return   Integer;  
pragma Import(C,QDateTime_secsTo,"QDateTime_secsTo");

function  QDateTime_currentDateTime return QDateTimeH;
pragma Import(C,QDateTime_currentDateTime,"QDateTime_currentDateTime");

function  QDateTime_fromString(s: QStringH; f: QtDateFormat := QtTextDate) return QDateTimeH;
pragma Import(C,QDateTime_fromString,"QDateTime_fromString");

function  QDateTime_fromString2(s: QStringH; format: QStringH) return QDateTimeH;
pragma Import(C,QDateTime_fromString2,"QDateTime_fromString2");

function  QDateTime_fromTime_t(secsSince1Jan1970UTC: LongWord) return QDateTimeH;
pragma Import(C,QDateTime_fromTime_t,"QDateTime_fromTime_t");
-----------------------------------------------------------------------------------------------------------
function QDate_create(y: Integer; m: Integer; d: Integer) return   QDateH; 
function  QDate_toString(handle: not null  QDateH; format: QStringH) return QStringH;
function  QDate_fromString(s: QStringH; format: QStringH) return QDateH;
function QDate_isValid(y: Integer; m: Integer; d: Integer) return   Boolean;  
function QTime_create(h: Integer; m: Integer; s: Integer := 0; ms: Integer := 0) return  QTimeH;  
function  QTime_fromString(s: QStringH; format: QStringH) return QTimeH;
function QTime_isValid(h: Integer; m: Integer; s: Integer; ms: Integer := 0) return  Boolean;
function QDateTime_create(p1: QDateH) return   QDateTimeH;  
function QDateTime_create(p1: QDateH; p2: QTimeH; spec: QtTimeSpec := QtLocalTime) return  QDateTimeH;
function QDateTime_create(other: QDateTimeH) return   QDateTimeH; 
function  QDateTime_toString(handle: not null  QDateTimeH; format: QStringH) return QStringH;

----------------------------------------------------------------------------------------------------
 subtype Section is cardinal; 
    
     NoSection         : constant Section := 16#0000#;
     AmPmSection       : constant Section := 16#0001#;
     MSecSection       : constant Section := 16#0002#;
     SecondSection     : constant Section := 16#0004#;
     MinuteSection     : constant Section := 16#0008#;
     HourSection       : constant Section := 16#0010#;
     TimeSections_Mask : constant Section := AmPmSection + MSecSection + SecondSection + MinuteSection + HourSection;
     DaySection        : constant Section := 16#0100#;
     MonthSection      : constant Section := 16#0200#;
     YearSection       : constant Section := 16#0400#;
     DateSections_Mask : constant Section := DaySection + MonthSection + YearSection;

 type QDateProc is access procedure(date: QDateH);
 pragma Convention(C,QDateProc);

 type QTimeProc is access procedure(time: QTimeH);
 pragma Convention(C,QTimeProc);

 type QDateTimeProc is access procedure(dateTime: QDateTimeH);
 pragma Convention(C,QDateTimeProc);

 procedure QDateTimeEdit_signal_slot_dateChanged(handle: not null QDateTimeEditH;hook: QDateProc);
 pragma Import(C,QDateTimeEdit_signal_slot_dateChanged, "QDateTimeEdit_signal_slot_dateChanged");
 
 procedure QDateTimeEdit_signal_slot_timeChanged(handle: not null QDateTimeEditH; hook:QTimeProc);
 pragma Import(C,QDateTimeEdit_signal_slot_timeChanged, "QDateTimeEdit_signal_slot_timeChanged");
 
 procedure QDateTimeEdit_signal_slot_dateTimeChanged(handle: not null QDateTimeEditH; hook: QDateTimeProc);
 pragma Import(C,QDateTimeEdit_signal_slot_dateTimeChanged, "QDateTimeEdit_signal_slot_dateTimeChanged");

 function  QDateTimeEdit_create(parent:QWidgetH := null) return QDateTimeEditH;
 pragma Import(C,QDateTimeEdit_create, "QDateTimeEdit_create");
 
 function  QDateTimeEdit_create2(dateTime:QDateTimeH; parent:QWidgetH := null) return QDateTimeEditH;
 pragma Import(C,QDateTimeEdit_create2, "QDateTimeEdit_create2");
 
 function  QDateTimeEdit_create3(date:QDateH;parent:QWidgetH := null) return QDateTimeEditH;
 pragma Import(C,QDateTimeEdit_create3, "QDateTimeEdit_create3");
 
 function  QDateTimeEdit_create4(time:QTimeH; parent:QWidgetH := null) return QDateTimeEditH;
 pragma Import(C,QDateTimeEdit_create4, "QDateTimeEdit_create4");
 
 procedure QDateTimeEdit_destroy(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_destroy, "QDateTimeEdit_destroy");
 
 function  QDateTimeEdit_dateTime(handle: not null QDateTimeEditH) return QDateTimeH;
 pragma Import(C,QDateTimeEdit_dateTime, "QDateTimeEdit_dateTime");
 
 function  QDateTimeEdit_date(handle: not null QDateTimeEditH) return QDateH;
 pragma Import(C,QDateTimeEdit_date, "QDateTimeEdit_date");
 
 function  QDateTimeEdit_time(handle: not null QDateTimeEditH) return QTimeH;
 pragma Import(C,QDateTimeEdit_time, "QDateTimeEdit_time");
 
 function  QDateTimeEdit_minimumDateTime(handle: not null QDateTimeEditH) return QDateTimeH;
 pragma Import(C,QDateTimeEdit_minimumDateTime, "QDateTimeEdit_minimumDateTime");
 
 procedure QDateTimeEdit_clearMinimumDateTime(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMinimumDateTime, "QDateTimeEdit_clearMinimumDateTime");
 
 procedure QDateTimeEdit_setMinimumDateTime(handle: not null QDateTimeEditH; dateTime:QDateTimeH);
 pragma Import(C,QDateTimeEdit_setMinimumDateTime, "QDateTimeEdit_setMinimumDateTime");
 
 function  QDateTimeEdit_maximumDateTime(handle: not null QDateTimeEditH) return QDateTimeH;
 pragma Import(C,QDateTimeEdit_maximumDateTime, "QDateTimeEdit_maximumDateTime");
 
 procedure QDateTimeEdit_clearMaximumDateTime(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMaximumDateTime, "QDateTimeEdit_clearMaximumDateTime");
 
 procedure QDateTimeEdit_setMaximumDateTime(handle: not null QDateTimeEditH; dateTime:QDateTimeH);
 pragma Import(C,QDateTimeEdit_setMaximumDateTime, "QDateTimeEdit_setMaximumDateTime");
 
 procedure QDateTimeEdit_setDateTimeRange(handle: not null QDateTimeEditH; min,max:QDateTimeH);
 pragma Import(C,QDateTimeEdit_setDateTimeRange, "QDateTimeEdit_setDateTimeRange");
 
 function  QDateTimeEdit_minimumDate(handle: not null QDateTimeEditH) return QDateH;
 pragma Import(C,QDateTimeEdit_minimumDate, "QDateTimeEdit_minimumDate");
 
 procedure QDateTimeEdit_setMinimumDate(handle: not null QDateTimeEditH; min:QDateH);
 pragma Import(C,QDateTimeEdit_setMinimumDate, "QDateTimeEdit_setMinimumDate");
 
 procedure QDateTimeEdit_clearMinimumDate(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMinimumDate, "QDateTimeEdit_clearMinimumDate");
 
 function  QDateTimeEdit_maximumDate(handle: not null QDateTimeEditH) return QDateH;
 pragma Import(C,QDateTimeEdit_maximumDate, "QDateTimeEdit_maximumDate");
 
 procedure QDateTimeEdit_setMaximumDate(handle: not null QDateTimeEditH; max:QDateH);
 pragma Import(C,QDateTimeEdit_setMaximumDate, "QDateTimeEdit_setMaximumDate");
 
 procedure QDateTimeEdit_clearMaximumDate(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMaximumDate, "QDateTimeEdit_clearMaximumDate");
 
 procedure QDateTimeEdit_setDateRange(handle: not null QDateTimeEditH; min,max: QDateH);
 pragma Import(C,QDateTimeEdit_setDateRange, "QDateTimeEdit_setDateRange");
 
 function  QDateTimeEdit_minimumTime(handle: not null QDateTimeEditH) return QTimeH;
 pragma Import(C,QDateTimeEdit_minimumTime, "QDateTimeEdit_minimumTime");
 
 procedure QDateTimeEdit_setMinimumTime(handle: not null QDateTimeEditH; min:QTimeH);
 pragma Import(C,QDateTimeEdit_setMinimumTime, "QDateTimeEdit_setMinimumTime");
 
 procedure QDateTimeEdit_clearMinimumTime(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMinimumTime, "QDateTimeEdit_clearMinimumTime");
 
 function  QDateTimeEdit_maximumTime(handle: not null QDateTimeEditH) return QTimeH;
 pragma Import(C,QDateTimeEdit_maximumTime, "QDateTimeEdit_maximumTime");
 
 procedure QDateTimeEdit_setMaximumTime(handle: not null QDateTimeEditH; max:QTimeH);
 pragma Import(C,QDateTimeEdit_setMaximumTime, "QDateTimeEdit_setMaximumTime");
 
 procedure QDateTimeEdit_clearMaximumTime(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clearMaximumTime, "QDateTimeEdit_clearMaximumTime");
 
 procedure QDateTimeEdit_setTimeRange(handle: not null QDateTimeEditH; min,max: QTimeH);
 pragma Import(C,QDateTimeEdit_setTimeRange, "QDateTimeEdit_setTimeRange");
 
 function  QDateTimeEdit_displayedSections(handle: not null QDateTimeEditH) return integer;
 pragma Import(C,QDateTimeEdit_displayedSections, "QDateTimeEdit_displayedSections");
 
 function  QDateTimeEdit_currentSection(handle: not null QDateTimeEditH) return Section;
 pragma Import(C,QDateTimeEdit_currentSection, "QDateTimeEdit_currentSection");
 
 function  QDateTimeEdit_sectionAt(handle: not null QDateTimeEditH; index:integer) return Section;
 pragma Import(C,QDateTimeEdit_sectionAt, "QDateTimeEdit_sectionAt");
 
 procedure QDateTimeEdit_setCurrentSection(handle: not null QDateTimeEditH; currentSection:Section);
 pragma Import(C,QDateTimeEdit_setCurrentSection, "QDateTimeEdit_setCurrentSection");
 
 function  QDateTimeEdit_currentSectionIndex(handle: not null QDateTimeEditH) return integer;
 pragma Import(C,QDateTimeEdit_currentSectionIndex, "QDateTimeEdit_currentSectionIndex");
 
 procedure QDateTimeEdit_setCurrentSectionIndex(handle: not null QDateTimeEditH;index:integer);
 pragma Import(C,QDateTimeEdit_setCurrentSectionIndex, "QDateTimeEdit_setCurrentSectionIndex");
 
 function  QDateTimeEdit_calendarWidget(handle: not null QDateTimeEditH) return QCalendarWidgetH;
 pragma Import(C,QDateTimeEdit_calendarWidget, "QDateTimeEdit_calendarWidget");
 
 procedure QDateTimeEdit_setCalendarWidget(handle: not null QDateTimeEditH; calendarWidget:QCalendarWidgetH);
 pragma Import(C,QDateTimeEdit_setCalendarWidget, "QDateTimeEdit_setCalendarWidget");
 
 function  QDateTimeEdit_sectionCount(handle: not null QDateTimeEditH) return integer;
 pragma Import(C,QDateTimeEdit_sectionCount, "QDateTimeEdit_sectionCount");
 
 procedure QDateTimeEdit_setSelectedSection(handle: not null QDateTimeEditH; selectedSection:Section);
 pragma Import(C,QDateTimeEdit_setSelectedSection, "QDateTimeEdit_setSelectedSection");
 
 function  QDateTimeEdit_sectionText(handle: not null QDateTimeEditH;selectedSection:Section) return QStringH;
 pragma Import(C,QDateTimeEdit_sectionText, "QDateTimeEdit_sectionText");
 
 function  QDateTimeEdit_displayFormat(handle: not null QDateTimeEditH) return QStringH;
 pragma Import(C,QDateTimeEdit_displayFormat, "QDateTimeEdit_displayFormat");
 
 procedure QDateTimeEdit_setDisplayFormat(handle: not null QDateTimeEditH; format:QStringH);
 pragma Import(C,QDateTimeEdit_setDisplayFormat, "QDateTimeEdit_setDisplayFormat");
 
 function  QDateTimeEdit_calendarPopup(handle: not null QDateTimeEditH) return boolean;
 pragma Import(C,QDateTimeEdit_calendarPopup, "QDateTimeEdit_calendarPopup");
 
 procedure QDateTimeEdit_setCalendarPopup(handle: not null QDateTimeEditH; isEnable: boolean);
 pragma Import(C,QDateTimeEdit_setCalendarPopup, "QDateTimeEdit_setCalendarPopup");
 
 function  QDateTimeEdit_timeSpec(handle: not null QDateTimeEditH) return integer;
 pragma Import(C,QDateTimeEdit_timeSpec, "QDateTimeEdit_timeSpec");
 
 procedure QDateTimeEdit_setTimeSpec(handle: not null QDateTimeEditH; spec:integer);
 pragma Import(C,QDateTimeEdit_setTimeSpec, "QDateTimeEdit_setTimeSpec");
 
 function  QDateTimeEdit_sizeHint(handle: not null QDateTimeEditH) return QSizeH;
 pragma Import(C,QDateTimeEdit_sizeHint, "QDateTimeEdit_sizeHint");
 
 procedure QDateTimeEdit_clear(handle: not null QDateTimeEditH);
 pragma Import(C,QDateTimeEdit_clear, "QDateTimeEdit_clear");
 
 procedure QDateTimeEdit_stepBy(handle: not null QDateTimeEditH; steps: integer);
 pragma Import(C,QDateTimeEdit_stepBy, "QDateTimeEdit_stepBy");
 
 function  QDateTimeEdit_event(handle: not null QDateTimeEditH;event:QEventH) return boolean;
 pragma Import(C,QDateTimeEdit_event, "QDateTimeEdit_event");

 procedure QDateTimeEdit_setDateTime(handle:not null QDateTimeEditH; dateTime:QDateTimeH);
 pragma Import(C,QDateTimeEdit_setDateTime, "QDateTimeEdit_setDateTime");
 
 procedure QDateTimeEdit_setDate(handle:not null QDateTimeEditH;date:QDateH);
 pragma Import(C,QDateTimeEdit_setDate, "QDateTimeEdit_setDate");
 
 procedure QDateTimeEdit_setTime(handle:not null QDateTimeEditH;time:QTimeH);
 pragma Import(C,QDateTimeEdit_setTime, "QDateTimeEdit_setTime");
 
----------------------------------------------------------------------------------------------------------
 procedure QDate_getDate(handle:not null QDateH;year,month,day:pinteger);
 pragma Import(C,QDate_getDate, "QDate_getDate");
 
 function  QTime_fromMSecsSinceStartOfDay(msecs:integer) return QTimeH;
 pragma Import(C,QTime_fromMSecsSinceStartOfDay, "QTime_fromMSecsSinceStartOfDay");
 
 function  QTime_msecsSinceStartOfDay(handle:not null QTimeH) return integer;
 pragma Import(C,QTime_msecsSinceStartOfDay, "QTime_msecsSinceStartOfDay");
 
 function  QDateTime_create5(date:QDateH; time:QTimeH; spec:QtTimeSpec; offsetSeconds:integer) return QDateTimeH;
 pragma Import(C,QDateTime_create5, "QDateTime_create5");
 
 function  QDateTime_create6(date:QDateH;time:QTimeH; timeZone:QTimeZoneH) return QDateTimeH;
 pragma Import(C,QDateTime_create6, "QDateTime_create6");
 
 procedure QDateTime_swap(handle:not null QDateTimeH;other:QDateTimeH);
 pragma Import(C,QDateTime_swap, "QDateTime_swap");
 
 function  QDateTime_timeZone(handle:not null QDateTimeH) return QTimeZoneH;
 pragma Import(C,QDateTime_timeZone, "QDateTime_timeZone");
 
 function  QDateTime_timeZoneAbbreviation(handle:not null QDateTimeH) return QStringH;
 pragma Import(C,QDateTime_timeZoneAbbreviation, "QDateTime_timeZoneAbbreviation");
 
 function  QDateTime_isDaylightTime(handle:not null QDateTimeH) return boolean;
 pragma Import(C,QDateTime_isDaylightTime, "QDateTime_isDaylightTime");
 
 procedure QDateTime_setOffsetFromUtc(handle:not null QDateTimeH;offsetSeconds:integer);
 pragma Import(C,QDateTime_setOffsetFromUtc, "QDateTime_setOffsetFromUtc");
 
 procedure QDateTime_setTimeZone(handle:not null QDateTimeH;toZone:QTimeZoneH);
 pragma Import(C,QDateTime_setTimeZone, "QDateTime_setTimeZone");
 
 procedure QDateTime_setMSecsSinceEpoch(handle:not null QDateTimeH;msecs:qint64);
 pragma Import(C,QDateTime_setMSecsSinceEpoch, "QDateTime_setMSecsSinceEpoch");
 
 function  QDateTime_toMSecsSinceEpoch(handle:not null QDateTimeH) return qint64;
 pragma Import(C,QDateTime_toMSecsSinceEpoch, "QDateTime_toMSecsSinceEpoch");

 function  QDateTime_toOffsetFromUtc(handle:not null QDateTimeH; offsetSeconds:integer) return QDateTimeH;
 pragma Import(C,QDateTime_toOffsetFromUtc, "QDateTime_toOffsetFromUtc");
 
 function  QDateTime_toTimeZone(handle:not null QDateTimeH;toZone:QTimeZoneH) return QDateTimeH;
 pragma Import(C,QDateTime_toTimeZone, "QDateTime_toTimeZone");
 
 function  QDateTime_msecsTo(handle:not null QDateTimeH;dateTime:QDateTimeH) return qint64;
 pragma Import(C,QDateTime_msecsTo, "QDateTime_msecsTo");
 
 function  QDateTime_fromTime_t2(secsSince1Jan1970UTC:quint; timaZone:QTimeZoneH) return QDateTimeH;
 pragma Import(C,QDateTime_fromTime_t2, "QDateTime_fromTime_t2");
 
 function  QDateTime_fromMSecsSinceEpoch(msecs:qint64) return QDateTimeH;
 pragma Import(C,QDateTime_fromMSecsSinceEpoch, "QDateTime_fromMSecsSinceEpoch");
 
 function  QDateTime_fromMSecsSinceEpoch2(msecs:qint64; spec:QtTimeSpec;offsetFromUtc:integer := 0) return QDateTimeH;
 pragma Import(C,QDateTime_fromMSecsSinceEpoch2, "QDateTime_fromMSecsSinceEpoch2");
 
 function  QDateTime_currentMSecsSinceEpoch return qint64;
 pragma Import(C,QDateTime_currentMSecsSinceEpoch, "QDateTime_currentMSecsSinceEpoch");
 
----------------------------------------------------------------------------------------------------------
 function  QDateTimeEdit_create(dateTime:QDateTimeH; parent:QWidgetH := null) return QDateTimeEditH;
 function  QDateTimeEdit_create(date:QDateH;parent:QWidgetH := null) return QDateTimeEditH;
 function  QDateTimeEdit_create(time:QTimeH; parent:QWidgetH := null) return QDateTimeEditH;
 function  QDateTime_create(date:QDateH; time:QTimeH; spec:QtTimeSpec; offsetSeconds:integer) return QDateTimeH;
 function  QDateTime_create(date:QDateH;time:QTimeH; timeZone:QTimeZoneH) return QDateTimeH;
 function  QDateTime_fromTime_t(secsSince1Jan1970UTC:quint; timaZone:QTimeZoneH) return QDateTimeH;
 function  QDateTime_fromMSecsSinceEpoch(msecs:qint64; spec:QtTimeSpec;offsetFromUtc:integer := 0) return QDateTimeH;
------------------------------------------------------------------------
 function  QDateEdit_create(parent:QWidgetH := null) return QDateEditH;
 pragma Import(C,QDateEdit_create, "QDateEdit_create");
 
 function  QDateEdit_create2(date:QDateH;parent:QWidgetH := null) return QDateEditH;
 pragma Import(C,QDateEdit_create2, "QDateEdit_create2");
 
 procedure QDateEdit_destroy(handle:QDateEditH);
 pragma Import(C,QDateEdit_destroy, "QDateEdit_destroy");
 
 function  QTimeEdit_create(parent:QWidgetH := null) return QTimeEditH;
 pragma Import(C,QTimeEdit_create, "QTimeEdit_create");
 
 function  QTimeEdit_create2(time:QTimeH;parent:QWidgetH := null) return QTimeEditH;
 pragma Import(C,QTimeEdit_create2, "QTimeEdit_create2");
 
 procedure QTimeEdit_destroy(handle:QTimeEditH);
 pragma Import(C,QTimeEdit_destroy, "QTimeEdit_destroy");

 procedure QTimeEdit_signal_slot_userTimeChanged(handle:not null QTimeEditH; hook:QTimeProc);
 pragma Import(C,QTimeEdit_signal_slot_userTimeChanged, "QTimeEdit_signal_slot_userTimeChanged");
 
 procedure QDateEdit_signal_slot_userDateChanged(handle:not null QDateEditH; hook:QDateProc);
 pragma Import(C,QDateEdit_signal_slot_userDateChanged, "QDateEdit_signal_slot_userDateChanged");

 function  QDateEdit_create(date:QDateH;parent:QWidgetH := null) return QDateEditH;
 function  QTimeEdit_create(time:QTimeH;parent:QWidgetH := null) return QTimeEditH;

 function  "="(p1,p2: QDateTimeH) return boolean;
 pragma Import(C,"=", "QDateTime_equal");
 
 function  "<"(p1,p2: QDateTimeH) return boolean;
 pragma Import(C,"<", "QDateTime_lt");
 
 function  "<="(p1,p2: QDateTimeH) return boolean;
 pragma Import(C,"<=", "QDateTime_le");
 
 function  ">"(p1,p2: QDateTimeH) return boolean;
 pragma Import(C,">", "QDateTime_gt");
 
 function  ">="(p1,p2: QDateTimeH) return boolean;
 pragma Import(C,">=", "QDateTime_ge");
 

end Qt.QDateTime;
