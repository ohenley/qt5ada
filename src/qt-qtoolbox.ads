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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QToolBox             is

function QToolBox_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QToolBoxH;   
pragma Import(C,QToolBox_create,"QToolBox_create");

procedure QToolBox_destroy(handle: not null  QToolBoxH);   
pragma Import(C,QToolBox_destroy,"QToolBox_destroy");

function QToolBox_addItem(handle: not null  QToolBoxH; widget: QWidgetH; text: QStringH) return  Integer;    
pragma Import(C,QToolBox_addItem,"QToolBox_addItem");

function QToolBox_addItem2(handle: not null  QToolBoxH; widget: QWidgetH; icon: QIconH; text: QStringH) return  Integer;
pragma Import(C,QToolBox_addItem2,"QToolBox_addItem2");

function QToolBox_insertItem(handle: not null  QToolBoxH; index: Integer; widget: QWidgetH; text: QStringH) return  Integer;    
pragma Import(C,QToolBox_insertItem,"QToolBox_insertItem");

function QToolBox_insertItem2(handle: not null  QToolBoxH; index: Integer; widget: QWidgetH; icon: QIconH; text: QStringH) return  Integer;
pragma Import(C,QToolBox_insertItem2,"QToolBox_insertItem2");

procedure QToolBox_removeItem(handle: not null  QToolBoxH; index: Integer);   
pragma Import(C,QToolBox_removeItem,"QToolBox_removeItem");

procedure QToolBox_setItemEnabled(handle: not null  QToolBoxH; index: Integer; enabled: Boolean);   
pragma Import(C,QToolBox_setItemEnabled,"QToolBox_setItemEnabled");

function QToolBox_isItemEnabled(handle: not null  QToolBoxH; index: Integer) return  Boolean;   
pragma Import(C,QToolBox_isItemEnabled,"QToolBox_isItemEnabled");

procedure QToolBox_setItemText(handle: not null  QToolBoxH; index: Integer; text: QStringH);   
pragma Import(C,QToolBox_setItemText,"QToolBox_setItemText");

function  QToolBox_itemText(handle: not null  QToolBoxH; index: Integer) return QStringH;
pragma Import(C,QToolBox_itemText,"QToolBox_itemText");

procedure QToolBox_setItemIcon(handle: not null  QToolBoxH; index: Integer; icon: QIconH);   
pragma Import(C,QToolBox_setItemIcon,"QToolBox_setItemIcon");

function  QToolBox_itemIcon(handle: not null  QToolBoxH; index: Integer) return QIconH;
pragma Import(C,QToolBox_itemIcon,"QToolBox_itemIcon");

procedure QToolBox_setItemToolTip(handle: not null  QToolBoxH; index: Integer; toolTip: QStringH);   
pragma Import(C,QToolBox_setItemToolTip,"QToolBox_setItemToolTip");

function  QToolBox_itemToolTip(handle: not null  QToolBoxH;  index: Integer) return QStringH;
pragma Import(C,QToolBox_itemToolTip,"QToolBox_itemToolTip");

function QToolBox_currentIndex(handle: not null  QToolBoxH) return  Integer;   
pragma Import(C,QToolBox_currentIndex,"QToolBox_currentIndex");

function QToolBox_currentWidget(handle: not null  QToolBoxH) return  QWidgetH;   
pragma Import(C,QToolBox_currentWidget,"QToolBox_currentWidget");

function QToolBox_widget(handle: not null  QToolBoxH; index: Integer) return  QWidgetH;   
pragma Import(C,QToolBox_widget,"QToolBox_widget");

function QToolBox_indexOf(handle: not null  QToolBoxH; widget: QWidgetH) return  Integer;   
pragma Import(C,QToolBox_indexOf,"QToolBox_indexOf");

function QToolBox_count(handle: not null  QToolBoxH) return  Integer;   
pragma Import(C,QToolBox_count,"QToolBox_count");

procedure QToolBox_setCurrentIndex(handle: not null  QToolBoxH; index: Integer);   
pragma Import(C,QToolBox_setCurrentIndex,"QToolBox_setCurrentIndex");

procedure QToolBox_setCurrentWidget(handle: not null  QToolBoxH; widget: QWidgetH);   
pragma Import(C,QToolBox_setCurrentWidget,"QToolBox_setCurrentWidget");

 type  QToolBox_currentChangedEvent is access procedure (index: Integer);
 pragma Convention(C, QToolBox_currentChangedEvent);
 
 procedure QToolBox_signal_slot_currentChanged(handle: not null QToolBoxH; hook:QToolBox_currentChangedEvent);
 pragma Import(C,QToolBox_signal_slot_currentChanged, "QToolBox_signal_slot_currentChanged");

-----------------------------------------------------------------
function QToolBox_addItem(handle: not null  QToolBoxH; widget: QWidgetH; icon: QIconH; text: QStringH) return  Integer;
function QToolBox_insertItem(handle: not null  QToolBoxH; index: Integer; widget: QWidgetH; icon: QIconH; text: QStringH) return  Integer;

end Qt.QToolBox;
