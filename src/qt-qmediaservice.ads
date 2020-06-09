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

with builtin; use builtin;
package Qt.QMediaService is

 procedure QMediaService_destroy(handle: not null QMediaServiceH);
 pragma Import(C,QMediaService_destroy, "QMediaService_destroy");
 
 function  QMediaService_requestControl(handle: not null QMediaServiceH; name:zstring) return QMediaControlH;
 pragma Import(C,QMediaService_requestControl, "QMediaService_requestControl");
 
 procedure QMediaService_releaseControl(handle: not null QMediaServiceH;control: not null QMediaControlH);
 pragma Import(C,QMediaService_releaseControl, "QMediaService_releaseControl");
 
end;
