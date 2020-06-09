
-- ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
-- º       D E S I G N   E N G I N E E R I N G            ºDºSº        º
-- º            S O F T W A R E                           ÈÍÊÍ¼        º
-- º                                                                   º
-- º        Package   GENER_BUILTIN                                    º
-- º          Common package for working with varing length string     º
-- º        Author :  Leonid Dulman     1995 - 2002, 2010,2011,2015    º
-- º  Copyright (C) 2002,2011,2015                                     º
-- ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Interfaces.C;          use Interfaces.C;
with Interfaces.C.Strings;  use Interfaces.C.Strings;
with System;
generic
varing_max    : integer := 255;
package  GENER_BUILTIN is

type VARING is private;
type PtrVaring is access all VARING;

function "="(v1,v2:PtrVaring) return boolean;

function "="(v1,v2:varing) return boolean;    


-- subtype VARING is VARING_STR(varing_max) ;
type vectorvar is array (integer range <>) of varing;
type matrixvar is array (integer range <>,integer range <> ) of varing;

function date_means return string;  --  dd.mm.yy
function time_means return string;  --  hh:mm:cc

type ZString is new String;
type ZWideString is new Wide_String;
subtype ZStringPtr  is Interfaces.C.Strings.chars_ptr;
subtype ZStringPtrArray is Interfaces.C.Strings.chars_ptr_array;
type ZStringPtrArrayPtr is access all ZStringPtrArray;
Null_ZChar : aliased constant character := character'val(0);
Null_ZStr  : aliased constant ZString(1..1) := (others => Null_ZChar);
argvArray : ZStringPtrArray(0 .. 20)  := (others => Interfaces.C.Strings.Null_Ptr);
argv : System.Address  := argvArray(0)'address;
argc : aliased integer := 0;

-- ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
-- ³      functions and  procedures                         ³
-- ³       for string operations                            ³
-- ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
function Is_Numeric(Item : in String) return Boolean;
procedure put_edit(s:string;a:float;pos:integer:=7); -- print
procedure put_edit(s:string;a:integer;pos:integer:=4); -- print
function comp_str(s1,s2:in string)return boolean;--Compare string
function get_i(s:in string)     return integer;--Read number
function get_f(s:in string)     return float  ;
function put_i(item:in integer;pos:integer:=6) return string ;--Write number
function put_e(item:in float;pos:integer:=8 ) return string ;
function put_f(item:in float;pos:integer:=8 ) return string ;
function put_d(item:in double;pos:integer:=8 ) return string ;
function put_ld(item:in Long_Long_Float;pos:integer:=8 ) return string ;
function substr(s:in string;pos:integer:=1;len:integer)return string;
function left  (s:in string;pos:integer          )return string;
function right (s:in string;pos:integer:=1)return string;
function var_len(s:in string)return integer;     -- Length until blank
function index(s:in string;ss:string)return integer;     -- Dispos   substring in string
function index(s:in string;ss:character)return integer;  --
function verify(s:in string;ss:string;pos:integer:=1)return integer;  --
procedure clean(s:in out string);                -- Transfer blanks to end
procedure fill(s:in out string; char : character := ' '; pos: integer :=1);
function  cut(s:string) return string;                -- Clear begining and ending blanks
procedure overlay(s:in out string;pos:integer;ss:string); -- string overlay
procedure overlay(s:in out string;pos:integer;ss:character);
procedure translate(s:in out string;change,map:string);
procedure ctext(s:in out string); -- centr text
procedure upper_low(s:in out string;uplow:character:='u'); -- Upper - Low
function change(s:string;oldstr:string;newstr:string;how:integer:=0) return string;
function zs2s(strz :zstring) return string;
function s2zs(s    : string) return zstring;
function ws2zws(s  : wide_string) return ZWideString;
function zws2ws(strz :ZWideString)return wide_string;
function IsNotEmpty(s:string) return boolean;
function GetParameterValue(source : string; parameter_name : string;
                           delimeter : character := ' ') return varing;
-- ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
-- ³      functions and  procedures                         ³
-- ³       for varing operations                            ³
-- ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
function  size(s:in varing) return integer;
procedure SetSize(v: in out varing;length:integer);
function  GetChar(var:in varing;pos : integer) return character;
procedure SetChar(var:in out varing;pos:integer;char:character);

function GetParameterValue(source : varing; parameter_name : string;
                           delimeter : character := ' ') return varing;
function Is_Numeric(Item : in varing) return Boolean;
procedure put(s:varing; pos:integer); -- string output
function comp_str(s1,s2:in varing)return boolean;--compare string
function substr(s:in varing;pos:integer:=1;len:integer)return varing;
function left  (s:in varing;pos:integer          )return varing;
function right (s:in varing;pos:integer:=1)return varing;
function get_i(s:in varing)     return integer; --Read number
function get_f(s:in varing)     return float  ;
function put_i(item:in integer;pos:integer:=6) return varing ;--Write nuber
function put_e(item:in float;pos:integer:=8 ) return varing ;
function put_f(item:in float;pos:integer:=8 ) return varing ;
function put_d(item:in Long_Long_Float;pos:integer:=8 ) return varing ;
function var_len(s:in varing)return integer;     -- Length until blak in end
function index(s:in varing;ss:string)return integer;
function verify(s:in varing;ss:string;pos:integer:=1)return integer;
function index(s:in varing;ss:character)return integer;
function "&" (s1,s2:varing) return varing;
function "&" (s1:varing;s2:string) return varing;
function "&" (s1:string;s2:varing) return varing;
function "&" (s1:character;s2:varing) return varing;
function "&" (s1:varing;s2:character) return varing;
function change(s:varing;oldstr:string;newstr:string;how:integer:=0) return varing;
procedure clean(s:in out varing);                -- Clear begining blanks
procedure cut(s:in out varing);                -- Clear begining and ending blanks
procedure overlay(s:in out varing;pos:integer;ss:varing); -- String overlay
procedure overlay(s:in out varing;pos:integer;ss:string);
procedure overlay(s:in out varing;pos:integer;ss:character);
procedure translate(s:in out varing;change,map:string);
procedure null_len (s:in out varing) ;
function IsNotEmpty(s:varing) return boolean;

-- Input stream string until separator
procedure  begent(s:in out varing;pictend:character;err:in out boolean) ;
procedure helpstr(str:varing;kl:in out integer;
                  err:out boolean; strend:character:=';');

procedure upper_low(s:in out varing;uplow:character:='u');
-- ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
-- ³              functions                                 ³
-- ³     for integer and float  operations                  ³
-- ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
function min(x,y:float) return float;
function max(x,y:float) return float;
function min(x,y:integer) return integer;
function max(x,y:integer) return integer;
function sign(x:integer) return integer;
function sign(x:float) return integer;
-----------------------------------------------------------------------
function str2var(s:string) return varing ;
function var2str(v:varing) return string ;
function var2zstr(v:varing) return string ;

-----------------------------------------------------------------------
function env(Var_Name : String) return String;
function env(Var_Name : String) return varing;
procedure AdaExit(code : Interfaces.C.int := 0);
procedure Argv_fill;
pragma Import(Convention => C,
              Entity => AdaExit,
              External_Name => "exit",
              Link_name => "_exit");
-----------------------------------------------------------------------
conversion : exception;
-----------------------------------------------------------------------

private type VARING is record
   len_str:integer range 0..varing_max := 0;
   cnt_str:string(1..varing_max);
end record;

end GENER_BUILTIN;
