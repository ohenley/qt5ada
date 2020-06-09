 
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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QUndo is
 
 function  QUndoCommand_create(text:QStringH;parent:QUndoCommandH := null) return QUndoCommandH  is
 begin
   return  QUndoCommand_create2(text,parent);
 end;

 function  QUndoView_create(stack:QUndoStackH;parent:QUndoViewH := null) return QUndoViewH is
 begin
  return QUndoView_create2(stack,parent);
 end;

end;
