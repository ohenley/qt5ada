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

package Qt.QStackedLayout  is

 type  StackingMode is ( QStackedLayoutStackOne, QStackedLayoutStackAll );
 pragma Convention(C,StackingMode);

 function  QStackedLayout_create return QStackedLayoutH;
 pragma Import(C, QStackedLayout_create ,"QStackedLayout_create");

 procedure QStackedLayout_destroy(handle: not null  QStackedLayoutH);
 pragma Import(C, QStackedLayout_destroy ,"QStackedLayout_destroy");

 function  QStackedLayout_create2(parent:QWidgetH) return QStackedLayoutH;
 pragma Import(C, QStackedLayout_create2                           ,"QStackedLayout_create2");

 function  QStackedLayout_create3(parentLayout: QLayoutH) return QStackedLayoutH;
 pragma Import(C, QStackedLayout_create3  ,"QStackedLayout_create3");

 function  QStackedLayout_addWidget(handle: not null  QStackedLayoutH; widget: QWidgetH) return integer;
 pragma Import(C, QStackedLayout_addWidget ,"QStackedLayout_addWidget");

 function  QStackedLayout_insertWidget(handle: not null  QStackedLayoutH; indx:integer; widget: QWidgetH) return integer;
 pragma Import(C, QStackedLayout_insertWidget ,"QStackedLayout_insertWidget");

 function  QStackedLayout_currentWidget(handle: not null  QStackedLayoutH) return QWidgetH;
 pragma Import(C, QStackedLayout_currentWidget ,"QStackedLayout_currentWidget");

 function  QStackedLayout_currentIndex(handle: not null  QStackedLayoutH) return integer;
 pragma Import(C, QStackedLayout_currentIndex  ,"QStackedLayout_currentIndex");

 function  QStackedLayout_widget(handle: not null  QStackedLayoutH; number: integer) return QWidgetH;
 pragma Import(C, QStackedLayout_widget  ,"QStackedLayout_widget");

 function  QStackedLayout_count(handle: not null  QStackedLayoutH) return integer;
 pragma Import(C, QStackedLayout_count  ,"QStackedLayout_count");

 function  QStackedLayout_stackingMode(handle: not null  QStackedLayoutH) return StackingMode;
 pragma Import(C, QStackedLayout_stackingMode  ,"QStackedLayout_stackingMode");

 procedure QStackedLayout_setStackingMode(handle: not null  QStackedLayoutH; sMode :StackingMode);
 pragma Import(C, QStackedLayout_setStackingMode  ,"QStackedLayout_setStackingMode");

 procedure QStackedLayout_addItem(handle: not null  QStackedLayoutH; item: QLayoutItemH);
 pragma Import(C, QStackedLayout_addItem  ,"QStackedLayout_addItem");

 function  QStackedLayout_sizeHint(handle: not null  QStackedLayoutH) return  QSizeH;
 pragma Import(C, QStackedLayout_sizeHint  ,"QStackedLayout_sizeHint");

 function  QStackedLayout_minimumSize(handle: not null  QStackedLayoutH) return QSizeH;
 pragma Import(C,QStackedLayout_minimumSize  ,"QStackedLayout_minimumSize");

 function  QStackedLayout_itemAt(handle: not null  QStackedLayoutH; itemAt: integer) return QLayoutItemH;
 pragma Import(C,QStackedLayout_itemAt  ,"QStackedLayout_itemAt");

 function  QStackedLayout_takeAt(handle: not null  QStackedLayoutH; takeAt: integer) return QLayoutItemH;
 pragma Import(C, QStackedLayout_takeAt ,"QStackedLayout_takeAt");

 procedure QStackedLayout_setGeometry(handle: not null  QStackedLayoutH;rect: QRectH);
 pragma Import(C, QStackedLayout_setGeometry ,"QStackedLayout_setGeometry");

 procedure QStackedLayout_setCurrentIndex(handle: not null  QStackedLayoutH; indx:integer);
 pragma Import(C, QStackedLayout_setCurrentIndex ,"QStackedLayout_setCurrentIndex");

 procedure QStackedLayout_setCurrentWidget(handle: not null  QStackedLayoutH; widget: QWidgetH);
 pragma Import(C, QStackedLayout_setCurrentWidget ,"QStackedLayout_setCurrentWidget");

 type QStackedLayout_widgetRemovedEvent is access procedure(p1:integer);
 pragma Convention(C,QStackedLayout_widgetRemovedEvent);

 type QStackedLayout_currentChangedEvent is access procedure(p1:integer);
 pragma Convention(C,QStackedLayout_currentChangedEvent);
 
 procedure QStackedLayout_signal_slot_widgetRemoved(handle: not null QStackedLayoutH; hook:QStackedLayout_widgetRemovedEvent);
 pragma Import(C,QStackedLayout_signal_slot_widgetRemoved, "QStackedLayout_signal_slot_widgetRemoved");
 
 procedure QStackedLayout_signal_slot_currentChanged(handle: not null QStackedLayoutH; hook:QStackedLayout_currentChangedEvent);
 pragma Import(C,QStackedLayout_signal_slot_currentChanged, "QStackedLayout_signal_slot_currentChanged");
 
--------------------------------------------------------------------------------------------------------
 function  QStackedLayout_create(parent:QWidgetH) return QStackedLayoutH;
end Qt.QStackedLayout;
