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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.
package body Qt.QTableWidget is

 function  QTableWidgetSelectionRange_create(top:integer; left:integer; bottom:integer; right:integer) return QTableWidgetSelectionRangeH is
 begin
   return  QTableWidgetSelectionRange_create2(top,left,bottom,right);
 end;

 function  QTableWidgetSelectionRange_create(other: QTableWidgetSelectionRangeH) return QTableWidgetSelectionRangeH is
 begin
  return   QTableWidgetSelectionRange_create3(other);
 end;

 function  QTableWidgetItem_create(text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH is
 begin
  return   QTableWidgetItem_create2(text, item_type);
 end;

 function  QTableWidgetItem_create(icon:QIconH; text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH is
 begin
  return   QTableWidgetItem_create3(icon, text, item_type);
 end;

 function  QTableWidgetItem_create(other: QTableWidgetItemH) return QTableWidgetItemH is
 begin
  return   QTableWidgetItem_create4(other);
 end;

 function  QTableWidget_create(rows: integer; columns:integer; parent:QWidgetH) return QTableWidgetH is
 begin
  return   QTableWidget_create2(rows,columns,parent);
 end;

 procedure QTableWidget_setCurrentItem(handle: not null  QTableWidgetH; item: QTableWidgetItemH; command: quint) is
 begin
   QTableWidget_setCurrentItem2(handle, item, command);
 end;

 procedure QTableWidget_setCurrentCell(handle: not null  QTableWidgetH; row: integer; column:integer; command: quint) is
 begin
   QTableWidget_setCurrentCell2(handle, row, column, command);
 end;

 function  QTableWidget_itemAt(handle: not null  QTableWidgetH; x:integer; y:integer) return  QTableWidgetItemH is
 begin
  return   QTableWidget_itemAt2(handle, x, y);
 end;

end     Qt.QTableWidget;
