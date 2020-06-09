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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QLocale              is

function QLocale_create(name: QStringH) return  QLocaleH is
begin
 return QLocale_create2(name);
end;

function QLocale_create(language: QLocaleLanguage; country: QLocaleCountry := AnyCountry) return  QLocaleH is
begin
 return QLocale_create3(language, country);
end;

function QLocale_create(other: QLocaleH) return  QLocaleH is
begin
 return QLocale_create4(other);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: Short_Integer)  return  QStringH is
begin
  return QLocale_toString3(handle,i);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: Word) return QStringH  is
begin
  return QLocale_toString4(handle, i);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: Integer) return QStringH is
begin
 return QLocale_toString5(handle,i);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: LongWord) return QStringH is
begin
  return QLocale_toString6(handle, i);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: Double; f: char; prec: Integer := 6) return QStringH  is
begin
  return QLocale_toString7(handle, i, f, prec);
end;

function  QLocale_toString(handle: not null  QLocaleH;i: Single; f: char; prec: Integer := 6) return QStringH is
begin
 return QLocale_toString8(handle, i, f, prec);
end;

function  QLocale_toString(handle: not null  QLocaleH; date: QDateH; formatStr: QStringH) return QStringH is
begin
  return QLocale_toString9(handle, date, formatStr);
end;

function  QLocale_toString(handle: not null  QLocaleH;date: QDateH; format: QLocaleFormatType := LongFormat) return QStringH is
begin
  return QLocale_toString10(handle, date, format);
end;

function  QLocale_toString(handle: not null  QLocaleH;time: QTimeH; formatStr: QStringH) return QStringH is
begin
  return QLocale_toString11(handle, time, formatStr);
end;

function  QLocale_toString(handle: not null  QLocaleH;time: QTimeH; format: QLocaleFormatType := LongFormat) return  QStringH  is
begin
  return QLocale_toString12(handle, time, format);
end;

 function  QLocale_toDate(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QDateH is
 begin
   return  QLocale_toDate2(handle,str,format);
 end;

 function  QLocale_toTime(handle:QLocaleH; str:QStringH; format:QLocaleFormatType := LongFormat) return QTimeH is
 begin
   return  QLocale_toTime2(handle,str,format);
 end;

 function  QLocale_toDateTime(handle:QLocaleH; str:QStringH;format:QLocaleFormatType := LongFormat) return QDateTimeH is
 begin
   return  QLocale_toDateTime2(handle, str,format);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:quint64; symbol: QStringH := QString_create) return QStringH is    
 begin
   return  QLocale_toCurrencyString2(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:short; symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString3(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:unsigned_short;symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString4(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:integer;symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString5(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:quint;  symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString6(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:double; symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString7(handle,data,symbol);
 end;

 function  QLocale_toCurrencyString(handle:QLocaleH;data:float; symbol: QStringH := QString_create) return QStringH is     
 begin
   return  QLocale_toCurrencyString8(handle,data,symbol);
 end;

 

end Qt.QLocale;
