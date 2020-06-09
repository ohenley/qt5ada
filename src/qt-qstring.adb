--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015,2016,2019       บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Ada.Characters.Conversions; use Ada.Characters.Conversions;
with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with builtin; use builtin;
with Qt.QTextCodec; use Qt.QTextCodec;
with Qt.QChar; use Qt.QChar;
with Qt.QByteArray;use Qt.QByteArray;

package body Qt.QString is

w0 : aliased constant wide_string(1..1) := (others => Wide_Character'Val(0));

function s2qs(s: string;codec:QTextCodecH := appCodec) return QStringH is
begin
 if codec = null
 then
  return QString_create5(zstring(s) & Null_ZChar);
 else
  return  QTextCodec_toUnicode(codec,s2zs(s));
 end if;
end;

function ba2s(arr: QByteArrayH;len:integer) return  string is
str : string(1 .. len) := (others => ' ');
begin
   for i in 0 .. len - 1 loop
    str(i+1) := QByteArray_at(arr,i);
   end loop;
 return str;
end;

function qs2s(s: QStringH) return  string is
count : integer;
arr : QByteArrayH;
begin
  arr := QString_toUtf8(s);
  count := QByteArray_count(arr);
  if count = 0 
  then return ""; 
  else return ba2s(arr,count);
  end if;

end qs2s;

function qs2zs(s: QStringH) return  builtin.zstring is
begin
  return builtin.s2zs(qs2s(s)); 
end qs2zs;

function METHOD(subprogram:string) return zstring is
begin
 return builtin.zstring("0" & subprogram & Null_Char);
end METHOD;

function SLOT  (subprogram:string) return builtin.zstring is
begin
 return zstring("1" & subprogram & Null_Char);
end SLOT;

function SIGNAL(subprogram:string) return builtin.zstring is
begin
 return builtin.zstring("2" & subprogram & Null_Char);
end SIGNAL;

function QString_create(arg1:QCharH) return QStringH is
begin
 return QString_create1(arg1);
end;

function QString_create(arg1:QByteArrayH) return QStringH is
begin
 return QString_create3(arg1);
end;

function QString_create(unicode:QCharH;len: unsigned_long) return QStringH is
begin
 return QString_create4(unicode,len);
end;

function QString_create(str:zstring) return QStringH is
begin
 return QString_create5(str);
end;

function QString_create(str:Wide_ZString) return QStringH is
begin
 return QString_create6(str);
end;

function QString_create(str:QLatin1StringH) return QStringH is
begin
  return QString_create7(str);
end;

function QString_arg(str:QStringH;a:unsigned_long;fieldwidth,base:integer) return QStringH is
begin
 return QString_arg1(str,a,fieldwidth,base);
end QString_arg;

function QString_arg(str:QStringH;a,fieldwidth,base:integer) return QStringH is
begin
 return QString_arg2(str,a,fieldwidth,base);
end QString_arg;

function QString_arg(str:QStringH;a:short_integer;fieldwidth,base:integer) return QStringH is
begin
 return QString_arg4(str,a,fieldwidth,base);
end QString_arg;

function QString_arg(str:QStringH;a:unsigned_short;fieldwidth,base:integer) return QStringH is
begin
 return QString_arg5(str,a,fieldwidth,base);
end QString_arg;

function QString_arg(str:QStringH;a:character;fieldwidth:integer) return QStringH is
begin
 return QString_arg6(str,a,fieldwidth);
end QString_arg;

function QString_arg(str:QStringH;a:QCharH;fieldwidth:integer) return QStringH is
begin
 return QString_arg7(str,a,fieldwidth);
end QString_arg;

function QString_insert(str:QStringH;indx:quint; arg1:QCharH; len:quint) return QStringH is
begin
 return QString_insert1(str,indx,arg1,len);
end QString_insert;

function QString_insert(str:QStringH;indx:quint; c:character) return QStringH is
begin
 return QString_insert3(str,indx,c);
end QString_insert;

function QString_append(str:QStringH;arg1:QCharH) return QStringH is
begin
 return QString_append1(str,arg1);
end QString_append;

function QString_append(str:QStringH;arg1:QStringH) return QStringH is
begin
 return QString_append2(str,arg1);
end QString_append;

function QString_prepend(str:QStringH;arg1:QCharH) return QStringH is
begin
 return QString_prepend1(str,arg1);
end QString_prepend;


function QString_replace(str:QStringH;indx:quint; len:quint; arg1:QCharH;clen: quint) return QStringH is
begin
 return QString_replace1(str,indx,len,arg1,clen);
end QString_replace;

function QString_replace(str:QStringH;arg1:QRegExpH;arg2: QStringH) return QStringH is
begin
 return QString_replace2(str,arg1,arg2);
end QString_replace;


function QString_setNum(str:QStringH;arg1:unsigned_short; base:integer) return QStringH is
begin
 return QString_setNum1(str,arg1,base);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:integer; base:integer) return QStringH is
