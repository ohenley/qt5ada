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

with Qt.QLocation; use Qt.QLocation;
package Qt.QPlaceCategory is

 function  QPlaceCategory_create return QPlaceCategoryH;
 pragma Import(C,QPlaceCategory_create, "QPlaceCategory_create");
 
 function  QPlaceCategory_create2(otherCategory:QPlaceCategoryH) return QPlaceCategoryH;
 pragma Import(C,QPlaceCategory_create2, "QPlaceCategory_create2");
 
 procedure QPlaceCategory_delete(handle:not null QPlaceCategoryH);
 pragma Import(C,QPlaceCategory_delete, "QPlaceCategory_delete");
 
 function  QPlaceCategory_isEmpty(handle:not null QPlaceCategoryH) return boolean;
 pragma Import(C,QPlaceCategory_isEmpty, "QPlaceCategory_isEmpty");
 
 function  QPlaceCategory_categoryId(handle:not null QPlaceCategoryH) return QStringH;
 pragma Import(C,QPlaceCategory_categoryId, "QPlaceCategory_categoryId");
 
 procedure QPlaceCategory_setCategoryId(handle:not null QPlaceCategoryH;identifier:QStringH);
 pragma Import(C,QPlaceCategory_setCategoryId, "QPlaceCategory_setCategoryId");
 
 function  QPlaceCategory_name(handle:not null QPlaceCategoryH) return QStringH;
 pragma Import(C,QPlaceCategory_name, "QPlaceCategory_name");
 
 procedure QPlaceCategory_setName(handle:not null QPlaceCategoryH;name:QStringH);
 pragma Import(C,QPlaceCategory_setName, "QPlaceCategory_setName");
 
 function  QPlaceCategory_visibility(handle:not null QPlaceCategoryH) return QLocationVisibility;
 pragma Import(C,QPlaceCategory_visibility, "QPlaceCategory_visibility");
 
 procedure QPlaceCategory_setVisibility(handle:not null QPlaceCategoryH;visibility:QLocationVisibility);
 pragma Import(C,QPlaceCategory_setVisibility, "QPlaceCategory_setVisibility");
 
 function  QPlaceCategory_icon(handle:not null QPlaceCategoryH) return QPlaceIconH;
 pragma Import(C,QPlaceCategory_icon, "QPlaceCategory_icon");
 
 procedure QPlaceCategory_setIcon(handle:not null QPlaceCategoryH;icon:QPlaceIconH);
 pragma Import(C,QPlaceCategory_setIcon, "QPlaceCategory_setIcon");
 
 function  QPlaceCategory_isEqual(handle,otherCategory:QPlaceCategoryH) return boolean;
 pragma Import(C,QPlaceCategory_isEqual, "QPlaceCategory_isEqual");

 function  QPlaceCategory_create(otherCategory:QPlaceCategoryH) return QPlaceCategoryH;
end;
