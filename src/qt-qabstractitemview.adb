--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QAbstractItemView    is

function QAbstractItemView_itemDelegate(handle: not null  QAbstractItemViewH; index: QModelIndexH) return  QAbstractItemDelegateH is
begin
 return QAbstractItemView_itemDelegate2(handle, index);
end;

 function  QAbstractItemView_edit(handle:QAbstractItemViewH;index:QModelIndexH; trigger:QAbstractItemViewEditTrigger ;event: QEventH) return boolean is
 begin
   return  QAbstractItemView_edit2(handle,index, trigger,event);
 end;

end Qt.QAbstractItemView;
