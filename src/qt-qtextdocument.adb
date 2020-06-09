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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QTextDocument        is

function QTextDocument_create(text: QStringH; parent: QObjectH := null) return QTextDocumentH is
begin
 return QTextDocument_create2(text, parent);
end;

function  QTextDocument_find(handle: not null  QTextDocumentH; subString: QStringH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH is
begin
  return QTextDocument_find2(handle, subString, from, options);
end;

function  QTextDocument_find(handle: not null  QTextDocumentH;expr: QRegExpH; from: Integer := 0; options: QTextDocumentFindFlags := 0) return QTextCursorH is
begin
  return QTextDocument_find3(handle, expr, from, options);
end;

function  QTextDocument_find(handle: not null  QTextDocumentH; expr: QRegExpH; from: QTextCursorH; options: QTextDocumentFindFlags := 0) return QTextCursorH is
begin
 return QTextDocument_find4(handle, expr, from, options);
end;

procedure QTextDocument_undo(handle: not null  QTextDocumentH) is
begin
  QTextDocument_undo2(handle);
end;

procedure QTextDocument_redo(handle: not null  QTextDocumentH) is
begin
  QTextDocument_redo2(handle);
end;

function  QTextDocumentWriter_create(device:QIODeviceH; format:QByteArrayH) return QTextDocumentWriterH is
begin
  return  QTextDocumentWriter_create2(device,format);
end;

function  QTextDocumentWriter_create(fileName:QStringH; format:QByteArrayH := QByteArray_create) return QTextDocumentWriterH is
begin
  return  QTextDocumentWriter_create3(fileName,format);
end;

function  QTextDocumentWriter_write(handle: not null QTextDocumentWriterH;fragment: QTextDocumentFragmentH) return boolean is
begin
  return  QTextDocumentWriter_write2(handle,fragment);
end;

end Qt.QTextDocument;
