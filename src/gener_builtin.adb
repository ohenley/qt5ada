-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        Package  body GENER_BUILTIN                                บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     1995 - 2002, 2008,2011,2015    บ
-- บ                                                                   บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Ada.calendar; use Ada.calendar;
with Ada.Command_Line;
with Ada.text_io; use Ada.text_io;
with Interfaces.C.Strings;
package  body GENER_BUILTIN is
-----------------------------------------------------------------------
zero  : constant  character:='0'; one   : constant  character:='1';
two   : constant  character:='2'; three : constant  character:='3';
fore  : constant  character:='4'; five  : constant  character:='5';
six   : constant  character:='6'; seven : constant  character:='7';
eight : constant  character:='8'; nine  : constant  character:='9';
plus  : constant character :='+'; minus : constant character :='-';
probel: constant character :=' '; point : constant  character:='.';
coma  : constant  character:=','; power : constant  character:='e';
cr    : constant character := character'val(13);
digi  : constant integer  :=10;
dig   : constant float    := 10.0; digp  : constant float    := 0.1;
sim:constant string(1..15):="+-.eE0123456789";
upper:constant string(1..57):=
"QWERTYUIOPASDFGHJKLZXCVBNM-------------------------------";
low  :constant string(1..57):=
"qwertyuiopasdfghjklzxcvbnm-------------------------------";
lit     : character               ;
flag  : boolean            :=false ;
flagp : boolean            :=false ;
flag_point  : boolean      :=false ;
flag_power  : boolean      :=false ;
m           : array(1..10) of integer ;
znak        : integer      :=1;
sv,rab:varing;
s4:string(1..4);
s12:string(1..12);
l,k,kk,i,j,l1,l2,n,kip,ip,ie,ih,ik   : integer;
befor,after : integer             ;
dp    : float             := 0.1;
dpp   : float             := 0.1;
flt,fit :float ;
minute,hour,secund:integer;  sec:float;
date:string(1..10):="00/00/0000";
s3:string(1..3); s5:string(1..5);
-----------------------------------------------------------------------
procedure err(t:string;l:character) is
begin new_line; put(t); put(" not numeric symbol ");
   put(integer'image(character'pos(l))); put(" <"); put(l); put('>');
   put(" replace to 0 ");
   raise conversion;
end err;
-----------------------------------------------------------------------
procedure liter(inp:in out float;lit :out character) is
  begin fit:=inp;
for n  in 1..10                                       loop  fit:=fit-1.0;
if fit<0.0 then fit:=dig*(fit+1.0); l1:=n-1; exit; end if; end loop;
                   case  l1 is
when 0 => lit:=zero;  when 1 => lit:=one;  when 2 => lit:=two;
when 3 => lit:=three; when 4 => lit:=fore; when 5 => lit:=five;
when 6 => lit:=six;   when 7 => lit:=seven;when 8 => lit:=eight;
when 9 => lit:=nine;  when others => null;
       end case; inp:=fit;
end liter;
------------------------------------------------------------------
function Is_Numeric (Item : in String) return Boolean is
  Result : Boolean := True;
  begin
     declare
      Int : Integer;
      begin
        Int := Integer'Value(Item);
        exception
         when others =>
            Result := False;
      end;
      if Result = False then
        declare
         Real : Float;
         begin
            Real := Float'Value(Item);
            Result := True;
         exception
            when others =>
               null;
         end;
      end if;
      return Result;
end Is_Numeric;
------------------------------------------------------------------
procedure put_edit(s:string;a:float;pos:integer:=7) is
begin put(s);
if abs(a)<1.0e-20 then  overlay(s12,1," 0.000000");
                  else s12:=put_f(a,12); end if;
