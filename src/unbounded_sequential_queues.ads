--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

--  This package provides queue abstractions that have a capacity limited only
--  by available memory.  These queues are not thread-safe.

generic
   type Element is private;
package Unbounded_Sequential_Queues is

   type Queue is tagged limited private;

   Underflow : exception;
   Overflow  : exception;

   procedure Insert (Into : in out Queue;  Item : in Element);
   procedure Remove (From : in out Queue;  Item : out Element);

   function Size (Q : Queue) return Natural;

   function Empty (Q : Queue) return Boolean;
   -- Size(Q) = 0

   generic
      with procedure Process (Item : in Element;  Continue : out Boolean);
   procedure Iteration (Over : in Queue);

private

   type Node;

   type Link is access Node;

   type Node is
      record
         Data : Element;
         Next : Link;
      end record;

   type Queue is tagged limited
      record
         Count : Natural := 0;
         Rear,
         Front : Link;
      end record;

end Unbounded_Sequential_Queues;
