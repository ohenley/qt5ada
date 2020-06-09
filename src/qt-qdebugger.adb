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

with Qt.QListWidget         ; use Qt.QListWidget;
with Qt.QString             ; use Qt.QString;
with Qt.QStringList         ; use Qt.QStringList;
with Qt.QLayout             ; use Qt.QLayout;
with Qt.QWidget             ; use Qt.QWidget;

package body Qt.QDebugger  is

 debugList : QListWidgetH;
 debugRow  : integer := -1;

 procedure AddDebugerToLayout(layout: QLayoutH) is
 begin
   QLayout_addWidget(handle => layout,  w => QWidgetH(debugList));
 end;

 procedure AddMessage(message: QStringH) is
 begin
  debugRow  := debugRow + 1;
  QListWidget_insertItem(handle => debugList, row => debugRow, label => message);
 end;

 procedure AddMessage(message: QStringListH) is
 size : integer;
 str  : QStringH;
 begin
  size := QStringList_size(handle => message);
  for i in 0 .. size -1 loop
   str := QStringList_takeAt(handle => message, i => i);
   debugRow  := debugRow + 1;
   QListWidget_insertItem(handle => debugList, row => debugRow, label => str);
  end loop;
 end;

 begin
  debugList := QListWidget_create;
  QWidget_setFixedHeight(handle =>  QWidgetH(debugList),  h => 100);

end  Qt.QDebugger;
