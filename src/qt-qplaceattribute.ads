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

package Qt.QPlaceAttribute is

 function  QPlaceAttribute_create return QPlaceAttributeH;
 pragma Import(C,QPlaceAttribute_create, "QPlaceAttribute_create");
 
 function  QPlaceAttribute_create2(otherAttribute:QPlaceAttributeH) return QPlaceAttributeH;
 pragma Import(C,QPlaceAttribute_create2, "QPlaceAttribute_create2");
 
 procedure QPlaceAttribute_delete(handle:not null QPlaceAttributeH);
 pragma Import(C,QPlaceAttribute_delete, "QPlaceAttribute_delete");
 
 function  QPlaceAttribute_isEmpty(handle:not null QPlaceAttributeH) return boolean;
 pragma Import(C,QPlaceAttribute_isEmpty, "QPlaceAttribute_isEmpty");
 
 function  QPlaceAttribute_label(handle:not null QPlaceAttributeH) return QStringH;
 pragma Import(C,QPlaceAttribute_label, "QPlaceAttribute_label");
 
 procedure QPlaceAttribute_setLabel(handle:not null QPlaceAttributeH;labe:QStringH);
 pragma Import(C,QPlaceAttribute_setLabel, "QPlaceAttribute_setLabel");
 
 function  QPlaceAttribute_text(handle:not null QPlaceAttributeH) return QStringH;
 pragma Import(C,QPlaceAttribute_text, "QPlaceAttribute_text");
 
 procedure QPlaceAttribute_setText(handle:not null QPlaceAttributeH;text:QStringH);
 pragma Import(C,QPlaceAttribute_setText, "QPlaceAttribute_setText");
 
 function  QPlaceAttribute_isEqual(handle,otherAttribute:QPlaceAttributeH) return boolean;
 pragma Import(C,QPlaceAttribute_isEqual, "QPlaceAttribute_isEqual");
 
 function  QPlaceAttribute_OpeningHours return QStringH;
 pragma Import(C,QPlaceAttribute_OpeningHours, "QPlaceAttribute_OpeningHours");
 
 function  QPlaceAttribute_Payment return QStringH;
 pragma Import(C,QPlaceAttribute_Payment, "QPlaceAttribute_Payment");
 
 function  QPlaceAttribute_Provider return QStringH;
 pragma Import(C,QPlaceAttribute_Provider, "QPlaceAttribute_Provider");
 
 function  QPlaceAttribute_create(otherAttribute:QPlaceAttributeH) return QPlaceAttributeH;

end;
