--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QDataWidgetMapper    is

 procedure QDataWidgetMapper_addMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:QByteArrayH) is
 begin
    QDataWidgetMapper_addMapping2(handle,widget, section, propertyName);
 end;

 procedure QDataWidgetMapper_addMapping(handle: not null QDataWidgetMapperH;widget:QWidgetH; section:integer; propertyName:zstring) is
 begin
    QDataWidgetMapper_addMapping3(handle,widget,section, propertyName);
 end;

end Qt.QDataWidgetMapper;