if index(s12,power)>0 then
s4:=right(s12,9);  overlay(s12,pos-3,s4);
end  if;
for i in 1..pos loop put(s12(i)); end loop;
end put_edit;
------------------------------------------------------------------
procedure put_edit(s:string;a:integer;pos:integer:=4) is
begin put(s); s12:=put_i(a,12);
-- if a>=0 then  s12(1):=probel;end if; text_io.put(s12(1));
if a=0 then put(zero); return; end if;
for i in 1..pos loop put(s12(i-pos+12));  end loop;
end put_edit;
------------------------------------------------------------------
function date_means return string is
tm:Time;
begin
tm:=Clock;--  date and time ;
i:=day(tm);
s3:=put_i(i,3);
for j in 1..2 loop date(j):=s3(j+1); end loop;
i:=month(tm);s3:=put_i(i,3); for j in 4..5 loop date(j):=s3(j-2); end loop;
i:=year(tm);s5:=put_i(i,5);
for j in 7..10 loop date(j):=s5(j-5); end loop;
for j in 1..10 loop if date(j)=probel then date(j):=zero; end if; end loop;
date(3) := '/'; date(6) := '/';
return date;
end;
------------------------------------------------------------------
function time_means return string is
Tm:time;
begin
tm:=clock; --  date and time ;
sec:=float(seconds(tm));
hour:=integer(sec/3600.0); sec:=sec-3600.0*float(hour);
minute:=integer(sec/60.0); sec:=sec-60.0*float(minute);
secund:=integer(sec);
s3:=put_i(hour,3); for j in 1..2 loop date(j):=s3(j+1); end loop;
s3:=put_i(minute,3);
for j in 2..3 loop if s3(j) not in '0'..'9' then s3(j):='0'; end if; end loop;
for j in 4..5 loop date(j):=s3(j-2);end loop;
s3:=put_i(secund,3);
for j in 2..3 loop if s3(j) not in '0'..'9' then s3(j):='0'; end if; end loop;
for j in 7..8 loop date(j):=s3(j-5); end loop;
date(3) := ':'; date(6) := ':';
return date(1..8);
end;
--------------------------------------------------------------
function s2zs(s : string) return zstring is
begin
return ZString(s &  character'val(0));
end s2zs;
--------------------------------------------------------------
function zs2s(strz :zstring)return string is
l : integer;
begin
if strz'length = 0 then return ""; end if;
l := strz'last - 1;
return string(strz(1 .. l));
end zs2s;
--------------------------------------------------------------
function Is_empty(str : string) return boolean is
begin
  for i in str'range loop
    if str(i) /= ' ' and  str(i) /= character'val(0)
    then return false; end if;
  end loop;
  return true;
end Is_empty;
--------------------------------------------------------------
--
procedure upper_low(s:in out string;uplow:character:='u') is
begin for i in 1..s'length loop lit:=s(i);
case uplow is
when 'u' | 'U' => k:=index(low,lit);  if k>0 then s(i):=upper(k); end if;
when 'l' | 'L' => k:=index(upper,lit);if k>0 then s(i):=low(k);   end if;
when others    => null;
end case; end loop;
end upper_low;
--------------------------------------------------------------
--
procedure ctext(s:in out string) is
st:string(1..s'length);
begin  l:=s'length;
 k:=0;for i in 1..l loop st(i):=probel; end loop;
for i in reverse 1..l loop
  if s(i)/=probel then  k:=i;goto next; end if; end loop;
if k=0 then goto fin; end if;
<<next>> j:=(l-k)/2; -- moving
for i in j+1..k+j  loop st(i):=s(i-j); end loop;
for i in 1..l loop s(i):=st(i); end loop;
<<fin>> null; end ctext;
--------------------------------------------------------------
function substr(s:string;pos:integer:=1;len:integer) return string is
-- ret:string(1..len);
begin i:=len;j:=s'length; if j<i then i:=j; end if;
-- for j in 1..i loop ret(j):=s(j+pos-1); end loop;
return s(1+pos-1..i+pos-1); -- ret;
end substr;
--------------------------------------------------------------
function left(s:string;pos:integer) return string is
-- ret:string(1..pos);
begin
i:=min(pos,s'length);
return s(s'First .. i); -- ret;
end left;
--------------------------------------------------------------
function right(s:in string;pos:integer:=1) return string is
begin  k:=s'length;
if k = 0 then return ""; end if;
if pos > k then return ""; end if;
return s(pos..k); 
end right;
--------------------------------------------------------------
function comp_str(s1,s2:in string)return boolean is
ret:boolean:=false;
begin
l1:=s1'length;l2:=s2'length;if l1/=l2 then goto fin;end if;
for i in 1..l1 loop if s1(i)/=s2(i) then ret:=false; exit; end if;
ret:=true; end loop;
<<fin>> return ret;
end comp_str;
--------------------------------------------------------------
procedure clean(s:in out string) is
begin  j:=0; i:=s'length;
for k in 1..s'length           loop
exit when s(k) /= probel ; j:=k; end loop;
for k in 1..i               loop s(k):=s(k+j) ; end loop;
for k in i-j+1..i    loop s(k) :=probel ; end loop;
end clean;
--------------------------------------------------------------
function  cut(s : string) return string is
v: varing;
begin
v:= str2var(s);
cut(v);
return var2str(v);
end cut;
--------------------------------------------------------------
function IsNotEmpty(s:string) return boolean is
begin
 return IsNotEmpty(str2var(s));
end IsNotEmpty;
--------------------------------------------------------------
procedure fill(s:in out string; char : character := ' '; pos: integer :=1) is
begin
   for i in pos..s'length loop
       s(i) := char;
   end loop;
end fill;
--------------------------------------------------------------
function var_len(s:string)return integer is
 begin i:=s'length;j:=i;
for k in reverse 1..i                  loop
   exit when s(i) /= probel; j:=k; end loop;
return j;
end var_len;
--------------------------------------------------------------
function index(s:string;ss:string)return integer  is
begin
-- new_line;put('<');put(s);
-- new_line;put('\');put(ss);
l1:=s'length; l2:=ss'length;
kk:=l1-l2+1 ; -- how many include
if kk<1  then return 0;  end if;
for i in 1..kk  loop flag := true;
 for j  in 1..l2   loop  n:=j+i-1;
    flag := flag and (s(n) = ss(j));
 end loop;
 if flag then   -- put_edit("\i=",i);
    return i;
 end if;
end loop;
return 0;
end index;
--------------------------------------------------------------
function verify(s:string;ss:string;pos:integer:=1)return integer  is
begin
for i in pos..s'length  loop  k:=index(ss,s(i));
 if k = 0 then return i; end if;
end loop;
return 0;
end verify;
--------------------------------------------------------------
function index(s:string;ss:character)return integer  is
  begin   k:=0; l:=s'length;
for i in 1..l             loop
 if s(i)  = ss then k:=i; goto fin; end if;
<<next>> null;        end loop;
<<fin>> return k; end index;
--------------------------------------------------------------
function index(s:varing;ss:character)return integer  is
  begin   k:=0; l:=s.len_str;
for i in 1..l             loop
 if s.cnt_str(i)   = ss then k:=i; goto fin; end if;
<<next>> null;        end loop;
<<fin>> return k; end index;
--------------------------------------------------------------
procedure overlay(s:in out string;pos:integer;ss:string)   is
begin  l1:=s'length; l2:=ss'length;
if pos<1 or pos>l1 then goto fin; end if;
for i in pos..min(l1,pos+l2-1)  loop  n:=i-pos+1;s(i):=ss(n); end loop;
<<fin>> null; end overlay;
--------------------------------------------------------------
procedure overlay(s:in out string;pos:integer;ss:character)   is
begin  l:=s'length;  if pos<1 or pos>l  then goto fin; end if;
s(pos):=ss;
<<fin>> null; end overlay;
--------------------------------------------------------------
function IsNotEmpty(s:varing) return boolean is
pat : string(1..2) := ' ' & character'val(0);
begin
 if s.len_str = 0 then return false; end if;
 return (verify(s,pat) > 0);
end IsNotEmpty;
--------------------------------------------------------------
procedure overlay(s:in out varing;pos:integer;ss:character)   is
begin  l:=s.len_str;  if pos<1 or pos>l  then goto fin; end if;
s.cnt_str(pos):=ss; s.len_str:=max(s.len_str,pos);
<<fin>> null; end overlay;
--------------------------------------------------------------
procedure translate(s:in out string;change,map:string) is
begin
for i in 1..s'length loop
 for j in 1..min(change'length,map'length) loop
  if s(i)=change(j) then s(i):=map(j); end if;
 end loop;
end loop;
end translate;
--------------------------------------------------------------
function get_i(s:in string) return integer is
 begin   i:=0;  flag:=false; znak:=1; flagp:=false;
for k in 1..s'length  loop m(k):=0;
   if s(k)=minus then
      if  znak=1 then znak:=-1; goto next;
              else err("get_i:fusion numbers",s(k)); goto next;
      end if;
   end if;
   if (s(k)=probel or s(k) = cr) and flag=false
   then goto next; end if;
   if s(k)=plus then  if flagp=false then goto next;
               else flagp:=true; err("get_i:fusion numbers",s(k)); goto next; end if;
   end if;
   exit when (s(k)=probel or s(k) = cr) and flag=true ;
   case s(k) is
     when zero  => m(k):=0; flag:=true; when one   => m(k):=1; flag:=true;
     when two   => m(k):=2; flag:=true;
     when three => m(k):=3; flag:=true; when fore  => m(k):=4; flag:=true;
     when five  => m(k):=5; flag:=true; when six   => m(k):=6; flag:=true;
     when seven => m(k):=7; flag:=true; when eight => m(k):=8; flag:=true;
     when nine  => m(k):=9; flag:=true; when others=> err("get_i",s(k));
   end case;
   i:=i*digi+m(k);
<<next>> null;     end loop;
i:=znak*i;  return i;
end get_i;
--------------------------------------------------------------
function get_f(s:in string) return float   is
znak:integer;  flag:boolean;
begin  ip:=0; ih:=1;ik:=10;l:=s'length; dp:=0.1; ie:=l+1; s12:=(others=>probel);
flt:=0.0; flag:=false; flagp:=false; flag_power:=false; znak:=1;
for k in 1..10  loop m(k):=0;  end loop;
for k in 1..l    loop
   if s(k)=minus then if  znak=1   then znak:=-1  ; goto next;
                         else err("get_f:",s(k)); goto next;     end if; end if;
   if (s(k)=probel or s(k) = cr) and flag=false then goto next; end if;
   if s(k)=plus then  if flagp=false then flagp:=true;goto next;
                                  else  err("GET_F:",s(k)); goto next; end if;
   end if;

   if s(k)=power then flag_power:=true;ik:=k-1; ie:=k;exit; end if;
   exit when (s(k)=probel or s(k) = cr) and flag=true ;
   case  s(k) is
     when zero  => m(k):=0; flag:=true;  ik:=k;
     when one   => m(k):=1; flag:=true;  ik:=k;
     when two   => m(k):=2; flag:=true;  ik:=k;
     when three => m(k):=3; flag:=true;  ik:=k;
     when fore  => m(k):=4; flag:=true;  ik:=k;
     when five  => m(k):=5; flag:=true;  ik:=k;
     when six   => m(k):=6; flag:=true;  ik:=k;
     when seven => m(k):=7; flag:=true;  ik:=k;
     when eight => m(k):=8; flag:=true;  ik:=k;
     when nine  => m(k):=9; flag:=true;  ik:=k;
     when point => if ip=0 then ip:=k; else err("Get_f:",s(k)); end if; goto next;
     when others => err("Get_f:",s(k));
   end case;
   if ip=0 then flt:=flt*dig+float(m(k));
        else flt:=flt+dp*float(m(k)); dp:=dp*digp;
   end if;
<<next>> null;     end loop;
if ip>ie then new_line;put("GET_F:not integer power                ");
    flt:=0.0;
    raise conversion;
end if;
if flag_power=true then  s12(s12'First .. l):=s(s'First .. l); -- ss:=s;  ----- exp form ------
  for j in 1..ie loop s12(j):=probel; end loop;clean(s12); kip:=get_i(s12);
 if kip>0 then for k in 1..kip loop flt:=flt*dig ;end loop;
         else for k in 1..abs(kip) loop flt:=flt/dig;end loop; end if;
end if;
flt:=float(znak)*flt;
<<finish>> return flt;
end get_f;
--------------------------------------------------------------
function put_i(item:integer;pos:integer:=6) return string is
s12,sss : string(1..12)  ; j:integer;
 begin
for i in 1..12 loop s12(i):=probel; sss(i):=probel; end loop;
if item=0 then overlay(s12,1," 0"); goto fin; end if;
overlay(sss,1,integer'image(item));
for i in reverse 1..12 loop
if sss(i) /=probel then kk:=i; exit; end if; end loop;
if pos< kk then return sss(2..pos+1); end if;
for i in reverse 1..kk loop j:=i-kk+pos; if j<1 then exit; end if;
s12(j):=sss(i);  end loop;
<<fin>> return s12(1..pos);
end put_i;
--------------------------------------------------------------
function put_e(item:float;pos:integer:=8) return string is
-- s,ss    : string(1..pos)           ;
s12        : string(1..12);
flt:float;   kk:integer;
 begin     flt:=abs(item); s12(1):=plus;  kk:=0;
for k in 1..pos loop s12(k) :=probel;  end loop;
if flt=0.0       then  s12(1):=probel;s12(2):=zero;goto fin; end if;
-- normalizing   ITEM
if flt<1.0 then for  k in 1..72     loop  exit when flt>=1.0;
  flt:=flt*dig;kk:=kk-1;  end loop;
           else for  k in 1..72     loop  exit when flt<10.0;
  flt:=flt/dig;kk:=kk+1;  end loop;
end if;
liter(flt,lit);s12(2):=lit;s12(3):=point;
for k in 4..pos-4 loop liter(flt,lit); s12(k):=lit; end loop;
s12(pos-3):=power;
overlay(s3,1,"   ");
--s3:=put_i(kk,3);
overlay(s3,1,integer'image(kk));
if s3(1)=probel then s3(1):=plus;end if;
for k in 1..3 loop s12(k+pos-3):=s3(k);             end loop;
<<fin>>
if item<0.0   then  s12(1):=minus;else s12(1):=plus; end if;
return s12(1..pos);
end put_e;
--------------------------------------------------------------
function put_f(item:float;pos:integer:=8) return string is
s12     : string(1..12)           ;
 begin   flt:=abs(item);  dp:=0.1; dpp:=0.1;
for k in 1..pos loop s12(k) :=probel;  end loop;
if flt<1.0e-20   then  s12(1):=probel; overlay(s12,pos-2," 0.00000");
-- s12(2):=zero;s12(3):=point;s12(4):=zero;
goto fin;  end if;
for i in 1..pos-3 loop dp:=dp*dpp; end loop;
if flt<=dp then s12:=put_e(item,12);
s4:=right(s12,9);  overlay(s12,pos-3,s4);
goto fin; end if;
for j in 1..pos loop dpp:=digp*dpp; end loop;
for j in 1..2 loop kk:=0;
-- normalized    ITEM
if flt<1.0 then for  k in 1..72     loop  exit when flt>=1.0;
   flt:=flt*dig;kk:=kk-1;  end loop;
           else for  k in 1..72     loop  exit when flt<10.0;
  flt:=flt/dig;kk:=kk+1;  end loop;
end if;
  if kk >=0      then --    number grater for module
befor:=kk+1; after:=pos-befor-2;
if befor>=pos-1 then s12:=put_e(item,12);
s4:=right(s12,9); overlay(s12,pos-3,s4);
goto fin; end if;
for k in 2..befor+1           loop
liter(flt,lit);s12(k):=lit; end loop; s12(befor+2):=point;
for k in befor+3..pos         loop
liter(flt,lit);s12(k):=lit; end loop;
                    else  --            < 1 for mod
s12(2):=zero;s12(3):=point;
for k in 4..4+abs(kk+1)-1    loop s12(k):=zero;               end loop;
for k in 4+abs(kk+1).. pos   loop liter(flt,lit);s12(k):=lit; end loop;
 befor:=abs(kk); end if;
liter(flt,lit);
if lit=five or lit=six or lit=seven or lit=eight or lit=nine then
   flt:=abs(item) + dpp;
                                   else goto fin; end if;
 end  loop;
<<fin>>
if item<0.0 then s12(1):=minus;else s12(1):=probel; end if;
return s12(1..pos);
exception
when others => return "************" ;
end put_f;
--------------------------------------------------------------
function put_d(item:double;pos:integer:=8) return string is
begin
 return put_f(float(item),pos);
end put_d;
------------------------------------------------------------------
function put_ld(item:Long_Long_Float;pos:integer:=8) return string is
begin
 return put_f(float(item),pos);
end put_ld;
------------------------------------------------------------------
function min(x,y:float) return float is
begin if x<y then return x; end if; return y; end min;
------------------------------------------------------------------
function max(x,y:float) return float is
begin if x>y then return x; end if; return y; end max;
------------------------------------------------------------------
function min(x,y:integer) return integer is
begin if x<y then return x;  end if; return y; end min;
------------------------------------------------------------------
function max(x,y:integer) return integer is
begin if x>y then return x;end if; return y; end max;
------------------------------------------------------------------
function Is_Numeric (Item : in varing) return Boolean is
begin
  return Is_Numeric(var2str(Item));
end Is_Numeric;
------------------------------------------------------------------
function get_i(s:in varing)     return integer is
begin sv:=s; sv.len_str:=sv.len_str+1; sv.cnt_str(sv.len_str):=probel;
n:=get_i(sv.cnt_str);
return n;
end get_i;
------------------------------------------------------------------
function get_f(s:in varing)     return float   is
flt:float;
begin sv:=s; sv.len_str:=sv.len_str+1; sv.cnt_str(sv.len_str):=probel;
flt:=get_f(sv.cnt_str);
return flt;
end get_f;
------------------------------------------------------------------
function put_i(item:in integer;pos:integer:=6) return varing is
-- sss:string(1..pos);
begin
sv.len_str:=pos;   s12:=put_i(item,12);
for i in 1..pos loop s12(i):=s12(12-pos+i); end loop;
for i in 1..pos loop sv.cnt_str(i):=s12(i); end loop;
return sv;
end put_i;
------------------------------------------------------------------
function put_e(item:in float;pos:integer:=8 ) return varing is
s12:string(1..12);
begin
sv.len_str:=pos;   s12:=put_e(item,12);
s4:=right(s12,9);  overlay(s12,pos-3,s4);
for i in 1..pos loop sv.cnt_str(i):=s12(i); end loop;
return sv;
end put_e;
------------------------------------------------------------------
function put_f(item:in float;pos:integer:=8 ) return varing is
s12:string(1..12);
begin
sv.len_str:=pos;   s12:=put_f(item,12);
if index(s12,power)>0 then -- put_e
s4:=right(s12,9);  overlay(s12,pos-3,s4);
end if;
for i in 1..pos loop sv.cnt_str(i):=s12(i); end loop;
return sv;
end put_f;
------------------------------------------------------------------
function put_d(item:Long_Long_Float;pos:integer:=8) return varing is
begin
 return put_f(float(item),pos);
end put_d;
------------------------------------------------------------------
function substr(s:varing;pos:integer:=1;len:integer) return string is
-- ret:string(1..len);
begin i:=len;j:=s.len_str; if j<i then i:=j; end if;
-- for j in 1..i loop ret(j):=s.cnt_str(j+pos-1); end loop;
return s.cnt_str(pos..j+pos-i); -- ret;
end substr;
------------------------------------------------------------------
function right(s:in varing;pos:integer:=1) return string is
k : integer;
begin
k:=s.len_str;
if pos > k then return ""; end if;
return s.cnt_str(pos .. k); -- ret;
end right;
--------------------------------------------------------------
function substr(s:varing;pos:integer:=1;len:integer) return varing is
begin i:=len;j:=s.len_str; if j<i then i:=j; end if;
for j in 1..i loop sv.cnt_str(j):=s.cnt_str(j+pos-1); end loop;
sv.len_str:=i;
return sv;
end substr;
--------------------------------------------------------------
function left(s:varing;pos:integer) return varing is
begin sv:=s; sv.len_str:=min(pos,s.len_str);
return sv;
end left;
--------------------------------------------------------------
function right(s:in varing;pos:integer:=1) return varing is
begin 
if pos > s.len_str then sv.len_str:=0; goto fin; end if;
sv.len_str:=s.len_str-pos+1;
for j in 1..sv.len_str loop
sv.cnt_str(j):=s.cnt_str(j+pos-1); end loop;
<<fin>> return sv;
end right;
--------------------------------------------------------------
function comp_str(s1,s2:in varing) return boolean is
begin  flag:=false;
l1:=s1.len_str;l2:=s2.len_str;if l1/=l2 then goto fin;end if;
for i in 1..l1 loop
   if s1.cnt_str(i)/=s2.cnt_str(i)
   then
      flag := false;
      exit;
   end if;
   flag:=true;
end loop;
<<fin>> return flag;
end comp_str;
--------------------------------------------------------------
procedure clean(s:in out varing) is
begin  l:=s.len_str;
j:=0; for k in 1..l                  loop
exit when s.cnt_str(k) /= probel ; j:=k; end loop;
for k in 1..l-j  loop s.cnt_str(k):=s.cnt_str(k+j) ; end loop;
s.len_str:=s.len_str-j;
end clean;
--------------------------------------------------------------
procedure cut(s:in out varing) is
begin
  if verify(s," ") = 0 then s.len_str := 0; return; end if;
  clean(s);
  for i in reverse 1..s.len_str loop
    if s.cnt_str(i) /= ' ' then s.len_str := i; return; end if;
  end loop;
end cut;
--------------------------------------------------------------
function var_len(s:varing)return integer is
begin j:=s.len_str; return j;
end var_len;
--------------------------------------------------------------
function index(s:varing;ss:string)return integer  is
begin
l1:=s.len_str; l2:=ss'length; kk:=l1-l2+1 ; -- how many include
if kk < 1  then return 0;  end if;
for i in 1..kk loop
  flag:=true;
  for j  in 1..l2   loop  n:=j+i-1;
      flag:=flag and (s.cnt_str(n)=ss(j));
  end loop;
  if flag then return i; end if;
end loop;
return 0;
end index;
--------------------------------------------------------------
function verify(s:varing;ss:string;pos:integer:=1)return integer  is
begin
for i in pos..s.len_str loop k:=index(ss,s.cnt_str(i));
  if k = 0 then return i;  end if;
end loop;
return 0;
end verify;
--------------------------------------------------------------
procedure overlay(s:in out varing;pos:integer;ss:string)   is
lout,ll : integer;
begin
l1:=s.len_str; l2:=ss'length; lout := l1;
if pos<1 then return; end if;
ll := min(pos+l2-1,s.cnt_str'length) ;
lout := max(l1,l2 + pos - 1);
lout := min(lout,s.cnt_str'length);
for i in pos..ll  loop  n:=i-pos+1;s.cnt_str(i):=ss(n); end loop;
s.len_str := lout;
end overlay;
--------------------------------------------------------------
procedure overlay(s:in out varing;pos:integer;ss:varing)   is
lout : integer;
begin
l1:=s.len_str; l2:=ss.len_str; lout := l1;
if pos<1 then return; end if;
lout := max(l1,l2 + pos - 1);
lout := min(lout,s.cnt_str'length);
for i in pos..min(pos+l2-1,s.cnt_str'length)  loop
   n:=i-pos+1;s.cnt_str(i):=ss.cnt_str(n);
end loop;
s.len_str:= lout;
end overlay;
--------------------------------------------------------------
procedure translate(s:in out varing;change,map:string) is
begin
for i in 1..s.len_str loop
 for j in 1..min(change'length,map'length) loop
  if s.cnt_str(i)=change(j) then s.cnt_str(i):=map(j); end if;
 end loop;
end loop;
end translate;
--------------------------------------------------------------
procedure null_len(s:in out varing) is begin s.len_str:=0;  end null_len;
--------------------------------------------------------------
--
procedure upper_low(s:in out varing;uplow:character:='u') is
begin for i in 1..s.len_str loop lit:=s.cnt_str(i);
case uplow is
when 'u' | 'U' => k:=index(low,lit);  if k>0 then s.cnt_str(i):=upper(k); end if;
when 'l' | 'L' => k:=index(upper,lit);if k>0 then s.cnt_str(i):=low(k); end if;
when others    => null;
end case; end loop;
end upper_low;
--------------------------------------------------------------
function "&" (s1,s2:varing) return varing is
i1,i2 : integer;
begin
i1:=s1.len_str; i2:=s2.len_str;
sv.len_str := min(i1 + i2,varing_max);
for i in 1   ..i1         loop sv.cnt_str(i) := s1.cnt_str(i); end loop;
for i in i1+1..sv.len_str loop sv.cnt_str(i) := s2.cnt_str(i-i1); end loop;
return sv; end ;
--------------------------------------------------------------
function "&" (s1:varing;s2:string) return varing is
begin
   return s1 & str2var(s2);
end ;
--------------------------------------------------------------
function "&" (s1:string;s2:varing) return varing is
begin
   return str2var(s1) & s2;
end ;
--------------------------------------------------------------
function "&" (s1:character;s2:varing) return varing is
l : string(1..1);
begin
   l(1) := s1;
   return str2var(l) & s2;
end ;
--------------------------------------------------------------
function "&" (s1:varing;s2:character) return varing is
l : string(1..1);
begin
   l(1) := s2;
   return s1 & str2var(l);
end ;
--------------------------------------------------------------
procedure put(s:varing; pos:integer) is
begin for i in 1..pos loop put(s.cnt_str(i)); end loop;
end put;
--------------------------------------------------------------
procedure  begent(s:in out varing;pictend:character;err:in out boolean) is
elem:character; flag,flb:boolean; i:integer;
begin  s.len_str:=0; err:=false; flag:=true;i:=0; elem:=' '; -- clean
flb:=true; -- beginning blank
loop get(elem);
 if character'pos(elem)>32 then flb:=false; end if; -- string begining
 if flb then goto next; end if;
 if flag or elem /=' ' then i:=i+1; s.cnt_str(i):=elem; end if;
 if flb then goto next; end if;
 if elem =' ' then flag:=false; else flag:=true; end if;
 exit when elem=pictend;
 <<next>> null;
end loop;
s.len_str:=i;
<<pend>>  if err then new_line;
 for ii in 1..i loop elem:=s.cnt_str(ii); put(elem); end loop; put('$');
          end if;
exception
when others => err:=true;
new_line;  put("absent symbol (;) or end of information =>");

 for ii in 1..i loop elem:=s.cnt_str(ii); put(elem); end loop; put('$');
end begent;
-------------------------------------------------------------------------
--
-- /* 1-yes error 0-no  error */  ;
procedure helpstr(str:varing;kl:in out integer;
                  err:out boolean; strend:character:=';') is
sv:varing;
begin err:=false; sv:=str;  kl:=0;
for i in 1..str.len_str loop
if sv.cnt_str(i)=coma then sv.cnt_str(i):=probel; end if; -- no coma
end loop ;
clean(sv);  n:=index(sv,strend);
if n=0  then  sv.len_str:=sv.len_str+1; sv.cnt_str(sv.len_str):=probel;
       else sv.cnt_str(sv.len_str):=probel;  end if; -- only number
m:loop -- read
n:=index(sv,probel);  exit when n=0 or n>=sv.len_str;
rab:=left(sv,n-1);
for j in 1..rab.len_str loop
if index(sim,rab.cnt_str(j))=0 then -- mistake
err:=true;
new_line; put("HELPSTR:mistake(non numeric symbol) =>"); put(sv.cnt_str(j));
put(" in the string <<"); put(sv.cnt_str); put(">>");
put(" read numbers =>"); s3:=put_i(kl,3); put(s3);
return; end if;
                               end loop;
kl:=kl+1;
sv:=right(sv,n+1);
clean(sv);
end loop m;
end helpstr ;
--------------------------------------------------------------
function sign(x:integer) return integer is
begin
if x<0 then return -1; elsif x=0 then return 0; else return 1; end if;
end sign;
--------------------------------------------------------------
function sign(x:float) return integer is
begin
if x<0.0 then return -1; elsif x=0.0 then return 0; else return 1; end if;
end sign;
--------------------------------------------------------------
function change(s:string;oldstr:string;newstr:string;how:integer:=0) return string is
st : varing;
begin
if comp_str(oldstr,newstr) then return s; end if;
st := str2var(s); st := change(st,oldstr,newstr,how);
return var2str(st);
end ;
--------------------------------------------------------------
function change(s:varing;oldstr:string;newstr:string;how:integer:=0) return varing is
len,lennew,ie,k :integer;
st,st1 ,st2: varing;
search_from_position : integer;
begin
if comp_str(oldstr,newstr) then return s; end if;
len := oldstr'length ; 
lennew := newstr'length ;
if len = 0 then return s; end if;
if how=0 then ie :=s.len_str; else ie := how; end if;
st := s;
search_from_position := 1;
for i in 1..ie loop
   if search_from_position = 1
   then k:= index(st,oldstr);
   else 
      st1 := right(st,search_from_position);
      k:= index(st1,oldstr);
      if k >= 1 then k := k + search_from_position - 1; end if;
   end if;
   if k = 0 then return st; end if;
   if k > 1 then st1 := left(st,k-1) & str2var(newstr);
            else st1 := str2var(newstr);
   end if;
   st2 :=  right(st,k+len);
   st := st1 & st2;
   search_from_position := k + lennew; -- without rechange (no loop)
   if search_from_position > st.len_str then return st; end if;
end loop ;
return st;
end change;
--------------------------------------------------------------
function str2var(s:string) return varing is
v   : varing ;
l   : integer;
begin
l := min(s'length,v.cnt_str'length); v.len_str := l;
if l= v.cnt_str'length then v.cnt_str := left(s,l);
                       else overlay(v.cnt_str,1,s);
end if;
return v;
end str2var;
--------------------------------------------------------------
function var2zstr(v:varing) return string is
begin
return left(v.cnt_str,v.len_str) & character'val(0);
end var2zstr ;
--------------------------------------------------------------
function var2str(v:varing) return string is
begin
return left(v.cnt_str,v.len_str);
end var2str ;
--------------------------------------------------------------
function env(Var_Name : String) return String is

   use type Interfaces.C.Strings.Chars_Ptr;
   package Cstr renames Interfaces.C.strings;

   function getenv(Name : Cstr.Chars_Ptr) return Cstr.Chars_Ptr;
   pragma Import(C, getenv);

   Var_Name_Ptr, Result : Cstr.Chars_Ptr;

begin
   Var_Name_Ptr := Cstr.New_String(Var_Name);
   Result := getenv(Var_Name_Ptr);
   Cstr.Free(Var_Name_Ptr);
   if Result /= Cstr.Null_Ptr
   then return Cstr.Value(Result);
   else return "";
   end if;
end env;
--------------------------------------------------------------
function env(Var_Name : String) return varing is
begin
return str2var(env(Var_Name => Var_Name));
end env;
--------------------------------------------------------------
function GetParameterValue(source : string; parameter_name : string;
                           delimeter : character := ' ') return varing is
temp,value : varing;
templ,tempr: varing;
two_blank  : constant string := "  ";
ind        : integer;
begin
 null_len(value);
 temp := str2var(" ") & str2var(source);
 temp := temp & str2var(" ");
 for i in 1..temp.len_str loop
   if character'pos(temp.cnt_str(i)) < 32 then  temp.cnt_str(i) := probel; end if;
 end loop;
 loop
   ind := index(temp,two_blank);
   exit when ind = 0;
   templ := left(temp,ind);
   if ind < temp.len_str - 2 then
      tempr := right(temp,ind + 2);
      temp :=  templ & tempr;
   else temp := templ;
   end if;
 end loop;
 ind := index(temp,parameter_name & delimeter);
 if ind = 0 then return value; end if;
 value := right(temp,ind + parameter_name'length + 1);
 ind := index(temp,probel);
 if ind > 0 then value := left(value,ind - 1); end if;
 return value;
end GetParameterValue;
--------------------------------------------------------------
function GetParameterValue(source : varing; parameter_name : string;
                           delimeter : character := ' ') return varing is
temp,value : varing;
templ,tempr: varing;
two_blank  : constant string := "  ";
ind        : integer;
begin
 null_len(value);
 temp := str2var(" ") & source;
 temp := temp & str2var(" ");
 for i in 1..temp.len_str loop
   if character'pos(temp.cnt_str(i)) < 32 then  temp.cnt_str(i) := probel; end if;
 end loop;
 loop
   ind := index(temp,two_blank);
   exit when ind = 0;
   templ := left(temp,ind);
   if ind < temp.len_str - 2 then
      tempr := right(temp,ind + 2);
      temp :=  templ & tempr;
   else temp := templ;
   end if;
 end loop;
 ind := index(temp,parameter_name & delimeter);
 if ind = 0 then return value; end if;
 value := right(temp,ind + parameter_name'length + 1);
 ind := index(temp,probel);
 if ind > 0 then value := left(value,ind - 1); end if;
 return value;
end GetParameterValue;
--------------------------------------------------------------
function "="(v1,v2:varing) return boolean is
begin
if v1.len_str /= v2.len_str then return false; end if;
for i in 1..v1.len_str  loop
  if v1.cnt_str(i) /= v2.cnt_str(i) then return false; end if;
end loop;
return true;
end "=";
--------------------------------------------------------------
procedure Argv_fill is
begin
 argc := Ada.Command_Line.Argument_Count;
 argvArray(Interfaces.C.size_t(0)) :=  Interfaces.C.Strings.New_String(Ada.Command_Line.Command_Name & character'val(0));
 for i in 1 .. min(argc,argvArray'length) loop
  argvArray(Interfaces.C.size_t(i)) :=  Interfaces.C.Strings.New_String(Ada.Command_Line.Argument(i) & character'val(0));
end loop;

end;
--------------------------------------------------------------
procedure SetSize(v: in out varing;length:integer) is
begin
 if length in 0 .. varing_max then v.len_str := length; end if;
end;
--------------------------------------------------------------
function size(s:in varing) return integer is
begin
  return s.len_str;
end;

--------------------------------------------------------------
function GetChar(var:in varing;pos : integer) return character is
begin
 if pos in 1 .. var.len_str then return var.cnt_str(pos); else return character'val(0); end if;
end;
--------------------------------------------------------------

procedure SetChar(var:in out varing;pos:integer;char:character) is
begin
 if pos in 1 .. var.len_str then  var.cnt_str(pos) := char; end if;
end;
--------------------------------------------------------------
function "="(v1,v2:PtrVaring) return boolean is
begin
 return v1.all = v2.all;
end;
--------------------------------------------------------------
function ws2zws(s : wide_string) return ZWideString is
begin
return ZWideString(s &  wide_character'val(0));
end ws2zws;
--------------------------------------------------------------
function zws2ws(strz :ZWideString)return wide_string is
l : integer;
begin
l := 0;
for i in 1 .. strz'length loop
 if strz(i) = wide_character'val(0) then exit; end if;
 l := l + 1;
end loop;
if l > 0 then return wide_string(strz(strz'First .. l)); else return ""; end if;
end zws2ws;
--------------------------------------------------------------

end GENER_BUILTIN;
