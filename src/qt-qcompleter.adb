 
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2015                 บ
-- บ Copyright (C) 2012,2013,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QCompleter      is

 function  QCompleter_create(model:QAbstractItemModelH; parent:QObjectH := null) return QCompleterH is
 begin
   return  QCompleter_create2(model, parent);
 end;

 function  QCompleter_create(list:QStringListH; parent:QObjectH := null) return QCompleterH is
 begin
   return  QCompleter_create3(list, parent);
 end;

 procedure QCompleter_signal_slot_activated(handle:not null QCompleterH; hook:QModelIndexEvent) is
 begin
  QCompleter_signal_slot_activated2(handle,hook);
 end;

 procedure QCompleter_signal_slot_highlighted(handle:not null QCompleterH;hook:QModelIndexEvent) is 
 begin
  QCompleter_signal_slot_highlighted2(handle,hook);
 end;

end;
