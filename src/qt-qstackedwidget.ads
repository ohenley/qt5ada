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

package Qt.QStackedwidget  is

 function  QStackedWidget_create(parent:QWidgetH) return QStackedWidgetH;
 pragma Import(C,QStackedWidget_create ,"QStackedWidget_create");

 procedure QStackedWidget_destroy(handle: not null  QStackedWidgetH);
 pragma Import(C,QStackedWidget_destroy  ,"QStackedWidget_destroy");

 function  QStackedWidget_addWidget(handle: not null  QStackedWidgetH; widget: QWidgetH) return integer;
 pragma Import(C,QStackedWidget_addWidget ,"QStackedWidget_addWidget");

 function  QStackedWidget_insertWidget(handle: not null  QStackedWidgetH; indx:integer; widget: QWidgetH) return integer;
 pragma Import(C,QStackedWidget_insertWidget ,"QStackedWidget_insertWidget");

 procedure QStackedWidget_removeWidget(handle: not null  QStackedWidgetH; widget: QWidgetH);
 pragma Import(C,QStackedWidget_removeWidget ,"QStackedWidget_removeWidget");

 function  QStackedWidget_currentWidget(handle: not null  QStackedWidgetH) return QWidgetH;
 pragma Import(C,QStackedWidget_currentWidget ,"QStackedWidget_currentWidget");

 function  QStackedWidget_currentIndex(handle: not null  QStackedWidgetH) return integer;
 pragma Import(C,QStackedWidget_currentIndex  ,"QStackedWidget_currentIndex");

 function  QStackedWidget_indexOf(handle: not null  QStackedWidgetH; widget:QWidgetH) return integer;
 pragma Import(C,QStackedWidget_indexOf ,"QStackedWidget_indexOf");

 function  QStackedWidget_widget(handle: not null  QStackedWidgetH; number: integer) return QWidgetH;
 pragma Import(C,QStackedWidget_widget ,"QStackedWidget_widget");

 function  QStackedWidget_count(handle: not null  QStackedWidgetH) return integer;
 pragma Import(C,QStackedWidget_count ,"QStackedWidget_count");

 procedure QStackedWidget_setCurrentIndex(handle: not null  QStackedWidgetH; indx:integer);
 pragma Import(C, QStackedWidget_setCurrentIndex ,"QStackedWidget_setCurrentIndex");

 procedure QStackedWidget_setCurrentWidget(handle: not null  QStackedWidgetH;widget: QWidgetH);
 pragma Import(C, QStackedWidget_setCurrentWidget ,"QStackedWidget_setCurrentWidget");

 type QStackedWidget_currentChangedEvent is access procedure(p1:integer);
 pragma Convention(C,QStackedWidget_currentChangedEvent);

 type QStackedWidget_widgetRemovedEvent is access procedure(p1:integer);
 pragma Convention(C,QStackedWidget_widgetRemovedEvent);
 
 procedure QStackedWidget_signal_slot_currentChanged(handle: not null QStackedWidgetH; hook:QStackedWidget_currentChangedEvent);
 pragma Import(C,QStackedWidget_signal_slot_currentChanged, "QStackedWidget_signal_slot_currentChanged");
 
 procedure QStackedWidget_signal_slot_widgetRemoved(handle: not null QStackedWidgetH; hook:QStackedWidget_widgetRemovedEvent);
 pragma Import(C,QStackedWidget_signal_slot_widgetRemoved, "QStackedWidget_signal_slot_widgetRemoved");

end Qt.QStackedwidget;
