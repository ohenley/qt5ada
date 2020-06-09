--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QLayout is

function QHBoxLayout_create(parent: QWidgetH) return  QHBoxLayoutH is
begin
 return QHBoxLayout_create2(parent);
end;

function QVBoxLayout_create(parent: QWidgetH) return  QVBoxLayoutH is
begin
 return QVBoxLayout_create2(parent);
end;

function  QGridLayout_create return QGridLayoutH is
begin
 return QGridLayout_create2;
end;

procedure QGridLayout_addWidget(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; p4: QtAlignment := 0) is
begin
  QGridLayout_addWidget2(handle, p1, row, column, p4);
end;

procedure QGridLayout_addWidget(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0) is
begin
  QGridLayout_addWidget3(handle, p1, row, column, rowSpan, columnSpan, p6);
end;

procedure QGridLayout_addLayout(handle: not null  QGridLayoutH; p1: QLayoutH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0) is
begin
 QGridLayout_addLayout2(handle, p1, row, column, rowSpan, columnSpan, p6);
end;

end Qt.QLayout;
