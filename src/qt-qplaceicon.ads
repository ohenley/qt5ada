-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSize; use Qt.QSize;
package Qt.QPlaceIcon is

 function  QPlaceIcon_create return QPlaceIconH;
 pragma Import(C,QPlaceIcon_create, "QPlaceIcon_create");
 
 function  QPlaceIcon_create2(otherIcon:QPlaceIconH) return QPlaceIconH;
 pragma Import(C,QPlaceIcon_create2, "QPlaceIcon_create2");
 
 procedure QPlaceIcon_delete(handle:not null QPlaceIconH);
 pragma Import(C,QPlaceIcon_delete, "QPlaceIcon_delete");
 
 function  QPlaceIcon_isEmpty(handle:not null QPlaceIconH) return boolean;
 pragma Import(C,QPlaceIcon_isEmpty, "QPlaceIcon_isEmpty");
 
 function  QPlaceIcon_url(handle:not null QPlaceIconH;size:QSizeH := QSize_create) return QUrlH;
 pragma Import(C,QPlaceIcon_url, "QPlaceIcon_url");
 
 function  QPlaceIcon_manager(handle:not null QPlaceIconH) return QPlaceManagerH;
 pragma Import(C,QPlaceIcon_manager, "QPlaceIcon_manager");
 
 procedure QPlaceIcon_setManager(handle:not null QPlaceIconH;manager:QPlaceManagerH);
 pragma Import(C,QPlaceIcon_setManager, "QPlaceIcon_setManager");
 
 function  QPlaceIcon_parameters(handle:not null QPlaceIconH) return QVariantMapH;
 pragma Import(C,QPlaceIcon_parameters, "QPlaceIcon_parameters");
 
 procedure QPlaceIcon_setParameters(handle:not null QPlaceIconH;parameters:QVariantMapH);
 pragma Import(C,QPlaceIcon_setParameters, "QPlaceIcon_setParameters");
 
 function  QPlaceIcon_isEqual(handle,otherIcon: QPlaceIconH) return boolean;
 pragma Import(C,QPlaceIcon_isEqual, "QPlaceIcon_isEqual");
 
 function  QPlaceIcon_SingleUrl return QStringH;
 pragma Import(C,QPlaceIcon_SingleUrl, "QPlaceIcon_SingleUrl");
 
 function  QPlaceIcon_create(otherIcon:QPlaceIconH) return QPlaceIconH;

end;
