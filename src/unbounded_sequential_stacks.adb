--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Ada.Unchecked_Deallocation;

package body Unbounded_Sequential_Stacks is

   ----------
   -- Push --
   ----------

   procedure Push (Onto : in out Stack;  Item : in Element) is
   begin
      Onto.Head := new Node'(Value => Item, Next => Onto.Head);
      Onto.Count := Onto.Count + 1;
   end Push;

   ----------
   -- Free --
   ----------

   procedure Free is
      new Ada.Unchecked_Deallocation (Object => Node, Name => List);

   ---------
   -- Pop --
   ---------

   procedure Pop (From : in out Stack;  Item : out Element) is
      Temp : List;
   begin
      if From.Count = 0 then
         raise Underflow;
      end if;
      Item := From.Head.Value;
      Temp := From.Head;
      From.Head := From.Head.Next;
      From.Count := From.Count - 1;
      Free (Temp);
   end Pop;

   ---------
   -- Pop --
   ---------

   procedure Pop (This : in out Stack) is
      Temp : List;
   begin
      if This.Count = 0 then
         raise Underflow;
      end if;
      Temp := This.Head;
      This.Head := This.Head.Next;
      This.Count := This.Count - 1;
      Free (Temp);
   end Pop;

   ---------
   -- Clear --
   ---------

   procedure Clear (This : in out Stack) is
      Temp : List;
   begin
      if This.Count = 0 then
         return;
      end if;
      while This.Count > 0 loop
        Temp := This.Head;
        This.Head := This.Head.Next;
        This.Count := This.Count - 1;
        Free (Temp);
      end loop;
   end Clear;

   -----------
   -- Depth --
   -----------

   function Depth (This : Stack) return Natural is
   begin
      return This.Count;
   end Depth;

   -----------
   -- Empty --
   -----------

   function Empty (This : Stack) return Boolean is
   begin
      return This.Count = 0;
   end Empty;

   ---------
   -- Top --
   ---------

   function Top (This : Stack) return Reference is
   begin
      return This.Head.Value'Access;
   end Top;

end Unbounded_Sequential_Stacks;
