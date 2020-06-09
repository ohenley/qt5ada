
--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--
--
-- This library is free software; you can redistribute it and/or modify
-- it under the terms of the GNU Library General Public License as
-- published by the Free Software Foundation; either version 3 of the
-- License; or (at your option) any later version.
--
package body Qt.QFormLayout is

 procedure QFormLayout_addRow(formLayout: QFormLayoutH;labelText: QStringH; field: QWidgetH) is
 begin
   QFormLayout_addRow2(formLayout,labelText,field);
 end;

 procedure QFormLayout_addRow(formLayout: QFormLayoutH;layout: QLayoutH) is
 begin
   QFormLayout_addRow5(formLayout,layout);
 end;

 procedure QFormLayout_insertRow(formLayout: QFormLayoutH;row:integer; widget: QWidgetH) is
 begin
   QFormLayout_insertRow4(formLayout, row, widget);
 end;


 function  QFormLayout_itemAt(formLayout: QFormLayoutH; indx:integer) return QLayoutItemH is
 begin
   return QFormLayout_itemAt1(formLayout, indx);
 end;

end Qt.QFormLayout;
