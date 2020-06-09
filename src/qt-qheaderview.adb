--
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

package body Qt.QHeaderView          is

function QHeaderView_logicalIndexAt(handle: not null  QHeaderViewH; x: Integer; y: Integer) return  Integer is
begin
 return QHeaderView_logicalIndexAt2(handle, x, y);
end;

function QHeaderView_logicalIndexAt(handle: not null  QHeaderViewH; pos: QPointH) return  Integer is
begin
 return QHeaderView_logicalIndexAt3(handle, pos);
end;

procedure QHeaderView_setSectionResizeMode(handle: not null QHeaderViewH; logicalIndex: integer; mode:QHeaderViewResizeMode) is
begin
  QHeaderView_setSectionResizeMode2(handle,logicalIndex,mode);
end;

end Qt.QHeaderView;
