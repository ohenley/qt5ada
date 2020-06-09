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

package body Qt.QEdit                is

function QLineEdit_create(p1: QStringH; parent: QWidgetH := null) return QLineEditH is
begin
 return QLineEdit_create2(p1, parent);
end;

function QTextEdit_create(text: QStringH; parent: QWidgetH := null) return QTextEditH is
begin
 return QTextEdit_create2(text, parent);
end;

function  QTextEdit_cursorRect(handle: not null  QTextEditH) return QRectH is
begin
 return QTextEdit_cursorRect2(handle);
end;

 procedure QLineEdit_setValidator(handle:not null QLineEditH; pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; parent:QObjectH := null) is
 begin
  QLineEdit_setValidator2(handle,pattern,cs,parent);
 end;

 procedure QLineEdit_setTextMargins(handle:not null QLineEditH;margins: QMarginsH) is
 begin
   QLineEdit_setTextMargins2(handle,margins);
 end; 

end Qt.QEdit;
