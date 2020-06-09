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

package Qt.QPlaceContactDetail  is

 function  QPlaceContactDetail_create return QPlaceContactDetailH;
 pragma Import(C,QPlaceContactDetail_create, "QPlaceContactDetail_create");
 
 function  QPlaceContactDetail_create2(otherDetail:QPlaceContactDetailH) return QPlaceContactDetailH;
 pragma Import(C,QPlaceContactDetail_create2, "QPlaceContactDetail_create2");
 
 procedure QPlaceContactDetail_delete(handle:not null QPlaceContactDetailH);
 pragma Import(C,QPlaceContactDetail_delete, "QPlaceContactDetail_delete");
 
 procedure QPlaceContactDetail_clear(handle:not null QPlaceContactDetailH);
 pragma Import(C,QPlaceContactDetail_clear, "QPlaceContactDetail_clear");
 
 function  QPlaceContactDetail_label(handle:not null QPlaceContactDetailH) return QStringH;
 pragma Import(C,QPlaceContactDetail_label, "QPlaceContactDetail_label");
 
 procedure QPlaceContactDetail_setLabel(handle:not null QPlaceContactDetailH;label:QStringH);
 pragma Import(C,QPlaceContactDetail_setLabel, "QPlaceContactDetail_setLabel");
 
 function  QPlaceContactDetail_value(handle:not null QPlaceContactDetailH) return QStringH;
 pragma Import(C,QPlaceContactDetail_value, "QPlaceContactDetail_value");
 
 procedure QPlaceContactDetail_setValue(handle:not null QPlaceContactDetailH;value:QStringH);
 pragma Import(C,QPlaceContactDetail_setValue, "QPlaceContactDetail_setValue");
 
 function  QPlaceContactDetail_isEqual(handle,otherDetail:not null QPlaceContactDetailH) return boolean;
 pragma Import(C,QPlaceContactDetail_isEqual, "QPlaceContactDetail_isEqual");
 
 function  QPlaceContactDetail_Phone return QStringH;
 pragma Import(C,QPlaceContactDetail_Phone, "QPlaceContactDetail_Phone");
 
 function  QPlaceContactDetail_Email return QStringH;
 pragma Import(C,QPlaceContactDetail_Email, "QPlaceContactDetail_Email");
 
 function  QPlaceContactDetail_Website return QStringH;
 pragma Import(C,QPlaceContactDetail_Website, "QPlaceContactDetail_Website");
 
 function  QPlaceContactDetail_Fax return QStringH;
 pragma Import(C,QPlaceContactDetail_Fax, "QPlaceContactDetail_Fax");
 
 function  QPlaceContactDetail_create(otherDetail:QPlaceContactDetailH) return QPlaceContactDetailH;

end;
