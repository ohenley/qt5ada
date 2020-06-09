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

package body Qt.QTextCursor          is

function QTextCursor_create(document: QTextDocumentH) return  QTextCursorH is
begin
  return QTextCursor_create2(document);
end;

function QTextCursor_create(frame: QTextFrameH) return  QTextCursorH is
begin
  return QTextCursor_create3(frame);
end;

function QTextCursor_create(block: QTextBlockH) return  QTextCursorH is
begin
  return QTextCursor_create4(block);
end;

function QTextCursor_create(cursor: QTextCursorH) return  QTextCursorH is
begin
  return  QTextCursor_create6(cursor);
end;

procedure QTextCursor_insertText(handle: not null  QTextCursorH; text: QStringH; format: QTextCharFormatH) is
begin
  QTextCursor_insertText2(handle, text, format);
end;

procedure QTextCursor_insertBlock(handle: not null  QTextCursorH; format: QTextBlockFormatH) is
begin
  QTextCursor_insertBlock2(handle, format);
end;

procedure QTextCursor_insertBlock(handle: not null  QTextCursorH; format: QTextBlockFormatH; charFormat: QTextCharFormatH) is
begin
  QTextCursor_insertBlock3(handle, format, charFormat);
end;

function QTextCursor_insertTable(handle: not null  QTextCursorH; rows: Integer; cols: Integer) return  QTextTableH is
begin
  return QTextCursor_insertTable2(handle, rows, cols);
end;

procedure QTextCursor_insertImage(handle: not null  QTextCursorH; format: QTextImageFormatH) is
begin
 QTextCursor_insertImage2(handle, format);
end;

procedure QTextCursor_insertImage(handle: not null  QTextCursorH; name: QStringH) is
begin
 QTextCursor_insertImage3(handle, name);
end;

 procedure QTextCursor_insertImage(handle: not null QTextCursorH;image:QImageH;name:QStringH  := s2qs("")) is
 begin
   QTextCursor_insertImage4(handle,image,name);
 end;

 function  QTextCursor_insertList(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH is
 begin
   return  QTextCursor_insertList2(handle,style);
 end;

 function  QTextCursor_createList(handle: not null QTextCursorH;style:QTextFormatStyle) return QTextListH is
 begin
   return  QTextCursor_createList2(handle,style);
 end;

end Qt.QTextCursor;
