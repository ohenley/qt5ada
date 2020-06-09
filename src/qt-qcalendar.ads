--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QCalendar  is

type HorizontalHeaderFormat is (NoHorizontalHeader, SingleLetterDayNames, ShortDayNames, LongDayNames );
pragma Convention(C, HorizontalHeaderFormat);

type VerticalHeaderFormat is (NoVerticalHeader, ISOWeekNumbers );
pragma Convention(C, VerticalHeaderFormat);

type SelectionMode is (NoSelection, SingleSelection );
pragma Convention(C, SelectionMode);

function QCalendarWidget_create(parent: QWidgetH := null) return QCalendarWidgetH;   
pragma Import(C,QCalendarWidget_create,"QCalendarWidget_create");

procedure QCalendarWidget_destroy(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_destroy,"QCalendarWidget_destroy");

function  QCalendarWidget_sizeHint(handle: not null  QCalendarWidgetH) return QSizeH;
pragma Import(C,QCalendarWidget_sizeHint,"QCalendarWidget_sizeHint");

function  QCalendarWidget_minimumSizeHint(handle: not null  QCalendarWidgetH) return QSizeH;
pragma Import(C,QCalendarWidget_minimumSizeHint,"QCalendarWidget_minimumSizeHint");

function  QCalendarWidget_selectedDate(handle: not null  QCalendarWidgetH) return QDateH;
pragma Import(C,QCalendarWidget_selectedDate,"QCalendarWidget_selectedDate");

function QCalendarWidget_yearShown(handle: not null  QCalendarWidgetH) return  Integer;   
pragma Import(C,QCalendarWidget_yearShown,"QCalendarWidget_yearShown");

function QCalendarWidget_monthShown(handle: not null  QCalendarWidgetH) return  Integer;   
pragma Import(C,QCalendarWidget_monthShown,"QCalendarWidget_monthShown");

function  QCalendarWidget_minimumDate(handle: not null  QCalendarWidgetH) return QDateH;
pragma Import(C,QCalendarWidget_minimumDate,"QCalendarWidget_minimumDate");

procedure QCalendarWidget_setMinimumDate(handle: not null  QCalendarWidgetH; date: QDateH);   
pragma Import(C,QCalendarWidget_setMinimumDate,"QCalendarWidget_setMinimumDate");

function  QCalendarWidget_maximumDate(handle: not null  QCalendarWidgetH) return QDateH;
pragma Import(C,QCalendarWidget_maximumDate,"QCalendarWidget_maximumDate");

procedure QCalendarWidget_setMaximumDate(handle: not null  QCalendarWidgetH; date: QDateH);   
pragma Import(C,QCalendarWidget_setMaximumDate,"QCalendarWidget_setMaximumDate");

function QCalendarWidget_firstDayOfWeek(handle: not null  QCalendarWidgetH) return  QtDayOfWeek;   
pragma Import(C,QCalendarWidget_firstDayOfWeek,"QCalendarWidget_firstDayOfWeek");

procedure QCalendarWidget_setFirstDayOfWeek(handle: not null  QCalendarWidgetH; dayOfWeek: QtDayOfWeek);   
pragma Import(C,QCalendarWidget_setFirstDayOfWeek,"QCalendarWidget_setFirstDayOfWeek");

--function QCalendarWidget_isHeaderVisible(handle: not null  QCalendarWidgetH) return  Boolean;   
--pragma Import(C,QCalendarWidget_isHeaderVisible,"QCalendarWidget_isHeaderVisible");
--procedure QCalendarWidget_setHeaderVisible(handle: not null  QCalendarWidgetH; show: Boolean);   
--pragma Import(C,QCalendarWidget_setHeaderVisible,"QCalendarWidget_setHeaderVisible");

function QCalendarWidget_isNavigationBarVisible(handle: not null  QCalendarWidgetH) return  Boolean;   
pragma Import(C,QCalendarWidget_isNavigationBarVisible,"QCalendarWidget_isNavigationBarVisible");

function QCalendarWidget_isGridVisible(handle: not null  QCalendarWidgetH) return  Boolean;   
pragma Import(C,QCalendarWidget_isGridVisible,"QCalendarWidget_isGridVisible");