begin
 return QString_setNum2(str,arg1,base);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:long_integer; base:integer) return QStringH is
begin
 return QString_setNum4(str,arg1,base);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:unsigned_long; base:integer) return QStringH is
begin
 return QString_setNum5(str,arg1,base);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:float;f: character;prec:integer) return QStringH is
begin
 return QString_setNum6(str,arg1,f,prec);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:long_float;f:character;prec:integer) return QStringH is
begin
 return QString_setNum7(str,arg1,f,prec);
end QString_setNum;

function QString_setNum(str:QStringH;arg1:double) return QStringH is
begin
  return QString_setNum8(str,arg1);
end;

function QString_setNum(str:QStringH;arg1:float) return QStringH is
begin
  return QString_setNum9(str,arg1);
end;


function QString_number(arg1: unsigned_long; base:integer := 10) return QStringH is
begin
 return QString_number1(arg1,base);
end QString_number;

function QString_number(arg1: integer; base:integer := 10) return QStringH is
begin
 return QString_number2(arg1,base);
end QString_number;

function QString_number(arg1:long_float;f:character;prec:integer) return QStringH is
begin
 return QString_number4(arg1,f,prec);
end QString_number;

function  QString_indexOf(str: QStringH; s: QStringH; from : integer := 0;         cs : QtCaseSensitivity := QtCaseSensitive) return integer is
begin
  return  QString_indexOf1(str, s, from,cs);
end;

function  QString_indexOf(str: QStringH; s: QByteArrayH; from : integer := 0;      cs : QtCaseSensitivity := QtCaseSensitive) return integer is
begin
  return  QString_indexOf2(str, s, from,cs);
end;

function  QString_lastIndexOf(str: QStringH; s: QStringH; from : integer := -1;    cs : QtCaseSensitivity := QtCaseSensitive) return integer is
begin
  return  QString_lastIndexOf1(str, s, from,cs);
end;

function  QString_lastIndexOf(str: QStringH; s : QByteArrayH; from : integer := -1;cs : QtCaseSensitivity := QtCaseSensitive) return integer is
begin
  return  QString_lastIndexOf2(str, s, from, cs);
end;

function QString_empty  return QStringH is
begin
 return s2qs("");
end;

function "+"(str,add : QStringH) return QStringH is
 ret : QStringH;
begin
 ret := QString_append(str,add);
 return ret;
end;

function  QString_toInt(str:QStringH) return  integer is
begin
  return  QString_toInt2(str);
end;

function  QString_toUInt(str:QStringH) return  quint is
begin
  return  QString_toUInt2(str);
end;

function  QString_toFloat(str:QStringH) return  float is
begin
  return  QString_toFloat2(str);
end;

function  QString_toDouble(str:QStringH) return  double is
begin
  return  QString_toDouble2(str);
end;

function  QString_toShort(str: QStringH) return  short_integer is
begin
  return  QString_toShort2(str);
end;

function  QString_toUShort(str:QStringH) return  quint16 is
begin
  return  QString_toUShort2(str);
end;

function QString_split(str: QStringH; arg: QStringH) return QStringListH is
begin
  return QString_split2(str, arg);
