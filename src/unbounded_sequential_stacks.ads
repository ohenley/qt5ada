--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

--  This package provides stack abstractions that have a capacity limited only
--  by available memory.  These stacks are not thread-safe.

generic
   type Element is private;
package Unbounded_Sequential_Stacks is

   type Stack is tagged limited private;

   procedure Push (Onto : in out Stack; Item : in Element);

   procedure Pop (From : in out Stack; Item : out Element);

   procedure Pop (This : in out Stack);
   --  Removes from This stack the last element added

   procedure Clear (This : in out Stack);
   --  Removes from This stack the all  elements

   Underflow : exception;

   function Depth (This : Stack) return Natural;

   function Empty (This : Stack) return Boolean;

   type Reference is access all Element;

   function Top (This : Stack) return Reference;
   --  Provides access to the top element in the stack (the last element pushed)
   --  without requiring that element to be first removed from the stack

private

   type Node;

   type List is access Node;

   type Node is
      record
         Value : aliased Element;
         Next  : List;
      end record;

   type Stack is tagged limited
      record
         Head  : List;
         Count : Natural := 0;
      end record;

end Unbounded_Sequential_Stacks;