function QCalendarWidget_selectionMode(handle: not null  QCalendarWidgetH) return  SelectionMode;   
pragma Import(C,QCalendarWidget_selectionMode,"QCalendarWidget_selectionMode");

procedure QCalendarWidget_setSelectionMode(handle: not null  QCalendarWidgetH; mode: SelectionMode);   
pragma Import(C,QCalendarWidget_setSelectionMode,"QCalendarWidget_setSelectionMode");

function QCalendarWidget_horizontalHeaderFormat(handle: not null  QCalendarWidgetH) return  HorizontalHeaderFormat;   
pragma Import(C,QCalendarWidget_horizontalHeaderFormat,"QCalendarWidget_horizontalHeaderFormat");

procedure QCalendarWidget_setHorizontalHeaderFormat(handle: not null  QCalendarWidgetH; format: HorizontalHeaderFormat);   
pragma Import(C,QCalendarWidget_setHorizontalHeaderFormat,"QCalendarWidget_setHorizontalHeaderFormat");

function QCalendarWidget_verticalHeaderFormat(handle: not null  QCalendarWidgetH) return  VerticalHeaderFormat;   
pragma Import(C,QCalendarWidget_verticalHeaderFormat,"QCalendarWidget_verticalHeaderFormat");

procedure QCalendarWidget_setVerticalHeaderFormat(handle: not null  QCalendarWidgetH; format: VerticalHeaderFormat);   
pragma Import(C,QCalendarWidget_setVerticalHeaderFormat,"QCalendarWidget_setVerticalHeaderFormat");

function  QCalendarWidget_headerTextFormat(handle: not null  QCalendarWidgetH) return QTextCharFormatH;
pragma Import(C,QCalendarWidget_headerTextFormat,"QCalendarWidget_headerTextFormat");

procedure QCalendarWidget_setHeaderTextFormat(handle: not null  QCalendarWidgetH; format: QTextCharFormatH);   
pragma Import(C,QCalendarWidget_setHeaderTextFormat,"QCalendarWidget_setHeaderTextFormat");

function  QCalendarWidget_weekdayTextFormat(handle: not null  QCalendarWidgetH; dayOfWeek: QtDayOfWeek)  return QTextCharFormatH;
pragma Import(C,QCalendarWidget_weekdayTextFormat,"QCalendarWidget_weekdayTextFormat");

procedure QCalendarWidget_setWeekdayTextFormat(handle: not null  QCalendarWidgetH; dayOfWeek: QtDayOfWeek; format: QTextCharFormatH);   
pragma Import(C,QCalendarWidget_setWeekdayTextFormat,"QCalendarWidget_setWeekdayTextFormat");

function  QCalendarWidget_dateTextFormat2(handle: not null  QCalendarWidgetH; date: QDateH) return QTextCharFormatH;
pragma Import(C,QCalendarWidget_dateTextFormat2,"QCalendarWidget_dateTextFormat2");

procedure QCalendarWidget_setDateTextFormat(handle: not null  QCalendarWidgetH; date: QDateH; color: QTextCharFormatH);   
pragma Import(C,QCalendarWidget_setDateTextFormat,"QCalendarWidget_setDateTextFormat");

function QCalendarWidget_isDateEditEnabled(handle: not null  QCalendarWidgetH) return  Boolean;   
pragma Import(C,QCalendarWidget_isDateEditEnabled,"QCalendarWidget_isDateEditEnabled");

procedure QCalendarWidget_setDateEditEnabled(handle: not null  QCalendarWidgetH; enable: Boolean);   
pragma Import(C,QCalendarWidget_setDateEditEnabled,"QCalendarWidget_setDateEditEnabled");

function QCalendarWidget_dateEditAcceptDelay(handle: not null  QCalendarWidgetH) return  Integer;   
pragma Import(C,QCalendarWidget_dateEditAcceptDelay,"QCalendarWidget_dateEditAcceptDelay");

procedure QCalendarWidget_setDateEditAcceptDelay(handle: not null  QCalendarWidgetH; delays: Integer);
pragma Import(C,QCalendarWidget_setDateEditAcceptDelay,"QCalendarWidget_setDateEditAcceptDelay");