end;


function "="(s1,s2 : QStringH) return boolean is
begin
  if QString_equal(s1,s2)  then return true; else return false; end if;
end;

function QString_fromLocal8Bit(arg :QByteArrayH) return QStringH is
begin
 return QString_fromLocal8Bit2(arg);
end;

function  QString_append(handle: not null  QStringH; stringRef:QStringRefH) return QStringH is
begin
 return  QString_append3(handle,stringRef);
end;

function  QString_append(handle: not null  QStringH; str:QLatin1StringH) return QStringH is
begin
  return  QString_append4(handle, str);
end;

function  QString_prepend(handle: not null  QStringH; str:QLatin1StringH) return QStringH is
begin
  return  QString_prepend3(handle,str);
end;

function  QString_compare(str :QStringH;stringRef: QStringRefH; cs: QtCaseSensitivity := QtCaseSensitive) return integer is
begin
  return  QString_compare2(str,stringRef, cs);
end;

 function  QString_startsWith(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean is
 begin
   return  QString_startsWith2(handle,str,cs);
 end;

 function  QString_startsWith(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean is
 begin
   return  QString_startsWith3(handle,char,cs);
 end;

 function  QString_endsWith(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean is
 begin
   return  QString_endsWith2(handle,str,cs);
 end;

 function  QString_endsWith(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean is
 begin
   return  QString_endsWith3(handle,char,cs);
 end;

 function  s2qs(str:string;length:integer) return QStringH is   
 begin
   return  s2qs2(str,length);
 end;

 function ws2qs(s: Wide_string) return QStringH is
 str : QStringH ;
 begin
   str := QString_fromUtf16(s & wide_character'val(0));
   return str;
 end;

function ws2wzs(s: Wide_String) return Wide_ZString is
begin
  return Wide_ZString(s & Null_Wide_Char);
end;

function wzs2zs(s: Wide_ZString) return Wide_String is
l,len : integer := 0;
begin
 len := s'length;
 if len <= 1 then return ""; end if;
 for i in 1 .. len loop 
  if s(i) = Null_Wide_Char then exit; else l := l + 1; end if;
 end loop;
 return Wide_String(s(s'First .. l));
end;
--
 function  QLatin1String_create(str:string;size:integer)return QLatin1StringH is
 begin
   return  QLatin1String_create2(str,size);
 end;

 function  QLatin1String_create(str:QByteArrayH)return QLatin1StringH is
 begin
   return  QLatin1String_create3(str);
 end;

 function  QString_data(handle: not null QStringH) return QCharH is
 begin
   return  QString_data2(handle);
 end;
 
 function  QString_replace( handle: not null QStringH;index,length:integer;after: QCharH)return QStringH is
 begin
   return  QString_replace3( handle,index,length,after);
 end;

 function  QString_replace( handle: not null QStringH;before:QCharH;length:integer;after: QCharH;alen,cs: integer)return QStringH is
 begin
   return  QString_replace4( handle,before,length,after,alen,cs);
 end;

 function  QString_replace( handle: not null QStringH;before,after:QLatin1StringH;cs: integer)return QStringH is
 begin
   return  QString_replace5( handle,before,after,cs);
 end;

 function  QString_replace( handle: not null QStringH;before:QLatin1StringH;after: QStringH;cs:integer )return QStringH is
 begin
   return  QString_replace6( handle,before,after,cs);
 end;

 function  QString_replace( handle: not null QStringH;char:QCharH;after: QStringH;cs: integer)return QStringH is
 begin
   return  QString_replace7( handle,char,after,cs);
 end;

 function  QString_replace( handle: not null QStringH;char:QCharH;after: QLatin1StringH; cs: integer )return QStringH is
 begin
   return  QString_replace8( handle,char,after,cs);
 end;
 
 function  QString_split(handle: not null QStringH;separator:QStringH;behavior : integer; cs: integer := CaseSensitive) return QStringListH is
 begin
   return  QString_split3(handle,separator,behavior,cs);
 end;

 function  QString_split(handle: not null QStringH;separator:QCharH; behavior : integer ; cs: integer := CaseSensitive ) return QStringListH is
 begin
   return  QString_split4(handle,separator,behavior,cs);
 end;

 function  QString_fromLatin1(arr:QByteArrayH) return QStringH is
 begin
   return  QString_fromLatin12(arr);
 end;

 function  QString_fromUtf8(arr:QByteArrayH) return QStringH is
 begin
   return  QString_fromUtf82(arr);
 end;
 
 function  QString_compare(handle: not null QStringH;str:QLatin1StringH; cs: integer := CaseSensitive)return integer is
 begin
   return  QString_compare3(handle,str,cs);
 end;

 function  QString_setNum( handle: not null QStringH; arg: long_long_integer; base: integer := 10)return QStringH is
 begin
   return  QString_setNum10( handle,arg,base);
 end;

 function  QString_number(arg: long_long_integer; base: integer := 10)return QStringH is
 begin
   return  QString_number5(arg,base);
 end;

 procedure QString_push_back( handle: not null QStringH;str:QStringH) is
 begin
   QString_push_back2( handle,str);
 end;

 procedure QString_push_front( handle: not null QStringH;str:QStringH) is
 begin
   QString_push_front2( handle,str);
 end;
 
 function  QString_arg(handle: not null QStringH;arg:long_long_integer;fieldwidth : integer; base:integer := 10)return QStringH is
 begin
   return  QString_arg10(handle,arg,fieldwidth,base);
 end;

 function QString_contains(str:QStringH;c:character; cs:integer:= CaseSensitive) return boolean is
 begin
   return QString_contains1(str,c,cs);
 end;

 function QString_contains(str:QStringH;str1:zstring; cs:integer:= CaseSensitive) return boolean is
 begin
   return QString_contains2(str,str1,cs);
 end;

 function QString_contains(str:QStringH;str1:QStringH; cs:integer:= CaseSensitive) return boolean is
 begin
    return QString_contains3(str,str1,cs);
 end;

 function QString_contains(str:QStringH;arg1:QRegExpH) return boolean is
 begin
   return QString_contains4(str,arg1);
 end;

 function QString_create(char:character) return QStringH is
 begin
   return QString_create8(char);
 end;

 function QString_create(char:wide_character) return QStringH is
 begin
   return QString_create9(char);
 end;

 function  QString_replace(handle: not null QStringH;before,after:QStringH) return QStringH is
 begin
  return  QString_replace9(handle,before,after);
 end;

 function QString_isNotEmpty(str:QStringH) return boolean is
 begin
  return not QString_isEmpty(str);
 end;

 function  QLatin1String_mid(handle:not null QLatin1StringH;pos,i:integer) return QLatin1StringH is
 begin
   return  QLatin1String_mid2(handle,pos,i);
 end;
--    ---------------------------  2018 ------------------------
 function  QString_remove(handle:not null QStringH;c:QCharH;cs : integer :=  CaseSensitive) return QStringH is
 begin
   return  QString_remove2(handle,c,cs);
 end;

 function  QString_remove(handle:not null QStringH;s:QLatin1StringH;cs : integer :=  CaseSensitive) return QStringH is
 begin
   return  QString_remove3(handle,s,cs);
 end;

 function  QString_remove(handle:not null QStringH;s:QStringH;cs : integer :=  CaseSensitive) return QStringH is
 begin
   return  QString_remove4(handle,s,cs);
 end;

 function  QString_remove(handle:not null QStringH;rx:QRegExpH) return QStringH is
 begin
   return  QString_remove5(handle,rx);
 end;

 function  s2tr(str:string) return QStringH is
 function  QString_tr(str : string) return QStringH;
 pragma Import(C,QString_tr, "QString_tr");

 begin
  return QString_tr(str & character'val(0));
 end; 
 

 function  s2tr(str:QStringH) return QStringH is
 function  QString_tr1(str : QStringH) return QStringH;
 pragma Import(C,QString_tr1, "QString_tr1");

 begin
  return QString_tr1(str);
 end; 
 
end Qt.QString;
