--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015,2017            บ
-- บ Copyright (C) 2012,2014 ,2015,2017                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Ada.Command_Line;
with Ada.Text_io; use Ada.Text_io;
with Ada.Wide_text_io;
with Ada.Exceptions;
with Qt.QString; use Qt.QString;
with Qt.QObject; use Qt.QObject;
with builtin;   use builtin;
package body Qt is

use type C.Int;
use type C.Strings.Chars_Ptr;
type QStringP is access all QStringH;

procedure get_Main_Arguments  is
begin 
   builtin.Argv_fill;
   argc := builtin.argc;
   argv := builtin.argv;
end get_Main_Arguments;
---------------------------------------------------------------------------------
procedure print_Main_Arguments is
   begin -- Show
      Ada.Text_IO.Put_Line ("Argc :" & Integer'Image (Argc));
      for i in 1 .. Ada.Command_Line.Argument_Count loop
         Ada.Text_IO.Put (Integer'Image (I) & " : ");
         Ada.Text_IO.Put_Line (Ada.Command_Line.Argument(i));
      end loop;
      Ada.Command_Line.Set_Exit_Status(Ada.Command_Line.Success);
   end print_Main_Arguments;
----------------------------------------------------------------------
 function  get_Main_argument(argument : integer := 1) return string is
 begin
   if argument > Argc then return QTNullStr; end if;
   return Ada.Command_Line.Argument(argument);
 end; 
----------------------------------------------------------------------

function QtPoint(X,Y:Long_Integer) return TQPoint is
Result : TQpoint;
begin
  Result.X := X;
  Result.Y := Y;
  return Result;
end QtPoint;
----------------------------------------------------------------------
----------------------------------------------------------------------
-- Int array helpers
function GetIntsPtr(PA : AIntArray) return void_Star is
begin
  return PA.all(PA.all'first)'address;
end;

function GetIntsLength(PA: AIntArray) return Integer is
begin
  return PA.all'length;
end;

procedure SetIntsLength(PA: in out AIntArray; Len: Integer) is
begin
  PA := new TIntArray(1 .. len);
end;
----------------------------------------------------------------------
function tr(str:string) return QStringH is
begin
 return QObject_tr(s2zs(str));
end;
----------------------------------------------------------------------
 procedure createDebugOutput(fileName: string := "qt5debug.prn") is
 begin
  if not isDebugOn then return; end if;
   create(file => print,name => fileName ,mode=>out_file);
   set_output(print);
 end;

 procedure addDebugInfo(str:string) is
 begin
  if not isDebugOn then return; end if;
  put_line(str);
 end;
----------------------------------------------------------------------

begin
 Version_QAda := "5.12";
 get_Main_Arguments;

 initPWideStrings(System.Null_Address,System.Null_Address,System.Null_Address,System.Null_Address,System.Null_Address);

 InitializePIntArray(GetIntsPtr'address,
                    GetIntsLength'address,
                    SetIntsLength'address);
-- text_io.new_line; text_io.put("end of initialization");
exception
   when The_Error: others => Ada.text_io.new_line;
   Ada.text_io.put_Line ("There are some problems");
   Ada.text_io.put_Line(Ada.Exceptions.Exception_Name(The_Error));
   Ada.text_io.put_Line(Ada.Exceptions.Exception_Information(The_Error));
   Ada.text_io.put_Line(Ada.Exceptions.Exception_Message(The_Error));

end Qt;
