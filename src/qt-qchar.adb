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
package body Qt.QChar is

function  QChar_create(c:char) return QCharH is
begin
 return QChar1_create(c);
end QChar_create;

function  QChar_create(c:unsigned_char) return QCharH is
begin
 return QChar2_create(c);
end QChar_create;

function  QChar_create(c,r:unsigned_char) return QCharH is
begin
 return QChar3_create(c,r);
end QChar_create;

function  QChar_create(c:QCharH) return QCharH is
begin
 return QChar4_create(c);
end QChar_create;

function  QChar_create(rc:unsigned_short) return QCharH is
begin
 return QChar5_create(rc);
end QChar_create;

function  QChar_create(rc:short_integer) return QCharH is
begin
 return QChar6_create(rc);
end QChar_create;

function  QChar_create(rc:quint) return QCharH is
begin
 return QChar7_create(rc);
end QChar_create;

function  QChar_create(rc:integer) return QCharH is
begin
 return QChar8_create(rc);
end QChar_create;

function  QChar_latin(char:QCharH) return character is
begin
 return QChar_latin1(char);
end QChar_latin;

end Qt.QChar;