procedure QCalendarWidget_setSelectedDate(handle: not null  QCalendarWidgetH; date: QDateH);   
pragma Import(C,QCalendarWidget_setSelectedDate,"QCalendarWidget_setSelectedDate");

procedure QCalendarWidget_setDateRange(handle: not null  QCalendarWidgetH; min: QDateH; max: QDateH);   
pragma Import(C,QCalendarWidget_setDateRange,"QCalendarWidget_setDateRange");

procedure QCalendarWidget_setCurrentPage(handle: not null  QCalendarWidgetH; year: Integer; month: Integer);   
pragma Import(C,QCalendarWidget_setCurrentPage,"QCalendarWidget_setCurrentPage");

procedure QCalendarWidget_setGridVisible(handle: not null  QCalendarWidgetH; show: Boolean);   
pragma Import(C,QCalendarWidget_setGridVisible,"QCalendarWidget_setGridVisible");

procedure QCalendarWidget_setNavigationBarVisible(handle: not null  QCalendarWidgetH; visible: Boolean);   
pragma Import(C,QCalendarWidget_setNavigationBarVisible,"QCalendarWidget_setNavigationBarVisible");

procedure QCalendarWidget_showNextMonth(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showNextMonth,"QCalendarWidget_showNextMonth");

procedure QCalendarWidget_showPreviousMonth(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showPreviousMonth,"QCalendarWidget_showPreviousMonth");

procedure QCalendarWidget_showNextYear(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showNextYear,"QCalendarWidget_showNextYear");

procedure QCalendarWidget_showPreviousYear(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showPreviousYear,"QCalendarWidget_showPreviousYear");

procedure QCalendarWidget_showSelectedDate(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showSelectedDate,"QCalendarWidget_showSelectedDate");

procedure QCalendarWidget_showToday(handle: not null  QCalendarWidgetH);   
pragma Import(C,QCalendarWidget_showToday,"QCalendarWidget_showToday");

procedure QCalendarWidget_setLocale(handle:not null QCalendarWidgetH;locale:QLocaleH);
pragma Import(C,QCalendarWidget_setLocale, "QCalendarWidget_setLocale");

type QCalendarWidget_selectionChangedEvent is access procedure ;
pragma Convention(C, QCalendarWidget_selectionChangedEvent);

type QCalendarWidget_clickedEvent is access procedure (date: QDateH);
pragma Convention(C, QCalendarWidget_clickedEvent);

type QCalendarWidget_activatedEvent is access procedure (date: QDateH);
pragma Convention(C, QCalendarWidget_activatedEvent);

type QCalendarWidget_currentPageChangedEvent is access procedure (year: Integer; month: Integer);
pragma Convention(C, QCalendarWidget_currentPageChangedEvent);
 
 procedure QCalendarWidget_signal_slot_selectionChanged(handle: not null QCalendarWidgetH; hook:QCalendarWidget_selectionChangedEvent);
 pragma Import(C,QCalendarWidget_signal_slot_selectionChanged, "QCalendarWidget_signal_slot_selectionChanged");
 
 procedure QCalendarWidget_signal_slot_clicked(handle: not null QCalendarWidgetH; hook:QCalendarWidget_clickedEvent);
 pragma Import(C,QCalendarWidget_signal_slot_clicked, "QCalendarWidget_signal_slot_clicked");
 
 procedure QCalendarWidget_signal_slot_activated(handle: not null QCalendarWidgetH; hook:QCalendarWidget_activatedEvent);
 pragma Import(C,QCalendarWidget_signal_slot_activated, "QCalendarWidget_signal_slot_activated");
 
 procedure QCalendarWidget_signal_slot_currentPageChanged(handle: not null QCalendarWidgetH; hook:QCalendarWidget_currentPageChangedEvent);
 pragma Import(C,QCalendarWidget_signal_slot_currentPageChanged, "QCalendarWidget_signal_slot_currentPageChanged");
 
------------------------------------------------------------------------------------------------------------------
function  QCalendarWidget_dateTextFormat(handle: not null  QCalendarWidgetH; date: QDateH)  return QTextCharFormatH;

end Qt.QCalendar;
