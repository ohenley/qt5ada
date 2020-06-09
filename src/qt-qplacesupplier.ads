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

package Qt.QPlaceSupplier is

 function  QPlaceSupplier_create return QPlaceSupplierH;
 pragma Import(C,QPlaceSupplier_create, "QPlaceSupplier_create");
 
 function  QPlaceSupplier_create2(otherSupplier:QPlaceSupplierH) return QPlaceSupplierH;
 pragma Import(C,QPlaceSupplier_create2, "QPlaceSupplier_create2");
 
 procedure QPlaceSupplier_delete(handle:not null QPlaceSupplierH);
 pragma Import(C,QPlaceSupplier_delete, "QPlaceSupplier_delete");
 
 function  QPlaceSupplier_isEmpty(handle:not null QPlaceSupplierH) return boolean;
 pragma Import(C,QPlaceSupplier_isEmpty, "QPlaceSupplier_isEmpty");
 
 function  QPlaceSupplier_name(handle:not null QPlaceSupplierH) return QStringH;
 pragma Import(C,QPlaceSupplier_name, "QPlaceSupplier_name");
 
 procedure QPlaceSupplier_setName(handle:not null QPlaceSupplierH;name:QStringH);
 pragma Import(C,QPlaceSupplier_setName, "QPlaceSupplier_setName");
 
 function  QPlaceSupplier_supplierId(handle:not null QPlaceSupplierH) return QStringH;
 pragma Import(C,QPlaceSupplier_supplierId, "QPlaceSupplier_supplierId");
 
 procedure QPlaceSupplier_setSupplierId(handle:not null QPlaceSupplierH;identifier:QStringH);
 pragma Import(C,QPlaceSupplier_setSupplierId, "QPlaceSupplier_setSupplierId");
 
 function  QPlaceSupplier_url(handle:not null QPlaceSupplierH) return QUrlH;
 pragma Import(C,QPlaceSupplier_url, "QPlaceSupplier_url");
 
 procedure QPlaceSupplier_setUrl(handle:not null QPlaceSupplierH;url:QUrlH);
 pragma Import(C,QPlaceSupplier_setUrl, "QPlaceSupplier_setUrl");
 
 function  QPlaceSupplier_icon(handle:not null QPlaceSupplierH) return QPlaceIconH;
 pragma Import(C,QPlaceSupplier_icon, "QPlaceSupplier_icon");
 
 procedure QPlaceSupplier_setIcon(handle:not null QPlaceSupplierH;icon:QPlaceIconH);
 pragma Import(C,QPlaceSupplier_setIcon, "QPlaceSupplier_setIcon");
 
 function  QPlaceSupplier_isEqual(handle,otherSupplier:not null QPlaceSupplierH) return boolean;
 pragma Import(C,QPlaceSupplier_isEqual, "QPlaceSupplier_isEqual");
 
 function  QPlaceSupplier_create(otherSupplier:QPlaceSupplierH) return QPlaceSupplierH;

end;
