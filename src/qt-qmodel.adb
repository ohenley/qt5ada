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

package body Qt.QModel is


function QModelIndex_create(other: QModelIndexH) return  QModelIndexH is
begin
 return QModelIndex_create2(other);
end;

function QPersistentModelIndex_create(index: QModelIndexH) return  QPersistentModelIndexH is
begin
 return QPersistentModelIndex_create2(index);
end;

function QPersistentModelIndex_create(other: QPersistentModelIndexH) return  QPersistentModelIndexH is
begin
 return QPersistentModelIndex_create3(other);
end;

end Qt.QModel;
