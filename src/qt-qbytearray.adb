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

package body Qt.QByteArray           is

function QByteArray_create(p1: zstring) return  QByteArrayH is
begin
 return QByteArray_create2(p1);
end;

function QByteArray_create(p1: zstring; size: Integer) return  QByteArrayH is
begin
 return  QByteArray_create3(p1, size);
end;

function QByteArray_create(size: Integer; c: char) return  QByteArrayH is
begin
 return QByteArray_create4(size,c);
end;

function QByteArray_create(p1: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_create5(p1);
end;

function QByteArray_indexOf(handle: not null  QByteArrayH; c: zstring; from: Integer := 0) return Integer is
begin
 return QByteArray_indexOf2(handle, c, from);
end;

function QByteArray_indexOf(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := 0) return Integer is
begin
 return QByteArray_indexOf3(handle, a, from);
end;

function QByteArray_lastIndexOf(handle: not null  QByteArrayH; c: zstring; from: Integer := -1) return Integer is
begin
 return QByteArray_lastIndexOf2(handle, c, from);
end;

function QByteArray_lastIndexOf(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := -1) return Integer is
begin
 return  QByteArray_lastIndexOf3(handle, a, from);
end;

function QByteArray_contains(handle: not null  QByteArrayH; a: zstring) return  boolean is
begin
 return  QByteArray_contains2(handle, a);
end;

function QByteArray_contains(handle: not null  QByteArrayH; a: QByteArrayH) return  boolean is
begin
 return QByteArray_contains3(handle, a);
end;

function QByteArray_count(handle: not null  QByteArrayH; a: zstring) return  Integer is
begin
 return QByteArray_count2(handle, a);
end;

function QByteArray_count(handle: not null  QByteArrayH; a: QByteArrayH) return  Integer is
begin
 return QByteArray_count3(handle, a);
end;

function QByteArray_startsWith(handle: not null  QByteArrayH; c: char) return  Boolean is
begin
 return QByteArray_startsWith2(handle, c);
end;

function QByteArray_startsWith(handle: not null  QByteArrayH; c: zstring) return  Boolean is
begin
 return QByteArray_startsWith3(handle, c);
end;

function QByteArray_endsWith(handle: not null  QByteArrayH; c: char) return  Boolean is
begin
 return QByteArray_endsWith2(handle, c);
end;

function QByteArray_endsWith(handle: not null  QByteArrayH; c: zstring) return  Boolean is
begin
 return QByteArray_endsWith3(handle, c);
end;

function QByteArray_prepend(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH is
begin
 return QByteArray_prepend2(handle, s);
end;

function QByteArray_prepend(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_prepend3(handle, a);
end;

function QByteArray_append(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH is
begin
 return QByteArray_append2(handle, s);
end;

function QByteArray_append(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_append3(handle, a);
end;

function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; s: zstring) return  QByteArrayH is
begin
 return QByteArray_insert2(handle, i, s);
end;

function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; a: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_insert3(handle, i, a);
end;

function QByteArray_replace(handle: not null  QByteArrayH; index: Integer; len: Integer; s: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_replace2(handle, index, len, s);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: zstring) return  QByteArrayH is
begin
 return QByteArray_replace3(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_replace4(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: zstring; after: zstring) return  QByteArrayH is
begin
 return QByteArray_replace5(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: QByteArrayH; after: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_replace6(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: QByteArrayH; after: zstring) return  QByteArrayH is
begin
 return QByteArray_replace7(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: zstring; after: QByteArrayH) return  QByteArrayH is
begin
 return QByteArray_replace8(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: char) return  QByteArrayH is
begin
 return QByteArray_replace9(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: QStringH; after: zstring) return  QByteArrayH is
begin
 return QByteArray_replace10(handle, before, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; c: char; after: QStringH) return  QByteArrayH is
begin
 return QByteArray_replace11(handle, c, after);
end;

function QByteArray_replace(handle: not null  QByteArrayH; before: QStringH; after: QByteArrayH) return  QByteArrayH is
begin 
 return QByteArray_replace12(handle, before, after);
end;

function QByteArray_append(handle: not null  QByteArrayH; s: QStringH) return  QByteArrayH is
begin
 return QByteArray_append4(handle, s);
end;

function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; s: QStringH) return  QByteArrayH is
begin
 return QByteArray_insert4(handle, i, s);
end;

function QByteArray_indexOf(handle: not null  QByteArrayH; s: QStringH; from: Integer := 0) return Integer is
begin
 return QByteArray_indexOf4(handle, s, from);
end;

function QByteArray_lastIndexOf(handle: not null  QByteArrayH; s: QStringH; from: Integer := -1) return Integer is
begin
 return QByteArray_lastIndexOf4(handle, s, from);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: Word; base: Integer := 10) return QByteArrayH is
begin
 return QByteArray_setNum2(handle, p1, base);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: Integer; base: Integer := 10) return QByteArrayH is
begin
 return QByteArray_setNum3(handle, p1, base);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: LongWord; base: Integer := 10) return QByteArrayH is
begin
 return QByteArray_setNum4(handle, p1, base);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: int64; base: Integer := 10) return QByteArrayH is
begin
 return QByteArray_setNum5(handle, p1, base);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: Single; f: char; prec: Integer := 6) return QByteArrayH is
begin
 return QByteArray_setNum7(handle, p1, f, prec);
end;

function QByteArray_setNum(handle: not null  QByteArrayH; p1: Double; f: char; prec: Integer := 6) return QByteArrayH is
begin
 return QByteArray_setNum8(handle, p1, f, prec);
end;

function  QByteArray_number(p1: LongWord; base: Integer := 10) return QByteArrayH is
begin
  return QByteArray_number2(p1, base);
end;

function  QByteArray_number(p1: int64; base: Integer := 10) return QByteArrayH is
begin
  return QByteArray_number3(p1, base);
end;

function  QByteArray_number(p1: Double; f: char; prec: Integer := 6) return QByteArrayH is
begin
  return QByteArray_number5(p1, f, prec);
end;

procedure QByteArray_push_back(handle: not null  QByteArrayH; c: zstring) is 
begin
  QByteArray_push_back2(handle, c);
end;

procedure QByteArray_push_back(handle: not null  QByteArrayH; a: QByteArrayH) is 
begin
  QByteArray_push_back3(handle, a);
end;

procedure QByteArray_push_front(handle: not null  QByteArrayH; c: zstring) is 
begin
  QByteArray_push_front2(handle, c);
end;

procedure QByteArray_push_front(handle: not null  QByteArrayH; a: QByteArrayH) is 
begin
   QByteArray_push_front3(handle, a);
end;

function QByteArray_count(handle: not null  QByteArrayH) return  Integer is
begin
 return  QByteArray_count4(handle);
end;

end Qt.QByteArray;
