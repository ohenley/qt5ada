--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012 ,2014                                          บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QComboBox            is

procedure QComboBox_addItem(handle: not null  QComboBoxH; icon: QIconH; text: QStringH; userData: QVariantH := QVariant_create) is
begin
  QComboBox_addItem2(handle, icon, text, userData);
end;

procedure QComboBox_insertItem(handle: not null  QComboBoxH; index: Integer; icon: QIconH; text: QStringH; userData: QVariantH := QVariant_create) is
begin
  QComboBox_insertItem2(handle, index, icon, text, userData);
end;

function  QComboBox_itemData(handle: not null  QComboBoxH; index: Integer; role: QtItemDataRole := QtUserRole) return  integer is
begin
  return  QComboBox_itemData2(handle,index,role);
end;

end Qt.QComboBox;
